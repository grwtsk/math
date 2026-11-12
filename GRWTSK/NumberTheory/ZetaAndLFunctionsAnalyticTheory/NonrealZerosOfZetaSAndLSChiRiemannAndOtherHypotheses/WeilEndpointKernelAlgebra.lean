/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Real algebra for the signed exponential endpoint kernel

The mathematical consumer is WSEP-v1-1, Case II, in the adjacent
`WeilStripEndpointPositivity.md`. For `s = 1/2 + d + I*tau`, the real
part of `s*(1-s)` is `tau^2 + 1/4 - d^2`; its imaginary part is `-2*d*tau`.
The polynomial gap below bounds the squared ratio of these components
when `|d| <= 3/8` and `|tau| >= 3/4`.

These are local algebraic ingredients, not a formalization of the complete
complex-kernel estimate, the physical Weil form, its zero-sum extension,
or the external seven-eighths theorem. In particular no positivity of the
full Weil form or RH/GRH is asserted. Individual declaration provenance
is in `WeilEndpointKernelAlgebra.provenance/`.

Source status: SOURCE_PROOF_CANDIDATE. Elaboration, dependency build,
fresh kernel replay, transitive axiom audit and independent review NOT_RUN.
The identities have written algebraic proofs in the adjacent note; no
claim of executed tactic or kernel verification is made. Novelty UNASSESSED.
Lean pin: leanprover/lean4:v4.34.1.
Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: grwtsk/math#1801, scope comment 6828793541.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilEndpointKernelAlgebra

/-- The real part of the endpoint denominator is strictly positive on the strip.
This uses no zero-location or analytic-source hypothesis. -/
theorem strip_denominator_re_pos (d tau : ℝ)
    (hd : d ^ 2 ≤ (9 / 64 : ℝ)) :
    0 < tau ^ 2 + 1 / 4 - d ^ 2 := by
  nlinarith [sq_nonneg tau]

/-- Exact polynomial gap for the high-frequency endpoint amplitude estimate.
The three terms on the right are nonnegative under the next theorem's bounds. -/
theorem high_frequency_gap_identity (d tau : ℝ) :
    (1296 : ℝ) * (tau ^ 2 + 1 / 4 - d ^ 2) ^ 2
        - 1849 * (2 * d * tau) ^ 2 =
      (tau ^ 2 - 9 / 16) * (1296 * tau ^ 2 - 441 / 16)
        + (9 / 64 - d ^ 2) * (9988 * tau ^ 2 + 567 / 2)
        + 1296 * (9 / 64 - d ^ 2) ^ 2 := by
  ring

/-- Squared amplitude bound corresponding to `|B/A| <= 36/43`.
Division by `A` in the written complex argument is justified separately by
`strip_denominator_re_pos`. This is an actual polynomial inequality, not an
assumption that the arithmetic form is positive. -/
theorem high_frequency_amplitude_sq_le (d tau : ℝ)
    (hd : d ^ 2 ≤ (9 / 64 : ℝ))
    (ht : (9 / 16 : ℝ) ≤ tau ^ 2) :
    (1849 : ℝ) * (2 * d * tau) ^ 2 ≤
      1296 * (tau ^ 2 + 1 / 4 - d ^ 2) ^ 2 := by
  have hfirst :
      0 ≤ (tau ^ 2 - 9 / 16) * (1296 * tau ^ 2 - 441 / 16) :=
    mul_nonneg (sub_nonneg.mpr ht) (by nlinarith)
  have hsecond :
      0 ≤ (9 / 64 - d ^ 2) * (9988 * tau ^ 2 + 567 / 2) :=
    mul_nonneg (sub_nonneg.mpr hd) (by positivity)
  have hthird : 0 ≤ (1296 : ℝ) * (9 / 64 - d ^ 2) ^ 2 := by
    positivity
  have hsum := add_nonneg (add_nonneg hfirst hsecond) hthird
  rw [← high_frequency_gap_identity d tau] at hsum
  exact sub_nonneg.mp hsum

end GRWTSK.NumberTheory.WeilEndpointKernelAlgebra
