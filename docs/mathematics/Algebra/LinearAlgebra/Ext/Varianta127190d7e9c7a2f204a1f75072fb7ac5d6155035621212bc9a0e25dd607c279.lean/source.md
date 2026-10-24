# Complete source: GRWTSK.Algebra.LinearAlgebra.Ext.Varianta127190d7e9c7a2f204a1f75072fb7ac5d6155035621212bc9a0e25dd607c279

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c59e70397019be17861b64d1e71a3a0ad9cbce3d` · SHA-256 `8e61f68116a672264bb7250a1ba15ce8db67366829380d95f9671556cfeacdfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Ext.Variant88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Ext.Variant88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Matrix/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Matrix


namespace GRWTSK.Algebra.LinearAlgebra.Ext.Variant88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179

namespace Boolean

namespace Matrix

@[ext]
theorem ext
    {A B : Matrix rows cols}
    (h : ∀ i j, A i j = B i j) :
    A = B := by
  funext i
  funext j
  exact h i j

/-- Pointwise equality of Boolean matrices. -/
def pointwiseEq
    (A B : Matrix rows cols) :
    Prop :=
  ∀ i j, A i j = B i j

end Matrix

end Boolean
```
