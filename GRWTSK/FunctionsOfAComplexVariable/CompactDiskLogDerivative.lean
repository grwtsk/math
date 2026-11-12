/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.CompactZeroInventory
import GRWTSK.FunctionsOfAComplexVariable.FiniteBlaschkeRemoval
import GRWTSK.FunctionsOfAComplexVariable.BlaschkeQuotientLogarithm
import GRWTSK.FunctionsOfAComplexVariable.JensenFiniteMultiplicity
import Mathlib.Tactic

/-!
# A local logarithmic-derivative estimate from actual disk data

MSC2020: 30C15, 30C80, 30D15.
The complete finite zero set, its actual finite analytic orders, the removed
Blaschke quotient and its normalized analytic logarithm are all constructed.
None of these conclusions is a supplied interface field. Jensen pays for the
finite divisor; Borel--Caratheodory and Cauchy pay for the regular factor.

The canonical fixed radii are 4, 3, 11/4 and 9/4. A dilation by 2 gives the
radius-8/radius-3 form used for the original Dirichlet source. Constants are
deliberately conservative. The added 1 in the logarithmic cost covers zero
logarithmic growth without applying a theorem requiring a positive ceiling.

SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Novelty UNASSESSED. Issue math#1801.
Imported candidates retain their evidence status. Individual provenance and
the complete analytical argument are adjacent.
-/

set_option autoImplicit false
noncomputable section
open Set Metric Filter
open scoped Topology BigOperators ComplexConjugate

namespace GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative

open CompactZeroInventory FiniteBlaschkeRemoval BlaschkeQuotientLogarithm
open NormalizedLogDerivativeBound JensenFiniteMultiplicity DiskBlaschkeFactors

/-- The actual analytic orders in any finite inner-disk subset obey Jensen.
Infinite order is excluded using the nonzero source anchor before conversion. -/
theorem finite_order_mass_le (f : ℂ → ℂ) (M : ℝ) (hM : 1 ≤ M)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (4 : ℝ))) (hf0 : f 0 ≠ 0)
    (hbound : ∀ w ∈ sphere 0 (4 : ℝ), ‖f w‖ ≤ M)
    (S : Finset ℂ) (hS : ∀ w ∈ S, ‖w‖ ≤ 11 / 4) :
    (∑ w ∈ S, (analyticOrderNatAt f w : ℝ)) ≤
      Real.log (M / ‖f 0‖) / Real.log (16 / 11 : ℝ) := by
  classical
  let ctx : AnalyticContext f (closedBall 0 (4 : ℝ)) :=
    { analytic := hf
      connected := (convex_closedBall (0 : ℂ) (4 : ℝ)).isConnected
        ⟨0, by norm_num⟩
      anchor := 0
      anchor_mem := by norm_num
      anchor_nonzero := hf0 }
  have hsmall : AnalyticOnNhd ℂ f (closedBall 0 (11 / 4 : ℝ)) :=
    hf.mono (closedBall_subset_closedBall (by norm_num))
  have hdiv (w : ℂ) (hw : w ∈ S) :
      MeromorphicOn.divisor f (closedBall 0 (11 / 4 : ℝ)) w =
        (analyticOrderNatAt f w : ℤ) := by
    have hwi : w ∈ closedBall (0 : ℂ) (11 / 4 : ℝ) := by
      simpa only [mem_closedBall, dist_zero_right] using hS w hw
    have hwo : w ∈ closedBall (0 : ℂ) (4 : ℝ) :=
      (closedBall_subset_closedBall (by norm_num : (11 / 4 : ℝ) ≤ 4)) hwi
    rw [hsmall.divisor_apply hwi, ctx.actual_order w hwo]
    simp
  have hj := finite_divisor_sum_le_jensen f 0 (11 / 4) 4 M
    (by norm_num) (by norm_num) hM hf hf0 hbound S
  have he :
      ((∑ w ∈ S, MeromorphicOn.divisor f (closedBall 0 (11 / 4 : ℝ)) w : ℤ) : ℝ) =
        ∑ w ∈ S, (analyticOrderNatAt f w : ℝ) := by
    rw [Int.cast_sum]
    apply Finset.sum_congr rfl
    intro w hw
    rw [hdiv w hw]
    norm_cast
  rw [he] at hj
  simpa only [show (4 : ℝ) / (11 / 4) = 16 / 11 by norm_num] using hj

/-- Construct the COMPLETE inner zero inventory and its one global removed quotient.
The exponents are analyticOrderNatAt of f, not weights supplied by a record. -/
theorem exists_source_quotient (f : ℂ → ℂ)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (4 : ℝ))) (hf0 : f 0 ≠ 0) :
    ∃ (S : Finset ℂ) (g : ℂ → ℂ),
      (∀ w : ℂ, w ∈ S ↔ ‖w‖ ≤ 11 / 4 ∧ f w = 0) ∧
      AnalyticOnNhd ℂ g (closedBall 0 (3 : ℝ)) ∧
      (∀ w ∈ ball 0 (11 / 4 : ℝ), g w ≠ 0) ∧
      (∀ w ∈ closedBall 0 (3 : ℝ),
        f w = g w * ∏ a ∈ S, (factor 3 a w) ^ analyticOrderNatAt f a) := by
  classical
  let ctx : AnalyticContext f (closedBall 0 (4 : ℝ)) :=
    { analytic := hf
      connected := (convex_closedBall (0 : ℂ) (4 : ℝ)).isConnected
        ⟨0, by norm_num⟩
      anchor := 0
      anchor_mem := by norm_num
      anchor_nonzero := hf0 }
  have hsub : closedBall (0 : ℂ) (11 / 4 : ℝ) ⊆ closedBall 0 (4 : ℝ) :=
    closedBall_subset_closedBall (by norm_num)
  let S := ctx.zeros (closedBall 0 (11 / 4 : ℝ)) (isCompact_closedBall ..) hsub
  have hmem (w : ℂ) : w ∈ S ↔ ‖w‖ ≤ 11 / 4 ∧ f w = 0 := by
    simpa only [S, mem_closedBall, dist_zero_right] using
      ctx.mem_zeros (closedBall 0 (11 / 4 : ℝ)) (isCompact_closedBall ..) hsub w
  have hin (w : ℂ) (hw : w ∈ S) : w ∈ closedBall (0 : ℂ) (4 : ℝ) :=
    hsub (by simpa only [mem_closedBall, dist_zero_right] using ((hmem w).mp hw).1)
  have ha : ∀ w ∈ S, ‖w‖ ≤ 11 / 4 := fun w hw => ((hmem w).mp hw).1
  have hm : ∀ w ∈ S, 0 < analyticOrderNatAt f w := fun w hw =>
    ctx.positive_order w (hin w hw) ((hmem w).mp hw).2
  have hlocal : ∀ w ∈ S, ∃ A : ℂ → ℂ, AnalyticAt ℂ A w ∧ A w ≠ 0 ∧
      f =ᶠ[𝓝 w] fun z => (z - w) ^ analyticOrderNatAt f w * A z := by
    intro w hw
    simpa only [smul_eq_mul] using
      (hf w (hin w hw)).analyticOrderAt_ne_top.mp (ctx.finite_order w (hin w hw))
  have hcover : ∀ w ∈ ball 0 (11 / 4 : ℝ), f w = 0 → ∃ a ∈ S, w = a := by
    intro w hw hz
    refine ⟨w, (hmem w).mpr ⟨?_, hz⟩, rfl⟩
    exact (by simpa only [mem_ball, dist_zero_right] using hw : ‖w‖ < 11 / 4).le
  obtain ⟨g, hg, hn, he, _⟩ := exists_removed_quotient S id (analyticOrderNatAt f) f
    ha (fun _ _ _ _ h => h) hm
    (hf.mono (closedBall_subset_closedBall (by norm_num))) hlocal hcover
  exact ⟨S, g, hmem, hg, hn, he⟩

/-- Source-only local estimate. The logarithm, factorization and divisor mass
are DERIVED. The gap includes all source zeros in the inner CLOSED disk. -/
theorem norm_logDeriv_le_of_disk_data (f : ℂ → ℂ) (M eta delta : ℝ)
    (hM : 1 ≤ M) (heta : 0 < eta) (hdelta : 0 < delta)
    (hf : AnalyticOnNhd ℂ f (closedBall 0 (4 : ℝ)))
    (hbound : ∀ w ∈ closedBall 0 (4 : ℝ), ‖f w‖ ≤ M)
    (hfloor : eta ≤ ‖f 0‖) (z : ℂ) (hz : ‖z‖ ≤ 9 / 4)
    (hsep : ∀ a ∈ closedBall 0 (11 / 4 : ℝ), f a = 0 → delta ≤ ‖z - a‖) :
    f z ≠ 0 ∧
      ‖logDeriv f z‖ ≤ (1 + Real.log (M / eta)) *
        (80 + (1 / delta + 1) / Real.log (16 / 11 : ℝ)) := by
  classical
  have hM0 : 0 < M := lt_of_lt_of_le (by norm_num) hM
  have hf0n : 0 < ‖f 0‖ := heta.trans_le hfloor
  have hf0 : f 0 ≠ 0 := norm_pos_iff.mp hf0n
  have hetaM : eta ≤ M := hfloor.trans (hbound 0 (by norm_num))
  have hA : 0 ≤ Real.log (M / eta) :=
    Real.log_nonneg ((one_le_div heta).mpr hetaM)
  let H : ℝ := 1 + Real.log (M / eta)
  have hH : 0 < H := by dsimp [H]; linarith
  have hell : 0 < Real.log (16 / 11 : ℝ) := Real.log_pos (by norm_num)
  have hzn : z ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [mem_ball, dist_zero_right]
    linarith
  have hnz : f z ≠ 0 := by
    intro hzero
    have hd := hsep z (ball_subset_closedBall hzn) hzero
    rw [sub_self, norm_zero] at hd
    exact (not_le_of_gt hdelta) hd
  obtain ⟨S, g, hmem, hg, hn, he⟩ := exists_source_quotient f hf hf0
  have ha : ∀ a ∈ S, ‖a‖ ≤ 11 / 4 := fun a ha => ((hmem a).mp ha).1
  have hgdc : DiffContOnCl ℂ g (ball 0 (3 : ℝ)) :=
    DiffContOnCl.mk_ball (hg.differentiableOn.mono ball_subset_closedBall) hg.continuousOn
  have hthree : closedBall (0 : ℂ) (3 : ℝ) ⊆ closedBall 0 (4 : ℝ) :=
    closedBall_subset_closedBall (by norm_num)
  obtain ⟨L, hg0, hL0, hL, _hdL, hreal, hfact⟩ :=
    exists_log_from_quotient S id (analyticOrderNatAt f) f g M eta
      hM0 heta ha hgdc hn he
      (fun w hw => hbound w (hthree (sphere_subset_closedBall hw))) hfloor
  have hrealH : ∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ H := by
    intro w hw
    dsimp [H]
    linarith [hreal w hw]
  have hfactz : f =ᶠ[𝓝 z] fun w => g 0 *
      (Complex.exp (L w) * ∏ a ∈ S, (factor 3 a w) ^ analyticOrderNatAt f a) :=
    Filter.eventually_of_mem (isOpen_ball.mem_nhds hzn) (fun w hw => hfact w hw)
  have hsepS : ∀ a ∈ S, delta ≤ ‖z - a‖ := by
    intro a haS
    obtain ⟨haN, ha0⟩ := (hmem a).mp haS
    exact hsep a (by simpa only [mem_closedBall, dist_zero_right] using haN) ha0
  have hb := norm_logDeriv_of_factorization S id (analyticOrderNatAt f) L f (g 0) z
    H delta hg0 hH hdelta hL hL0 hrealH ha hz hsepS hfactz
  have hm := finite_order_mass_le f M hM hf hf0
    (fun w hw => hbound w (sphere_subset_closedBall hw)) S ha
  have hlog : Real.log (M / ‖f 0‖) ≤ Real.log (M / eta) :=
    Real.log_le_log (div_pos hM0 hf0n)
      (div_le_div_of_nonneg_left hM0.le heta hfloor)
  have hmass : (∑ a ∈ S, (analyticOrderNatAt f a : ℝ)) ≤
      H / Real.log (16 / 11 : ℝ) := by
    apply hm.trans
    apply div_le_div_of_nonneg_right _ hell.le
    dsimp [H]
    linarith
  refine ⟨hnz, hb.trans ?_⟩
  calc
    _ ≤ 80 * H + (H / Real.log (16 / 11 : ℝ)) * (1 / delta + 1) :=
      add_le_add_left (mul_le_mul_of_nonneg_right hmass (by positivity)) _
    _ = _ := by dsimp [H]; ring

/-- Affine source return to a radius-8 disk. The derivative factor 2 is
derived by the chain rule, not suppressed by identifying coordinates. -/
theorem norm_logDeriv_le_of_disk_data_centered (f : ℂ → ℂ) (c z : ℂ)
    (M eta delta : ℝ) (hM : 1 ≤ M) (heta : 0 < eta) (hdelta : 0 < delta)
    (hf : AnalyticOnNhd ℂ f (closedBall c (8 : ℝ)))
    (hbound : ∀ w ∈ closedBall c (8 : ℝ), ‖f w‖ ≤ M)
    (hfloor : eta ≤ ‖f c‖) (hz : ‖z - c‖ ≤ 3)
    (hsep : ∀ a ∈ closedBall c (11 / 2 : ℝ), f a = 0 → delta ≤ ‖z - a‖) :
    f z ≠ 0 ∧
      ‖logDeriv f z‖ ≤ (1 + Real.log (M / eta)) *
        (80 + (2 / delta + 1) / Real.log (16 / 11 : ℝ)) := by
  let F : ℂ → ℂ := fun w => f (c + 2 * w)
  let x : ℂ := (z - c) / 2
  have hx : c + 2 * x = z := by dsimp [x]; ring
  have hmap (w : ℂ) (hw : w ∈ closedBall 0 (4 : ℝ)) :
      c + 2 * w ∈ closedBall c (8 : ℝ) := by
    have hwN : ‖w‖ ≤ 4 := by simpa only [mem_closedBall, dist_zero_right] using hw
    rw [mem_closedBall, dist_eq_norm, show c + 2 * w - c = 2 * w by ring, norm_mul]
    norm_num
    linarith
  have hF : AnalyticOnNhd ℂ F (closedBall 0 (4 : ℝ)) := by
    intro w hw
    exact (hf (c + 2 * w) (hmap w hw)).comp
      (analyticAt_const.add (analyticAt_const.mul analyticAt_id))
  have hxN : ‖x‖ ≤ 9 / 4 := by
    dsimp [x]
    rw [norm_div]
    norm_num
    linarith
  have hgap : ∀ a ∈ closedBall 0 (11 / 4 : ℝ), F a = 0 →
      delta / 2 ≤ ‖x - a‖ := by
    intro a ha ha0
    have haN : ‖a‖ ≤ 11 / 4 := by simpa only [mem_closedBall, dist_zero_right] using ha
    have hai : c + 2 * a ∈ closedBall c (11 / 2 : ℝ) := by
      rw [mem_closedBall, dist_eq_norm, show c + 2 * a - c = 2 * a by ring, norm_mul]
      norm_num
      linarith
    have hd := hsep (c + 2 * a) hai ha0
    have he : z - (c + 2 * a) = 2 * (x - a) := by dsimp [x]; ring
    rw [he, norm_mul] at hd
    norm_num at hd
    linarith
  obtain ⟨hn, hb⟩ := norm_logDeriv_le_of_disk_data F M eta (delta / 2) hM heta
    (by positivity) hF (fun w hw => hbound _ (hmap w hw))
    (by simpa [F] using hfloor) x hxN hgap
  have hz8 : z ∈ closedBall c (8 : ℝ) := by
    rw [mem_closedBall, dist_eq_norm]
    linarith
  have hlin : HasDerivAt (fun w : ℂ => c + 2 * w) 2 x := by
    simpa only [mul_one] using ((hasDerivAt_id x).const_mul (2 : ℂ)).const_add c
  have hd : HasDerivAt F (deriv f z * 2) x := by
    have hdf : HasDerivAt f (deriv f z) (c + 2 * x) := by
      rw [hx]
      exact (hf z hz8).differentiableAt.hasDerivAt
    exact hdf.comp x hlin
  have he : logDeriv F x = (2 : ℂ) * logDeriv f z := by
    rw [logDeriv_apply, hd.deriv, show F x = f z by dsimp [F]; rw [hx], logDeriv_apply]
    ring
  have hn' : f z ≠ 0 := by simpa only [F, hx] using hn
  refine ⟨hn', le_trans ?_ (by simpa only [show 1 / (delta / 2) = 2 / delta by field_simp [hdelta.ne']] using hb)⟩
  rw [he, norm_mul]
  norm_num
  linarith [norm_nonneg (logDeriv f z)]

end GRWTSK.Analysis.ComplexAnalysis.CompactDiskLogDerivative
