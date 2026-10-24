# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant46af7a4178b14a6e95735123eaee7c2c4160dc6dc1f06388224e0657b1be252e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c10db753edc7e8bfb2ba78c2837f75bf81f329bb` · SHA-256 `12ac9fcdf2a2ccf15c72fca6da46cdec527d358c23d5763f01db86b4179d6e0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceUnit.Varianta382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceUnit.Varianta382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96","mathematical_subject":"Analysis.Calculus","original_sha256":"a382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Deriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

/-! Test that `simp` can prove some lemmas about derivatives. -/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceUnit.Varianta382077fe2a2db25fe591192a597082ce3620059e7402b1b0bcccd23816fdb96

open Real

example (x : ℝ) : deriv (fun x => cos x + 2 * sin x) x = -sin x + 2 * cos x := by
  simp

example (x : ℝ) :
    deriv (fun x ↦ cos (sin x) * exp x) x = (cos (sin x) - sin (sin x) * cos x) * exp x := by
  simp; ring

/- for more complicated examples (with more nested functions) you need to increase the
`maxDischargeDepth`. -/

example (x : ℝ) :
    deriv (fun x ↦ sin (sin (sin x)) + sin x) x =
    cos (sin (sin x)) * (cos (sin x) * cos x) + cos x := by
  simp (maxDischargeDepth := 3)

example (x : ℝ) :
    deriv (fun x ↦ sin (sin (sin x)) ^ 10 + sin x) x =
    10 * sin (sin (sin x)) ^ 9 * (cos (sin (sin x)) * (cos (sin x) * cos x)) + cos x := by
  simp (maxDischargeDepth := 4)
```
