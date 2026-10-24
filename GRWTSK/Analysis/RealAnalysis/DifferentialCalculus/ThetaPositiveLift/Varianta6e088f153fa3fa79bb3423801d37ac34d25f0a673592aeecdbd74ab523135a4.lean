import FormalResearch.RiemannHypothesis.ThetaTailRatioTwo
import FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope

/-!
# Logarithmic-slope inheritance along the literal theta-tail hierarchy

The improper fundamental theorem gives the exact first-tail recursion as a set
integral on `Ici`. The generic inheritance theorem then applies at every order:
positivity, decay, source differentiability and derivative integrability are all
supplied from the actual theta source and its existing tail ladder. At zero,
the proof compares independently established derivatives; it never
differentiates an equality known only on the closed half-line.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set Filter
open scoped Topology
noncomputable section

/-- Every actual tail is differentiable, including the zeroth source. -/
theorem differentiable_thetaTail (r : ℕ) : Differentiable ℝ (thetaTail r) := by
  cases r with
  | zero => exact fun t => (hasDerivAt_thetaPhi_raw t).differentiableAt
  | succ r => exact fun t => (hasDerivAt_thetaTail_succ r t).differentiableAt

/-- The derivative of every actual tail is integrable on the canonical half-line. -/
theorem deriv_thetaTail_integrableOn (r : ℕ) :
    IntegrableOn (deriv (thetaTail r)) (Ici (0 : ℝ)) := by
  cases r with
  | zero => simpa only [thetaTail, pow_zero, mul_one] using deriv_thetaPhi_poly_integrableOn 0
  | succ r =>
      rw [deriv_thetaTail_succ]
      exact (thetaTail_integrableOn r).neg

/-- Exact first-tail recursion, in the same set-integral convention as the source. -/
theorem thetaTail_succ_eq_integral (r : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail (r + 1) t = ∫ u in Ici t, thetaTail r u := by
  have hi : IntegrableOn (fun u => -thetaTail r u) (Ioi t) :=
    ((thetaTail_integrableOn r).mono_set
      (Ioi_subset_Ici_self.trans (Ici_subset_Ici.mpr ht))).neg
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun u _ => hasDerivAt_thetaTail_succ r u) hi (thetaTail_tendsto_atTop (r + 1))
  rw [← integral_Ici_eq_integral_Ioi, integral_neg] at h
  linarith

/-- Parentheses keep an external summand outside the improper set integral. -/
theorem thetaTail_succ_integral_add (r : ℕ) {t : ℝ} (ht : 0 ≤ t) (c : ℝ) :
    thetaTail (r + 1) t + c = (∫ u in Ici t, thetaTail r u) + c := by
  rw [thetaTail_succ_eq_integral r ht]


/-- Antitone logarithmic slope propagates through every actual repeated theta tail. -/
theorem thetaTail_logSlope_antitone (r : ℕ) :
    AntitoneOn (fun t : ℝ => deriv (thetaTail r) t / thetaTail r t) (Ici 0) := by
  induction r with
  | zero => exact thetaPhi_logSlope_antitone
  | succ r ih =>
      have h := integralTail_logSlope_antitone (differentiable_thetaTail r)
        (thetaTail_integrableOn r) (deriv_thetaTail_integrableOn r)
        (thetaTail_tendsto_atTop r) (fun u hu => thetaTail_positive r hu) ih
      have he (u : ℝ) (hu : 0 ≤ u) :
          deriv (thetaTail (r + 1)) u / thetaTail (r + 1) u =
            deriv (integralTail (thetaTail r)) u / integralTail (thetaTail r) u := by
        rw [(hasDerivAt_thetaTail_succ r u).deriv,
          (hasDerivAt_integralTail (continuous_thetaTail r) (thetaTail_integrableOn r) u).deriv]
        rw [thetaTail_succ_eq_integral r hu]
        rfl
      intro x hx y hy hxy
      dsimp only
      rw [he x hx, he y hy]
      exact h hx hy hxy

/-- Each adjacent tail ratio is antitone on the entire nonnegative half-line. -/
theorem thetaTail_succ_div_antitone (r : ℕ) :
    AntitoneOn (fun t : ℝ => thetaTail (r + 1) t / thetaTail r t) (Ici 0) := by
  have h := integralTail_ratio_antitone (differentiable_thetaTail r)
    (thetaTail_integrableOn r) (deriv_thetaTail_integrableOn r)
    (thetaTail_tendsto_atTop r) (fun u hu => thetaTail_positive r hu)
    (thetaTail_logSlope_antitone r)
  intro x hx y hy hxy
  dsimp only
  rw [thetaTail_succ_eq_integral r hx, thetaTail_succ_eq_integral r hy]
  exact h hx hy hxy

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
