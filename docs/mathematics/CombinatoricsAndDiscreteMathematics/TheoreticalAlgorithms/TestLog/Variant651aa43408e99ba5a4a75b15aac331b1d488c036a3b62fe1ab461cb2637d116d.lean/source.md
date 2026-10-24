# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestLog.Variant651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47eea4b70826d7d6a73c2b4662d2c5e476a35ddb` · SHA-256 `651aa43408e99ba5a4a75b15aac331b1d488c036a3b62fe1ab461cb2637d116d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Test file for log support in LeanCert.
-/
import LeanCert.Tactic.IntervalAuto

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
