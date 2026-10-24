-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PositiveCone.Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PositiveCone.Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/PositiveQuantization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Matrix.Basic

/-!
# Abstract positivity for finite quantization

Positivity is represented by a caller-declared cone.  No ambient order,
pointwise interpretation, evidence authority, or claim status is inferred from
membership in that cone.  Signed data therefore needs a separate sign,
orientation, or difference channel rather than an implicit reinterpretation of
this carrier.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PositiveCone.Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434

namespace Surface.ContinuousAssurance

universe u

/-- A subset closed under zero, addition, and nonnegative real scaling. -/
structure PositiveCone
    (State : Type u)
    [AddCommMonoid State]
    [SMul ℝ State] where
  carrier : Set State
  zero_mem : 0 ∈ carrier
  add_mem :
    ∀ {x y}, x ∈ carrier → y ∈ carrier → x + y ∈ carrier
  smul_nonnegative_mem :
    ∀ {a : ℝ} {x : State}, 0 ≤ a → x ∈ carrier → a • x ∈ carrier

/-- A linear operator preserves exactly the caller-declared admissible cone. -/
def PositivityPreserving
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State)
    (operator : State →ₗ[ℝ] State) : Prop :=
  Set.MapsTo operator cone.carrier cone.carrier

namespace PositiveCone

variable {State : Type u} [AddCommMonoid State] [Module ℝ State]

/-- Identity preserves every declared positive cone. -/
theorem id_preserves
    (cone : PositiveCone State) :
    PositivityPreserving cone LinearMap.id := by
  intro state hstate
  simpa using hstate

/-- Composition of cone-preserving linear maps preserves the same cone. -/
theorem comp_preserves
    (cone : PositiveCone State)
    {first second : State →ₗ[ℝ] State}
    (hfirst : PositivityPreserving cone first)
    (hsecond : PositivityPreserving cone second) :
    PositivityPreserving cone (second.comp first) := by
  intro state hstate
  exact hsecond (hfirst hstate)

/--
A nonnegative linear combination of cone-preserving maps is again
cone-preserving.
-/
theorem nonnegativeCombination_preserves
    (cone : PositiveCone State)
    {first second : State →ₗ[ℝ] State}
    (hfirst : PositivityPreserving cone first)
    (hsecond : PositivityPreserving cone second)
    {a b : ℝ}
    (ha : 0 ≤ a)
    (hb : 0 ≤ b) :
    PositivityPreserving cone (a • first + b • second) := by
  intro state hstate
  have hleft : a • first state ∈ cone.carrier :=
    cone.smul_nonnegative_mem ha (hfirst hstate)
  have hright : b • second state ∈ cone.carrier :=
    cone.smul_nonnegative_mem hb (hsecond hstate)
  simpa using cone.add_mem hleft hright

/-- The explicit pointwise nonnegative cone on a finite real-valued field. -/
def pointwiseNonnegative
    (Index : Type*) : PositiveCone (Index → ℝ) where
  carrier := {signal | ∀ index, 0 ≤ signal index}
  zero_mem := by intro index; simp
  add_mem := by
    intro left right hleft hright index
    exact add_nonneg (hleft index) (hright index)
  smul_nonnegative_mem := by
    intro scalar signal hscalar hsignal index
    exact mul_nonneg hscalar (hsignal index)

@[simp]
theorem mem_pointwiseNonnegative_iff
    {Index : Type*}
    (signal : Index → ℝ) :
    signal ∈ (pointwiseNonnegative Index).carrier ↔
      ∀ index, 0 ≤ signal index :=
  Iff.rfl

/-- Pointwise nonnegativity instantiated explicitly for real matrices. -/
def pointwiseNonnegativeMatrix
    (rows columns : Nat) :
    PositiveCone (Matrix (Fin rows) (Fin columns) ℝ) where
  carrier := {matrix | ∀ row column, 0 ≤ matrix row column}
  zero_mem := by intro row column; simp
  add_mem := by
    intro left right hleft hright row column
    exact add_nonneg (hleft row column) (hright row column)
  smul_nonnegative_mem := by
    intro scalar matrix hscalar hmatrix row column
    exact mul_nonneg hscalar (hmatrix row column)

@[simp]
theorem mem_pointwiseNonnegativeMatrix_iff
    {rows columns : Nat}
    (matrix : Matrix (Fin rows) (Fin columns) ℝ) :
    matrix ∈ (pointwiseNonnegativeMatrix rows columns).carrier ↔
      ∀ row column, 0 ≤ matrix row column :=
  Iff.rfl

end PositiveCone

end Surface.ContinuousAssurance
