# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Probe.Variant60acb5dad1855cd1d0e388468dbf6f6c7802473cb578b988d36a7d761b459723

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f644a0d92baeb36dfcdfd080c8cd0c94fd07fda3` · SHA-256 `737abd3bdcbb4d5171841332a63fa431994c22fe468a322e1c342b8728bab551`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.RiemannZeta.Variant6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.RiemannZeta.Variant6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/shell-count-endpoint/Probe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Analysis.PSeries
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Analysis.SpecialFunctions.Exp

namespace GRWTSK.Analysis.AsymptoticAnalysis.RiemannZeta.Variant6cef87022031549eda4e4ca12731ac36cd8c1e99498f508d60e46293db5a2e3c

open Complex
#check norm_tsum_le_tsum_norm
#check tsum_le_tsum
#check Summable.of_nonneg_of_le
#check summable_norm_iff
#check Real.summable_one_div_nat_pow
#check pow_le_pow_right₀
#check inv_anti₀
#check Complex.norm_natCast
#check Complex.norm_real
#check Real.self_le_exp
#check Real.add_one_le_exp
#check Real.exp_nat_mul
#check Real.exp_mul_nat
#check Nat.factorial_le
#check Nat.factorial_le_pow
#check Complex.Gamma_nat_eq_factorial
#check Real.one_le_pi
#check Complex.Gammaℝ_ne_zero_of_re_pos
#check Complex.re_le_norm
#check Complex.ofReal_norm
#check Complex.norm_natCast
#check pow_le_pow_left₀
#check one_div_le_one_div_of_le
#check norm_inv
#check Complex.norm_natCast
#print Complex.riemannZeta_def_of_ne_zero
```
