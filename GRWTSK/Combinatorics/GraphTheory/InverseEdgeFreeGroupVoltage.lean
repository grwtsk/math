/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. See issue #1784 for exact-source elaboration,
kernel replay, axiom and independent-review scopes. Historical checks are not
implicitly transferred to revised bytes.
-/
import GRWTSK.Combinatorics.GraphTheory.FinitePositiveWordMagnusSeparation
import Mathlib.GroupTheory.FreeGroup.Basic
import Mathlib.CategoryTheory.Groupoid.FreeGroupoid
import Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup
import Mathlib

/-!
# Inverse-edge cancellation and exact free-group voltage return

This module bridges the already constructed endpoint-indexed relational paths
and their concrete voltage covers to Mathlib's ACTUAL `FreeGroup` quotient.
An edge followed by its designated inverse has unit transport and returns to
the same covering sheet, but is NOT equal to the empty recorded history.

For a bouquet graph, ordered signed edge histories represent free-group elements
by `FreeGroup.mk`. The existing `FreeGroup.lift` is the source-correct map to ANY
group-valued voltage. It is invariant under inverse-pair insertion/deletion,
while `VoltageCover.erase_liftPath` still reconstructs the original ordered
signed edge list without deleting an event.

The clock-memory group is an admissible target of this lift, but its existing
positive-word injectivity theorem is NOT extended to inverse words by this
adapter. The clock-memory group is metabelian; arbitrary free-group reduced-word
separation requires an additional, non-metabelian finite 2-group construction.
The `TruncatedMagnus` section constructs a finite characteristic-two matrix
representation of the degree-truncated noncommutative Magnus algebra and proves
its finite-2-group property. `syllableCoefficientLaw` proves the signed
syllable coefficient and `syllableNormalFormLaw` supplies the normal-form return.
`separates_nonidentity` and `magnus_nonidentity_endpoint` are unconditional
separation theorems for every nonidentity element of Mathlib's actual free group.
The analytical argument and the exact source comparison are recorded below.

The original typed state, transport, label, and permission boundaries remain
unchanged. No physical spin, neural-energy, Weil-operator, RH or GRH transfer.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

namespace InverseEdgeVoltage

universe u v w

section ReversibleGraph

variable {V : Type u} {E : V → V → Type v}

/-- An edge and its formal opposite retain the SAME underlying edge witness. -/
inductive OrientedEdge : V → V → Type (max u v) where
  | forward {a b : V} (e : E a b) : OrientedEdge a b
  | backward {a b : V} (e : E a b) : OrientedEdge b a

/-- Only edge orientation changes; the source identity is not replaced. -/
def opposite {a b : V} : OrientedEdge (E := E) a b → OrientedEdge (E := E) b a
  | .forward e => .backward e
  | .backward e => .forward e

@[simp] theorem opposite_opposite {a b : V} (e : OrientedEdge (E := E) a b) :
    opposite (opposite e) = e := by
  cases e <;> rfl

variable {G : Type w} [Group G]

/-- Reverse traversal uses the inverse of the ACTUAL old-edge transport. -/
def orientedWeight (U : ∀ {a b : V}, E a b → G) :
    ∀ {a b : V}, OrientedEdge (E := E) a b → G
  | _, _, .forward e => U e
  | _, _, .backward e => (U e)⁻¹

@[simp] theorem orientedWeight_opposite
    (U : ∀ {a b : V}, E a b → G)
    {a b : V} (e : OrientedEdge (E := E) a b) :
    orientedWeight U (opposite e) = (orientedWeight U e)⁻¹ := by
  cases e <;> simp [orientedWeight, opposite]

/-- The two original edge occurrences are retained in the chronological path. -/
def backtrack {a b : V} (e : E a b) :
    Path (OrientedEdge (E := E)) a a :=
  .cons (.forward e) (.cons (.backward e) (.refl a))

/-- Group transport cancels inverse pairs without claiming that events vanish. -/
@[simp] theorem holonomy_backtrack
    (U : ∀ {a b : V}, E a b → G) {a b : V} (e : E a b) :
    Path.holonomy (orientedWeight U) (backtrack e) = 1 := by
  simp [Path.holonomy, backtrack, orientedWeight]

/-- A homotopically trivial backtrack is still a nonempty identity-bearing path. -/
theorem backtrack_ne_empty {a b : V} (e : E a b) :
    backtrack e ≠ (Path.refl a) := by
  intro h
  cases h

/-- Inverse-edge cancellation is valid inside ANY correctly typed context. -/
theorem holonomy_cancel_in_context
    (U : ∀ {a b : V}, E a b → G)
    {s a b t : V} (prefixPath : Path (OrientedEdge (E := E)) s a)
    (e : E a b) (suffixPath : Path (OrientedEdge (E := E)) a t) :
    Path.holonomy (orientedWeight U)
      ((prefixPath.append (backtrack e)).append suffixPath) =
    Path.holonomy (orientedWeight U) (prefixPath.append suffixPath) := by
  simp [Path.holonomy_append, holonomy_backtrack, mul_assoc]

/-- The return from the ACTUAL derived voltage cover does not delete the backtrack. -/
theorem erase_backtrack_lift
    (U : ∀ {a b : V}, E a b → G)
    {a b : V} (e : E a b) (g : G) :
    VoltageCover.erasePath (OrientedEdge (E := E)) (orientedWeight U)
        (VoltageCover.liftPath (OrientedEdge (E := E)) (orientedWeight U)
          (backtrack e) g).2 = backtrack e :=
  VoltageCover.erase_liftPath _ _ _ _

/-- A cancellable excursion returns to its starting sheet but retains its path. -/
theorem backtrack_lift_endpoint
    (U : ∀ {a b : V}, E a b → G)
    {a b : V} (e : E a b) (g : G) :
    (VoltageCover.liftPath (OrientedEdge (E := E)) (orientedWeight U)
      (backtrack e) g).1 = g := by
  rw [VoltageCover.lift_endpoint, holonomy_backtrack, mul_one]

end ReversibleGraph

section FreeGroupBouquet

variable {A : Type u} {G : Type w} [Group G]

/-- Mathlib's signed-letter polarity: `true` means forward. -/
def signedWeight (f : A → G) (x : A × Bool) : G :=
  cond x.2 (f x.1) (f x.1)⁻¹

/-- The original bouquet source edge type is retained, including its polarity. -/
def signedBouquetTransport (f : A → G) {x y : PUnit} :
    PositiveWordSeparation.bouquetEdge (A × Bool) x y → G :=
  signedWeight f

/-- The exact ordered history is still a typed `Path`, not a bare group product. -/
def signedBouquetPath (xs : List (A × Bool)) :
    Path (PositiveWordSeparation.bouquetEdge (A × Bool)) PUnit.unit PUnit.unit :=
  PositiveWordSeparation.asBouquetPath xs

/-- Ordered signed histories map to Mathlib's canonical free-group quotient. -/
def sourceFreeClass (xs : List (A × Bool)) : FreeGroup A :=
  FreeGroup.mk xs

/-- The holonomy of the EXISTING path agrees with the canonical free-group lift. -/
theorem signedBouquet_holonomy_lift (f : A → G) (xs : List (A × Bool)) :
    Path.holonomy (signedBouquetTransport f) (signedBouquetPath xs) =
      (FreeGroup.lift f) (sourceFreeClass xs) := by
  change Path.holonomy (signedBouquetTransport f)
      (PositiveWordSeparation.asBouquetPath xs) =
      (FreeGroup.lift f) (FreeGroup.mk xs)
  rw [FreeGroup.lift_mk]
  induction xs with
  | nil => rfl
  | cons x xs ih =>
      change signedWeight f x *
        Path.holonomy (signedBouquetTransport f)
          (PositiveWordSeparation.asBouquetPath xs) =
        signedWeight f x *
          (xs.map fun y => cond y.2 (f y.1) (f y.1)⁻¹).prod
      exact congrArg (fun r : G => signedWeight f x * r) ih

/-- An adjacent inverse pair represents the SAME free-group class. -/
theorem freeClass_cancel (left right : List (A × Bool)) (a : A) (b : Bool) :
    sourceFreeClass (left ++ (a,b) :: (a,!b) :: right) =
      sourceFreeClass (left ++ right) := by
  exact Quot.sound FreeGroup.Red.Step.not

/-- Hence every group-valued source transport respects the ACTUAL reduction. -/
theorem signedBouquet_cancel
    (f : A → G) (left right : List (A × Bool)) (a : A) (b : Bool) :
    Path.holonomy (signedBouquetTransport f)
      (signedBouquetPath (left ++ (a,b) :: (a,!b) :: right)) =
    Path.holonomy (signedBouquetTransport f)
      (signedBouquetPath (left ++ right)) := by
  rw [signedBouquet_holonomy_lift, signedBouquet_holonomy_lift,
      freeClass_cancel]

/-- Exact path return still retains the inverse event pair on the source side. -/
theorem signedBouquet_erase_lift
    (f : A → G) (xs : List (A × Bool)) (g : G) :
    VoltageCover.erasePath (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport f)
        (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
          (signedBouquetTransport f) (signedBouquetPath xs) g).2 =
      signedBouquetPath xs :=
  VoltageCover.erase_liftPath _ _ _ _

/-- Free-group evaluation supplies the exact marked endpoint of the voltage lift. -/
theorem signedBouquet_lift_endpoint
    (f : A → G) (xs : List (A × Bool)) (g : G) :
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport f) (signedBouquetPath xs) g).1 =
      g * (FreeGroup.lift f) (sourceFreeClass xs) := by
  rw [VoltageCover.lift_endpoint, signedBouquet_holonomy_lift]

/-- Equal free-group classes have equal lifted endpoints for EVERY voltage. -/
theorem endpoint_eq_of_freeClass_eq
    (f : A → G) (xs ys : List (A × Bool)) (g : G)
    (h : sourceFreeClass xs = sourceFreeClass ys) :
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport f) (signedBouquetPath xs) g).1 =
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport f) (signedBouquetPath ys) g).1 := by
  rw [signedBouquet_lift_endpoint, signedBouquet_lift_endpoint, h]

/-- An actual finite quotient separates source free-group elements if and only
    if their holonomy images differ; the witness cannot be invented by lifting. -/
theorem distinct_endpoints_of_freeClass_separation
    (f : A → G) (xs ys : List (A × Bool)) (g : G)
    (separates : (FreeGroup.lift f) (sourceFreeClass xs) ≠
      (FreeGroup.lift f) (sourceFreeClass ys)) :
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport f) (signedBouquetPath xs) g).1 ≠
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport f) (signedBouquetPath ys) g).1 := by
  rw [signedBouquet_lift_endpoint, signedBouquet_lift_endpoint]
  intro h
  exact separates (mul_left_cancel h)

end FreeGroupBouquet

section ConcreteFiniteTwoGroupWitness

/-- The previously checked eight-sheet group detects one inverse-bearing
    commutator. This example is NOT universal residual-2 separation. -/
def eightLetter : EightSheetWitness.Letter → EightSheetWitness.Fiber
  | .a => EightSheetWitness.A
  | .b => EightSheetWitness.B

def commutatorWord : List (EightSheetWitness.Letter × Bool) :=
  [(.a,true),(.b,true),(.a,false),(.b,false)]

/-- The noncommutative finite 2-group distinguishes a genuine inverse word. -/
theorem commutatorDetected :
    (FreeGroup.lift eightLetter) (sourceFreeClass commutatorWord) ≠ 1 := by
  change (FreeGroup.lift eightLetter)
    (FreeGroup.mk [(.a, true), (.b, true), (.a, false), (.b, false)]) ≠ 1
  rw [FreeGroup.lift_mk]
  decide

/-- The corresponding free-group element is mathematically nontrivial. -/
theorem commutatorNontrivial :
    sourceFreeClass commutatorWord ≠ (1 : FreeGroup EightSheetWitness.Letter) := by
  intro h
  apply commutatorDetected
  simp [h]

end ConcreteFiniteTwoGroupWitness

/-!
## Finite characteristic-two truncated Magnus construction (issue #1784)

Source identity: https://github.com/grwtsk/math/issues/1784, especially its
syllable formula and requested finite-quotient extension. The issue's original
source pin cc019547f12c3058b7b7d8651acad98b957e02ef and its unperformed checks
remain historical evidence, not checks of the extension below.

**Objects and primary analytical argument.** For a nonempty freely reduced
syllable sequence a₁^e₁ ... aᵣ^eᵣ, require eᵢ ≠ 0 and aᵢ ≠ aᵢ₊₁; nonadjacent
repetitions are allowed. Put dᵢ = 2^v₂(|eᵢ|), D = Σ dᵢ, and let p be the ordered
word a₁ repeated d₁ times, ..., aᵣ repeated dᵣ times. In the free associative
F₂-algebra truncate ALL monomials of degree > D. Map X_a to the (D+1)-square
matrix Σ_{p_j=a} E_{j,j+1}. Every product of D+1 such matrices vanishes, as proved
by `monomial_truncated`; the ambient matrix ring itself is NOT the truncated
free algebra. This finite path representation suffices to observe the
coefficient of p: the (0,D) entry of a degree-D monomial is one exactly for p.
All other lengths have zero (0,D) entry. Thus no commutative polynomial algebra
or unproved faithful representation is being substituted for the source.

Write eᵢ = dᵢ mᵢ with mᵢ odd, including negative mᵢ. Frobenius for the SINGLE
variable gives (1+X)^dᵢ = 1+X^dᵢ. For every signed odd m, (1+Y)^m has constant
coefficient one, linear coefficient one and no negative degrees. For m<0 this
follows by the finite inverse 1+Y+...+Y^D, NOT by replacing the inverse by 1+Y.
Consequently (1+X)^eᵢ has no nonconstant term of degree below dᵢ and has
coefficient one in degree dᵢ. In the product, obtaining p requires every one of
the r syllable factors to contribute a nonconstant monomial: omitting any factor
leaves at most r-1 runs, whereas p has exactly r runs. With all factors present,
the distinct adjacent labels force the unique degrees d₁,...,dᵣ. The resulting
coefficient is one. Higher terms cannot contribute, and truncation retains p
because its degree is D, not D+1. This gives a finite 2-group image detecting the
original group element. For an arbitrary nonidentity free-group element, take
a nonempty freely reduced representative and group maximal consecutive equal
generators: reduction forces a constant sign in each run, so each resulting
integer exponent is nonzero and adjacent syllable generators differ. This is
the analytical normal-form return; `syllableNormalFormLaw` proves it by a
direct head-merging normalization, without assuming a reduced representative.
The group need not be metabelian. No finiteness of the
source alphabet is required: each observation uses only the finite pattern p.

The group constructed below is the units of the unipotent matrix submonoid.
The filtration proves x^(D+1)=0 for each strictly upper triangular x; Frobenius
then gives (1+x)^(2^(D+1))=1. Finiteness and this exponent bound prove `IsPGroup 2`.
The generator inverse is proved to be the finite geometric series. Evaluation
is Mathlib's actual `FreeGroup.lift`, so inverse-pair cancellation is automatic;
the final consumer uses the existing marked voltage endpoint with its exact
source history. The coefficient and normal-form suppliers are proved below.

**Formal proof and evidence scope.** `monomial_top` proves the matrix
observation of every ordered monomial. `CoefficientProof.signedPoly` is a finite
polynomial for the actual signed generator power: nonnegative exponents use
(1+X)^|e|, negative exponents use (1+X+...+X^D)^|e|. Factoring |e|=2^v₂(|e|)q
with q odd and using characteristic-two polynomial expansion proves constant
coefficient one, coefficient one at d=2^v₂(|e|), and zero at all intermediate
positive degrees. `signedPoly_eval` proves equality with the actual matrix
power, including negative exponents; no abstract replacement free group is used.

The convolution is an ORDERED iterated finite sum, also valid for noncommuting
matrix factors. `chain_sublist_runs` shows that a chain with unequal adjacent
labels can select at most one label from a constant run. `runs_counts_positive`
then rules out a zero-length contribution by the full run count.
`runsExpand_injective` recovers each positive run length using its initial
constant segment, including nonadjacent repeated generators. Thus the iterated
sum has exactly one surviving choice of degrees, whose coefficient is the
product of ones. `matrix_run_product`, `matrixRepresentation_syllables`, and
`syllableCoefficientLaw` make the return to the constructed matrices explicit.

`syllableNormalFormLaw` proves the normal-form supplier for the actual quotient
by head merging, preserving the free-group class at every step; nonidentity
excludes the empty output. General separation now has neither supplier as a
hypothesis. No `sorry`, additional axiom or accepting instance supplies a gap.
Full-module elaboration includes both unconditional separation consumers.
Issue #1784 records source-pinned kernel replay, review, and axiom evidence;
those dispositions do not transfer automatically to later extensions. In particular,
these are distinct from independent review and novelty, which is not claimed.
The unused clock-memory no-wrap module is outside this formal dependency cone.
The later `SpanningTree` and `CoverTower` namespaces supply the combinatorial
bridge and degree-two tower under an explicit rooted spanning-tree presentation.
No geometric-realization or topological fundamental-group comparison is assumed.
-/

namespace TruncatedMagnus
open scoped BigOperators
abbrev Algebra (n : ℕ) := Matrix (Fin (n + 1)) (Fin (n + 1)) (ZMod 2)
/-- The degree filtration in the path representation of the truncated free algebra. -/
def Above {n : ℕ} (d : ℕ) (x : Algebra n) : Prop :=
  ∀ i j, j.val < i.val + d → x i j = 0

lemma above_zero {n d : ℕ} : Above d (0 : Algebra n) := by
  intro i j h; rfl
lemma above_add {n d : ℕ} {x y : Algebra n} (hx : Above d x) (hy : Above d y) :
    Above d (x + y) := by
  intro i j h
  simp [hx i j h, hy i j h]
lemma above_mul {n d e : ℕ} {x y : Algebra n} (hx : Above d x) (hy : Above e y) :
    Above (d + e) (x * y) := by
  intro i j h
  change ∑ k, x i k * y k j = 0
  apply Finset.sum_eq_zero
  intro k hk
  by_cases hki : k.val < i.val + d
  · simp [hx i k hki]
  · have hjk : j.val < k.val + e := by omega
    simp [hy k j hjk]
lemma above_one (n : ℕ) : Above 0 (1 : Algebra n) := by
  intro i j h
  have hij : i ≠ j := by intro he; subst j; omega
  simp [hij]
lemma above_pow {n : ℕ} {x : Algebra n} (hx : Above 1 x) (k : ℕ) :
    Above k (x ^ k) := by
  induction k with
  | zero => simpa using above_one n
  | succ k ih => simpa [pow_succ] using above_mul ih hx
lemma nilpotent {n : ℕ} {x : Algebra n} (hx : Above 1 x) : x ^ (n + 1) = 0 := by
  ext i j
  exact above_pow hx (n + 1) i j (by omega)

/-- Finite unipotent matrix monoid over F₂. Units below supply actual inverses. -/
def unipotent (n : ℕ) : Submonoid (Algebra n) where
  carrier := {x | Above 1 (x - 1)}
  one_mem' := by simpa using (above_zero (n := n) (d := 1))
  mul_mem' := by
    intro x y hx hy
    have hm := above_mul hx hy
    have hm' : Above 1 ((x - 1) * (y - 1)) := by
      intro i j h
      exact hm i j (by omega)
    have ha := above_add (above_add hx hy) hm'
    change Above 1 (x * y - 1)
    have he : x * y - 1 = x - 1 + (y - 1) + (x - 1) * (y - 1) := by noncomm_ring
    rw [he]
    exact ha

lemma unipotent_pow {n : ℕ} (x : unipotent n) : x ^ (2 ^ (n + 1)) = 1 := by
  apply Subtype.ext
  change (x.val) ^ (2 ^ (n + 1)) = 1
  have hn := nilpotent x.property
  have hlarge : n + 1 ≤ 2 ^ (n + 1) := Nat.le_of_lt (Nat.lt_two_pow_self)
  have hz : (x.val - 1) ^ (2 ^ (n + 1)) = 0 :=
    pow_eq_zero_of_le hlarge hn
  have hp := add_pow_char_pow_of_commute 2 (n + 1)
    (Commute.one_right (x.val - 1))
  simpa [hz] using hp

abbrev Group (n : ℕ) := (unipotent n)ˣ
instance (n : ℕ) : Finite (Group n) := by infer_instance

/-- Uniform exponent bound, hence a finite 2-group, not merely a finite group. -/
lemma isTwoGroup (n : ℕ) : IsPGroup 2 (Group n) := by
  rw [isPGroup_iff_pow_pow_eq_one]
  intro x
  refine ⟨n + 1, ?_⟩
  apply Units.ext
  exact unipotent_pow x.val

/-- Every monoid element is a unit: the inverse is a finite power. -/
def toUnit {n : ℕ} (x : unipotent n) : Group n where
  val := x
  inv := x ^ (2 ^ (n + 1) - 1)
  val_inv := by
    rw [← pow_succ', Nat.sub_add_cancel (Nat.one_le_two_pow)]
    exact unipotent_pow x
  inv_val := by
    rw [← pow_succ, Nat.sub_add_cancel (Nat.one_le_two_pow)]
    exact unipotent_pow x

variable {A : Type*} [DecidableEq A]
/-- A word-specific observation of the truncated noncommutative algebra:
X_a is the sum of the adjacent matrix units whose target letter is a. -/
def variableMatrix {n : ℕ} (target : Fin n → A) (a : A) : Algebra n :=
  fun i j => if h : i.val < n then
    if j.val = i.val + 1 ∧ target ⟨i.val, h⟩ = a then 1 else 0
    else 0
lemma variable_above {n : ℕ} (target : Fin n → A) (a : A) :
    Above 1 (variableMatrix target a) := by
  intro i j h
  simp only [variableMatrix]
  split_ifs <;> simp_all

/-- Ordered monomials: the multiplication order is the source order. -/
def monomial {n : ℕ} (target : Fin n → A) (word : List A) : Algebra n :=
  (word.map (variableMatrix target)).prod

lemma monomial_above {n : ℕ} (target : Fin n → A) (word : List A) :
    Above word.length (monomial target word) := by
  induction word with
  | nil => exact above_one n
  | cons a word ih =>
    simpa [monomial, Nat.add_comm] using above_mul (variable_above target a) ih

/-- Every degree exceeding the truncation vanishes, including mixed monomials.
This is the truncation relation, not just nilpotence of individual generators. -/
lemma monomial_truncated {n : ℕ} (target : Fin n → A) (word : List A)
    (h : n < word.length) : monomial target word = 0 := by
  ext i j
  exact monomial_above target word i j (by omega)


/-- Multiplying by a variable advances exactly one matching target edge. -/
lemma variable_mul_entry {n : ℕ} (target : Fin n → A) (a : A)
    (m : Algebra n) (i j : Fin (n+1)) :
    (variableMatrix target a * m) i j =
      if hi : i.val < n then
        if target ⟨i.val, hi⟩ = a then m ⟨i.val+1, by omega⟩ j else 0
      else 0 := by
  rw [Matrix.mul_apply]
  by_cases hi : i.val < n
  · rw [dite_eq_left hi]
    let k : Fin (n+1) := ⟨i.val+1, by omega⟩
    rw [Finset.sum_eq_single k]
    · simp [variableMatrix, hi, k]
    · intro b hb hbk
      have hbi : b.val ≠ i.val+1 := by
        intro h
        apply hbk
        exact Fin.ext h
      simp [variableMatrix, hi, hbi]
    · simp
  · rw [dite_eq_right hi]
    apply Finset.sum_eq_zero
    intro k hk
    simp [variableMatrix, hi]

/-- An ordered monomial reads the exact remaining suffix of the target. -/
lemma monomial_entry_last {n : ℕ} (target : Fin n → A) (word : List A)
    (i : Fin (n+1)) :
    monomial target word i (Fin.last n) =
      if word = (List.ofFn target).drop i.val then 1 else 0 := by
  induction word generalizing i with
  | nil =>
    have hiff : i = Fin.last n ↔ (List.ofFn target).drop i.val = [] := by
      simp [Fin.ext_iff, List.drop_eq_nil_iff]
      omega
    change (if i = Fin.last n then (1 : ZMod 2) else 0) = _
    simp only [hiff, eq_comm (a := ([] : List A))]
  | cons a word ih =>
    change (variableMatrix target a * monomial target word) i (Fin.last n) = _
    rw [variable_mul_entry]
    by_cases hi : i.val < n
    · rw [dite_eq_left hi, ih]
      have hdrop : (List.ofFn target).drop i.val =
          target ⟨i.val,hi⟩ :: (List.ofFn target).drop (i.val+1) := by
        rw [List.drop_eq_getElem_cons (by simpa using hi)]
        simp only [List.getElem_ofFn]
      simp only [hdrop, List.cons.injEq]
      by_cases ha : target ⟨i.val,hi⟩ = a
      · simp [ha]
      · simp [ha, Ne.symm ha]
    · rw [dite_eq_right hi]
      have he : i.val = n := by omega
      have hd : (List.ofFn target).drop n = [] := by
        apply List.drop_eq_nil_iff.mpr
        simp
      simp [he, hd]

/-- Exact coefficient observation: this matrix entry is the delta on words. -/
lemma monomial_top {n : ℕ} (target : Fin n → A) (word : List A) :
    monomial target word 0 (Fin.last n) = if word = List.ofFn target then 1 else 0 := by
  simpa using monomial_entry_last target word 0

/-- Concrete Magnus generators 1+X_a, with inverse a finite geometric series. -/
def generator {n : ℕ} (target : Fin n → A) (a : A) : Group n :=
  toUnit ⟨1 + variableMatrix target a, by
    change Above 1 (1 + variableMatrix target a - 1)
    simpa using variable_above target a⟩

/-- Frobenius holds in the actual finite target, without assuming separation. -/
lemma generator_frobenius {n : ℕ} (target : Fin n → A) (a : A) (k : ℕ) :
    ((generator target a ^ (2 ^ k)).val : unipotent n).val =
      1 + variableMatrix target a ^ (2 ^ k) := by
  change (1 + variableMatrix target a) ^ (2 ^ k) = _
  simpa using add_pow_char_pow_of_commute 2 k (Commute.one_left (variableMatrix target a))

/-- Integer odd powers, including negative powers, keep a square-zero perturbation.
The square-zero hypothesis is essential and is not asserted for arbitrary X_a. -/
lemma odd_zpow_of_square_zero {n : ℕ} (g : Group n)
    (h : (g.val.val - 1) ^ 2 = 0) (e : ℤ) (he : Odd e) : g ^ e = g := by
  have hg : g ^ 2 = 1 := by
    apply Units.ext
    apply Subtype.ext
    have hp := add_pow_char_of_commute 2 (Commute.one_right (g.val.val - 1))
    simpa [h] using hp
  rw [zpow_eq_zpow_emod' e hg]
  have hm : e % 2 = 1 := Int.odd_iff.mp he
  change g ^ (e % 2) = g
  rw [hm, zpow_one]

/-- The ACTUAL quotient map out of Mathlib's free group, including inverses. -/
def representation {n : ℕ} (target : Fin n → A) : FreeGroup A →* Group n :=
  FreeGroup.lift (generator target)

/-- A scalar observation, not an assumed injective encoding. -/
def coefficient {n : ℕ} (target : Fin n → A) (w : FreeGroup A) : ZMod 2 :=
  (((representation target w).val : unipotent n).val) 0 (Fin.last n)

lemma coefficient_one {n : ℕ} (target : Fin n → A) (hn : 0 < n) :
    coefficient target 1 = 0 := by
  simp [coefficient, Fin.ext_iff, Nat.ne_of_lt hn]

/-- The return needed by the voltage consumer. The coefficient premise is
explicit: this lemma does not prove the general syllable coefficient theorem. -/
lemma separates_of_coefficient {n : ℕ} (target : Fin n → A)
    (hn : 0 < n) (w : FreeGroup A) (hw : coefficient target w = 1) :
    representation target w ≠ 1 := by
  intro h
  have hz : coefficient target w = 0 := by
    unfold coefficient
    rw [h]
    exact coefficient_one target hn
  exact zero_ne_one (hz.symm.trans hw)
/-- The inverse uses ALL degrees through n; replacing it by 1+X is wrong
as soon as X² is visible. -/
lemma generator_inverse {n : ℕ} (target : Fin n → A) (a : A) :
    (((generator target a)⁻¹).val : unipotent n).val =
      ∑ k ∈ Finset.range (n + 1), (variableMatrix target a) ^ k := by
  let x := variableMatrix target a
  have hn : x ^ (n + 1) = 0 := nilpotent (variable_above target a)
  have hneg : -x = x := by
    ext i j
    exact CharTwo.neg_eq _
  have hm : (1 + x) * (∑ k ∈ Finset.range (n + 1), x ^ k) = 1 := by
    have h := mul_neg_geom_sum x (n + 1)
    simpa [sub_eq_add_neg, hneg, hn] using h
  have hinv :
      ((((generator target a)⁻¹).val : unipotent n).val) * (1 + x) = 1 := by
    have h := congrArg (fun z : Group n => z.val.val) (inv_mul_cancel (generator target a))
    exact h
  calc
    _ = ((((generator target a)⁻¹).val : unipotent n).val) *
        ((1 + x) * (∑ k ∈ Finset.range (n + 1), x ^ k)) := by rw [hm, mul_one]
    _ = _ := by rw [← mul_assoc, hinv, one_mul]

/-- The degree chosen in issue #1784, for a NONZERO signed syllable exponent. -/
def syllableDegree (e : ℤ) : ℕ := 2 ^ padicValNat 2 e.natAbs
lemma syllableDegree_pos (e : ℤ) : 0 < syllableDegree e := by
  unfold syllableDegree
  positivity

/-- Source syllables use actual integer powers in Mathlib's free group. -/
def syllableClass (s : List (A × ℤ)) : FreeGroup A :=
  (s.map fun t => (FreeGroup.of t.1) ^ t.2).prod

/-- Adjacent generators differ; all exponents are nonzero; the word is nonempty.
Nonadjacent repeated generators ARE allowed. -/
def ReducedSyllables (s : List (A × ℤ)) : Prop :=
  s ≠ [] ∧ (∀ t ∈ s, t.2 ≠ 0) ∧ s.IsChain (fun t u => t.1 ≠ u.1)

/-- The noncommutative witness monomial, with no commutative reordering. -/
def syllablePattern (s : List (A × ℤ)) : List A :=
  s.flatMap fun t => List.replicate (syllableDegree t.2) t.1

omit [DecidableEq A] in
lemma syllablePattern_pos (s : List (A × ℤ)) (hs : s ≠ []) :
    0 < (syllablePattern s).length := by
  cases s with
  | nil => exact (hs rfl).elim
  | cons t ts =>
    simp only [syllablePattern, List.flatMap_cons, List.length_append, List.length_replicate]
    have hp := syllableDegree_pos t.2
    omega

/-- Exact coefficient specification for the constructed finite group.
`syllableCoefficientLaw` below discharges this proposition. -/
def SyllableCoefficientLaw : Prop :=
  ∀ s : List (A × ℤ), ReducedSyllables s →
    coefficient (syllablePattern s).get (syllableClass s) = 1

/-! ### Signed polynomial coefficients and ordered run convolution

The helper namespace is used only by the coefficient theorem below. Polynomials
are finite witnesses evaluated in the existing path matrices, not replacement
free-group objects. Negative exponents use the full finite geometric inverse.
-/
namespace CoefficientProof
open List
variable {A : Type*} [DecidableEq A]
/-- Expand an ordered list of labelled runs, allowing zero-length runs. -/
def runsExpand (s : List (A × ℕ)) : List A := s.flatMap fun t => List.replicate t.2 t.1
omit [DecidableEq A] in
lemma chain_sublist_replicate {xs : List A} {a : A} {n : ℕ}
    (hc : xs.IsChain (· ≠ ·)) (hs : xs <+ List.replicate n a) : xs = [] ∨ xs = [a] := by
  have hm : ∀ x ∈ xs, x = a := by
    intro x hx
    exact (List.mem_replicate.mp (hs.subset hx)).2
  cases xs with
  | nil => exact Or.inl rfl
  | cons b tail =>
    have hb : b = a := hm b (by simp)
    subst b
    cases tail with
    | nil => exact Or.inr rfl
    | cons c rest =>
      have hh := (List.isChain_cons_cons.mp hc).1
      exact (hh (hm c (by simp)).symm).elim

/-- An adjacent-distinct chain uses at most one label per constant run. -/
lemma chain_sublist_runs {xs : List A} (s : List (A × ℕ))
    (hc : xs.IsChain (· ≠ ·)) (hs : xs <+ runsExpand s) : xs <+ s.map Prod.fst := by
  induction s generalizing xs with
  | nil => simpa [runsExpand] using hs
  | cons t ts ih =>
    change xs <+ List.replicate t.2 t.1 ++ runsExpand ts at hs
    obtain ⟨left, right, rfl, hl, hr⟩ := List.sublist_append_iff.mp hs
    have hcl : left.IsChain (· ≠ ·) := hc.left_of_append
    have hcr : right.IsChain (· ≠ ·) := hc.right_of_append
    rcases chain_sublist_replicate hcl hl with h | h
    · subst left
      exact (ih hcr hr).cons _
    · subst left
      exact (ih hcr hr).cons_cons _


omit [DecidableEq A] in
lemma labels_sublist_runs (s : List (A × ℕ)) (hp : ∀ t ∈ s, 0 < t.2) :
    s.map Prod.fst <+ runsExpand s := by
  induction s with
  | nil => simp [runsExpand]
  | cons t ts ih =>
    have ht := hp t (by simp)
    have hts : ∀ x ∈ ts, 0 < x.2 := fun x hx => hp x (by simp [hx])
    change [t.1] ++ ts.map Prod.fst <+ List.replicate t.2 t.1 ++ runsExpand ts
    apply List.Sublist.append
    · exact List.singleton_sublist.mpr (List.mem_replicate.mpr ⟨by omega, rfl⟩)
    · exact ih hts

omit [DecidableEq A] in
lemma runsExpand_filter (s : List (A × ℕ)) :
    runsExpand (s.filter fun t => decide (0 < t.2)) = runsExpand s := by
  induction s with
  | nil => rfl
  | cons t ts ih =>
    simp only [runsExpand] at ih
    by_cases h : 0 < t.2
    · simp [h, runsExpand, ih]
    · have hz : t.2 = 0 := by omega
      simp [runsExpand, ih, hz]

/-- Full reduced run count forces every factor to contribute nonconstantly. -/
lemma runs_counts_positive (s t : List (A × ℕ))
    (hc : (s.map Prod.fst).IsChain (· ≠ ·))
    (hp : ∀ x ∈ s, 0 < x.2) (hl : s.map Prod.fst = t.map Prod.fst)
    (he : runsExpand s = runsExpand t) : ∀ x ∈ t, 0 < x.2 := by
  have sub := labels_sublist_runs s hp
  rw [he, ← runsExpand_filter t] at sub
  have hb := (chain_sublist_runs _ hc sub).length_le
  have hlen : s.length = t.length := by simpa using congrArg List.length hl
  have hlen' : (t.filter fun x => decide (0 < x.2)).length = t.length := by
    simp only [List.length_map] at hb
    have hf := List.length_filter_le (fun x : A × ℕ => decide (0 < x.2)) t
    omega
  simpa using List.length_filter_eq_length_iff.mp hlen'
lemma runs_takeWhile_head (a : A) (d : ℕ) (s : List (A × ℕ))
    (hc : (a :: s.map Prod.fst).IsChain (· ≠ ·))
    (hp : ∀ t ∈ s, 0 < t.2) :
    (List.replicate d a ++ runsExpand s).takeWhile (fun x => decide (x = a)) =
      List.replicate d a := by
  rw [List.takeWhile_append]
  simp only [List.takeWhile_replicate, decide_true, ite_true]
  cases s with
  | nil => simp [runsExpand]
  | cons t ts =>
    have ht := hp t (by simp)
    have hne : t.1 ≠ a := (List.isChain_cons_cons.mp hc).1.symm
    obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt ht)
    simp [runsExpand, hk, List.replicate_succ, hne]

/-- Equal expansions with a common reduced label skeleton have unique run lengths. -/
lemma runsExpand_injective (s t : List (A × ℕ))
    (hc : (s.map Prod.fst).IsChain (· ≠ ·))
    (hp : ∀ x ∈ s, 0 < x.2) (hl : s.map Prod.fst = t.map Prod.fst)
    (he : runsExpand s = runsExpand t) : s = t := by
  have hpt := runs_counts_positive s t hc hp hl he
  induction s generalizing t with
  | nil => cases t <;> simp_all
  | cons x xs ih =>
    cases t with
    | nil => simp at hl
    | cons y ys =>
      have hheads : x.1 = y.1 := (List.cons.inj hl).1
      have htail : xs.map Prod.fst = ys.map Prod.fst := (List.cons.inj hl).2
      have hcy : (y.1 :: ys.map Prod.fst).IsChain (· ≠ ·) := by
        have hh := hc
        rw [hl] at hh
        simpa only [List.map_cons] using hh
      have hps : ∀ z ∈ xs, 0 < z.2 := fun z hz => hp z (by simp [hz])
      have hpys : ∀ z ∈ ys, 0 < z.2 := fun z hz => hpt z (by simp [hz])
      have hlengths : x.2 = y.2 := by
        have hh := congrArg (fun w : List A => (w.takeWhile (fun a => decide (a = x.1))).length) he
        change ((List.replicate x.2 x.1 ++ runsExpand xs).takeWhile _).length =
          ((List.replicate y.2 y.1 ++ runsExpand ys).takeWhile _).length at hh
        rw [runs_takeWhile_head _ _ _ hc hps] at hh
        rw [← hheads] at hh
        have hcy' : (x.1 :: ys.map Prod.fst).IsChain (· ≠ ·) := by simpa only [hheads] using hcy
        rw [runs_takeWhile_head _ _ _ hcy' hpys] at hh
        simpa using hh
      have hxy : x = y := Prod.ext hheads hlengths
      subst y
      have heTail : runsExpand xs = runsExpand ys := by
        change List.replicate x.2 x.1 ++ runsExpand xs = List.replicate x.2 x.1 ++ runsExpand ys at he
        exact List.append_cancel_left he
      have hrest := ih ys hc.tail hps htail heTail hpys
      exact congrArg (List.cons x) hrest

open Polynomial
abbrev F2Poly := Polynomial (ZMod 2)
lemma poly_pow_coeff_one (p : F2Poly) (h0 : p.coeff 0 = 1) (h1 : p.coeff 1 = 1) (m : ℕ) :
    (p ^ m).coeff 1 = (m : ZMod 2) := by
  induction m with
  | zero => simp [Polynomial.coeff_one]
  | succ m ih =>
    rw [pow_succ, mul_coeff_one, ih, h0, h1]
    have hz : (p ^ m).coeff 0 = 1 := by
      rw [← constantCoeff_apply, map_pow, constantCoeff_apply, h0, one_pow]
    simp [hz, Nat.cast_add, Nat.cast_one, add_comm]
lemma expand_f2_pow (p : F2Poly) (k : ℕ) :
    expand (ZMod 2) (2 ^ k) p = p ^ (2 ^ k) := by
  have hi : iterateFrobenius (ZMod 2) 2 k = RingHom.id (ZMod 2) := by
    ext x
    simp only [iterateFrobenius_def, RingHom.id_apply]
    exact FiniteField.pow_card_pow k x
  have h := map_iterateFrobenius_expand (p := 2) p k
  simpa only [hi, Polynomial.map_id] using h
lemma odd_part (m : ℕ) (hm : m ≠ 0) :
    ∃ q : ℕ, Odd q ∧ m = (2 ^ padicValNat 2 m) * q := by
  obtain ⟨q, hq⟩ := (pow_padicValNat_dvd (p := 2) (n := m))
  refine ⟨q, ?_, hq⟩
  apply Nat.not_even_iff_odd.mp
  intro he
  obtain ⟨r, hr⟩ := even_iff_two_dvd.mp he
  apply pow_succ_padicValNat_not_dvd (p := 2) hm
  refine ⟨r, ?_⟩
  calc
    m = 2 ^ padicValNat 2 m * q := hq
    _ = 2 ^ (padicValNat 2 m + 1) * r := by rw [hr, pow_succ]; ring

noncomputable def geomPoly (n : ℕ) : F2Poly := ∑ k ∈ Finset.range (n+1), X ^ k
lemma geomPoly_coeff_zero (n : ℕ) : (geomPoly n).coeff 0 = 1 := by
  simp [geomPoly, finsetSum_coeff, coeff_X_pow]
lemma geomPoly_coeff_one (n : ℕ) (hn : 0 < n) : (geomPoly n).coeff 1 = 1 := by
  simp [geomPoly, finsetSum_coeff, coeff_X_pow, hn]
/-- Finite signed-power polynomial; the inverse includes all degrees through n. -/
noncomputable def signedPoly (n : ℕ) (e : ℤ) : F2Poly :=
  (if e < 0 then geomPoly n else 1 + X) ^ e.natAbs
/-- Exact signed leading coefficient and all lower positive-degree vanishings. -/
lemma signedPoly_coeff (n : ℕ) (hn : 0 < n) (e : ℤ) (he : e ≠ 0) :
    (signedPoly n e).coeff 0 = 1 ∧
    (signedPoly n e).coeff (syllableDegree e) = 1 ∧
    (∀ k, 0 < k → k < syllableDegree e → (signedPoly n e).coeff k = 0) := by
  let b : F2Poly := if e < 0 then geomPoly n else 1 + X
  have h0 : b.coeff 0 = 1 := by
    dsimp [b]; split_ifs <;> simp [geomPoly_coeff_zero, Polynomial.coeff_one]
  have h1 : b.coeff 1 = 1 := by
    dsimp [b]; split_ifs <;> simp [geomPoly_coeff_one n hn, Polynomial.coeff_one]
  obtain ⟨q, hq, hmul⟩ := odd_part e.natAbs (by simpa using he)
  have hex : signedPoly n e = expand (ZMod 2) (syllableDegree e) (b ^ q) := by
    rw [signedPoly, hmul]
    change b ^ (2 ^ padicValNat 2 e.natAbs * q) = _
    rw [Nat.mul_comm, pow_mul]
    exact (expand_f2_pow (b ^ q) (padicValNat 2 e.natAbs)).symm
  rw [hex]
  have hd := syllableDegree_pos e
  refine ⟨?_, ?_, ?_⟩
  · simp only [coeff_expand hd, dvd_zero, ite_true, Nat.zero_div]
    rw [← constantCoeff_apply, map_pow, constantCoeff_apply, h0, one_pow]
  · have h := coeff_expand_mul hd (b ^ q) 1
    simp only [one_mul] at h
    rw [h, poly_pow_coeff_one b h0 h1 q]
    exact hq.natCast_zmod_two
  · intro k hk hkd
    rw [coeff_expand hd, ite_eq_right (Nat.not_dvd_of_pos_of_lt hk hkd)]

variable {A : Type*} [DecidableEq A]
/-- Evaluate the finite polynomial in the ACTUAL Magnus generator, including inverses. -/
lemma signedPoly_eval {n : ℕ} (target : Fin n → A) (a : A) (e : ℤ) :
    Polynomial.aeval (variableMatrix target a) (signedPoly n e) =
      ((generator target a ^ e).val : unipotent n).val := by
  by_cases he : e < 0
  · have habs : (e.natAbs : ℤ) = -e := by
      simp [abs_of_neg he]
    have hg : Polynomial.aeval (variableMatrix target a) (geomPoly n) =
        (((generator target a)⁻¹).val : unipotent n).val := by
      rw [generator_inverse]
      simp [geomPoly, map_sum, map_pow]
    simp only [signedPoly, he, ite_true, map_pow, hg]
    have heq : e = -(e.natAbs : ℤ) := by omega
    conv_rhs => rw [heq, zpow_neg, zpow_natCast, ← inv_pow]
    rfl
  · have habs : (e.natAbs : ℤ) = e := by
      simp [abs_of_nonneg (by omega : 0 ≤ e)]
    simp only [signedPoly, he, ite_false, map_pow, map_add, map_one, aeval_X]
    rw [← habs, zpow_natCast]
    rfl

open scoped BigOperators
open Polynomial
/-- Ordered iterated coefficient sum; no commutativity of target products is assumed. -/
noncomputable def choiceSum {M : Type*} [AddCommMonoid M] [Module (ZMod 2) M] :
    List F2Poly → (List ℕ → M) → M
  | [], f => f []
  | p :: ps, f => ∑ k ∈ p.support, p.coeff k • choiceSum ps (fun ks => f (k :: ks))
lemma choiceSum_congr {M : Type*} [AddCommMonoid M] [Module (ZMod 2) M]
    (ps : List F2Poly) (f g : List ℕ → M)
    (h : ∀ ks, ks.length = ps.length → f ks = g ks) : choiceSum ps f = choiceSum ps g := by
  induction ps generalizing f g with
  | nil => exact h [] rfl
  | cons p ps ih =>
    apply Finset.sum_congr rfl
    intro k hk
    congr 1
    apply ih
    intro ks hs
    exact h (k::ks) (by simpa using hs)
lemma choiceSum_map {M N : Type*} [AddCommMonoid M] [Module (ZMod 2) M]
    [AddCommMonoid N] [Module (ZMod 2) N]
    (L : M →ₗ[ZMod 2] N) (ps : List F2Poly) (f : List ℕ → M) :
    L (choiceSum ps f) = choiceSum ps (fun ks => L (f ks)) := by
  induction ps generalizing f with
  | nil => rfl
  | cons p ps ih => simp only [choiceSum, map_sum, map_smul, ih]
lemma choiceSum_zero {M : Type*} [AddCommMonoid M] [Module (ZMod 2) M] (ps : List F2Poly) :
    choiceSum ps (fun _ => (0 : M)) = 0 := by
  induction ps with
  | nil => rfl
  | cons p ps ih => simp [choiceSum, ih]
lemma choiceSum_delta (ps : List F2Poly) (ds : List ℕ) (hl : ds.length = ps.length) :
    choiceSum ps (fun ks => if ks = ds then (1 : ZMod 2) else 0) =
      ((ps.zip ds).map fun t => t.1.coeff t.2).prod := by
  induction ps generalizing ds with
  | nil => cases ds <;> simp_all [choiceSum]
  | cons p ps ih =>
    cases ds with
    | nil => simp at hl
    | cons d ds =>
      have hlen : ds.length = ps.length := by simpa using hl
      change (∑ k ∈ p.support, p.coeff k • choiceSum ps (fun ks => if k::ks = d::ds then (1 : ZMod 2) else 0)) = _
      have ht (k : ℕ) :
          choiceSum ps (fun ks => if k::ks = d::ds then (1 : ZMod 2) else 0) =
          if k = d then ((ps.zip ds).map fun t => t.1.coeff t.2).prod else 0 := by
        by_cases hk : k = d
        · subst k
          simpa using ih ds hlen
        · simp only [List.cons.injEq, hk, false_and, ite_false]
          exact choiceSum_zero ps
      simp_rw [ht, smul_eq_mul, mul_ite, mul_zero]
      by_cases hd : d ∈ p.support
      · simp [hd]
      · have hz : p.coeff d = 0 := Polynomial.notMem_support_iff.mp hd
        simp [hd, hz]

lemma monomial_append {A : Type*} [DecidableEq A] {n : ℕ}
    (target : Fin n → A) (xs ys : List A) :
    monomial target (xs ++ ys) = monomial target xs * monomial target ys := by
  simp [monomial]
lemma monomial_replicate {A : Type*} [DecidableEq A] {n : ℕ}
    (target : Fin n → A) (a : A) (k : ℕ) :
    monomial target (List.replicate k a) = variableMatrix target a ^ k := by
  simp [monomial]
lemma choiceSum_mul_left {n : ℕ} (x : Algebra n) (ps : List F2Poly) (f : List ℕ → Algebra n) :
    x * choiceSum ps f = choiceSum ps (fun ks => x * f ks) := by
  induction ps generalizing f with
  | nil => rfl
  | cons p ps ih => simp only [choiceSum, Finset.mul_sum, mul_smul_comm, ih]
lemma poly_eval_sum {n : ℕ} (x : Algebra n) (p : F2Poly) :
    Polynomial.aeval x p = ∑ k ∈ p.support, p.coeff k • x ^ k := by
  simp only [Polynomial.aeval_def, Polynomial.eval₂_eq_sum, Polynomial.sum_def, Algebra.smul_def]

/-- Distribute finite polynomial evaluations in their original factor order. -/
lemma matrix_product_expansion {A : Type*} [DecidableEq A] {n : ℕ}
    (target : Fin n → A) (fs : List (A × F2Poly)) :
    (fs.map fun t => Polynomial.aeval (variableMatrix target t.1) t.2).prod =
      choiceSum (fs.map Prod.snd)
        (fun ks => monomial target (runsExpand ((fs.map Prod.fst).zip ks))) := by
  induction fs with
  | nil => simp [choiceSum, monomial, runsExpand]
  | cons t fs ih =>
    simp only [List.map_cons, List.prod_cons]
    rw [poly_eval_sum, Finset.sum_mul, ih]
    change (∑ k ∈ t.2.support, (t.2.coeff k • variableMatrix target t.1 ^ k) *
      choiceSum (fs.map Prod.snd) (fun ks => monomial target (runsExpand ((fs.map Prod.fst).zip ks)))) = _
    rw [choiceSum]
    apply Finset.sum_congr rfl
    intro k hk
    rw [smul_mul_assoc, choiceSum_mul_left]
    congr 1
    apply choiceSum_congr
    intro ks hks
    simp only [List.zip_cons_cons, runsExpand, List.flatMap_cons]
    rw [monomial_append, monomial_replicate]
lemma runs_zip_unique (labels : List A) (ds ks : List ℕ)
    (hc : labels.IsChain (· ≠ ·)) (hd : ds.length = labels.length)
    (hk : ks.length = labels.length) (hp : ∀ d ∈ ds, 0 < d) :
    runsExpand (labels.zip ks) = runsExpand (labels.zip ds) ↔ ks = ds := by
  constructor
  · intro he
    have hfst (xs : List ℕ) (hx : xs.length = labels.length) :
        ((labels.zip xs).map Prod.fst) = labels := by
      exact List.map_fst_zip (by omega)
    have hsnd (xs : List ℕ) (hx : xs.length = labels.length) :
        ((labels.zip xs).map Prod.snd) = xs := by
      exact List.map_snd_zip (by omega)
    have hh : labels.zip ds = labels.zip ks := by
      apply runsExpand_injective
      · simpa only [hfst ds hd] using hc
      · intro x hx
        exact hp x.2 ((List.of_mem_zip hx).2)
      · rw [hfst ds hd, hfst ks hk]
      · exact he.symm
    have h := congrArg (List.map Prod.snd) hh
    rw [hsnd ds hd, hsnd ks hk] at h
    exact h.symm
  · rintro rfl; rfl

lemma matrix_top_product {n : ℕ} (target : Fin n → A) (fs : List (A × F2Poly)) :
    ((fs.map fun t => Polynomial.aeval (variableMatrix target t.1) t.2).prod) 0 (Fin.last n) =
      choiceSum (fs.map Prod.snd) (fun ks =>
        if runsExpand ((fs.map Prod.fst).zip ks) = List.ofFn target then (1 : ZMod 2) else 0) := by
  let L : Algebra n →ₗ[ZMod 2] ZMod 2 :=
    { toFun := fun m => m 0 (Fin.last n)
      map_add' := by intros; rfl
      map_smul' := by intros; rfl }
  calc
    _ = L (choiceSum (fs.map Prod.snd)
        (fun ks => monomial target (runsExpand ((fs.map Prod.fst).zip ks)))) :=
      congrArg L (matrix_product_expansion target fs)
    _ = _ := by
      rw [choiceSum_map]
      apply choiceSum_congr
      intro ks hks
      exact monomial_top target _

/-- Run-count convolution leaves exactly the prescribed coefficient product. -/
lemma matrix_run_product {n : ℕ} (target : Fin n → A) (fs : List (A × F2Poly)) (ds : List ℕ)
    (hc : (fs.map Prod.fst).IsChain (· ≠ ·)) (hd : ds.length = fs.length)
    (hp : ∀ d ∈ ds, 0 < d)
    (hword : runsExpand ((fs.map Prod.fst).zip ds) = List.ofFn target) :
    ((fs.map fun t => Polynomial.aeval (variableMatrix target t.1) t.2).prod) 0 (Fin.last n) =
      (((fs.map Prod.snd).zip ds).map fun t => t.1.coeff t.2).prod := by
  rw [matrix_top_product]
  trans choiceSum (fs.map Prod.snd) (fun ks => if ks = ds then (1 : ZMod 2) else 0)
  · apply choiceSum_congr
    intro ks hks
    have hlen : ks.length = (fs.map Prod.fst).length := by simpa using hks
    simp only [← hword, runs_zip_unique _ _ _ hc (by simpa using hd) hlen hp]
  · exact choiceSum_delta _ ds (by simpa using hd)
/-- Forget the unit and unipotent subtype of the existing free-group representation. -/
def matrixRepresentation {n : ℕ} (target : Fin n → A) : FreeGroup A →* Algebra n :=
  (unipotent n).subtype.comp ((Units.coeHom (unipotent n)).comp (representation target))

lemma matrixRepresentation_syllables {n : ℕ} (target : Fin n → A) (s : List (A × ℤ)) :
    matrixRepresentation target (syllableClass s) =
      (s.map fun t => Polynomial.aeval (variableMatrix target t.1) (signedPoly n t.2)).prod := by
  rw [syllableClass, map_list_prod]
  apply congrArg List.prod
  simp only [List.map_map]
  apply List.map_congr_left
  intro t ht
  rw [signedPoly_eval]
  change ((representation target (FreeGroup.of t.1 ^ t.2)).val : unipotent n).val = _
  simp [representation]


end CoefficientProof

open CoefficientProof in
/-- Every nonempty reduced signed syllable word has coefficient one in its
prescribed degree-sum pattern, in the actual finite Magnus representation. -/
theorem syllableCoefficientLaw : SyllableCoefficientLaw (A := A) := by
  intro s hs
  let n := (syllablePattern s).length
  let target : Fin n → A := (syllablePattern s).get
  let fs : List (A × F2Poly) := s.map fun t => (t.1, signedPoly n t.2)
  let ds : List ℕ := s.map fun t => syllableDegree t.2
  have hn : 0 < n := syllablePattern_pos s hs.1
  have hlabels : fs.map Prod.fst = s.map Prod.fst := by simp [fs, List.map_map]
  have hchain : (fs.map Prod.fst).IsChain (· ≠ ·) := by
    rw [hlabels, List.isChain_map]
    exact hs.2.2
  have hlen : ds.length = fs.length := by simp [ds, fs]
  have hpos : ∀ d ∈ ds, 0 < d := by
    intro d hd
    obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hd
    exact syllableDegree_pos t.2
  have hword : runsExpand ((fs.map Prod.fst).zip ds) = List.ofFn target := by
    rw [hlabels]
    simp only [ds, List.zip_map', runsExpand, List.flatMap_map]
    simp [target, n, syllablePattern, List.ofFn_get]
  have hr := matrix_run_product target fs ds hchain hlen hpos hword
  have hc : (((fs.map Prod.snd).zip ds).map fun t => t.1.coeff t.2).prod = 1 := by
    simp only [fs, ds, List.map_map, List.zip_map', List.map_map, Function.comp_def]
    apply List.prod_eq_one
    intro c hmem
    obtain ⟨t, ht, rfl⟩ := List.mem_map.mp hmem
    exact (signedPoly_coeff n hn t.2 (hs.2.1 t ht)).2.1
  rw [hc] at hr
  change matrixRepresentation target (syllableClass s) 0 (Fin.last n) = 1
  rw [matrixRepresentation_syllables]
  simpa only [fs, List.map_map, Function.comp_def] using hr

/-- Every nonempty reduced syllable sequence is separated by the constructed
finite characteristic-two group, without an external coefficient supplier. -/
theorem separates_syllables
    (s : List (A × ℤ)) (hs : ReducedSyllables s) :
    representation (syllablePattern s).get (syllableClass s) ≠ 1 :=
  separates_of_coefficient _ (syllablePattern_pos s hs.1) _ (syllableCoefficientLaw s hs)

/-- The separate normal-form return obligation. It must not be confused with
assuming that arbitrary source histories themselves are reduced. -/
def SyllableNormalFormLaw : Prop :=
  ∀ w : FreeGroup A, w ≠ 1 →
    ∃ s : List (A × ℤ), ReducedSyllables s ∧ syllableClass s = w


/-- Reduced syllable invariant permitting the identity (empty list). -/
def NormalSyllables (s : List (A × ℤ)) : Prop :=
  (∀ t ∈ s, t.2 ≠ 0) ∧ s.IsChain (fun t u => t.1 ≠ u.1)

/-- Head merging preserves both the reduced invariant and actual group class. -/
lemma normal_prepend (a : A) (e : ℤ) (he : e ≠ 0)
    (s : List (A × ℤ)) (hs : NormalSyllables s) :
    ∃ t, NormalSyllables t ∧ syllableClass t = (FreeGroup.of a) ^ e * syllableClass s := by
  rcases hs with ⟨hne, hc⟩
  cases s with
  | nil =>
    refine ⟨[(a,e)], ?_, ?_⟩
    · simp [NormalSyllables, he]
    · simp [syllableClass]
  | cons b tail =>
    by_cases hab : a = b.1
    · by_cases hz : e + b.2 = 0
      · refine ⟨tail, ⟨fun t ht => hne t (by simp [ht]), hc.tail⟩, ?_⟩
        simp only [syllableClass, List.map_cons, List.prod_cons]
        rw [← mul_assoc, hab, ← zpow_add, hz, zpow_zero, one_mul]
      · refine ⟨(a, e + b.2) :: tail, ?_, ?_⟩
        · constructor
          · intro t ht
            rcases List.mem_cons.mp ht with rfl | ht
            · exact hz
            · exact hne t (by simp [ht])
          · cases tail with
            | nil => simp
            | cons c rest =>
              simpa [List.isChain_cons_cons, hab] using hc
        · simp only [syllableClass, List.map_cons, List.prod_cons]
          rw [hab, zpow_add, mul_assoc]
    · refine ⟨(a,e) :: b :: tail, ?_, ?_⟩
      · constructor
        · intro t ht
          rcases List.mem_cons.mp ht with rfl | ht
          · exact he
          · exact hne t ht
        · exact List.isChain_cons_cons.mpr ⟨hab, hc⟩
      · simp [syllableClass]

/-- Normalize every quotient representative; no assumed freeness criterion. -/
lemma exists_normal (w : FreeGroup A) : ∃ s, NormalSyllables s ∧ syllableClass s = w := by
  induction w using Quot.inductionOn with
  | h xs =>
    induction xs with
    | nil => exact ⟨[], by simp [NormalSyllables], rfl⟩
    | cons x xs ih =>
      obtain ⟨s, hs, heq⟩ := ih
      cases x with
      | mk a sign =>
        cases sign with
        | false =>
          obtain ⟨t, ht, he⟩ := normal_prepend a (-1) (by decide) s hs
          refine ⟨t, ht, ?_⟩
          rw [he, heq]
          rfl
        | true =>
          obtain ⟨t, ht, he⟩ := normal_prepend a 1 (by decide) s hs
          refine ⟨t, ht, ?_⟩
          rw [he, heq]
          rfl

/-- Unconditional normal-form supplier, preserving all source hypotheses. -/
theorem syllableNormalFormLaw : SyllableNormalFormLaw (A := A) := by
  intro w hw
  obtain ⟨s, hs, heq⟩ := exists_normal w
  refine ⟨s, ⟨?_, hs⟩, heq⟩
  intro h
  subst s
  exact hw heq.symm

/-- Unconditional residual-2 separation: both coefficient and normal-form
suppliers are proved internally for the actual Mathlib free-group quotient. -/
theorem separates_nonidentity
    (w : FreeGroup A) (hw : w ≠ 1) :
    ∃ (n : ℕ) (target : Fin n → A),
      representation target w ≠ 1 := by
  obtain ⟨s, hs, rfl⟩ := syllableNormalFormLaw w hw
  exact ⟨_, (syllablePattern s).get, separates_syllables s hs⟩
end TruncatedMagnus

section MagnusVoltageReturn
variable {A : Type u} [DecidableEq A]

/-- A proved coefficient witness separates the actual marked voltage endpoint
from its starting sheet; exact source erasure remains `signedBouquet_erase_lift`.
The full-module check includes this exact source-path consumer. -/
theorem magnus_endpoint_ne_of_coefficient {n : ℕ} (target : Fin n → A)
    (hn : 0 < n) (xs : List (A × Bool))
    (hc : TruncatedMagnus.coefficient target (sourceFreeClass xs) = 1)
    (g : TruncatedMagnus.Group n) :
    (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
      (signedBouquetTransport (TruncatedMagnus.generator target))
      (signedBouquetPath xs) g).1 ≠ g := by
  rw [signedBouquet_lift_endpoint]
  intro h
  apply TruncatedMagnus.separates_of_coefficient target hn (sourceFreeClass xs) hc
  exact mul_left_cancel (h.trans (mul_one g).symm)

/-- Unconditional nonidentity source-word return to the actual voltage cover. The actual input may contain inverse-pair events; only its free-group
class is required to be nonidentity. -/
theorem magnus_nonidentity_endpoint
    (xs : List (A × Bool)) (hw : sourceFreeClass xs ≠ 1) :
    ∃ (n : ℕ) (target : Fin n → A), ∀ g : TruncatedMagnus.Group n,
      (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport (TruncatedMagnus.generator target))
        (signedBouquetPath xs) g).1 ≠ g := by
  obtain ⟨n, target, ht⟩ := TruncatedMagnus.separates_nonidentity _ hw
  refine ⟨n, target, ?_⟩
  intro g
  rw [signedBouquet_lift_endpoint]
  intro h
  exact ht (mul_left_cancel (h.trans (mul_one g).symm))
end MagnusVoltageReturn

end InverseEdgeVoltage
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

/-!
# Rooted spanning-tree return and finite index-two graph-cover towers

Mathematical consumer: the existing typed `Path`, its formal inverse edges,
Mathlib's actual `Quiver.FreeGroupoid` cancellation quotient, and the Magnus
separation proved above. Source request: https://github.com/grwtsk/math/issues/1784.
The earlier unconditional Magnus source is pinned at
ae0f6cd3b374e3520a3980271d704b865c897116; its checks keep their historical scope.

## Exact hypotheses and primary argument

A supplied `SpanningTree.RootedTree V` consists of a root, parent map and natural
rank strictly decreasing toward the parent at every nonroot vertex. Its tree
has one forward branch from parent(v) to v for every nonroot v; formal backward
traversal uses that SAME edge. Additional chords have their specified endpoints.
For an arbitrary original dependent edge family E, the bridge requires an
endpoint-by-endpoint bijection from E to this tree-plus-chords presentation.
This is actual spanning-tree/edge decomposition data, not an assumed free-group
isomorphism, not a supplied separation certificate, and not merely vertex labels.
No finiteness of V, E or the chord alphabet is assumed. DecidableEq on the chord
alphabet is required only at the computational Magnus consumer.

The source combinatorial based fundamental group is `OriginalLoop E root`,
whose arrows are loops in Mathlib's actual free groupoid of E. Multiplication is
chronological composition. The code functor kills tree edges and sends chords
to the canonical free generators. `SingleObj` reverses multiplication, so an
explicit `MulOpposite` pays the orientation convention. Parent recursion builds
root-to-vertex connectors. The decoder sends a chord to its connector/edge/
inverse-connector loop. Free-groupoid induction proves, for EVERY morphism f,
that decoding its word equals connector(source) ≫ f ≫ inverse connector(target).
The tree cases follow from the connector recursion; composition cancels the
middle connector; inverse cases use actual groupoid inverses. This proves both
inverse laws, not just a surjective encoding. Edge bijections induce inverse
free-groupoid functors, yielding `originalLoopEquiv` for the ACTUAL original E.
The raw path maps are also two-sided inverses: no recorded inverse event is lost.
`original_holonomy` compares the original voltage to the encoded path exactly.

For a finite group of order 2^m, the subgroup extension theorem constructs nested
H_0,...,H_m with H_0=bot, H_m=top and |H_i|=2^i. Lagrange gives relative index two;
normality INSIDE the next subgroup follows from index two. Global normality in G
is neither assumed nor asserted. Sheets are the LEFT coset sets G/H_i. To match
the existing RIGHT sheet update g ↦ g*u, the transport is inverse-left action
q ↦ u⁻¹ • q, with the exact comparison q=[g⁻¹]. This action is well-defined even
for nonnormal H_i. The natural coset projection commutes with every transport.
Its fiber is explicitly equivalent to H_(i+1)/(H_i subgroupOf H_(i+1)), so has
cardinality two. The same holds for every vertex fiber, without finite V.
Incoming and outgoing target/source lifts are unique over each original edge;
proof irrelevance makes an edge with fixed original witness and endpoints unique.
At the top, vertex and edge equivalences recover the base graph. At the bottom,
`bottom_regular_endpoint` compares with the EXISTING regular voltage cover.
`erase_liftPath` retains the entire original history at every level.

`separating_covering_tower` composes the proved source loop equivalence, Magnus
separation and the subgroup series. A nonidentity source free-groupoid class
moves every bottom sheet; the tower has positive length and every transition
has exactly two preimages per vertex, with unique edge lifts. A nonempty but
cancellable history is correctly excluded by the NONIDENTITY-CLASS hypothesis.
A trivial finite group admits the zero-length series, but cannot satisfy that
separation hypothesis. Parallel edges, loops and nonadjacent repeated chord
labels are retained. The subgroup cardinal argument is an additional check of
the degree count; it is not claimed to be an independent proof of Magnus.

## Boundaries and evidence

This is a combinatorial graph-cover theorem with an explicit supplied rooted
tree presentation. It does not construct that presentation from a bare
connectedness predicate on an arbitrary undirected graph, and it does not
identify the free groupoid with the topological fundamental group of a geometric
realization. Those are separate adapters, not hidden hypotheses proved here.
Finite-sheet covers may be disconnected when voltages do not generate the full
chosen codomain; connected intermediate covers are not claimed. No invariant
unmarked holonomy observation, novel residual theorem or physical transfer is
asserted. Independent mathematical review of this EXTENSION is NOT_RUN.
Exact elaboration, replay and axiom-audit scopes are recorded in issue #1784.
-/
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower
open scoped BigOperators
variable {G : Type*} [Group G] [Finite G]
/-- A nested order-doubling subgroup series. No global normality is assumed. -/
theorem exists_series (n : ℕ) (hG : Nat.card G = 2 ^ n) :
    ∃ H : Fin (n+1) → Subgroup G,
      H 0 = ⊥ ∧ H (Fin.last n) = ⊤ ∧
      (∀ i, Nat.card (H i) = 2 ^ i.val) ∧
      (∀ i : Fin n, H i.castSucc ≤ H i.succ) := by
  have aux : ∀ k, k ≤ n → ∃ H : Fin (k+1) → Subgroup G,
      H 0 = ⊥ ∧ (∀ i, Nat.card (H i) = 2 ^ i.val) ∧
      (∀ i : Fin k, H i.castSucc ≤ H i.succ) := by
    intro k
    induction k with
    | zero =>
      intro hk
      exact ⟨fun _ => ⊥, rfl, by intro i; change Nat.card (⊥ : Subgroup G) = 2 ^ i.val; rw [show i.val = 0 by omega]; simp, by intro i; exact Fin.elim0 i⟩
    | succ k ih =>
      intro hk
      obtain ⟨H, h0, hcard, hle⟩ := ih (by omega)
      obtain ⟨K, hK, hHK⟩ := Sylow.exists_subgroup_card_pow_succ
        (p := 2) (n := k) (G := G) (by rw [hG]; exact pow_dvd_pow 2 hk) (hcard (Fin.last k))
      let H' : Fin (k+2) → Subgroup G := Fin.lastCases K H
      refine ⟨H', ?_, ?_, ?_⟩
      · exact (Fin.lastCases_castSucc (n := k+1) (motive := fun _ => Subgroup G) (last := K) (cast := H) (0 : Fin (k+1))).trans h0
      · intro i
        refine Fin.lastCases ?_ (fun j => ?_) i
        · simpa [H'] using hK
        · simpa [H'] using hcard j
      · intro i
        refine Fin.lastCases ?_ (fun j => ?_) i
        · simpa [H'] using hHK
        · simpa only [H', Fin.succ_castSucc, Fin.lastCases_castSucc] using hle j
  obtain ⟨H,h0,hcard,hle⟩ := aux n le_rfl
  refine ⟨H,h0,?_,hcard,hle⟩
  apply Subgroup.eq_top_of_card_eq
  simpa [hG] using hcard (Fin.last n)

lemma step_index {H K : Subgroup G} (h : H ≤ K) (k : ℕ)
    (hH : Nat.card H = 2 ^ k) (hK : Nat.card K = 2 ^ (k+1)) :
    (H.subgroupOf K).index = 2 := by
  have hc : Nat.card (H.subgroupOf K) = Nat.card H :=
    Nat.card_congr (Subgroup.subgroupOfEquivOfLe h).toEquiv
  have hm := (H.subgroupOf K).card_mul_index
  rw [hc,hH,hK,pow_succ] at hm
  exact Nat.eq_of_mul_eq_mul_left (by positivity : 0 < 2 ^ k) hm
/-- Left cosets, with inverse-left transport representing the existing RIGHT
sheet multiplication. No subgroup normality is needed. -/
def transport (H : Subgroup G) (u : G) (q : G ⧸ H) : G ⧸ H := u⁻¹ • q
lemma transport_mk (H : Subgroup G) (u g : G) :
    transport H u (QuotientGroup.mk g) = QuotientGroup.mk (u⁻¹ * g) := rfl
lemma transport_mul (H : Subgroup G) (u v : G) (q : G ⧸ H) :
    transport H v (transport H u q) = transport H (u*v) q := by
  simp [transport, mul_smul]
lemma project_transport {H K : Subgroup G} (h : H ≤ K) (u : G) (q : G ⧸ H) :
    Subgroup.quotientMapOfLE h (transport H u q) =
      transport K u (Subgroup.quotientMapOfLE h q) := by
  induction q using Quotient.inductionOn' with
  | h g => rfl

noncomputable def projectionFiberEquiv {H K : Subgroup G} (h : H ≤ K) (q : G ⧸ K) :
    {x : G ⧸ H // Subgroup.quotientMapOfLE h x = q} ≃ K ⧸ H.subgroupOf K where
  toFun x := (Subgroup.quotientEquivProdOfLE h x.val).2
  invFun z := ⟨(Subgroup.quotientEquivProdOfLE h).symm (q,z), by
    change (Subgroup.quotientEquivProdOfLE h ((Subgroup.quotientEquivProdOfLE h).symm (q,z))).1 = q
    rw [Equiv.apply_symm_apply]⟩
  left_inv x := by
    apply Subtype.ext
    have hx : (Subgroup.quotientEquivProdOfLE h x.val).1 = q := x.property
    change (Subgroup.quotientEquivProdOfLE h).symm (q, (Subgroup.quotientEquivProdOfLE h x.val).2) = x.val
    calc
      _ = (Subgroup.quotientEquivProdOfLE h).symm ((Subgroup.quotientEquivProdOfLE h x.val).1, (Subgroup.quotientEquivProdOfLE h x.val).2) :=
        congrArg (fun z => (Subgroup.quotientEquivProdOfLE h).symm (z, (Subgroup.quotientEquivProdOfLE h x.val).2)) hx.symm
      _ = _ := (Subgroup.quotientEquivProdOfLE h).symm_apply_apply x.val
  right_inv z := by
    change (Subgroup.quotientEquivProdOfLE h ((Subgroup.quotientEquivProdOfLE h).symm (q,z))).2 = z
    exact congrArg Prod.snd ((Subgroup.quotientEquivProdOfLE h).apply_symm_apply (q,z))

lemma projection_two {H K : Subgroup G} (h : H ≤ K)
    (hi : (H.subgroupOf K).index = 2) (q : G ⧸ K) :
    Nat.card {x : G ⧸ H // Subgroup.quotientMapOfLE h x = q} = 2 := by
  rw [Nat.card_congr (projectionFiberEquiv h q)]
  exact hi

structure TwoSeries (G : Type*) [Group G] where
  length : ℕ
  subgroup : Fin (length+1) → Subgroup G
  first : subgroup 0 = ⊥
  last : subgroup (Fin.last length) = ⊤
  le_step : ∀ i : Fin length, subgroup i.castSucc ≤ subgroup i.succ
  index_step : ∀ i : Fin length, ((subgroup i.castSucc).subgroupOf (subgroup i.succ)).index = 2

theorem exists_twoSeries (hp : IsPGroup 2 G) : Nonempty (TwoSeries G) := by
  obtain ⟨n, hn⟩ := (IsPGroup.iff_card (p := 2) (G := G)).mp hp
  obtain ⟨H,h0,hend,hcard,hle⟩ := exists_series n hn
  refine ⟨⟨n,H,h0,hend,hle,?_⟩⟩
  intro i
  exact step_index (hle i) i.val (hcard i.castSucc) (hcard i.succ)
lemma TwoSeries.step_normal (S : TwoSeries G) (i : Fin S.length) :
    ((S.subgroup i.castSucc).subgroupOf (S.subgroup i.succ)).Normal :=
  Subgroup.normal_of_index_eq_two (S.index_step i)
lemma TwoSeries.two_fibers (S : TwoSeries G) (i : Fin S.length) (q : G ⧸ S.subgroup i.succ) :
    Nat.card {x : G ⧸ S.subgroup i.castSucc // Subgroup.quotientMapOfLE (S.le_step i) x = q} = 2 :=
  projection_two (S.le_step i) (S.index_step i) q

section GraphCover
variable {V : Type*} (E : V → V → Type*) (U : ∀ {a b}, E a b → G)
structure Edge (H : Subgroup G) (x y : V × (G ⧸ H)) where
  original : E x.1 y.1
  target_eq : transport H (U original) x.2 = y.2

def liftEdge (H : Subgroup G) {a b : V} (e : E a b) (q : G ⧸ H) :
    Edge E U H (a,q) (b,transport H (U e) q) := ⟨e,rfl⟩
def erasePath (H : Subgroup G) {x y : V × (G ⧸ H)} :
    Path (Edge E U H) x y → Path E x.1 y.1
  | .refl _ => .refl _
  | .cons e rest => .cons e.original (erasePath H rest)
noncomputable def liftPath (H : Subgroup G) {a b : V} (p : Path E a b) (q : G ⧸ H) :
    Σ r : G ⧸ H, Path (Edge E U H) (a,q) (b,r) :=
  match p with
  | .refl a => ⟨q,.refl _⟩
  | .cons e rest =>
    let tail := liftPath H rest (transport H (U e) q)
    ⟨tail.1, .cons (liftEdge E U H e q) tail.2⟩
lemma lift_endpoint (H : Subgroup G) {a b : V} (p : Path E a b) (q : G ⧸ H) :
    (liftPath E U H p q).1 = transport H (Path.holonomy U p) q := by
  induction p generalizing q with
  | refl a => simp [liftPath,Path.holonomy,transport]
  | cons e rest ih =>
    simpa [liftPath,Path.holonomy,transport_mul] using ih (transport H (U e) q)
lemma erase_liftPath (H : Subgroup G) {a b : V} (p : Path E a b) (q : G ⧸ H) :
    erasePath E U H (liftPath E U H p q).2 = p := by
  induction p generalizing q with
  | refl a => rfl
  | cons e rest ih => simp [liftPath,erasePath,liftEdge,ih]

def projectVertex {H K : Subgroup G} (h : H ≤ K) (x : V × (G ⧸ H)) : V × (G ⧸ K) :=
  (x.1,Subgroup.quotientMapOfLE h x.2)
def projectEdge {H K : Subgroup G} (h : H ≤ K) {x y : V × (G ⧸ H)} (e : Edge E U H x y) :
    Edge E U K (projectVertex h x) (projectVertex h y) :=
  ⟨e.original, by
    have ht := congrArg (Subgroup.quotientMapOfLE h) e.target_eq
    rw [project_transport] at ht
    exact ht⟩
/-- Every edge of the coarser cover has exactly one outgoing target over a
specified finer starting sheet. The original edge witness is unchanged. -/
lemma outgoing_lift_unique {H K : Subgroup G} (h : H ≤ K) {a b : V}
    (q : G ⧸ H) (r : G ⧸ K) (e : Edge E U K (a,Subgroup.quotientMapOfLE h q) (b,r)) :
    ∃! s : G ⧸ H, Subgroup.quotientMapOfLE h s = r ∧ transport H (U e.original) q = s := by
  refine ⟨transport H (U e.original) q, ⟨?_,rfl⟩, ?_⟩
  · rw [project_transport]
    exact e.target_eq
  · intro s hs
    exact hs.2.symm
lemma incoming_lift_unique {H K : Subgroup G} (h : H ≤ K) {a b : V}
    (q : G ⧸ H) (r : G ⧸ K) (e : Edge E U K (a,r) (b,Subgroup.quotientMapOfLE h q)) :
    ∃! s : G ⧸ H, Subgroup.quotientMapOfLE h s = r ∧ transport H (U e.original) s = q := by
  refine ⟨transport H (U e.original)⁻¹ q, ⟨?_,?_⟩, ?_⟩
  · rw [project_transport]
    have hh := congrArg (transport K (U e.original)⁻¹) e.target_eq
    simpa [transport_mul,transport] using hh.symm
  · simp [transport_mul,transport]
  · intro s hs
    have hh := congrArg (transport H (U e.original)⁻¹) hs.2
    simpa [transport_mul,transport] using hh

lemma bottom_separates {a : V} (p : Path E a a) (hu : Path.holonomy U p ≠ 1) (q : G ⧸ (⊥ : Subgroup G)) :
    (liftPath E U ⊥ p q).1 ≠ q := by
  rw [lift_endpoint]
  induction q using Quotient.inductionOn' with
  | h g =>
    intro he
    have hh := congrArg (QuotientGroup.quotientEquivSelf G) he
    change (Path.holonomy U p)⁻¹ * g = g at hh
    have hz : (Path.holonomy U p)⁻¹ = 1 := mul_right_cancel (hh.trans (one_mul g).symm)
    exact hu (inv_eq_one.mp hz)
/-- The bottom coordinate is the inverse of the existing regular-cover sheet. -/
lemma bottom_regular_endpoint {a b : V} (p : Path E a b) (g : G) :
    (liftPath E U ⊥ p (QuotientGroup.mk g⁻¹)).1 =
      QuotientGroup.mk ((VoltageCover.liftPath E U p g).1)⁻¹ := by
  rw [lift_endpoint, VoltageCover.lift_endpoint, transport_mk, mul_inv_rev]
local instance : Subsingleton (G ⧸ (⊤ : Subgroup G)) := QuotientGroup.subsingleton_quotient_top
lemma top_sheet_unique (q r : G ⧸ (⊤ : Subgroup G)) : q = r := Subsingleton.elim _ _
@[ext] lemma Edge.ext {H : Subgroup G} {x y : V × (G ⧸ H)} {e f : Edge E U H x y}
    (h : e.original = f.original) : e = f := by
  cases e; cases f; cases h; rfl
noncomputable def topVertexEquiv : V × (G ⧸ (⊤ : Subgroup G)) ≃ V where
  toFun := Prod.fst
  invFun v := (v,QuotientGroup.mk 1)
  left_inv p := Prod.ext rfl (Subsingleton.elim _ _)
  right_inv _ := rfl
noncomputable def topEdgeEquiv (a b : V) (q r : G ⧸ (⊤ : Subgroup G)) :
    Edge E U ⊤ (a,q) (b,r) ≃ E a b where
  toFun e := e.original
  invFun e := ⟨e,Subsingleton.elim _ _⟩
  left_inv _ := Edge.ext E U rfl
  right_inv _ := rfl
noncomputable def vertexFiberEquiv {H K : Subgroup G} (h : H ≤ K) (v : V) (q : G ⧸ K) :
    {x : V × (G ⧸ H) // projectVertex h x = (v,q)} ≃
      {s : G ⧸ H // Subgroup.quotientMapOfLE h s = q} where
  toFun x := ⟨x.val.2,congrArg Prod.snd x.property⟩
  invFun s := ⟨(v,s.val),Prod.ext rfl s.property⟩
  left_inv x := Subtype.ext (Prod.ext (congrArg Prod.fst x.property).symm rfl)
  right_inv _ := Subtype.ext rfl
lemma vertex_degree_two (S : TwoSeries G) (i : Fin S.length) (v : V) (q : G ⧸ S.subgroup i.succ) :
    Nat.card {x : V × (G ⧸ S.subgroup i.castSucc) // projectVertex (S.le_step i) x = (v,q)} = 2 := by
  rw [Nat.card_congr (vertexFiberEquiv (S.le_step i) v q)]
  exact S.two_fibers i q

end GraphCover

lemma TwoSeries.length_pos_of_ne_one (S : TwoSeries G) (g : G) (hg : g ≠ 1) : 0 < S.length := by
  by_contra hn
  have hz : S.length = 0 := by omega
  have hi : Fin.last S.length = 0 := Fin.ext hz
  have ht : S.subgroup 0 = ⊤ := by simpa only [hi] using S.last
  have hbt : (⊥ : Subgroup G) = ⊤ := S.first.symm.trans ht
  apply hg
  apply Subgroup.mem_bot.mp
  rw [hbt]
  trivial

/-- Every Magnus separator has a nonempty index-two coset-cover tower. -/
theorem magnus_series {A : Type*} [DecidableEq A] (w : FreeGroup A) (hw : w ≠ 1) :
    ∃ (n : ℕ) (target : Fin n → A) (S : TwoSeries (TruncatedMagnus.Group n)),
      0 < S.length ∧ TruncatedMagnus.representation target w ≠ 1 := by
  obtain ⟨n,target,hs⟩ := TruncatedMagnus.separates_nonidentity w hw
  obtain ⟨S⟩ := exists_twoSeries (TruncatedMagnus.isTwoGroup n)
  exact ⟨n,target,S,S.length_pos_of_ne_one _ hs,hs⟩

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
open CategoryTheory
attribute [local instance] Classical.propDecidable
universe u v
/-- A rooted spanning arborescence with well-founded parent chains. -/
structure RootedTree (V : Type u) where
  root : V
  parent : V → V
  height : V → ℕ
  lower : ∀ x, x ≠ root → height (parent x) < height x

variable {V : Type u} (T : RootedTree V) {C : Type v} (ends : C → V × V)
/-- One oriented tree edge per nonroot vertex, plus the actual labelled chords.
Formal reverse traversal is supplied by the free groupoid, not a second edge. -/
inductive Edge : V → V → Type (max u v) where
  | branch (x : V) (h : x ≠ T.root) : Edge (T.parent x) x
  | chord (c : C) : Edge (ends c).1 (ends c).2

def Vertex (_T : RootedTree V) (_ends : C → V × V) := V
instance : Quiver (Vertex T ends) := ⟨Edge T ends⟩
abbrev obj (x : V) : Quiver.FreeGroupoid (Vertex T ends) := (Quiver.FreeGroupoid.of (Vertex T ends)).obj x
abbrev edge {x y : V} (e : Edge T ends x y) : obj T ends x ⟶ obj T ends y :=
  (Quiver.FreeGroupoid.of (Vertex T ends)).map e

noncomputable def connector (x : V) : obj T ends T.root ⟶ obj T ends x :=
  if h : x = T.root then eqToHom (congrArg (obj T ends) h.symm)
  else connector (T.parent x) ≫ edge T ends (.branch x h)
termination_by T.height x
decreasing_by exact T.lower x h

@[simp] lemma connector_root : connector T ends T.root = 𝟙 _ := by
  rw [connector, dif_pos rfl]
  rfl
lemma connector_branch (x : V) (h : x ≠ T.root) :
    connector T ends (T.parent x) ≫ edge T ends (.branch x h) = connector T ends x := by
  conv_rhs => rw [connector, dite_eq_right h]

/-- Opposite multiplication compensates for SingleObj's reversed composition. -/
def codePrefunctor : Vertex T ends ⥤q SingleObj ((FreeGroup C)ᵐᵒᵖ) where
  obj _ := SingleObj.star _
  map {x y} e := match e with
    | .branch _ _ => MulOpposite.op 1
    | .chord c => MulOpposite.op (FreeGroup.of c)
noncomputable def wordFunctor : Quiver.FreeGroupoid (Vertex T ends) ⥤ SingleObj ((FreeGroup C)ᵐᵒᵖ) :=
  Quiver.FreeGroupoid.lift (codePrefunctor T ends)
noncomputable def word {x y : Quiver.FreeGroupoid (Vertex T ends)} (f : x ⟶ y) : FreeGroup C :=
  MulOpposite.unop ((wordFunctor T ends).map f)
@[simp] lemma word_id (x : Quiver.FreeGroupoid (Vertex T ends)) : word T ends (𝟙 x) = 1 := by
  simp only [word, CategoryTheory.Functor.map_id]
  rfl
lemma word_comp {x y z : Quiver.FreeGroupoid (Vertex T ends)} (f : x ⟶ y)
    (g : y ⟶ z) : word T ends (f ≫ g) = word T ends f * word T ends g := by
  simp only [word, Functor.map_comp]
  rfl
lemma word_inv {x y : Quiver.FreeGroupoid (Vertex T ends)} (f : x ⟶ y) :
    word T ends (inv f) = (word T ends f)⁻¹ := by
  simp only [word, Functor.map_inv]
  rw [SingleObj.inv_as_inv]
  rfl
lemma word_edge {x y : V} (e : Edge T ends x y) :
    word T ends (edge T ends e) = match e with
      | .branch _ _ => 1
      | .chord c => FreeGroup.of c := by
  have h := congrArg (fun F : Vertex T ends ⥤q SingleObj ((FreeGroup C)ᵐᵒᵖ) => F.map e)
    (Quiver.FreeGroupoid.lift_spec (codePrefunctor T ends))
  cases e <;> exact congrArg MulOpposite.unop h
lemma word_connector (x : V) : word T ends (connector T ends x) = 1 := by
  rw [connector]
  split_ifs with h
  · subst x; simp
  · rw [word_comp, word_edge, word_connector (T.parent x), mul_one]
termination_by T.height x
decreasing_by exact T.lower x h

structure Loop where
  hom : obj T ends T.root ⟶ obj T ends T.root
@[ext] lemma Loop.ext {p q : Loop T ends} (h : p.hom = q.hom) : p = q := by cases p; cases q; cases h; rfl
noncomputable instance : Group (Loop T ends) where
  mul p q := ⟨p.hom ≫ q.hom⟩
  one := ⟨𝟙 _⟩
  inv p := ⟨inv p.hom⟩
  mul_assoc p q r := Loop.ext T ends (Category.assoc _ _ _)
  one_mul p := Loop.ext T ends (Category.id_comp _)
  mul_one p := Loop.ext T ends (Category.comp_id _)
  inv_mul_cancel p := Loop.ext T ends (IsIso.inv_hom_id _)
noncomputable def loopWord : Loop T ends →* FreeGroup C where
  toFun p := word T ends p.hom
  map_one' := word_id T ends _
  map_mul' p q := word_comp T ends _ _
noncomputable def chordLoop (c : C) : Loop T ends :=
  ⟨connector T ends (ends c).1 ≫ edge T ends (.chord c) ≫ inv (connector T ends (ends c).2)⟩
noncomputable def decode : FreeGroup C →* Loop T ends := FreeGroup.lift (chordLoop T ends)
lemma word_chordLoop (c : C) : loopWord T ends (chordLoop T ends c) = FreeGroup.of c := by
  simp [loopWord,chordLoop,word_comp,word_inv,word_connector,word_edge]
lemma word_decode (w : FreeGroup C) : loopWord T ends (decode T ends w) = w := by
  have h : (loopWord T ends).comp (decode T ends) = MonoidHom.id _ := by
    apply FreeGroup.ext_hom
    intro c
    simp [decode, word_chordLoop]
  exact congrArg (fun f : FreeGroup C →* FreeGroup C => f w) h

noncomputable def connectorObj (x : Quiver.FreeGroupoid (Vertex T ends)) :
    obj T ends T.root ⟶ x := connector T ends x.as

lemma branch_loop (v : V) (hv : v ≠ T.root) :
    connector T ends (T.parent v) ≫ edge T ends (.branch v hv) ≫ inv (connector T ends v) = 𝟙 _ := by
  rw [← Category.assoc,connector_branch]
  simp
lemma inverse_branch_loop (v : V) (hv : v ≠ T.root) :
    connector T ends v ≫ inv (edge T ends (.branch v hv)) ≫ inv (connector T ends (T.parent v)) = 𝟙 _ := by
  rw [← connector_branch T ends v hv]
  simp [Category.assoc]

set_option backward.isDefEq.respectTransparency false in
lemma decode_word {x y : Quiver.FreeGroupoid (Vertex T ends)} (f : x ⟶ y) :
    (decode T ends (word T ends f)).hom =
      connectorObj T ends x ≫ f ≫ inv (connectorObj T ends y) := by
  induction f using Quiver.FreeGroupoid.hom_rec with
  | of_map e =>
    cases e using Edge.casesOn with
    | branch v hv =>
      rw [word_edge T ends,map_one]
      exact (branch_loop T ends _ hv).symm
    | chord c =>
      rw [word_edge T ends]
      simp only [decode, FreeGroup.lift_apply_of]
      rfl
  | inv_of_map e =>
    rw [word_inv]
    cases e using Edge.casesOn with
    | branch v hv =>
      rw [word_edge T ends,inv_one,map_one]
      exact (inverse_branch_loop T ends _ hv).symm
    | chord c =>
      rw [word_edge T ends, map_inv]
      simp only [decode, FreeGroup.lift_apply_of]
      change inv (connector T ends (ends c).1 ≫ edge T ends (.chord c) ≫ inv (connector T ends (ends c).2)) = connector T ends (ends c).2 ≫ inv (edge T ends (.chord c)) ≫ inv (connector T ends (ends c).1)
      simp
  | id x =>
    rw [word_id, map_one]
    change 𝟙 _ = connector T ends x ≫ 𝟙 _ ≫ inv (connector T ends x)
    simp
  | comp f g ihf ihg =>
    rw [word_comp, map_mul]
    change (decode T ends (word T ends f)).hom ≫ (decode T ends (word T ends g)).hom = _
    rw [ihf, ihg]
    simp [Category.assoc]

noncomputable def loopEquiv : Loop T ends ≃* FreeGroup C where
  toFun := loopWord T ends
  invFun := decode T ends
  left_inv p := by
    apply Loop.ext T ends
    change (decode T ends (word T ends p.hom)).hom = p.hom
    have h := decode_word T ends p.hom
    change (decode T ends (word T ends p.hom)).hom = connector T ends T.root ≫ p.hom ≫ inv (connector T ends T.root) at h
    simpa [connector_root] using h
  right_inv := word_decode T ends
  map_mul' := (loopWord T ends).map_mul

noncomputable def orientedClass {a b : V} : OrientedEdge (E := Edge T ends) a b → (obj T ends a ⟶ obj T ends b)
  | .forward e => edge T ends e
  | .backward e => inv (edge T ends e)
noncomputable def pathClass {a b : V} : Path (OrientedEdge (E := Edge T ends)) a b → (obj T ends a ⟶ obj T ends b)
  | .refl _ => 𝟙 _
  | .cons e p => orientedClass T ends e ≫ pathClass p
lemma pathClass_append {a b c : V} (p : Path (OrientedEdge (E := Edge T ends)) a b)
    (q : Path (OrientedEdge (E := Edge T ends)) b c) :
    pathClass T ends (p.append q) = pathClass T ends p ≫ pathClass T ends q := by
  induction p with
  | refl _ => simp [Path.append,pathClass]
  | cons e p ih => simp only [Path.append,pathClass,ih,Category.assoc]

noncomputable def generatorVoltage {G : Type*} [Group G] (f : C → G) {a b : V} : Edge T ends a b → G
  | .branch _ _ => 1
  | .chord c => f c
lemma orientedClass_voltage {G : Type*} [Group G] (f : C → G)
    {a b : V} (e : OrientedEdge (E := Edge T ends) a b) :
    orientedWeight (generatorVoltage T ends f) e =
      (FreeGroup.lift f) (word T ends (orientedClass T ends e)) := by
  cases e with
  | forward e => cases e using Edge.casesOn <;>
      simp [orientedWeight,generatorVoltage,orientedClass,word_edge]
  | backward e => cases e using Edge.casesOn <;>
      simp [orientedWeight,generatorVoltage,orientedClass,word_inv,word_edge]
lemma holonomy_word {G : Type*} [Group G] (f : C → G)
    {a b : V} (p : Path (OrientedEdge (E := Edge T ends)) a b) :
    Path.holonomy (orientedWeight (generatorVoltage T ends f)) p =
      (FreeGroup.lift f) (word T ends (pathClass T ends p)) := by
  induction p with
  | refl a => simp [Path.holonomy,pathClass]
  | cons e p ih => simp only [Path.holonomy,pathClass,word_comp,map_mul,← ih,orientedClass_voltage]
lemma word_nonidentity (p : Path (OrientedEdge (E := Edge T ends)) T.root T.root)
    (hp : pathClass T ends p ≠ 𝟙 _) : word T ends (pathClass T ends p) ≠ 1 := by
  intro hw
  have h : (⟨pathClass T ends p⟩ : Loop T ends) = 1 :=
    (loopEquiv T ends).injective (by
      change word T ends (pathClass T ends p) = word T ends (𝟙 (obj T ends T.root))
      rw [word_id]
      exact hw)
  exact hp (congrArg Loop.hom h)

theorem magnus_voltage_separates [DecidableEq C]
    (p : Path (OrientedEdge (E := Edge T ends)) T.root T.root)
    (hp : pathClass T ends p ≠ 𝟙 _) :
    ∃ (n : ℕ) (target : Fin n → C),
      Path.holonomy (orientedWeight (generatorVoltage T ends (TruncatedMagnus.generator target))) p ≠ 1 := by
  obtain ⟨n,target,ht⟩ := TruncatedMagnus.separates_nonidentity _ (word_nonidentity T ends p hp)
  refine ⟨n,target,?_⟩
  rw [holonomy_word]
  exact ht
section OriginalGraph
variable (E : V → V → Type*) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
def SourceVertex (_E : V → V → Type*) := V
instance : Quiver (SourceVertex E) := ⟨E⟩
def toTree : SourceVertex E ⥤q Vertex T ends where
  obj x := x
  map {a b} e := presentation a b e
def fromTree : Vertex T ends ⥤q SourceVertex E where
  obj x := x
  map {a b} e := (presentation a b).symm e
lemma toTree_fromTree : toTree T ends E presentation ⋙q fromTree T ends E presentation = Prefunctor.id _ := by
  apply Prefunctor.ext' (F := toTree T ends E presentation ⋙q fromTree T ends E presentation) (G := Prefunctor.id _) (fun _ => rfl)
  intro a b e
  change (presentation a b).symm (presentation a b e) = e
  exact (presentation a b).symm_apply_apply e
lemma fromTree_toTree : fromTree T ends E presentation ⋙q toTree T ends E presentation = Prefunctor.id _ := by
  apply Prefunctor.ext' (F := fromTree T ends E presentation ⋙q toTree T ends E presentation) (G := Prefunctor.id _) (fun _ => rfl)
  intro a b e
  change presentation a b ((presentation a b).symm e) = e
  exact (presentation a b).apply_symm_apply e
noncomputable def forward := Quiver.freeGroupoidFunctor (toTree T ends E presentation)
noncomputable def backward := Quiver.freeGroupoidFunctor (fromTree T ends E presentation)
lemma forward_backward : forward T ends E presentation ⋙ backward T ends E presentation = Functor.id _ := by
  rw [forward,backward,← Quiver.freeGroupoidFunctor_comp,toTree_fromTree,Quiver.freeGroupoidFunctor_id]
lemma backward_forward : backward T ends E presentation ⋙ forward T ends E presentation = Functor.id _ := by
  rw [forward,backward,← Quiver.freeGroupoidFunctor_comp,fromTree_toTree,Quiver.freeGroupoidFunctor_id]
set_option backward.isDefEq.respectTransparency false in
lemma forward_injective {a b : Quiver.FreeGroupoid (SourceVertex E)} :
    Function.Injective (fun f : a ⟶ b => (forward T ends E presentation).map f) := by
  intro f g he
  have hh := congrArg (fun q => (backward T ends E presentation).map q) he
  have hf := Functor.congr_hom (forward_backward T ends E presentation) f
  have hg := Functor.congr_hom (forward_backward T ends E presentation) g
  simpa using hf.symm.trans (hh.trans hg)

lemma forward_edge {a b : V} (e : E a b) :
    (forward T ends E presentation).map ((Quiver.FreeGroupoid.of (SourceVertex E)).map e) =
      edge T ends (presentation a b e) := by
  have h := Prefunctor.congr_hom
    (Quiver.FreeGroupoid.lift_spec (toTree T ends E presentation ⋙q Quiver.FreeGroupoid.of (Vertex T ends))) e
  change (forward T ends E presentation).map ((Quiver.FreeGroupoid.of (SourceVertex E)).map e) = edge T ends (presentation a b e) at h
  exact h

noncomputable def mapOriented {a b : V} : OrientedEdge (E := E) a b → OrientedEdge (E := Edge T ends) a b
  | .forward e => .forward (presentation _ _ e)
  | .backward e => .backward (presentation _ _ e)
noncomputable def mapPath {a b : V} : Path (OrientedEdge (E := E)) a b → Path (OrientedEdge (E := Edge T ends)) a b
  | .refl _ => .refl _
  | .cons e p => .cons (mapOriented T ends E presentation e) (mapPath p)
noncomputable def unmapOriented {a b : V} : OrientedEdge (E := Edge T ends) a b → OrientedEdge (E := E) a b
  | .forward e => .forward ((presentation _ _).symm e)
  | .backward e => .backward ((presentation _ _).symm e)
noncomputable def unmapPath {a b : V} : Path (OrientedEdge (E := Edge T ends)) a b → Path (OrientedEdge (E := E)) a b
  | .refl _ => .refl _
  | .cons e p => .cons (unmapOriented T ends E presentation e) (unmapPath p)
lemma unmap_mapPath {a b : V} (p : Path (OrientedEdge (E := E)) a b) :
    unmapPath T ends E presentation (mapPath T ends E presentation p) = p := by
  induction p with
  | refl _ => rfl
  | cons e p ih =>
    change Path.cons (unmapOriented T ends E presentation (mapOriented T ends E presentation e)) _ = _
    have he : unmapOriented T ends E presentation (mapOriented T ends E presentation e) = e := by
      cases e <;> simp [unmapOriented,mapOriented]
    rw [he,ih]
noncomputable def originalOrientedClass {a b : V} : OrientedEdge (E := E) a b →
    ((Quiver.FreeGroupoid.of (SourceVertex E)).obj a ⟶ (Quiver.FreeGroupoid.of (SourceVertex E)).obj b)
  | .forward e => (Quiver.FreeGroupoid.of (SourceVertex E)).map e
  | .backward e => inv ((Quiver.FreeGroupoid.of (SourceVertex E)).map e)
noncomputable def originalPathClass {a b : V} : Path (OrientedEdge (E := E)) a b →
    ((Quiver.FreeGroupoid.of (SourceVertex E)).obj a ⟶ (Quiver.FreeGroupoid.of (SourceVertex E)).obj b)
  | .refl _ => 𝟙 _
  | .cons e p => originalOrientedClass E e ≫ originalPathClass p
lemma forward_pathClass {a b : V} (p : Path (OrientedEdge (E := E)) a b) :
    (forward T ends E presentation).map (originalPathClass E p) = pathClass T ends (mapPath T ends E presentation p) := by
  induction p with
  | refl _ => simp [originalPathClass,mapPath,pathClass] <;> rfl
  | cons e p ih =>
    simp only [originalPathClass,mapPath,pathClass,Functor.map_comp,ih]
    congr 1
    cases e <;> simp [originalOrientedClass,mapOriented,orientedClass,Functor.map_inv,forward_edge] <;> rfl
set_option backward.isDefEq.respectTransparency false in
lemma forward_backward_hom {a b : Quiver.FreeGroupoid (SourceVertex E)} (f : a ⟶ b) :
    (backward T ends E presentation).map ((forward T ends E presentation).map f) = f := by
  have h := Functor.congr_hom (forward_backward T ends E presentation) f
  simpa using h
set_option backward.isDefEq.respectTransparency false in
lemma backward_forward_hom {a b : Quiver.FreeGroupoid (Vertex T ends)} (f : a ⟶ b) :
    (forward T ends E presentation).map ((backward T ends E presentation).map f) = f := by
  have h := Functor.congr_hom (backward_forward T ends E presentation) f
  simpa using h

structure OriginalLoop (root : V) where
  hom : (Quiver.FreeGroupoid.of (SourceVertex E)).obj root ⟶ (Quiver.FreeGroupoid.of (SourceVertex E)).obj root
@[ext] lemma OriginalLoop.ext (root : V) {p q : OriginalLoop E root} (h : p.hom = q.hom) : p = q := by
  cases p; cases q; cases h; rfl
noncomputable instance (root : V) : Group (OriginalLoop E root) where
  mul p q := ⟨p.hom ≫ q.hom⟩
  one := ⟨𝟙 _⟩
  inv p := ⟨inv p.hom⟩
  mul_assoc p q r := OriginalLoop.ext E root (Category.assoc _ _ _)
  one_mul p := OriginalLoop.ext E root (Category.id_comp _)
  mul_one p := OriginalLoop.ext E root (Category.comp_id _)
  inv_mul_cancel p := OriginalLoop.ext E root (IsIso.inv_hom_id _)
noncomputable def originalToCanonical : OriginalLoop E T.root ≃* Loop T ends where
  toFun p := ⟨(forward T ends E presentation).map p.hom⟩
  invFun p := ⟨(backward T ends E presentation).map p.hom⟩
  left_inv p := OriginalLoop.ext E T.root (forward_backward_hom T ends E presentation p.hom)
  right_inv p := Loop.ext T ends (backward_forward_hom T ends E presentation p.hom)
  map_mul' p q := Loop.ext T ends ((forward T ends E presentation).map_comp p.hom q.hom)
/-- The actual source graph's combinatorial based fundamental group is free
on the chords of its supplied rooted spanning-tree presentation. -/
noncomputable def originalLoopEquiv : OriginalLoop E T.root ≃* FreeGroup C :=
  (originalToCanonical T ends E presentation).trans (loopEquiv T ends)

set_option backward.isDefEq.respectTransparency false in
lemma original_path_nonidentity (p : Path (OrientedEdge (E := E)) T.root T.root)
    (hp : originalPathClass E p ≠ 𝟙 _) : pathClass T ends (mapPath T ends E presentation p) ≠ 𝟙 _ := by
  intro he
  apply hp
  apply forward_injective T ends E presentation
  change (forward T ends E presentation).map (originalPathClass E p) = (forward T ends E presentation).map (𝟙 _)
  rw [forward_pathClass T ends E presentation,CategoryTheory.Functor.map_id]
  exact he
noncomputable def originalVoltage {G : Type*} [Group G] (f : C → G) {a b : V} (e : E a b) : G :=
  generatorVoltage T ends f (presentation a b e)
lemma original_holonomy {G : Type*} [Group G] (f : C → G) {a b : V}
    (p : Path (OrientedEdge (E := E)) a b) :
    Path.holonomy (orientedWeight (originalVoltage T ends E presentation f)) p =
      Path.holonomy (orientedWeight (generatorVoltage T ends f)) (mapPath T ends E presentation p) := by
  induction p with
  | refl _ => rfl
  | cons e p ih =>
    simp only [Path.holonomy,mapPath,ih]
    congr 1
    cases e <;> rfl
lemma map_unmapPath {a b : V} (p : Path (OrientedEdge (E := Edge T ends)) a b) :
    mapPath T ends E presentation (unmapPath T ends E presentation p) = p := by
  induction p with
  | refl _ => rfl
  | cons e p ih =>
    change Path.cons (mapOriented T ends E presentation (unmapOriented T ends E presentation e)) _ = _
    have he : mapOriented T ends E presentation (unmapOriented T ends E presentation e) = e := by
      cases e <;> simp [unmapOriented,mapOriented]
    rw [he,ih]
noncomputable def magnusVoltage [DecidableEq C] {n : ℕ} (target : Fin n → C)
    {a b : V} (e : OrientedEdge (E := E) a b) : TruncatedMagnus.Group n :=
  orientedWeight (originalVoltage T ends E presentation (TruncatedMagnus.generator target)) e

theorem original_magnus_separation [DecidableEq C]
    (p : Path (OrientedEdge (E := E)) T.root T.root)
    (hp : originalPathClass E p ≠ 𝟙 _) :
    ∃ (n : ℕ) (target : Fin n → C), Path.holonomy (magnusVoltage T ends E presentation target) p ≠ 1 := by
  obtain ⟨n,target,hsep⟩ := magnus_voltage_separates T ends (mapPath T ends E presentation p)
    (original_path_nonidentity T ends E presentation p hp)
  refine ⟨n,target,?_⟩
  change Path.holonomy (orientedWeight (originalVoltage T ends E presentation (TruncatedMagnus.generator target))) p ≠ 1
  rw [original_holonomy]
  exact hsep
end OriginalGraph
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
open CategoryTheory
universe u v w
variable {V : Type u} (T : RootedTree V) {C : Type v} (ends : C → V × V)
variable (E : V → V → Type w) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
/-- A nontrivial ACTUAL source loop has a separating finite-sheet cover which
is the bottom of a nonempty tower of graph covers of degree two. -/
theorem separating_covering_tower [DecidableEq C]
    (p : Path (OrientedEdge (E := E)) T.root T.root)
    (hp : originalPathClass E p ≠ 𝟙 _) :
    ∃ (n : ℕ) (target : Fin n → C) (S : CoverTower.TwoSeries (TruncatedMagnus.Group n)),
      0 < S.length ∧
      (∀ (i : Fin S.length) (v : V) (q : TruncatedMagnus.Group n ⧸ S.subgroup i.succ),
        Nat.card {x : V × (TruncatedMagnus.Group n ⧸ S.subgroup i.castSucc) //
          CoverTower.projectVertex (S.le_step i) x = (v,q)} = 2) ∧
      ∀ q : TruncatedMagnus.Group n ⧸ S.subgroup 0,
        (CoverTower.liftPath (OrientedEdge (E := E)) (magnusVoltage T ends E presentation target)
          (S.subgroup 0) p q).1 ≠ q ∧
        CoverTower.erasePath (OrientedEdge (E := E)) (magnusVoltage T ends E presentation target)
          (S.subgroup 0)
          (CoverTower.liftPath (OrientedEdge (E := E)) (magnusVoltage T ends E presentation target)
            (S.subgroup 0) p q).2 = p := by
  obtain ⟨n,target,hsep⟩ := original_magnus_separation T ends E presentation p hp
  obtain ⟨S⟩ := CoverTower.exists_twoSeries (TruncatedMagnus.isTwoGroup n)
  refine ⟨n,target,S,S.length_pos_of_ne_one _ hsep,?_,?_⟩
  · exact fun i v q => CoverTower.vertex_degree_two S i v q
  have hs : ∀ q : TruncatedMagnus.Group n ⧸ S.subgroup 0,
      (CoverTower.liftPath (OrientedEdge (E := E)) (magnusVoltage T ends E presentation target)
        (S.subgroup 0) p q).1 ≠ q := by
    rw [S.first]
    exact CoverTower.bottom_separates _ _ p hsep
  intro q
  exact ⟨hs q, CoverTower.erase_liftPath _ _ _ p q⟩
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree

/-!
# Inverse coherence and return to covers of the original edge family

Consumer: the signed traversal tower above and issue #1784. This extension
retains the existing vertex type, original dependent edge witnesses, subgroup
series and inverse-left coset transport. Its new bridge is NOT a replacement
free-group presentation or an extra assumption that a cover exists.

For an original voltage U on E, the actual level-H graph has edges
`CoverTower.Edge E U H`. Formal traversal of those edges is `OrientedEdge` of
THAT graph. `signedEdgeEquiv` identifies it, endpoint by endpoint, with the
previous `Edge (OrientedEdge E) (orientedWeight U) H`. A forward signed lift
keeps its witness; a backward signed lift reverses the SAME original lifted
edge. The equivalence is two-sided, so neither parallel edges nor polarity
are lost or independently duplicated. `signedOpposite` inverts the transport
and reverses the original witness; it is involutive and commutes with subgroup
projection. `signEdge_opposite` identifies it with the actual formal opposite
of an original-cover edge. No global normality of any subgroup is required.

`outgoingEdgeEquiv` and `incomingEdgeEquiv` give the local covering property
above each original endpoint and edge witness. Their intermediate projection
equivalences are proved to be the ACTUAL `projectEdge`, with the old vertex
projection. Hence every subgroup step is a cover of the original E-cover
graphs; the already proved vertex-fiber count is two. At the top, the existing
`topVertexEquiv` and `topEdgeEquiv E U` recover E itself. Signing commutes with
projection on edges and on whole paths, and `signedPathEquiv` has both inverse
laws. `erase_liftOrientedPath` recovers every original signed occurrence in
chronological order, not merely its quotient class or holonomy.

`original_separating_covering_tower` transfers the existing Magnus separator
to this original-edge tower: its bottom path now lies in `OrientedEdge` of an
actual `Edge E U H` graph. Its endpoint agrees definitionally with the earlier
signed lift, so the nonidentity observation and finite degree count are
unchanged. A nonempty cancellable history is still not a nonidentity class;
trivial groups still admit only the nonseparating zero-length possibility.

Exact hypotheses remain a supplied rooted parent/rank tree, endpointwise edge
bijections to its branches plus chords, DecidableEq on chords for Magnus, and
a based path with nonidentity original free-groupoid class. No finiteness of
vertices, original edges or chords is added. This is a combinatorial graph
cover result, including a proved reversal involution; it does not identify a
geometric realization or topological fundamental group. Tree extraction from
bare connectedness and connectedness of intermediate covers remain separate
adapters. A finite-sheet graph need not have finitely many vertices. Independent
review of THIS extension and broad all-import fresh replay are NOT_RUN unless
separately recorded at its exact source pin in issue #1784. Historical review
and replay of ac1bd232 retain their original source scope. No novelty or
canonical mathematical acceptance is asserted.
-/
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower
variable {G : Type*} [Group G] [Finite G]
variable {V : Type*} (E : V → V → Type*) (U : ∀ {a b}, E a b → G)

omit [Finite G] in
@[simp] lemma transport_inverse (H : Subgroup G) (u : G) (q : G ⧸ H) :
    transport H u⁻¹ (transport H u q) = q := by
  simp [transport]
lemma transport_eq_iff (H : Subgroup G) (u : G) (q r : G ⧸ H) :
    transport H u q = r ↔ transport H u⁻¹ r = q := by
  constructor
  · intro h
    rw [← h,transport_inverse]
  · intro h
    rw [← h]
    simpa using transport_inverse H u⁻¹ r

/-- Reverse a signed lift using the same original edge witness. -/
def signedOpposite (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    Edge (OrientedEdge (E := E)) (orientedWeight U) H y x :=
  ⟨opposite e.original, by
    rw [orientedWeight_opposite]
    exact (transport_eq_iff H _ _ _).mp e.target_eq⟩
@[simp] lemma signedOpposite_original (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    (signedOpposite E U H e).original = opposite e.original := rfl
@[simp] lemma signedOpposite_involutive (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    signedOpposite E U H (signedOpposite E U H e) = e := by
  apply Edge.ext
  exact opposite_opposite e.original
@[simp] lemma project_signedOpposite {H K : Subgroup G} (h : H ≤ K)
    {x y : V × (G ⧸ H)} (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    projectEdge _ _ h (signedOpposite E U H e) =
      signedOpposite E U K (projectEdge _ _ h e) := by
  apply Edge.ext
  rfl

/-- Signing a cover of the ORIGINAL edge family yields its signed-voltage cover. -/
def signEdge (H : Subgroup G) {x y : V × (G ⧸ H)} :
    OrientedEdge (E := Edge E U H) x y →
      Edge (OrientedEdge (E := E)) (orientedWeight U) H x y
  | .forward e => ⟨.forward e.original,e.target_eq⟩
  | .backward e => ⟨.backward e.original, (transport_eq_iff H _ _ _).mp e.target_eq⟩
def unsignEdge (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    OrientedEdge (E := Edge E U H) x y :=
  match e.original, e.target_eq with
  | .forward f, h => .forward ⟨f,h⟩
  | .backward f, h => .backward ⟨f, by
      have hh := (transport_eq_iff H (U f)⁻¹ _ _).mp h
      simpa using hh⟩
@[simp] lemma unsign_signEdge (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : OrientedEdge (E := Edge E U H) x y) :
    unsignEdge E U H (signEdge E U H e) = e := by
  cases e <;> rfl
@[simp] lemma sign_unsignEdge (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    signEdge E U H (unsignEdge E U H e) = e := by
  apply Edge.ext
  cases e with
  | mk e h => cases e <;> rfl

def signedEdgeEquiv (H : Subgroup G) (x y : V × (G ⧸ H)) :
    OrientedEdge (E := Edge E U H) x y ≃
      Edge (OrientedEdge (E := E)) (orientedWeight U) H x y where
  toFun := signEdge E U H
  invFun := unsignEdge E U H
  left_inv := unsign_signEdge E U H
  right_inv := sign_unsignEdge E U H

@[simp] lemma signEdge_opposite (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : OrientedEdge (E := Edge E U H) x y) :
    signEdge E U H (opposite e) = signedOpposite E U H (signEdge E U H e) := by
  apply Edge.ext
  cases e <;> rfl

def projectOrientedEdge {H K : Subgroup G} (h : H ≤ K)
    {x y : V × (G ⧸ H)} : OrientedEdge (E := Edge E U H) x y →
      OrientedEdge (E := Edge E U K) (projectVertex h x) (projectVertex h y)
  | .forward e => .forward (projectEdge E U h e)
  | .backward e => .backward (projectEdge E U h e)
@[simp] lemma projectOrientedEdge_opposite {H K : Subgroup G} (h : H ≤ K)
    {x y : V × (G ⧸ H)} (e : OrientedEdge (E := Edge E U H) x y) :
    projectOrientedEdge E U h (opposite e) = opposite (projectOrientedEdge E U h e) := by
  cases e <;> rfl
@[simp] lemma signEdge_project {H K : Subgroup G} (h : H ≤ K)
    {x y : V × (G ⧸ H)} (e : OrientedEdge (E := Edge E U H) x y) :
    signEdge E U K (projectOrientedEdge E U h e) =
      projectEdge _ _ h (signEdge E U H e) := by
  apply Edge.ext
  cases e <;> rfl

def unsignPath (H : Subgroup G) {x y : V × (G ⧸ H)} :
    Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y →
      Path (OrientedEdge (E := Edge E U H)) x y
  | .refl _ => .refl _
  | .cons e p => .cons (unsignEdge E U H e) (unsignPath H p)
def signPath (H : Subgroup G) {x y : V × (G ⧸ H)} :
    Path (OrientedEdge (E := Edge E U H)) x y →
      Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y
  | .refl _ => .refl _
  | .cons e p => .cons (signEdge E U H e) (signPath H p)
@[simp] lemma sign_unsignPath (H : Subgroup G) {x y : V × (G ⧸ H)}
    (p : Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y) :
    signPath E U H (unsignPath E U H p) = p := by
  induction p with
  | refl _ => rfl
  | cons e p ih => simp [unsignPath,signPath,ih]
@[simp] lemma unsign_signPath (H : Subgroup G) {x y : V × (G ⧸ H)}
    (p : Path (OrientedEdge (E := Edge E U H)) x y) :
    unsignPath E U H (signPath E U H p) = p := by
  induction p with
  | refl _ => rfl
  | cons e p ih => simp [unsignPath,signPath,ih]

def eraseOrientedEdge (H : Subgroup G) {x y : V × (G ⧸ H)} :
    OrientedEdge (E := Edge E U H) x y → OrientedEdge (E := E) x.1 y.1
  | .forward e => .forward e.original
  | .backward e => .backward e.original
@[simp] lemma erase_unsignEdge (H : Subgroup G) {x y : V × (G ⧸ H)}
    (e : Edge (OrientedEdge (E := E)) (orientedWeight U) H x y) :
    eraseOrientedEdge E U H (unsignEdge E U H e) = e.original := by
  cases e with
  | mk e h => cases e <;> rfl
def eraseOrientedPath (H : Subgroup G) {x y : V × (G ⧸ H)} :
    Path (OrientedEdge (E := Edge E U H)) x y → Path (OrientedEdge (E := E)) x.1 y.1
  | .refl _ => .refl _
  | .cons e p => .cons (eraseOrientedEdge E U H e) (eraseOrientedPath H p)
lemma erase_unsignPath (H : Subgroup G) {x y : V × (G ⧸ H)}
    (p : Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y) :
    eraseOrientedPath E U H (unsignPath E U H p) = erasePath _ _ H p := by
  induction p with
  | refl _ => rfl
  | cons e p ih => simp [eraseOrientedPath,unsignPath,erasePath,ih]

/-- A signed path lifted as actual forward/backward traversals of ORIGINAL cover edges. -/
noncomputable def liftOrientedPath (H : Subgroup G) {a b : V}
    (p : Path (OrientedEdge (E := E)) a b) (q : G ⧸ H) :
    Σ r : G ⧸ H, Path (OrientedEdge (E := Edge E U H)) (a,q) (b,r) :=
  let l := liftPath (OrientedEdge (E := E)) (orientedWeight U) H p q
  ⟨l.1,unsignPath E U H l.2⟩
lemma liftOriented_endpoint (H : Subgroup G) {a b : V}
    (p : Path (OrientedEdge (E := E)) a b) (q : G ⧸ H) :
    (liftOrientedPath E U H p q).1 = transport H (Path.holonomy (orientedWeight U) p) q :=
  lift_endpoint _ _ H p q
lemma erase_liftOrientedPath (H : Subgroup G) {a b : V}
    (p : Path (OrientedEdge (E := E)) a b) (q : G ⧸ H) :
    eraseOrientedPath E U H (liftOrientedPath E U H p q).2 = p := by
  dsimp only [liftOrientedPath]
  rw [erase_unsignPath,erase_liftPath]
lemma sign_liftOrientedPath (H : Subgroup G) {a b : V}
    (p : Path (OrientedEdge (E := E)) a b) (q : G ⧸ H) :
    signPath E U H (liftOrientedPath E U H p q).2 =
      (liftPath (OrientedEdge (E := E)) (orientedWeight U) H p q).2 :=
  sign_unsignPath E U H _
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower
variable {G : Type*} [Group G] [Finite G]
variable {V : Type*} (E : V → V → Type*) (U : ∀ {a b}, E a b → G)
def projectOrientedPath {H K : Subgroup G} (h : H ≤ K) {x y : V × (G ⧸ H)} :
    Path (OrientedEdge (E := Edge E U H)) x y →
      Path (OrientedEdge (E := Edge E U K)) (projectVertex h x) (projectVertex h y)
  | .refl x => .refl (projectVertex h x)
  | .cons e p => .cons (projectOrientedEdge E U h e) (projectOrientedPath h p)
def projectSignedPath {H K : Subgroup G} (h : H ≤ K) {x y : V × (G ⧸ H)} :
    Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y →
      Path (Edge (OrientedEdge (E := E)) (orientedWeight U) K) (projectVertex h x) (projectVertex h y)
  | .refl x => .refl (projectVertex h x)
  | .cons e p => .cons (projectEdge _ _ h e) (projectSignedPath h p)
lemma signPath_project {H K : Subgroup G} (h : H ≤ K) {x y : V × (G ⧸ H)}
    (p : Path (OrientedEdge (E := Edge E U H)) x y) :
    signPath E U K (projectOrientedPath E U h p) = projectSignedPath E U h (signPath E U H p) := by
  induction p with
  | refl _ => rfl
  | cons e p ih => simp [signPath,projectOrientedPath,projectSignedPath,ih]
lemma unsignPath_project {H K : Subgroup G} (h : H ≤ K) {x y : V × (G ⧸ H)}
    (p : Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y) :
    unsignPath E U K (projectSignedPath E U h p) = projectOrientedPath E U h (unsignPath E U H p) := by
  apply (show Function.Injective (signPath E U K (x := projectVertex h x) (y := projectVertex h y)) from
    fun p q hpq => by simpa using congrArg (unsignPath E U K) hpq)
  simp [signPath_project]
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower
variable {G : Type*} [Group G] [Finite G]
variable {V : Type*} (E : V → V → Type*) (U : ∀ {a b}, E a b → G)
/-- The outgoing edges above each original endpoint b are exactly the original
edges a→b, not an extra independently labelled signed family. -/
def outgoingEdgeEquiv (H : Subgroup G) (a b : V) (q : G ⧸ H) :
    (Σ r : G ⧸ H, Edge E U H (a,q) (b,r)) ≃ E a b where
  toFun e := e.2.original
  invFun e := ⟨transport H (U e) q,liftEdge E U H e q⟩
  left_inv e := by
    rcases e with ⟨r,⟨e,h⟩⟩
    change E a b at e
    change transport H (U e) q = r at h
    subst r
    rfl
  right_inv _ := rfl
/-- Incoming edges likewise have a unique starting sheet for each original witness. -/
def incomingEdgeEquiv (H : Subgroup G) (a b : V) (q : G ⧸ H) :
    (Σ r : G ⧸ H, Edge E U H (a,r) (b,q)) ≃ E a b where
  toFun e := e.2.original
  invFun e := ⟨transport H (U e)⁻¹ q,⟨e,by simpa using transport_inverse H (U e)⁻¹ q⟩⟩
  left_inv e := by
    rcases e with ⟨r,⟨e,h⟩⟩
    change E a b at e
    have hr := (transport_eq_iff H (U e) r q).mp h
    change transport H (U e)⁻¹ q = r at hr
    subst r
    rfl
  right_inv _ := rfl

/-- The intermediate covering map is bijective on outgoing edge fibers. -/
def outgoingProjectionEquiv {H K : Subgroup G} (h : H ≤ K) (a b : V) (q : G ⧸ H) :
    (Σ r : G ⧸ H, Edge E U H (a,q) (b,r)) ≃
      (Σ r : G ⧸ K, Edge E U K (a,Subgroup.quotientMapOfLE h q) (b,r)) :=
  (outgoingEdgeEquiv E U H a b q).trans
    (outgoingEdgeEquiv E U K a b (Subgroup.quotientMapOfLE h q)).symm
lemma outgoingProjectionEquiv_apply {H K : Subgroup G} (h : H ≤ K) (a b : V)
    (q : G ⧸ H) (e : Σ r : G ⧸ H, Edge E U H (a,q) (b,r)) :
    outgoingProjectionEquiv E U h a b q e =
      ⟨Subgroup.quotientMapOfLE h e.1,projectEdge E U h e.2⟩ := by
  apply (outgoingEdgeEquiv E U K a b (Subgroup.quotientMapOfLE h q)).injective
  simp only [outgoingProjectionEquiv,Equiv.trans_apply,Equiv.apply_symm_apply]
  rfl
def incomingProjectionEquiv {H K : Subgroup G} (h : H ≤ K) (a b : V) (q : G ⧸ H) :
    (Σ r : G ⧸ H, Edge E U H (a,r) (b,q)) ≃
      (Σ r : G ⧸ K, Edge E U K (a,r) (b,Subgroup.quotientMapOfLE h q)) :=
  (incomingEdgeEquiv E U H a b q).trans
    (incomingEdgeEquiv E U K a b (Subgroup.quotientMapOfLE h q)).symm
lemma incomingProjectionEquiv_apply {H K : Subgroup G} (h : H ≤ K) (a b : V)
    (q : G ⧸ H) (e : Σ r : G ⧸ H, Edge E U H (a,r) (b,q)) :
    incomingProjectionEquiv E U h a b q e =
      ⟨Subgroup.quotientMapOfLE h e.1,projectEdge E U h e.2⟩ := by
  apply (incomingEdgeEquiv E U K a b (Subgroup.quotientMapOfLE h q)).injective
  simp only [incomingProjectionEquiv,Equiv.trans_apply,Equiv.apply_symm_apply]
  rfl

def signedPathEquiv (H : Subgroup G) (x y : V × (G ⧸ H)) :
    Path (OrientedEdge (E := Edge E U H)) x y ≃
      Path (Edge (OrientedEdge (E := E)) (orientedWeight U) H) x y where
  toFun := signPath E U H
  invFun := unsignPath E U H
  left_inv := unsign_signPath E U H
  right_inv := sign_unsignPath E U H
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.CoverTower

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
open CategoryTheory
universe u v w
variable {V : Type u} (T : RootedTree V) {C : Type v} (ends : C → V × V)
variable (E : V → V → Type w) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
/-- The separating bottom path traverses actual lifted ORIGINAL edges, and every
stage is an original-edge cover with two-element vertex fibers. -/
theorem original_separating_covering_tower [DecidableEq C]
    (p : Path (OrientedEdge (E := E)) T.root T.root)
    (hp : originalPathClass E p ≠ 𝟙 _) :
    ∃ (n : ℕ) (target : Fin n → C) (S : CoverTower.TwoSeries (TruncatedMagnus.Group n)),
      0 < S.length ∧
      (∀ (i : Fin S.length) (v : V) (q : TruncatedMagnus.Group n ⧸ S.subgroup i.succ),
        Nat.card {x : V × (TruncatedMagnus.Group n ⧸ S.subgroup i.castSucc) //
          CoverTower.projectVertex (S.le_step i) x = (v,q)} = 2) ∧
      ∀ q : TruncatedMagnus.Group n ⧸ S.subgroup 0,
        (CoverTower.liftOrientedPath E
          (originalVoltage T ends E presentation (TruncatedMagnus.generator target))
          (S.subgroup 0) p q).1 ≠ q ∧
        CoverTower.eraseOrientedPath E
          (originalVoltage T ends E presentation (TruncatedMagnus.generator target))
          (S.subgroup 0)
          (CoverTower.liftOrientedPath E
            (originalVoltage T ends E presentation (TruncatedMagnus.generator target))
            (S.subgroup 0) p q).2 = p := by
  obtain ⟨n,target,S,hpos,hdegree,hsep⟩ := separating_covering_tower T ends E presentation p hp
  refine ⟨n,target,S,hpos,hdegree,?_⟩
  intro q
  exact ⟨(hsep q).1,CoverTower.erase_liftOrientedPath _ _ _ p q⟩
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree

/-!
# Generated-image connected covers and an actual geometric comparison map

Source consumer and verification frontier: issue #1784. The connected-cover
refinement is proved below; the FULL geometric fundamental-group equivalence
is NOT claimed. No desired comparison law, fullness, faithfulness, homotopy
lifting or topological-cover conclusion is installed as a hypothesis or axiom.

For any chord voltage f, its actual `FreeGroup.lift f` image is used as the
new group. `ConnectedImage.lift_surjective` proves generation of that group;
this is not an assumption about the whole ambient Magnus matrix group. A
rank-recursive raw tree path has identity voltage, and a tree/chord/reverse-tree
loop has voltage f(c). Finite signed words therefore produce every image-group
element as a source based holonomy. To reach a coset gH over any vertex, use a
loop of voltage g inverse followed by its tree connector. Inverse-left
transport sends [1] to [g]. Reversing one root path and appending another
connects ANY two actual cover vertices. Thus `cover_connected` proves signed
path connectedness of the original-edge graph at EVERY subgroup level.

Subgroups of the finite Magnus 2-group remain finite 2-groups. Inclusion of the
generated image preserves the actual original voltages and every holonomy,
so the separator remains nonidentity. `connected_separating_covering_tower`
has the SAME tree-presentation, chord equality and nonidentity-class hypotheses
as the earlier source theorem, with no finite-vertex/edge/alphabet premise and
no ambient-generation premise. It returns a positive-length index-two tower,
all levels connected and exact path erasure. `imageRegularVertex/Edge` embed
the image regular cover into the old ambient regular graph, and the lifted
endpoint comparison retains the original source observation.

`Geometric.Realization E` is a literal quotient of discrete vertices and the
disjoint family of labelled closed unit intervals, gluing each interval's
endpoints to its actual source and target. It has the quotient topology, not
a renamed free group or a discrete replacement space. `edgePath` is continuous.
The universal property of the ACTUAL free groupoid gives `comparison` into
Mathlib's topological fundamental groupoid. Its based-loop homomorphism lands
in the multiplicative opposite of Mathlib's fundamental group, because our
source multiplication is chronological and Mathlib End multiplication reverses
composition. `originalLoopMap_path` identifies its value with the genuine
relative-endpoint homotopy class of the realized original history. Formal
backtracking is proved homotopic to a constant path. `vertexRetraction` is only
a SET-THEORETIC left inverse used for vertex injectivity, not a continuous
retraction or deformation contraction.

Every combinatorially connected graph's realization is path connected: a
realized source path reaches each vertex, and a linear subinterval reaches
each edge point. Thus every generated-image cover level has a path-connected
realization. Graph projections realize to actual continuous, parameter-preserving
maps, natural on entire signed paths, with the same original edge witnesses.
No preexisting antiparallel original arcs are silently identified.

REMAINING FORMAL GAPS: the comparison functor is not proved full or faithful;
there is no proved inverse taking arbitrary continuous paths/homotopies back
to edge histories. In particular, no pi_1 isomorphism, cellular approximation
or null-homotopy reflection theorem is asserted. Also `realizedProjection`
is not proved to satisfy Mathlib's topological IsCoveringMap predicate: local
evenly covered neighborhoods still need construction. Path connectedness and
a combinatorial local edge bijection alone do not discharge that obligation.
Tree-presentation extraction from bare connectedness is unchanged. Independent
review and broad all-import fresh replay of this extension are NOT_RUN unless
recorded separately at its exact source pin. Historical evidence is preserved.
-/
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage
universe u v
variable {V : Type u} {E : V → V → Type v}
def reversePath {a b : V} : Path (OrientedEdge (E := E)) a b → Path (OrientedEdge (E := E)) b a
  | .refl a => .refl a
  | .cons e p => (reversePath p).append (.cons (opposite e) (.refl _))
lemma holonomy_reverse {G : Type*} [Group G] (U : ∀ {a b}, E a b → G)
    {a b : V} (p : Path (OrientedEdge (E := E)) a b) :
    Path.holonomy (orientedWeight U) (reversePath p) = (Path.holonomy (orientedWeight U) p)⁻¹ := by
  induction p with
  | refl a => simp [reversePath,Path.holonomy]
  | cons e p ih => simp [reversePath,Path.holonomy_append,Path.holonomy,ih,mul_inv_rev]
def SignedConnected (E : V → V → Type v) : Prop :=
  ∀ a b : V, Nonempty (Path (OrientedEdge (E := E)) a b)

namespace SpanningTree
attribute [local instance] Classical.propDecidable
variable (T : RootedTree V) {C : Type v} (ends : C → V × V)
noncomputable def treePath (x : V) : Path (OrientedEdge (E := Edge T ends)) T.root x :=
  if h : x = T.root then by subst x; exact Path.refl T.root
  else (treePath (T.parent x)).append (.cons (.forward (.branch x h)) (.refl x))
termination_by T.height x
decreasing_by exact T.lower x h
lemma treePath_holonomy {G : Type*} [Group G] (f : C → G) (x : V) :
    Path.holonomy (orientedWeight (generatorVoltage T ends f)) (treePath T ends x) = 1 := by
  rw [treePath]
  split_ifs with h
  · subst x; rfl
  · rw [Path.holonomy_append,treePath_holonomy f (T.parent x)]
    simp [Path.holonomy,orientedWeight,generatorVoltage]
termination_by T.height x
decreasing_by exact T.lower x h
noncomputable def chordPath (c : C) : Path (OrientedEdge (E := Edge T ends)) T.root T.root :=
  (treePath T ends (ends c).1).append
    (.cons (.forward (.chord c)) (reversePath (treePath T ends (ends c).2)))
lemma chordPath_holonomy {G : Type*} [Group G] (f : C → G) (c : C) :
    Path.holonomy (orientedWeight (generatorVoltage T ends f)) (chordPath T ends c) = f c := by
  simp [chordPath,Path.holonomy_append,Path.holonomy,treePath_holonomy,holonomy_reverse,
    orientedWeight,generatorVoltage]
noncomputable def wordPath : List (C × Bool) → Path (OrientedEdge (E := Edge T ends)) T.root T.root
  | [] => .refl _
  | (c,true) :: xs => (chordPath T ends c).append (wordPath xs)
  | (c,false) :: xs => (reversePath (chordPath T ends c)).append (wordPath xs)
lemma wordPath_holonomy {G : Type*} [Group G] (f : C → G) (xs : List (C × Bool)) :
    Path.holonomy (orientedWeight (generatorVoltage T ends f)) (wordPath T ends xs) =
      FreeGroup.lift f (FreeGroup.mk xs) := by
  induction xs with
  | nil => simp [wordPath,Path.holonomy]
  | cons x xs ih =>
    rcases x with ⟨c,b⟩
    cases b <;> simp [wordPath,Path.holonomy_append,holonomy_reverse,chordPath_holonomy,ih,
      FreeGroup.lift_mk]

variable (E : V → V → Type*) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
lemma exists_path_holonomy {G : Type*} [Group G] (f : C → G)
    (hf : Function.Surjective (FreeGroup.lift f)) (v : V) (g : G) :
    ∃ p : Path (OrientedEdge (E := E)) T.root v,
      Path.holonomy (orientedWeight (originalVoltage T ends E presentation f)) p = g := by
  obtain ⟨w,hw⟩ := hf g
  obtain ⟨xs,hxs⟩ := Quot.exists_rep w
  refine ⟨unmapPath T ends E presentation ((wordPath T ends xs).append (treePath T ends v)),?_⟩
  rw [original_holonomy,map_unmapPath,Path.holonomy_append,wordPath_holonomy,treePath_holonomy,mul_one]
  simpa only [show FreeGroup.mk xs = w from hxs] using hw

theorem cover_connected {G : Type*} [Group G] [Finite G] (f : C → G)
    (hf : Function.Surjective (FreeGroup.lift f)) (H : Subgroup G) :
    SignedConnected (CoverTower.Edge E (originalVoltage T ends E presentation f) H) := by
  let U : ∀ {a b}, E a b → G := fun {a b} => originalVoltage T ends E presentation f (a := a) (b := b)
  have reach : ∀ x : V × (G ⧸ H), Nonempty (Path (OrientedEdge (E := CoverTower.Edge E U H))
      (T.root,QuotientGroup.mk (1 : G)) x) := by
    rintro ⟨v,q⟩
    induction q using Quotient.inductionOn' with
    | h g =>
      obtain ⟨p,hp⟩ := exists_path_holonomy T ends E presentation f hf v g⁻¹
      have he : (CoverTower.liftOrientedPath E U H p (QuotientGroup.mk (1 : G))).1 = QuotientGroup.mk g := by
        rw [CoverTower.liftOriented_endpoint,hp,CoverTower.transport_mk]
        simp
      change Nonempty (Path (OrientedEdge (E := CoverTower.Edge E U H))
        (T.root,QuotientGroup.mk (1 : G)) (v,QuotientGroup.mk g))
      rw [← he]
      exact ⟨(CoverTower.liftOrientedPath E U H p (QuotientGroup.mk (1 : G))).2⟩
  intro x y
  obtain ⟨p⟩ := reach x
  obtain ⟨q⟩ := reach y
  exact ⟨(reversePath p).append q⟩
end SpanningTree
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.ConnectedImage
variable {C G : Type*} [Group G] (f : C → G)
abbrev Image := (FreeGroup.lift f).range
noncomputable def generator (c : C) : Image f := (FreeGroup.lift f).rangeRestrict (FreeGroup.of c)
lemma coe_generator (c : C) : (generator f c : G) = f c := by simp [generator]
lemma lift_generator : FreeGroup.lift (generator f) = (FreeGroup.lift f).rangeRestrict := by
  apply FreeGroup.ext_hom
  intro c
  simp only [FreeGroup.lift_apply_of,generator]
lemma lift_surjective : Function.Surjective (FreeGroup.lift (generator f)) := by
  rw [lift_generator]
  exact (FreeGroup.lift f).rangeRestrict_surjective
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.ConnectedImage

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
open CategoryTheory
universe u v w
variable {V : Type u} (T : RootedTree V) {C : Type v} (ends : C → V × V)
variable (E : V → V → Type w) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
lemma coe_image_voltage {G : Type*} [Group G] (f : C → G) {a b : V} (e : E a b) :
    ((originalVoltage T ends E presentation (ConnectedImage.generator f) e : ConnectedImage.Image f) : G) =
      originalVoltage T ends E presentation f e := by
  unfold originalVoltage
  cases presentation a b e <;> simp [generatorVoltage,ConnectedImage.coe_generator]
lemma coe_image_holonomy {G : Type*} [Group G] (f : C → G) {a b : V}
    (p : Path (OrientedEdge (E := E)) a b) :
    ((Path.holonomy (orientedWeight (originalVoltage T ends E presentation (ConnectedImage.generator f))) p : ConnectedImage.Image f) : G) =
      Path.holonomy (orientedWeight (originalVoltage T ends E presentation f)) p := by
  induction p with
  | refl a => rfl
  | cons e p ih =>
    simp only [Path.holonomy,Subgroup.coe_mul,ih]
    congr 1
    cases e <;> simp [orientedWeight,coe_image_voltage]

/-- Restriction to the actual generated image gives connected levels without
assuming ambient Magnus voltages generate the whole matrix group. -/
theorem connected_separating_covering_tower [DecidableEq C]
    (p : Path (OrientedEdge (E := E)) T.root T.root)
    (hp : originalPathClass E p ≠ 𝟙 _) :
    ∃ (n : ℕ) (target : Fin n → C)
      (S : CoverTower.TwoSeries (ConnectedImage.Image (TruncatedMagnus.generator target))),
      0 < S.length ∧
      (∀ i, SignedConnected (CoverTower.Edge E
        (originalVoltage T ends E presentation (ConnectedImage.generator (TruncatedMagnus.generator target)))
        (S.subgroup i))) ∧
      (∀ (i : Fin S.length) (v : V) (q : ConnectedImage.Image (TruncatedMagnus.generator target) ⧸ S.subgroup i.succ),
        Nat.card {x : V × (ConnectedImage.Image (TruncatedMagnus.generator target) ⧸ S.subgroup i.castSucc) //
          CoverTower.projectVertex (S.le_step i) x = (v,q)} = 2) ∧
      ∀ q : ConnectedImage.Image (TruncatedMagnus.generator target) ⧸ S.subgroup 0,
        (CoverTower.liftOrientedPath E
          (originalVoltage T ends E presentation (ConnectedImage.generator (TruncatedMagnus.generator target)))
          (S.subgroup 0) p q).1 ≠ q ∧
        CoverTower.eraseOrientedPath E
          (originalVoltage T ends E presentation (ConnectedImage.generator (TruncatedMagnus.generator target)))
          (S.subgroup 0)
          (CoverTower.liftOrientedPath E
            (originalVoltage T ends E presentation (ConnectedImage.generator (TruncatedMagnus.generator target)))
            (S.subgroup 0) p q).2 = p := by
  obtain ⟨n,target,hs⟩ := original_magnus_separation T ends E presentation p hp
  let f := TruncatedMagnus.generator target
  let U : ∀ {a b}, E a b → ConnectedImage.Image f :=
    fun {a b} => originalVoltage T ends E presentation (ConnectedImage.generator f) (a := a) (b := b)
  have hu : Path.holonomy (orientedWeight U) p ≠ 1 := by
    intro h
    apply hs
    have he := congrArg (fun g : ConnectedImage.Image f => (g : TruncatedMagnus.Group n)) h
    change ((Path.holonomy (orientedWeight (originalVoltage T ends E presentation (ConnectedImage.generator f))) p : ConnectedImage.Image f) : TruncatedMagnus.Group n) = 1 at he
    rw [coe_image_holonomy] at he
    exact he
  obtain ⟨S⟩ := CoverTower.exists_twoSeries (G := ConnectedImage.Image f)
    ((TruncatedMagnus.isTwoGroup n).to_subgroup (FreeGroup.lift f).range)
  refine ⟨n,target,S,S.length_pos_of_ne_one _ hu,?_,?_,?_⟩
  · exact fun i => cover_connected T ends E presentation _ (ConnectedImage.lift_surjective f) (S.subgroup i)
  · exact fun i v q => CoverTower.vertex_degree_two S i v q
  intro q
  constructor
  · have hbottom : ∀ q : ConnectedImage.Image f ⧸ S.subgroup 0,
        (CoverTower.liftOrientedPath E U (S.subgroup 0) p q).1 ≠ q := by
      rw [S.first]
      exact CoverTower.bottom_separates (OrientedEdge (E := E)) (orientedWeight U) p hu
    exact hbottom q
  · exact CoverTower.erase_liftOrientedPath _ _ _ p q
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric
set_option backward.isDefEq.respectTransparency false
open CategoryTheory
universe u v
variable {V : Type u} (E : V → V → Type v)
def VertexCopy (V : Type u) := V
instance : TopologicalSpace (VertexCopy V) := ⊥
instance : DiscreteTopology (VertexCopy V) := ⟨rfl⟩
def EdgeIndex := Σ a : V, Σ b : V, E a b
instance : TopologicalSpace (EdgeIndex E) := ⊥
instance : DiscreteTopology (EdgeIndex E) := ⟨rfl⟩
abbrev Raw := VertexCopy V ⊕ (EdgeIndex E × unitInterval)
inductive Glue : Raw E → Raw E → Prop where
  | source (e : EdgeIndex E) : Glue (.inr (e,0)) (.inl e.1)
  | target (e : EdgeIndex E) : Glue (.inr (e,1)) (.inl e.2.1)
def Realization := Quot (Glue E)
instance : TopologicalSpace (Realization E) := inferInstanceAs (TopologicalSpace (Quot (Glue E)))
def vertex (a : V) : Realization E := Quot.mk _ (.inl a)
def edgePoint {a b : V} (e : E a b) (t : unitInterval) : Realization E :=
  Quot.mk _ (.inr (⟨a,b,e⟩,t))
lemma continuous_edgePoint {a b : V} (e : E a b) : Continuous (edgePoint E e) :=
  continuous_quot_mk.comp (continuous_inr.comp (continuous_const.prodMk continuous_id))
def edgePath {a b : V} (e : E a b) : _root_.Path (vertex E a) (vertex E b) where
  toFun := edgePoint E e
  continuous_toFun := continuous_edgePoint E e
  source' := Quot.sound (Glue.source ⟨a,b,e⟩)
  target' := Quot.sound (Glue.target ⟨a,b,e⟩)

def edgeFunctor : SpanningTree.SourceVertex E ⥤q FundamentalGroupoid (Realization E) where
  obj a := .mk (vertex E a)
  map e := Path.Homotopic.Quotient.mk (edgePath E e)
noncomputable def comparison : Quiver.FreeGroupoid (SpanningTree.SourceVertex E) ⥤
    FundamentalGroupoid (Realization E) := Quiver.FreeGroupoid.lift (edgeFunctor E)
lemma comparison_edge {a b : V} (e : E a b) :
    (comparison E).map ((Quiver.FreeGroupoid.of (SpanningTree.SourceVertex E)).map e) =
      Path.Homotopic.Quotient.mk (edgePath E e) := by
  exact Prefunctor.congr_hom (Quiver.FreeGroupoid.lift_spec (edgeFunctor E)) e

noncomputable def originalLoopMap (root : V) : SpanningTree.OriginalLoop E root →*
    (FundamentalGroup (Realization E) (vertex E root))ᵐᵒᵖ where
  toFun p := MulOpposite.op ((comparison E).map p.hom)
  map_one' := by
    apply MulOpposite.unop_injective
    exact (comparison E).map_id _
  map_mul' p q := by
    apply MulOpposite.unop_injective
    exact (comparison E).map_comp p.hom q.hom

def orientedPath {a b : V} : OrientedEdge (E := E) a b → _root_.Path (vertex E a) (vertex E b)
  | .forward e => edgePath E e
  | .backward e => (edgePath E e).symm
noncomputable def path {a b : V} : Path (OrientedEdge (E := E)) a b → _root_.Path (vertex E a) (vertex E b)
  | .refl a => _root_.Path.refl (vertex E a)
  | .cons e p => (orientedPath E e).trans (path p)
lemma comparison_oriented {a b : V} (e : OrientedEdge (E := E) a b) :
    (comparison E).map (SpanningTree.originalOrientedClass E e) =
      Path.Homotopic.Quotient.mk (orientedPath E e) := by
  cases e with
  | forward e => exact comparison_edge E e
  | backward e =>
    rw [SpanningTree.originalOrientedClass,Functor.map_inv,← Groupoid.inv_eq_inv,comparison_edge]
    rfl
lemma comparison_path {a b : V} (p : Path (OrientedEdge (E := E)) a b) :
    (comparison E).map (SpanningTree.originalPathClass E p) =
      Path.Homotopic.Quotient.mk (path E p) := by
  induction p with
  | refl a => exact (comparison E).map_id _
  | cons e p ih =>
    rw [SpanningTree.originalPathClass,Functor.map_comp,comparison_oriented,ih]
    rfl
lemma path_backtrack_homotopic {a b : V} (e : E a b) :
    (path E (backtrack e)).Homotopic (_root_.Path.refl (vertex E a)) := by
  apply _root_.Path.Homotopic.Quotient.exact
  rw [← comparison_path]
  have h : SpanningTree.originalPathClass E (backtrack e) = 𝟙 _ := by
    simp [SpanningTree.originalPathClass,SpanningTree.originalOrientedClass,backtrack]
  rw [h,CategoryTheory.Functor.map_id]
  rfl
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric
open CategoryTheory
universe u v w z
variable {V : Type u} (E : V → V → Type v)
@[simp] lemma edgePoint_zero {a b : V} (e : E a b) : edgePoint E e 0 = vertex E a :=
  (edgePath E e).source
@[simp] lemma edgePoint_one {a b : V} (e : E a b) : edgePoint E e 1 = vertex E b :=
  (edgePath E e).target

noncomputable def vertexRetraction : Realization E → V := by
  classical
  refine Quot.lift (fun p => match p with
    | .inl v => v
    | .inr (e,t) => if t = 1 then e.2.1 else e.1) ?_
  intro a b h
  cases h with
  | source e => simp
  | target e => simp
lemma vertex_injective : Function.Injective (vertex E) :=
  (show Function.LeftInverse (vertexRetraction E) (vertex E) from fun _ => rfl).injective

def initialIntervalPath (t : unitInterval) : _root_.Path (0 : unitInterval) t where
  toFun u := ⟨(u : ℝ) * (t : ℝ), by
    constructor
    · exact mul_nonneg u.property.1 t.property.1
    · calc
        (u : ℝ) * t ≤ 1 * t := mul_le_mul_of_nonneg_right u.property.2 t.property.1
        _ ≤ 1 := by simpa using t.property.2⟩
  continuous_toFun := by fun_prop
  source' := by ext; simp
  target' := by ext; simp

theorem pathConnected_of_signed (root : V) (h : SignedConnected E) :
    PathConnectedSpace (Realization E) := by
  have reach : ∀ x : Realization E, Joined (vertex E root) x := by
    intro x
    induction x using Quot.inductionOn with
    | h r =>
      cases r with
      | inl v =>
        obtain ⟨p⟩ := h root v
        exact ⟨path E p⟩
      | inr e =>
        rcases e with ⟨⟨a,b,e⟩,t⟩
        obtain ⟨p⟩ := h root a
        have hi : Joined (edgePoint E e 0) (edgePoint E e t) :=
          (show Joined (0 : unitInterval) t from ⟨initialIntervalPath t⟩).map (continuous_edgePoint E e)
        change Joined (vertex E root) (edgePoint E e t)
        exact (show Joined (vertex E root) (vertex E a) from ⟨path E p⟩).trans (by simpa only [edgePoint_zero] using hi)
  exact ⟨⟨vertex E root⟩,fun x y => (reach x).symm.trans (reach y)⟩

variable {W : Type w} (F : W → W → Type z) (φ : V → W)
variable (ψ : ∀ {a b}, E a b → F (φ a) (φ b))
def indexMap (e : EdgeIndex E) : EdgeIndex F := ⟨φ e.1,φ e.2.1,ψ e.2.2⟩
def rawMap : Raw E → Raw F
  | .inl v => .inl (φ v)
  | .inr (e,t) => .inr (indexMap E F φ ψ e,t)
lemma continuous_rawMap : Continuous (rawMap E F φ ψ) := by
  apply continuous_sum_dom.mpr
  constructor
  · exact continuous_inl.comp continuous_of_discreteTopology
  · have hi : Continuous (indexMap E F φ ψ) := continuous_of_discreteTopology
    exact continuous_inr.comp ((hi.comp continuous_fst).prodMk continuous_snd)
def map : Realization E → Realization F :=
  Quot.map (rawMap E F φ ψ) (by
    intro a b h
    cases h with
    | source e => exact Glue.source (indexMap E F φ ψ e)
    | target e => exact Glue.target (indexMap E F φ ψ e))
lemma continuous_map : Continuous (map E F φ ψ) :=
  continuous_quot_map _ (continuous_rawMap E F φ ψ)
@[simp] lemma map_vertex (v : V) : map E F φ ψ (vertex E v) = vertex F (φ v) := rfl
@[simp] lemma map_edgePoint {a b : V} (e : E a b) (t : unitInterval) :
    map E F φ ψ (edgePoint E e t) = edgePoint F (ψ e) t := rfl
lemma map_edgePath {a b : V} (e : E a b) :
    (edgePath E e).map (continuous_map E F φ ψ) = edgePath F (ψ e) := by
  ext t
  rfl
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric
variable {G V : Type*} [Group G] [Finite G] (E : V → V → Type*) (U : ∀ {a b}, E a b → G)
/-- The actual intervalwise continuous realization of the original-edge tower
projection. No assertion of topological covering is hidden in this definition. -/
def realizedProjection {H K : Subgroup G} (h : H ≤ K) :
    Realization (CoverTower.Edge E U H) → Realization (CoverTower.Edge E U K) :=
  map _ _ (CoverTower.projectVertex h) (fun e => CoverTower.projectEdge E U h e)
lemma continuous_realizedProjection {H K : Subgroup G} (h : H ≤ K) :
    Continuous (realizedProjection E U h) := continuous_map _ _ _ _
@[simp] lemma realizedProjection_vertex {H K : Subgroup G} (h : H ≤ K) (x : V × (G ⧸ H)) :
    realizedProjection E U h (vertex _ x) = vertex _ (CoverTower.projectVertex h x) := rfl
@[simp] lemma realizedProjection_edgePoint {H K : Subgroup G} (h : H ≤ K)
    {x y : V × (G ⧸ H)} (e : CoverTower.Edge E U H x y) (t : unitInterval) :
    realizedProjection E U h (edgePoint _ e t) = edgePoint _ (CoverTower.projectEdge E U h e) t := rfl
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
universe u v w
variable {V : Type u} (T : RootedTree V) {C : Type v} (ends : C → V × V)
variable (E : V → V → Type w) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
theorem generated_cover_realization_pathConnected {G : Type*} [Group G] [Finite G]
    (f : C → G) (H : Subgroup (ConnectedImage.Image f)) :
    PathConnectedSpace (Geometric.Realization (CoverTower.Edge E
      (originalVoltage T ends E presentation (ConnectedImage.generator f)) H)) :=
  Geometric.pathConnected_of_signed _ (T.root,QuotientGroup.mk 1)
    (cover_connected T ends E presentation _ (ConnectedImage.lift_surjective f) H)
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric
universe u v w z
variable {V : Type u} (E : V → V → Type v) {W : Type w} (F : W → W → Type z)
variable (φ : V → W) (ψ : ∀ {a b}, E a b → F (φ a) (φ b))
def mapOriented {a b : V} : OrientedEdge (E := E) a b → OrientedEdge (E := F) (φ a) (φ b)
  | .forward e => .forward (ψ e)
  | .backward e => .backward (ψ e)
def mapPath {a b : V} : Path (OrientedEdge (E := E)) a b → Path (OrientedEdge (E := F)) (φ a) (φ b)
  | .refl a => .refl (φ a)
  | .cons e p => .cons (mapOriented E F φ ψ e) (mapPath p)
set_option backward.isDefEq.respectTransparency false in
lemma map_orientedPath {a b : V} (e : OrientedEdge (E := E) a b) :
    (orientedPath E e).map (continuous_map E F φ ψ) = orientedPath F (mapOriented E F φ ψ e) := by
  cases e with
  | forward e => exact map_edgePath E F φ ψ e
  | backward e =>
    change (edgePath E e).symm.map (continuous_map E F φ ψ) = (edgePath F (ψ e)).symm
    rw [← _root_.Path.map_symm,map_edgePath]
set_option backward.isDefEq.respectTransparency false in
lemma map_path {a b : V} (p : Path (OrientedEdge (E := E)) a b) :
    (path E p).map (continuous_map E F φ ψ) = path F (mapPath E F φ ψ p) := by
  induction p with
  | refl a => rfl
  | cons e p ih => simp only [path,mapPath,_root_.Path.map_trans,map_orientedPath,ih]

variable {G : Type*} [Group G] [Finite G] (U : ∀ {a b}, E a b → G)
lemma realizedProjection_path {H K : Subgroup G} (h : H ≤ K)
    {x y : V × (G ⧸ H)} (p : Path (OrientedEdge (E := CoverTower.Edge E U H)) x y) :
    (path _ p).map (continuous_realizedProjection E U h) =
      path _ (CoverTower.projectOrientedPath E U h p) := by
  rw [show (path _ p).map (continuous_realizedProjection E U h) =
    (path _ p).map (continuous_map _ _ (CoverTower.projectVertex h) (fun e => CoverTower.projectEdge E U h e)) from rfl]
  rw [map_path]
  congr 1
  induction p with
  | refl x => rfl
  | cons e p ih =>
    simp only [mapPath,CoverTower.projectOrientedPath,ih]
    congr 1
    cases e <;> rfl
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric
variable {V : Type*} (E : V → V → Type*) (root : V)
lemma originalLoopMap_path (p : Path (OrientedEdge (E := E)) root root) :
    originalLoopMap E root ⟨SpanningTree.originalPathClass E p⟩ =
      MulOpposite.op (_root_.Path.Homotopic.Quotient.mk (path E p)) :=
  congrArg MulOpposite.op (comparison_path E p)
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.Geometric

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
universe u v w
variable {V : Type u} (T : RootedTree V) {C : Type v} (ends : C → V × V)
variable (E : V → V → Type w) (presentation : ∀ a b, E a b ≃ Edge T ends a b)
variable {G : Type*} [Group G] (f : C → G)
def imageRegularVertex (x : V × ConnectedImage.Image f) : V × G := (x.1,x.2)
lemma imageRegularVertex_injective : Function.Injective (imageRegularVertex (V := V) f) := by
  intro x y h
  exact Prod.ext (congrArg (@Prod.fst V G) h) (Subtype.ext (congrArg (@Prod.snd V G) h))
noncomputable def imageRegularEdge {x y : V × ConnectedImage.Image f}
    (e : VoltageCover.Edge E (originalVoltage T ends E presentation (ConnectedImage.generator f)) x y) :
    VoltageCover.Edge E (originalVoltage T ends E presentation f)
      (imageRegularVertex f x) (imageRegularVertex f y) :=
  ⟨e.original,by
    have h := congrArg (fun z : ConnectedImage.Image f => (z : G)) e.target_eq
    simpa only [imageRegularVertex,Subgroup.coe_mul,coe_image_voltage] using h⟩
lemma image_regular_endpoint {a b : V} (p : Path (OrientedEdge (E := E)) a b)
    (g : ConnectedImage.Image f) :
    (((VoltageCover.liftPath (OrientedEdge (E := E))
      (orientedWeight (originalVoltage T ends E presentation (ConnectedImage.generator f))) p g).1 :
        ConnectedImage.Image f) : G) =
      (VoltageCover.liftPath (OrientedEdge (E := E))
        (orientedWeight (originalVoltage T ends E presentation f)) p (g : G)).1 := by
  rw [VoltageCover.lift_endpoint,VoltageCover.lift_endpoint,Subgroup.coe_mul,coe_image_holonomy]
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy.InverseEdgeVoltage.SpanningTree
