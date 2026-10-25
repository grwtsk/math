# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant9d0246b4ef19c7b209d3b85e39c6614e51674f36a36ca7a2807903743f034acb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `518092dbe13a115eca37c733f53838fa3b5d8de4` · SHA-256 `67400a80648da6a1893ae8283c033f07a0457a69a940588615bb86afd5e8b898`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvidenceAuthority.Variant4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EvidenceAuthority.Variant4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff","mathematical_subject":"Foundations.Unclassified","original_sha256":"4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.UnknownLedger

/-!
# Authority noninterference

Traversal, finite observation, and realization proposals cannot close an
arithmetic or square-root obligation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvidenceAuthority.Variant4c6da94897949a7aa9fe16d4e926e3cf13d7baf07a8c967b9c9ff93e4bee4cff

namespace Mathematics.SemiLocalDefect

inductive EvidenceAuthority
  | accessSchedule
  | finiteObservation
  | reconstructedProposal
  | realizationCertificate
  | arithmeticCertificate
  | normCertificate
deriving DecidableEq, Repr

inductive MayClose :
    EvidenceAuthority →
      UnknownGroup → Prop
  | realizationArchimedean :
      MayClose .realizationCertificate
        .archimedeanBalance
  | realizationPositive :
      MayClose .realizationCertificate
        .positiveRealization
  | realizationSonin :
      MayClose .realizationCertificate
        .soninGeometry
  | finiteComputation :
      MayClose .realizationCertificate
        .finiteConnectorComputation
  | arithmetic :
      MayClose .arithmeticCertificate
        .arithmeticCorrespondence
  | squareRoot :
      MayClose .normCertificate
        .squareRootScale

theorem accessSchedule_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .accessSchedule group := by
  intro authority
  cases authority

theorem finiteObservation_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .finiteObservation group := by
  intro authority
  cases authority

theorem reconstructionProposal_cannot_close
    (group : UnknownGroup) :
    ¬ MayClose .reconstructedProposal group := by
  intro authority
  cases authority

theorem realization_cannot_close_arithmetic :
    ¬ MayClose .realizationCertificate
      .arithmeticCorrespondence := by
  intro authority
  cases authority

theorem realization_cannot_close_squareRoot :
    ¬ MayClose .realizationCertificate
      .squareRootScale := by
  intro authority
  cases authority

end Mathematics.SemiLocalDefect
```
