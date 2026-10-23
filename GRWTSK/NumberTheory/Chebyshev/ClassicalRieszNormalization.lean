/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.Analysis.Real.ClassicalRieszCorrection
import GRWTSK.NumberTheory.Chebyshev.GlobalRieszAffineNormalization

/-! # Source normalization with the actual classical correction
The affine coefficients below are the already proved boundary coefficients,
transformed by the exact correction identity. Their equality to the zeta special
values remains an analytic obligation; no coefficient is fitted to that target. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization
open GlobalRieszAffineNormalization TentSource
open GRWTSK.Analysis.Real.ClassicalRieszCorrection
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail

def sourceSlope : ℂ := normalizationAtThree 2 - normalizationAtTwo 2 - (slope 2 : ℂ)
def sourceIntercept : ℂ := normalizationAtTwo 2 - (correction 2 : ℂ) - 2*sourceSlope

theorem firstRieszPrefix_eq_classical_correction (N : ℕ) (x : ℝ)
    (hN : 3 ≤ N) (hx : 1 < x) (hxN : x ≤ N) :
    (firstRieszPrefix N x : ℂ) = (x:ℂ)^2/2 + fullRieszZeroValue x +
      (correction x : ℂ) + (x:ℂ)*sourceSlope + sourceIntercept := by
  rw [firstRieszPrefix_eq_global_normalized N x hx hN hxN,
    rationalRieszPrimitive_eq 2 x (by norm_num) hx]
  unfold sourceIntercept sourceSlope
  push_cast
  ring
end GRWTSK.NumberTheory.Chebyshev.ClassicalRieszNormalization
