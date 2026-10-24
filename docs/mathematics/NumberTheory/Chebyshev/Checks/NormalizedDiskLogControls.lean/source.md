# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.NormalizedDiskLogControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a502db428a8ef5f9c222d3f2a442a1f583faa9b2` · SHA-256 `35c6a66a8870a11d2fac6e4777d0f41ad1061f8e7590038dbd3ee23eb6adcbae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotientLog

set_option autoImplicit false

/-! Exact source controls. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.NormalizedDiskLogControls

open Set Metric
open GRWTSK.Analysis.Complex.NormalizedDiskLogarithm
open GRWTSK.Analysis.Complex.DiskBlaschkeFactors

noncomputable section

/-- A negative anchor is retained as the multiplier; no principal log is used. -/
theorem negative_anchor_lift :
    ∃ L : ℂ → ℂ, L 0 = 0 ∧
      ∀ z ∈ ball (0 : ℂ) (1 : ℝ), (-1 : ℂ) = (-1) * Complex.exp (L z) := by
  obtain ⟨L, h0, _hd, he⟩ := exists_normalized_log (fun _ : ℂ => (-1 : ℂ)) 1
    (by norm_num) differentiableOn_const (by intro z _; norm_num)
  exact ⟨L, h0, he⟩

/-- Normalization prevents discarding the actual center multiplier. -/
theorem normalized_exp_not_negative_at_center (L : ℂ → ℂ) (h0 : L 0 = 0) :
    Complex.exp (L 0) ≠ (-1 : ℂ) := by simp [h0]

/-- Raw totalized division at a removed zero is not its analytic extension. -/
theorem raw_removed_center_is_wrong :
    (fun z : ℂ => z / z) 0 ≠ (1 : ℂ) := by norm_num

/-- No exponential lift can cover an unremoved zero. -/
theorem exponential_has_no_zero (L : ℂ → ℂ) (z : ℂ) : Complex.exp (L z) ≠ 0 :=
  Complex.exp_ne_zero _

/-- A positive anchor floor cannot be discharged by a zero center value. -/
theorem positive_floor_rejects_zero (η : ℝ) (hη : 0 < η) : ¬ η ≤ ‖(0 : ℂ)‖ := by
  simpa only [norm_zero, not_le] using hη

/-- A single radius-three factor can increase the quotient's center modulus threefold. -/
theorem normalized_factor_center : factor 3 (1 : ℂ) 0 = (-1 / 3 : ℂ) :=
  factor_at_zero 3 (by norm_num) 1

end
end GRWTSK.NumberTheory.Chebyshev.Checks.NormalizedDiskLogControls
```
