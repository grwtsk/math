/- Actual Fourier transfer controls and a proved source-evidence obstruction.
OpenAI/Mathlib Apache-2.0 notices and credits are retained in the imported sources. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SchwartzMoments
import GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow
namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SchwartzMoments.Checks
noncomputable section
open scoped FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.IntegralTransforms.ClassicalTransforms.MellinTransform.CompactGaussianWindow

theorem actual_zero_integrable (J : ℕ) :
    Integrable (fun t : ℝ=>(1+‖t‖)^J*‖(𝓕 (0 : 𝓢(ℝ,ℂ))) t‖) :=
  fourier_one_plus_moment_integrable _ J

theorem actual_zero_source_bound (J : ℕ) :
    ∀i≤J+(volume : Measure ℝ).integrablePower,
      (1:ℝ)*(SchwartzMap.seminorm ℝ 0 i (0 : 𝓢(ℝ,ℂ))+
        SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i (0 : 𝓢(ℝ,ℂ)))≤0 := by
  intro i hi
  simp

theorem actual_zero_moment_bound (J : ℕ) :
    (1:ℝ)*(∫t : ℝ,(1+‖t‖)^J*‖(𝓕 (0 : 𝓢(ℝ,ℂ))) t‖)≤
      (2:ℝ)^J*(coefficientMomentBound 0 0+coefficientMomentBound J 0) :=
  uniform_fourier_one_plus_moment _ J 1 0 (by norm_num) (by norm_num) (actual_zero_source_bound J)

/-- A nonzero actual Schwartz value obstructs a zero source-pair budget. -/
theorem source_bound_zero_false_of_nonzero (g : 𝓢(ℝ,ℂ)) (y : ℝ) (hy : g y≠0) (J : ℕ) :
    ¬ (∀i≤J+(volume : Measure ℝ).integrablePower,
      (1:ℝ)*(SchwartzMap.seminorm ℝ 0 i g+
        SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i g)≤0) := by
  intro h
  have hb := h 0 (by omega)
  have hn : ‖g y‖≤SchwartzMap.seminorm ℝ 0 0 g := by
    simpa only [pow_zero,one_mul,iteratedDeriv_zero] using SchwartzMap.le_seminorm' ℝ 0 0 g y
  have hp : 0≤SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower 0 g := by positivity
  have hz : 0<‖g y‖ := norm_pos_iff.mpr hy
  nlinarith

theorem actual_gaussian_nonzero : gaussianDyadicProfile 1 0 (3/4) ≠ 0 := by
  have ha : dyadicAnnulus (3/4) ≠ 0 := by
    have hpos : 0 < (dyadicAnnulus (3/4)).re := by
      change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
      rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
      have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
      linarith
    intro hz
    rw [hz, Complex.zero_re] at hpos
    norm_num at hpos
  have hc : gaussianMellinCoefficient ≠ 0 := by
    intro hz
    have h := gaussianMellinCoefficient_normalizes
    rw [hz,zero_mul] at h
    norm_num at h
  have hp : gaussianMellinProfile (3/4) ≠ 0 := by
    change gaussianMellinCoefficient * Complex.exp _ ≠ 0
    exact mul_ne_zero hc (Complex.exp_ne_zero _)
  unfold gaussianDyadicProfile
  norm_num only [pow_zero,one_mul,div_one]
  exact div_ne_zero (mul_ne_zero ha hp)
    (Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 3/4)).ne')

/-- A complete concrete source-budget obstruction, without asserting a full moment counterexample. -/
theorem actual_gaussian_source_bound_zero_false (J : ℕ) :
    ¬ (∀i≤J+(volume : Measure ℝ).integrablePower,
      (1:ℝ)*(SchwartzMap.seminorm ℝ 0 i (gaussianDyadicSchwartz 1 (by norm_num) 0)+
        SchwartzMap.seminorm ℝ (volume : Measure ℝ).integrablePower i (gaussianDyadicSchwartz 1 (by norm_num) 0))≤0) := by
  apply source_bound_zero_false_of_nonzero _ (3/4) _ J
  simpa only [gaussianDyadicSchwartz_apply] using actual_gaussian_nonzero

end
end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SchwartzMoments.Checks
