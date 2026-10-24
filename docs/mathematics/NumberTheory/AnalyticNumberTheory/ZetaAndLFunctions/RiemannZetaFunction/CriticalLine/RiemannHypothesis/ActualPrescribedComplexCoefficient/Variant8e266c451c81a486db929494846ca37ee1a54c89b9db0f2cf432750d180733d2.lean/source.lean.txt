import SourceActualComplexEndpointCoefficient

/-!
A prescribed nonzero complex mode has a strictly negative real ordinary square
of the literal actual endpoint coefficient. This is a source coefficient fact,
not a zero of zeta or an arithmetic covariance counterexample.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPrescribedComplexCoefficient
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
noncomputable section

/-- A prescribed point in the open complex right half-plane. -/
def actualPrescribedComplexMode : ℂ := (1 + Complex.I) / 2

/-- The source coefficient evaluation is genuinely applicable at this mode. -/
theorem actualPrescribedComplexMode_re_pos : 0 < actualPrescribedComplexMode.re := by
  norm_num [actualPrescribedComplexMode, Complex.div_re, Complex.normSq]

/-- Exact evaluation of the independently defined actual improper coefficient. -/
theorem actualLeadingComplexCoefficient_at_prescribed_mode :
    actualLeadingComplexCoefficient actualPrescribedComplexMode = -384 - 1152 * Complex.I := by
  rw [actualLeadingComplexCoefficient_eq actualPrescribedComplexMode_re_pos]
  apply Complex.ext <;>
    norm_num [actualPrescribedComplexMode, pow_succ, Complex.div_re, Complex.div_im,
      Complex.normSq]

/-- The actual ordinary square has a strictly negative real component. -/
theorem actualLeadingComplexCoefficient_prescribed_square_re :
    (actualLeadingComplexCoefficient actualPrescribedComplexMode ^ 2).re = -1179648 := by
  rw [actualLeadingComplexCoefficient_at_prescribed_mode]
  norm_num [pow_two]

/-- This coefficient cannot be replaced by a nonnegative modulus-square expression. -/
theorem actualLeadingComplexCoefficient_prescribed_square_re_neg :
    (actualLeadingComplexCoefficient actualPrescribedComplexMode ^ 2).re < 0 := by
  rw [actualLeadingComplexCoefficient_prescribed_square_re]
  norm_num

end
end FormalResearch.RiemannHypothesis.ActualPrescribedComplexCoefficient
