import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.Analysis.Normed.Group.FunctionSeries

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open Set
noncomputable section

theorem thetaPhiTerm_eq_gaussians (m : ℕ) (t : ℝ) :
    thetaPhiTerm m t =
      (2 * Real.pi ^ 2 * Real.exp (9 * t)) *
        HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m -
      (3 * Real.pi * Real.exp (5 * t)) *
        HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
  have he : Real.exp (9 * t) = Real.exp (5 * t) * Real.exp (4 * t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one, he]
  ring

/-- Explicit summable bound on any compact coordinate interval. -/
def thetaPhiCompactBound (a b : ℝ) (m : ℕ) : ℝ :=
  (2 * Real.pi ^ 2 * Real.exp (9 * b)) *
      HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * a)) m +
    (3 * Real.pi * Real.exp (5 * b)) *
      HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * a)) m

theorem thetaPhiCompactBound_summable (a b : ℝ) : Summable (thetaPhiCompactBound a b) := by
  exact ((HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * a))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (9 * b))).add
    ((HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * a))).mul_left
      (3 * Real.pi * Real.exp (5 * b)))

theorem thetaPhiTerm_norm_le_compactBound {a b t : ℝ} (ht : t ∈ Icc a b) (m : ℕ) :
    ‖thetaPhiTerm m t‖ ≤ thetaPhiCompactBound a b m := by
  rw [thetaPhiTerm_eq_gaussians]
  refine (norm_sub_le _ _).trans ?_
  have h4 : 0 ≤ HurwitzKernelBounds.f_nat 4 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  have h2 : 0 ≤ HurwitzKernelBounds.f_nat 2 1 (Real.exp (4 * t)) m := by
    unfold HurwitzKernelBounds.f_nat
    positivity
  rw [Real.norm_of_nonneg (by positivity), Real.norm_of_nonneg (by positivity)]
  have hG : Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * t)) ≤
      Real.exp (-Real.pi * ((m : ℝ) + 1) ^ 2 * Real.exp (4 * a)) := by
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonpos_left (Real.exp_le_exp.mpr (by linarith [ht.1]))
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr Real.pi_pos.le) (sq_nonneg _)
  have hF (k : ℕ) : HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * t)) m ≤
      HurwitzKernelBounds.f_nat k 1 (Real.exp (4 * a)) m :=
    mul_le_mul_of_nonneg_left hG (by positivity)
  unfold thetaPhiCompactBound
  apply add_le_add
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 4) h4 (by positivity)
  · exact mul_le_mul (by gcongr; exact ht.2) (hF 2) h2 (by positivity)

theorem continuous_thetaPhiTerm (m : ℕ) : Continuous (thetaPhiTerm m) := by
  unfold thetaPhiTerm
  fun_prop

theorem continuousOn_thetaPhi_Icc (a b : ℝ) : ContinuousOn thetaPhi (Icc a b) := by
  exact continuousOn_tsum (fun m => (continuous_thetaPhiTerm m).continuousOn)
    (thetaPhiCompactBound_summable a b) (fun m _ ht => thetaPhiTerm_norm_le_compactBound ht m)

theorem continuous_thetaPhi : Continuous thetaPhi := by
  rw [continuous_iff_continuousAt]
  intro t
  exact (continuousOn_thetaPhi_Icc (t - 1) (t + 1)).continuousAt
    (Icc_mem_nhds (by linarith) (by linarith))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
