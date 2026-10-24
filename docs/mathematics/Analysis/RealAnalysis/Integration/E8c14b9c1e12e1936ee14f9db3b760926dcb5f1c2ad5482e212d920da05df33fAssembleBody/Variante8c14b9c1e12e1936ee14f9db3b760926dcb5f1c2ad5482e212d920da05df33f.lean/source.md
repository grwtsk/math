# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody.Variante8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e86f449ec17ed1829d14882e117e57b848ce4e8e` · SHA-256 `e8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set

noncomputable section

/-- The actual centered xi transform is the zeroth member of the proved
exponential moment derivative family. -/
theorem xi_centered_eq_thetaCenteredMomentJet (u : ℂ) :
    XiToeplitz.xi ((1 : ℂ) / 2 + u) = thetaCenteredMomentJet 0 u := by
  rw [xi_centered_thetaPhi]
  have hp := thetaPhiExpMomentIntegrand_integrableOn 0 u
  have hm := thetaPhiExpMomentIntegrand_integrableOn 0 (-u)
  have hfun : (fun t : ℝ => (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      fun t : ℝ =>
        (thetaPhiExpMomentIntegrand 0 u t + thetaPhiExpMomentIntegrand 0 (-u) t) / 2 := by
    funext t
    simp only [thetaPhiExpMomentIntegrand, pow_zero, mul_one, Complex.cosh]
    rw [show 2 * (-u) * (t : ℂ) = -(2 * u * (t : ℂ)) by ring]
    ring
  unfold thetaCenteredMomentJet thetaPhiExpMoment
  rw [hfun, integral_div, integral_add hp hm]
  simp only [pow_zero, one_mul]
  ring

/-- The even derivatives of the actual centered xi function are the exact
unnormalized theta moments, with outer factor eight. -/
theorem centeredXi_iteratedDeriv_even (n : ℕ) :
    iteratedDeriv (2 * n) (fun u : ℂ => XiToeplitz.xi ((1 : ℂ) / 2 + u)) 0 =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  rw [show (fun u : ℂ => XiToeplitz.xi ((1 : ℂ) / 2 + u)) = thetaCenteredMomentJet 0
    from funext xi_centered_eq_thetaCenteredMomentJet, iteratedDeriv_thetaCenteredMomentJet]
  exact thetaCenteredMomentJet_even_zero n

/-- Translation to the center preserves every complex iterated derivative. -/
theorem iteratedDeriv_centeredXi_zero (m : ℕ) :
    iteratedDeriv m (fun u : ℂ => XiToeplitz.xi ((1 : ℂ) / 2 + u)) 0 =
      iteratedDeriv m XiToeplitz.xi ((1 : ℂ) / 2) := by
  rw [iteratedDeriv_comp_const_add]
  simp

/-- Independent kernel normalization check for every even derivative at zero. -/
theorem iteratedDeriv_cosh_linear_zero (n : ℕ) (t : ℝ) :
    iteratedDeriv (2 * n) (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) 0 =
      (2 * (t : ℂ)) ^ (2 * n) := by
  have harg : (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) =
      fun u : ℂ => Complex.cosh ((2 * (t : ℂ)) * u) := by
    funext u
    congr 1
    ring
  rw [harg, iteratedDeriv_comp_const_mul Complex.contDiff_cosh,
    Complex.iteratedDeriv_even_cosh]
  simp

/-- The derivative-defined xi coefficients use these actual complex derivatives. -/
theorem xi_iteratedDeriv_even_eq_thetaPhi (n : ℕ) :
    iteratedDeriv (2 * n) XiToeplitz.xi ((1 : ℂ) / 2) =
      (8 : ℂ) * ∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n) := by
  rw [← iteratedDeriv_centeredXi_zero]
  exact centeredXi_iteratedDeriv_even n

/-- Real-to-complex coercion commutes with the literal unnormalized even moment. -/
theorem thetaPhi_complex_even_moment_eq (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)) =
      ((∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n) : ℝ) : ℂ) := by
  simp only [← Complex.ofReal_ofNat, ← Complex.ofReal_mul, ← Complex.ofReal_pow,
    integral_complex_ofReal]

/-- The complex integral is real, with no absolute-square replacement. -/
theorem thetaPhi_power_integral_re (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), (thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ (2 * n)).re =
      ∫ t in Ioi (0 : ℝ), thetaPhi t * (2 * t) ^ (2 * n) := by
  rw [thetaPhi_complex_even_moment_eq, Complex.ofReal_re]

/-- Exact extraction of the unchanged derivative-defined coefficient on `(0,∞)`. -/
theorem coefficient_eq_thetaPhi_Ioi (n : ℕ) :
    XiToeplitz.coefficient n =
      8 * ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t := by
  rw [XiToeplitz.coefficient, xi_iteratedDeriv_even_eq_thetaPhi,
    thetaPhi_complex_even_moment_eq]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis n t) =
      fun t : ℝ => (thetaPhi t * (2 * t) ^ (2 * n)) / ((2 * n).factorial : ℝ) := by
    funext t
    unfold evenBasis
    ring
  rw [hfun, integral_div]
  norm_num only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.re_ofNat, Complex.im_ofNat, mul_zero, sub_zero]
  ring

/-- Adding the singleton zero changes no theta moment. -/
theorem thetaPhi_evenBasis_integral_Ici_eq_Ioi (n : ℕ) :
    (∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t) =
      ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t :=
  integral_Ici_eq_integral_Ioi

/-- The original theta coefficient proposition, now proved from the actual xi
source without additional hypotheses or coefficient renormalization. -/
theorem thetaCoefficientFormula : ThetaCoefficientFormula := by
  intro n
  rw [thetaPhi_evenBasis_integral_Ici_eq_Ioi]
  exact coefficient_eq_thetaPhi_Ioi n

/-- At degree zero the unchanged source coefficient is eight times the theta mass. -/
theorem coefficient_zero_eq_eight_integral :
    XiToeplitz.coefficient 0 = 8 * ∫ t in Ioi (0 : ℝ), thetaPhi t := by
  have h := thetaCoefficientFormula 0
  simpa [evenBasis, integral_Ici_eq_integral_Ioi] using h

/-- At degree one the `2!` denominator leaves exactly the factor sixteen. -/
theorem coefficient_one_eq_sixteen_integral :
    XiToeplitz.coefficient 1 = 16 * ∫ t in Ioi (0 : ℝ), t ^ 2 * thetaPhi t := by
  rw [thetaCoefficientFormula 1, integral_Ici_eq_integral_Ioi]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis 1 t) =
      fun t : ℝ => 2 * (t ^ 2 * thetaPhi t) := by
    funext t
    norm_num [evenBasis]
    ring
  rw [hfun, integral_const_mul]
  ring

/-- Strict positivity comes from the proved integrable theta moment and its
positive-measure support, not merely pointwise nonnegativity. -/
theorem coefficient_zero_pos : 0 < XiToeplitz.coefficient 0 :=
  coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula 0

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
