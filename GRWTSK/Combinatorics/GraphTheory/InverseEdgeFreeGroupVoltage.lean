/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-proof candidate: the module elaborates with its current import chain.
Fresh separate kernel replay and independent mathematical review NOT_RUN.
See issue #1784 for exact-source checks and scoped axiom observations.
-/
import GRWTSK.Combinatorics.GraphTheory.FinitePositiveWordMagnusSeparation
import Mathlib.GroupTheory.FreeGroup.Basic
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
Fresh separate kernel replay and independent analytical review remain NOT_RUN.
Issue #1784 records the exact-source checks and selected transitive axiom audit;
these are distinct from independent review and novelty, which is not claimed.
The unused clock-memory no-wrap module is outside this formal dependency cone.
Spanning-tree/fundamental-group return and index-two cover towers remain outside
this change; no graph-level residual-2 theorem is inferred from the bouquet map.
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
