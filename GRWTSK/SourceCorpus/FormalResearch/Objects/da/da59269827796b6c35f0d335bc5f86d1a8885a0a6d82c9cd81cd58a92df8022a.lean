import FormalResearch.RiemannHypothesis.XiSectionObstruction
open FormalResearch.RiemannHypothesis.ThetaPositiveLift MeasureTheory Set
#check integrable_finsetSum
#check Integrable.ofReal
#check Complex.integrable_ofReal
example (k : ℕ) : IntegrableOn (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k)) (Ioi (0:ℝ)) := by
  have h := thetaPhiExpMomentIntegrand_integrableOn (2*k) 0
  change Integrable (fun t : ℝ => (thetaPhi t : ℂ) * (2 * (t : ℂ))^(2*k) * Complex.exp (2 * 0 * (t:ℂ))) _ at h
  simpa only [mul_zero, zero_mul, Complex.exp_zero, mul_one, IntegrableOn] using h
