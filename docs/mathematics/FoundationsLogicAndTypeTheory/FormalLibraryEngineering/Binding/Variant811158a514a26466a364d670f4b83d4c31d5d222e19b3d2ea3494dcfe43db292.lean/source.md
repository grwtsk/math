# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binding.Variant811158a514a26466a364d670f4b83d4c31d5d222e19b3d2ea3494dcfe43db292

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95ab833d1e3101330b1c3fbff08308911273258f` · SHA-256 `5a4e3c2a30b4bde1edf7829296027e5117ea1b23066bda62820db6cfc6eb2478`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BindingClassification.Variante52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BindingClassification.Variante52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f","mathematical_subject":"Foundations.Unclassified","original_sha256":"e52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/SourceAnalysis/Binding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SourceAnalysis.Context

/-! # Exact source/compiled alignment records -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BindingClassification.Variante52fbe1074c87cae3fb3875fd213b84fef36f1f3d0c735384cb597bfe4db240f

namespace Mathematics.SourceAnalysis

open Mathematics

inductive BindingClassification
  | direct
  | generated
  | external
  | sourceOnly
  | ambiguous
  deriving DecidableEq, Repr, Inhabited

structure CommandDeclarationBinding where
  commandId : SourceCommandId
  declarationId : Option ExtractorDeclarationId
  classification : BindingClassification
  evidenceDigest : Digest
  exact : Bool
  deriving DecidableEq, Repr

end Mathematics.SourceAnalysis
```
