-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticTarget.Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AnalyticTarget.Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/AnalyticTarget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Authority
import Surface.ContinuousAssurance.CompilerTarget
import Mathlib.Tactic

/-!
# Analytic resolution targets and selection

Analytic demand, the configured request, the compiler ceiling, and the
selected resolution are separate fields.  Adequacy is an explicit predicate
of an `AnalyticTarget`; it is never inferred from compiler width, saturation,
file size, theorem count, or a descriptive string.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticTarget.Variant020df5799b06e8f73208145ffc1b6286effacf298b78be52b5cf0c7f48f4daa5

namespace Surface.ContinuousAssurance

open Surface.Quantization

abbrev AnalyticTargetIdentity := ArtifactIdentity
abbrev QuantizationSubjectIdentity := ArtifactIdentity
abbrev ClaimIdentity := ArtifactIdentity

/-- The mathematical observation for which a finite resolution is requested. -/
structure AnalyticTarget where
  identity : AnalyticTargetIdentity
  subject : QuantizationSubjectIdentity
  observable : String
  distinctionPolicy : String
  errorTolerance : String
  ResolutionAdequate : Nat → Prop
  affectedClaims : List ClaimIdentity
  requiredEvidence : List ArtifactIdentity

/-- Evidence that one positive width is the least adequate width for a target. -/
structure AnalyticResolutionCertificate
    (target : AnalyticTarget) where
  required : ResolutionBits
  adequate : target.ResolutionAdequate required.value
  lowerInsufficient :
    ∀ k, 0 < k → k < required.value →
      ¬ target.ResolutionAdequate k
  authority : AuthorityClass
  evidence : List ArtifactIdentity

/-- One operator-facing positive resolution request. -/
structure QuantizationRequest where
  resolution : ResolutionBits
  rationale : String
  sourceEvidence : List ArtifactIdentity
  deriving Repr

/-- Complete declarative policy for selecting a finite matrix resolution. -/
structure QuantizationProfile where
  request : QuantizationRequest
  matrixRows : Nat
  matrixColumns : Nat
  compilerTarget : CompilerTarget
  analyticTarget : AnalyticTarget
  encoding : QuantizationEncoding
  overflowPolicy : QuantizationOverflowPolicy
  roundingPolicy : QuantizationRoundingPolicy
  rejectPolicyWithinBound :
    overflowPolicy = .reject →
      request.resolution.value ≤ compilerTarget.wordBits

/-- Select the request unless it exceeds the submitted compiler ceiling. -/
def selectedResolutionValue
    (profile : QuantizationProfile) : Nat :=
  min profile.request.resolution.value profile.compilerTarget.wordBits

/-- Classification of the selected finite representation. -/
inductive QuantizationStatus
  | exact
  | sufficient
  | compilerSaturated
  | intentionallyCoarse
  | approximate
  | unsupported
  deriving DecidableEq, Repr

/--
Typed meaning of each selection status.  Exact and sufficient statuses carry
adequacy at the selected width.  Compiler saturation carries only clipping
facts and deliberately contains no adequacy proposition.
-/
def QuantizationSelectionStatusSound
    (profile : QuantizationProfile)
    (selectedBits : Nat)
    (analyticCertificate :
      Option (AnalyticResolutionCertificate profile.analyticTarget)) :
    QuantizationStatus → Prop
  | .exact =>
      profile.encoding = .bitPlanes ∧
        ∃ certificate,
          analyticCertificate = some certificate ∧
          selectedBits = certificate.required.value ∧
          profile.analyticTarget.ResolutionAdequate selectedBits
  | .sufficient =>
      profile.encoding = .bitPlanes ∧
        ∃ certificate,
          analyticCertificate = some certificate ∧
          certificate.required.value ≤ selectedBits ∧
          profile.analyticTarget.ResolutionAdequate selectedBits
  | .compilerSaturated =>
      profile.encoding = .bitPlanes ∧
        selectedBits = profile.compilerTarget.wordBits ∧
        profile.compilerTarget.wordBits < profile.request.resolution.value
  | .intentionallyCoarse =>
      profile.encoding = .bitPlanes ∧
        selectedBits < profile.request.resolution.value
  | .approximate => profile.encoding = .bitPlanes
  | .unsupported => True

/-- A selected resolution together with a proof that its status is honest. -/
structure QuantizationSelection
    (profile : QuantizationProfile) where
  selectedBits : Nat
  selected_eq : selectedBits = selectedResolutionValue profile
  selectedPositive : 0 < selectedBits
  analyticCertificate :
    Option (AnalyticResolutionCertificate profile.analyticTarget)
  status : QuantizationStatus
  statusSound :
    QuantizationSelectionStatusSound
      profile selectedBits analyticCertificate status

theorem selectedResolutionValue_le_compiler
    (profile : QuantizationProfile) :
    selectedResolutionValue profile ≤ profile.compilerTarget.wordBits :=
  Nat.min_le_right _ _

theorem selectedResolutionValue_le_request
    (profile : QuantizationProfile) :
    selectedResolutionValue profile ≤ profile.request.resolution.value :=
  Nat.min_le_left _ _

theorem selectedResolutionValue_pos
    (profile : QuantizationProfile) :
    0 < selectedResolutionValue profile := by
  simp only [selectedResolutionValue]
  exact Nat.lt_min.mpr
    ⟨profile.request.resolution.positive,
      profile.compilerTarget.wordBitsPositive⟩

theorem selectedResolutionValue_eq_request_of_supported
    (profile : QuantizationProfile)
    (supported :
      profile.request.resolution.value ≤ profile.compilerTarget.wordBits) :
    selectedResolutionValue profile = profile.request.resolution.value := by
  exact Nat.min_eq_left supported

theorem selectedResolutionValue_eq_compiler_of_saturated
    (profile : QuantizationProfile)
    (saturated :
      profile.compilerTarget.wordBits ≤ profile.request.resolution.value) :
    selectedResolutionValue profile = profile.compilerTarget.wordBits := by
  exact Nat.min_eq_right saturated

/--
Compiler clipping alone cannot establish analytic adequacy: this checked
countermodel has a saturated selection and a target whose adequacy predicate is
false at every width.
-/
theorem saturation_does_not_establish_adequacy :
    ∃ (profile : QuantizationProfile)
      (certificate :
        Option (AnalyticResolutionCertificate profile.analyticTarget)),
      QuantizationSelectionStatusSound
        profile (selectedResolutionValue profile) certificate
        .compilerSaturated ∧
      ¬ profile.analyticTarget.ResolutionAdequate
        (selectedResolutionValue profile) := by
  let requestResolution : ResolutionBits := ⟨2, by decide⟩
  let compiler : CompilerTarget :=
    { compilerId := "countermodel"
      compilerVersion := "pinned"
      targetTriple := "abstract"
      wordBits := 1
      wordBitsPositive := by decide
      sourceEvidence := [] }
  let target : AnalyticTarget :=
    { identity := ⟨"artifact:countermodel-target"⟩
      subject := ⟨"artifact:countermodel-subject"⟩
      observable := "separation witness"
      distinctionPolicy := "none"
      errorTolerance := "not adequate"
      ResolutionAdequate := fun _ => False
      affectedClaims := []
      requiredEvidence := [] }
  let profile : QuantizationProfile :=
    { request :=
        { resolution := requestResolution
          rationale := "separate saturation from adequacy"
          sourceEvidence := [] }
      matrixRows := 0
      matrixColumns := 0
      compilerTarget := compiler
      analyticTarget := target
      encoding := .bitPlanes
      overflowPolicy := .compilerSaturate
      roundingPolicy := .floor
      rejectPolicyWithinBound := by simp }
  refine ⟨profile, none, ?_, ?_⟩
  · change QuantizationEncoding.bitPlanes = .bitPlanes ∧ min 2 1 = 1 ∧ 1 < 2
    decide
  · simp [profile, target]

/-- Every implemented status uses the formally supported bit-plane encoding. -/
theorem supported_quantization_status_uses_bitPlanes
    (profile : QuantizationProfile)
    (selectedBits : Nat)
    (certificate : Option (AnalyticResolutionCertificate profile.analyticTarget))
    (status : QuantizationStatus)
    (supported : status ≠ .unsupported)
    (sound : QuantizationSelectionStatusSound
      profile selectedBits certificate status) :
    profile.encoding = .bitPlanes := by
  cases status <;>
    simp_all [QuantizationSelectionStatusSound]

/-- Bounded-word registration alone can only receive the unsupported status. -/
theorem boundedWords_selection_is_unsupported
    {profile : QuantizationProfile}
    (encoding : profile.encoding = .boundedWords)
    (selection : QuantizationSelection profile) :
    selection.status = .unsupported := by
  by_contra supported
  have bitPlanes := supported_quantization_status_uses_bitPlanes
    profile selection.selectedBits selection.analyticCertificate
      selection.status supported selection.statusSound
  exact QuantizationEncoding.noConfusion (bitPlanes.symm.trans encoding)

end Surface.ContinuousAssurance
