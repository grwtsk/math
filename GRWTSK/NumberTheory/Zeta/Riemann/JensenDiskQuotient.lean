/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.FiniteBlaschkeRemoval
import GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotientLog

set_option autoImplicit false

/-!
# The actual extended quotient for the canonical Jensen disk

All selected locations and multiplicities are inherited from diskHead.
The source local factorizations are translated without changing their orders.
Every zero in the inner disk is shown to be a selected nontrivial zero;
the imaginary-coordinate margin excludes both trivial zeros and the pole.
No extended quotient or nonvanishing certificate is supplied by the caller.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.JensenDiskQuotient

open Set Metric Filter
open scoped Topology BigOperators
open CanonicalZeroDivisor LocalJensenCount JensenDiskLogDerivative
open GRWTSK.Analysis.ComplexAnalysis.DiskBlaschkeFactors
open GRWTSK.Analysis.ComplexAnalysis.FiniteBlaschkeRemoval

noncomputable section

/-- Translation identifies the closed outer disks exactly. -/
theorem translated_mem_outer (c w : ℂ) (hw : w ∈ closedBall 0 (3 : ℝ)) :
    c + w ∈ closedBall c (3 : ℝ) := by
  simpa only [Metric.mem_closedBall, dist_eq_norm, add_sub_cancel_left, sub_zero] using hw

/-- The translated arithmetic source is analytic on a neighborhood of the closed disk. -/
theorem analytic_translated_zeta (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) :
    AnalyticOnNhd ℂ (fun w => riemannZeta (c + w)) (closedBall 0 (3 : ℝ)) := by
  have hf : AnalyticOnNhd ℂ riemannZeta (closedBall c (3 : ℝ)) := by
    rcases hc with rfl | rfl
    · exact analytic_zeta_upper_disk N hN
    · exact analytic_zeta_lower_disk N hN
  intro w hw
  have he : (c + w) + (-c) = w := by ring
  have ht := (hf (c + w) (translated_mem_outer c w hw)).comp_sub (-c)
  rw [he] at ht
  simpa only [sub_neg_eq_add, add_comm] using ht

/-- Exact source multiplicity survives translation; it is not recomputed from heights. -/
theorem translated_multiplicity_factorization (c : ℂ) (z : ZeroPoint) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (z.1 - c) ∧ A (z.1 - c) ≠ 0 ∧
      (fun w => riemannZeta (c + w)) =ᶠ[𝓝 (z.1 - c)]
        fun w => (w - (z.1 - c)) ^ multiplicity z * A w := by
  obtain ⟨A, hA, hA0, he⟩ := multiplicity_factorization z
  have hcenter : c + (z.1 - c) = z.1 := by ring
  have hshift : Tendsto (fun w : ℂ => c + w) (𝓝 (z.1 - c)) (𝓝 z.1) := by
    have hcont : Continuous (fun w : ℂ => c + w) := continuous_const.add continuous_id
    simpa only [hcenter] using (hcont.continuousAt (x := z.1 - c)).tendsto
  refine ⟨fun w => A (c + w), ?_, ?_, ?_⟩
  · simpa only [sub_neg_eq_add, sub_eq_add_neg, add_comm, neg_neg] using hA.comp_sub (-c)
  · change A (c + (z.1 - c)) ≠ 0
    rw [hcenter]
    exact hA0
  · filter_upwards [hshift.eventually he] with w hw
    have heq : c + w - z.1 = w - (z.1 - c) := by ring
    simpa only [smul_eq_mul, heq] using hw

/-- Every actual zero in the inner disk is in the original canonical finite inventory. -/
theorem inner_zero_covered (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (w : ℂ)
    (hw : w ∈ ball 0 (11 / 4 : ℝ)) (hz : riemannZeta (c + w) = 0) :
    ∃ z ∈ diskHead N c, w = z.1 - c := by
  have hwn : ‖w‖ < 11 / 4 := by simpa only [Metric.mem_ball, dist_zero_right] using hw
  have hw3 : w ∈ closedBall 0 (3 : ℝ) := by
    rw [Metric.mem_closedBall, dist_zero_right]
    linarith
  have him := (CubicCircleGeometry.disk_geometry N hN c (c + w) hc
    (translated_mem_outer c w hw3)).2.1
  have hnontrivial : NontrivialZetaZero (c + w) := by
    refine ⟨hz, ?_, ?_⟩
    · rintro ⟨k, hk⟩
      rw [hk] at him
      norm_num at him
    · intro he
      rw [he] at him
      norm_num at him
  let z : ZeroPoint := ⟨c + w, hnontrivial⟩
  refine ⟨z, (mem_diskHead N c hc z).mpr ?_, ?_⟩
  · simpa only [z, add_sub_cancel_left] using hwn.le
  · dsimp [z]
    ring

/-- The canonical finite divisor constructs the actual holomorphic quotient.
The factorization includes the outer circle and every removed center. -/
theorem exists_zeta_disk_quotient (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g (closedBall 0 (3 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ), riemannZeta (c + w) = g w *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ),
        (∀ z ∈ diskHead N c, w ≠ z.1 - c) →
        g w = riemannZeta (c + w) /
          (∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z)) := by
  apply exists_removed_quotient (diskHead N c) (fun z : ZeroPoint => z.1 - c) multiplicity
    (fun w => riemannZeta (c + w))
  · exact fun z hz => (mem_diskHead N c hc z).mp hz
  · intro z _ v _ he
    apply Subtype.val_injective
    exact sub_left_injective he
  · exact fun z _ => multiplicity_pos z
  · exact analytic_translated_zeta N hN c hc
  · exact fun z _ => translated_multiplicity_factorization c z
  · exact fun w hw hz => inner_zero_covered N hN c hc w hw hz

/-- The stronger neighborhood analyticity supplies the old outer-disk regularity contract. -/
theorem quotient_diffContOnCl (g : ℂ → ℂ)
    (hg : AnalyticOnNhd ℂ g (closedBall 0 (3 : ℝ))) :
    DiffContOnCl ℂ g (ball 0 (3 : ℝ)) := by
  refine DiffContOnCl.mk_ball ?_ hg.continuousOn
  intro w hw
  exact (hg w (ball_subset_closedBall hw)).differentiableAt.differentiableWithinAt

end
end GRWTSK.RiemannHypothesis.JensenDiskQuotient
