import FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
import Mathlib.Topology.Piecewise
import FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic
import FormalResearch.RiemannHypothesis.PoleSourceDetection
import FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
import Zeta23.WeilEF.FullLine
import FormalResearch.RiemannHypothesis.BoundaryRieszKernel
import FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint

/-!
# Complete strict Riesz sum and actual source Perron inversion

The finite Riesz identity retains every native von Mangoldt atom and its strict
cutoff. The direct bilateral source formula is proved on every vertical line
`Re z > 1/2` using pinned Zeta23 tilted Fourier inversion and the proved
absolutely convergent logarithmic-derivative Dirichlet series. Genuine
integrability and finite-height convergence are explicit.

The half-line polynomial continuation has its own proved Perron formula,
using a genuinely integrable exponential tilt and native Fourier inversion.
Its exact comparison with the compact source retains both endpoint branches
and the central rational correction. Source nonvanishing is not transferred
to the rational transform. No contour shift or omitted residue is assumed.
These representation theorems prove no arithmetic uniform bound or RH, and
impose no simplicity assumption on zeros.

AI attribution: Codex authored this module and its proofs.
-/

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateTailReduction Realization CorrelationRegularity
open SourceLaplaceDetection PoleCorrelationRegularity
open SourceBoundaryArithmetic SourceBoundaryLayer BoundaryRieszKernel
open scoped BigOperators

noncomputable section

/-- The actual bilateral source multiplier paired with the shifted zeta logarithmic derivative. -/
def sourcePerronIntegrand (A : ℝ) (z : ℂ) : ℂ :=
  (-deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2)) * sourceLaplace A z

/-- R5: the exact complete strict finite sum evaluates the genuine physical extension interval. -/
theorem prime_power_riesz_sum_exact (A : ℝ) (hA : 1 ≤ A) :
    A ^ 9 * primePowerContribution explicitSecondDerivative A =
      ∑ n ∈ primeIndices A, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        extendedBoundaryKernel A (Real.log (Real.exp (2 * A) / n)) := by
  change A ^ 9 * (∑ n ∈ primeIndices A, _) = _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < n := by have := ((mem_primeIndices_iff A n).mp hn).1; omega
  rw [← boundary_distance_eq_log_cutoff_ratio A n hnpos,
    extended_boundary_kernel_eq_boundary_kernel A (boundaryDistance A n) hA
      (boundary_distance_pos_of_mem_primeIndices A n hn).le
      (boundary_distance_lt_two_mul_of_mem_primeIndices A n hn).le,
    correlation_at_log_eq_boundary A (by linarith) n]
  field_simp

/-- A cutoff-equality atom has zero extension value; the native sum still excludes it. -/
theorem riesz_cutoff_endpoint_atom_zero (A : ℝ) (n : ℕ)
    (hn : (n : ℝ) = Real.exp (2 * A)) :
    ArithmeticFunction.vonMangoldt n / Real.sqrt n *
      extendedBoundaryKernel A (Real.log (Real.exp (2 * A) / n)) = 0 := by
  rw [hn]
  simp [extendedBoundaryKernel, Real.exp_ne_zero]

/-- The logarithmic derivative has its native Dirichlet expansion in the certified half-plane. -/
theorem shifted_von_mangoldt_dirichlet (z : ℂ) (hz : 1 / 2 < z.re) :
    -deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) =
      LSeries (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) := by
  exact (ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div
    (by simp only [Complex.add_re, Complex.div_re, Complex.one_re, Complex.one_im]
        norm_num; linarith)).symm

/-- The full von Mangoldt Dirichlet series is summable on the shifted Perron half-plane. -/
theorem shifted_von_mangoldt_summable (z : ℂ) (hz : 1 / 2 < z.re) :
    LSeriesSummable (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) := by
  apply ArithmeticFunction.LSeriesSummable_vonMangoldt
  simp only [Complex.add_re]
  norm_num
  linarith

/-- The vertical-line test is exactly the source bilateral transform, with its original sign. -/
theorem source_hfn_eq_bilateral_laplace (A : ℝ) (z : ℂ) :
    Zeta23.WeilEF.Hfn (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))
      (z + 1 / 2) = sourceLaplace A z := by
  unfold Zeta23.WeilEF.Hfn Zeta23.paperFT sourceLaplace bilateralLaplace
  apply integral_congr_ae
  filter_upwards [] with t
  congr 2
  field_simp
  ring

/-- Positive-exponential weighting gives the real-frequency transform of the tilted source. -/
theorem source_laplace_on_line_eq_tilted_fourier (A c t : ℝ) :
    sourceLaplace A ((c : ℂ) + (t : ℂ) * Complex.I) =
      Zeta23.paperFT (Zeta23.WeilEF.tilt
        (fun x ↦ (sourceCorrelation explicitSecondDerivative A x : ℂ)) c) t := by
  rw [← source_hfn_eq_bilateral_laplace]
  rw [show ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 =
    (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I) by push_cast; ring]
  rw [Zeta23.WeilEF.Hfn_line]
  congr 2
  ring

/-- The actual source satisfies the smoothness required by pinned inversion. -/
theorem source_complex_kernel_cont_diff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) := by
  exact Complex.ofRealCLM.contDiff.comp
    ((source_correlation_cont_diff_four A hA).of_le (by norm_num))

/-- The physical complex source retains its proved compact support. -/
theorem source_complex_kernel_has_compact_support (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left (g := Complex.ofReal) rfl

/-- The all-natural-number prime side equals the strict native sum, including endpoint vanishing. -/
theorem source_prime_sum_eq_strict (A : ℝ) (hA : 1 ≤ A) :
    (∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) : ℂ)) =
        (primePowerContribution explicitSecondDerivative A : ℂ) := by
  classical
  rw [tsum_eq_sum (s := primeIndices A) (fun n hn ↦ ?_)]
  · unfold primePowerContribution
    push_cast
    rfl
  · by_cases hn2 : 2 ≤ n
    · have hcut : Real.exp (2 * A) ≤ (n : ℝ) := by
        by_contra h
        exact hn ((mem_primeIndices_iff A n).mpr ⟨hn2, lt_of_not_ge h⟩)
      have hlog : 2 * A ≤ Real.log n := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n) (by linarith)
        (hlog.trans (le_abs_self _))]
      simp
    · have hs : n = 0 ∨ n = 1 := by omega
      rcases hs with rfl | rfl <;> simp

/-- R7: the direct source Perron integral equals the full native prime-power contribution. -/
theorem source_perron_integral_exact (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    (primePowerContribution explicitSecondDerivative A : ℂ) =
      (1 / (2 * Real.pi) : ℂ) *
        ∫ t : ℝ, sourcePerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  have hp := Zeta23.WeilEF.prime_side_line
    (source_complex_kernel_cont_diff_two A hA)
    (source_complex_kernel_has_compact_support A hA)
    (c := c + 1 / 2) (by linarith)
  rw [source_prime_sum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  have hs : ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
      ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 := by push_cast; ring
  rw [hs, source_hfn_eq_bilateral_laplace]
  unfold sourcePerronIntegrand logDeriv
  simp only [Pi.div_apply]
  ring

/-- The direct Perron integrand is genuinely integrable on every line to the right of one half. -/
theorem source_perron_integrable (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    Integrable (fun t : ℝ ↦ sourcePerronIntegrand A
      ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  let k : ℝ → ℂ := fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have hF := Zeta23.EF.integrable_fourier_of_contDiff_two
    (Zeta23.WeilEF.tilt_contDiff (source_complex_kernel_cont_diff_two A hA) c)
    (Zeta23.WeilEF.tilt_hasCompactSupport (source_complex_kernel_has_compact_support A hA) c)
  have hp := Zeta23.EF.integrable_paperFT_ofReal hF
  obtain ⟨M, hM, hbound⟩ := Zeta23.WeilEF.norm_logDeriv_zeta_le_of_one_lt_re
    (c := c + 1 / 2) (by linarith)
  have hi : Integrable (fun t : ℝ ↦ Zeta23.paperFT (Zeta23.WeilEF.tilt k c) t *
      (-logDeriv riemannZeta (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I))) := by
    exact hp.mul_bdd (c := M)
      ((Zeta23.WeilEF.continuous_logDeriv_zeta_line (c := c + 1 / 2)
        (by linarith)).neg.aestronglyMeasurable)
      (Filter.Eventually.of_forall fun t ↦ by rw [norm_neg]; exact hbound t)
  apply hi.congr
  filter_upwards [] with t
  unfold sourcePerronIntegrand
  rw [source_laplace_on_line_eq_tilted_fourier]
  unfold logDeriv
  simp only [Pi.div_apply]
  rw [show ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
    ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 by push_cast; ring]
  dsimp [k]
  ring

/-- Finite-height integrals use the same native direct integrand and orientation. -/
def sourcePerronTruncation (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ∫ t in (-T)..T, sourcePerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I)

/-- Truncating the genuinely integrable line introduces no unproved limiting step. -/
theorem source_perron_truncation_tendsto (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    Filter.Tendsto (sourcePerronTruncation A c) Filter.atTop
      (nhds (primePowerContribution explicitSecondDerivative A : ℂ)) := by
  have h := intervalIntegral_tendsto_integral (source_perron_integrable A hA c hc)
    (Filter.tendsto_neg_atTop_atBot) (Filter.tendsto_id : Filter.Tendsto (fun T : ℝ ↦ T)
      Filter.atTop Filter.atTop)
  unfold sourcePerronTruncation
  rw [source_perron_integral_exact A hA c hc]
  exact h.const_mul _

end
end FormalResearch.RiemannHypothesis.PrimePowerPerron

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open BoundaryRieszKernel BoundaryRieszLaplace
open scoped BigOperators

/-- The positive-half-line polynomial has its genuine integrable exponential tilt. -/
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
  refine Continuous.piecewise ?_ ?_ continuous_const
  · intro y hy
    have hy0 : y = 0 := by simpa only [frontier_Ioi, mem_singleton_iff] using hy
    subst y
    simp [extendedBoundaryKernel]
  · unfold extendedBoundaryKernel SourceScaledKernel.endpointPolynomialZero
      SourceScaledKernel.endpointPolynomialOne SourceScaledKernel.endpointPolynomialTwo
    fun_prop

theorem riesz_tilt_paper_fourier (A c t : ℝ) (hc : 0 < c) :
    Zeta23.paperFT (rieszTilt A c) t =
      boundaryRieszTransform A ((c : ℂ) - (t : ℂ) * Complex.I) := by
  rw [boundary_riesz_transform_eq_integral A _ (by simpa using hc)]
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
          ((sourceNormalization A : ℂ) * (A : ℂ) ^ j)) *
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
    ((vertical_inverse_power_integrable c hc (j + 10) (by omega)).const_mul
      (1 / 16 : ℂ))).const_mul _

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

/-- The translated rational transform used in finite-radius Perron inversion. -/
noncomputable def rieszLineTransform (A c t : ℝ) : ℂ :=
  Complex.exp (2 * (A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I)) *
    boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I)

/-- The strict finite-window kernel agrees with the polynomial extension at every native atom. -/
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

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Complex Zeta23 Zeta23.EF
open scoped ArithmeticFunction
-- These three helpers extract the integrability and inversion content of pinned
-- Zeta23 vertical-line proofs, without a compact-support premise on the kernel.
private theorem perron_per_n_integral (φ k : ℝ → ℂ) (c : ℝ)
    (hInv : ∀ y : ℝ, (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        k y * (Real.exp ((c - 1 / 2) * y) : ℂ)) (n : ℕ) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n =
          ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [LSeries.term]
  · have hn1 : (1:ℝ) ≤ (n:ℝ) := by exact_mod_cast hn
    have hn0 : (0:ℝ) < (n:ℝ) := by linarith
    have hnC : (n:ℂ) ≠ 0 := by exact_mod_cast hn.ne'
    have hterm : ∀ t : ℝ, LSeries.term (fun n => (Λ n : ℂ)) (c + t * I) n
        = ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ) * cexp (-I * t * Real.log n) := by
      intro t
      rw [LSeries.term_of_ne_zero hn.ne', div_eq_mul_inv, ← Complex.cpow_neg]
      have hsplit : (-((c:ℂ) + t * I)) = (-(c:ℂ)) + (-(I * t)) := by ring
      rw [hsplit, Complex.cpow_add _ _ hnC]
      have h1 : (n:ℂ) ^ (-(c:ℂ)) = (((n:ℝ) ^ (-c) : ℝ) : ℂ) := by
        rw [show ((n:ℂ)) = (((n:ℝ):ℂ)) by push_cast; rfl,
          show (-(c:ℂ)) = ((-c : ℝ) : ℂ) by push_cast; rfl,
          ← Complex.ofReal_cpow hn0.le]
      have h2 : (n:ℂ) ^ (-(I * t)) = cexp (-I * t * Real.log n) := by
        rw [Complex.cpow_def_of_ne_zero hnC]
        congr 1
        rw [show ((n:ℂ)) = (((n:ℝ):ℂ)) by push_cast; rfl, ← Complex.ofReal_log hn0.le]
        ring
      rw [h1, h2]
      ring
    simp_rw [hterm]
    have hre : (fun t : ℝ => φ t
        * (((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ) * cexp (-I * t * Real.log n)))
        = fun t : ℝ => (((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * (φ t * cexp (-I * t * Real.log n)) := by
      funext t
      ring
    rw [hre, Zeta23.EF.cintegral_const_mul]
    rw [show (1 / (2 * (Real.pi : ℂ))) * ((((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
        * ∫ t : ℝ, φ t * cexp (-I * t * Real.log n))
        = (((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * ((1 / (2 * (Real.pi : ℂ))) * ∫ t : ℝ, φ t
            * cexp (-I * t * Real.log n)) from by ring]
    rw [hInv (Real.log n)]
    have hexp : Real.exp ((c - 1/2) * Real.log n) = (n:ℝ) ^ (c - 1/2) := by
      rw [Real.rpow_def_of_pos hn0]
      ring_nf
    have hpow : ((n:ℝ) ^ (-c) : ℝ) * ((n:ℝ) ^ (c - 1/2) : ℝ) = ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) := by
      rw [← Real.rpow_add hn0]
      congr 1
      ring
    have hsqrt : ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) = 1 / Real.sqrt n := by
      rw [Real.rpow_neg hn0.le, Real.sqrt_eq_rpow]
      exact (one_div _).symm
    calc ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
        * (k (Real.log n) * ((Real.exp ((c - 1/2) * Real.log n) : ℝ) : ℂ))
        = ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
          * (k (Real.log n) * (((n:ℝ) ^ (c - 1/2) : ℝ) : ℂ)) := by rw [hexp]
      _ = ((((Λ n : ℝ) * ((n:ℝ) ^ (-c) * (n:ℝ) ^ (c - 1/2)) : ℝ)) : ℂ) * k (Real.log n) := by
          push_cast
          ring
      _ = ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
          rw [hpow, hsqrt, mul_one_div]


private theorem perron_line_integral_swap (φ : ℝ → ℂ) (hφ : Integrable φ)
    {c : ℝ} (hc1 : 1 < c) :
    ∫ t : ℝ, (∑' n : ℕ, φ t *
      LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n) =
          ∑' n : ℕ, ∫ t : ℝ, φ t *
            LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
              ((c : ℂ) + (t : ℂ) * Complex.I) n := by
  have hpfi := hφ
  have hre : ∀ t : ℝ, ((c:ℂ) + t * I).re = c := by
    intro t
    simp
  have hnorm : ∀ (n : ℕ) (t : ℝ), ‖LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖
      = if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)) := by
    intro n t
    rw [LSeries.norm_term_eq, hre, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg, Real.rpow_neg (Nat.cast_nonneg n),
      div_eq_mul_inv]
  have hcont : ∀ n : ℕ, Continuous (fun t : ℝ =>
      LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n) := by
    intro n
    rcases eq_or_ne n 0 with rfl | hn
    · simpa [LSeries.term_zero] using continuous_const
    · simp only [LSeries.term_of_ne_zero hn]
      refine continuous_const.div ?_ (fun t => ?_)
      · refine Continuous.const_cpow (by fun_prop) (Or.inl ?_)
        exact_mod_cast hn
      · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))
  have hint : ∀ n : ℕ, Integrable (fun t : ℝ => φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n) := by
    intro n
    refine hpfi.mul_bdd (c := if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)))
      (hcont n).aestronglyMeasurable ?_
    filter_upwards with t
    rw [hnorm n t]
  have heval : ∀ n : ℕ, (∫ t : ℝ, ‖φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖)
      = (∫ t : ℝ, ‖φ t‖)
        * (if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    intro n
    rw [← integral_mul_const]
    refine integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    simp only
    rw [norm_mul, hnorm n t]
  have hcn : Summable (fun n : ℕ => if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    have hs : LSeriesSummable (fun n => (Λ n : ℂ)) (c : ℂ) :=
      ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hc1)
    have hns : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖) :=
      summable_norm_iff.mpr hs
    refine hns.congr fun n => ?_
    simpa using hnorm n 0
  have hsum : Summable (fun n : ℕ => ∫ t : ℝ, ‖φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖) := by
    refine ((hcn.mul_left (∫ t : ℝ, ‖φ t‖)).congr fun n => ?_)
    rw [heval n]
  exact (MeasureTheory.hasSum_integral_of_summable_integral_norm hint hsum).tsum_eq.symm


private theorem perron_prime_side_line (φ k : ℝ → ℂ) (hφ : Integrable φ)
    (c : ℝ) (hc : 1 < c)
    (hInv : ∀ y : ℝ, (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        k y * (Real.exp ((c - 1 / 2) * y) : ℂ)) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * (-logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
        ∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  have h1 (t : ℝ) : φ t * (-logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
      ∑' n : ℕ, φ t * LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n := by
    have hre : 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hc
    have h2 := ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre
    have he : -logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) =
        LSeries (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
          ((c : ℂ) + (t : ℂ) * Complex.I) := by
      rw [logDeriv, Pi.div_apply, h2]
      ring
    rw [he, LSeries, ← tsum_mul_left]
  rw [integral_congr_ae (Filter.Eventually.of_forall h1),
    perron_line_integral_swap φ hφ hc, ← tsum_mul_left]
  exact tsum_congr fun n ↦ perron_per_n_integral φ k c hInv n

end FormalResearch.RiemannHypothesis.PrimePowerPerron

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceLaplaceDetection BoundaryRieszKernel
open PoleSourceDetection SourceLaplaceEndpoint SourceBumpLaplace
open scoped BigOperators

/-- The entire source retains two reflected rational branches and their central correction. -/
theorem source_riesz_exact_comparison (A : ℝ) (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    (A : ℂ) ^ 9 * sourceLaplace A z =
      Complex.exp (2 * (A : ℂ) * z) * boundaryRieszTransform A z +
        Complex.exp (-2 * (A : ℂ) * z) * boundaryRieszTransform A (-z) -
          294912 * (z ^ 2 - 1 / 4) ^ 2 *
            ZeroSideTargets.transformPolynomial ((A : ℂ) * z) *
            ZeroSideTargets.transformPolynomial (-(A : ℂ) * z) /
              ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8 * z ^ 18) := by
  have hAr : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hAr
  have hZ : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos A hA)
  rw [source_laplace_eq_bump_square A (by linarith) z,
    bump_laplace_endpoint_formula _ (mul_ne_zero hAc hz),
    boundary_riesz_transform_eq_source_polynomial A hAr z hz,
    boundary_riesz_transform_eq_source_polynomial A hAr (-z) (neg_ne_zero.mpr hz)]
  have hp : Complex.exp ((A : ℂ) * z) ^ 2 = Complex.exp (2 * (A : ℂ) * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hm : Complex.exp (-((A : ℂ) * z)) ^ 2 = Complex.exp (-2 * (A : ℂ) * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hpm : Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z)) = 1 := by
    rw [← Complex.exp_add]
    simp
  have he (p m : ℂ) :
      (Complex.exp ((A : ℂ) * z) * p - Complex.exp (-((A : ℂ) * z)) * m) ^ 2 =
        Complex.exp (2 * (A : ℂ) * z) * p ^ 2 +
          Complex.exp (-2 * (A : ℂ) * z) * m ^ 2 - 2 * p * m := by
    calc _ = Complex.exp ((A : ℂ) * z) ^ 2 * p ^ 2 +
        Complex.exp (-((A : ℂ) * z)) ^ 2 * m ^ 2 -
          2 * (Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z))) * p * m := by ring
      _ = _ := by rw [hp, hm, hpm]; ring
  rw [mul_pow, he]
  unfold ZeroSideTargets.transformPolynomial
  field_simp
  ring
end FormalResearch.RiemannHypothesis.PrimePowerPerron

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction SourceBoundaryArithmetic BoundaryRieszKernel
open SourceLaplaceDetection
open scoped BigOperators
noncomputable section

/-- The rational half-line transform paired with the same shifted zeta logarithmic derivative. -/
def rieszPerronIntegrand (A : ℝ) (z : ℂ) : ℂ :=
  (-deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2)) *
    Complex.exp (2 * (A : ℂ) * z) * boundaryRieszTransform A z

/-- The polynomial window retains precisely the full strict native von Mangoldt inventory. -/
theorem riesz_prime_sum_eq_strict (A : ℝ) (hA : 1 ≤ A) :
    (∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      rieszWindow A (Real.log n)) =
        ((A ^ 9 * primePowerContribution explicitSecondDerivative A : ℝ) : ℂ) := by
  classical
  rw [tsum_eq_sum (s := primeIndices A) (fun n hn ↦ ?_)]
  · rw [prime_power_riesz_sum_exact A hA]
    push_cast
    apply Finset.sum_congr rfl
    intro n hn
    have hcut := boundary_distance_pos_of_mem_primeIndices A n hn
    have hnpos : 0 < n := by have := ((mem_primeIndices_iff A n).mp hn).1; omega
    unfold rieszWindow
    rw [indicator_of_mem (show Real.log n ∈ Iio (2 * A) by
      change Real.log n < 2 * A
      unfold boundaryDistance at hcut
      linarith), ← boundary_distance_eq_log_cutoff_ratio A n hnpos]
    rfl
  · by_cases hn2 : 2 ≤ n
    · have hcut : Real.exp (2 * A) ≤ (n : ℝ) := by
        by_contra h
        exact hn ((mem_primeIndices_iff A n).mpr ⟨hn2, lt_of_not_ge h⟩)
      have hlog : 2 * A ≤ Real.log n := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      unfold rieszWindow
      rw [indicator_of_notMem (show Real.log n ∉ Iio (2 * A) from not_lt.mpr hlog)]
      simp
    · have hs : n = 0 ∨ n = 1 := by omega
      rcases hs with rfl | rfl <;> simp

/-- R6: genuine half-line Fourier inversion gives the complete strict finite Riesz sum. -/
theorem riesz_perron_integral_exact (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    ((A ^ 9 * primePowerContribution explicitSecondDerivative A : ℝ) : ℂ) =
      (1 / (2 * Real.pi) : ℂ) *
        ∫ t : ℝ, rieszPerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  have hp := perron_prime_side_line (rieszLineTransform A c) (rieszWindow A)
    (riesz_line_transform_integrable A c (by linarith)) (c + 1 / 2) (by linarith)
    (fun y ↦ by simpa using riesz_line_transform_inversion A c y (by linarith))
  rw [riesz_prime_sum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  have hs : ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
      ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 := by push_cast; ring
  rw [hs]
  unfold rieszPerronIntegrand rieszLineTransform logDeriv
  simp only [Pi.div_apply]
  ring

/-- The rational Perron integrand is genuinely integrable in the shifted Dirichlet half-plane. -/
theorem riesz_perron_integrable (A c : ℝ) (hc : 1 / 2 < c) :
    Integrable (fun t : ℝ ↦ rieszPerronIntegrand A
      ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  obtain ⟨M, hM, hbound⟩ := Zeta23.WeilEF.norm_logDeriv_zeta_le_of_one_lt_re
    (c := c + 1 / 2) (by linarith)
  have hi : Integrable (fun t : ℝ ↦ rieszLineTransform A c t *
      (-logDeriv riemannZeta (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I))) :=
    (riesz_line_transform_integrable A c (by linarith)).mul_bdd (c := M)
      ((Zeta23.WeilEF.continuous_logDeriv_zeta_line (c := c + 1 / 2)
        (by linarith)).neg.aestronglyMeasurable)
      (Filter.Eventually.of_forall fun t ↦ by rw [norm_neg]; exact hbound t)
  apply hi.congr
  filter_upwards [] with t
  rw [show ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
    ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 by push_cast; ring]
  unfold rieszPerronIntegrand rieszLineTransform logDeriv
  simp only [Pi.div_apply]
  ring

/-- Finite-height rational integrals have the same orientation as the direct source contour. -/
def rieszPerronTruncation (A c T : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ∫ t in (-T)..T, rieszPerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I)

/-- Genuine line integrability supplies the finite-height Riesz inversion limit. -/
theorem riesz_perron_truncation_tendsto (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    Filter.Tendsto (rieszPerronTruncation A c) Filter.atTop
      (nhds ((A ^ 9 * primePowerContribution explicitSecondDerivative A : ℝ) : ℂ)) := by
  have h := intervalIntegral_tendsto_integral (riesz_perron_integrable A c hc)
    Filter.tendsto_neg_atTop_atBot (Filter.tendsto_id : Filter.Tendsto (fun T : ℝ ↦ T)
      Filter.atTop Filter.atTop)
  unfold rieszPerronTruncation
  rw [riesz_perron_integral_exact A hA c hc]
  exact h.const_mul _

end
end FormalResearch.RiemannHypothesis.PrimePowerPerron
