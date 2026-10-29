import FormalResearch.RiemannHypothesis.SourceMangoldtStorage
import Mathlib.Topology.Algebra.InfiniteSum.Real
set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Set
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage

example (s : ℝ) (f : ComplexL2) : translationStorage s f ≤ 2 * ‖f‖ ^ 2 := by
  have h := norm_sub_le f (translation s f)
  rw [(translation s).norm_map] at h
  have h0 : 0 ≤ ‖f - translation s f‖ := norm_nonneg _
  have h1 : 0 ≤ ‖f‖ := norm_nonneg _
  unfold translationStorage
  nlinarith

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * translationStorage (s i) f) := by
  apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
    (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
  apply mul_le_mul_of_nonneg_left _ (hw i)
  have h := norm_sub_le f (translation (s i) f)
  rw [(translation (s i)).norm_map] at h
  unfold translationStorage
  nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * (⟪f, translation (s i) f⟫_ℂ).re) := by
  have hsq : Summable (fun i => w i * translationStorage (s i) f) := by
    apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
      (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
    apply mul_le_mul_of_nonneg_left _ (hw i)
    have h := norm_sub_le f (translation (s i) f)
    rw [(translation (s i)).norm_map] at h
    unfold translationStorage
    nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]
  apply ((hsum.mul_right (‖f‖ ^ 2)).sub hsq).congr
  intro i
  rw [translationStorage_eq]
  ring
