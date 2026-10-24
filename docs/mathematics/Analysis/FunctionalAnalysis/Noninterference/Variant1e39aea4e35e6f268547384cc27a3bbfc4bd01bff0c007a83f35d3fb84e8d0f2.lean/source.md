# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Noninterference.Variant1e39aea4e35e6f268547384cc27a3bbfc4bd01bff0c007a83f35d3fb84e8d0f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d91eba3b8f4c3a2e4fe2692ea7118c63cae771b8` · SHA-256 `179eff91f08000aaec72c0f658ac5a992382dae94f0c368cdc4f4f7a33a406d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.AuthorityEffect.Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityEffect.Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4","mathematical_subject":"Foundations.Unclassified","original_sha256":"761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.SquareRoot

/-!
# Spectral analysis cannot acquire owner authority
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.AuthorityEffect.Variant761d679913cac7ee9deca21859964880a889fcb0e0100d2fb8dbb7a5a8bf2af4

namespace Mathematics.SpectralClosure

inductive AuthorityEffect
  | none
  | proposal
  | commit
  deriving DecidableEq, Repr

inductive SpectralArtifactKind
  | bitfield
  | kernelEvaluation
  | invariantLawCalculation
  | operatorCalculation
  | traceCalculation
  | defectClassification
  | repairProposal
  deriving DecidableEq, Repr

def SpectralArtifactKind.authorityEffect
    (_ : SpectralArtifactKind) : AuthorityEffect :=
  .none

theorem spectral_artifacts_cannot_commit
    (artifact : SpectralArtifactKind) :
    artifact.authorityEffect = .none :=
  rfl

inductive TheoremCertificateOrigin
  | leanKernel
  | runtimeObservation
  deriving DecidableEq, Repr

def TheoremCertificateOrigin.mayChangeTheoremStatus :
    TheoremCertificateOrigin → Bool
  | .leanKernel => true
  | .runtimeObservation => false

theorem runtime_observations_cannot_manufacture_theorem_certificates :
    TheoremCertificateOrigin.mayChangeTheoremStatus
      .runtimeObservation = false :=
  rfl

inductive OwnerAdmission
  | proposed
  | independentlyVerified
  | ownerAdmitted
  deriving DecidableEq, Repr

def OwnerAdmission.mayCommitRealization :
    OwnerAdmission → Bool
  | .proposed => false
  | .independentlyVerified => false
  | .ownerAdmitted => true

theorem owner_admission_is_necessary_for_committed_realization
    (admission : OwnerAdmission)
    (mayCommit : admission.mayCommitRealization = true) :
    admission = .ownerAdmitted := by
  cases admission with
  | proposed => contradiction
  | independentlyVerified => contradiction
  | ownerAdmitted => rfl

end Mathematics.SpectralClosure
```
