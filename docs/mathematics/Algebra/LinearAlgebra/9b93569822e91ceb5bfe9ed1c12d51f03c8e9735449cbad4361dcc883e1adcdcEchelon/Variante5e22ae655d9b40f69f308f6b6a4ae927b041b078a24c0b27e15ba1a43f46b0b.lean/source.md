# Complete source: GRWTSK.Algebra.LinearAlgebra.9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdcEchelon.Variante5e22ae655d9b40f69f308f6b6a4ae927b041b078a24c0b27e15ba1a43f46b0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66e15ae9adb953c72dc917476d463698f2b3034a` · SHA-256 `7a795cadc093a8a781023d6029d283ded484bd9d1e58a0cf6773bd5de7b6b21b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Decomposition.Variant9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Decomposition.Variant9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/9b/9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc--echelon.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Echelon.Decomposition

namespace GRWTSK.Algebra.LinearAlgebra.Decomposition.Variant9b93569822e91ceb5bfe9ed1c12d51f03c8e9735449cbad4361dcc883e1adcdc

set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.IsPivotedBy
#check @Matrix.IsPivotedBy.rank_eq
#check @Matrix.Echelon.Decomposition
#check @Matrix.Echelon.Decomposition.mk
#check @Matrix.Echelon.Decomposition.rank_eq
```
