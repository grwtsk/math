# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.QuadratureCheck.Variantf4bd888960c1409352afbbe98d1fff5bf7f6d0aff36c4ef74b1a376f97042e5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03c7513dbb3789e830ced423932e39020bde8bd3` · SHA-256 `580b1e379baa7c842eb1363afa0212a7c86d711e4b63613c74eae67f5fdee9cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variant3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SumIntegralComparisons.Variant3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5","mathematical_subject":"Analysis.Integration","original_sha256":"3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mobius-quadrature/QuadratureCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

namespace GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variant3feeba3ce63698db9abcd231844a97ec100bccaf72b2d1c8382d56aa415965b5

#check Finset.sum_Icc_succ_top
#check Nat.le_induction
#check Nat.floor_le
#check Nat.lt_floor_add_one
#check Nat.le_floor
#check Nat.one_le_floor
#check intervalIntegral.integral_const
#check intervalIntegral.integral_mono_on
#check intervalIntegral.integral_nonneg
#check ContinuousOn.intervalIntegrable
#check Real.continuousOn_log
#check Finset.sum_Ico_add
```
