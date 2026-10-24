# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.GevreyCheck.Variant5cc2571de1dfff4071f61059db34360a5ad70922c3b0f7849fed4adb6f824838

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82e92229c918d427bc0ec4d203a2fc601f75edef` · SHA-256 `43653fc1439a2b4e707d61016fb114260c032bc6685ebbf3e0eb9769904ce69c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Deriv.Variant8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d","mathematical_subject":"Analysis.Calculus","original_sha256":"8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/GevreyCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Calculus.ContDiff.Deriv
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant8278c7b1c9ac890a9380aa453303c3bf38e2aa3f537bb14e08cf1c25bcf3ef0d

open MeasureTheory Function
#check HasCompactSupport.pow
#check HasCompactSupport.mul_left
#check HasCompactSupport.const_mul
#check HasCompactSupport.div_const
#check Continuous.integrable_of_hasCompactSupport
#check ContDiff.differentiable
#check ContDiff.deriv'
#check HasDerivAt.div_const
#check HasDerivAt.comp
#check integral_mul_deriv_eq_deriv_mul_of_integrable
#check integral_div
#check integral_add
#check Real.sq_sqrt
#check integral_nonneg
#check Real.sqrt_pos.2
#check HasCompactSupport.comp_homeomorph
#check HasCompactSupport.sub
#check HasCompactSupport.mul_right
```
