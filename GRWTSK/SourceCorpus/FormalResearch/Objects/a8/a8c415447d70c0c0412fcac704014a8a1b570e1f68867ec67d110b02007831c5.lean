import FormalResearch.RiemannHypothesis.ThetaXiPhiTransform

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/- Regression preserving the exact old unparenthesized proposition bodies.
The copied integral notation absorbs the retained boundary into its integrand.
At b = 0 both integrals vanish, so the old proposition asserts 0 = 1/2. -/
def oldUnparenthesized0 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        thetaCoshBoundary u b

theorem oldUnparenthesized0_false_at_zero (u : ℂ) :
    ¬ oldUnparenthesized0 u 0 := by
  norm_num [oldUnparenthesized0]

def oldUnparenthesized1 (u : ℂ) (b : ℝ) : Prop :=
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          ∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) +
        (thetaADerivSeries b : ℂ) * Complex.cosh (2 * u * (b : ℂ)) -
        (2 * u) * (thetaA b : ℂ) * Complex.sinh (2 * u * (b : ℂ))

theorem oldUnparenthesized1_false_at_zero (u : ℂ) :
    ¬ oldUnparenthesized1 u 0 := by
  norm_num [oldUnparenthesized1]

theorem corrected_identity_valid_at_zero (u : ℂ) :
    (1 / 2 : ℂ) + thetaCoshBoundary u 0 = 0 :=
  thetaPhi_cosh_interval_identity_at_zero u

#print axioms oldUnparenthesized0_false_at_zero
#print axioms oldUnparenthesized1_false_at_zero
#print axioms corrected_identity_valid_at_zero

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
