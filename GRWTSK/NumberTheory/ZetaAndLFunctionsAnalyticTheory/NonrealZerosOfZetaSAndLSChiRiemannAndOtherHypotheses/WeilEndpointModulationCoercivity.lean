/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Logarithmic two-frequency bound for actual Weil modulation coercivity

The consumer is WEMC-v1-2 in `WeilEndpointModulationCoercivity.md`.
The actual gamma multiplier satisfies `logWeight b t ≤ Psi_b t` for b > 0.
The shifted inequality below, integrated against the actual Fourier energy,
gives Gamma_b(M_eta g) + Gamma_b(g) ≥ log (|eta| / b) * ||g||².
The note proves the multiplier comparison, domain preservation, integration,
and return to the complete prime/gamma/pole form. Those analytic steps are
WRITTEN, not extra Lean declarations or hidden positivity hypotheses here.

The endpoint application bounds the WHOLE complex two-dimensional span for
large modulation at each fixed support length. It does not supply positivity
in the remaining bounded-modulation region for all windows, RH, or GRH.
The logarithm in the left side has a strictly positive argument in every use;
no conclusion is obtained from its totalized value at zero.

Status: SOURCE_PROOF_CANDIDATE. Elaboration, complete dependency build, fresh
kernel replay, transitive axiom audit, and independent review: NOT_RUN.
Originality: UNASSESSED. Individual records are in the adjacent provenance
folder. Local mathematical attribution: grwtsk contributors.
Inspected main: 68d976d55601e8b827dd9e93bb45678eb074265d.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: grwtsk/math#1801, scope comment 6830340391.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilEndpointModulationCoercivity

/-- The elementary logarithmic minorant of the gamma multiplier, used for b > 0. -/
noncomputable def logWeight (b t : ℝ) : ℝ :=
  Real.log (1 + (t / b) ^ 2) / 2

private theorem pair_product_gap (x y : ℝ) :
    (1 + x ^ 2) * (1 + y ^ 2) - (x + y) ^ 2 = (x * y - 1) ^ 2 := by
  ring

/-- Two logarithmic frequencies dominate the logarithm of their nonzero sum. -/
theorem log_pair_bound (x y : ℝ) (hxy : x + y ≠ 0) :
    Real.log |x + y| ≤ Real.log (1 + x ^ 2) / 2 +
      Real.log (1 + y ^ 2) / 2 := by
  have hx : 0 < 1 + x ^ 2 := by nlinarith [sq_nonneg x]
  have hy : 0 < 1 + y ^ 2 := by nlinarith [sq_nonneg y]
  have hprod : (x + y) ^ 2 ≤ (1 + x ^ 2) * (1 + y ^ 2) := by
    nlinarith [pair_product_gap x y, sq_nonneg (x * y - 1)]
  have hlog := Real.log_le_log (sq_pos_of_ne_zero hxy) hprod
  rw [Real.log_mul (ne_of_gt hx) (ne_of_gt hy)] at hlog
  simp only [Real.log_pow, Nat.cast_ofNat] at hlog
  rw [Real.log_abs]
  linarith

/-- Exact shift normalization used before integrating the actual gamma multiplier. -/
theorem shifted_log_pair_bound {b eta : ℝ} (hb : 0 < b) (heta : eta ≠ 0)
    (xi : ℝ) :
    Real.log (|eta| / b) ≤ logWeight b xi + logWeight b (xi - eta) := by
  have hsum : xi / b + (eta - xi) / b = eta / b := by ring
  have hne : xi / b + (eta - xi) / b ≠ 0 := by
    rw [hsum]
    exact div_ne_zero heta (ne_of_gt hb)
  have h := log_pair_bound (xi / b) ((eta - xi) / b) hne
  rw [hsum, abs_div, abs_of_pos hb] at h
  have heq : ((eta - xi) / b) ^ 2 = ((xi - eta) / b) ^ 2 := by ring
  rw [heq] at h
  simpa only [logWeight] using h

end GRWTSK.NumberTheory.WeilEndpointModulationCoercivity
