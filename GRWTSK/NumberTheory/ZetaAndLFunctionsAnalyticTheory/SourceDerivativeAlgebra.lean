import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy
open FormalResearch.RiemannHypothesis
open SourcePairing SourceDerivativeCoefficientBound
example {A : ℝ} (hA : 0 < A) :
    sourceNormalization A = normPolynomial ((A ^ 2)⁻¹) := by
  unfold sourceNormalization normPolynomial
  field_simp
  ring
example {A : ℝ} (hA : 0 < A) :
    A ^ 2 * ((A ^ 6)⁻¹ * (65536 / 77 : ℝ) +
      (2 * A ^ 4)⁻¹ * (196608 / 5005 : ℝ) +
      (1 / 16) * (A ^ 2)⁻¹ * (131072 / 45045 : ℝ)) =
        derivativePolynomial ((A ^ 2)⁻¹) := by
  unfold derivativePolynomial
  field_simp
  ring
