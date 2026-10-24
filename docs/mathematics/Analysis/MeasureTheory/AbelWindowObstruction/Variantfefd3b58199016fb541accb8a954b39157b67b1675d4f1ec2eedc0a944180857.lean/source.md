# Complete source: GRWTSK.Analysis.MeasureTheory.AbelWindowObstruction.Variantfefd3b58199016fb541accb8a954b39157b67b1675d4f1ec2eedc0a944180857

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8156fb760602343ccb25d47e00fc19bfa617323c` · SHA-256 `fefd3b58199016fb541accb8a954b39157b67b1675d4f1ec2eedc0a944180857`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NegativeAbelKernel
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic

/-!
# The negative-kernel obstruction holds inside the actual finite Abel window

The next LT03-12 consumer puts the entire smooth comparison bump strictly
inside (0,2A), with no support on negative time and no endpoint atom. The
interval pairing is its full integral and exceeds any supplied target while
the function stays nonpositive. This closes the whole-line/window scope gap;
it still does not replace the arithmetic primitive or its zeta structure.

Human unchanged-window fidelity: grwtsk contributors. Local interior bump and
exact interval consumer: OpenAI Codex. Mathlib bump functions, support and
integral laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.AbelWindowObstruction
open MeasureTheory Filter Set
open scoped Topology
noncomputable section

theorem interior_smooth_nonpositive_pairing_unbounded {K : ℝ → ℝ} (hK : Continuous K)
    (hK0 : K 0 < 0) {B : ℝ} (hB : 0 < B) (Q : ℝ) :
    ∃ F : ℝ → ℝ, ContDiff ℝ (↑(⊤ : ℕ∞)) F ∧ HasCompactSupport F ∧
      Function.support F ⊆ Ioo 0 B ∧ (∀ x, F x ≤ 0) ∧
      Integrable (fun x ↦ F x * K x) ∧ Q < ∫ x in 0..B, F x * K x := by
  have hevent : ∀ᶠ x in 𝓝 (0 : ℝ), K x < 0 := hK.continuousAt.eventually_lt_const hK0
  obtain ⟨r, hr, hlocal⟩ := Metric.eventually_nhds_iff.mp hevent
  let c : ℝ := min (r / 4) (B / 4)
  have hc0 : 0 < c := lt_min (by linarith) (by linarith)
  have hcr : c ≤ r / 4 := min_le_left _ _
  have hcB : c ≤ B / 4 := min_le_right _ _
  let phi : ContDiffBump c := ⟨c / 4, c / 2, by linarith, by linarith⟩
  have hsupport : Function.support phi ⊆ Ioo 0 B := by
    intro x hx
    rw [phi.support_eq] at hx
    have hd : |x - c| < c / 2 := by simpa [Real.dist_eq] using Metric.mem_ball.mp hx
    have h := abs_lt.mp hd
    exact ⟨by linarith, by linarith⟩
  have hnegative : ∀ x ∈ Function.support phi, K x < 0 := by
    intro x hx
    have hp := hsupport hx
    have hxball : x ∈ Metric.ball c (c / 2) := by simpa [phi.support_eq] using hx
    have hd : |x - c| < c / 2 := by simpa [Real.dist_eq] using Metric.mem_ball.mp hxball
    have h := abs_lt.mp hd
    apply hlocal
    rw [Real.dist_eq, sub_zero, abs_of_pos hp.1]
    linarith
  have hphi : phi c = 1 := phi.one_of_mem_closedBall (by simp [phi.rIn_pos.le])
  have hpc : c ∈ Function.support phi := by change phi c ≠ 0; rw [hphi]; norm_num
  have hn : ∀ x, 0 ≤ phi x * (-K x) := by
    intro x
    by_cases hx : phi x = 0
    · rw [hx, zero_mul]
    · exact mul_nonneg phi.nonneg (neg_nonneg.mpr (hnegative x hx).le)
  have hcont : Continuous (fun x ↦ phi x * (-K x)) :=
    (phi.contDiff (n := 0)).continuous.mul hK.neg
  have hcompact : HasCompactSupport (fun x ↦ phi x * (-K x)) := phi.hasCompactSupport.mul_right
  have hJ : 0 < ∫ x, phi x * (-K x) :=
    hcont.integral_pos_of_hasCompactSupport_nonneg_nonzero hcompact hn (by
      rw [hphi, one_mul]
      exact (neg_pos.mpr (hnegative c hpc)).ne')
  let J : ℝ := ∫ x, phi x * (-K x)
  let scale : ℝ := (|Q| + 1) / J
  have hscale : 0 < scale := div_pos (by positivity) hJ
  let F : ℝ → ℝ := fun x ↦ -scale * phi x
  have hFc : ContDiff ℝ (↑(⊤ : ℕ∞)) F :=
    (contDiff_const : ContDiff ℝ (↑(⊤ : ℕ∞)) (fun _ : ℝ ↦ -scale)).mul (phi.contDiff (n := ⊤))
  have hFs : HasCompactSupport F := phi.hasCompactSupport.mul_left
  have hFsupport : Function.support F ⊆ Ioo 0 B := by
    intro x hx
    apply hsupport
    intro hzero
    exact hx (by simp [F, hzero])
  have hFi : Integrable (fun x ↦ F x * K x) :=
    (hFc.continuous.mul hK).integrable_of_hasCompactSupport hFs.mul_right
  have hpair : Function.support (fun x ↦ F x * K x) ⊆ Ioc 0 B := by
    intro x hx
    have hf : F x ≠ 0 := (mul_ne_zero_iff.mp hx).1
    have h := hFsupport hf
    exact ⟨h.1, h.2.le⟩
  have hvalue : (∫ x in 0..B, F x * K x) = |Q| + 1 := by
    rw [intervalIntegral.integral_eq_integral_of_support_subset hpair]
    have he : (fun x ↦ F x * K x) = fun x ↦ scale * (phi x * (-K x)) := by
      funext x; dsimp [F]; ring
    rw [he, integral_const_mul]
    change scale * J = |Q| + 1
    dsimp [scale]
    exact div_mul_cancel₀ _ hJ.ne'
  refine ⟨F, hFc, hFs, hFsupport, ?_, hFi, ?_⟩
  · intro x
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hscale.le) phi.nonneg
  · rw [hvalue]
    exact (le_abs_self Q).trans_lt (lt_add_one _)

theorem actual_native_window_pairing_unbounded {A : ℝ} (hA : 0 < A) (Q : ℝ) :
    ∃ F : ℝ → ℝ, ContDiff ℝ (↑(⊤ : ℕ∞)) F ∧ HasCompactSupport F ∧
      Function.support F ⊆ Ioo 0 (2 * A) ∧ (∀ x, F x ≤ 0) ∧
      Integrable (fun x ↦ F x * NegativeAbelKernel.actualKernel A x) ∧
      Q < ∫ x in 0..2 * A, F x * NegativeAbelKernel.actualKernel A x :=
  interior_smooth_nonpositive_pairing_unbounded (NegativeAbelKernel.actual_kernel_continuous hA)
    (NegativeAbelKernel.actual_kernel_negative_at_zero hA) (by linarith) Q

end
end GRWTSK.RiemannHypothesis.Conversation.AbelWindowObstruction
```
