# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestLog.Variantd0fef420ef80a2fb3a0afbafb0512d6b8d461e57121b1f6a78c4a4f064318417

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c84700655dfe8d77caf7d81021d03dfa9840e584` · SHA-256 `c98237f5a5150243c220cc96ccbb580a78c608aee746243b56ea3ced6fdc9c87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalAuto.Variant651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IntervalAuto.Variant651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d","mathematical_subject":"Computation.DataStructures","original_sha256":"651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_log.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Test file for log support in LeanCert.
-/
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntervalAuto.Variant651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d

namespace TestLog

open LeanCert.Core

-- Test atanh Taylor coefficients
#eval
  let coeffs := IntervalRat.atanhTaylorCoeffs 10
  dbg_trace "atanhTaylorCoeffs(10): {coeffs}"
  -- Debug: manually compute what we expect
  let range := List.range 11
  dbg_trace "range: {range}"
  dbg_trace "1 % 2: {1 % 2}"
  dbg_trace "3 % 2: {3 % 2}"
  dbg_trace "1 / (1 : ℚ): {1 / (1 : ℚ)}"
  dbg_trace "1 / (3 : ℚ): {1 / (3 : ℚ)}"
  -- Test condition
  let test1 := if (1 : Nat) % 2 = 1 then (1 : ℚ) / 1 else 0
  let test3 := if (3 : Nat) % 2 = 1 then (1 : ℚ) / 3 else 0
  dbg_trace "test1: {test1}"
  dbg_trace "test3: {test3}"
  pure ()

-- Test atanh at 1/3
#eval
  let result := IntervalRat.atanhPointComputable (1/3) 15
  dbg_trace "atanh(1/3): [{result.lo}, {result.hi}]"
  dbg_trace "Expected: ~0.3466"
  pure ()

-- Compute ln(2) = 2 * atanh(1/3)
#eval
  let result := IntervalRat.ln2Computable 20
  dbg_trace "ln(2) computed: [{result.lo}, {result.hi}]"
  dbg_trace "Expected: ~0.693"
  pure ()

-- Test logReduceMantissa and logReductionExponent
#eval
  let k := IntervalRat.logReductionExponent 10
  let m := IntervalRat.logReduceMantissa 10
  dbg_trace "For q=10: k={k}, m={m}"
  dbg_trace "Verify: m * 2^k = {m * (2 : ℚ) ^ k}"
  pure ()

#eval
  let k := IntervalRat.logReductionExponent 2
  let m := IntervalRat.logReduceMantissa 2
  dbg_trace "For q=2: k={k}, m={m}"
  dbg_trace "Verify: m * 2^k = {m * (2 : ℚ) ^ k}"
  pure ()

#eval
  let k := IntervalRat.logReductionExponent 1
  let m := IntervalRat.logReduceMantissa 1
  dbg_trace "For q=1: k={k}, m={m}"
  dbg_trace "Verify: m * 2^k = {m * (2 : ℚ) ^ k}"
  pure ()

-- Test log at various points
#eval
  let result := IntervalRat.logPointComputable 1 20
  dbg_trace "log(1): [{result.lo}, {result.hi}]"
  dbg_trace "Expected: 0"
  pure ()

#eval
  let result := IntervalRat.logPointComputable 2 20
  dbg_trace "log(2): [{result.lo}, {result.hi}]"
  dbg_trace "Expected: ~0.693"
  pure ()

-- Test interval_bound tactic with log
-- NOTE: Log bounds via interval_bound are not yet supported because
-- checkUpperBoundWithInv is noncomputable (uses real analysis).
-- The computational tests above (#eval) show log works for computation.
-- Formal proofs of log bounds require manual proof or future work on
-- computable interval evaluation for inverse functions.

-- The following would work if we had computable log interval evaluation:
-- example : ∀ x ∈ Set.Icc (2 : ℝ) 2, Real.log x ≤ 1 := by interval_bound
-- example : ∀ x ∈ Set.Icc (2 : ℝ) 2, (0.693 : ℝ) ≤ Real.log x := by interval_bound

-- For now, verify that non-log bounds still work:
example : ∀ x ∈ Set.Icc (1 : ℝ) 3, x ≤ 5 := by interval_bound
example : ∀ x ∈ Set.Icc (0 : ℝ) 1, x * x ≤ 1 := by interval_bound
example : ∀ x ∈ Set.Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by interval_bound

end TestLog
```
