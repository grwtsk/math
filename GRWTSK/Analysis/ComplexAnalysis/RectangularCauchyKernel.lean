/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.CauchyEdgePrimitives
import GRWTSK.Analysis.ComplexAnalysis.RectangularPoleReduction

set_option autoImplicit false

/-!
# Rectangular Cauchy-kernel normalization and finite principal-part integration

Compute the actual four edge integrals using real logarithms and arctangents.
For a strictly interior point, radial terms cancel and four reciprocal corner
pairs supply 2*pi*I. This is the maintained bottom-top+I*right-I*left orientation.
No winding value or contour equality is a premise. Boundary poles are excluded.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RectangularCauchyKernel

open MeasureTheory Filter Set
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.RealAnalysis.CauchyEdgePrimitives
open GRWTSK.Analysis.ComplexAnalysis.OrientedRectangle
open GRWTSK.Analysis.ComplexAnalysis.RectangularPoleReduction

noncomputable section

/-- Cartesian inverse identity; integrability still requires a nonzero edge offset. -/
theorem inverse_cartesian (u v : ℝ) :
    ((u : ℂ) + (v : ℂ) * Complex.I)⁻¹ =
      ((u / (u ^ 2 + v ^ 2) : ℝ) : ℂ) - ((v / (u ^ 2 + v ^ 2) : ℝ) : ℂ) * Complex.I := by
  apply Complex.ext <;>
    simp only [Complex.inv_re, Complex.inv_im, Complex.normSq_apply, Complex.add_re, Complex.add_im,
      Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
      Complex.sub_re, Complex.sub_im, pow_two, neg_div, mul_zero, mul_one, add_zero, zero_add, sub_zero, zero_sub]

/-- The differential I on an upward vertical edge is included here. -/
theorem I_mul_inverse_cartesian (u v : ℝ) :
    Complex.I * ((u : ℂ) + (v : ℂ) * Complex.I)⁻¹ =
      ((v / (v ^ 2 + u ^ 2) : ℝ) : ℂ) + ((u / (v ^ 2 + u ^ 2) : ℝ) : ℂ) * Complex.I := by
  rw [inverse_cartesian]
  apply Complex.ext <;> simp only [Complex.mul_re, Complex.mul_im, Complex.sub_re, Complex.sub_im,
    Complex.add_re, Complex.add_im, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im,
    zero_mul, one_mul, mul_zero, mul_one, add_zero, zero_add, sub_zero, zero_sub,
    add_comm (u ^ 2) (v ^ 2)]; ring

/-- Exact horizontal integral, with its signed transverse coordinate. -/
theorem horizontal_cauchy (p : ℂ) (l r y : ℝ) (hy : y - p.im ≠ 0) :
    horizontal (fun z => (z - p)⁻¹) l r y =
      ((Real.log ((r - p.re) ^ 2 + (y - p.im) ^ 2) / 2 -
        Real.log ((l - p.re) ^ 2 + (y - p.im) ^ 2) / 2 : ℝ) : ℂ) -
      ((Real.arctan ((r - p.re) / (y - p.im)) -
        Real.arctan ((l - p.re) / (y - p.im)) : ℝ) : ℂ) * Complex.I := by
  have hcoord (u : ℝ) : (u : ℂ) + (y : ℂ) * Complex.I - p =
      ((u - p.re : ℝ) : ℂ) + ((y - p.im : ℝ) : ℂ) * Complex.I := by
    apply Complex.ext <;> simp
  have hf := Complex.continuous_ofReal.comp (continuous_radial_density p.re (y - p.im) hy)
  have hg := (Complex.continuous_ofReal.comp
    (continuous_angular_density p.re (y - p.im) hy)).mul (continuous_const : Continuous (fun _ : ℝ => Complex.I))
  unfold horizontal
  simp_rw [hcoord, inverse_cartesian]
  have he := intervalIntegral.integral_sub
    (hf.intervalIntegrable (μ := volume) l r) (hg.intervalIntegrable (μ := volume) l r)
  simp only [Function.comp_apply, Pi.mul_apply] at he
  rw [he,
    intervalIntegral.integral_mul_const, intervalIntegral.integral_ofReal,
    intervalIntegral.integral_ofReal, integral_radial_density l r p.re (y - p.im) hy,
    integral_angular_density l r p.re (y - p.im) hy]

/-- Exact upward vertical CONTOUR integral, not merely its real parameter integral. -/
theorem I_mul_vertical_cauchy (p : ℂ) (c T : ℝ) (hc : c - p.re ≠ 0) :
    Complex.I * vertical (fun z => (z - p)⁻¹) c T =
      ((Real.log ((T - p.im) ^ 2 + (c - p.re) ^ 2) / 2 -
        Real.log ((-T - p.im) ^ 2 + (c - p.re) ^ 2) / 2 : ℝ) : ℂ) +
      ((Real.arctan ((T - p.im) / (c - p.re)) -
        Real.arctan ((-T - p.im) / (c - p.re)) : ℝ) : ℂ) * Complex.I := by
  have hcoord (t : ℝ) : (c : ℂ) + (t : ℂ) * Complex.I - p =
      ((c - p.re : ℝ) : ℂ) + ((t - p.im : ℝ) : ℂ) * Complex.I := by
    apply Complex.ext <;> simp
  have hf := Complex.continuous_ofReal.comp (continuous_radial_density p.im (c - p.re) hc)
  have hg := (Complex.continuous_ofReal.comp
    (continuous_angular_density p.im (c - p.re) hc)).mul (continuous_const : Continuous (fun _ : ℝ => Complex.I))
  unfold vertical
  rw [← intervalIntegral.integral_const_mul]
  simp_rw [hcoord, I_mul_inverse_cartesian]
  have he := intervalIntegral.integral_add
    (hf.intervalIntegrable (μ := volume) (-T) T) (hg.intervalIntegrable (μ := volume) (-T) T)
  simp only [Function.comp_apply, Pi.mul_apply] at he
  rw [he,
    intervalIntegral.integral_mul_const, intervalIntegral.integral_ofReal,
    intervalIntegral.integral_ofReal, integral_radial_density (-T) T p.im (c - p.re) hc,
    integral_angular_density (-T) T p.im (c - p.re) hc]

/-- Direct four-edge computation for any strictly interior complex point. -/
theorem boundaryIntegral_cauchy (p : ℂ) (l r T : ℝ)
    (hl : l < p.re) (hr : p.re < r) (ht : |p.im| < T) :
    boundaryIntegral (fun z => (z - p)⁻¹) l r T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) := by
  let L := p.re - l
  let R := r - p.re
  let D := T + p.im
  let U := T - p.im
  have hL : 0 < L := sub_pos.mpr hl
  have hR : 0 < R := sub_pos.mpr hr
  have hD : 0 < D := by dsimp [D]; linarith [(abs_lt.mp ht).1]
  have hU : 0 < U := by dsimp [U]; linarith [(abs_lt.mp ht).2]
  have eL : l - p.re = -L := by dsimp [L]; ring
  have eD : -T - p.im = -D := by dsimp [D]; ring
  have hnD : -T - p.im ≠ 0 := by rw [eD]; exact neg_ne_zero.mpr (ne_of_gt hD)
  have hnU : T - p.im ≠ 0 := ne_of_gt hU
  have hnL : l - p.re ≠ 0 := ne_of_lt (sub_neg.mpr hl)
  have hnR : r - p.re ≠ 0 := ne_of_gt hR
  have hRD := arctan_reciprocal_corner R D hR hD
  have hLD := arctan_reciprocal_corner L D hL hD
  have hRU := arctan_reciprocal_corner R U hR hU
  have hLU := arctan_reciprocal_corner L U hL hU
  unfold boundaryIntegral
  rw [horizontal_cauchy p l r (-T) hnD, horizontal_cauchy p l r T hnU,
    I_mul_vertical_cauchy p r T hnR, I_mul_vertical_cauchy p l T hnL]
  rw [eL, eD]
  change
    (((Real.log (R ^ 2 + (-D) ^ 2) / 2 - Real.log ((-L) ^ 2 + (-D) ^ 2) / 2 : ℝ) : ℂ) -
      ((Real.arctan (R / (-D)) - Real.arctan ((-L) / (-D)) : ℝ) : ℂ) * Complex.I) -
    (((Real.log (R ^ 2 + U ^ 2) / 2 - Real.log ((-L) ^ 2 + U ^ 2) / 2 : ℝ) : ℂ) -
      ((Real.arctan (R / U) - Real.arctan ((-L) / U) : ℝ) : ℂ) * Complex.I) +
    (((Real.log (U ^ 2 + R ^ 2) / 2 - Real.log ((-D) ^ 2 + R ^ 2) / 2 : ℝ) : ℂ) +
      ((Real.arctan (U / R) - Real.arctan ((-D) / R) : ℝ) : ℂ) * Complex.I) -
    (((Real.log (U ^ 2 + (-L) ^ 2) / 2 - Real.log ((-D) ^ 2 + (-L) ^ 2) / 2 : ℝ) : ℂ) +
      ((Real.arctan (U / (-L)) - Real.arctan ((-D) / (-L)) : ℝ) : ℂ) * Complex.I) = _
  simp only [neg_sq, neg_div, div_neg, Real.arctan_neg]
  rw [add_comm (U ^ 2) (R ^ 2), add_comm (D ^ 2) (R ^ 2),
    add_comm (U ^ 2) (L ^ 2), add_comm (D ^ 2) (L ^ 2)]
  apply Complex.ext
  · simp; ring
  · simp
    linarith [hRD, hLD, hRU, hLU]

/-- An exterior point has zero integral, by analyticity on the filled rectangle. -/
theorem boundaryIntegral_cauchy_exterior (p : ℂ) (l r T : ℝ)
    (hlr : l ≤ r) (hT : 0 ≤ T) (hp : p ∉ closedRectangle l r T) :
    boundaryIntegral (fun z => (z - p)⁻¹) l r T = 0 := by
  apply boundaryIntegral_zero_on_rectangle _ l r T hlr hT
  intro z hz
  exact (analyticAt_id.sub analyticAt_const).inv
    (sub_ne_zero.mpr (by intro he; change z = p at he; exact hp (he ▸ hz)))

/-- Scalar linearity applies to the maintained boundary expression. -/
theorem boundaryIntegral_const_mul (c : ℂ) (f : ℂ → ℂ) (l r T : ℝ) :
    boundaryIntegral (fun z => c * f z) l r T = c * boundaryIntegral f l r T := by
  simp only [boundaryIntegral, horizontal, vertical, intervalIntegral.integral_const_mul]
  ring

/-- Swapping left and right reverses the maintained contour orientation. -/
theorem boundaryIntegral_swap (f : ℂ → ℂ) (l r T : ℝ) :
    boundaryIntegral f r l T = -boundaryIntegral f l r T := by
  unfold boundaryIntegral horizontal
  simp only [intervalIntegral.integral_symm r l]
  ring

/-- A principal coefficient is counted once at its actual complex location. -/
theorem boundaryIntegral_simple_pole (p c : ℂ) (l r T : ℝ)
    (hl : l < p.re) (hr : p.re < r) (ht : |p.im| < T) :
    boundaryIntegral (fun z => c / (z - p)) l r T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) * c := by
  simp only [div_eq_mul_inv, boundaryIntegral_const_mul, boundaryIntegral_cauchy p l r T hl hr ht]
  ring

/-- Finite edge integrability is checked before distributing integrals over the sum. -/
theorem boundaryIntegral_finset_sum {ι : Type*} (S : Finset ι) (f : ι → ℂ → ℂ)
    (l r T : ℝ) (hf : ∀ i ∈ S, EdgeIntegrable (f i) l r T) :
    boundaryIntegral (fun z => ∑ i ∈ S, f i z) l r T =
      ∑ i ∈ S, boundaryIntegral (f i) l r T := by
  classical
  unfold boundaryIntegral horizontal vertical
  rw [intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).1),
    intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).2.1),
    intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).2.2.1),
    intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).2.2.2)]
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, Finset.mul_sum]

/-- The exact finite rational principal sum has its fully normalized integral. -/
theorem boundaryIntegral_principalSum (S : Finset ℂ) (c : ℂ → ℂ) (l r T : ℝ)
    (hlr : l < r) (hT : 0 < T)
    (hS : ∀ p ∈ S, l < p.re ∧ p.re < r ∧ |p.im| < T) :
    boundaryIntegral (principalSum S c) l r T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) * ∑ p ∈ S, c p := by
  have he (p : ℂ) (hp : p ∈ S) : EdgeIntegrable (fun z => c p / (z - p)) l r T := by
    obtain ⟨hl, hr, ht⟩ := hS p hp
    apply edgeIntegrable_of_analytic_germs _ l r T hlr.le hT.le
    · intro y hy u hu
      apply analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      apply sub_ne_zero.mpr
      intro hz
      have him := congrArg Complex.im hz
      have hi : y = p.im := by simpa using him
      rw [hi] at hy
      linarith
    · intro d hd t ht'
      apply analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      apply sub_ne_zero.mpr
      intro hz
      have hre := congrArg Complex.re hz
      have hi : d = p.re := by simpa using hre
      rcases hd with rfl | rfl <;> linarith
  change boundaryIntegral (fun z => ∑ p ∈ S, c p / (z - p)) l r T = _
  rw [boundaryIntegral_finset_sum S (fun p z => c p / (z - p)) l r T he, Finset.mul_sum]
  exact Finset.sum_congr rfl (fun p hp => boundaryIntegral_simple_pole p (c p) l r T
    (hS p hp).1 (hS p hp).2.1 (hS p hp).2.2)

/-- Finite simple-principal-part residue theorem, derived from subtraction and normalization. -/
theorem boundaryIntegral_eq_coefficient_sum (S : Finset ℂ) (f : ℂ → ℂ) (c : ℂ → ℂ)
    (l r T : ℝ) (hlr : l < r) (hT : 0 < T)
    (hS : ∀ p ∈ S, l < p.re ∧ p.re < r ∧ |p.im| < T)
    (hreg : ∀ z ∈ closedRectangle l r T, z ∉ S → AnalyticAt ℂ f z)
    (hparts : ∀ p ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A p ∧
      f =ᶠ[𝓝[≠] p] fun z => c p / (z - p) + A z) :
    boundaryIntegral f l r T =
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I) * ∑ p ∈ S, c p := by
  rw [boundaryIntegral_eq_principalSum S f c l r T hlr hT hS hreg hparts,
    boundaryIntegral_principalSum S c l r T hlr hT hS]

end
end GRWTSK.Analysis.ComplexAnalysis.RectangularCauchyKernel
