# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Navigation.Variantdc36a748162d3655e91906606cead3d8619c273f996010a39e7831c35130386e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b97e86d7b3c3d38eca58399fb6d02f3672973a8c` · SHA-256 `3ef024b35f86fff067dee287c240b5291cbd99733627209d25f2af41ccb8661e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NavigationAuthority.Variantb0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NavigationAuthority.Variantb0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5","mathematical_subject":"Foundations.Unclassified","original_sha256":"b0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Navigation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.ConceptIR
import Mathematics.Concept.Authority

/-! # Concept navigation, residue, search, and recommendations -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NavigationAuthority.Variantb0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5

namespace Mathematics.Oracle

inductive NavigationAuthority
  | navigationOnly
  | candidate
  deriving DecidableEq, Repr

/-- Residual channels are never collapsed into a single untyped score. -/
structure ResidualChannels where
  localResidual : Nat
  coverage : Nat
  sparseSynthesis : Nat
  basisSpan : Nat
  deriving DecidableEq, Repr

structure SearchQuery where
  text : String
  conceptIndexVersion : Digest
  encoderProfile : Digest
  metricProfile : Digest
  deriving DecidableEq, Repr

structure SearchHit where
  concept : ConceptId
  scoreNumerator : Int
  scoreDenominator : Nat
  residuals : ResidualChannels
  authority : NavigationAuthority := .navigationOnly
  deriving DecidableEq, Repr

structure Recommendation where
  concept : ConceptId
  reason : String
  expectedResidualReduction : ResidualChannels
  authority : NavigationAuthority := .navigationOnly
  deriving DecidableEq, Repr

structure InventionProposal where
  candidate : ConceptIR
  admissionStatus : String := "not-reviewed"
  authority : NavigationAuthority := .candidate
  deriving DecidableEq, Repr

end Mathematics.Oracle
```
