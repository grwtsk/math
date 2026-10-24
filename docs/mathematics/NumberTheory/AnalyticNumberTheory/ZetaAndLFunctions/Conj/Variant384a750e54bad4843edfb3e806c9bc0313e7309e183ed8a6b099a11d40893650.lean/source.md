# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Conj.Variant384a750e54bad4843edfb3e806c9bc0313e7309e183ed8a6b099a11d40893650

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `398bec27e5230dc1f5047c87e1d5e0f723945b97` · SHA-256 `e886cb029e0894a671dac039f1e0f1b4d2b7d1e50dea8d1f23d52255021dd059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Nonvanishing.Variantc0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.Nonvanishing.Variantc0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"c0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-zero/Conj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.Nonvanishing


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Nonvanishing.Variantc0ec11aa032ce9c72ae4c8a04022ff251189f9f3324b89c2ad2f54e250343c5a

open Complex MeasureTheory Set
open scoped ComplexConjugate

example (s : ℂ) : completedRiemannZeta₀ (conj s) = conj (completedRiemannZeta₀ s) := by
  unfold completedRiemannZeta₀ HurwitzZeta.completedHurwitzZetaEven₀ WeakFEPair.Λ₀ mellin
  rw [map_div₀, map_ofNat, ← integral_conj]
  congr 1
  refine setIntegral_congr_fun measurableSet_Ioi fun x hx => ?_
  simp only [smul_eq_mul, map_mul]
  congr 1
  · rw [cpow_def_of_ne_zero (ofReal_ne_zero.mpr (ne_of_gt hx)),
      cpow_def_of_ne_zero (ofReal_ne_zero.mpr (ne_of_gt hx)), ← exp_conj, map_mul,
      ← ofReal_log (le_of_lt hx)]
    simp
  · simp [WeakFEPair.f_modif, HurwitzZeta.hurwitzEvenFEPair]
```
