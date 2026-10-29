import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.MeasureTheory.Integral.Prod

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
noncomputable section

theorem stronglyMeasurable_thetaTail_scratch (q : ℕ) : StronglyMeasurable (thetaTail q) := by
  cases q with
  | zero => exact continuous_thetaPhi.stronglyMeasurable
  | succ q =>
    let F : ℝ × ℝ → ℝ := fun p =>
      thetaPhi p.2 * (p.2 - p.1) ^ q / (q.factorial : ℝ)
    have hF : StronglyMeasurable F :=
      (((continuous_thetaPhi.comp continuous_snd).mul
        ((continuous_snd.sub continuous_fst).pow q)).div_const _).stronglyMeasurable
    have hS : MeasurableSet {p : ℝ × ℝ | p.1 ≤ p.2} :=
      measurableSet_le measurable_fst measurable_snd
    have hi := (hF.indicator hS).integral_prod_right' (ν := volume)
    have he (t : ℝ) :
        (fun u => ({p : ℝ × ℝ | p.1 ≤ p.2}.indicator F) (t, u)) =
          (Ici t).indicator (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) := rfl
    simpa only [he, integral_indicator measurableSet_Ici, thetaTail] using hi

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
