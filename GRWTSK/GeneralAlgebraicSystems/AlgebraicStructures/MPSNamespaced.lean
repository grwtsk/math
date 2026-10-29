-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OpenMPS.Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.OpenMPS.Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/MPS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.State
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Analysis.Complex.Basic

/-!
# Open-boundary matrix product states

An MPS is a coordinate factorization.  Exactness and approximation are
separate proof-bearing predicates over the contracted tensor state.
-/


namespace GRWTSK.Algebra.OpenMPS.Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148

namespace Mathematics.TensorNetwork

open scoped BigOperators

/-- Open-boundary local cores with a profile-indexed virtual carrier. -/
structure OpenMPS (N D : Nat) where
  bondProfile : BondProfile N
  core :
    ∀ site : Fin N,
      Fin (bondProfile.dimension site.castSucc) →
      Fin D →
      Fin (bondProfile.dimension site.succ) →
      ℂ

/-- Exact contraction of all virtual paths. -/
noncomputable def OpenMPS.contract
    (network : OpenMPS N D) :
    TensorState N D :=
  fun physical ↦
    ∑ virtual : VirtualConfiguration network.bondProfile,
      ∏ site : Fin N,
        network.core site
          (virtual site.castSucc)
          (physical site)
          (virtual site.succ)

/-- Exact equality between the contracted representation and source state. -/
def ExactMPSRepresentation
    (state : TensorState N D)
    (network : OpenMPS N D) : Prop :=
  network.contract = state

/-- Finite `ℓ¹` distance, used as an explicit norm profile in this layer. -/
noncomputable def tensorL1Distance
    (left right : TensorState N D) : ℝ :=
  ∑ basis : PhysicalConfiguration N D,
    ‖left basis - right basis‖

/-- Certified approximate representation in the declared finite `ℓ¹` norm. -/
structure ApproxMPSRepresentation
    (state : TensorState N D)
    (network : OpenMPS N D) where
  error : ℝ
  error_nonnegative : 0 ≤ error
  bounded :
    tensorL1Distance network.contract state ≤ error

/-- Exact and approximate representation authority remain explicitly tagged. -/
inductive MPSRepresentationCertificate
    (state : TensorState N D)
    (network : OpenMPS N D)
  | exact (proof : ExactMPSRepresentation state network)
  | approximate (proof : ApproxMPSRepresentation state network)

/-- Exact representations induce zero-error approximate representations. -/
def ExactMPSRepresentation.toApprox
    {state : TensorState N D}
    {network : OpenMPS N D}
    (exact : ExactMPSRepresentation state network) :
    ApproxMPSRepresentation state network where
  error := 0
  error_nonnegative := le_rfl
  bounded := by
    rw [ExactMPSRepresentation] at exact
    simp [tensorL1Distance, exact]

end Mathematics.TensorNetwork
