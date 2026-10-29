-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.UnitaryMatrixFiberRepresentation.Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.UnitaryMatrixFiberRepresentation.Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"cf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/CrossedProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.GroupAction
import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Trace

/-!
# Finite crossed-product representation data

The data includes both multiplication fibers and transport terms.  It is not
labelled a complete spectral triple.
-/


namespace GRWTSK.Algebra.LinearAlgebra.UnitaryMatrixFiberRepresentation.Variantcf70b7a1c3176beed4ad5d0bfee79debbf223ef984cf52e081bba05b1a85a400

namespace Mathematics.SpectralClosure

open scoped Matrix

abbrev MatrixFiber (rank : Nat) :=
  Matrix (Fin rank) (Fin rank) ℂ

noncomputable def normalizedMatrixTrace
    (rank : Nat)
    (matrix : MatrixFiber rank) : ℂ :=
  (rank : ℂ)⁻¹ * Matrix.trace matrix

structure UnitaryMatrixFiberRepresentation
    (G : Type)
    [Fintype G] [Group G]
    (rank : Nat) where
  matrix : G → MatrixFiber rank
  identityMatrix : matrix 1 = 1
  multiplyMatrix :
    ∀ left right,
      matrix (left * right) =
        matrix left * matrix right
  leftUnitary :
    ∀ groupElement,
      (matrix groupElement)ᴴ *
          matrix groupElement =
        1
  rightUnitary :
    ∀ groupElement,
      matrix groupElement *
          (matrix groupElement)ᴴ =
        1
  representationRef : SpectralId

structure MatrixFiberCrossedProductElement
    (State Group : Type)
    [Fintype State] [Fintype Group]
    (rank : Nat) where
  coefficient : Group → State → MatrixFiber rank
  sourceSubject : Group → State → SpectralId
  authorityClass : Group → State → CoordinateAuthority

structure CrossedProductElement
    (State Group : Type)
    [Fintype State] [Fintype Group] where
  coefficient : Group → State → ℝ
  sourceSubject : Group → State → SpectralId
  authorityClass : Group → State → CoordinateAuthority

def CrossedProductElement.zero
    {State Group : Type}
    [Fintype State] [Fintype Group] :
    CrossedProductElement State Group where
  coefficient := fun _ _ => 0
  sourceSubject := fun _ _ => ""
  authorityClass := fun _ _ => .documentary

def CrossedProductElement.add
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (left right : CrossedProductElement State Group) :
    CrossedProductElement State Group where
  coefficient groupElement state :=
    left.coefficient groupElement state +
      right.coefficient groupElement state
  sourceSubject groupElement state :=
    left.sourceSubject groupElement state ++ "+" ++
      right.sourceSubject groupElement state
  authorityClass := fun _ _ => .proposalOnly

def CrossedProductElement.scale
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (scalar : ℝ)
    (element : CrossedProductElement State Group) :
    CrossedProductElement State Group where
  coefficient groupElement state :=
    scalar * element.coefficient groupElement state
  sourceSubject := element.sourceSubject
  authorityClass := element.authorityClass

structure CrossedProductRepresentation
    (State Group : Type)
    [Fintype State] [Fintype Group] where
  action : Group → State → State
  inverse : Group → Group

def matrixFiberAction
    {State G : Type}
    [Fintype State] [Fintype G] [Group G]
    {rank : Nat}
    (base :
      CrossedProductRepresentation State G)
    (fiber :
      UnitaryMatrixFiberRepresentation G rank)
    (groupElement : G)
    (coefficient : State → MatrixFiber rank)
    (state : State) :
    MatrixFiber rank :=
  fiber.matrix groupElement *
      coefficient
        (base.action (base.inverse groupElement) state) *
    (fiber.matrix groupElement)ᴴ

theorem normalizedMatrixTrace_matrixFiberAction
    {State G : Type}
    [Fintype State] [Fintype G] [Group G]
    {rank : Nat}
    (base :
      CrossedProductRepresentation State G)
    (fiber :
      UnitaryMatrixFiberRepresentation G rank)
    (groupElement : G)
    (coefficient : State → MatrixFiber rank)
    (state : State) :
    normalizedMatrixTrace rank
        (matrixFiberAction
          base fiber groupElement coefficient state) =
      normalizedMatrixTrace rank
        (coefficient
          (base.action (base.inverse groupElement) state)) := by
  unfold normalizedMatrixTrace matrixFiberAction
  congr 1
  rw [Matrix.trace_mul_cycle]
  rw [fiber.leftUnitary groupElement, one_mul]

def CrossedProductRepresentation.apply
    {State Group : Type}
    [Fintype State] [Fintype Group]
    (representation : CrossedProductRepresentation State Group)
    (element : CrossedProductElement State Group)
    (vector : State → ℝ)
    (state : State) : ℝ :=
  ∑ groupElement,
    element.coefficient groupElement state *
      vector
        (representation.action
          (representation.inverse groupElement) state)

structure CrossedProductOperatorProfile
    (State Group : Type)
    [Fintype State] [Fintype Group] where
  potential : State → ℝ
  transport : CrossedProductElement State Group
  registeredSupport : List (Group × State)
  operatorRevision : SpectralId

end Mathematics.SpectralClosure
