# Complete source: GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogExactResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89de762b0aa827786e1874f4d33d338eae618b5e` · SHA-256 `a656574206524769d4c9639f4d27f16ff269fa5dec54982fb232116a7e2cb6e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Codex relay: 89b3ed72-9b44-4100-a919-0cd77242340a.
Verified reconstruction base: 0d8b786a22abc018e541dcc6bdc657b023e5bc7b.
-/
import GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogReconstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Exact unconditional triangular decomposition of row 2d. Every divisor is
either below d, equal to d, or equal to 2d; the 2d term has log 1 = 0. -/
theorem mobiusLogDivisorRow_two_mul_decomposition
    (a : ℕ → ℝ) {d : ℕ} (hd : 1 ≤ d) :
    mobiusLogDivisorRow a (2 * d) =
      (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) +
      a d * Real.log 2 := by
  unfold mobiusLogDivisorRow
  classical
  calc
    (∑ r ∈ (2 * d).divisors,
      a r * Real.log ((2 * d) / r : ℕ)) =
      (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) +
      ∑ r ∈ (2 * d).divisors.filter (fun r => ¬ r < d),
        a r * Real.log ((2 * d) / r : ℕ) := by
          exact (Finset.sum_filter_add_sum_filter_not
            (2 * d).divisors (fun r => r < d)
            (fun r => a r * Real.log ((2 * d) / r : ℕ))).symm
    _ = (∑ r ∈ (2 * d).divisors.filter (fun r => r < d),
        a r * Real.log ((2 * d) / r : ℕ)) +
      a d * Real.log 2 := by
        congr 1
        rw [Finset.sum_eq_single d]
        · rw [Nat.mul_div_cancel 2 (by omega : 0 < d)]
          norm_num
        · intro r hr hrne
          have hrmem := (Finset.mem_filter.mp hr).1
          have hrnotlt := (Finset.mem_filter.mp hr).2
          have hrdvd : r ∣ 2 * d := Nat.dvd_of_mem_divisors hrmem
          by_cases hr2d : r = 2 * d
          · subst r
            simp
          · have hrlt : r < d :=
              divisor_two_mul_lt_of_ne hd hrdvd hr2d hrne
            exact (hrnotlt hrlt).elim
        · intro hdnot
          exfalso
          apply hdnot
          exact Finset.mem_filter.mpr
            ⟨Nat.mem_divisors.mpr ⟨⟨2, Nat.mul_comm 2 d⟩, by omega⟩,
              by omega⟩

/-- Unconditional reconstruction residual: subtract the actual lower-divisor
sum from row 2d and exactly obtain a(d)*log 2. -/
theorem mobiusLogReconstructionResidual_eq_a_mul_log_two
    (a : ℕ → ℝ) {d : ℕ} (hd : 1 ≤ d) :
    mobiusLogReconstructionResidual a d = a d * Real.log 2 := by
  unfold mobiusLogReconstructionResidual
  rw [mobiusLogDivisorRow_two_mul_decomposition a hd]
  ring

/-- Explicit coefficient formula. This is algebraic reconstruction only and
does not assert a norm bound for the inverse recursion. -/
theorem mobiusLogReconstruction_coefficient_formula
    (a : ℕ → ℝ) {d : ℕ} (hd : 1 ≤ d) :
    a d =
      mobiusLogReconstructionResidual a d / Real.log 2 := by
  rw [mobiusLogReconstructionResidual_eq_a_mul_log_two a hd]
  field_simp [show Real.log 2 ≠ 0 by positivity]

end GRWTSK.RiemannHypothesis

#print axioms GRWTSK.RiemannHypothesis.mobiusLogDivisorRow_two_mul_decomposition
#print axioms GRWTSK.RiemannHypothesis.mobiusLogReconstructionResidual_eq_a_mul_log_two
#print axioms GRWTSK.RiemannHypothesis.mobiusLogReconstruction_coefficient_formula
```
