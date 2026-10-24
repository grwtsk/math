/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only integration regressions. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilPolarization
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MellinTruncation
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiniteMellinAgreement

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.MellinAtlasIntegration

open CriticalStripHeightDescent
open CriticalStripHeightDescent.MellinCertification
open CriticalStripHeightDescent.FiniteMellinAgreement

example (a B : ℝ) :
    FinitePowerEnclosure.derivativeBound a B = derivativeMajorant a B :=
  derivative_bounds_agree a B

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re)
    (prefix : MellinPrefixEnclosure (N : ℝ) s) :
    ‖finitePowerPoleModel N s - poleMellinEvaluation s prefix.value‖ ≤
      (‖s‖ * ‖s - 1‖) * prefix.error := finitePower_prefix_error hN hs prefix

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re)
    (powers : FinitePowerEnclosure N s) (prefix : MellinPrefixEnclosure (N : ℝ) s) :
    ‖powers.sample - poleMellinEvaluation s prefix.value‖ ≤
      powers.finiteError + (‖s‖ * ‖s - 1‖) * prefix.error :=
  sample_agreement_le hN hs powers prefix

example {s : ℂ} (hs : 0 < s.re) : poleNormalizedZeta s ≠ 0 ↔
    ∃ N : ℕ, 1 ≤ N ∧ (‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re (N : ℝ) <
      ‖finitePowerPoleModel N s‖ := nonzero_iff_exists_finitePower_margin hs

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re)
    (hz : poleNormalizedZeta s = 0) :
    ¬ ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re (N : ℝ) <
      ‖finitePowerPoleModel N s‖) := no_strict_finitePower_margin_at_zero hN hs hz

example {N : ℕ} {s : ℂ} {σ : ℝ} (powers : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re)
    (hm : powers.sourceError σ < ‖powers.sample‖) : poleNormalizedZeta s ≠ 0 :=
  nonzero_of_power_sample powers hN hσ hs hm

example (N : ℕ) (q : ℂ) : finitePowerPoleModel N 1 = poleMellinEvaluation 1 q :=
  pole_values_agree N q

-- Source-only negative control: equality of normalized samples at the pole does
-- not recover the prefix values. No inverse by division through s-1 is valid here.
theorem pole_sample_not_injective : ¬ Function.Injective (poleMellinEvaluation 1) := by
  intro h
  have heq : poleMellinEvaluation 1 0 = poleMellinEvaluation 1 1 := by
    simp [poleMellinEvaluation]
  exact zero_ne_one (h heq)

-- A non-strict error margin allows an actual zero even with exact error data.
theorem nonstrict_margin_allows_zero :
    ‖(0 : ℂ) - 1‖ ≤ (1 : ℝ) ∧ (1 : ℝ) ≤ ‖(1 : ℂ)‖ := by
  norm_num

end GRWTSK.RiemannHypothesis.Checks.MellinAtlasIntegration
