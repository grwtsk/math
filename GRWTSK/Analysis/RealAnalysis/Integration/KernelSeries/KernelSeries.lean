import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Constructions.Polish.Basic

/-!
Nonnegative count-kernel series: finite integral sums imply genuine Bochner
integrability and permit integral exchange. Pointwise summability is explicit
here and will be discharged by the actual finite occurrence windows.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory

theorem nonnegative_kernel_series_integrable {ι : Type*} [Countable ι]
    {F : ι → ℝ → ℝ} {μ : Measure ℝ}
    (hF : ∀ i, Integrable (F i) μ)
    (hn : ∀ i x, 0 ≤ F i x)
    (hs : ∀ x, Summable (fun i => F i x))
    (hi : Summable (fun i => ∫ x, F i x ∂μ)) :
    Integrable (fun x => ∑' i, F i x) μ := by
  refine ⟨?_, ?_⟩
  · exact (AEMeasurable.tsum (fun i => (hF i).aemeasurable)).aestronglyMeasurable
  · rw [hasFiniteIntegral_iff_ofReal
      (Filter.Eventually.of_forall (fun x => tsum_nonneg (fun i => hn i x)))]
    have he : (fun x => ENNReal.ofReal (∑' i, F i x)) =
        (fun x => ∑' i, ENNReal.ofReal (F i x)) := by
      funext x
      exact ENNReal.ofReal_tsum_of_nonneg (fun i => hn i x) (hs x)
    rw [he, lintegral_tsum (fun i => (hF i).aemeasurable.ennreal_ofReal)]
    have hi' : (fun i => ∫⁻ x, ENNReal.ofReal (F i x) ∂μ) =
        (fun i => ENNReal.ofReal (∫ x, F i x ∂μ)) := by
      funext i
      exact (ofReal_integral_eq_lintegral_ofReal (hF i)
        (Filter.Eventually.of_forall (hn i))).symm
    rw [hi']
    exact hi.tsum_ofReal_lt_top

theorem nonnegative_kernel_series_integral {ι : Type*} [Countable ι]
    {F : ι → ℝ → ℝ} {μ : Measure ℝ}
    (hF : ∀ i, Integrable (F i) μ)
    (hn : ∀ i x, 0 ≤ F i x)
    (hi : Summable (fun i => ∫ x, F i x ∂μ)) :
    (∫ x, ∑' i, F i x ∂μ) = ∑' i, ∫ x, F i x ∂μ := by
  apply (integral_tsum_of_summable_integral_norm hF ?_).symm
  have he : (fun i => ∫ x, ‖F i x‖ ∂μ) = (fun i => ∫ x, F i x ∂μ) := by
    funext i
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun x => Real.norm_of_nonneg (hn i x))
  rw [he]
  exact hi

end CommonMeanStieltjes
