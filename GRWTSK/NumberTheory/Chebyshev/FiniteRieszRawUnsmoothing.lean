/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
import Mathlib.Analysis.Calculus.Deriv.Slope

/-! # Raw unsmoothing at each fixed finite height
The limit is the actual multiplicity-weighted raw zero head. The height is held
fixed: this gives no exchange with the infinite-height limit. -/
set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology
namespace GRWTSK.NumberTheory.Chebyshev.FiniteRieszRawUnsmoothing
open GRWTSK.NumberTheory.Zeta.Riemann.FirstRieszZeroTail
open GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead

theorem finiteRiesz_raw_difference_limit (x T : ℝ) (hx : 0 < x) :
    Tendsto (fun h : ℝ => (finiteRieszZeroHead (x+h) T - finiteRieszZeroHead x T) / (h:ℂ))
      (𝓝[≠] 0) (𝓝 (finiteHeightZeroHead x T)) := by
  have h := (hasDerivAt_finiteRieszZeroHead x T hx).tendsto_slope_zero
  simpa only [Complex.real_smul, Complex.ofReal_inv, div_eq_mul_inv, mul_comm] using h
end GRWTSK.NumberTheory.Chebyshev.FiniteRieszRawUnsmoothing
