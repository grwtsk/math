# Complete source: GRWTSK.Algebra.LinearAlgebra.KNullBridge.Variantcfc197dca446ca82a4d44459e0f37744aeee75288b9a574a542de00ad9813215

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96fc0f5584579f52e85142618a54b94f1aeef640` · SHA-256 `a71260f7a3c10b63c697494cc5bc35151acb318785d14cbd7751074c7820eec1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.KEqual128.Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.KEqual128.Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think/.think/Think/Kakeya/ForceDensity/KNullBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kakeya.ForceDensity.Matrix
import Init.Grind


namespace GRWTSK.Algebra.LinearAlgebra.KEqual128.Variant2e23c81894cebf0471c1729f1305d9ed4bd9b346a66f789fe9bb5104af8c9eaf

namespace Think.Kakeya.ForceDensity

def KEqual128 (eps dist : ℝ) : Prop :=
  dist ≤ eps

def KResidueHeat128 (eps dist : ℝ) : ℝ :=
  max 0 (dist - eps)

def KNull (eps normResidual : ℝ) : Prop :=
  KEqual128 eps normResidual

theorem k_null_iff_zero_residue
  (eps dist : ℝ)
  (heps : 0 ≤ eps)
  (hdist : 0 ≤ dist) :
  KNull eps dist ↔ KResidueHeat128 eps dist = 0 := by
  have _ := heps
  have _ := hdist
  unfold KNull KEqual128 KResidueHeat128
  grind

theorem exact_null_transports_to_k_null
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (dist : ℝ)
  (hExactNull : dist = 0) :
  KNull eps dist := by
  unfold KNull KEqual128
  rw [hExactNull]
  exact heps

theorem force_density_bridge_null
  (eps : ℝ)
  (heps : 0 ≤ eps)
  (residualNorm : ℝ)
  (hres : residualNorm = 0) :
  KNull eps residualNorm := by
  unfold KNull KEqual128
  rw [hres]
  exact heps

end Think.Kakeya.ForceDensity
```
