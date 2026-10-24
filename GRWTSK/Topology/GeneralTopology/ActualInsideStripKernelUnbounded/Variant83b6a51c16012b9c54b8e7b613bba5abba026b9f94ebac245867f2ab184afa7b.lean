import ActualInsideStripKernelNegativeSequence

/-!
The literal actual strip kernel is unbounded below on a prescribed sequence of
actual source scales. This kernel statement asserts no zeta-zero membership,
no sign for the actual full zero sum, and no RH or covariance divergence.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded
open Filter
open scoped Topology
open SourcePairing ActualCorrelationOppositeHalf
open SourceActualComplexEndpointAsymptotic ActualComplexCorrelationAsymptotic
open ActualPrescribedCorrelationNegativeSequence ActualInsideStripKernelNegativeSequence
noncomputable section

private theorem sequence_tendsto :
    Tendsto actualInsideStripSequence atTop atTop := by
  exact Tendsto.const_mul_atTop (by norm_num : (0 : ℝ) < 2)
    actualPrescribedScaleSequence_tendsto

private theorem sequence_scale_pos {n : ℕ} (hA : 1 ≤ actualInsideStripSequence n) :
    0 < actualInsideStripSequence n ^ 9 * sourceNormalization (actualInsideStripSequence n) *
      Real.exp (-actualInsideStripSequence n / 2) := by
  have hZ := source_normalization_pos (actualInsideStripSequence n) hA
  have hp : 0 < actualInsideStripSequence n := by linarith
  positivity

/-- The entire positive source normalization vanishes on the prescribed actual scales. -/
theorem actualInsideStrip_sequence_scale_tendsto_zero :
    Tendsto (fun n : ℕ =>
      actualInsideStripSequence n ^ 9 * sourceNormalization (actualInsideStripSequence n) *
        Real.exp (-actualInsideStripSequence n / 2)) atTop (𝓝 (0 : ℝ)) := by
  have hp : 0 < actualInsideStripMode.re := by norm_num [actualInsideStripMode]
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualCorrelationAsymptoticScale_tendsto_zero hp).comp sequence_tendsto)
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualInsideStripSequence_phase]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, sub_zero]

/-- Every real lower threshold is eventually crossed by the literal actual strip kernel. -/
theorem actualInsideStripKernel_eventually_below (L : ℝ) :
    ∀ᶠ n in atTop,
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re < L := by
  have hn := actualInsideStripKernel_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-301989888 : ℝ) < -150994944)
  have hs := (actualInsideStrip_sequence_scale_tendsto_zero.mul_const |L|).eventually_lt_const
    (by norm_num : (0 : ℝ) * |L| < 150994944)
  filter_upwards [hn, hs, sequence_tendsto.eventually_ge_atTop 1] with n hn hs hA
  let scale : ℝ := actualInsideStripSequence n ^ 9 *
    sourceNormalization (actualInsideStripSequence n) * Real.exp (-actualInsideStripSequence n / 2)
  have hp : 0 < scale := sequence_scale_pos hA
  change scale *
    (actualBilateralCorrelationTransform (actualInsideStripSequence n) actualInsideStripMode).re <
      -150994944 at hn
  change scale * |L| < 150994944 at hs
  have hl := mul_le_mul_of_nonneg_left (neg_abs_le L) hp.le
  have hlarge : -150994944 < scale * L := by nlinarith
  by_contra hnot
  have hm := mul_le_mul_of_nonneg_left (le_of_not_gt hnot) hp.le
  linarith

/-- The actual prescribed kernel values tend to negative infinity. -/
theorem actualInsideStripKernel_tendsto_atBot :
    Tendsto (fun n : ℕ =>
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re) atTop atBot := by
  exact tendsto_atBot.mpr fun L => (actualInsideStripKernel_eventually_below L).mono
    fun _ h => h.le

/-- Both arbitrary real radius and arbitrary real lower threshold are retained. -/
theorem actualInsideStripKernel_below_beyond (R L : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualBilateralCorrelationTransform A actualInsideStripMode).re < L := by
  obtain ⟨n, hn, hR, hA⟩ :=
    ((actualInsideStripKernel_eventually_below L).and
      ((sequence_tendsto.eventually_ge_atTop R).and
      (sequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualInsideStripSequence n, hR, hA, hn⟩

/-- A uniform lower bound for all actual scales cannot hold for this prescribed strip mode. -/
theorem actualInsideStripKernel_no_eventual_lower_bound :
    ¬ ∃ K R : ℝ, ∀ A : ℝ, R ≤ A → 1 ≤ A →
      K ≤ (actualBilateralCorrelationTransform A actualInsideStripMode).re := by
  rintro ⟨K, R, h⟩
  obtain ⟨A, hR, hA, hneg⟩ := actualInsideStripKernel_below_beyond R K
  exact (not_lt_of_ge (h A hR hA)) hneg

end
end FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded
