# Complete source: GRWTSK.Algebra.GroupTheory.HeatSemigroup.Variant0ba3c1559e19b7e7ad4bc90234454da2139802e09534004f7e1ea2f84b9711db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9feee9d1cba610743c6edae3c5b2a2f665dd74ff` · SHA-256 `f51fb35da10b76188b69e89d43ef79cc8d4985013bd5eb374492300c00e8b77b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.HeatSemigroup.Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.HeatSemigroup.Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218","mathematical_subject":"Algebra.Groups","original_sha256":"f3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Transform/HeatSemigroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Transform.HeatSemigroup

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: transform.heat_semigroup
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.Algebra.GroupTheory.HeatSemigroup.Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218

namespace Folder
namespace Transform

structure HeatSemigroup (α : Type _) where
  heat : NNReal → α → α
  heat_zero : ∀ x, heat 0 x = x
  heat_add : ∀ t u x, heat (t + u) x = heat t (heat u x)

end Transform
end Folder
```
