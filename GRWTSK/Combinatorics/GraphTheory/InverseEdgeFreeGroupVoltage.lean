/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-proof candidate: Lean elaboration, fresh kernel replay, transitive axiom
review and independent mathematical review NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FiniteClockMemoryNoWrap
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
its finite-2-group property. General separation is conditional on the explicitly
named `SyllableCoefficientLaw` and `SyllableNormalFormLaw`; neither is proved here.
The analytical syllable argument is recorded below. No unconditional formal
residual-2 theorem is claimed.

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
    {s a b t : V} (prefix : Path (OrientedEdge (E := E)) s a)
    (e : E a b) (suffix : Path (OrientedEdge (E := E)) a t) :
    Path.holonomy (orientedWeight U)
      ((prefix.append (backtrack e)).append suffix) =
    Path.holonomy (orientedWeight U) (prefix.append suffix) := by
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
the analytical normal-form return; it is not yet the Lean normal-form supplier.
The group need not be metabelian. No finiteness of the
source alphabet is required: each observation uses only the finite pattern p.

The group constructed below is the units of the unipotent matrix submonoid.
The filtration proves x^(D+1)=0 for each strictly upper triangular x; Frobenius
then gives (1+x)^(2^(D+1))=1. Finiteness and this exponent bound prove `IsPGroup 2`.
The generator inverse is proved to be the finite geometric series. Evaluation
is Mathlib's actual `FreeGroup.lift`, so inverse-pair cancellation is automatic;
the final consumer uses the existing marked voltage endpoint with its exact
source history. These facts do not require the two open separation suppliers.

**Formal gaps and evidence scope.** The run-count/coefficient argument above,
its identification with the (0,D) entry for arbitrary signed syllables, and
normal-form conversion from an arbitrary nonidentity `FreeGroup A` are NOT yet
Lean proofs. They are represented by two explicit propositions, NOT axioms,
`sorry`s or typeclass instances. The conditional theorems retain both premises.
The standalone algebra section was elaborated with Lean 4.34.1 against the pinned
Mathlib dependency. Full-module elaboration is blocked by errors in the existing
`RelationalHolonomySpinCompletion` import chain; the voltage consumer below is
therefore unchecked. Fresh separate kernel replay, transitive axiom audit and
independent analytical review are NOT_RUN. The argument is not a novelty claim.
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

/-- Concrete Magnus generators 1+X_a, with inverse a finite geometric series. -/
def generator {n : ℕ} (target : Fin n → A) (a : A) : Group n :=
  toUnit ⟨1 + variableMatrix target a, by
    change Above 1 (1 + variableMatrix target a - 1)
    simpa using variable_above target a⟩

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

/-- An explicit open formal obligation, NOT an axiom or a proved theorem.
It refers to the constructed finite group and its computed matrix entry.
The analytical argument is given above. -/
def SyllableCoefficientLaw : Prop :=
  ∀ s : List (A × ℤ), ReducedSyllables s →
    coefficient (syllablePattern s).get (syllableClass s) = 1

/-- Conditional on the precisely identified coefficient supplier, arbitrary
reduced syllables are separated by a concrete finite 2-group. -/
theorem separates_syllables (law : SyllableCoefficientLaw (A := A))
    (s : List (A × ℤ)) (hs : ReducedSyllables s) :
    representation (syllablePattern s).get (syllableClass s) ≠ 1 :=
  separates_of_coefficient _ (syllablePattern_pos s hs.1) _ (law s hs)

/-- The separate normal-form return obligation. It must not be confused with
assuming that arbitrary source histories themselves are reduced. -/
def SyllableNormalFormLaw : Prop :=
  ∀ w : FreeGroup A, w ≠ 1 →
    ∃ s : List (A × ℤ), ReducedSyllables s ∧ syllableClass s = w

/-- Universal residual-2 separation with BOTH unfinished suppliers visible.
No arbitrary-word theorem without these premises is claimed in this candidate. -/
theorem separates_nonidentity
    (coeff : SyllableCoefficientLaw (A := A))
    (normal : SyllableNormalFormLaw (A := A))
    (w : FreeGroup A) (hw : w ≠ 1) :
    ∃ (n : ℕ) (target : Fin n → A),
      representation target w ≠ 1 := by
  obtain ⟨s, hs, rfl⟩ := normal w hw
  exact ⟨_, (syllablePattern s).get, separates_syllables coeff s hs⟩
end TruncatedMagnus

section MagnusVoltageReturn
variable {A : Type u} [DecidableEq A]

/-- A proved coefficient witness separates the actual marked voltage endpoint
from its starting sheet; exact source erasure remains `signedBouquet_erase_lift`.
This consumer has not been elaborated through the failing legacy imports. -/
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

/-- General nonidentity source-word return, conditional on BOTH named formal
suppliers. The actual input may contain inverse-pair events; only its free-group
class is required to be nonidentity. -/
theorem magnus_nonidentity_endpoint
    (coeff : TruncatedMagnus.SyllableCoefficientLaw (A := A))
    (normal : TruncatedMagnus.SyllableNormalFormLaw (A := A))
    (xs : List (A × Bool)) (hw : sourceFreeClass xs ≠ 1) :
    ∃ (n : ℕ) (target : Fin n → A), ∀ g : TruncatedMagnus.Group n,
      (VoltageCover.liftPath (PositiveWordSeparation.bouquetEdge (A × Bool))
        (signedBouquetTransport (TruncatedMagnus.generator target))
        (signedBouquetPath xs) g).1 ≠ g := by
  obtain ⟨n, target, ht⟩ := TruncatedMagnus.separates_nonidentity coeff normal _ hw
  refine ⟨n, target, ?_⟩
  intro g
  rw [signedBouquet_lift_endpoint]
  intro h
  exact ht (mul_left_cancel (h.trans (mul_one g).symm))
end MagnusVoltageReturn

end InverseEdgeVoltage
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
