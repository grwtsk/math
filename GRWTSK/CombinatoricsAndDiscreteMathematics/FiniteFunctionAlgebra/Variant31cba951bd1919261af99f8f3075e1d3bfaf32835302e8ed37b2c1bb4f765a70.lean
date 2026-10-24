-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FunctionIdeal.Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FunctionIdeal.Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/FiniteFunctionAlgebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.OperationalTopology

/-!
# Finite function algebra and finite Nullstellensatz

For a finite carrier `X` and a field `k`, the coordinate algebra is the full
function ring `X → k`.  The theorem proved here is exact for every ideal of
that finite function ring.  It is a represented-model theorem; it is not a
factual-truth theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FunctionIdeal.Variantc544c1c819fa5f09755b8c683de367a75855306325a8f39094b0dd30937068c1

namespace Cord

section FunctionIdeal

variable (X k : Type*) [Fintype X] [DecidableEq X] [Field k]

/-- A two-sided ideal of the commutative pointwise function ring `X → k`. -/
@[ext]
structure FunctionIdeal where
  carrier : Set (X → k)
  zero_mem : (0 : X → k) ∈ carrier
  add_mem : ∀ ⦃f g : X → k⦄, f ∈ carrier → g ∈ carrier → f + g ∈ carrier
  neg_mem : ∀ ⦃f : X → k⦄, f ∈ carrier → -f ∈ carrier
  mul_left_mem : ∀ (a : X → k) ⦃f : X → k⦄, f ∈ carrier → a * f ∈ carrier

instance : SetLike (FunctionIdeal X k) (X → k) where
  coe J := J.carrier
  coe_injective := by
    intro J K h
    cases J
    cases K
    cases h
    rfl

namespace FunctionIdeal

variable {X k : Type*} [Fintype X] [DecidableEq X] [Field k]

omit [Fintype X] [DecidableEq X] in
@[simp] theorem mem_carrier (J : FunctionIdeal X k) (f : X → k) :
    f ∈ J.carrier ↔ f ∈ J := Iff.rfl

omit [Fintype X] [DecidableEq X] in
/-- Closure under finite sums. -/
theorem sum_mem (J : FunctionIdeal X k)
    {ι : Type*} [DecidableEq ι]
    (s : Finset ι) (f : ι → X → k)
    (h : ∀ i ∈ s, f i ∈ J) :
    (∑ i ∈ s, f i) ∈ J := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using J.zero_mem
  | @insert a s ha ih =>
      rw [Finset.sum_insert ha]
      exact J.add_mem (h a (Finset.mem_insert_self a s))
        (ih (fun i hi => h i (Finset.mem_insert_of_mem hi)))

/-- Closure under the sum over a finite type. -/
theorem sum_univ_mem (J : FunctionIdeal X k)
    (f : X → X → k) (h : ∀ x, f x ∈ J) :
    (∑ x, f x) ∈ J := by
  classical
  simpa using J.sum_mem Finset.univ f (fun i _ => h i)

/-- Point mass at `x` with value `c`. -/
def pointMass (x : X) (c : k) : X → k :=
  fun y => if y = x then c else 0

omit [Fintype X] in
@[simp] theorem pointMass_apply_same (x : X) (c : k) :
    pointMass x c x = c := by
  simp [pointMass]

omit [Fintype X] in
@[simp] theorem pointMass_apply_ne {x y : X} (h : y ≠ x) (c : k) :
    pointMass x c y = 0 := by
  simp [pointMass, h]

/-- Every function is the sum of its point masses. -/
theorem sum_pointMass (f : X → k) :
    (∑ x, pointMass x (f x)) = f := by
  classical
  funext y
  simp [pointMass]

/-- The zero locus of an ideal. -/
def zeroLocus (J : FunctionIdeal X k) : Set X :=
  {x | ∀ f, f ∈ J → f x = 0}

/-- The ideal of functions vanishing on a set of points. -/
def vanishingIdeal (Y : Set X) : FunctionIdeal X k where
  carrier := {f | ∀ x ∈ Y, f x = 0}
  zero_mem := by simp
  add_mem := by
    intro f g hf hg x hx
    simp [hf x hx, hg x hx]
  neg_mem := by
    intro f hf x hx
    simp [hf x hx]
  mul_left_mem := by
    intro a f hf x hx
    simp [hf x hx]

omit [Fintype X] [DecidableEq X] in
@[simp] theorem mem_vanishingIdeal (Y : Set X) (f : X → k) :
    f ∈ vanishingIdeal Y ↔ ∀ x ∈ Y, f x = 0 := Iff.rfl

omit [Fintype X] [DecidableEq X] in
/-- Every ideal is contained in the ideal vanishing on its model locus. -/
theorem le_vanishing_zeroLocus (J : FunctionIdeal X k) :
    ∀ ⦃f : X → k⦄, f ∈ J → f ∈ vanishingIdeal (zeroLocus J) := by
  intro f hf x hx
  exact hx f hf

omit [Fintype X] in
/-- A point mass belongs to `J` when a member of `J` is nonzero at that point. -/
theorem pointMass_mem_of_witness
    (J : FunctionIdeal X k) (f g : X → k) (x : X)
    (hg : g ∈ J) (hgx : g x ≠ 0) :
    pointMass x (f x) ∈ J := by
  classical
  let a : X → k := fun y => if y = x then f x * (g x)⁻¹ else 0
  have hag : a * g ∈ J := J.mul_left_mem a hg
  have heq : a * g = pointMass x (f x) := by
    funext y
    by_cases hy : y = x
    · subst y
      simp [a, pointMass, hgx]
    · simp [a, pointMass, hy]
  rw [← heq]
  exact hag

/-- Finite function-ring Nullstellensatz: `I(V(J)) = J`. -/
theorem finite_nullstellensatz (J : FunctionIdeal X k) :
    vanishingIdeal (zeroLocus J) = J := by
  ext f
  constructor
  · intro hf
    have hPoint : ∀ x, pointMass x (f x) ∈ J := by
      intro x
      by_cases hfx : f x = 0
      · have hZero : pointMass x (f x) = (0 : X → k) := by
          funext y
          simp [pointMass, hfx]
        rw [hZero]
        exact J.zero_mem
      · have hxNot : x ∉ zeroLocus J := by
          intro hx
          exact hfx (hf x hx)
        have hwitness : ∃ g, g ∈ J ∧ g x ≠ 0 := by
          by_contra hnone
          have hxZero : x ∈ zeroLocus J := by
            intro g hg
            by_contra hgx
            exact hnone ⟨g, hg, hgx⟩
          exact hxNot hxZero
        rcases hwitness with ⟨g, hg, hgx⟩
        exact J.pointMass_mem_of_witness f g x hg hgx
    have hsum : (∑ x, pointMass x (f x)) ∈ J := J.sum_univ_mem _ hPoint
    rw [sum_pointMass] at hsum
    exact hsum
  · intro hf
    exact J.le_vanishing_zeroLocus hf

/-- An ideal is top when every coordinate function belongs to it. -/
def IsTop (J : FunctionIdeal X k) : Prop := ∀ f : X → k, f ∈ J

/-- Empty model locus is equivalent to the top ideal. -/
theorem zeroLocus_empty_iff_top (J : FunctionIdeal X k) :
    zeroLocus J = ∅ ↔ J.IsTop := by
  constructor
  · intro hEmpty f
    have hf : f ∈ vanishingIdeal (zeroLocus J) := by
      intro x hx
      have : x ∈ (∅ : Set X) := by
        simpa only [hEmpty] using hx
      exact this.elim
    rw [J.finite_nullstellensatz] at hf
    exact hf
  · intro hTop
    apply Set.not_nonempty_iff_eq_empty.mp
    rintro ⟨x, hx⟩
    have hOne : (1 : X → k) ∈ J := hTop 1
    have : (1 : k) = 0 := hx 1 hOne
    exact one_ne_zero this

/-- Satisfiability is nonemptiness of the represented model locus. -/
theorem satisfiable_iff_not_top (J : FunctionIdeal X k) :
    (zeroLocus J).Nonempty ↔ ¬ J.IsTop := by
  constructor
  · rintro ⟨x, hx⟩ hTop
    have hOne : (1 : X → k) ∈ J := hTop 1
    exact one_ne_zero (hx 1 hOne)
  · intro hNotTop
    by_contra hNoPoint
    have hEmpty : zeroLocus J = ∅ :=
      Set.not_nonempty_iff_eq_empty.mp hNoPoint
    exact hNotTop ((J.zeroLocus_empty_iff_top).mp hEmpty)

/-- A represented constraint holds on every represented model iff it lies in `J`. -/
theorem represented_consequence_iff
    (J : FunctionIdeal X k) (f : X → k) :
    (∀ x ∈ zeroLocus J, f x = 0) ↔ f ∈ J := by
  change f ∈ vanishingIdeal (zeroLocus J) ↔ f ∈ J
  rw [J.finite_nullstellensatz]

/-- Radical membership in the finite function algebra. -/
def RadicalMember (J : FunctionIdeal X k) (f : X → k) : Prop :=
  ∃ n : Nat, 0 < n ∧ f ^ n ∈ J

/-- Every ideal of the finite function algebra is radical. -/
theorem radicalMember_iff (J : FunctionIdeal X k) (f : X → k) :
    J.RadicalMember f ↔ f ∈ J := by
  constructor
  · rintro ⟨n, hn, hpow⟩
    apply (J.represented_consequence_iff f).mp
    intro x hx
    have hAtX : (f x) ^ n = 0 := by
      simpa using hx (f ^ n) hpow
    by_contra hfx
    exact (pow_ne_zero n hfx) hAtX
  · intro hf
    exact ⟨1, by decide, by simpa using hf⟩

end FunctionIdeal

end FunctionIdeal

/-- The finite coordinate algebra is the full pointwise function ring. -/
abbrev FiniteCoordinateAlgebra (X k : Type*) := X → k

/-- An algebraic constraint record keeps formal validity separate from authority and proof. -/
structure AlgebraicConstraintRecord where
  id : RecordId
  coordinateAlgebra : RecordId
  functionIdentity : RecordId
  authority : IndependentStatus
  evidence : IndependentStatus
  proof : IndependentStatus

inductive ConsistencyKind
  | satisfiable
  | unsatisfiable
  | universallyAdmitted
  | sampleConsistent
  | internallyConsistent
  | operationallyClosed
  deriving DecidableEq, Repr, Inhabited

structure ConsistencyAssessment where
  id : RecordId
  subject : RecordId
  profile : ProfileId
  kind : ConsistencyKind
  status : IndependentStatus
  modelLocus : Option RecordId
  sample : Set RecordId
  determiningSampleCertificate : Option CertificateId
  globalConsistencyClaim : IndependentStatus
  limitations : Set String

structure OntologyConstraintIdealRecord where
  id : RecordId
  coordinateAlgebra : RecordId
  ontologySnapshot : OntologySnapshotId
  generators : Set RecordId
  authority : IndependentStatus
  evidence : IndependentStatus
  proof : IndependentStatus

structure OntologyModelLocusRecord where
  id : RecordId
  constraintIdeal : RecordId
  carrier : Set RecordId
  modelPoints : Set RecordId
  satisfiable : Bool
  universallyAdmitted : Bool

end Cord
