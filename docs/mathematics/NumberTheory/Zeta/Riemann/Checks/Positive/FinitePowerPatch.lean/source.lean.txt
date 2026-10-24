/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.EffectiveMellin
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.FinitePowerPatch

open CriticalStripHeightDescent

example (N : ℕ) :
    (∑ k ∈ Finset.Icc 0 N, positiveUnitCoefficient k) = (N : ℂ) :=
  positiveUnitCoefficient_sum N

example (s : ℂ) : finitePowerPoleModel 1 s = s := finitePowerPoleModel_cutoff_one s
example (N : ℕ) : finitePowerPoleModel N 1 = 1 := finitePowerPoleModel_at_one N

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    truncatedPoleModel (N : ℝ) s = finitePowerPoleModel N s :=
  truncatedPoleModel_eq_finitePower hN hs

example {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finitePowerPoleModel N s =
      -(s * (s - 1)) * fractionalMellinTail (N : ℝ) s :=
  finitePower_source_residual hN hs

example {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finitePowerPoleModel N s‖ ≤
      ‖s‖ * ‖s - 1‖ * ((N : ℝ) ^ (-σ) / σ) :=
  finitePower_source_error hN hσ hs

example {N : ℕ} {s : ℂ} (e : FinitePowerEnclosure N s) :
    ‖finitePowerPoleModel N s - e.sample‖ ≤ e.finiteError := e.finite_model_error

example {N : ℕ} {s : ℂ} (e : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) {σ : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - e.sample‖ ≤ e.sourceError σ := e.source_encloses hN hσ hs

-- An exact finite enclosure exists at cutoff one because its two powers have base 1.
-- This fixture makes no assertion that the remaining Mellin-tail margin is strict.
private def exactCutoffOne (s : ℂ) : FinitePowerEnclosure 1 s where
  value := fun _ => 1
  error := fun _ => 0
  error_nonneg := by intros; norm_num
  encloses := by
    intro k hk
    have hk1 : k = 1 := by simpa using hk
    subst k
    simp
  endpoint := 1
  endpoint_error := 0
  endpoint_error_nonneg := le_rfl
  endpoint_encloses := by simp

example (s : ℂ) : (exactCutoffOne s).sample = s := by
  simp [exactCutoffOne, FinitePowerEnclosure.sample]

example (s : ℂ) : (exactCutoffOne s).finiteError = 0 := by
  simp [exactCutoffOne, FinitePowerEnclosure.finiteError]

example (N : ℕ) :
    (1 - 1 : ℂ) * finiteDirichletPowerSum N 1 ≠ poleNormalizedZeta 1 :=
  endpoint_term_cannot_be_dropped N

example {N : ℕ} {s : ℂ} (e : FinitePowerEnclosure N s)
    (hN : 1 ≤ N) {σ : ℝ} (hσ : 0 < σ) (hs : σ ≤ s.re)
    (hz : poleNormalizedZeta s = 0) : ¬ e.sourceError σ < ‖e.sample‖ :=
  e.no_strict_margin_at_source_zero hN hσ hs hz

end GRWTSK.RiemannHypothesis.Checks.FinitePowerPatch
