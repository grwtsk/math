# Complete source: GRWTSK.NumberTheory.Available.Variantacef67bbbd1e10581edb0ce3bbd79e5451c88165bb5705daf8925831f3d8447f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df4ad43c784618d6d3b60ed3abc17c20700cdb34` · SHA-256 `fd13919683012a891d862734798a85f192ea171f9538f9da472d6a110d442c34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.RiemannZeta.Variantad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RiemannZeta.Variantad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/shell-count-growth/Available.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.Complex.JensenFormula
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

namespace GRWTSK.NumberTheory.RiemannZeta.Variantad1c75677067722f03b32e2fef4d2a52cdae75d1a6298f52182697487ccc6325

#check HurwitzZeta.hasSum_nat_cosKernel₀
#check HurwitzZeta.evenKernel_eq_cosKernel_of_zero
#check HurwitzZeta.evenKernel_functional_equation
#check HurwitzZeta.hurwitzEvenFEPair_zero_symm
#check WeakFEPair.f_modif
#check WeakFEPair.hf_modif_FE
#check WeakFEPair.isStrongFEPair_toStrongFEPair
#check WeakFEPair.IsStrongFEPair.mellinConvergent
#check IsStrongFEPair.mellinConvergent
#check Complex.norm_cpow_eq_rpow_re_of_pos
#check MeasureTheory.norm_integral_le_integral_norm
#check MeasureTheory.integral_mono_ae
#check completedRiemannZeta₀_one_sub
#check zeta_nat_eq_tsum_of_gt_one
#check Complex.Gamma_nat_eq_factorial
#check Nat.factorial_le_pow
#check Real.log_le_sub_one_of_pos
#check AnalyticOnNhd.sum_divisor_le
#check tsum_nonneg
#check HasSum.le
#check Summable.tsum_le_tsum
#check Summable.norm
#check Real.summable_nat_rpow
```
