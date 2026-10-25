# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variant89ebf6b30bda199aaa27c3c1d574a38719f1dad788c41c295b644a8247d4731a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98a55121bcb0d72d03bfddd780c53af3e0060b4b` · SHA-256 `ea4b837c2e4a7bb9d38ecefdde38e32b163902f57e6595839544679bb60c58f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantf3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.State.Variantf3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe","mathematical_subject":"Foundations.Unclassified","original_sha256":"f3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Progression/State.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Progression.Kind

/-! # Immutable progression states -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantf3977526f65ce61c3a569ce68fe79ae72b917872b74f27b5af70ad9f699b0ffe

namespace Mathematics.Progression

universe u

structure State (Payload : Type u) where
  id : ProgressionStateId
  revision : Nat
  kind : StateKind
  payload : Payload
  payloadDigest : Digest
  predecessor : Option ProgressionStateId

end Mathematics.Progression
```
