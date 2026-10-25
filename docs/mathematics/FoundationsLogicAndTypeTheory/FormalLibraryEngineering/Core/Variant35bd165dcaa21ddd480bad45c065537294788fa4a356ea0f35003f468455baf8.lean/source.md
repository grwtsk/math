# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant35bd165dcaa21ddd480bad45c065537294788fa4a356ea0f35003f468455baf8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `accb3d1f845cf8327a23107e2c143617c76442c2` · SHA-256 `3a6b0587f16e8cae5d7fa36f698933d4bb7fd802c379cfb2e53a6bb3c91c63af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Operator.Variantaf391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Operator.Variantaf391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7","mathematical_subject":"Foundations.Unclassified","original_sha256":"af391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Operator/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.SemanticIdentity

/-! # Operators, spectra, and harmonic channels -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Operator.Variantaf391699c78522b94629d75bfddbe9c1a62343970c251f3025435435cd0e65c7

namespace Mathematics.Operator

universe u

structure Operator (State : Type u) where
  id : StableId
  apply : State → State

structure SpectralChannel where
  id : ChannelId
  eigenvalueLabel : String
  multiplicity : Nat
  deriving DecidableEq, Repr

end Mathematics.Operator
```
