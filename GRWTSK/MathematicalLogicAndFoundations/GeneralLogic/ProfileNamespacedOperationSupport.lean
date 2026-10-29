-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationSupport.Varianta673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OperationSupport.Varianta673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2","mathematical_subject":"Foundations.Unclassified","original_sha256":"a673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Declared assurance operation profiles

Support is constructive: a supported operation carries the operation itself
and a closure proof for valid states.  `unsupported` carries neither, so
declaring an operation unsupported creates no artificial proof obligation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationSupport.Varianta673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2

universe u

namespace Surface.ContinuousAssurance

/-- Optional support for one state operation, with validity closure. -/
inductive OperationSupport
    {State : Type u}
    (Valid : State → Prop) : Type u
  | unsupported
  | supported
      (operation : State → State)
      (closed : ∀ state, Valid state → Valid (operation state))

/-- The complete operation profile declared by an assurance implementation. -/
structure AssuranceProfile (State : Type u) where
  Valid : State → Prop
  identity : OperationSupport Valid
  composition : OperationSupport Valid
  transport : OperationSupport Valid
  evidenceCollection : OperationSupport Valid
  claimClassification : OperationSupport Valid
  gating : OperationSupport Valid
  attestation : OperationSupport Valid
  refinement : OperationSupport Valid
  adapterExecution : OperationSupport Valid
  reflexiveReview : OperationSupport Valid

namespace OperationSupport

/-- Every supported operation preserves the profile's validity predicate. -/
theorem preservesValidity
    {State : Type u}
    {Valid : State → Prop}
    (operation : State → State)
    (closed : ∀ state, Valid state → Valid (operation state))
    (state : State)
    (valid : Valid state) :
    Valid (operation state) :=
  closed state valid

end OperationSupport

/-- A profile can explicitly decline every optional operation. -/
def unsupportedProfile (State : Type u) : AssuranceProfile State where
  Valid := fun _ => True
  identity := .unsupported
  composition := .unsupported
  transport := .unsupported
  evidenceCollection := .unsupported
  claimClassification := .unsupported
  gating := .unsupported
  attestation := .unsupported
  refinement := .unsupported
  adapterExecution := .unsupported
  reflexiveReview := .unsupported

end Surface.ContinuousAssurance
