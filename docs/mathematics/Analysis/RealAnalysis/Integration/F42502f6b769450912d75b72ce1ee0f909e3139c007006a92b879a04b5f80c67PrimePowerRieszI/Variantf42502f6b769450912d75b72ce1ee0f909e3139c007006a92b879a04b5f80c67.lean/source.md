# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.F42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67PrimePowerRieszI.Variantf42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1983d84dc0388d89ad0116c8e3532e9794195e8a` · SHA-256 `f42502f6b769450912d75b72ce1ee0f909e3139c007006a92b879a04b5f80c67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
import Zeta23.WeilEF.FullLine
import Mathlib.Topology.Piecewise
namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Set
open BoundaryRieszKernel BoundaryRieszLaplace
open scoped BigOperators

noncomputable def rieszTilt (A c y : ℝ) : ℂ :=
  (Set.Ioi (0 : ℝ)).indicator
    (fun y : ℝ ↦ Complex.exp (-(c : ℂ) * (y : ℂ)) * (extendedBoundaryKernel A y : ℂ)) y

theorem riesz_tilt_integrable (A c : ℝ) (hc : 0 < c) : Integrable (rieszTilt A c) := by
  exact (integrable_indicator_iff measurableSet_Ioi).mpr
    (boundary_extension_laplace_integrable A (c : ℂ) (by simpa using hc))

theorem riesz_tilt_continuous (A c : ℝ) : Continuous (rieszTilt A c) := by
  classical
  change Continuous ((Ioi (0 : ℝ)).piecewise
    (fun y : ℝ ↦ Complex.exp (-(c : ℂ) * (y : ℂ)) * (extendedBoundaryKernel A y : ℂ))
    (fun _ ↦ 0))
  refine Continuous.piecewise ?_ (by unfold extendedBoundaryKernel SourceScaledKernel.endpointPolynomialZero SourceScaledKernel.endpointPolynomialOne SourceScaledKernel.endpointPolynomialTwo; fun_prop) continuous_const
  intro y hy
  have hy0 : y = 0 := by simpa only [frontier_Ioi, mem_singleton_iff] using hy
  subst y
  simp [extendedBoundaryKernel]

theorem riesz_tilt_paper_fourier (A c t : ℝ) (hc : 0 < c) :
    Zeta23.paperFT (rieszTilt A c) t =
      boundaryRieszTransform A ((c : ℂ) - (t : ℂ) * Complex.I) := by
  rw [boundary_riesz_transform_eq_integral A _ (by simp; exact hc)]
  unfold Zeta23.paperFT rieszTilt boundaryExtensionLaplace
  rw [← integral_indicator measurableSet_Ioi]
  apply integral_congr_ae
  filter_upwards [] with y
  by_cases hy : y ∈ Ioi (0 : ℝ)
  · simp only [indicator_of_mem hy]
    rw [mul_assoc, mul_comm (extendedBoundaryKernel A y : ℂ), ← mul_assoc,
      ← Complex.exp_add]
    congr 2
    ring
  · simp [indicator_of_notMem hy]

theorem vertical_inverse_square_integrable (c : ℝ) (hc : c ≠ 0) :
    Integrable (fun t : ℝ ↦ (‖(c : ℂ) + (t : ℂ) * Complex.I‖ ^ 2)⁻¹) := by
  simp_rw [← Complex.normSq_eq_norm_sq, Complex.normSq_add_mul_I]
  apply (integrable_comp_mul_left_iff _ hc).mp
  have he : (fun t : ℝ ↦ (c ^ 2 + (c * t) ^ 2)⁻¹) =
      (fun t : ℝ ↦ (1 / c ^ 2) * (1 + t ^ 2)⁻¹) := by
    funext t
    field_simp
  rw [he]
  exact integrable_inv_one_add_sq.const_mul _

theorem vertical_inverse_power_integrable (c : ℝ) (hc : 0 < c) (n : ℕ) (hn : 2 ≤ n) :
    Integrable (fun t : ℝ ↦ (((c : ℂ) + (t : ℂ) * Complex.I) ^ n)⁻¹) := by
  have hn2 : n = 2 + (n - 2) := by omega
  rw [hn2]
  simp_rw [pow_add, mul_inv_rev]
  have hi : Integrable (fun t : ℝ ↦ (((c : ℂ) + (t : ℂ) * Complex.I) ^ 2)⁻¹) := by
    apply (vertical_inverse_square_integrable c hc.ne').mono' (by fun_prop)
    filter_upwards [] with t
    simp [norm_inv, norm_pow]
  have hb : ∀ t : ℝ, ‖(((c : ℂ) + (t : ℂ) * Complex.I) ^ (n - 2))⁻¹‖ ≤
      c⁻¹ ^ (n - 2) := by
    intro t
    rw [norm_inv, norm_pow, ← inv_pow]
    apply pow_le_pow_left₀ (by positivity)
    have hnorm : 0 < ‖(c : ℂ) + (t : ℂ) * Complex.I‖ := by
      apply norm_pos_iff.mpr
      intro hz
      have hre := congrArg Complex.re hz
      simp at hre
      linarith
    apply (inv_le_inv₀ hnorm hc).mpr
    simpa [abs_of_pos hc] using Complex.abs_re_le_norm ((c : ℂ) + (t : ℂ) * Complex.I)
  exact hi.bdd_mul (c := c⁻¹ ^ (n - 2)) (by fun_prop) (Filter.Eventually.of_forall hb)

theorem boundary_riesz_line_integrable (A c : ℝ) (hc : 0 < c) :
    Integrable (fun t : ℝ ↦ boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  have he (t : ℝ) : boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) =
      ∑ j ∈ Finset.range 9,
        ((rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
          ((FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A : ℂ) * (A : ℂ) ^ j)) *
        ((((c : ℂ) + (t : ℂ) * Complex.I) ^ (j + 6))⁻¹ -
          (1 / 2 : ℂ) * (((c : ℂ) + (t : ℂ) * Complex.I) ^ (j + 8))⁻¹ +
            (1 / 16 : ℂ) * (((c : ℂ) + (t : ℂ) * Complex.I) ^ (j + 10))⁻¹) := by
    have hne : (c : ℂ) + (t : ℂ) * Complex.I ≠ 0 := by
      intro hz
      have hre := congrArg Complex.re hz
      simp at hre
      linarith
    unfold boundaryRieszTransform
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    field_simp
    ring
  simp_rw [he]
  apply integrable_finsetSum
  intro j hj
  exact (((vertical_inverse_power_integrable c hc (j + 6) (by omega)).sub
    ((vertical_inverse_power_integrable c hc (j + 8) (by omega)).const_mul (1 / 2 : ℂ))).add
    ((vertical_inverse_power_integrable c hc (j + 10) (by omega)).const_mul (1 / 16 : ℂ))).const_mul _

theorem riesz_tilt_fourier_integrable (A c : ℝ) (hc : 0 < c) :
    Integrable (FourierTransform.fourier (rieszTilt A c)) := by
  have hp : Integrable (fun t : ℝ ↦ Zeta23.paperFT (rieszTilt A c) t) := by
    have h := (boundary_riesz_line_integrable A c hc).comp_mul_left' (by norm_num : (-1 : ℝ) ≠ 0)
    apply h.congr
    filter_upwards [] with t
    rw [riesz_tilt_paper_fourier A c t hc]
    congr 2
    push_cast
    ring
  have h := hp.comp_mul_left' (R := -(2 * Real.pi))
    (neg_ne_zero.mpr (mul_ne_zero (by norm_num) Real.pi_ne_zero))
  apply h.congr
  filter_upwards [] with t
  rw [Zeta23.EF.paperFT_ofReal_eq_fourier]
  field_simp

theorem riesz_half_line_inversion (A c y : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) *
        Complex.exp (Complex.I * (t : ℂ) * (y : ℂ)) =
      (Real.exp (-c * y) : ℂ) * (Ioi (0 : ℝ)).indicator
        (fun y : ℝ ↦ (extendedBoundaryKernel A y : ℂ)) y := by
  have hi := Zeta23.EF.paper_inversion (riesz_tilt_continuous A c)
    (riesz_tilt_integrable A c hc) (riesz_tilt_fourier_integrable A c hc) y
  rw [← integral_neg_eq_self] at hi
  simp_rw [riesz_tilt_paper_fourier A c _ hc] at hi
  have he : (fun t : ℝ ↦ boundaryRieszTransform A ((c : ℂ) - ((-t : ℝ) : ℂ) * Complex.I) *
      Complex.exp (-Complex.I * ((-t : ℝ) : ℂ) * (y : ℂ))) =
      (fun t : ℝ ↦ boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) *
        Complex.exp (Complex.I * (t : ℂ) * (y : ℂ))) := by
    funext t
    simp only [Complex.ofReal_neg, mul_neg, neg_mul, neg_neg, sub_neg_eq_add]
  rw [he] at hi
  rw [← hi]
  unfold rieszTilt
  by_cases hy : y ∈ Ioi (0 : ℝ)
  · simp only [indicator_of_mem hy]
    rw [Complex.ofReal_exp]
    congr 2
    push_cast
    rfl
  · simp [indicator_of_notMem hy]

noncomputable def rieszLineTransform (A c t : ℝ) : ℂ :=
  Complex.exp (2 * (A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I)) *
    boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I)

noncomputable def rieszWindow (A y : ℝ) : ℂ :=
  (Iio (2 * A)).indicator (fun y : ℝ ↦ (extendedBoundaryKernel A (2 * A - y) : ℂ)) y

theorem riesz_line_transform_integrable (A c : ℝ) (hc : 0 < c) :
    Integrable (rieszLineTransform A c) := by
  apply (boundary_riesz_line_integrable A c hc).bdd_mul
    (c := Real.exp (2 * A * c)) (by fun_prop)
  filter_upwards [] with t
  rw [Complex.norm_exp]
  simp

theorem riesz_line_transform_inversion (A c y : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, rieszLineTransform A c t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        rieszWindow A y * (Real.exp (c * y) : ℂ) := by
  have he : (fun t : ℝ ↦ rieszLineTransform A c t *
      Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      (fun t : ℝ ↦ (Real.exp (2 * A * c) : ℂ) *
        (boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) *
          Complex.exp (Complex.I * (t : ℂ) * ((2 * A - y : ℝ) : ℂ)))) := by
    funext t
    unfold rieszLineTransform
    rw [Complex.ofReal_exp]
    calc _ = (Complex.exp (2 * (A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) *
          boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) := by ring
      _ = (Complex.exp ((2 * A * c : ℝ) : ℂ) *
        Complex.exp (Complex.I * (t : ℂ) * ((2 * A - y : ℝ) : ℂ))) *
          boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) := by
        rw [← Complex.exp_add, ← Complex.exp_add]
        congr 2
        push_cast
        ring
      _ = _ := by ring
  rw [he, integral_const_mul]
  rw [mul_left_comm (1 / (2 * Real.pi) : ℂ) (Real.exp (2 * A * c) : ℂ)]
  rw [riesz_half_line_inversion A c (2 * A - y) hc]
  unfold rieszWindow
  by_cases hy : y < 2 * A
  · rw [indicator_of_mem (show 2 * A - y ∈ Ioi (0 : ℝ) by exact sub_pos.mpr hy),
      indicator_of_mem (show y ∈ Iio (2 * A) from hy)]
    push_cast
    rw [← mul_assoc, ← Complex.exp_add]
    have hexp : 2 * (A : ℂ) * (c : ℂ) + -(c : ℂ) * (2 * (A : ℂ) - (y : ℂ)) =
        ((c * y : ℝ) : ℂ) := by push_cast; ring
    rw [hexp]
    push_cast
    ring
  · rw [indicator_of_notMem (show 2 * A - y ∉ Ioi (0 : ℝ) by
        simp only [mem_Ioi]; linarith), indicator_of_notMem (show y ∉ Iio (2 * A) from hy)]
    simp

end FormalResearch.RiemannHypothesis.PrimePowerPerron
```
