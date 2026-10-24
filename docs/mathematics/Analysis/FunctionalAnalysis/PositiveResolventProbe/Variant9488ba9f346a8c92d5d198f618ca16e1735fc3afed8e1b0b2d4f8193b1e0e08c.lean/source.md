# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventProbe.Variant9488ba9f346a8c92d5d198f618ca16e1735fc3afed8e1b0b2d4f8193b1e0e08c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c599409003ea59983a6a3c5fff652ac10335cd7c` · SHA-256 `0ae619eb647e5db21a6f43a068161876c8aea6fed309bfeb078b2bc69a885205`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Positive.Variantfed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Positive.Variantfed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"fed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/PositiveResolventProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Tactic

namespace GRWTSK.Analysis.FunctionalAnalysis.Positive.Variantfed522f1736b3243ac6f30b49f66cc2feb0659ce403a0e28318f39bda72929a4

open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate
#check ContinuousLinearMap.IsPositive.smul_of_nonneg
#check inner_smul_left
#check inner_smul_right
#check inner_self_eq_norm_sq_to_K
#check inner_self_eq_norm_sq
#check inner_self_eq_norm_mul_norm
#check Complex.re_le_norm
#check Complex.abs_re_le_norm
#check norm_inner_le_norm
#check AntilipschitzWith.le_mul_dist
#check AntilipschitzWith.norm_sub_le
#check ContinuousLinearMap.opNorm_le_bound
#check IsUnit.mul_inv_cancel
#check IsUnit.mul_ringInverse_cancel
#check IsUnit.ringInverse_mul_cancel
#check Ring.mul_inverse_cancel
#check Ring.inverse_mul_cancel
#check Ring.inverse_unit
#check Ring.inverse_mul
#check Ring.inverse_sub
#check ContinuousLinearMap.mul_apply
#check ContinuousLinearMap.IsPositive.isSelfAdjoint
#check IsSelfAdjoint.ringInverse
#check ContinuousLinearMap.isPositive_iff_isSelfAdjoint_re_inner_nonneg
#check ContinuousLinearMap.isPositive_iff_complex
#check ContinuousLinearMap.IsPositive.toLinearMap
#check inner_sub_right
#check ContinuousLinearMap.norm_mul_le
#check norm_smul
#check Complex.ofReal_nonneg
#check ContinuousLinearMap.IsPositive.conj_adjoint
```
