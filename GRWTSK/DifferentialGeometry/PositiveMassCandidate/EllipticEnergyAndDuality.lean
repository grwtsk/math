/- Copyright (c) 2026 grwtsk contributors. MIT. -/
/-!
# Positive mass proof candidate: EllipticEnergyAndDuality (08/15)

This is one ordered slice of the **unverified** user-supplied Lean source.
All original source lines inside the SOURCE_START/SOURCE_END delimiters
are preserved byte-for-byte, including source comments; see issue #1829.
Publication is not elaboration, kernel replay, axiom auditing, independent
review, or a positive mass theorem. Checks: NOT_RUN.
The opening comment of the supplied source calls the file a sorry-only
statement, although the uploaded text contains a long by-proof; it is stale.
-/
import GRWTSK.DifferentialGeometry.PositiveMassCandidate.TrappedBarriersAndEllipticPDE
set_option maxHeartbeats 4000000
noncomputable section
open Manifold Filter Topology MeasureTheory Metric
open scoped ContDiff
namespace PositiveMass
variable {M : Type*} [TopologicalSpace M] [ChartedSpace E3 M]

-- SOURCE_START: lines 140635..160083 from answer (1).lean
theorem pcr_div_kernel_const {X : Type*} [TopologicalSpace X]
    (S : Set X) (hSc : IsCompact S) (hSpc : IsPreconnected S)
    (P : EigPatchedSurface X S) (wd : Fin P.n → E2 → ℝ)
    (A : Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hwdpos : ∀ j, ∀ x ∈ P.W j, 0 < wd j x)
    (hA : ∀ j (a b : Fin 2), ContDiffOn ℝ ∞ (fun x => A j x a b) (P.W j))
    (hApd : ∀ j, ∀ x ∈ P.W j, (A j x).PosDef)
    (v : X → ℝ) (hv : ∀ j, ContDiffOn ℝ 2 (fun x => v (P.param j x)) (P.W j)) (c : ℝ)
    (hLv : ∀ j, ∀ x ∈ P.W j,
      -(wd j x)⁻¹ * ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => v (P.param j x'')) x') x = c)
    (q₀ : X) (hq₀ : q₀ ∈ S) :
    c = 0 ∧ ∀ q ∈ S, v q = v q₀ :=
by
  
  
  
  have s1 : ∀ (W : Set E2), IsOpen W → ∀ (A : E2 → Matrix (Fin 2) (Fin 2) ℝ),
      (∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) W) →
      (∀ b : Fin 2, ContinuousOn (fun x => ∑ a : Fin 2, pd2 a (fun x' => A x' a b) x) W) ∧
      ∀ w : E2 → ℝ, ContDiffOn ℝ 2 w W → ∀ x ∈ W,
        ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A x' a b * pd2 b w x') x =
          ∑ a : Fin 2, ∑ b : Fin 2, A x a b * pd2 a (pd2 b w) x +
            ∑ b : Fin 2, (∑ a : Fin 2, pd2 a (fun x' => A x' a b) x) * pd2 b w x := by
    intro W hW A hA
    constructor
    · intro b
      refine continuousOn_finset_sum _ (fun a _ => ?_)
      have h1 : ContinuousOn (fderiv ℝ (fun x => A x a b)) W :=
        (hA a b).continuousOn_fderiv_of_isOpen hW (by simp)
      exact h1.clm_apply continuousOn_const
    · intro w hw x hx
      have hxn : W ∈ 𝓝 x := hW.mem_nhds hx
      have hAd : ∀ a b, DifferentiableAt ℝ (fun x' => A x' a b) x := fun a b =>
        ((hA a b).contDiffAt hxn).differentiableAt (by simp)
      have hfd : ContDiffOn ℝ 1 (fderiv ℝ w) W := hw.fderiv_of_isOpen hW (by norm_num)
      have hpd : ∀ b, DifferentiableAt ℝ (pd2 b w) x := fun b =>
        ((hfd.contDiffAt hxn).differentiableAt (by norm_num)).clm_apply
          (differentiableAt_const _)
      have hinner : ∀ a, pd2 a (fun x' => ∑ b : Fin 2, A x' a b * pd2 b w x') x =
          ∑ b : Fin 2, (A x a b * pd2 a (pd2 b w) x +
            pd2 b w x * pd2 a (fun x' => A x' a b) x) := by
        intro a
        have hF : HasFDerivAt (fun x' => ∑ b : Fin 2, A x' a b * pd2 b w x')
            (∑ b : Fin 2, (A x a b • fderiv ℝ (pd2 b w) x +
              pd2 b w x • fderiv ℝ (fun x' => A x' a b) x)) x := by
          have := HasFDerivAt.sum (u := Finset.univ) (A := fun b x' => A x' a b * pd2 b w x')
            (fun b _ => (hAd a b).hasFDerivAt.mul (hpd b).hasFDerivAt)
          convert this using 1
        unfold pd2 at hF ⊢
        rw [hF.fderiv]
        simp
      rw [Finset.sum_congr rfl (fun a _ => hinner a)]
      simp only [Finset.sum_add_distrib]
      congr 1
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl (fun b _ => ?_)
      rw [Finset.sum_mul]
      refine Finset.sum_congr rfl (fun a _ => ?_)
      ring
  
  
  
  have s3 : ∀ (W : Set E2), IsOpen W → ∀ (w : E2 → ℝ), ContinuousOn w W → ∀ (M : ℝ),
      (∀ x ∈ W, w x ≤ M) →
      (∀ (z x₁ : E2) (R : ℝ), 0 < R → Metric.closedBall z R ⊆ W →
        (∀ x ∈ Metric.ball z R, w x < M) → dist x₁ z = R → w x₁ = M → False) →
      ∀ p ∈ W, w p = M →
        ∃ s : ℝ, 0 < s ∧ Metric.ball p s ⊆ W ∧ ∀ y ∈ Metric.ball p s, w y = M := by
    intro W hW w hwc M hle hnt p hp hwp
    obtain ⟨ε, hε, hεW⟩ := Metric.isOpen_iff.1 hW p hp
    refine ⟨ε / 3, by positivity, (Metric.ball_subset_ball (by linarith)).trans hεW, ?_⟩
    intro y₁ hy₁
    by_contra hne
    have hy₁' : dist y₁ p < ε / 3 := hy₁
    have hy₁W : y₁ ∈ W := hεW (Metric.ball_subset_ball (by linarith) hy₁)
    have hcb : Metric.closedBall y₁ (dist y₁ p) ⊆ W := by
      intro x hx
      apply hεW
      rw [Metric.mem_ball]
      have := dist_triangle x y₁ p
      rw [Metric.mem_closedBall] at hx
      linarith
    have hKc : IsCompact (Metric.closedBall y₁ (dist y₁ p) ∩ w ⁻¹' {M}) := by
      refine (isCompact_closedBall y₁ (dist y₁ p)).of_isClosed_subset ?_ Set.inter_subset_left
      exact (hwc.mono hcb).preimage_isClosed_of_isClosed Metric.isClosed_closedBall
        isClosed_singleton
    have hpK : p ∈ Metric.closedBall y₁ (dist y₁ p) ∩ w ⁻¹' {M} :=
      ⟨by rw [Metric.mem_closedBall, dist_comm], hwp⟩
    obtain ⟨z, hzK, hzmin⟩ := hKc.exists_isMinOn ⟨p, hpK⟩
      (continuous_id.dist continuous_const).continuousOn
    have hzmin' : ∀ x ∈ Metric.closedBall y₁ (dist y₁ p) ∩ w ⁻¹' {M},
        dist z y₁ ≤ dist x y₁ := fun x hx => isMinOn_iff.mp hzmin x hx
    have hzM : w z = M := hzK.2
    have hRpos : 0 < dist z y₁ := by
      rcases (dist_nonneg (x := z) (y := y₁)).lt_or_eq with h | h
      · exact h
      · exfalso
        have hz : z = y₁ := dist_eq_zero.1 h.symm
        rw [hz] at hzM
        exact hne hzM
    have hRle : dist z y₁ ≤ dist y₁ p := by
      have := hzmin' p hpK
      rwa [dist_comm p] at this
    refine hnt y₁ z (dist z y₁) hRpos
      ((Metric.closedBall_subset_closedBall hRle).trans hcb) ?_ rfl hzM
    intro x hx
    rw [Metric.mem_ball] at hx
    have hxW : x ∈ W := hcb (by rw [Metric.mem_closedBall]; linarith)
    rcases lt_or_eq_of_le (hle x hxW) with h | h
    · exact h
    · exfalso
      have := hzmin' x ⟨by rw [Metric.mem_closedBall]; linarith, h⟩
      linarith
  
  
  
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := fun j x hx =>
    ((P.image_eq j).subset ⟨x, hx, rfl⟩).2
  have hrep : ∀ q ∈ S, ∀ j, q ∈ P.O j →
      P.proj j q ∈ P.W j ∧ P.param j (P.proj j q) = q := by
    intro q hq j hqO
    have hmem : q ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hqO, hq⟩
    obtain ⟨x, hx, rfl⟩ := hmem
    rw [P.proj_param j x hx]
    exact ⟨hx, rfl⟩
  have hcov : ∀ q ∈ S, ∃ j, q ∈ P.O j := fun q hq => Set.mem_iUnion.1 (P.cover hq)
  have hvc : ContinuousOn v S := by
    intro q hq
    obtain ⟨j, hqO⟩ := hcov q hq
    obtain ⟨hpW, hpp⟩ := hrep q hq j hqO
    have h1 : ContinuousAt (fun x => v (P.param j x)) (P.proj j q) :=
      ((hv j).continuousOn).continuousAt ((P.W_open j).mem_nhds hpW)
    have h2 : ContinuousAt (P.proj j) q :=
      (P.proj_cont j).continuousAt ((P.O_open j).mem_nhds hqO)
    have h3 : ContinuousAt (fun y => v (P.param j (P.proj j y))) q := h1.comp h2
    have h5 : ContinuousWithinAt v (S ∩ P.O j) q := by
      refine h3.continuousWithinAt.congr (fun y hy => ?_) ?_
      · rw [(hrep y hy.1 j hy.2).2]
      · rw [hpp]
    exact (continuousWithinAt_inter ((P.O_open j).mem_nhds hqO)).1 h5
  
  
  
  have hSne : S.Nonempty := ⟨q₀, hq₀⟩
  obtain ⟨qM, hqM, hmax⟩ := hSc.exists_isMaxOn hSne hvc
  obtain ⟨qm, hqm, hmin⟩ := hSc.exists_isMinOn hSne hvc
  have hexp : ∀ j, ∀ x ∈ P.W j,
      ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => v (P.param j x'')) x') x =
      ∑ a : Fin 2, ∑ b : Fin 2, A j x a b * pd2 a (pd2 b (fun x'' => v (P.param j x''))) x +
        ∑ b : Fin 2, (∑ a : Fin 2, pd2 a (fun x' => A j x' a b) x) *
          pd2 b (fun x'' => v (P.param j x'')) x :=
    fun j => (s1 (P.W j) (P.W_open j) (A j) (hA j)).2 _ (hv j)
  have hc1 : 0 ≤ c := by
    obtain ⟨j, hjO⟩ := hcov qM hqM
    obtain ⟨hxW, hxp⟩ := hrep qM hqM j hjO
    have hlm : IsLocalMax (fun x' => v (P.param j x')) (P.proj j qM) := by
      filter_upwards [(P.W_open j).mem_nhds hxW] with y hy
      rw [hxp]
      exact isMaxOn_iff.mp hmax _ (hparS j y hy)
    have hfd := hlm.fderiv_eq_zero
    have hpd0 : ∀ b, pd2 b (fun x'' => v (P.param j x'')) (P.proj j qM) = 0 := fun b => by
      simp [pd2, hfd]
    have hT := (pcr_kc_hess_trace_sign (P.W j) (P.W_open j) _ (hv j) _ hxW _
      (hApd j _ hxW)).1 hlm
    have hD : ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => v (P.param j x'')) x') (P.proj j qM) ≤ 0 := by
      rw [hexp j _ hxW]
      simp only [hpd0, mul_zero, Finset.sum_const_zero, add_zero]
      exact hT
    have hL := hLv j _ hxW
    have hw : 0 < (wd j (P.proj j qM))⁻¹ := inv_pos.mpr (hwdpos j _ hxW)
    rw [← hL]
    nlinarith
  have hc2 : c ≤ 0 := by
    obtain ⟨j, hjO⟩ := hcov qm hqm
    obtain ⟨hxW, hxp⟩ := hrep qm hqm j hjO
    have hlm : IsLocalMin (fun x' => v (P.param j x')) (P.proj j qm) := by
      filter_upwards [(P.W_open j).mem_nhds hxW] with y hy
      rw [hxp]
      exact isMinOn_iff.mp hmin _ (hparS j y hy)
    have hfd := hlm.fderiv_eq_zero
    have hpd0 : ∀ b, pd2 b (fun x'' => v (P.param j x'')) (P.proj j qm) = 0 := fun b => by
      simp [pd2, hfd]
    have hT := (pcr_kc_hess_trace_sign (P.W j) (P.W_open j) _ (hv j) _ hxW _
      (hApd j _ hxW)).2 hlm
    have hD : 0 ≤ ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => v (P.param j x'')) x') (P.proj j qm) := by
      rw [hexp j _ hxW]
      simp only [hpd0, mul_zero, Finset.sum_const_zero, add_zero]
      exact hT
    have hL := hLv j _ hxW
    have hw : 0 < (wd j (P.proj j qm))⁻¹ := inv_pos.mpr (hwdpos j _ hxW)
    rw [← hL]
    nlinarith
  have hc : c = 0 := le_antisymm hc2 hc1
  have hD0 : ∀ j, ∀ x ∈ P.W j, ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
      pd2 b (fun x'' => v (P.param j x'')) x') x = 0 := by
    intro j x hx
    have h := hLv j x hx
    rw [hc] at h
    have hne : (wd j x)⁻¹ ≠ 0 := inv_ne_zero (hwdpos j x hx).ne'
    rcases mul_eq_zero.1 h with h1 | h1
    · exact absurd (neg_eq_zero.1 h1) hne
    · exact h1
  
  
  
  have hloc : ∀ j, ∀ x ∈ P.W j, v (P.param j x) = v qM →
      ∃ s : ℝ, 0 < s ∧ Metric.ball x s ⊆ P.W j ∧
        ∀ y ∈ Metric.ball x s, v (P.param j y) = v qM := by
    intro j x hx hxM
    refine s3 (P.W j) (P.W_open j) (fun x => v (P.param j x)) (hv j).continuousOn (v qM)
      (fun y hy => isMaxOn_iff.mp hmax _ (hparS j y hy)) ?_ x hx hxM
    intro z x₁ R hR hball hlt hx₁ hw₁
    refine pcr_kc_hopf_touch (P.W j) (P.W_open j) (A j)
      (fun x b => ∑ a : Fin 2, pd2 a (fun x' => A j x' a b) x) (fun x => v (P.param j x)) (v qM)
      (fun a b => (hA j a b).continuousOn) (s1 (P.W j) (P.W_open j) (A j) (hA j)).1 (hApd j)
      (hv j) (fun y hy => isMaxOn_iff.mp hmax _ (hparS j y hy)) ?_ z x₁ R hR hball hlt hx₁ hw₁
    intro y hy
    have := hexp j y hy
    rw [hD0 j y hy] at this
    exact this.le
  
  
  
  have hall : ∀ q ∈ S, v q = v qM := by
    haveI : PreconnectedSpace S := isPreconnected_iff_preconnectedSpace.mp hSpc
    have hZc : IsClosed {q : S | v q = v qM} := by
      have : Continuous (S.restrict v) := hvc.restrict
      exact isClosed_singleton.preimage this
    have hZo : IsOpen {q : S | v q = v qM} := by
      rw [isOpen_iff_forall_mem_open]
      intro q hq
      obtain ⟨j, hjO⟩ := hcov q q.2
      obtain ⟨hxW, hxp⟩ := hrep q q.2 j hjO
      have hqM' : v (P.param j (P.proj j q)) = v qM := by rw [hxp]; exact hq
      obtain ⟨s, hs, hsW, hsM⟩ := hloc j _ hxW hqM'
      refine ⟨Subtype.val ⁻¹' (P.O j ∩ P.proj j ⁻¹' Metric.ball (P.proj j q) s), ?_, ?_, ?_⟩
      · rintro ⟨y, hyS⟩ ⟨hyO, hyb⟩
        show v y = v qM
        have := hsM _ hyb
        rwa [(hrep y hyS j hyO).2] at this
      · exact ((P.proj_cont j).isOpen_inter_preimage (P.O_open j)
          Metric.isOpen_ball).preimage continuous_subtype_val
      · exact ⟨hjO, Metric.mem_ball_self hs⟩
    have hZne : ({q : S | v q = v qM}).Nonempty := ⟨⟨qM, hqM⟩, rfl⟩
    have hU := IsClopen.eq_univ ⟨hZc, hZo⟩ hZne
    intro q hq
    have h2 : (⟨q, hq⟩ : S) ∈ {q : S | v q = v qM} := by rw [hU]; trivial
    exact h2
  exact ⟨hc, fun q hq => (hall q hq).trans (hall q₀ hq₀).symm⟩

theorem pcr_dw_aux_metric {X : Type*} [TopologicalSpace X] (S : Set X) (P : EigPatchedSurface X S)
    (wd : Fin P.n → E2 → ℝ) (A : Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hwd : ∀ j, ContDiffOn ℝ ∞ (wd j) (P.W j)) (hwdpos : ∀ j, ∀ x ∈ P.W j, 0 < wd j x)
    (hA : ∀ j (a b : Fin 2), ContDiffOn ℝ ∞ (fun x => A j x a b) (P.W j))
    (hApd : ∀ j, ∀ x ∈ P.W j, (A j x).PosDef)
    (hcomp : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        wd j x = |(fderiv ℝ (fun x' => P.proj k (P.param j x')) x).det| *
          wd k (P.proj k (P.param j x)) ∧
        ∀ c d : Fin 2, ∑ a : Fin 2, ∑ b : Fin 2,
            fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c * A j x a b *
              fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 b) d =
          |(fderiv ℝ (fun x' => P.proj k (P.param j x')) x).det| *
            A k (P.proj k (P.param j x)) c d) :
    ∃ (h' : Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ) (σ : Fin P.n → E2 → ℝ),
      (∀ j (a b : Fin 2), ContDiffOn ℝ ∞ (fun x => h' j x a b) (P.W j)) ∧
      (∀ j, ∀ x ∈ P.W j, (h' j x).PosDef) ∧
      (∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, ∀ a b : Fin 2,
        h' j x a b = ∑ c : Fin 2, ∑ d : Fin 2,
          fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c *
            h' k (P.proj k (P.param j x)) c d *
            fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 b) d) ∧
      (∀ j, ∀ x ∈ P.W j, Real.sqrt (h' j x).det = wd j x) ∧
      (∀ j, ContDiffOn ℝ ∞ (σ j) (P.W j)) ∧ (∀ j, ∀ x ∈ P.W j, 0 < σ j x) ∧
      (∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, σ j x = σ k (P.proj k (P.param j x))) ∧
      (∀ j, ∀ x ∈ P.W j, ∀ a b : Fin 2, A j x a b = σ j x * Real.sqrt (h' j x).det * (h' j x)⁻¹ a b) :=
by
  classical
  
  have t_pointwise : ∀ (A : Matrix (Fin 2) (Fin 2) ℝ), A.PosDef → ∀ (w : ℝ), 0 < w →
      0 < A.det ∧
      ((Real.sqrt A.det * w) • A⁻¹).PosDef ∧
      Real.sqrt ((Real.sqrt A.det * w) • A⁻¹).det = w ∧
      ∀ a b : Fin 2, A a b = Real.sqrt A.det * Real.sqrt ((Real.sqrt A.det * w) • A⁻¹).det *
        ((Real.sqrt A.det * w) • A⁻¹)⁻¹ a b := by
    intro A hA w hw
    have hdet : 0 < A.det := hA.det_pos
    have hσpos : 0 < Real.sqrt A.det := Real.sqrt_pos.mpr hdet
    have hσsq : Real.sqrt A.det ^ 2 = A.det := Real.sq_sqrt hdet.le
    have hc : 0 < Real.sqrt A.det * w := mul_pos hσpos hw
    have hunit : IsUnit A.det := isUnit_iff_ne_zero.mpr hdet.ne'
    have hHdet : ((Real.sqrt A.det * w) • A⁻¹).det = w ^ 2 := by
      rw [Matrix.det_smul, Matrix.det_nonsing_inv, Ring.inverse_eq_inv', Fintype.card_fin,
        mul_pow, hσsq]
      field_simp
    have hsqrtH : Real.sqrt ((Real.sqrt A.det * w) • A⁻¹).det = w := by
      rw [hHdet, Real.sqrt_sq hw.le]
    have hHinv : ((Real.sqrt A.det * w) • A⁻¹)⁻¹ = (Real.sqrt A.det * w)⁻¹ • A := by
      apply Matrix.inv_eq_left_inv
      rw [Matrix.smul_mul, Matrix.mul_smul, smul_smul, Matrix.mul_nonsing_inv A hunit,
        inv_mul_cancel₀ hc.ne', one_smul]
    refine ⟨hdet, hA.inv.smul hc, hsqrtH, fun a b => ?_⟩
    rw [hsqrtH, hHinv, Matrix.smul_apply, smul_eq_mul, ← mul_assoc, mul_inv_cancel₀ hc.ne',
      one_mul]
  
  have t_transform : ∀ (M A B : Matrix (Fin 2) (Fin 2) ℝ) (wA wB : ℝ),
      0 < A.det → 0 < wA → wA = |M.det| * wB →
      (∀ c d : Fin 2, ∑ a : Fin 2, ∑ b : Fin 2, M c a * A a b * M d b = |M.det| * B c d) →
      Real.sqrt A.det = Real.sqrt B.det ∧
      ∀ a b : Fin 2, ((Real.sqrt A.det * wA) • A⁻¹) a b =
        ∑ c : Fin 2, ∑ d : Fin 2, M c a * ((Real.sqrt B.det * wB) • B⁻¹) c d * M d b := by
    intro M A B wA wB hA hwA hw hMAB
    have hs : |M.det| ≠ 0 := by
      intro h
      rw [h, zero_mul] at hw
      linarith
    have hMdet : M.det ≠ 0 := abs_ne_zero.mp hs
    have hMu : IsUnit M.det := isUnit_iff_ne_zero.mpr hMdet
    have hMTu : IsUnit M.transpose.det := by rw [Matrix.det_transpose]; exact hMu
    have hAu : IsUnit A.det := isUnit_iff_ne_zero.mpr hA.ne'
    have hmat : M * A * M.transpose = |M.det| • B := by
      ext c d
      have h := hMAB c d
      simp only [Fin.sum_univ_two] at h
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.smul_apply, smul_eq_mul,
        Fin.sum_univ_two]
      rw [← h]
      ring
    have hdetAB : A.det = B.det := by
      have h := congrArg Matrix.det hmat
      rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, Matrix.det_smul,
        Fintype.card_fin, sq_abs] at h
      have h2 : M.det ^ 2 ≠ 0 := pow_ne_zero 2 hMdet
      apply mul_left_cancel₀ h2
      linear_combination h
    have hsq : Real.sqrt A.det = Real.sqrt B.det := by rw [hdetAB]
    refine ⟨hsq, fun a b => ?_⟩
    have hBinv : B⁻¹ = |M.det| • (M.transpose⁻¹ * A⁻¹ * M⁻¹) := by
      apply Matrix.inv_eq_right_inv
      have hB : B = |M.det|⁻¹ • (M * A * M.transpose) := by
        rw [hmat, smul_smul, inv_mul_cancel₀ hs, one_smul]
      rw [hB, Matrix.smul_mul, Matrix.mul_smul, smul_smul, inv_mul_cancel₀ hs, one_smul]
      calc M * A * M.transpose * (M.transpose⁻¹ * A⁻¹ * M⁻¹)
          = M * (A * ((M.transpose * M.transpose⁻¹) * A⁻¹) * M⁻¹) := by
            simp only [Matrix.mul_assoc]
        _ = 1 := by
            rw [Matrix.mul_nonsing_inv _ hMTu, Matrix.one_mul, Matrix.mul_nonsing_inv _ hAu,
              Matrix.one_mul, Matrix.mul_nonsing_inv _ hMu]
    have hsand : M.transpose * B⁻¹ * M = |M.det| • A⁻¹ := by
      rw [hBinv, Matrix.mul_smul, Matrix.smul_mul]
      congr 1
      calc M.transpose * (M.transpose⁻¹ * A⁻¹ * M⁻¹) * M
          = (M.transpose * M.transpose⁻¹) * A⁻¹ * (M⁻¹ * M) := by simp only [Matrix.mul_assoc]
        _ = A⁻¹ := by
            rw [Matrix.mul_nonsing_inv _ hMTu, Matrix.nonsing_inv_mul _ hMu, Matrix.one_mul,
              Matrix.mul_one]
    have hentry := congrFun (congrFun hsand a) b
    simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.smul_apply, smul_eq_mul,
      Fin.sum_univ_two] at hentry ⊢
    rw [hw, hsq]
    linear_combination (-(Real.sqrt B.det * wB)) * hentry
  
  have t_clm_det : ∀ (f : E2 →L[ℝ] E2),
      f.det = (Matrix.of fun c a : Fin 2 => f (e2 a) c).det := by
    intro f
    show LinearMap.det (f : E2 →ₗ[ℝ] E2) = _
    rw [← LinearMap.det_toMatrix (EuclideanSpace.basisFun (Fin 2) ℝ).toBasis]
    congr 1
  
  have t_smooth : ∀ (W : Set E2) (A : E2 → Matrix (Fin 2) (Fin 2) ℝ) (w : E2 → ℝ),
      ContDiffOn ℝ ∞ w W → (∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) W) →
      (∀ x ∈ W, (A x).PosDef) →
      ContDiffOn ℝ ∞ (fun x => Real.sqrt (A x).det) W ∧
      ∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => ((Real.sqrt (A x).det * w x) • (A x)⁻¹) a b) W := by
    intro W A w hw hA hApd
    have hD : ContDiffOn ℝ ∞ (fun x => (A x).det) W := by
      have h : (fun x => (A x).det) = fun x => A x 0 0 * A x 1 1 - A x 0 1 * A x 1 0 := by
        funext x
        exact Matrix.det_fin_two (A x)
      rw [h]
      exact ((hA 0 0).mul (hA 1 1)).sub ((hA 0 1).mul (hA 1 0))
    have hD0 : ∀ x ∈ W, (A x).det ≠ 0 := fun x hx => (hApd x hx).det_pos.ne'
    have hS := hD.sqrt hD0
    refine ⟨hS, fun a b => ?_⟩
    have hinv : ∀ x, (A x)⁻¹ = ((A x).det)⁻¹ • (A x).adjugate := by
      intro x
      rw [Matrix.inv_def, Ring.inverse_eq_inv']
    have hadj : ∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => (A x).adjugate a b) W := by
      intro a b
      simp only [Matrix.adjugate_fin_two]
      fin_cases a <;> fin_cases b
      · simpa using hA 1 1
      · simpa using (hA 0 1).neg
      · simpa using (hA 1 0).neg
      · simpa using hA 0 0
    have h : (fun x => ((Real.sqrt (A x).det * w x) • (A x)⁻¹) a b) =
        fun x => (Real.sqrt (A x).det * w x) * (((A x).det)⁻¹ * (A x).adjugate a b) := by
      funext x
      rw [hinv x]
      simp only [Matrix.smul_apply, smul_eq_mul]
    rw [h]
    exact (hS.mul hw).mul ((hD.inv hD0).mul (hadj a b))
  
  have htr : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      Real.sqrt (A j x).det = Real.sqrt (A k (P.proj k (P.param j x))).det ∧
      ∀ a b : Fin 2, ((Real.sqrt (A j x).det * wd j x) • (A j x)⁻¹) a b =
        ∑ c : Fin 2, ∑ d : Fin 2,
          fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c *
            ((Real.sqrt (A k (P.proj k (P.param j x))).det * wd k (P.proj k (P.param j x))) •
              (A k (P.proj k (P.param j x)))⁻¹) c d *
            fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 b) d := by
    intro j k x hx
    obtain ⟨h1, h2⟩ := hcomp j k x hx
    have hdet := t_clm_det (fderiv ℝ (fun x' => P.proj k (P.param j x')) x)
    rw [hdet] at h1 h2
    exact t_transform
      (Matrix.of fun c a : Fin 2 => fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c)
      (A j x) (A k (P.proj k (P.param j x))) (wd j x) (wd k (P.proj k (P.param j x)))
      (hApd j x hx.1).det_pos (hwdpos j x hx.1) h1 (fun c d => h2 c d)
  refine ⟨fun j x => (Real.sqrt (A j x).det * wd j x) • (A j x)⁻¹,
    fun j x => Real.sqrt (A j x).det, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro j a b
    exact (t_smooth (P.W j) (A j) (wd j) (hwd j) (hA j) (hApd j)).2 a b
  · intro j x hx
    exact (t_pointwise (A j x) (hApd j x hx) (wd j x) (hwdpos j x hx)).2.1
  · intro j k x hx a b
    exact (htr j k x hx).2 a b
  · intro j x hx
    exact (t_pointwise (A j x) (hApd j x hx) (wd j x) (hwdpos j x hx)).2.2.1
  · intro j
    exact (t_smooth (P.W j) (A j) (wd j) (hwd j) (hA j) (hApd j)).1
  · intro j x hx
    exact Real.sqrt_pos.mpr (hApd j x hx).det_pos
  · intro j k x hx
    exact (htr j k x hx).1
  · intro j x hx a b
    exact (t_pointwise (A j x) (hApd j x hx) (wd j x) (hwdpos j x hx)).2.2.2 a b

theorem pcr_poinc_square_cover (n : ℕ) (W : Fin n → Set E2) (hW : ∀ j, IsOpen (W j))
    (K : Fin n → Set E2) (hK : ∀ j, IsCompact (K j) ∧ K j ⊆ W j) :
    ∃ (m : ℕ) (jr : Fin m → Fin n) (a b s : Fin m → ℝ), (∀ r, 0 < s r) ∧
      (∀ r, {x : E2 | a r ≤ x 0 ∧ x 0 ≤ a r + s r ∧ b r ≤ x 1 ∧ x 1 ≤ b r + s r} ⊆ W (jr r)) ∧
      ∀ j, ∀ x ∈ K j, ∃ r, jr r = j ∧
        x ∈ {y : E2 | a r < y 0 ∧ y 0 < a r + s r ∧ b r < y 1 ∧ y 1 < b r + s r} :=
by
  classical
  choose δ hδpos hδW using fun j => (hK j).1.exists_thickening_subset_open (hW j) (hK j).2
  have hsq : ∀ j, ∀ c ∈ K j, ∀ y : E2, c 0 - δ j / 4 ≤ y 0 → y 0 ≤ c 0 - δ j / 4 + δ j / 2 →
      c 1 - δ j / 4 ≤ y 1 → y 1 ≤ c 1 - δ j / 4 + δ j / 2 → y ∈ W j := by
    intro j c hc y h1 h2 h3 h4
    have hd := hδpos j
    apply hδW j
    apply Metric.ball_subset_thickening hc
    rw [Metric.mem_ball, EuclideanSpace.dist_eq, Fin.sum_univ_two, Real.dist_eq, Real.dist_eq,
      sq_abs, sq_abs, Real.sqrt_lt' hd]
    have e0 : (y 0 - c 0) ^ 2 ≤ (δ j / 4) ^ 2 := sq_le_sq' (by linarith) (by linarith)
    have e1 : (y 1 - c 1) ^ 2 ≤ (δ j / 4) ^ 2 := sq_le_sq' (by linarith) (by linarith)
    nlinarith
  have hnhds : ∀ j, ∀ c ∈ K j, (fun c : E2 => {y : E2 | c 0 - δ j / 4 < y 0 ∧
      y 0 < c 0 - δ j / 4 + δ j / 2 ∧ c 1 - δ j / 4 < y 1 ∧ y 1 < c 1 - δ j / 4 + δ j / 2}) c
      ∈ 𝓝 c := by
    intro j c _
    have hd := hδpos j
    have h0 : Continuous (fun y : E2 => y 0) := by fun_prop
    have h1 : Continuous (fun y : E2 => y 1) := by fun_prop
    refine IsOpen.mem_nhds ?_ ?_
    · exact (isOpen_lt continuous_const h0).inter ((isOpen_lt h0 continuous_const).inter
        ((isOpen_lt continuous_const h1).inter (isOpen_lt h1 continuous_const)))
    · simp only [Set.mem_setOf_eq]
      refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith
  choose t htK htcov using fun j => (hK j).1.elim_nhds_subcover _ (hnhds j)
  obtain ⟨T, hT⟩ : ∃ T : Finset (Σ _ : Fin n, E2), T = Finset.univ.sigma t := ⟨_, rfl⟩
  let eT := T.equivFin
  refine ⟨T.card, fun r => (eT.symm r).1.1, fun r => (eT.symm r).1.2 0 - δ (eT.symm r).1.1 / 4,
    fun r => (eT.symm r).1.2 1 - δ (eT.symm r).1.1 / 4, fun r => δ (eT.symm r).1.1 / 2,
    ?_, ?_, ?_⟩
  · intro r
    exact half_pos (hδpos _)
  · intro r y hy
    have key : ∀ p ∈ T, p.2 ∈ K p.1 := by
      intro p hp
      rw [hT, Finset.mem_sigma] at hp
      exact htK _ _ hp.2
    exact hsq _ _ (key _ (eT.symm r).2) y hy.1 hy.2.1 hy.2.2.1 hy.2.2.2
  · intro j x hx
    have hx' := htcov j hx
    rw [Set.mem_iUnion₂] at hx'
    obtain ⟨c, hc, hxc⟩ := hx'
    have hq : (⟨j, c⟩ : Σ _ : Fin n, E2) ∈ T := by
      rw [hT, Finset.mem_sigma]
      exact ⟨Finset.mem_univ _, hc⟩
    refine ⟨eT ⟨⟨j, c⟩, hq⟩, ?_, ?_⟩
    · simp only [Equiv.symm_apply_apply]
    · simp only [Equiv.symm_apply_apply]
      exact hxc

theorem pcr_poinc_square_energy {X : Type*} [TopologicalSpace X]
    (S : Set X) (P : EigPatchedSurface X S) (ρ : Fin P.n → X → ℝ) (K : Fin P.n → Set E2)
    (hρnn : ∀ j q, 0 ≤ ρ j q)
    (hρc : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1) (hK : ∀ j, IsCompact (K j) ∧ K j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ K j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0)
    (j : Fin P.n) (a b s : ℝ) (hs : 0 < s)
    (hsub : {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} ⊆ P.W j) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ u : X → ℝ, (∀ i, ContDiffOn ℝ ∞ (fun x => u (P.param i x)) (P.W i)) →
      ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
          (u (P.param j x) - (∫ y in {y : E2 | a ≤ y 0 ∧ y 0 < a + s ∧ b ≤ y 1 ∧ y 1 < b + s},
            u (P.param j y)) / s ^ 2) ^ 2 ≤
        C * eigWInt P ρ (eigGam P u u) :=
by
  classical
  
  have hc0 : Continuous (fun x : E2 => x 0) := by fun_prop
  have hc1 : Continuous (fun x : E2 => x 1) := by fun_prop
  have hQcClosed : IsClosed {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} :=
    (isClosed_le continuous_const hc0).inter ((isClosed_le hc0 continuous_const).inter
      ((isClosed_le continuous_const hc1).inter (isClosed_le hc1 continuous_const)))
  have hQcBdd : Bornology.IsBounded {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} := by
    refine (Metric.isBounded_closedBall (x := (0 : E2)) (r := |a| + |b| + 2 * s)).subset ?_
    intro x hx
    obtain ⟨h1, h2, h3, h4⟩ := hx
    rw [Metric.mem_closedBall, dist_zero_right]
    have hn : ‖x‖ ^ 2 = x 0 ^ 2 + x 1 ^ 2 := by
      rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_two, Real.norm_eq_abs, Real.norm_eq_abs,
        sq_abs, sq_abs]
    have e0 : x 0 ^ 2 ≤ (|a| + s) ^ 2 :=
      sq_le_sq' (by linarith [neg_abs_le a]) (by linarith [le_abs_self a])
    have e1 : x 1 ^ 2 ≤ (|b| + s) ^ 2 :=
      sq_le_sq' (by linarith [neg_abs_le b]) (by linarith [le_abs_self b])
    have ha := abs_nonneg a
    have hb := abs_nonneg b
    have hR : ‖x‖ ^ 2 ≤ (|a| + |b| + 2 * s) ^ 2 := by nlinarith
    nlinarith [norm_nonneg x]
  have hQc : IsCompact {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} :=
    Metric.isCompact_of_isClosed_isBounded hQcClosed hQcBdd
  have hQQc : {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} ⊆
      {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} :=
    fun x hx => ⟨hx.1, hx.2.1.le, hx.2.2.1, hx.2.2.2.le⟩
  
  obtain ⟨CL, hCL0, hCL⟩ := (chart_dirichlet_form_facts (P.W j) (P.W_open j) (P.h j)
    (P.h_smooth j) (P.h_posDef j)).2.2.2 _ hQc hsub
  refine ⟨s ^ 2 * CL, mul_nonneg (sq_nonneg s) hCL0, fun u hu => ?_⟩
  obtain ⟨m, hm⟩ : ∃ m : ℝ, m = (∫ y in {y : E2 | a ≤ y 0 ∧ y 0 < a + s ∧ b ≤ y 1 ∧ y 1 < b + s},
      u (P.param j y)) / s ^ 2 := ⟨_, rfl⟩
  rw [← hm]
  have hv : ContDiffOn ℝ ∞ (fun x => u (P.param j x)) (P.W j) := hu j
  
  have hvQc : ContinuousOn (fun x => u (P.param j x))
      {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} := hv.continuousOn.mono hsub
  obtain ⟨hIv, -, -⟩ := square_iterated_integral (fun x => u (P.param j x)) a b s hs hvQc
  obtain ⟨hIm, hm2, -⟩ := square_iterated_integral (fun _ => m) a b s hs continuousOn_const
  simp only [intervalIntegral.integral_const, smul_eq_mul] at hm2
  have hmean : ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
      (u (P.param j x) - m) = 0 := by
    rw [integral_sub hIv hIm, hm2, hm]
    have hs0 : s ≠ 0 := hs.ne'
    field_simp
    ring
  
  have hw : ContDiffOn ℝ ∞ (fun x => u (P.param j x) - m) (P.W j) := hv.sub contDiffOn_const
  have hP := poincare_halfopen_square (P.W j) (P.W_open j) (fun x => u (P.param j x) - m) hw
    a b s hs hsub
  beta_reduce at hP
  have hgrad : ∀ x, ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x) - m) x) ^ 2 =
      ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x)) x) ^ 2 := by
    intro x
    simp only [pd2, fderiv_sub_const]
  simp only [hgrad, hmean] at hP
  have hstep1 : ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
      (u (P.param j x) - m) ^ 2 ≤ s ^ 2 * ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
        ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x)) x) ^ 2 := by
    have hz : (0 : ℝ) ^ 2 / s ^ 2 = 0 := by simp
    linarith [hP]
  
  have hGc : ContinuousOn (fun x => ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x)) x) ^ 2)
      (P.W j) := by
    have hfd := hv.continuousOn_fderiv_of_isOpen (P.W_open j) (by simp)
    refine continuousOn_finset_sum _ (fun k _ => ?_)
    exact (hfd.clm_apply continuousOn_const).pow 2
  have hstep2 : ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
        ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x)) x) ^ 2 ≤
      ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s},
        ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x)) x) ^ 2 :=
    setIntegral_mono_set (ContinuousOn.integrableOn_compact hQc (hGc.mono hsub))
      (Filter.Eventually.of_forall (fun x => Finset.sum_nonneg (fun k _ => sq_nonneg _)))
      hQQc.eventuallyLE
  
  have hstep3 := hCL _ hv
  have hint_eq : (∫ x in {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s},
      (∑ a : Fin 2, ∑ b : Fin 2, (P.h j x)⁻¹ a b * pd2 a (fun x => u (P.param j x)) x *
        pd2 b (fun x => u (P.param j x)) x) * Real.sqrt (P.h j x).det) =
      ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s},
        eigGam P u u j x * Real.sqrt (P.h j x).det := by
    congr 1
    funext x
    simp only [eigGam]
    congr 1
    refine Finset.sum_congr rfl (fun a' _ => Finset.sum_congr rfl (fun b' _ => ?_))
    ring
  rw [hint_eq] at hstep3
  
  have hloc := (eig_integral_localize S P ρ K hρnn (fun i k => (hρc i k).continuousOn) hρ1 hK hρK
      hρO j (fun i G => eig_chart_cov S P i j G) (eigGam P u u)
      (fun i => (eig_gam_facts S P u u hu hu i).1)
      (fun i x hx => eig_grad_pair_compat S P u u hu hu i j x hx)).2
      (fun i x hx => (eig_gam_facts S P u u hu hu i).2.1 x hx) _ hQc hsub
  
  have hs2 : 0 ≤ s ^ 2 := sq_nonneg s
  calc _ ≤ _ := hstep1
    _ ≤ s ^ 2 * ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s},
        ∑ k : Fin 2, (pd2 k (fun x => u (P.param j x)) x) ^ 2 :=
        mul_le_mul_of_nonneg_left hstep2 hs2
    _ ≤ s ^ 2 * (CL * ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s},
        eigGam P u u j x * Real.sqrt (P.h j x).det) :=
        mul_le_mul_of_nonneg_left hstep3 hs2
    _ ≤ s ^ 2 * (CL * eigWInt P ρ (eigGam P u u)) :=
        mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hloc hCL0) hs2
    _ = s ^ 2 * CL * eigWInt P ρ (eigGam P u u) := by ring

theorem pcr_poinc_overlap_means {X : Type*} [TopologicalSpace X]
    (S : Set X) (P : EigPatchedSurface X S) (j k : Fin P.n) (a b s a' b' s' : ℝ)
    (hs : 0 < s) (hs' : 0 < s')
    (hsub : {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} ⊆ P.W j)
    (hsub' : {x : E2 | a' ≤ x 0 ∧ x 0 ≤ a' + s' ∧ b' ≤ x 1 ∧ x 1 ≤ b' + s'} ⊆ P.W k)
    (q : X) (hqS : q ∈ S) (hqj : q ∈ P.O j) (hqk : q ∈ P.O k)
    (hq1 : P.proj j q ∈ {x : E2 | a < x 0 ∧ x 0 < a + s ∧ b < x 1 ∧ x 1 < b + s})
    (hq2 : P.proj k q ∈ {x : E2 | a' < x 0 ∧ x 0 < a' + s' ∧ b' < x 1 ∧ x 1 < b' + s'}) :
    ∃ D : ℝ, 0 ≤ D ∧ ∀ u : X → ℝ, (∀ i, ContinuousOn (fun x => u (P.param i x)) (P.W i)) →
      ((∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s}, u (P.param j x)) / s ^ 2 -
        (∫ x in {x : E2 | a' ≤ x 0 ∧ x 0 < a' + s' ∧ b' ≤ x 1 ∧ x 1 < b' + s'}, u (P.param k x)) / s' ^ 2) ^ 2 ≤
      D * ((∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
            (u (P.param j x) - (∫ y in {y : E2 | a ≤ y 0 ∧ y 0 < a + s ∧ b ≤ y 1 ∧ y 1 < b + s},
              u (P.param j y)) / s ^ 2) ^ 2) +
          ∫ x in {x : E2 | a' ≤ x 0 ∧ x 0 < a' + s' ∧ b' ≤ x 1 ∧ x 1 < b' + s'},
            (u (P.param k x) - (∫ y in {y : E2 | a' ≤ y 0 ∧ y 0 < a' + s' ∧ b' ≤ y 1 ∧ y 1 < b' + s'},
              u (P.param k y)) / s' ^ 2) ^ 2) :=
by
  classical
  
  have hT : ∀ y ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j y) ∈ P.W k ∧ P.param k (P.proj k (P.param j y)) = P.param j y ∧
        P.param j y ∈ P.O j := by
    intro y hy
    have h1 : P.param j y ∈ P.O j ∩ S := by
      rw [← P.image_eq j]; exact ⟨y, hy.1, rfl⟩
    have h2 : P.param j y ∈ P.param k '' P.W k := by
      rw [P.image_eq k]; exact ⟨hy.2, h1.2⟩
    obtain ⟨z, hz, hzeq⟩ := h2
    refine ⟨?_, ?_, h1.1⟩
    · rw [← hzeq, P.proj_param k z hz]; exact hz
    · rw [← hzeq, P.proj_param k z hz]
  
  have hqOS : q ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hqj, hqS⟩
  obtain ⟨x₀, hx₀W, hx₀q⟩ := hqOS
  have hpj : P.proj j q = x₀ := by rw [← hx₀q]; exact P.proj_param j x₀ hx₀W
  have hc0 : Continuous (fun x : E2 => x 0) := by fun_prop
  have hc1 : Continuous (fun x : E2 => x 1) := by fun_prop
  have hQoOpen : ∀ a b s : ℝ,
      IsOpen {x : E2 | a < x 0 ∧ x 0 < a + s ∧ b < x 1 ∧ x 1 < b + s} := by
    intro a b s
    exact (isOpen_lt continuous_const hc0).inter ((isOpen_lt hc0 continuous_const).inter
      ((isOpen_lt continuous_const hc1).inter (isOpen_lt hc1 continuous_const)))
  have hVopen : IsOpen (P.W j ∩ P.param j ⁻¹' P.O k) :=
    (P.param_cont j).isOpen_inter_preimage (P.W_open j) (P.O_open k)
  have hτc : ContinuousOn (fun x => P.proj k (P.param j x)) (P.W j ∩ P.param j ⁻¹' P.O k) :=
    (P.trans_smooth j k).continuousOn
  have hUopen := (hQoOpen a b s).inter (hτc.isOpen_inter_preimage hVopen (hQoOpen a' b' s'))
  have hx₀U : x₀ ∈ {x : E2 | a < x 0 ∧ x 0 < a + s ∧ b < x 1 ∧ x 1 < b + s} ∩
      ((P.W j ∩ P.param j ⁻¹' P.O k) ∩ (fun x => P.proj k (P.param j x)) ⁻¹'
        {x : E2 | a' < x 0 ∧ x 0 < a' + s' ∧ b' < x 1 ∧ x 1 < b' + s'}) := by
    refine ⟨?_, ⟨hx₀W, ?_⟩, ?_⟩
    · rw [← hpj]; exact hq1
    · show P.param j x₀ ∈ P.O k
      rw [hx₀q]; exact hqk
    · show P.proj k (P.param j x₀) ∈
        {x : E2 | a' < x 0 ∧ x 0 < a' + s' ∧ b' < x 1 ∧ x 1 < b' + s'}
      rw [hx₀q]; exact hq2
  obtain ⟨δ, hδ, hball⟩ := Metric.isOpen_iff.1 hUopen x₀ hx₀U
  obtain ⟨r, hr, hrδ⟩ : ∃ r : ℝ, 0 < r ∧ r < δ := ⟨δ / 2, by linarith, by linarith⟩
  have hBU := (Metric.closedBall_subset_ball hrδ).trans hball
  have hBQo : ∀ y ∈ Metric.closedBall x₀ r,
      y ∈ {x : E2 | a < x 0 ∧ x 0 < a + s ∧ b < x 1 ∧ x 1 < b + s} := fun y hy => (hBU hy).1
  have hBV : Metric.closedBall x₀ r ⊆ P.W j ∩ P.param j ⁻¹' P.O k := fun y hy => (hBU hy).2.1
  have hBτ : ∀ y ∈ Metric.closedBall x₀ r, P.proj k (P.param j y) ∈
      {x : E2 | a' < x 0 ∧ x 0 < a' + s' ∧ b' < x 1 ∧ x 1 < b' + s'} := fun y hy => (hBU hy).2.2
  have hBc : IsCompact (Metric.closedBall x₀ r) := isCompact_closedBall x₀ r
  have hBm : MeasurableSet (Metric.closedBall x₀ r) := measurableSet_closedBall
  have hBne : (Metric.closedBall x₀ r).Nonempty := ⟨x₀, Metric.mem_closedBall_self hr.le⟩
  have hβ : 0 < (volume : Measure E2).real (Metric.closedBall x₀ r) := by
    rw [measureReal_def]
    exact ENNReal.toReal_pos (Metric.measure_closedBall_pos volume x₀ hr).ne'
      hBc.measure_lt_top.ne
  
  obtain ⟨T, hTdef⟩ : ∃ T : Set E2,
      T = (fun x => P.proj k (P.param j x)) '' Metric.closedBall x₀ r := ⟨_, rfl⟩
  have hτB : ContinuousOn (fun x => P.proj k (P.param j x)) (Metric.closedBall x₀ r) :=
    hτc.mono hBV
  have hmemT : ∀ x ∈ Metric.closedBall x₀ r, P.proj k (P.param j x) ∈ T := by
    intro x hx; rw [hTdef]; exact ⟨x, hx, rfl⟩
  have hTc : IsCompact T := by rw [hTdef]; exact hBc.image_of_continuousOn hτB
  have hTm : MeasurableSet T := hTc.isClosed.measurableSet
  have hTV' : T ⊆ P.W k ∩ P.param k ⁻¹' P.O j := by
    rw [hTdef]
    rintro _ ⟨y, hy, rfl⟩
    obtain ⟨h1, h2, h3⟩ := hT y (hBV hy)
    refine ⟨h1, ?_⟩
    show P.param k (P.proj k (P.param j y)) ∈ P.O j
    rw [h2]; exact h3
  have hTQ' : T ⊆ {x : E2 | a' ≤ x 0 ∧ x 0 < a' + s' ∧ b' ≤ x 1 ∧ x 1 < b' + s'} := by
    rw [hTdef]
    rintro _ ⟨y, hy, rfl⟩
    obtain ⟨h1, h2, h3, h4⟩ := hBτ y hy
    exact ⟨h1.le, h2, h3.le, h4⟩
  have hBQ : Metric.closedBall x₀ r ⊆
      {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} := by
    intro y hy
    obtain ⟨h1, h2, h3, h4⟩ := hBQo y hy
    exact ⟨h1.le, h2, h3.le, h4⟩
  
  have hdet : ∀ i, ContinuousOn (fun x => Real.sqrt (P.h i x).det) (P.W i) := by
    intro i
    apply ContinuousOn.sqrt
    have he : (fun x => (P.h i x).det) =
        fun x => P.h i x 0 0 * P.h i x 1 1 - P.h i x 0 1 * P.h i x 1 0 := by
      funext x; exact Matrix.det_fin_two _
    rw [he]
    exact ((P.h_smooth i 0 0).continuousOn.mul (P.h_smooth i 1 1).continuousOn).sub
      ((P.h_smooth i 0 1).continuousOn.mul (P.h_smooth i 1 0).continuousOn)
  obtain ⟨xm, hxmB, hxmin⟩ := hBc.exists_isMinOn hBne
    ((hdet j).mono (hBV.trans Set.inter_subset_left))
  have hmin : ∀ x ∈ Metric.closedBall x₀ r,
      Real.sqrt (P.h j xm).det ≤ Real.sqrt (P.h j x).det :=
    isMinOn_iff.1 hxmin
  have hμ : 0 < Real.sqrt (P.h j xm).det :=
    Real.sqrt_pos.2 (P.h_posDef j xm (hBV hxmB).1).det_pos
  obtain ⟨M₀, hM₀⟩ :=
    hTc.exists_bound_of_continuousOn ((hdet k).mono (hTV'.trans Set.inter_subset_left))
  have hM : ∀ y ∈ T, Real.sqrt (P.h k y).det ≤ max M₀ 0 := by
    intro y hy
    have h1 := hM₀ y hy
    rw [Real.norm_eq_abs] at h1
    exact (le_abs_self _).trans (h1.trans (le_max_left _ _))
  have hM0 : 0 ≤ max M₀ 0 := le_max_right _ _
  obtain ⟨CT, hCT⟩ : ∃ CT : ℝ, CT = max M₀ 0 / Real.sqrt (P.h j xm).det := ⟨_, rfl⟩
  have hCT0 : 0 ≤ CT := by rw [hCT]; exact div_nonneg hM0 hμ.le
  
  have htransfer : ∀ g : E2 → ℝ, ContinuousOn g T → (∀ y ∈ T, 0 ≤ g y) →
      ∫ x in Metric.closedBall x₀ r, g (P.proj k (P.param j x)) ≤ CT * ∫ y in T, g y := by
    intro g hg hg0
    obtain ⟨hEQ, hIFF⟩ := eig_chart_cov S P j k (T.indicator g)
    have hgdk : ContinuousOn (fun y => g y * Real.sqrt (P.h k y).det) T :=
      hg.mul ((hdet k).mono (hTV'.trans Set.inter_subset_left))
    have hintT : IntegrableOn (fun y => g y * Real.sqrt (P.h k y).det) T :=
      hgdk.integrableOn_compact hTc
    have hrw : (fun y => T.indicator g y * Real.sqrt (P.h k y).det) =
        T.indicator (fun y => g y * Real.sqrt (P.h k y).det) := by
      funext y
      by_cases hy : y ∈ T
      · rw [Set.indicator_of_mem hy, Set.indicator_of_mem hy]
      · simp [hy]
    have hRint : IntegrableOn (fun y => T.indicator g y * Real.sqrt (P.h k y).det)
        (P.W k ∩ P.param k ⁻¹' P.O j) := by
      rw [hrw]; exact ((integrable_indicator_iff hTm).2 hintT).integrableOn
    have hLint := hIFF.2 hRint
    have hRval : ∫ y in P.W k ∩ P.param k ⁻¹' P.O j, T.indicator g y * Real.sqrt (P.h k y).det =
        ∫ y in T, g y * Real.sqrt (P.h k y).det := by
      rw [hrw, setIntegral_indicator hTm, Set.inter_eq_right.2 hTV']
    have hgT : IntegrableOn g T := hg.integrableOn_compact hTc
    have hRle : ∫ y in T, g y * Real.sqrt (P.h k y).det ≤ ∫ y in T, max M₀ 0 * g y := by
      refine setIntegral_mono_on hintT (Integrable.const_mul hgT _) hTm ?_
      intro y hy
      have h1 := hM y hy
      have h2 := hg0 y hy
      nlinarith
    rw [integral_const_mul] at hRle
    have hΦnn : ∀ x, 0 ≤ T.indicator g (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det :=
      fun x => mul_nonneg (Set.indicator_nonneg hg0 _) (Real.sqrt_nonneg _)
    have hLle : ∫ x in Metric.closedBall x₀ r,
          T.indicator g (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det ≤
        ∫ x in P.W j ∩ P.param j ⁻¹' P.O k,
          T.indicator g (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det :=
      setIntegral_mono_set hLint (Filter.Eventually.of_forall hΦnn) hBV.eventuallyLE
    have hgτ : ContinuousOn (fun x => g (P.proj k (P.param j x))) (Metric.closedBall x₀ r) :=
      hg.comp hτB (fun x hx => hmemT x hx)
    have hμle : ∫ x in Metric.closedBall x₀ r,
          Real.sqrt (P.h j xm).det * g (P.proj k (P.param j x)) ≤
        ∫ x in Metric.closedBall x₀ r,
          T.indicator g (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det := by
      refine setIntegral_mono_on (Integrable.const_mul (hgτ.integrableOn_compact hBc) _)
        (hLint.mono_set hBV) hBm ?_
      intro x hx
      rw [Set.indicator_of_mem (hmemT x hx)]
      have h1 := hmin x hx
      have h2 := hg0 _ (hmemT x hx)
      nlinarith
    rw [integral_const_mul] at hμle
    have hchain : Real.sqrt (P.h j xm).det *
          ∫ x in Metric.closedBall x₀ r, g (P.proj k (P.param j x)) ≤
        max M₀ 0 * ∫ y in T, g y := by
      linarith [hEQ, hRval]
    rw [hCT, div_mul_eq_mul_div, le_div_iff₀ hμ]
    linarith
  
  refine ⟨2 * max 1 CT / (volume : Measure E2).real (Metric.closedBall x₀ r),
    div_nonneg (mul_nonneg zero_le_two (zero_le_one.trans (le_max_left _ _))) hβ.le,
    fun u hu => ?_⟩
  obtain ⟨m, hm⟩ : ∃ m : ℝ, m = (∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
      u (P.param j x)) / s ^ 2 := ⟨_, rfl⟩
  obtain ⟨m', hm'⟩ : ∃ m' : ℝ, m' = (∫ x in {x : E2 | a' ≤ x 0 ∧ x 0 < a' + s' ∧ b' ≤ x 1 ∧
      x 1 < b' + s'}, u (P.param k x)) / s' ^ 2 := ⟨_, rfl⟩
  rw [← hm, ← hm']
  have hvB : ContinuousOn (fun x => u (P.param j x)) (Metric.closedBall x₀ r) :=
    (hu j).mono (hBV.trans Set.inter_subset_left)
  have hA1i : IntegrableOn (fun x => (u (P.param j x) - m) ^ 2) (Metric.closedBall x₀ r) :=
    ((hvB.sub continuousOn_const).pow 2).integrableOn_compact hBc
  have hA2i : IntegrableOn (fun x => (u (P.param j x) - m') ^ 2) (Metric.closedBall x₀ r) :=
    ((hvB.sub continuousOn_const).pow 2).integrableOn_compact hBc
  have hcmp : ∫ x in Metric.closedBall x₀ r, (m - m') ^ 2 ≤
      ∫ x in Metric.closedBall x₀ r,
        (2 * (u (P.param j x) - m) ^ 2 + 2 * (u (P.param j x) - m') ^ 2) := by
    refine setIntegral_mono_on (continuousOn_const.integrableOn_compact hBc)
      ((Integrable.const_mul hA1i 2).add (Integrable.const_mul hA2i 2)) hBm ?_
    intro x _
    nlinarith [sq_nonneg (2 * u (P.param j x) - m - m')]
  rw [setIntegral_const, smul_eq_mul,
    integral_add (Integrable.const_mul hA1i 2) (Integrable.const_mul hA2i 2),
    integral_const_mul, integral_const_mul] at hcmp
  have hosc1 : ∫ x in Metric.closedBall x₀ r, (u (P.param j x) - m) ^ 2 ≤
      ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
        (u (P.param j x) - m) ^ 2 :=
    setIntegral_mono_set (square_iterated_integral (fun x => (u (P.param j x) - m) ^ 2) a b s hs
      ((((hu j).mono hsub).sub continuousOn_const).pow 2)).1
      (Filter.Eventually.of_forall (fun x => sq_nonneg _)) hBQ.eventuallyLE
  have hA2eq : ∫ x in Metric.closedBall x₀ r, (u (P.param j x) - m') ^ 2 =
      ∫ x in Metric.closedBall x₀ r, (u (P.param k (P.proj k (P.param j x))) - m') ^ 2 := by
    refine setIntegral_congr_fun hBm (fun x hx => ?_)
    show (u (P.param j x) - m') ^ 2 = (u (P.param k (P.proj k (P.param j x))) - m') ^ 2
    rw [(hT x (hBV hx)).2.1]
  have hgc : ContinuousOn (fun y => (u (P.param k y) - m') ^ 2) T :=
    (((hu k).mono (hTV'.trans Set.inter_subset_left)).sub continuousOn_const).pow 2
  have htr := htransfer (fun y => (u (P.param k y) - m') ^ 2) hgc (fun y _ => sq_nonneg _)
  have hosc2 : ∫ y in T, (u (P.param k y) - m') ^ 2 ≤
      ∫ x in {x : E2 | a' ≤ x 0 ∧ x 0 < a' + s' ∧ b' ≤ x 1 ∧ x 1 < b' + s'},
        (u (P.param k x) - m') ^ 2 :=
    setIntegral_mono_set (square_iterated_integral (fun x => (u (P.param k x) - m') ^ 2)
      a' b' s' hs' ((((hu k).mono hsub').sub continuousOn_const).pow 2)).1
      (Filter.Eventually.of_forall (fun x => sq_nonneg _)) hTQ'.eventuallyLE
  have ho1 : 0 ≤ ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s},
      (u (P.param j x) - m) ^ 2 := integral_nonneg (fun x => sq_nonneg _)
  have ho2 : 0 ≤ ∫ x in {x : E2 | a' ≤ x 0 ∧ x 0 < a' + s' ∧ b' ≤ x 1 ∧ x 1 < b' + s'},
      (u (P.param k x) - m') ^ 2 := integral_nonneg (fun x => sq_nonneg _)
  have key1 := mul_le_mul_of_nonneg_left hosc2 hCT0
  have key2 := le_mul_of_one_le_left ho1 (le_max_left 1 CT)
  have key3 := mul_le_mul_of_nonneg_right (le_max_right 1 CT) ho2
  rw [div_mul_eq_mul_div, le_div_iff₀ hβ]
  linarith

theorem pcr_poinc_reach {X : Type*} [TopologicalSpace X] (S : Set X) (hS : IsPreconnected S)
    {ι : Type*} (G : ι → Set X) (hG : ∀ i, IsOpen (G i)) (hcov : S ⊆ ⋃ i, G i)
    (hne : ∀ i, (S ∩ G i).Nonempty) (i₀ i : ι) :
    Relation.ReflTransGen (fun a b => (S ∩ G a ∩ G b).Nonempty) i₀ i :=
by
  classical
  set R : Set ι := {j | Relation.ReflTransGen (fun a b => (S ∩ G a ∩ G b).Nonempty) i₀ j}
    with hRdef
  by_contra hi
  have hU : IsOpen (⋃ j ∈ R, G j) := isOpen_biUnion (fun j _ => hG j)
  have hV : IsOpen (⋃ j ∈ Rᶜ, G j) := isOpen_biUnion (fun j _ => hG j)
  have hsub : S ⊆ (⋃ j ∈ R, G j) ∪ (⋃ j ∈ Rᶜ, G j) := by
    intro x hx
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (hcov hx)
    by_cases hjR : j ∈ R
    · exact Or.inl (Set.mem_biUnion hjR hj)
    · exact Or.inr (Set.mem_biUnion (show j ∈ Rᶜ from hjR) hj)
  have hSU : (S ∩ ⋃ j ∈ R, G j).Nonempty := by
    obtain ⟨x, hxS, hxG⟩ := hne i₀
    exact ⟨x, hxS, Set.mem_biUnion (show i₀ ∈ R from Relation.ReflTransGen.refl) hxG⟩
  have hSV : (S ∩ ⋃ j ∈ Rᶜ, G j).Nonempty := by
    obtain ⟨x, hxS, hxG⟩ := hne i
    exact ⟨x, hxS, Set.mem_biUnion (show i ∈ Rᶜ from hi) hxG⟩
  obtain ⟨x, hxS, hxU, hxV⟩ := hS _ _ hU hV hsub hSU hSV
  obtain ⟨a, haR, hxa⟩ := Set.mem_iUnion₂.1 hxU
  obtain ⟨b, hbR, hxb⟩ := Set.mem_iUnion₂.1 hxV
  exact hbR (Relation.ReflTransGen.tail haR ⟨x, ⟨hxS, hxa⟩, hxb⟩)

theorem pcr_poinc_cover_sum {ι : Type*} (t : Finset ι) (W : Set E2) (v : E2 → ℝ)
    (hv : ContinuousOn v W) (a b s : ι → ℝ) (hs : ∀ r ∈ t, 0 < s r)
    (hsub : ∀ r ∈ t, {x : E2 | a r ≤ x 0 ∧ x 0 ≤ a r + s r ∧ b r ≤ x 1 ∧ x 1 ≤ b r + s r} ⊆ W)
    (L : Set E2)
    (hL : L ⊆ ⋃ r ∈ t, {x : E2 | a r < x 0 ∧ x 0 < a r + s r ∧ b r < x 1 ∧ x 1 < b r + s r})
    (c : ℝ) :
    ∫ x in L, (v x - c) ^ 2 ≤ ∑ r ∈ t,
      (2 * (∫ x in {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r},
          (v x - (∫ y in {y : E2 | a r ≤ y 0 ∧ y 0 < a r + s r ∧ b r ≤ y 1 ∧ y 1 < b r + s r}, v y) /
            s r ^ 2) ^ 2) +
        2 * s r ^ 2 * ((∫ y in {y : E2 | a r ≤ y 0 ∧ y 0 < a r + s r ∧ b r ≤ y 1 ∧ y 1 < b r + s r}, v y) /
            s r ^ 2 - c) ^ 2) :=
by
  have hc0 : Continuous (fun x : E2 => x 0) := by fun_prop
  have hc1 : Continuous (fun x : E2 => x 1) := by fun_prop
  
  have hcpt : ∀ a b s : ℝ,
      IsCompact {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} := by
    intro a b s
    have hset : {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} =
        (EuclideanSpace.equiv (Fin 2) ℝ).toHomeomorph ⁻¹' Set.Icc ![a, b] ![a + s, b + s] := by
      ext x
      simp [Pi.le_def, Fin.forall_fin_two]
      tauto
    rw [hset]
    exact (EuclideanSpace.equiv (Fin 2) ℝ).toHomeomorph.isCompact_preimage.2 isCompact_Icc
  
  have hmeas : ∀ a b s : ℝ,
      MeasurableSet {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} := by
    intro a b s
    exact (measurableSet_le measurable_const hc0.measurable).inter
      ((measurableSet_lt hc0.measurable measurable_const).inter
        ((measurableSet_le measurable_const hc1.measurable).inter
          (measurableSet_lt hc1.measurable measurable_const)))
  
  have hvol : ∀ a b s : ℝ, 0 < s →
      volume.real {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} = s ^ 2 := by
    intro a b s hs
    have hset : {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} =
        (MeasurableEquiv.toLp 2 (Fin 2 → ℝ)).symm ⁻¹'
          (Set.univ.pi fun i => Set.Ico (![a, b] i) (![a + s, b + s] i)) := by
      ext x
      simp [Set.mem_pi, Fin.forall_fin_two]
      tauto
    rw [Measure.real, hset,
      (EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp (Fin 2)).measure_preimage
        (MeasurableSet.univ_pi fun i => measurableSet_Ico).nullMeasurableSet,
      Real.volume_pi_Ico]
    simp [Fin.prod_univ_two, ENNReal.toReal_mul, ENNReal.toReal_ofReal hs.le, sq]
  
  have hsq : ∀ a b s m : ℝ, 0 < s →
      ContinuousOn v {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} →
      IntegrableOn (fun x => (v x - c) ^ 2)
          {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} ∧
        ∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s}, (v x - c) ^ 2 ≤
          2 * (∫ x in {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s}, (v x - m) ^ 2) +
            2 * s ^ 2 * (m - c) ^ 2 := by
    intro a b s m hs hvc
    have hQsub : {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} ⊆
        {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} :=
      fun x hx => ⟨hx.1, hx.2.1.le, hx.2.2.1, hx.2.2.2.le⟩
    have hint : ∀ G : E2 → ℝ,
        ContinuousOn G {x : E2 | a ≤ x 0 ∧ x 0 ≤ a + s ∧ b ≤ x 1 ∧ x 1 ≤ b + s} →
        IntegrableOn G {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} :=
      fun G hG => (hG.integrableOn_compact (hcpt a b s)).mono_set hQsub
    have h1 := hint (fun x => (v x - c) ^ 2) ((hvc.sub continuousOn_const).pow 2)
    have h2 := hint (fun x => (v x - m) ^ 2) ((hvc.sub continuousOn_const).pow 2)
    have h3 := hint (fun _ => 2 * (m - c) ^ 2) continuousOn_const
    refine ⟨h1, ?_⟩
    have h4 : IntegrableOn (fun x => 2 * (v x - m) ^ 2 + 2 * (m - c) ^ 2)
        {x : E2 | a ≤ x 0 ∧ x 0 < a + s ∧ b ≤ x 1 ∧ x 1 < b + s} :=
      (h2.const_mul 2).add h3
    have hmono := setIntegral_mono (g := fun x => 2 * (v x - m) ^ 2 + 2 * (m - c) ^ 2) h1 h4
      (fun x => by
        show (v x - c) ^ 2 ≤ 2 * (v x - m) ^ 2 + 2 * (m - c) ^ 2
        nlinarith [sq_nonneg (v x - 2 * m + c)])
    rw [integral_add (h2.const_mul 2) h3, integral_const_mul, setIntegral_const,
      hvol a b s hs, smul_eq_mul] at hmono
    linarith
  
  have hU : L ⊆ ⋃ r ∈ t, {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r} := by
    intro x hx
    obtain ⟨r, hr, hxr⟩ := Set.mem_iUnion₂.1 (hL hx)
    exact Set.mem_iUnion₂.2 ⟨r, hr, hxr.1.le, hxr.2.1, hxr.2.2.1.le, hxr.2.2.2⟩
  have hfi : ∀ r ∈ t, IntegrableOn (fun x => (v x - c) ^ 2)
      {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r} :=
    fun r hr => (hsq (a r) (b r) (s r) 0 (hs r hr) (hv.mono (hsub r hr))).1
  have hUi := integrableOn_finset_iUnion.2 hfi
  have hUm : MeasurableSet
      (⋃ r ∈ t, {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r}) :=
    Finset.measurableSet_biUnion t (fun r _ => hmeas (a r) (b r) (s r))
  have hnn : ∀ (A : Set E2) (x : E2), 0 ≤ A.indicator (fun x => (v x - c) ^ 2) x :=
    fun A x => Set.indicator_nonneg (fun y _ => sq_nonneg _) x
  have step1 := setIntegral_mono_set hUi (ae_of_all _ (fun x => sq_nonneg (v x - c)))
    hU.eventuallyLE
  have step2 : ∫ x in ⋃ r ∈ t, {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r},
      (v x - c) ^ 2 ≤ ∑ r ∈ t,
        ∫ x in {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r}, (v x - c) ^ 2 := by
    rw [← integral_indicator hUm]
    rw [Finset.sum_congr rfl (fun r _ => (integral_indicator (hmeas (a r) (b r) (s r))).symm)]
    rw [← integral_finset_sum t (fun r hr =>
      (integrable_indicator_iff (hmeas (a r) (b r) (s r))).2 (hfi r hr))]
    refine integral_mono ((integrable_indicator_iff hUm).2 hUi)
      (integrable_finset_sum t (fun r hr =>
        (integrable_indicator_iff (hmeas (a r) (b r) (s r))).2 (hfi r hr))) (fun x => ?_)
    by_cases hx : x ∈ ⋃ r ∈ t, {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r}
    · obtain ⟨r, hr, hxr⟩ := Set.mem_iUnion₂.1 hx
      rw [Set.indicator_of_mem hx]
      calc (v x - c) ^ 2 = {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r}.indicator
            (fun x => (v x - c) ^ 2) x := (Set.indicator_of_mem hxr (fun x => (v x - c) ^ 2)).symm
        _ ≤ ∑ r ∈ t, {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r}.indicator
            (fun x => (v x - c) ^ 2) x :=
          Finset.single_le_sum (f := fun r => {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧
            x 1 < b r + s r}.indicator (fun x => (v x - c) ^ 2) x) (fun r _ => hnn _ x) hr
    · rw [Set.indicator_of_notMem hx]
      exact Finset.sum_nonneg (fun r _ => hnn _ x)
  refine (step1.trans step2).trans (Finset.sum_le_sum fun r hr => ?_)
  exact (hsq (a r) (b r) (s r) _ (hs r hr) (hv.mono (hsub r hr))).2

theorem pcr_dw_patched_poincare {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hSc : IsCompact S) (hSne : S.Nonempty) (hSpc : IsPreconnected S)
    (P : EigPatchedSurface X S) (ρ : Fin P.n → X → ℝ) (K : Fin P.n → Set E2)
    (hρnn : ∀ j q, 0 ≤ ρ j q)
    (hρc : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1) (hK : ∀ j, IsCompact (K j) ∧ K j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ K j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ u : X → ℝ, (∀ j, ContDiffOn ℝ ∞ (fun x => u (P.param j x)) (P.W j)) →
      eigWInt P ρ (fun j x => u (P.param j x) ^ 2) ≤
        C * eigWInt P ρ (eigGam P u u) + C * eigWInt P ρ (fun j x => u (P.param j x)) ^ 2 :=
by
  classical
  
  have hρc' : ∀ j, ContinuousOn (fun x => ρ j (P.param j x)) (P.W j) :=
    fun j => (hρc j j).continuousOn
  obtain ⟨hlin, -, hcongr, -, hnn, ⟨A, hA0, hAb⟩, hpos⟩ :=
    eig_wint_facts S P ρ K hρnn hρc' hK hρK
  
  have hQ : ∀ j, ∀ q ∈ S, q ∈ P.O j → P.proj j q ∈ P.W j ∧ P.param j (P.proj j q) = q := by
    intro j q hqS hqO
    have hq : q ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hqO, hqS⟩
    obtain ⟨x, hx, rfl⟩ := hq
    rw [P.proj_param j x hx]
    exact ⟨hx, rfl⟩
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ P.O j ∩ S := by
    intro j x hx
    rw [← P.image_eq j]
    exact ⟨x, hx, rfl⟩
  have hsome : ∀ q ∈ S, ∃ j, ρ j q ≠ 0 := by
    intro q hq
    have h1 : ∑ j, ρ j q ≠ 0 := by rw [hρ1 q hq]; exact one_ne_zero
    obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero h1
    exact ⟨j, hj⟩
  have hinO : ∀ j q, ρ j q ≠ 0 → q ∈ P.O j := by
    intro j q h
    by_contra hc
    exact h (hρO j q hc)
  obtain ⟨q₀, hq₀⟩ := hSne
  
  have hV : 0 < eigWInt P ρ (fun _ _ => (1 : ℝ)) := by
    obtain ⟨j₀, hj₀⟩ := hsome q₀ hq₀
    obtain ⟨hx₀, hpx₀⟩ := hQ j₀ q₀ hq₀ (hinO j₀ q₀ hj₀)
    refine hpos (fun _ _ => (1 : ℝ)) (fun _ => continuousOn_const)
      ⟨j₀, P.proj j₀ q₀, hx₀, ?_⟩ (fun _ _ _ => one_pos)
    rw [hpx₀]
    exact lt_of_le_of_ne (hρnn j₀ q₀) (Ne.symm hj₀)
  
  have hE0 : ∀ u : X → ℝ, (∀ i, ContDiffOn ℝ ∞ (fun x => u (P.param i x)) (P.W i)) →
      0 ≤ eigWInt P ρ (eigGam P u u) :=
    fun u hu => hnn _ (fun j x hx => (eig_gam_facts S P u u hu hu j).2.1 x ((hK j).2 hx))
  
  obtain ⟨m, jr, a, b, s, hs, hsub, hcovK⟩ := pcr_poinc_square_cover P.n P.W P.W_open K hK
  have hc0 : Continuous (fun x : E2 => x 0) := by fun_prop
  have hc1 : Continuous (fun x : E2 => x 1) := by fun_prop
  have hQoOpen : ∀ r, IsOpen {x : E2 | a r < x 0 ∧ x 0 < a r + s r ∧ b r < x 1 ∧ x 1 < b r + s r} := by
    intro r
    exact (isOpen_lt continuous_const hc0).inter ((isOpen_lt hc0 continuous_const).inter
      ((isOpen_lt continuous_const hc1).inter (isOpen_lt hc1 continuous_const)))
  obtain ⟨Gs, hGs⟩ : ∃ Gs : Fin m → Set X, Gs = fun r => P.O (jr r) ∩ P.proj (jr r) ⁻¹'
      {x : E2 | a r < x 0 ∧ x 0 < a r + s r ∧ b r < x 1 ∧ x 1 < b r + s r} := ⟨_, rfl⟩
  have hmemG : ∀ r q, q ∈ Gs r ↔ q ∈ P.O (jr r) ∧
      P.proj (jr r) q ∈ {x : E2 | a r < x 0 ∧ x 0 < a r + s r ∧ b r < x 1 ∧ x 1 < b r + s r} := by
    intro r q
    rw [hGs]
    exact Iff.rfl
  have hGopen : ∀ r, IsOpen (Gs r) := by
    intro r
    rw [hGs]
    exact (P.proj_cont (jr r)).isOpen_inter_preimage (P.O_open _) (hQoOpen r)
  have hGcov : ∀ q ∈ S, ∃ r, q ∈ Gs r := by
    intro q hq
    obtain ⟨j, hj⟩ := hsome q hq
    have hqO := hinO j q hj
    obtain ⟨hxW, hpx⟩ := hQ j q hq hqO
    have hxK : P.proj j q ∈ K j := by
      by_contra hc
      have h0 := hρK j _ hxW hc
      rw [hpx] at h0
      exact hj h0
    obtain ⟨r, hr, hxr⟩ := hcovK j _ hxK
    subst hr
    exact ⟨r, (hmemG r q).2 ⟨hqO, hxr⟩⟩
  have hGcov' : S ⊆ ⋃ r, Gs r := fun q hq => Set.mem_iUnion.2 (hGcov q hq)
  have hGne : ∀ r, (S ∩ Gs r).Nonempty := by
    intro r
    have hsr := hs r
    obtain ⟨xc, hxc0, hxc1⟩ : ∃ xc : E2, xc 0 = a r + s r / 2 ∧ xc 1 = b r + s r / 2 :=
      ⟨!₂[a r + s r / 2, b r + s r / 2], by simp, by simp⟩
    have hxcQo : xc ∈ {x : E2 | a r < x 0 ∧ x 0 < a r + s r ∧ b r < x 1 ∧ x 1 < b r + s r} := by
      simp only [Set.mem_setOf_eq, hxc0, hxc1]
      refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith
    have hxcW : xc ∈ P.W (jr r) := by
      apply hsub r
      simp only [Set.mem_setOf_eq, hxc0, hxc1]
      refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith
    obtain ⟨hO, hS⟩ := hparS (jr r) xc hxcW
    refine ⟨P.param (jr r) xc, hS, (hmemG r _).2 ⟨hO, ?_⟩⟩
    rw [P.proj_param _ xc hxcW]
    exact hxcQo
  obtain ⟨r₀, -⟩ := hGcov q₀ hq₀
  
  obtain ⟨mean, hmean⟩ : ∃ mean : Fin m → (X → ℝ) → ℝ, mean = fun r u =>
      (∫ x in {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r},
        u (P.param (jr r) x)) / s r ^ 2 := ⟨_, rfl⟩
  obtain ⟨osc, hosc⟩ : ∃ osc : Fin m → (X → ℝ) → ℝ, osc = fun r u =>
      ∫ x in {x : E2 | a r ≤ x 0 ∧ x 0 < a r + s r ∧ b r ≤ x 1 ∧ x 1 < b r + s r},
        (u (P.param (jr r) x) - (∫ y in {y : E2 | a r ≤ y 0 ∧ y 0 < a r + s r ∧ b r ≤ y 1 ∧
          y 1 < b r + s r}, u (P.param (jr r) y)) / s r ^ 2) ^ 2 := ⟨_, rfl⟩
  have hC : ∀ r, ∃ C : ℝ, 0 ≤ C ∧ ∀ u : X → ℝ,
      (∀ i, ContDiffOn ℝ ∞ (fun x => u (P.param i x)) (P.W i)) →
      osc r u ≤ C * eigWInt P ρ (eigGam P u u) := by
    intro r
    obtain ⟨C, hC0, hCu⟩ := pcr_poinc_square_energy S P ρ K hρnn hρc hρ1 hK hρK hρO
      (jr r) (a r) (b r) (s r) (hs r) (hsub r)
    refine ⟨C, hC0, fun u hu => ?_⟩
    simp only [hosc]
    exact hCu u hu
  choose C hC0 hCb using hC
  have hedge : ∀ r r', (S ∩ Gs r ∩ Gs r').Nonempty → ∃ D : ℝ, 0 ≤ D ∧ ∀ u : X → ℝ,
      (∀ i, ContDiffOn ℝ ∞ (fun x => u (P.param i x)) (P.W i)) →
      (mean r u - mean r' u) ^ 2 ≤ D * eigWInt P ρ (eigGam P u u) := by
    rintro r r' ⟨q, ⟨hqS, hq1⟩, hq2⟩
    rw [hmemG] at hq1 hq2
    obtain ⟨D, hD0, hD⟩ := pcr_poinc_overlap_means S P (jr r) (jr r') (a r) (b r) (s r)
      (a r') (b r') (s r') (hs r) (hs r') (hsub r) (hsub r') q hqS hq1.1 hq2.1 hq1.2 hq2.2
    refine ⟨D * (C r + C r'), mul_nonneg hD0 (add_nonneg (hC0 r) (hC0 r')), fun u hu => ?_⟩
    have h1 := hD u (fun i => (hu i).continuousOn)
    have h2 := hCb r u hu
    have h3 := hCb r' u hu
    simp only [hosc] at h2 h3
    simp only [hmean]
    calc _ ≤ _ := h1
      _ ≤ D * (C r * eigWInt P ρ (eigGam P u u) + C r' * eigWInt P ρ (eigGam P u u)) :=
          mul_le_mul_of_nonneg_left (add_le_add h2 h3) hD0
      _ = _ := by ring
  have hchain : ∀ r, ∃ D : ℝ, 0 ≤ D ∧ ∀ u : X → ℝ,
      (∀ i, ContDiffOn ℝ ∞ (fun x => u (P.param i x)) (P.W i)) →
      (mean r u - mean r₀ u) ^ 2 ≤ D * eigWInt P ρ (eigGam P u u) := by
    intro r
    have hR := pcr_poinc_reach S hSpc Gs hGopen hGcov' hGne r₀ r
    induction hR with
    | refl => exact ⟨0, le_rfl, fun u hu => by simp⟩
    | @tail b' c' _ hbc ih =>
      obtain ⟨D₁, hD₁, h₁⟩ := ih
      obtain ⟨D₂, hD₂, h₂⟩ := hedge b' c' hbc
      refine ⟨2 * D₂ + 2 * D₁, by positivity, fun u hu => ?_⟩
      have e1 := h₁ u hu
      have e2 := h₂ u hu
      nlinarith [sq_nonneg (mean c' u - 2 * mean b' u + mean r₀ u)]
  choose Dc hDc0 hDcb using hchain
  
  obtain ⟨T, hT⟩ : ∃ T : ℝ, T = ∑ j, ∑ r ∈ Finset.univ.filter (fun r => jr r = j),
      (2 * C r + 2 * s r ^ 2 * Dc r) := ⟨_, rfl⟩
  have hT0 : 0 ≤ T := by
    rw [hT]
    refine Finset.sum_nonneg (fun j _ => Finset.sum_nonneg (fun r _ => ?_))
    have h1 := hC0 r
    have h2 := hDc0 r
    positivity
  set Vv := eigWInt P ρ (fun _ _ => (1 : ℝ)) with hVv
  refine ⟨max (A * T) (1 / Vv), le_max_of_le_right (one_div_pos.2 hV).le, fun u hu => ?_⟩
  have hcont : ∀ j, ContinuousOn (fun x => u (P.param j x)) (P.W j) :=
    fun j => (hu j).continuousOn
  obtain ⟨c, hc⟩ : ∃ c : ℝ, c = mean r₀ u := ⟨_, rfl⟩
  set E := eigWInt P ρ (eigGam P u u) with hE
  set Iu := eigWInt P ρ (fun j x => u (P.param j x)) with hIu
  have hEn := hE0 u hu
  
  have hl := hlin (fun j x => (u (P.param j x) - c) ^ 2) (fun j x => u (P.param j x))
    (fun _ _ => (1 : ℝ)) (fun j => ((hcont j).sub continuousOn_const).pow 2) hcont
    (fun _ => continuousOn_const) 1 (2 * c) (-c ^ 2)
  have hc2 := hcongr (fun j x => u (P.param j x) ^ 2)
    (fun j x => 1 * (u (P.param j x) - c) ^ 2 + 2 * c * u (P.param j x) + -c ^ 2 * 1)
    (fun j x _ => by ring)
  have hN : eigWInt P ρ (fun j x => u (P.param j x) ^ 2) =
      1 * eigWInt P ρ (fun j x => (u (P.param j x) - c) ^ 2) + 2 * c * Iu + -c ^ 2 * Vv :=
    hc2.trans hl
  have hvar : 2 * c * Iu - c ^ 2 * Vv ≤ Iu ^ 2 / Vv := by
    rw [le_div_iff₀ hV]
    nlinarith [sq_nonneg (Iu - c * Vv)]
  
  have hNc := hAb (fun j x => (u (P.param j x) - c) ^ 2)
    (fun j => ((hcont j).sub continuousOn_const).pow 2) (fun j x _ => sq_nonneg _)
  
  have hKj : ∀ j, ∫ x in K j, (u (P.param j x) - c) ^ 2 ≤
      (∑ r ∈ Finset.univ.filter (fun r => jr r = j), (2 * C r + 2 * s r ^ 2 * Dc r)) * E := by
    intro j
    have hcs := pcr_poinc_cover_sum (Finset.univ.filter (fun r => jr r = j)) (P.W j)
      (fun x => u (P.param j x)) (hcont j) a b s (fun r _ => hs r)
      (fun r hr => by rw [← (Finset.mem_filter.1 hr).2]; exact hsub r)
      (K j) (fun x hx => by
        obtain ⟨r, hr, hxr⟩ := hcovK j x hx
        exact Set.mem_biUnion (Finset.mem_filter.2 ⟨Finset.mem_univ _, hr⟩) hxr) c
    refine hcs.trans ?_
    rw [Finset.sum_mul]
    refine Finset.sum_le_sum (fun r hr => ?_)
    have hrj : jr r = j := (Finset.mem_filter.1 hr).2
    subst hrj
    have h1 := hCb r u hu
    have h2 := hDcb r u hu
    simp only [hosc] at h1
    simp only [hmean] at h2 hc
    rw [hc]
    have hs2 : 0 ≤ s r ^ 2 := sq_nonneg _
    have h3 := mul_le_mul_of_nonneg_left h2 hs2
    rw [← hE] at h1 h3
    have key : ∀ O M : ℝ, O ≤ C r * E → s r ^ 2 * M ≤ s r ^ 2 * (Dc r * E) →
        2 * O + 2 * s r ^ 2 * M ≤ (2 * C r + 2 * s r ^ 2 * Dc r) * E := by
      intro O M h h'
      nlinarith [h, h']
    exact key _ _ h1 h3
  have hsumK : ∑ j, ∫ x in K j, (u (P.param j x) - c) ^ 2 ≤ T * E := by
    rw [hT, Finset.sum_mul]
    exact Finset.sum_le_sum (fun j _ => hKj j)
  
  have hmain : eigWInt P ρ (fun j x => u (P.param j x) ^ 2) ≤ (A * T) * E + (1 / Vv) * Iu ^ 2 := by
    have h1 : eigWInt P ρ (fun j x => (u (P.param j x) - c) ^ 2) ≤ A * (T * E) :=
      hNc.trans (mul_le_mul_of_nonneg_left hsumK hA0.le)
    have h2 : Iu ^ 2 / Vv = (1 / Vv) * Iu ^ 2 := by ring
    rw [hN]
    nlinarith [h1, h2, hvar]
  have hI2 : 0 ≤ Iu ^ 2 := sq_nonneg _
  calc eigWInt P ρ (fun j x => u (P.param j x) ^ 2) ≤ (A * T) * E + (1 / Vv) * Iu ^ 2 := hmain
    _ ≤ max (A * T) (1 / Vv) * E + max (A * T) (1 / Vv) * Iu ^ 2 :=
        add_le_add (mul_le_mul_of_nonneg_right (le_max_left _ _) hEn)
          (mul_le_mul_of_nonneg_right (le_max_right _ _) hI2)

theorem pcr_dw_var_seq {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hSne : S.Nonempty) (P : EigPatchedSurface X S)
    (ρ : Fin P.n → X → ℝ) (K : Fin P.n → Set E2)
    (hρnn : ∀ j q, 0 ≤ ρ j q)
    (hρc : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1) (hK : ∀ j, IsCompact (K j) ∧ K j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ K j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0)
    (hpoinc : ∃ C : ℝ, 0 ≤ C ∧ ∀ u : X → ℝ,
      (∀ j, ContDiffOn ℝ ∞ (fun x => u (P.param j x)) (P.W j)) →
      eigWInt P ρ (fun j x => u (P.param j x) ^ 2) ≤
        C * eigWInt P ρ (eigGam P u u) + C * eigWInt P ρ (fun j x => u (P.param j x)) ^ 2)
    (σ : Fin P.n → E2 → ℝ) (hσ : ∀ j, ContDiffOn ℝ ∞ (σ j) (P.W j))
    (hσpos : ∀ j, ∀ x ∈ P.W j, 0 < σ j x)
    (hσcomp : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, σ j x = σ k (P.proj k (P.param j x)))
    (f : X → ℝ) (hfc : ∀ j, ContinuousOn (fun x => f (P.param j x)) (P.W j)) :
    ∃ (κ : ℝ) (u : ℕ → X → ℝ) (δ : ℕ → ℝ),
      (∀ n j, ContDiffOn ℝ ∞ (fun x => u n (P.param j x)) (P.W j)) ∧
      Tendsto δ atTop (𝓝 0) ∧
      (∀ j (L : Set E2), IsCompact L → L ⊆ P.W j → ∃ C : ℝ, ∀ n,
        ∫ x in L, ((u n (P.param j x)) ^ 2 +
          ∑ k : Fin 2, (pd2 k (fun x' => u n (P.param j x')) x) ^ 2) ≤ C) ∧
      ∀ j (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ P.W j →
        ∃ M : ℝ, ∀ n (t : ℝ), 0 ≤ δ n + 2 * t *
          ((∫ x, ∑ a : Fin 2, ∑ b : Fin 2, σ j x * Real.sqrt (P.h j x).det * (P.h j x)⁻¹ a b *
              pd2 b (fun x' => u n (P.param j x')) x * pd2 a ζ x) -
            ∫ x, (f (P.param j x) + κ) * Real.sqrt (P.h j x).det * ζ x) + t ^ 2 * M :=
by
  classical
  
  have hP1 : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ P.O j ∧ P.param j x ∈ S := by
    intro j x hx
    have hmem : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at hmem
    exact hmem
  have hP3 : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j x) ∈ P.W k ∧ P.param k (P.proj k (P.param j x)) = P.param j x := by
    intro j k x hx
    have hq : P.param j x ∈ P.O k ∩ S := ⟨hx.2, (hP1 j x hx.1).2⟩
    rw [← P.image_eq k] at hq
    obtain ⟨y, hy, hyx⟩ := hq
    rw [← hyx, P.proj_param k y hy]
    exact ⟨hy, rfl⟩
  have hρc' : ∀ j k, ContinuousOn (fun x => ρ j (P.param k x)) (P.W k) :=
    fun j k => (hρc j k).continuousOn
  obtain ⟨hlin, hsmul, hcongr, hmono, hnn, -, hposI⟩ :=
    eig_wint_facts S P ρ K hρnn (fun j => hρc' j j) hK hρK
  obtain ⟨CP, hCP, hPo⟩ := hpoinc
  have hσc : ∀ j, ContinuousOn (σ j) (P.W j) := fun j => (hσ j).continuousOn
  
  have hρpos : ∃ j, ∃ x ∈ P.W j, 0 < ρ j (P.param j x) := by
    obtain ⟨p, hp⟩ := hSne
    have hsum := hρ1 p hp
    have hj : ∃ j, 0 < ρ j p := by
      by_contra hcon
      push_neg at hcon
      have : ∑ j, ρ j p ≤ 0 := Finset.sum_nonpos (fun j _ => hcon j)
      linarith
    obtain ⟨j, hj⟩ := hj
    have hpO : p ∈ P.O j := by
      by_contra hno
      rw [hρO j p hno] at hj
      exact lt_irrefl _ hj
    have hq : p ∈ P.O j ∩ S := ⟨hpO, hp⟩
    rw [← P.image_eq j] at hq
    obtain ⟨x, hx, hxp⟩ := hq
    exact ⟨j, x, hx, by rw [hxp]; exact hj⟩
  obtain ⟨ONE, hONE⟩ : ∃ ONE : Fin P.n → E2 → ℝ, ∀ j x, ONE j x = 1 :=
    ⟨fun _ _ => 1, fun _ _ => rfl⟩
  have hONEc : ∀ j, ContinuousOn (ONE j) (P.W j) :=
    fun j => continuousOn_const.congr (fun x _ => hONE j x)
  obtain ⟨V, hVdef⟩ : ∃ V : ℝ, V = eigWInt P ρ ONE := ⟨_, rfl⟩
  have hV : 0 < V := by
    rw [hVdef]
    exact hposI ONE hONEc hρpos (fun j x _ => by rw [hONE]; exact zero_lt_one)
  
  obtain ⟨Ff, hFf⟩ : ∃ Ff : Fin P.n → E2 → ℝ, ∀ j x, Ff j x = f (P.param j x) :=
    ⟨fun j x => f (P.param j x), fun _ _ => rfl⟩
  have hFfc : ∀ j, ContinuousOn (Ff j) (P.W j) := fun j => (hfc j).congr (fun x _ => hFf j x)
  obtain ⟨κ, hκ⟩ : ∃ κ : ℝ, κ = -(eigWInt P ρ Ff) / V := ⟨_, rfl⟩
  obtain ⟨Gg, hGg⟩ : ∃ Gg : Fin P.n → E2 → ℝ, ∀ j x, Gg j x = f (P.param j x) + κ :=
    ⟨fun j x => f (P.param j x) + κ, fun _ _ => rfl⟩
  have hGgc : ∀ j, ContinuousOn (Gg j) (P.W j) :=
    fun j => ((hfc j).add continuousOn_const).congr (fun x _ => hGg j x)
  have hGg0 : eigWInt P ρ Gg = 0 := by
    have e := hlin Ff ONE ONE hFfc hONEc hONEc 1 κ 0
    have hc : eigWInt P ρ Gg = eigWInt P ρ (fun j x => 1 * Ff j x + κ * ONE j x + 0 * ONE j x) :=
      hcongr _ _ (fun j x _ => by simp only [hGg, hFf, hONE]; ring)
    rw [hc.trans e, ← hVdef, hκ, div_mul_cancel₀ _ hV.ne']
    ring
  
  obtain ⟨Cl, hCl⟩ : ∃ Cl : Set (X → ℝ), ∀ w, w ∈ Cl ↔
      ∀ j, ContDiffOn ℝ ∞ (fun x => w (P.param j x)) (P.W j) :=
    ⟨{w | ∀ j, ContDiffOn ℝ ∞ (fun x => w (P.param j x)) (P.W j)}, fun w => Iff.rfl⟩
  obtain ⟨SG, hSG⟩ : ∃ SG : (X → ℝ) → (X → ℝ) → Fin P.n → E2 → ℝ,
      ∀ w z j x, SG w z j x = σ j x * eigGam P w z j x :=
    ⟨fun w z j x => σ j x * eigGam P w z j x, fun _ _ _ _ => rfl⟩
  obtain ⟨LF, hLF⟩ : ∃ LF : (X → ℝ) → Fin P.n → E2 → ℝ,
      ∀ w j x, LF w j x = Gg j x * w (P.param j x) :=
    ⟨fun w j x => Gg j x * w (P.param j x), fun _ _ _ => rfl⟩
  obtain ⟨MF, hMF⟩ : ∃ MF : (X → ℝ) → Fin P.n → E2 → ℝ, ∀ w j x, MF w j x = w (P.param j x) :=
    ⟨fun w j x => w (P.param j x), fun _ _ _ => rfl⟩
  have hSGc : ∀ w z : X → ℝ, (∀ j, ContDiffOn ℝ ∞ (fun x => w (P.param j x)) (P.W j)) →
      (∀ j, ContDiffOn ℝ ∞ (fun x => z (P.param j x)) (P.W j)) →
      ∀ j, ContinuousOn (SG w z j) (P.W j) := by
    intro w z hw hz j
    exact ((hσc j).mul (eig_gam_facts S P w z hw hz j).1).congr (fun x _ => hSG w z j x)
  have hLFc : ∀ w : X → ℝ, (∀ j, ContDiffOn ℝ ∞ (fun x => w (P.param j x)) (P.W j)) →
      ∀ j, ContinuousOn (LF w j) (P.W j) := by
    intro w hw j
    exact ((hGgc j).mul (hw j).continuousOn).congr (fun x _ => hLF w j x)
  have hMFc : ∀ w : X → ℝ, (∀ j, ContDiffOn ℝ ∞ (fun x => w (P.param j x)) (P.W j)) →
      ∀ j, ContinuousOn (MF w j) (P.W j) := by
    intro w hw j
    exact (hw j).continuousOn.congr (fun x _ => hMF w j x)
  obtain ⟨J, hJ⟩ : ∃ J : (X → ℝ) → ℝ, ∀ w,
      J w = eigWInt P ρ (SG w w) - 2 * eigWInt P ρ (LF w) :=
    ⟨fun w => eigWInt P ρ (SG w w) - 2 * eigWInt P ρ (LF w), fun _ => rfl⟩
  obtain ⟨B, hB⟩ : ∃ B : (X → ℝ) → (X → ℝ) → ℝ, ∀ w z,
      B w z = eigWInt P ρ (SG w z) - eigWInt P ρ (LF z) :=
    ⟨fun w z => eigWInt P ρ (SG w z) - eigWInt P ρ (LF z), fun _ _ => rfl⟩
  obtain ⟨D, hD⟩ : ∃ D : (X → ℝ) → ℝ, ∀ z, D z = eigWInt P ρ (SG z z) :=
    ⟨fun z => eigWInt P ρ (SG z z), fun _ => rfl⟩
  obtain ⟨Mn, hMn⟩ : ∃ Mn : (X → ℝ) → ℝ, ∀ w, Mn w = eigWInt P ρ (MF w) :=
    ⟨fun w => eigWInt P ρ (MF w), fun _ => rfl⟩
  have hC : ∀ w ∈ Cl, ∀ z ∈ Cl, ∀ t : ℝ, w + t • z ∈ Cl := by
    intro w hw z hz t
    rw [hCl] at hw hz ⊢
    intro j
    exact (hw j).add ((hz j).const_smul t)
  
  have hJq : ∀ w ∈ Cl, ∀ z ∈ Cl, ∀ t : ℝ, J (w + t • z) = J w + 2 * t * B w z + t ^ 2 * D z := by
    intro w hw z hz t
    rw [hCl] at hw hz
    have e1 := hlin (SG w w) (SG w z) (SG z z) (hSGc w w hw hw) (hSGc w z hw hz)
      (hSGc z z hz hz) 1 (2 * t) (t ^ 2)
    have c1 : eigWInt P ρ (SG (w + t • z) (w + t • z)) = eigWInt P ρ
        (fun j x => 1 * SG w w j x + 2 * t * SG w z j x + t ^ 2 * SG z z j x) := by
      apply hcongr
      intro j x hx
      simp only [hSG]
      rw [(eig_gam_facts S P w z hw hz j).2.2 x hx t]
      ring
    have e2 := hlin (LF w) (LF z) (LF z) (hLFc w hw) (hLFc z hz) (hLFc z hz) 1 t 0
    have c2 : eigWInt P ρ (LF (w + t • z)) = eigWInt P ρ
        (fun j x => 1 * LF w j x + t * LF z j x + 0 * LF z j x) := by
      apply hcongr
      intro j x _
      simp only [hLF, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
      ring
    rw [hJ, hJ, hB, hD, c1.trans e1, c2.trans e2]
    ring
  have hMq : ∀ w ∈ Cl, ∀ z ∈ Cl, ∀ t : ℝ, Mn (w + t • z) = Mn w + t * Mn z := by
    intro w hw z hz t
    rw [hCl] at hw hz
    have e := hlin (MF w) (MF z) (MF z) (hMFc w hw) (hMFc z hz) (hMFc z hz) 1 t 0
    have hc : eigWInt P ρ (MF (w + t • z)) = eigWInt P ρ
        (fun j x => 1 * MF w j x + t * MF z j x + 0 * MF z j x) :=
      hcongr _ _ (fun j x _ => by simp only [hMF, Pi.add_apply, Pi.smul_apply, smul_eq_mul]; ring)
    rw [hMn, hMn, hMn, hc.trans e]
    ring
  
  have hone : (fun _ : X => (1 : ℝ)) ∈ Cl := (hCl _).2 (fun j => contDiffOn_const)
  have hSG1 : ∀ w : X → ℝ, eigWInt P ρ (SG w (fun _ : X => (1 : ℝ))) = 0 := by
    intro w
    have h := hcongr (SG w (fun _ : X => (1 : ℝ))) (fun j x => 0 * ONE j x)
      (fun j x _ => by rw [hSG]; simp [eigGam, pd2])
    rw [h, hsmul, zero_mul]
  have hLF1 : eigWInt P ρ (LF (fun _ : X => (1 : ℝ))) = 0 := by
    rw [hcongr (LF (fun _ : X => (1 : ℝ))) Gg (fun j x _ => by simp only [hLF, mul_one])]
    exact hGg0
  have hMone : Mn (fun _ : X => (1 : ℝ)) = V := by
    rw [hMn, hVdef]
    exact hcongr _ _ (fun j x _ => by simp only [hMF, hONE])
  have hDone : D (fun _ : X => (1 : ℝ)) = 0 := by rw [hD]; exact hSG1 _
  have hBone : ∀ w : X → ℝ, B w (fun _ : X => (1 : ℝ)) = 0 := by
    intro w
    rw [hB, hSG1, hLF1, sub_zero]
  
  have hnorm : ∀ w ∈ Cl, ∃ v ∈ Cl, Mn v = 0 ∧ J v = J w := by
    intro w hw
    refine ⟨w + (-(Mn w) / V) • (fun _ : X => (1 : ℝ)), hC w hw _ hone _, ?_, ?_⟩
    · rw [hMq w hw _ hone, hMone, div_mul_cancel₀ _ hV.ne']
      ring
    · rw [hJq w hw _ hone, hBone w, hDone]
      ring
  
  obtain ⟨Cs, hCs0, hCs⟩ : ∃ Cs : ℝ, 0 ≤ Cs ∧ ∀ j, ∀ x ∈ K j, 1 ≤ Cs * σ j x := by
    have hb : ∀ j, ∃ C : ℝ, ∀ x ∈ K j, ‖(σ j x)⁻¹‖ ≤ C := fun j =>
      (hK j).1.exists_bound_of_continuousOn (((hσc j).mono (hK j).2).inv₀
        (fun x hx => (hσpos j x ((hK j).2 hx)).ne'))
    choose C hC using hb
    refine ⟨∑ j, |C j|, Finset.sum_nonneg (fun j _ => abs_nonneg _), fun j x hx => ?_⟩
    have hpos := hσpos j x ((hK j).2 hx)
    have h1 := hC j x hx
    rw [Real.norm_eq_abs, abs_of_pos (inv_pos.2 hpos)] at h1
    have h2 : C j ≤ ∑ j, |C j| := (le_abs_self _).trans
      (Finset.single_le_sum (f := fun j => |C j|) (fun j _ => abs_nonneg _) (Finset.mem_univ j))
    have h3 : (σ j x)⁻¹ * σ j x = 1 := inv_mul_cancel₀ hpos.ne'
    have h4 := mul_le_mul_of_nonneg_right (h1.trans h2) hpos.le
    linarith
  
  obtain ⟨c, hcdef⟩ : ∃ c : ℝ, c = 2 * CP * Cs + 2 := ⟨_, rfl⟩
  have hc0 : 0 < c := by
    rw [hcdef]
    have := mul_nonneg hCP hCs0
    linarith
  have hc1 : c⁻¹ * c = 1 := inv_mul_cancel₀ hc0.ne'
  obtain ⟨A, hAdef⟩ : ∃ A : ℝ, A = Cs + CP * Cs := ⟨_, rfl⟩
  have hA0 : 0 ≤ A := by
    rw [hAdef]
    have := mul_nonneg hCP hCs0
    linarith
  obtain ⟨β, hβdef⟩ : ∃ β : ℝ, β = c * eigWInt P ρ (fun j x => Gg j x ^ 2) := ⟨_, rfl⟩
  
  have hco : ∀ w ∈ Cl, Mn w = 0 →
      0 ≤ eigWInt P ρ (SG w w) ∧
      eigWInt P ρ (eigGam P w w) ≤ A * eigWInt P ρ (SG w w) ∧
      eigWInt P ρ (fun j x => w (P.param j x) ^ 2) ≤ A * eigWInt P ρ (SG w w) ∧
      eigWInt P ρ (SG w w) / 2 - β ≤ J w := by
    intro w hw hm
    rw [hCl] at hw
    have he0 : 0 ≤ eigWInt P ρ (SG w w) := hnn _ (fun j x hx => by
      rw [hSG]
      exact mul_nonneg (hσpos j x ((hK j).2 hx)).le
        ((eig_gam_facts S P w w hw hw j).2.1 x ((hK j).2 hx)))
    have hGam : eigWInt P ρ (eigGam P w w) ≤ Cs * eigWInt P ρ (SG w w) := by
      rw [← hsmul (SG w w) Cs]
      refine hmono _ _ (fun j => (eig_gam_facts S P w w hw hw j).1)
        (fun j => continuousOn_const.mul (hSGc w w hw hw j)) ?_
      intro j x hx
      have g0 := (eig_gam_facts S P w w hw hw j).2.1 x ((hK j).2 hx)
      show eigGam P w w j x ≤ Cs * SG w w j x
      rw [hSG]
      calc eigGam P w w j x = 1 * eigGam P w w j x := (one_mul _).symm
        _ ≤ (Cs * σ j x) * eigGam P w w j x := mul_le_mul_of_nonneg_right (hCs j x hx) g0
        _ = Cs * (σ j x * eigGam P w w j x) := by ring
    have hm0 : eigWInt P ρ (fun j x => w (P.param j x)) = 0 := by
      rw [hcongr (fun j x => w (P.param j x)) (MF w) (fun j x _ => (hMF w j x).symm), ← hMn, hm]
    have hN : eigWInt P ρ (fun j x => w (P.param j x) ^ 2) ≤
        CP * Cs * eigWInt P ρ (SG w w) := by
      have h1 := hPo w hw
      rw [hm0] at h1
      have h2 := mul_le_mul_of_nonneg_left hGam hCP
      nlinarith
    have hY : 2 * eigWInt P ρ (LF w) ≤
        c⁻¹ * eigWInt P ρ (fun j x => w (P.param j x) ^ 2) +
          c * eigWInt P ρ (fun j x => Gg j x ^ 2) + 0 * eigWInt P ρ (fun j x => Gg j x ^ 2) := by
      rw [← hsmul (LF w) 2, ← hlin (fun j x => w (P.param j x) ^ 2) (fun j x => Gg j x ^ 2)
        (fun j x => Gg j x ^ 2) (fun j => (hw j).continuousOn.pow 2) (fun j => (hGgc j).pow 2)
        (fun j => (hGgc j).pow 2) c⁻¹ c 0]
      refine hmono _ _ (fun j => continuousOn_const.mul (hLFc w hw j))
        (fun j => ((continuousOn_const.mul ((hw j).continuousOn.pow 2)).add
          (continuousOn_const.mul ((hGgc j).pow 2))).add
          (continuousOn_const.mul ((hGgc j).pow 2))) ?_
      intro j x _
      show 2 * LF w j x ≤ c⁻¹ * w (P.param j x) ^ 2 + c * Gg j x ^ 2 + 0 * Gg j x ^ 2
      rw [hLF]
      have hsq : 0 ≤ c⁻¹ * (w (P.param j x) - c * Gg j x) ^ 2 :=
        mul_nonneg (inv_nonneg.2 hc0.le) (sq_nonneg _)
      have hid : c⁻¹ * (w (P.param j x) - c * Gg j x) ^ 2 =
          c⁻¹ * w (P.param j x) ^ 2 - 2 * (c⁻¹ * c) * (Gg j x * w (P.param j x)) +
            (c⁻¹ * c) * c * Gg j x ^ 2 := by ring
      rw [hc1] at hid
      linarith
    have hcN : c⁻¹ * eigWInt P ρ (fun j x => w (P.param j x) ^ 2) ≤
        eigWInt P ρ (SG w w) / 2 := by
      have h1 : CP * Cs * eigWInt P ρ (SG w w) ≤ c * (eigWInt P ρ (SG w w) / 2) := by
        rw [hcdef]
        nlinarith
      calc c⁻¹ * eigWInt P ρ (fun j x => w (P.param j x) ^ 2)
          ≤ c⁻¹ * (c * (eigWInt P ρ (SG w w) / 2)) :=
            mul_le_mul_of_nonneg_left (hN.trans h1) (inv_nonneg.2 hc0.le)
        _ = eigWInt P ρ (SG w w) / 2 := by rw [← mul_assoc, hc1, one_mul]
    refine ⟨he0, ?_, ?_, ?_⟩
    · have := mul_nonneg (mul_nonneg hCP hCs0) he0
      rw [hAdef]
      nlinarith
    · have := mul_nonneg hCs0 he0
      rw [hAdef]
      nlinarith
    · rw [hJ, hβdef]
      linarith
  
  have hlowJ : ∀ w ∈ Cl, -β ≤ J w := by
    intro w hw
    obtain ⟨v, hv, hv0, hvJ⟩ := hnorm w hw
    obtain ⟨he, -, -, hJv⟩ := hco v hv hv0
    rw [← hvJ]
    linarith
  have hC0 : (0 : X → ℝ) ∈ Cl := (hCl _).2 (fun j => by
    simp only [Pi.zero_apply]
    exact contDiffOn_const)
  have hTne : (J '' Cl).Nonempty := ⟨J 0, 0, hC0, rfl⟩
  have hTbdd : BddBelow (J '' Cl) := ⟨-β, by rintro _ ⟨w, hw, rfl⟩; exact hlowJ w hw⟩
  have hmle : ∀ w ∈ Cl, sInf (J '' Cl) ≤ J w := fun w hw => csInf_le hTbdd ⟨w, hw, rfl⟩
  have hexu : ∀ n : ℕ, ∃ v ∈ Cl, Mn v = 0 ∧ J v < sInf (J '' Cl) + 1 / ((n : ℝ) + 1) := by
    intro n
    have hpos : (0 : ℝ) < 1 / ((n : ℝ) + 1) := by positivity
    obtain ⟨a, ⟨w, hw, rfl⟩, ha⟩ := exists_lt_of_csInf_lt hTne
      (by linarith : sInf (J '' Cl) < sInf (J '' Cl) + 1 / ((n : ℝ) + 1))
    obtain ⟨v, hv, hv0, hvJ⟩ := hnorm w hw
    exact ⟨v, hv, hv0, by rw [hvJ]; exact ha⟩
  choose u huC hu0 hult using hexu
  have hu : ∀ n j, ContDiffOn ℝ ∞ (fun x => u n (P.param j x)) (P.W j) :=
    fun n => (hCl _).1 (huC n)
  have hEL0 : ∀ z ∈ Cl, ∀ (n : ℕ) (t : ℝ),
      0 ≤ 1 / ((n : ℝ) + 1) + 2 * t * B (u n) z + t ^ 2 * D z := by
    intro z hz n t
    have h1 := hmle _ (hC (u n) (huC n) z hz t)
    rw [hJq (u n) (huC n) z hz t] at h1
    have h2 := hult n
    linarith
  have hδle : ∀ n : ℕ, 1 / ((n : ℝ) + 1) ≤ 1 := by
    intro n
    rw [div_le_one (by positivity)]
    have : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    linarith
  
  obtain ⟨Rb, hRb⟩ : ∃ Rb : ℝ, ∀ n, eigWInt P ρ (eigGam P (u n) (u n)) ≤ Rb ∧
      eigWInt P ρ (fun j x => u n (P.param j x) ^ 2) ≤ Rb := by
    refine ⟨A * (2 * (sInf (J '' Cl) + 1 + β)), fun n => ?_⟩
    obtain ⟨he, hG, hN, hJn⟩ := hco (u n) (huC n) (hu0 n)
    have h1 := hult n
    have h2 := hδle n
    have he2 : eigWInt P ρ (SG (u n) (u n)) ≤ 2 * (sInf (J '' Cl) + 1 + β) := by linarith
    have h3 := mul_le_mul_of_nonneg_left he2 hA0
    exact ⟨hG.trans h3, hN.trans h3⟩
  
  have hH1 : ∀ j (L : Set E2), IsCompact L → L ⊆ P.W j → ∃ C : ℝ, ∀ n,
      ∫ x in L, ((u n (P.param j x)) ^ 2 +
        ∑ k : Fin 2, (pd2 k (fun x' => u n (P.param j x')) x) ^ 2) ≤ C := by
    intro j L hL hLW
    obtain ⟨CL, hCL0, hCL⟩ :=
      eig_local_energy (P.W j) (P.W_open j) (P.h j) (P.h_smooth j) (P.h_posDef j) L hL hLW
    refine ⟨CL * (Rb + Rb), fun n => ?_⟩
    have hloc := eig_integral_localize S P ρ K hρnn hρc' hρ1 hK hρK hρO j
      (fun j' G => eig_chart_cov S P j' j G)
    have h1 := (hloc (fun j' x => u n (P.param j' x) ^ 2)
      (fun j' => (hu n j').continuousOn.pow 2)
      (fun j' x hx => by
        show u n (P.param j' x) ^ 2 = u n (P.param j (P.proj j (P.param j' x))) ^ 2
        rw [(hP3 j' j x hx).2])).2 (fun j' x _ => sq_nonneg _) L hL hLW
    have h2 := (hloc (eigGam P (u n) (u n))
      (fun j' => (eig_gam_facts S P (u n) (u n) (hu n) (hu n) j').1)
      (fun j' x hx => eig_grad_pair_compat S P (u n) (u n) (hu n) (hu n) j' j x hx)).2
      (fun j' x hx => (eig_gam_facts S P (u n) (u n) (hu n) (hu n) j').2.1 x hx) L hL hLW
    have e : (∫ x in L, u n (P.param j x) * u n (P.param j x) * Real.sqrt (P.h j x).det) =
        ∫ x in L, u n (P.param j x) ^ 2 * Real.sqrt (P.h j x).det := by
      simp only [sq]
    calc ∫ x in L, ((u n (P.param j x)) ^ 2 +
          ∑ k : Fin 2, (pd2 k (fun x' => u n (P.param j x')) x) ^ 2)
        ≤ CL * ((∫ x in L, u n (P.param j x) * u n (P.param j x) * Real.sqrt (P.h j x).det) +
            ∫ x in L, eigGam P (u n) (u n) j x * Real.sqrt (P.h j x).det) :=
          hCL (fun x' => u n (P.param j x')) (hu n j)
      _ ≤ CL * (Rb + Rb) := by
          apply mul_le_mul_of_nonneg_left _ hCL0
          rw [e]
          exact add_le_add (h1.trans (hRb n).2) (h2.trans (hRb n).1)
  
  have hEL : ∀ j (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ P.W j →
      ∃ M : ℝ, ∀ (n : ℕ) (t : ℝ), 0 ≤ 1 / ((n : ℝ) + 1) + 2 * t *
        ((∫ x, ∑ a : Fin 2, ∑ b : Fin 2, σ j x * Real.sqrt (P.h j x).det * (P.h j x)⁻¹ a b *
            pd2 b (fun x' => u n (P.param j x')) x * pd2 a ζ x) -
          ∫ x, (f (P.param j x) + κ) * Real.sqrt (P.h j x).det * ζ x) + t ^ 2 * M := by
    intro k ζ hζ hc hs
    obtain ⟨Z, hZs, -, hZf, hZev⟩ := eig_lift_smooth S P k ζ hζ hc hs
    refine ⟨D Z, fun n t => ?_⟩
    have h0 := hEL0 Z ((hCl Z).2 hZs) n t
    have hun := hu n
    have hloc := eig_integral_localize S P ρ K hρnn hρc' hρ1 hK hρK hρO k
      (fun j' G => eig_chart_cov S P j' k G)
    have hvanZ : ∀ j, ∀ x ∈ P.W j, P.param j x ∉ P.param k '' tsupport ζ →
        Z (P.param j x) = 0 ∧ ∀ a, pd2 a (fun x' => Z (P.param j x')) x = 0 := by
      intro j x hx hnot
      have hev : (fun x' => Z (P.param j x')) =ᶠ[𝓝 x] fun _ => (0 : ℝ) := hZev j x hx hnot
      refine ⟨hev.eq_of_nhds, fun a => ?_⟩
      unfold pd2
      rw [hev.fderiv_eq]
      simp
    have hB1 := (hloc (SG (u n) Z) (hSGc _ _ hun hZs) (by
      intro j x hx
      rw [hSG, hSG, hσcomp j k x hx, eig_grad_pair_compat S P (u n) Z hun hZs j k x hx])).1
      (tsupport ζ) hc.isCompact hs (by
        intro j x hx hnot
        rw [hSG]
        simp [eigGam, (hvanZ j x hx hnot).2])
    have hB2 := (hloc (LF Z) (hLFc Z hZs) (by
      intro j x hx
      rw [hLF, hLF, hGg, hGg, (hP3 j k x hx).2])).1
      (tsupport ζ) hc.isCompact hs (by
        intro j x hx hnot
        rw [hLF, (hvanZ j x hx hnot).1, mul_zero])
    have hZk : ∀ x ∈ P.W k, Z (P.param k x) = ζ x := fun x hx => by
      rw [hZf _ (hP1 k x hx).1, P.proj_param k x hx]
    have hZkd : ∀ x ∈ P.W k, ∀ a, pd2 a (fun x' => Z (P.param k x')) x = pd2 a ζ x := by
      intro x hx a
      have hev : (fun x' => Z (P.param k x')) =ᶠ[𝓝 x] ζ :=
        Filter.eventually_of_mem ((P.W_open k).mem_nhds hx) hZk
      unfold pd2
      rw [hev.fderiv_eq]
    have hoff : ∀ x, x ∉ P.W k → ζ x = 0 ∧ ∀ a, pd2 a ζ x = 0 := by
      intro x hx
      have hxs : x ∉ tsupport ζ := fun h => hx (hs h)
      have hev : ζ =ᶠ[𝓝 x] fun _ => (0 : ℝ) := notMem_tsupport_iff_eventuallyEq.1 hxs
      refine ⟨hev.eq_of_nhds, fun a => ?_⟩
      unfold pd2
      rw [hev.fderiv_eq]
      simp
    have e1 : (∫ x, ∑ a : Fin 2, ∑ b : Fin 2, σ k x * Real.sqrt (P.h k x).det *
        (P.h k x)⁻¹ a b * pd2 b (fun x' => u n (P.param k x')) x * pd2 a ζ x) =
        eigWInt P ρ (SG (u n) Z) := by
      rw [hB1]
      refine (setIntegral_eq_integral_of_forall_compl_eq_zero (s := P.W k) ?_).symm.trans ?_
      · intro x hx
        simp [(hoff x hx).2]
      · refine setIntegral_congr_fun (P.W_open k).measurableSet (fun x hx => ?_)
        simp only [hSG, eigGam, hZkd x hx, Fin.sum_univ_two]
        ring
    have e2 : (∫ x, (f (P.param k x) + κ) * Real.sqrt (P.h k x).det * ζ x) =
        eigWInt P ρ (LF Z) := by
      rw [hB2]
      refine (setIntegral_eq_integral_of_forall_compl_eq_zero (s := P.W k) ?_).symm.trans ?_
      · intro x hx
        simp [(hoff x hx).1]
      · refine setIntegral_congr_fun (P.W_open k).measurableSet (fun x hx => ?_)
        simp only [hLF, hGg, hZk x hx]
        ring
    rw [e1, e2, ← hB]
    exact h0
  exact ⟨κ, u, fun n : ℕ => 1 / ((n : ℝ) + 1), hu, tendsto_one_div_add_atTop_nhds_zero_nat,
    hH1, hEL⟩

theorem pcr_dw_weak_limit (N : ℕ) (W : Fin N → Set E2) (hW : ∀ i, IsOpen (W i))
    (B : Fin N → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hB : ∀ i (a b : Fin 2), ContinuousOn (fun x => B i x a b) (W i))
    (g : Fin N → E2 → ℝ) (hg : ∀ i, ContinuousOn (g i) (W i))
    (u : ℕ → Fin N → E2 → ℝ) (hu : ∀ n i, ContDiffOn ℝ ∞ (u n i) (W i))
    (hbd : ∀ i (L : Set E2), IsCompact L → L ⊆ W i → ∃ C : ℝ, ∀ n,
      ∫ x in L, ((u n i x) ^ 2 + ∑ k : Fin 2, (pd2 k (u n i) x) ^ 2) ≤ C)
    (δ : ℕ → ℝ) (hδ : Tendsto δ atTop (𝓝 0))
    (hEL : ∀ i (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W i →
      ∃ M : ℝ, ∀ n (t : ℝ), 0 ≤ δ n + 2 * t *
        ((∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b * pd2 b (u n i) x * pd2 a ζ x) -
          ∫ x, g i x * ζ x) + t ^ 2 * M) :
    ∃ (ψ : ℕ → ℕ) (w : Fin N → E2 → ℝ) (G : Fin N → Fin 2 → E2 → ℝ), StrictMono ψ ∧
      (∀ i (L : Set E2), IsCompact L → L ⊆ W i →
        MemLp (w i) 2 (volume.restrict L) ∧ ∀ k, MemLp (G i k) 2 (volume.restrict L)) ∧
      (∀ i (L : Set E2), IsCompact L → L ⊆ W i →
        Tendsto (fun m => ∫ x in L, (u (ψ m) i x - w i x) ^ 2) atTop (𝓝 0)) ∧
      (∀ i (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W i →
        ∀ k : Fin 2, ∫ x, w i x * pd2 k ζ x = -(∫ x, G i k x * ζ x)) ∧
      ∀ i (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W i →
        ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b * G i b x * pd2 a ζ x = ∫ x, g i x * ζ x :=
by
  classical
  
  have diag : ∀ (Q : Fin N → (ℕ → ℕ) → Prop),
      (∀ i (ψ φ : ℕ → ℕ), Q i ψ → StrictMono φ → Q i (ψ ∘ φ)) →
      (∀ i (ψ : ℕ → ℕ), StrictMono ψ → ∃ φ : ℕ → ℕ, StrictMono φ ∧ Q i (ψ ∘ φ)) →
      ∃ ψ : ℕ → ℕ, StrictMono ψ ∧ ∀ i, Q i ψ := by
    intro Q hmono hext
    have key : ∀ k : ℕ, ∃ ψ : ℕ → ℕ, StrictMono ψ ∧ ∀ i : Fin N, i.val < k → Q i ψ := by
      intro k
      induction k with
      | zero => exact ⟨id, strictMono_id, fun i hi => absurd hi (Nat.not_lt_zero _)⟩
      | succ k ih =>
        obtain ⟨ψ, hψ, hQ⟩ := ih
        by_cases hk : k < N
        · obtain ⟨φ, hφ, hQk⟩ := hext ⟨k, hk⟩ ψ hψ
          refine ⟨ψ ∘ φ, hψ.comp hφ, fun i hi => ?_⟩
          rcases Nat.lt_succ_iff_lt_or_eq.mp hi with hlt | heq
          · exact hmono i ψ φ (hQ i hlt) hφ
          · have hik : i = ⟨k, hk⟩ := Fin.ext heq
            rw [hik]
            exact hQk
        · exact ⟨ψ, hψ, fun i _ => hQ i (lt_of_lt_of_le i.isLt (not_lt.mp hk))⟩
    obtain ⟨ψ, hψ, hQ⟩ := key N
    exact ⟨ψ, hψ, fun i => hQ i i.isLt⟩
  
  have quad : ∀ (Bq δ' : ℕ → ℝ) (M : ℝ), Tendsto δ' atTop (𝓝 0) →
      (∀ n (t : ℝ), 0 ≤ δ' n + 2 * t * Bq n + t ^ 2 * M) → Tendsto Bq atTop (𝓝 0) := by
    intro Bq δ' M hδ' hq
    rw [Metric.tendsto_atTop]
    intro ε hε
    have hM1 : 0 < |M| + 1 := by positivity
    have hs0 : 0 < ε / (|M| + 1) := div_pos hε hM1
    obtain ⟨n0, hn0⟩ := Metric.tendsto_atTop.mp hδ' (ε / (|M| + 1) * ε) (mul_pos hs0 hε)
    refine ⟨n0, fun n hn => ?_⟩
    have h1 := hq n (ε / (|M| + 1))
    have h2 := hq n (-(ε / (|M| + 1)))
    have hd := hn0 n hn
    rw [Real.dist_eq, sub_zero] at hd ⊢
    have hd' : δ' n < ε / (|M| + 1) * ε := (abs_lt.mp hd).2
    have hsM : ε / (|M| + 1) * |M| < ε := by
      rw [div_mul_eq_mul_div, div_lt_iff₀ hM1]
      nlinarith [abs_nonneg M]
    have k1 : (ε / (|M| + 1)) ^ 2 * M ≤ ε / (|M| + 1) * (ε / (|M| + 1) * |M|) := by
      have := mul_le_mul_of_nonneg_left (le_abs_self M) (sq_nonneg (ε / (|M| + 1)))
      nlinarith
    have k2 : ε / (|M| + 1) * (ε / (|M| + 1) * |M|) < ε / (|M| + 1) * ε :=
      mul_lt_mul_of_pos_left hsM hs0
    rw [abs_lt]
    constructor
    · nlinarith
    · nlinarith
  have hmain : ∃ ψ : ℕ → ℕ, StrictMono ψ ∧ ∀ i, ∃ (wi : E2 → ℝ) (Gi : Fin 2 → E2 → ℝ),
      (∀ (L : Set E2), IsCompact L → L ⊆ W i → MemLp wi 2 (volume.restrict L) ∧
        ∀ k, MemLp (Gi k) 2 (volume.restrict L)) ∧
      (∀ (L : Set E2), IsCompact L → L ⊆ W i →
        Tendsto (fun m => ∫ x in L, (u (ψ m) i x - wi x) ^ 2) atTop (𝓝 0)) ∧
      (∀ (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W i →
        ∀ k : Fin 2, ∫ x, wi x * pd2 k ζ x = -(∫ x, Gi k x * ζ x)) ∧
      ∀ (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W i →
        ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b * Gi b x * pd2 a ζ x = ∫ x, g i x * ζ x := by
    apply diag
    · intro i ψ φ hQ hφ
      obtain ⟨wi, Gi, h1, h2, h3, h4⟩ := hQ
      exact ⟨wi, Gi, h1, fun L hL hLW => (h2 L hL hLW).comp hφ.tendsto_atTop, h3, h4⟩
    · intro i σ hσ
      have hUc : ∀ n, ContinuousOn (u n i) (W i) := fun n => (hu n i).continuousOn
      have hUdc : ∀ n (k : Fin 2), ContinuousOn (pd2 k (u n i)) (W i) := by
        intro n k
        have h1 := (hu n i).continuousOn_fderiv_of_isOpen (hW i) (by simp)
        exact h1.clm_apply continuousOn_const
      have hint : ∀ (f : E2 → ℝ) (L : Set E2), IsCompact L → L ⊆ W i → ContinuousOn f (W i) →
          IntegrableOn (fun x => f x ^ 2) L := by
        intro f L hL hLW hf
        exact ((hf.mono hLW).pow 2).integrableOn_compact hL
      have hbd2 : ∀ (L : Set E2), IsCompact L → L ⊆ W i → ∃ C : ℝ, ∀ n,
          (∫ x in L, (u n i x) ^ 2 ≤ C) ∧ ∀ k : Fin 2, ∫ x in L, (pd2 k (u n i) x) ^ 2 ≤ C := by
        intro L hL hLW
        obtain ⟨C, hC⟩ := hbd i L hL hLW
        have hsum : ∀ n, IntegrableOn
            (fun x => (u n i x) ^ 2 + ∑ k : Fin 2, (pd2 k (u n i) x) ^ 2) L := by
          intro n
          exact (hint _ L hL hLW (hUc n)).add
            (integrable_finset_sum _ fun k _ => hint _ L hL hLW (hUdc n k))
        refine ⟨C, fun n => ⟨?_, fun k => ?_⟩⟩
        · refine le_trans (setIntegral_mono_on (hint _ L hL hLW (hUc n)) (hsum n)
            hL.measurableSet ?_) (hC n)
          intro x _
          have : 0 ≤ ∑ k : Fin 2, (pd2 k (u n i) x) ^ 2 :=
            Finset.sum_nonneg fun k _ => sq_nonneg _
          linarith
        · refine le_trans (setIntegral_mono_on (hint _ L hL hLW (hUdc n k)) (hsum n)
            hL.measurableSet ?_) (hC n)
          intro x _
          have h1 : (pd2 k (u n i) x) ^ 2 ≤ ∑ k' : Fin 2, (pd2 k' (u n i) x) ^ 2 :=
            Finset.single_le_sum (f := fun k' => (pd2 k' (u n i) x) ^ 2)
              (fun k' _ => sq_nonneg _) (Finset.mem_univ k)
          nlinarith [sq_nonneg (u n i x)]
      
      obtain ⟨ψ₁, hψ₁, hcau⟩ := rellich_local_cauchy (W i) (hW i) (fun n => u (σ n) i)
        (fun n => hu (σ n) i)
        (fun L hL hLW => by
          obtain ⟨C, hC⟩ := hbd i L hL hLW
          exact ⟨C, fun n => hC (σ n)⟩)
      
      obtain ⟨w, hwL2, hwconv⟩ := l2loc_limit_of_cauchy (W i) (hW i)
        (fun m => u (σ (ψ₁ m)) i) (fun m => hUc _)
        (fun L hL hLW => by
          obtain ⟨C, hC⟩ := hbd2 L hL hLW
          exact ⟨C, fun m => (hC (σ (ψ₁ m))).1⟩) hcau
      
      obtain ⟨ψ₂, G, hψ₂, hGL2, hGw⟩ := l2loc_weak_subseq (W i) (hW i)
        (fun m k => pd2 k (u (σ (ψ₁ m)) i)) (fun m k => hUdc _ k)
        (fun L hL hLW => by
          obtain ⟨C, hC⟩ := hbd2 L hL hLW
          exact ⟨C, fun m k => (hC (σ (ψ₁ m))).2 k⟩)
      have hφ : StrictMono (ψ₁ ∘ ψ₂) := hψ₁.comp hψ₂
      have hconv : ∀ L : Set E2, IsCompact L → L ⊆ W i →
          Tendsto (fun m => ∫ x in L, (u (σ (ψ₁ (ψ₂ m))) i x - w x) ^ 2) atTop (𝓝 0) :=
        fun L hL hLW => (hwconv L hL hLW).comp hψ₂.tendsto_atTop
      
      have hdζ : ∀ (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → ∀ k : Fin 2,
          Continuous (pd2 k ζ) ∧ tsupport (pd2 k ζ) ⊆ tsupport ζ := by
        intro ζ hζ k
        refine ⟨(hζ.continuous_fderiv (by simp)).clm_apply continuous_const, ?_⟩
        refine closure_minimal (fun x hx => ?_) (isClosed_tsupport ζ)
        refine tsupport_fderiv_subset ℝ (subset_tsupport _ ?_)
        rw [Function.mem_support] at hx ⊢
        intro h0
        apply hx
        simp [pd2, h0]
      refine ⟨ψ₁ ∘ ψ₂, hφ, w, G, fun L hL hLW => ⟨hwL2 L hL hLW, fun k => hGL2 L hL hLW k⟩,
        hconv, ?_, ?_⟩
      · 
        intro ζ hζ hζc hζW k
        have hLc : IsCompact (tsupport ζ) := hζc
        obtain ⟨hs7i, -, hs7iii⟩ := l2_compact_pairing (tsupport ζ) hLc
        obtain ⟨hdζc, hdζs⟩ := hdζ ζ hζ k
        have hUL : ∀ m, MemLp (u (σ (ψ₁ (ψ₂ m))) i) 2 (volume.restrict (tsupport ζ)) :=
          fun m => hs7i _ ((hUc _).mono hζW)
        have hlim1 : Tendsto (fun m => ∫ x, u (σ (ψ₁ (ψ₂ m))) i x * pd2 k ζ x) atTop
            (𝓝 (∫ x, w x * pd2 k ζ x)) :=
          hs7iii (fun m => u (σ (ψ₁ (ψ₂ m))) i) w (pd2 k ζ) hUL (hwL2 _ hLc hζW) hdζc hdζs
            (hconv _ hLc hζW)
        have hlim2 : Tendsto (fun m => -(∫ x, pd2 k (u (σ (ψ₁ (ψ₂ m))) i) x * ζ x)) atTop
            (𝓝 (-(∫ x, G k x * ζ x))) :=
          (hGw k ζ hζ.continuous hζc hζW).neg
        have heq : (fun m => ∫ x, u (σ (ψ₁ (ψ₂ m))) i x * pd2 k ζ x) =
            fun m => -(∫ x, pd2 k (u (σ (ψ₁ (ψ₂ m))) i) x * ζ x) := by
          funext m
          exact ibp_open_test (W i) (hW i) _ (hu _ i) ζ hζ hζc hζW k
        rw [heq] at hlim1
        exact tendsto_nhds_unique hlim1 hlim2
      · 
        intro ζ hζ hζc hζW
        have hLc : IsCompact (tsupport ζ) := hζc
        obtain ⟨hs7i, hs7ii, -⟩ := l2_compact_pairing (tsupport ζ) hLc
        
        have hα : ∀ a b : Fin 2, Continuous (fun x => B i x a b * pd2 a ζ x) ∧
            tsupport (fun x => B i x a b * pd2 a ζ x) ⊆ tsupport ζ := by
          intro a b
          obtain ⟨hdc, hds⟩ := hdζ ζ hζ a
          have hs : tsupport (fun x => B i x a b * pd2 a ζ x) ⊆ tsupport ζ :=
            (tsupport_mul_subset_right).trans hds
          exact ⟨((hB i a b).mul hdc.continuousOn).continuous_of_tsupport_subset (hW i)
            (hs.trans hζW), hs⟩
        have hαcs : ∀ a b : Fin 2, HasCompactSupport (fun x => B i x a b * pd2 a ζ x) :=
          fun a b => hLc.of_isClosed_subset (isClosed_tsupport _) (hα a b).2
        obtain ⟨M, hM⟩ := hEL i ζ hζ hζc hζW
        have hsplit : ∀ (P : Fin 2 → E2 → ℝ),
            (∀ b, MemLp (P b) 2 (volume.restrict (tsupport ζ))) →
            ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b * P b x * pd2 a ζ x
            = ∑ a : Fin 2, ∑ b : Fin 2, ∫ x, P b x * (B i x a b * pd2 a ζ x) := by
          intro P hP
          have hI : ∀ a b : Fin 2, Integrable (fun x => P b x * (B i x a b * pd2 a ζ x)) :=
            fun a b => hs7ii _ _ (hP b) (hα a b).1 (hα a b).2
          have hpt : (fun x => ∑ a : Fin 2, ∑ b : Fin 2, B i x a b * P b x * pd2 a ζ x)
              = fun x => ∑ a : Fin 2, ∑ b : Fin 2, P b x * (B i x a b * pd2 a ζ x) := by
            funext x
            exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring
          rw [hpt]
          exact (integral_finset_sum _ fun a _ =>
              integrable_finset_sum _ fun b _ => hI a b).trans
            (Finset.sum_congr rfl fun a _ => integral_finset_sum _ fun b _ => hI a b)
        have hB0 : Tendsto (fun m => (∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b *
              pd2 b (u (σ (ψ₁ (ψ₂ m))) i) x * pd2 a ζ x) - ∫ x, g i x * ζ x) atTop (𝓝 0) :=
          quad _ (fun m => δ (σ (ψ₁ (ψ₂ m)))) M (hδ.comp (hσ.comp hφ).tendsto_atTop)
            (fun m t => hM (σ (ψ₁ (ψ₂ m))) t)
        have hdUL : ∀ m (b : Fin 2),
            MemLp (pd2 b (u (σ (ψ₁ (ψ₂ m))) i)) 2 (volume.restrict (tsupport ζ)) :=
          fun m b => hs7i _ ((hUdc _ b).mono hζW)
        have hBE : Tendsto (fun m => (∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b *
              pd2 b (u (σ (ψ₁ (ψ₂ m))) i) x * pd2 a ζ x) - ∫ x, g i x * ζ x) atTop
            (𝓝 ((∑ a : Fin 2, ∑ b : Fin 2, ∫ x, G b x * (B i x a b * pd2 a ζ x))
              - ∫ x, g i x * ζ x)) := by
          have e1 : (fun m => (∫ x, ∑ a : Fin 2, ∑ b : Fin 2, B i x a b *
                pd2 b (u (σ (ψ₁ (ψ₂ m))) i) x * pd2 a ζ x) - ∫ x, g i x * ζ x) =
              fun m => (∑ a : Fin 2, ∑ b : Fin 2, ∫ x, pd2 b (u (σ (ψ₁ (ψ₂ m))) i) x *
                  (B i x a b * pd2 a ζ x)) - ∫ x, g i x * ζ x := by
            funext m
            rw [hsplit (fun b => pd2 b (u (σ (ψ₁ (ψ₂ m))) i)) (hdUL m)]
          rw [e1]
          refine Tendsto.sub (tendsto_finset_sum _ fun a _ => tendsto_finset_sum _ fun b _ => ?_)
            tendsto_const_nhds
          exact hGw b _ (hα a b).1 (hαcs a b) ((hα a b).2.trans hζW)
        have hE0 := tendsto_nhds_unique hBE hB0
        rw [hsplit G (fun b => hGL2 _ hLc hζW b)]
        linarith
  obtain ⟨ψ, hψ, hQ⟩ := hmain
  choose w G hw using hQ
  exact ⟨ψ, w, G, hψ, fun i L hL hLW => (hw i).1 L hL hLW, fun i => (hw i).2.1,
    fun i => (hw i).2.2.1, fun i => (hw i).2.2.2⟩

theorem pcr_dw_limit_compat {X : Type*} [TopologicalSpace X] (S : Set X)
    (P : EigPatchedSurface X S) (v : ℕ → X → ℝ)
    (hv : ∀ m j, ContinuousOn (fun x => v m (P.param j x)) (P.W j))
    (w : Fin P.n → E2 → ℝ)
    (hw : ∀ j (L : Set E2), IsCompact L → L ⊆ P.W j → MemLp (w j) 2 (volume.restrict L))
    (hconv : ∀ j (L : Set E2), IsCompact L → L ⊆ P.W j →
      Tendsto (fun m => ∫ x in L, (v m (P.param j x) - w j x) ^ 2) atTop (𝓝 0)) :
    ∀ j k, ∀ᵐ x ∂(volume.restrict (P.W j ∩ P.param j ⁻¹' P.O k)),
      w j x = w k (P.proj k (P.param j x)) :=
by
  classical
  
  have hD : ∀ i, (∀ x ∈ P.W i, 0 < Real.sqrt (P.h i x).det) ∧
      ContinuousOn (fun x => Real.sqrt (P.h i x).det) (P.W i) := by
    intro i
    refine ⟨fun x hx => Real.sqrt_pos.mpr (P.h_posDef i x hx).det_pos, ?_⟩
    have hc : ∀ a b : Fin 2, ContinuousOn (fun x => P.h i x a b) (P.W i) :=
      fun a b => (P.h_smooth i a b).continuousOn
    have e : (fun x => Real.sqrt (P.h i x).det) =
        fun x => Real.sqrt (P.h i x 0 0 * P.h i x 1 1 - P.h i x 0 1 * P.h i x 1 0) := by
      funext x; rw [Matrix.det_fin_two]
    rw [e]
    exact (((hc 0 0).mul (hc 1 1)).sub ((hc 0 1).mul (hc 1 0))).sqrt
  
  have hexh : ∀ V : Set E2, IsOpen V → ∀ p : E2 → Prop,
      (∀ L : Set E2, IsCompact L → L ⊆ V → ∀ᵐ x ∂(volume.restrict L), p x) →
      ∀ᵐ x ∂(volume.restrict V), p x := by
    intro V hV p hp
    obtain ⟨F, hFc, hFV, hFU, hFm⟩ := hV.exists_iUnion_isClosed
    have hLU : (⋃ n : ℕ, F n ∩ Metric.closedBall (0 : E2) n) = V := by
      apply Set.Subset.antisymm
      · exact Set.iUnion_subset fun n => Set.inter_subset_left.trans (hFV n)
      · intro x hx
        rw [← hFU] at hx
        obtain ⟨n₁, hn₁⟩ := Set.mem_iUnion.1 hx
        obtain ⟨n₂, hn₂⟩ := exists_nat_ge ‖x‖
        refine Set.mem_iUnion.2 ⟨max n₁ n₂, hFm (le_max_left _ _) hn₁, ?_⟩
        rw [mem_closedBall_zero_iff]
        exact hn₂.trans (by exact_mod_cast le_max_right n₁ n₂)
    rw [← hLU, ae_restrict_iUnion_iff]
    intro n
    exact hp _ ((isCompact_closedBall (0 : E2) n).inter_left (hFc n))
      (Set.inter_subset_left.trans (hFV n))
  intro j k
  have hUo : IsOpen (P.W j ∩ P.param j ⁻¹' P.O k) :=
    ContinuousOn.isOpen_inter_preimage (P.param_cont j) (P.W_open j) (P.O_open k)
  have hτc : ContinuousOn (fun x => P.proj k (P.param j x)) (P.W j ∩ P.param j ⁻¹' P.O k) :=
    (P.trans_smooth j k).continuousOn
  
  have hT : ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j x) ∈ P.W k ∩ P.param k ⁻¹' P.O j ∧
        P.param k (P.proj k (P.param j x)) = P.param j x := by
    intro x hx
    obtain ⟨hxW, hxO⟩ := hx
    have h1 : P.param j x ∈ P.O j ∩ S := by
      rw [← P.image_eq j]; exact ⟨x, hxW, rfl⟩
    have h2 : P.param j x ∈ P.param k '' P.W k := by
      rw [P.image_eq k]; exact ⟨hxO, h1.2⟩
    obtain ⟨y, hy, hyx⟩ := h2
    have hτy : P.proj k (P.param j x) = y := by rw [← hyx, P.proj_param k y hy]
    rw [hτy]
    refine ⟨⟨hy, ?_⟩, hyx⟩
    show P.param k y ∈ P.O j
    rw [hyx]; exact h1.1
  
  have htrans : ∀ L : Set E2, IsCompact L → L ⊆ P.W j ∩ P.param j ⁻¹' P.O k →
      ∃ C : ℝ, 0 ≤ C ∧ ∀ g : E2 → ℝ,
        MemLp g 2 (volume.restrict ((fun x => P.proj k (P.param j x)) '' L)) →
        MemLp (fun x => g (P.proj k (P.param j x))) 2 (volume.restrict L) ∧
        ∫ x in L, g (P.proj k (P.param j x)) ^ 2 ≤
          C * ∫ y in (fun x => P.proj k (P.param j x)) '' L, g y ^ 2 := by
    intro L hL hLU
    have hTc : IsCompact ((fun x => P.proj k (P.param j x)) '' L) :=
      hL.image_of_continuousOn (hτc.mono hLU)
    have hTU' : (fun x => P.proj k (P.param j x)) '' L ⊆ P.W k ∩ P.param k ⁻¹' P.O j := by
      rintro _ ⟨x, hx, rfl⟩; exact (hT x (hLU hx)).1
    have hmemT : ∀ x ∈ L, P.proj k (P.param j x) ∈ (fun x => P.proj k (P.param j x)) '' L :=
      fun x hx => Set.mem_image_of_mem _ hx
    generalize (fun x => P.proj k (P.param j x)) '' L = T at hTc hTU' hmemT ⊢
    have hTW : T ⊆ P.W k := hTU'.trans Set.inter_subset_left
    have hLW : L ⊆ P.W j := hLU.trans Set.inter_subset_left
    have hLm : MeasurableSet L := hL.measurableSet
    have hTm : MeasurableSet T := hTc.measurableSet
    haveI : IsFiniteMeasure (volume.restrict T) :=
      isFiniteMeasure_restrict.2 hTc.measure_lt_top.ne
    obtain ⟨M, hM⟩ := hTc.exists_bound_of_continuousOn ((hD k).2.mono hTW)
    have hM₀ : ∀ y ∈ T, Real.sqrt (P.h k y).det ≤ max M 0 := by
      intro y hy
      have h := hM y hy
      rw [Real.norm_eq_abs] at h
      exact (le_abs_self _).trans (h.trans (le_max_left _ _))
    obtain ⟨μ, hμ, hμL⟩ : ∃ μ : ℝ, 0 < μ ∧ ∀ x ∈ L, μ ≤ Real.sqrt (P.h j x).det := by
      rcases L.eq_empty_or_nonempty with he | hne
      · exact ⟨1, one_pos, by simp [he]⟩
      · obtain ⟨x₀, hx₀, hmin⟩ := hL.exists_isMinOn hne ((hD j).2.mono hLW)
        exact ⟨_, (hD j).1 x₀ (hLW hx₀), fun x hx => hmin hx⟩
    
    have hpull : ∀ G : E2 → ℝ, IntegrableOn G T →
        IntegrableOn (fun x => T.indicator G (P.proj k (P.param j x)) *
          Real.sqrt (P.h j x).det) (P.W j ∩ P.param j ⁻¹' P.O k) ∧
        IntegrableOn (fun x => G (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det) L ∧
        IntegrableOn (fun x => G (P.proj k (P.param j x))) L := by
      intro G hG
      have h1 : IntegrableOn (fun y => G y * Real.sqrt (P.h k y).det) T :=
        hG.mul_continuousOn ((hD k).2.mono hTW) hTc
      have h2 : IntegrableOn (fun y => T.indicator G y * Real.sqrt (P.h k y).det)
          (P.W k ∩ P.param k ⁻¹' P.O j) := by
        have e : (fun y => T.indicator G y * Real.sqrt (P.h k y).det) =
            T.indicator (fun y => G y * Real.sqrt (P.h k y).det) := by
          funext y; rw [Set.indicator_mul_left]
        rw [e]
        exact ((integrable_indicator_iff hTm).2 h1).integrableOn
      have h3 := (eig_chart_cov S P j k (T.indicator G)).2.2 h2
      have h4 : IntegrableOn (fun x => G (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det) L := by
        refine (h3.mono_set hLU).congr_fun (fun x hx => ?_) hLm
        rw [Set.indicator_of_mem (hmemT x hx)]
      refine ⟨h3, h4, ?_⟩
      have h5 := h4.mul_continuousOn
        (((hD j).2.mono hLW).inv₀ (fun x hx => ((hD j).1 x (hLW hx)).ne')) hL
      refine h5.congr_fun (fun x hx => ?_) hLm
      rw [mul_assoc, mul_inv_cancel₀ ((hD j).1 x (hLW hx)).ne', mul_one]
    refine ⟨max M 0 / μ, div_nonneg (le_max_right _ _) hμ.le, fun g hg => ?_⟩
    have hgi : IntegrableOn g T := hg.integrable (by norm_num)
    have hg2 : IntegrableOn (fun y => g y ^ 2) T := hg.integrable_sq
    obtain ⟨-, -, hgτ⟩ := hpull g hgi
    obtain ⟨hU2, hint2, hgτ2⟩ := hpull (fun y => g y ^ 2) hg2
    have hmem : MemLp (fun x => g (P.proj k (P.param j x))) 2 (volume.restrict L) :=
      (memLp_two_iff_integrable_sq hgτ.aestronglyMeasurable).2 hgτ2
    refine ⟨hmem, ?_⟩
    have e1 : μ * ∫ x in L, g (P.proj k (P.param j x)) ^ 2 =
        ∫ x in L, μ * g (P.proj k (P.param j x)) ^ 2 := (integral_const_mul _ _).symm
    have e2 : ∫ x in L, μ * g (P.proj k (P.param j x)) ^ 2 ≤
        ∫ x in L, g (P.proj k (P.param j x)) ^ 2 * Real.sqrt (P.h j x).det := by
      refine setIntegral_mono_on (hgτ2.const_mul μ) hint2 hLm (fun x hx => ?_)
      nlinarith [mul_le_mul_of_nonneg_left (hμL x hx) (sq_nonneg (g (P.proj k (P.param j x))))]
    have e3 : ∫ x in L, g (P.proj k (P.param j x)) ^ 2 * Real.sqrt (P.h j x).det =
        ∫ x in L, T.indicator (fun y => g y ^ 2) (P.proj k (P.param j x)) *
          Real.sqrt (P.h j x).det := by
      refine setIntegral_congr_fun hLm (fun x hx => ?_)
      rw [Set.indicator_of_mem (hmemT x hx)]
    have e4 : ∫ x in L, T.indicator (fun y => g y ^ 2) (P.proj k (P.param j x)) *
          Real.sqrt (P.h j x).det ≤
        ∫ x in P.W j ∩ P.param j ⁻¹' P.O k, T.indicator (fun y => g y ^ 2)
          (P.proj k (P.param j x)) * Real.sqrt (P.h j x).det := by
      refine setIntegral_mono_set hU2 (ae_of_all _ (fun x => ?_)) hLU.eventuallyLE
      exact mul_nonneg (Set.indicator_nonneg (fun y _ => sq_nonneg (g y)) _) (Real.sqrt_nonneg _)
    have e5 := (eig_chart_cov S P j k (T.indicator (fun y => g y ^ 2))).1
    have e6 : ∫ y in P.W k ∩ P.param k ⁻¹' P.O j, T.indicator (fun y => g y ^ 2) y *
          Real.sqrt (P.h k y).det =
        ∫ y in T, g y ^ 2 * Real.sqrt (P.h k y).det := by
      have e : (fun y => T.indicator (fun y => g y ^ 2) y * Real.sqrt (P.h k y).det) =
          T.indicator (fun y => g y ^ 2 * Real.sqrt (P.h k y).det) := by
        funext y; rw [Set.indicator_mul_left]
      rw [e, setIntegral_indicator hTm, Set.inter_eq_right.mpr hTU']
    have e7 : ∫ y in T, g y ^ 2 * Real.sqrt (P.h k y).det ≤ ∫ y in T, max M 0 * g y ^ 2 := by
      refine setIntegral_mono_on (hg2.mul_continuousOn ((hD k).2.mono hTW) hTc)
        (hg2.const_mul _) hTm (fun y hy => ?_)
      nlinarith [mul_le_mul_of_nonneg_left (hM₀ y hy) (sq_nonneg (g y))]
    have e8 : ∫ y in T, max M 0 * g y ^ 2 = max M 0 * ∫ y in T, g y ^ 2 :=
      integral_const_mul _ _
    have hfin : μ * ∫ x in L, g (P.proj k (P.param j x)) ^ 2 ≤
        max M 0 * ∫ y in T, g y ^ 2 := by
      rw [e1]
      calc _ ≤ _ := e2
        _ = _ := e3
        _ ≤ _ := e4
        _ = _ := e5
        _ = _ := e6
        _ ≤ _ := e7
        _ = _ := e8
    rw [div_mul_eq_mul_div, le_div_iff₀ hμ]
    linarith
  
  refine hexh _ hUo (fun x => w j x = w k (P.proj k (P.param j x))) ?_
  intro L hL hLU
  obtain ⟨C, hC0, hCg⟩ := htrans L hL hLU
  have hLW : L ⊆ P.W j := hLU.trans Set.inter_subset_left
  have hTc : IsCompact ((fun x => P.proj k (P.param j x)) '' L) :=
    hL.image_of_continuousOn (hτc.mono hLU)
  have hTW : (fun x => P.proj k (P.param j x)) '' L ⊆ P.W k := by
    rintro _ ⟨x, hx, rfl⟩; exact (hT x (hLU hx)).1.1
  have hLm : MeasurableSet L := hL.measurableSet
  have hwk := hw k _ hTc hTW
  have hb : MemLp (fun x => w k (P.proj k (P.param j x))) 2 (volume.restrict L) :=
    (hCg _ hwk).1
  have hwj := hw j L hL hLW
  have ha : ∀ m, MemLp (fun x => v m (P.param j x)) 2 (volume.restrict L) :=
    fun m => (l2_compact_pairing L hL).1 _ ((hv m j).mono hLW)
  have i0 : Integrable (fun x => (w j x - w k (P.proj k (P.param j x))) ^ 2)
      (volume.restrict L) := (hwj.sub hb).integrable_sq
  have hbound : ∀ m, ∫ x in L, (w j x - w k (P.proj k (P.param j x))) ^ 2 ≤
      2 * (∫ x in L, (v m (P.param j x) - w j x) ^ 2) +
        2 * (C * ∫ y in (fun x => P.proj k (P.param j x)) '' L,
          (v m (P.param k y) - w k y) ^ 2) := by
    intro m
    have hgm : MemLp (fun y => v m (P.param k y) - w k y) 2
        (volume.restrict ((fun x => P.proj k (P.param j x)) '' L)) :=
      ((l2_compact_pairing _ hTc).1 _ ((hv m k).mono hTW)).sub hwk
    have h3 := (hCg _ hgm).2
    have e : ∫ x in L, (v m (P.param k (P.proj k (P.param j x))) -
          w k (P.proj k (P.param j x))) ^ 2 =
        ∫ x in L, (v m (P.param j x) - w k (P.proj k (P.param j x))) ^ 2 := by
      refine setIntegral_congr_fun hLm (fun x hx => ?_)
      rw [(hT x (hLU hx)).2]
    have i1 : Integrable (fun x => (v m (P.param j x) - w j x) ^ 2) (volume.restrict L) :=
      ((ha m).sub hwj).integrable_sq
    have i2 : Integrable (fun x => (v m (P.param j x) - w k (P.proj k (P.param j x))) ^ 2)
        (volume.restrict L) := ((ha m).sub hb).integrable_sq
    have hmono : ∫ x in L, (w j x - w k (P.proj k (P.param j x))) ^ 2 ≤
        ∫ x in L, (2 * (v m (P.param j x) - w j x) ^ 2 +
          2 * (v m (P.param j x) - w k (P.proj k (P.param j x))) ^ 2) := by
      refine integral_mono i0 ((i1.const_mul 2).add (i2.const_mul 2)) (fun x => ?_)
      simp only
      nlinarith [sq_nonneg (2 * v m (P.param j x) - w j x - w k (P.proj k (P.param j x)))]
    rw [integral_add (i1.const_mul 2) (i2.const_mul 2), integral_const_mul,
      integral_const_mul] at hmono
    simp only at h3
    rw [e] at h3
    linarith
  have hI0 : ∫ x in L, (w j x - w k (P.proj k (P.param j x))) ^ 2 = 0 := by
    apply le_antisymm
    · have hlim : Tendsto (fun m => 2 * (∫ x in L, (v m (P.param j x) - w j x) ^ 2) +
          2 * (C * ∫ y in (fun x => P.proj k (P.param j x)) '' L,
            (v m (P.param k y) - w k y) ^ 2)) atTop (𝓝 (2 * 0 + 2 * (C * 0))) :=
        ((hconv j L hL hLW).const_mul 2).add (((hconv k _ hTc hTW).const_mul C).const_mul 2)
      rw [show (2 : ℝ) * 0 + 2 * (C * 0) = 0 by ring] at hlim
      exact ge_of_tendsto' hlim hbound
    · exact setIntegral_nonneg hLm (fun x _ => sq_nonneg _)
  have hae := (setIntegral_eq_zero_iff_of_nonneg_ae
    (ae_of_all _ (fun x => sq_nonneg (w j x - w k (P.proj k (P.param j x))))) i0).1 hI0
  filter_upwards [hae] with x hx
  have hx' : (w j x - w k (P.proj k (P.param j x))) ^ 2 = 0 := hx
  exact sub_eq_zero.1 ((pow_eq_zero_iff two_ne_zero).1 hx')

theorem pcr_div_weak_solution {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hSc : IsCompact S) (hSne : S.Nonempty) (hSpc : IsPreconnected S)
    (P : EigPatchedSurface X S)
    (wd : Fin P.n → E2 → ℝ) (A : Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hwd : ∀ j, ContDiffOn ℝ ∞ (wd j) (P.W j)) (hwdpos : ∀ j, ∀ x ∈ P.W j, 0 < wd j x)
    (hA : ∀ j (a b : Fin 2), ContDiffOn ℝ ∞ (fun x => A j x a b) (P.W j))
    (hApd : ∀ j, ∀ x ∈ P.W j, (A j x).PosDef)
    (hcomp : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        wd j x = |(fderiv ℝ (fun x' => P.proj k (P.param j x')) x).det| *
          wd k (P.proj k (P.param j x)) ∧
        ∀ c d : Fin 2, ∑ a : Fin 2, ∑ b : Fin 2,
            fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c * A j x a b *
              fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 b) d =
          |(fderiv ℝ (fun x' => P.proj k (P.param j x')) x).det| *
            A k (P.proj k (P.param j x)) c d)
    (f : X → ℝ) (hfc : ∀ j, ContinuousOn (fun x => f (P.param j x)) (P.W j)) :
    ∃ (κ : ℝ) (w : Fin P.n → E2 → ℝ) (G : Fin P.n → Fin 2 → E2 → ℝ),
      (∀ j (L : Set E2), IsCompact L → L ⊆ P.W j →
        MemLp (w j) 2 (volume.restrict L) ∧ ∀ k, MemLp (G j k) 2 (volume.restrict L)) ∧
      (∀ j (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ P.W j →
        ∀ k : Fin 2, ∫ x, w j x * pd2 k ζ x = -(∫ x, G j k x * ζ x)) ∧
      (∀ j (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ P.W j →
        ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A j x a b * G j b x * pd2 a ζ x =
          ∫ x, (f (P.param j x) + κ) * wd j x * ζ x) ∧
      (∀ j k, ∀ᵐ x ∂(volume.restrict (P.W j ∩ P.param j ⁻¹' P.O k)),
        w j x = w k (P.proj k (P.param j x))) :=
by
  classical
  obtain ⟨h', σ, hs, hp, hc, hdet, hσ, hσpos, hσcomp, hAeq⟩ :=
    pcr_dw_aux_metric S P wd A hwd hwdpos hA hApd hcomp
  obtain ⟨ρ, K, hρnn, hρc, hρ1, hK, hρK, hρO⟩ :=
    eig_partition_unity S hSc (P.withMetric h' hs hp hc)
      (fun k ζ hζ hcs hsupp => eig_lift_smooth S (P.withMetric h' hs hp hc) k ζ hζ hcs hsupp)
  have hpoinc := pcr_dw_patched_poincare S hSc hSne hSpc (P.withMetric h' hs hp hc) ρ K
    hρnn hρc hρ1 hK hρK hρO
  obtain ⟨κ, u, δ, hu, hδ, hbd, hEL⟩ :=
    pcr_dw_var_seq S hSne (P.withMetric h' hs hp hc) ρ K hρnn hρc hρ1 hK hρK hρO hpoinc
      σ hσ hσpos hσcomp f hfc
  
  have hoff : ∀ i (ζ : E2 → ℝ), tsupport ζ ⊆ P.W i → ∀ x, x ∉ P.W i →
      ζ x = 0 ∧ ∀ a : Fin 2, pd2 a ζ x = 0 := by
    intro i ζ hζs x hx
    have hxs : x ∉ tsupport ζ := fun h => hx (hζs h)
    have hd : fderiv ℝ ζ x = 0 :=
      image_eq_zero_of_notMem_tsupport (fun h => hxs (tsupport_fderiv_subset ℝ h))
    refine ⟨image_eq_zero_of_notMem_tsupport hxs, fun a => ?_⟩
    simp [pd2, hd]
  have hEL' : ∀ i (ζ : E2 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ P.W i →
      ∃ M : ℝ, ∀ n (t : ℝ), 0 ≤ δ n + 2 * t *
        ((∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A i x a b *
            pd2 b (fun x' => u n (P.param i x')) x * pd2 a ζ x) -
          ∫ x, (f (P.param i x) + κ) * wd i x * ζ x) + t ^ 2 * M := by
    intro i ζ hζ hζc hζs
    obtain ⟨M, hM⟩ := hEL i ζ hζ hζc hζs
    refine ⟨M, fun n t => ?_⟩
    have e1 : (∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A i x a b *
            pd2 b (fun x' => u n (P.param i x')) x * pd2 a ζ x) =
        ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, σ i x * Real.sqrt (h' i x).det * (h' i x)⁻¹ a b *
            pd2 b (fun x' => u n (P.param i x')) x * pd2 a ζ x := by
      refine integral_congr_ae (ae_of_all _ fun x => ?_)
      by_cases hx : x ∈ P.W i
      · simp only [hAeq i x hx]
      · have hz := (hoff i ζ hζs x hx).2
        simp [hz]
    have e2 : (∫ x, (f (P.param i x) + κ) * wd i x * ζ x) =
        ∫ x, (f (P.param i x) + κ) * Real.sqrt (h' i x).det * ζ x := by
      refine integral_congr_ae (ae_of_all _ fun x => ?_)
      by_cases hx : x ∈ P.W i
      · simp only [hdet i x hx]
      · have hz := (hoff i ζ hζs x hx).1
        simp [hz]
    rw [e1, e2]
    exact hM n t
  obtain ⟨ψ, w, G, hψ, hL2, hconv, hgrad, hweak⟩ :=
    pcr_dw_weak_limit P.n P.W P.W_open A (fun i a b => (hA i a b).continuousOn)
      (fun j x => (f (P.param j x) + κ) * wd j x)
      (fun i => ((hfc i).add continuousOn_const).mul (hwd i).continuousOn)
      (fun n i x => u n (P.param i x)) hu hbd δ hδ hEL'
  have hcompat := pcr_dw_limit_compat S P (fun m => u (ψ m))
    (fun m j => (hu (ψ m) j).continuousOn) w (fun j L hL hLW => (hL2 j L hL hLW).1) hconv
  exact ⟨κ, w, G, hL2, hgrad, hweak, hcompat⟩

theorem pdls_sob_gn_L2 : ∃ C : ℝ, 0 ≤ C ∧ ∀ v : E2 → ℝ, ContDiff ℝ 1 v → HasCompactSupport v →
    (∫ x, v x ^ 2) ≤ C ^ 2 * (∫ x, Real.sqrt (∑ m : Fin 2, (pd2 m v x) ^ 2)) ^ 2 :=
by
  have hHol : ((Module.finrank ℝ E2 : ℕ) : NNReal).HolderConjugate (2 : NNReal) := by
    rw [finrank_euclideanSpace_fin]
    exact NNReal.HolderConjugate.two_two
  refine ⟨(eLpNormLESNormFDerivOneConst (volume : Measure E2) ((2 : NNReal) : ℝ) : ℝ),
    NNReal.coe_nonneg _, ?_⟩
  intro v hv hvc
  set K : NNReal := eLpNormLESNormFDerivOneConst (volume : Measure E2) ((2 : NNReal) : ℝ) with hK
  have hGN : eLpNorm v ((2 : NNReal) : ENNReal) volume ≤
      (K : ENNReal) * eLpNorm (fderiv ℝ v) 1 volume :=
    eLpNorm_le_eLpNorm_fderiv_one (volume : Measure E2) hv hvc hHol
  set X : ℝ := ∫ x, v x ^ 2 with hXdef
  set I : ℝ := ∫ x, Real.sqrt (∑ m : Fin 2, (pd2 m v x) ^ 2) with hIdef
  have hX : 0 ≤ X := integral_nonneg (fun x => sq_nonneg _)
  have hI : 0 ≤ I := integral_nonneg (fun x => Real.sqrt_nonneg _)
  
  have hB : eLpNorm v ((2 : NNReal) : ENNReal) volume = ENNReal.ofReal (Real.sqrt X) := by
    have hmem : MemLp v 2 (volume : Measure E2) := hv.continuous.memLp_of_hasCompactSupport hvc
    have h2 : ((2 : NNReal) : ENNReal) = 2 := by norm_num
    rw [h2, hmem.eLpNorm_eq_integral_rpow_norm two_ne_zero ENNReal.ofNat_ne_top]
    congr 1
    have ht : (2 : ENNReal).toReal = 2 := by norm_num
    rw [ht, Real.sqrt_eq_rpow, hXdef]
    congr 1
    · congr 1
      funext x
      rw [Real.rpow_two, Real.norm_eq_abs, sq_abs]
    · norm_num
  
  have hop : ∀ ℓ : E2 →L[ℝ] ℝ, ‖ℓ‖ ≤ Real.sqrt (∑ m : Fin 2, (ℓ (e2 m)) ^ 2) := by
    intro ℓ
    refine ContinuousLinearMap.opNorm_le_bound ℓ (Real.sqrt_nonneg _) (fun y => ?_)
    have hy : y = y 0 • e2 0 + y 1 • e2 1 := by
      ext i
      fin_cases i <;> simp [e2, EuclideanSpace.single_apply]
    have hly : ℓ y = y 0 * ℓ (e2 0) + y 1 * ℓ (e2 1) := by
      conv_lhs => rw [hy]
      rw [map_add, map_smul, map_smul, smul_eq_mul, smul_eq_mul]
    have hny : ‖y‖ = Real.sqrt (y 0 ^ 2 + y 1 ^ 2) := by
      rw [EuclideanSpace.norm_eq, Fin.sum_univ_two, Real.norm_eq_abs, Real.norm_eq_abs, sq_abs,
        sq_abs]
    rw [Real.norm_eq_abs, hly, hny, Fin.sum_univ_two, ← Real.sqrt_mul (by positivity)]
    apply Real.abs_le_sqrt
    nlinarith [sq_nonneg (ℓ (e2 0) * y 1 - ℓ (e2 1) * y 0)]
  
  have hC : eLpNorm (fderiv ℝ v) 1 volume ≤ ENNReal.ofReal I := by
    have hD : Continuous (fderiv ℝ v) := hv.continuous_fderiv one_ne_zero
    have hDc : HasCompactSupport (fderiv ℝ v) := hvc.fderiv ℝ
    have hDi : Integrable (fderiv ℝ v) (volume : Measure E2) :=
      hD.integrable_of_hasCompactSupport hDc
    rw [eLpNorm_one_eq_lintegral_enorm, ← ofReal_integral_norm_eq_lintegral_enorm hDi]
    apply ENNReal.ofReal_le_ofReal
    have hgc : Continuous (fun x => Real.sqrt (∑ m : Fin 2, (pd2 m v x) ^ 2)) := by
      refine Continuous.sqrt (continuous_finset_sum _ (fun m _ => ?_))
      exact (hD.clm_apply continuous_const).pow 2
    have hgs : HasCompactSupport (fun x => Real.sqrt (∑ m : Fin 2, (pd2 m v x) ^ 2)) := by
      refine hDc.mono ?_
      intro x hx h0
      apply hx
      simp only [pd2]
      rw [h0]
      simp
    have hgi : Integrable (fun x => Real.sqrt (∑ m : Fin 2, (pd2 m v x) ^ 2))
        (volume : Measure E2) :=
      hgc.integrable_of_hasCompactSupport hgs
    rw [hIdef]
    exact integral_mono hDi.norm hgi (fun x => hop (fderiv ℝ v x))
  
  have hKC : (K : ENNReal) = ENNReal.ofReal (K : ℝ) := (ENNReal.ofReal_coe_nnreal).symm
  have hchain : ENNReal.ofReal (Real.sqrt X) ≤ ENNReal.ofReal ((K : ℝ) * I) := by
    rw [← hB, ENNReal.ofReal_mul (NNReal.coe_nonneg K), ← hKC]
    exact hGN.trans (mul_le_mul_left' hC _)
  have hs : Real.sqrt X ≤ (K : ℝ) * I :=
    (ENNReal.ofReal_le_ofReal_iff (mul_nonneg (NNReal.coe_nonneg K) hI)).mp hchain
  have hsq := pow_le_pow_left₀ (Real.sqrt_nonneg X) hs 2
  rw [Real.sq_sqrt hX, mul_pow] at hsq
  exact hsq

theorem pdls_sob_gn_iter (C : ℝ) (hC : 0 ≤ C)
    (hGN : ∀ v : E2 → ℝ, ContDiff ℝ 1 v → HasCompactSupport v →
      (∫ x, v x ^ 2) ≤ C ^ 2 * (∫ x, Real.sqrt (∑ m : Fin 2, (pd2 m v x) ^ 2)) ^ 2)
    (u : E2 → ℝ) (hu : ContDiff ℝ 1 u) (huc : HasCompactSupport u) (k : ℕ) :
    (∫ x, u x ^ (2 * (k + 1))) ≤
      C ^ (2 * k) * ((k + 1).factorial : ℝ) ^ 2 * (∫ x, u x ^ 2) *
        (∑ m : Fin 2, ∫ x, (pd2 m u x) ^ 2) ^ k :=
by
  classical
  set S : ℝ := ∑ m : Fin 2, ∫ x, (pd2 m u x) ^ 2 with hSdef
  set g : E2 → ℝ := fun x => Real.sqrt (∑ m : Fin 2, (pd2 m u x) ^ 2) with hgdef
  
  have hpdc : ∀ m : Fin 2, Continuous (pd2 m u) := by
    intro m
    unfold pd2
    exact (hu.continuous_fderiv one_ne_zero).clm_apply continuous_const
  have hpds : ∀ m : Fin 2, HasCompactSupport (pd2 m u) := by
    intro m
    unfold pd2
    exact huc.fderiv_apply (𝕜 := ℝ) (e2 m)
  have hgc : Continuous g :=
    Real.continuous_sqrt.comp (continuous_finset_sum _ (fun m _ => (hpdc m).pow 2))
  have hgs : HasCompactSupport g := by
    refine (huc.fderiv (𝕜 := ℝ)).mono' ?_
    intro x hx
    apply subset_tsupport
    rw [Function.mem_support] at hx ⊢
    intro h0
    apply hx
    simp [hgdef, pd2, h0]
  have hsqint : ∀ f : E2 → ℝ, Continuous f → HasCompactSupport f →
      Integrable (fun x => f x ^ 2) volume := by
    intro f hf hfs
    exact (hf.pow 2).integrable_of_hasCompactSupport
      (hfs.comp_left (g := fun t : ℝ => t ^ 2) (by simp))
  have hg2 : (∫ x, g x ^ 2) = S := by
    have h1 : (fun x => g x ^ 2) = fun x => ∑ m : Fin 2, (pd2 m u x) ^ 2 := by
      funext x
      simp only [hgdef]
      exact Real.sq_sqrt (Finset.sum_nonneg (fun m _ => sq_nonneg _))
    rw [h1, integral_finset_sum]
    intro m _
    exact hsqint _ (hpdc m) (hpds m)
  
  have hCS : ∀ f h : E2 → ℝ, Continuous f → HasCompactSupport f → Continuous h →
      HasCompactSupport h →
      (∫ x, f x * h x) ^ 2 ≤ (∫ x, f x ^ 2) * (∫ x, h x ^ 2) := by
    intro f h hf hfs hh hhs
    have i1 := hsqint f hf hfs
    have i2 := hsqint h hh hhs
    have i3 : Integrable (fun x => f x * h x) volume :=
      (hf.mul hh).integrable_of_hasCompactSupport hfs.mul_right
    have hq : ∀ t : ℝ, 0 ≤ (∫ x, f x ^ 2) * (t * t) + (2 * ∫ x, f x * h x) * t +
        (∫ x, h x ^ 2) := by
      intro t
      have e : (∫ x, (t * f x + h x) ^ 2) = (∫ x, f x ^ 2) * (t * t) +
          (2 * ∫ x, f x * h x) * t + (∫ x, h x ^ 2) := by
        have hpt : (fun x => (t * f x + h x) ^ 2) =
            fun x => ((t * t) * f x ^ 2 + (2 * t) * (f x * h x)) + h x ^ 2 := by
          funext x; ring
        have j1 : Integrable (fun x => t * t * f x ^ 2) volume := i1.const_mul _
        have j2 : Integrable (fun x => 2 * t * (f x * h x)) volume := i3.const_mul _
        have j12 : Integrable (fun x => t * t * f x ^ 2 + 2 * t * (f x * h x)) volume :=
          j1.add j2
        rw [hpt, integral_add j12 i2, integral_add j1 j2, integral_const_mul,
          integral_const_mul]
        ring
      rw [← e]
      exact integral_nonneg (fun x => sq_nonneg _)
    have hd := discrim_le_zero hq
    unfold discrim at hd
    nlinarith [hd]
  
  have hpow : ∀ (j : ℕ) (x : E2), Real.sqrt (∑ m : Fin 2, (pd2 m (fun y => u y ^ j) x) ^ 2) =
      (j : ℝ) * |u x| ^ (j - 1) * g x := by
    intro j x
    have hd : DifferentiableAt ℝ u x := (hu.differentiable one_ne_zero) x
    have hpm : ∀ m : Fin 2, pd2 m (fun y => u y ^ j) x =
        ((j : ℝ) * u x ^ (j - 1)) * pd2 m u x := by
      intro m
      simp only [pd2]
      rw [fderiv_pow j hd]
      simp [ContinuousLinearMap.smul_apply, nsmul_eq_mul, smul_eq_mul]
    have hsum : ∑ m : Fin 2, (pd2 m (fun y => u y ^ j) x) ^ 2 =
        ((j : ℝ) * u x ^ (j - 1)) ^ 2 * ∑ m : Fin 2, (pd2 m u x) ^ 2 := by
      simp only [hpm, Fin.sum_univ_two]; ring
    simp only [hgdef]
    rw [hsum, Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq_eq_abs, abs_mul, abs_pow, Nat.abs_cast]
  have hS0 : 0 ≤ S := Finset.sum_nonneg (fun m _ => integral_nonneg (fun x => sq_nonneg _))
  
  have hstep : ∀ n : ℕ, (∫ x, u x ^ (2 * (n + 2))) ≤
      C ^ 2 * ((n : ℝ) + 2) ^ 2 * (∫ x, u x ^ (2 * (n + 1))) * S := by
    intro n
    have hv : ContDiff ℝ 1 (fun y => u y ^ (n + 2)) := hu.pow (n + 2)
    have hvc : HasCompactSupport (fun y => u y ^ (n + 2)) :=
      huc.comp_left (g := fun t : ℝ => t ^ (n + 2)) (by simp)
    have h1 := hGN _ hv hvc
    have hL : (fun x => (u x ^ (n + 2)) ^ 2) = fun x => u x ^ (2 * (n + 2)) := by
      funext x; ring
    have e : n + 2 - 1 = n + 1 := by omega
    have hR : (fun x => Real.sqrt (∑ m : Fin 2, (pd2 m (fun y => u y ^ (n + 2)) x) ^ 2)) =
        fun x => ((n : ℝ) + 2) * (|u x| ^ (n + 1) * g x) := by
      funext x
      rw [hpow (n + 2) x, e]
      push_cast
      ring
    beta_reduce at h1
    rw [hL, hR, integral_const_mul] at h1
    have hf : Continuous (fun x => |u x| ^ (n + 1)) := hu.continuous.abs.pow (n + 1)
    have hfs : HasCompactSupport (fun x => |u x| ^ (n + 1)) :=
      huc.comp_left (g := fun t : ℝ => |t| ^ (n + 1)) (by simp)
    have h2 := hCS _ _ hf hfs hgc hgs
    have hE : (fun x => (|u x| ^ (n + 1)) ^ 2) = fun x => u x ^ (2 * (n + 1)) := by
      funext x
      rw [← abs_pow, sq_abs]
      ring
    rw [hE, hg2] at h2
    have hK : 0 ≤ C ^ 2 * ((n : ℝ) + 2) ^ 2 := by positivity
    calc (∫ x, u x ^ (2 * (n + 2)))
        ≤ C ^ 2 * (((n : ℝ) + 2) * ∫ x, |u x| ^ (n + 1) * g x) ^ 2 := h1
      _ = (C ^ 2 * ((n : ℝ) + 2) ^ 2) * (∫ x, |u x| ^ (n + 1) * g x) ^ 2 := by ring
      _ ≤ (C ^ 2 * ((n : ℝ) + 2) ^ 2) * ((∫ x, u x ^ (2 * (n + 1))) * S) :=
          mul_le_mul_of_nonneg_left h2 hK
      _ = _ := by ring
  
  induction k with
  | zero => simp
  | succ n ih =>
    have h := hstep n
    have hfac : (((n + 1 + 1).factorial : ℕ) : ℝ) = ((n : ℝ) + 2) * ((n + 1).factorial : ℝ) := by
      rw [Nat.factorial_succ]; push_cast; ring
    have hK : 0 ≤ C ^ 2 * ((n : ℝ) + 2) ^ 2 * S := mul_nonneg (by positivity) hS0
    calc (∫ x, u x ^ (2 * (n + 1 + 1)))
        ≤ C ^ 2 * ((n : ℝ) + 2) ^ 2 * (∫ x, u x ^ (2 * (n + 1))) * S := h
      _ = (C ^ 2 * ((n : ℝ) + 2) ^ 2 * S) * (∫ x, u x ^ (2 * (n + 1))) := by ring
      _ ≤ (C ^ 2 * ((n : ℝ) + 2) ^ 2 * S) *
          (C ^ (2 * n) * ((n + 1).factorial : ℝ) ^ 2 * (∫ x, u x ^ 2) * S ^ n) :=
          mul_le_mul_of_nonneg_left ih hK
      _ = _ := by rw [hfac]; ring

theorem pdls_sob_cutoff (U : Set E2) (hU : IsOpen U) (φ : E2 → ℝ) (H : Fin 2 → E2 → ℝ)
    (hL2 : ∀ L : Set E2, IsCompact L → L ⊆ U →
      MemLp φ 2 (volume.restrict L) ∧ ∀ m, MemLp (H m) 2 (volume.restrict L))
    (hgrad : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ U →
      ∀ m : Fin 2, ∫ x, φ x * pd2 m ζ x = -(∫ x, H m x * ζ x))
    (L : Set E2) (hL : IsCompact L) (hLU : L ⊆ U) :
    ∃ (K : Set E2) (ψ : E2 → ℝ) (H' : Fin 2 → E2 → ℝ), IsCompact K ∧
      (∀ x ∈ L, ψ x = φ x) ∧ (∀ x, x ∉ K → ψ x = 0) ∧ MemLp ψ 2 volume ∧
      (∀ m, MemLp (H' m) 2 volume) ∧
      ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
        ∀ m : Fin 2, ∫ x, ψ x * pd2 m ζ x = -(∫ x, H' m x * ζ x) :=
by
  obtain ⟨δ, hδ, hδU⟩ := hL.exists_cthickening_subset_open hU hLU
  have hK : IsCompact (Metric.cthickening δ L) := hL.cthickening
  obtain ⟨χ, hχs, hχr, hχsupp, hχiff⟩ := exists_contMDiff_support_eq_eq_one_iff 𝓘(ℝ, E2)
    (n := ⊤) Metric.isOpen_thickening hL.isClosed (Metric.self_subset_thickening hδ L)
  have hχ : ContDiff ℝ ∞ χ := contMDiff_iff_contDiff.mp hχs
  have hχK : tsupport χ ⊆ Metric.cthickening δ L := by
    unfold tsupport
    rw [hχsupp]
    exact Metric.closure_thickening_subset_cthickening δ L
  have hχ0 : ∀ x, x ∉ Metric.cthickening δ L → χ x = 0 := fun x hx =>
    image_eq_zero_of_notMem_tsupport (fun h => hx (hχK h))
  have hdχc : ∀ m : Fin 2, Continuous (pd2 m χ) := fun m =>
    (hχ.continuous_fderiv (by simp)).clm_apply continuous_const
  have hdχ0 : ∀ m : Fin 2, ∀ x, x ∉ Metric.cthickening δ L → pd2 m χ x = 0 := by
    intro m x hx
    have h0 : fderiv ℝ χ x = 0 :=
      image_eq_zero_of_notMem_tsupport (fun h => hx (hχK (tsupport_fderiv_subset ℝ h)))
    simp [pd2, h0]
  have hprod : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → ∀ (m : Fin 2) (x : E2),
      pd2 m (fun y => χ y * ζ y) x = χ x * pd2 m ζ x + ζ x * pd2 m χ x := by
    intro ζ hζ m x
    simp only [pd2]
    rw [fderiv_fun_mul (hχ.differentiable (by simp) x) (hζ.differentiable (by simp) x)]
    simp
  have T : ∀ (f : E2 → ℝ), MemLp f 2 (volume.restrict (Metric.cthickening δ L)) →
      ∀ c : E2 → ℝ, Continuous c → (∀ x, x ∉ Metric.cthickening δ L → c x = 0) →
      MemLp (fun x => c x * f x) 2 volume ∧ Integrable (fun x => c x * f x) volume := by
    intro f hf c hc hcK
    obtain ⟨B, hB⟩ := hK.exists_bound_of_continuousOn hc.continuousOn
    have hmeas : AEStronglyMeasurable (fun x => c x * f x)
        (volume.restrict (Metric.cthickening δ L)) :=
      hc.aestronglyMeasurable.mul hf.1
    have hKm : MemLp (fun x => c x * f x) 2 (volume.restrict (Metric.cthickening δ L)) := by
      refine MemLp.of_le (hf.const_mul B) hmeas ?_
      refine ae_restrict_of_forall_mem hK.measurableSet (fun x hx => ?_)
      rw [norm_mul, norm_mul, Real.norm_eq_abs B]
      exact mul_le_mul_of_nonneg_right ((hB x hx).trans (le_abs_self B)) (norm_nonneg _)
    have hsupp : (Metric.cthickening δ L).indicator (fun x => c x * f x) = fun x => c x * f x := by
      refine Set.indicator_eq_self.mpr ?_
      refine Function.support_subset_iff'.mpr (fun x hx => ?_)
      simp [hcK x hx]
    refine ⟨?_, ?_⟩
    · have h := (memLp_indicator_iff_restrict hK.measurableSet).mpr hKm
      rwa [hsupp] at h
    · haveI : IsFiniteMeasure (volume.restrict (Metric.cthickening δ L)) :=
        isFiniteMeasure_restrict.mpr hK.measure_lt_top.ne
      have hI : IntegrableOn (fun x => c x * f x) (Metric.cthickening δ L) volume :=
        hKm.integrable one_le_two
      exact hI.integrable_of_forall_notMem_eq_zero (fun x hx => by simp [hcK x hx])
  have hφK := (hL2 _ hK hδU).1
  have hHK := (hL2 _ hK hδU).2
  refine ⟨Metric.cthickening δ L, fun x => χ x * φ x,
    fun m x => χ x * H m x + pd2 m χ x * φ x, hK, ?_, ?_, ?_, ?_, ?_⟩
  · intro x hx
    simp [(hχiff x).mp hx]
  · intro x hx
    simp [hχ0 x hx]
  · exact (T φ hφK χ hχ.continuous hχ0).1
  · intro m
    exact (T (H m) (hHK m) χ hχ.continuous hχ0).1.add
      (T φ hφK (pd2 m χ) (hdχc m) (hdχ0 m)).1
  · intro ζ hζ hζc m
    have hθ : ContDiff ℝ ∞ (fun y => χ y * ζ y) := hχ.mul hζ
    have hθc : HasCompactSupport (fun y => χ y * ζ y) := hζc.mul_left
    have hθs : tsupport (fun y => χ y * ζ y) ⊆ U :=
      tsupport_mul_subset_left.trans (hχK.trans hδU)
    have hg := hgrad _ hθ hθc hθs m
    have hdζc : Continuous (pd2 m ζ) :=
      (hζ.continuous_fderiv (by simp)).clm_apply continuous_const
    have I1 := (T φ hφK (fun x => χ x * pd2 m ζ x) (hχ.continuous.mul hdζc)
      (fun x hx => by simp [hχ0 x hx])).2
    have I2 := (T φ hφK (fun x => ζ x * pd2 m χ x) (hζ.continuous.mul (hdχc m))
      (fun x hx => by simp [hdχ0 m x hx])).2
    have I3 := (T (H m) (hHK m) (fun x => χ x * ζ x) (hχ.continuous.mul hζ.continuous)
      (fun x hx => by simp [hχ0 x hx])).2
    have R1 : (fun x => χ x * φ x * pd2 m ζ x) = fun x => (χ x * pd2 m ζ x) * φ x := by
      funext x; ring
    have R2 : (fun x => φ x * pd2 m (fun y => χ y * ζ y) x) =
        fun x => (χ x * pd2 m ζ x) * φ x + (ζ x * pd2 m χ x) * φ x := by
      funext x; rw [hprod ζ hζ m x]; ring
    have R3 : (fun x => H m x * (χ x * ζ x)) = fun x => (χ x * ζ x) * H m x := by
      funext x; ring
    have R4 : (fun x => (χ x * H m x + pd2 m χ x * φ x) * ζ x) =
        fun x => (χ x * ζ x) * H m x + (ζ x * pd2 m χ x) * φ x := by
      funext x; ring
    beta_reduce at hg ⊢
    rw [R2, integral_add I1 I2, R3] at hg
    rw [R1, R4, integral_add I3 I2]
    linarith

theorem pdls_sob_moll (K : Set E2) (hK : IsCompact K) (ψ : E2 → ℝ) (H' : Fin 2 → E2 → ℝ)
    (hψ0 : ∀ x, x ∉ K → ψ x = 0) (hψ : MemLp ψ 2 volume) (hH' : ∀ m, MemLp (H' m) 2 volume)
    (hgrad : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      ∀ m : Fin 2, ∫ x, ψ x * pd2 m ζ x = -(∫ x, H' m x * ζ x)) :
    ∃ u : ℕ → E2 → ℝ, (∀ j, ContDiff ℝ ∞ (u j)) ∧ (∀ j, HasCompactSupport (u j)) ∧
      (∀ j, (∫ x, u j x ^ 2) ≤ ∫ x, ψ x ^ 2) ∧
      (∀ j, (∑ m : Fin 2, ∫ x, (pd2 m (u j) x) ^ 2) ≤ ∑ m : Fin 2, ∫ x, H' m x ^ 2) ∧
      ∀ᵐ x ∂(volume : Measure E2), Tendsto (fun j => u j x) atTop (𝓝 (ψ x)) :=
by
  classical
  
  have hψint : Integrable ψ := by
    haveI : IsFiniteMeasure (volume.restrict K) :=
      isFiniteMeasure_restrict.mpr hK.measure_lt_top.ne
    have h1 : IntegrableOn ψ K := (hψ.restrict K).integrable one_le_two
    exact h1.integrable_of_forall_notMem_eq_zero hψ0
  
  obtain ⟨Cη, -, hk⟩ := elr_moll_kernel
  obtain ⟨δ, hδdef⟩ : ∃ δ : ℕ → ℝ, δ = fun j : ℕ => 1 / ((j : ℝ) + 1) := ⟨_, rfl⟩
  have hδpos : ∀ j, 0 < δ j := fun j => by rw [hδdef]; positivity
  have hδ : Tendsto δ atTop (𝓝 0) := by
    rw [hδdef]; exact tendsto_one_div_add_atTop_nhds_zero_nat
  choose η hη hηc hη0 hηs hη1 hηd using fun j => hk (δ j) (hδpos j)
  
  have htrans : ∀ j (m : Fin 2) (x : E2),
      pd2 m (fun x => ∫ y, η j (x - y) * ψ y) x = ∫ y, η j (x - y) * H' m y := by
    intro j m x
    rw [(elr_moll_deriv (η j) ψ (hη j) (hηc j) hψint).2 m x]
    have hζ : ContDiff ℝ ∞ (fun y => η j (x - y)) :=
      (hη j).comp (contDiff_const.sub contDiff_id)
    have hζc : HasCompactSupport (fun y => η j (x - y)) := by
      have he : (fun y => η j (x - y)) = η j ∘ (Homeomorph.subLeft x) := by
        funext y; simp [Homeomorph.subLeft_apply]
      rw [he]; exact (hηc j).comp_homeomorph _
    have hd : ∀ y, pd2 m (fun y => η j (x - y)) y = -(pd2 m (η j) (x - y)) := by
      intro y
      have h1 : HasFDerivAt (fun y : E2 => x - y) (-ContinuousLinearMap.id ℝ E2) y :=
        (hasFDerivAt_id y).const_sub x
      have h2 : HasFDerivAt (η j) (fderiv ℝ (η j) (x - y)) (x - y) :=
        ((hη j).differentiable (by simp)).differentiableAt.hasFDerivAt
      have h3 : HasFDerivAt (fun y => η j (x - y))
          ((fderiv ℝ (η j) (x - y)).comp (-ContinuousLinearMap.id ℝ E2)) y := h2.comp y h1
      unfold pd2
      rw [h3.fderiv]
      simp
    have h4 := hgrad _ hζ hζc m
    have h5 : (fun y => ψ y * pd2 m (fun y => η j (x - y)) y) =
        fun y => -(pd2 m (η j) (x - y) * ψ y) := by
      funext y; rw [hd y]; ring
    rw [h5, integral_neg] at h4
    have h6 := neg_inj.mp h4
    rw [h6]
    congr 1; funext y; ring
  
  have hsupp : ∀ j, HasCompactSupport (fun x => ∫ y, η j (x - y) * ψ y) := by
    intro j
    refine HasCompactSupport.intro (hK.cthickening (r := δ j)) ?_
    intro x hx
    have hz : (fun y => η j (x - y) * ψ y) = fun _ => (0 : ℝ) := by
      funext y
      by_cases hy : y ∈ K
      · have hdist : δ j < dist x y := by
          by_contra hc
          push_neg at hc
          exact hx (Metric.mem_cthickening_of_dist_le x y (δ j) K hy hc)
        rw [dist_eq_norm] at hdist
        rw [hηs j _ hdist.le, zero_mul]
      · rw [hψ0 y hy, mul_zero]
    show ∫ y, η j (x - y) * ψ y = 0
    rw [hz, integral_zero]
  
  have hL2a : ∀ j, (∫ x, (∫ y, η j (x - y) * ψ y) ^ 2) ≤ ∫ x, ψ x ^ 2 := by
    intro j
    have h := (elr_young_L2 (η j) ψ (hη j).continuous (hηc j) (hη0 j) 1 (hη1 j).le hψ
      Set.univ).2
    rw [setIntegral_univ, one_pow, one_mul] at h
    exact h
  have hL2b : ∀ j, (∑ m : Fin 2, ∫ x, (pd2 m (fun x => ∫ y, η j (x - y) * ψ y) x) ^ 2) ≤
      ∑ m : Fin 2, ∫ x, H' m x ^ 2 := by
    intro j
    refine Finset.sum_le_sum (fun m _ => ?_)
    have h := (elr_young_L2 (η j) (H' m) (hη j).continuous (hηc j) (hη0 j) 1 (hη1 j).le
      (hH' m) Set.univ).2
    rw [setIntegral_univ, one_pow, one_mul] at h
    simp only [htrans j m]
    exact h
  
  obtain ⟨W, hWdef⟩ : ∃ W : ℕ → E2 → ℝ, W = fun j x => ∫ y, η j (x - y) * ψ y := ⟨_, rfl⟩
  have hW : ∀ j x, W j x = ∫ t, η j t * ψ (x - t) := by
    intro j x
    rw [hWdef]
    have h := integral_sub_left_eq_self (fun t => η j t * ψ (x - t)) (volume : Measure E2) x
    simp only [sub_sub_cancel] at h
    exact h
  have hWc : ∀ j, Continuous (W j) := fun j => by
    rw [hWdef]; exact (elr_moll_deriv (η j) ψ (hη j) (hηc j) hψint).1.continuous
  obtain ⟨hI, hT⟩ := elr_moll_L1 ψ hψint η (fun j => (hη j).continuous) hη0 hη1 δ hδ hηs
  have h1 : ∀ j, eLpNorm (W j - ψ) 1 volume =
      ENNReal.ofReal (∫ x, |(∫ t, η j t * ψ (x - t)) - ψ x|) := by
    intro j
    have h2 := ofReal_integral_norm_eq_lintegral_enorm (hI j)
    simp only [Real.norm_eq_abs] at h2
    rw [h2, eLpNorm_one_eq_lintegral_enorm]
    refine lintegral_congr (fun x => ?_)
    simp only [Pi.sub_apply, hW]
  have h3 : Tendsto (fun j => ENNReal.ofReal (∫ x, |(∫ t, η j t * ψ (x - t)) - ψ x|))
      atTop (𝓝 0) := by
    have h := ENNReal.tendsto_ofReal hT
    rwa [ENNReal.ofReal_zero] at h
  have hE : Tendsto (fun j => eLpNorm (W j - ψ) 1 volume) atTop (𝓝 0) :=
    h3.congr (fun j => (h1 j).symm)
  have hTM : TendstoInMeasure volume W atTop ψ :=
    tendstoInMeasure_of_tendsto_eLpNorm one_ne_zero (fun j => (hWc j).aestronglyMeasurable)
      hψint.aestronglyMeasurable hE
  obtain ⟨ns, -, hns⟩ := hTM.exists_seq_tendsto_ae
  subst hWdef
  
  exact ⟨fun i => fun x => ∫ y, η (ns i) (x - y) * ψ y,
    fun i => (elr_moll_deriv (η (ns i)) ψ (hη _) (hηc _) hψint).1,
    fun i => hsupp (ns i), fun i => hL2a (ns i), fun i => hL2b (ns i), hns⟩

theorem pdls_sob_fatou (f : ℕ → E2 → ℝ) (g : E2 → ℝ) (hf : ∀ j, Continuous (f j))
    (hlim : ∀ᵐ x ∂(volume : Measure E2), Tendsto (fun j => f j x) atTop (𝓝 (g x)))
    (n : ℕ) (B : ℝ) (hint : ∀ j, Integrable (fun x => f j x ^ (2 * (n + 1))) volume)
    (hM : ∀ j, (∫ x, f j x ^ (2 * (n + 1))) ≤ B) :
    MemLp g ((2 * (n + 1) : ℕ) : ENNReal) volume :=
by
  set N : ℕ := 2 * (n + 1) with hN
  have hNpos : 0 < N := by omega
  have hEven : Even N := even_two_mul (n + 1)
  have hp0 : ((N : ℕ) : ENNReal) ≠ 0 := by exact_mod_cast hNpos.ne'
  have hptop : ((N : ℕ) : ENNReal) ≠ ⊤ := ENNReal.natCast_ne_top N
  have hmeas : AEStronglyMeasurable g volume :=
    aestronglyMeasurable_of_tendsto_ae atTop (fun j => (hf j).aestronglyMeasurable) hlim
  have hpt : ∀ j x, ‖f j x‖ₑ ^ ((N : ℝ)) = ENNReal.ofReal (f j x ^ N) := by
    intro j x
    rw [ENNReal.rpow_natCast, Real.enorm_eq_ofReal_abs, ← ENNReal.ofReal_pow (abs_nonneg _),
      hEven.pow_abs]
  have hlin : ∀ j, ∫⁻ x, ‖f j x‖ₑ ^ ((N : ℝ)) ∂volume ≤ ENNReal.ofReal B := by
    intro j
    rw [lintegral_congr (fun x => hpt j x)]
    rw [← ofReal_integral_eq_lintegral_ofReal (hint j)
      (Filter.Eventually.of_forall (fun x => hEven.pow_nonneg _))]
    exact ENNReal.ofReal_le_ofReal (hM j)
  have hbd : ∀ j, eLpNorm (f j) ((N : ℕ) : ENNReal) volume ≤ ENNReal.ofReal B ^ (1 / (N : ℝ)) := by
    intro j
    rw [eLpNorm_eq_lintegral_rpow_enorm hp0 hptop, ENNReal.toReal_natCast]
    exact ENNReal.rpow_le_rpow (hlin j) (by positivity)
  have hg := Lp.eLpNorm_le_of_ae_tendsto (Filter.Eventually.of_forall hbd)
    (fun j => (hf j).aestronglyMeasurable) hlim
  exact ⟨hmeas, lt_of_le_of_lt hg
    (ENNReal.rpow_lt_top_of_nonneg (by positivity) ENNReal.ofReal_ne_top)⟩

theorem pdls_sobolev_Lp (U : Set E2) (hU : IsOpen U) (φ : E2 → ℝ) (H : Fin 2 → E2 → ℝ)
    (hL2 : ∀ L : Set E2, IsCompact L → L ⊆ U →
      MemLp φ 2 (volume.restrict L) ∧ ∀ m, MemLp (H m) 2 (volume.restrict L))
    (hgrad : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ U →
      ∀ m : Fin 2, ∫ x, φ x * pd2 m ζ x = -(∫ x, H m x * ζ x))
    (p : ℕ) : ∀ L : Set E2, IsCompact L → L ⊆ U → MemLp φ p (volume.restrict L) :=
by
  intro L hL hLU
  obtain ⟨K, ψ, H', hK, hψL, hψ0, hψ2, hH'2, hψgrad⟩ :=
    pdls_sob_cutoff U hU φ H hL2 hgrad L hL hLU
  obtain ⟨u, hu, huc, hu2, huS, hlim⟩ := pdls_sob_moll K hK ψ H' hψ0 hψ2 hH'2 hψgrad
  obtain ⟨C, hC0, hGN⟩ := pdls_sob_gn_L2
  have hM : ∀ j, (∫ x, u j x ^ (2 * (p + 1))) ≤
      C ^ (2 * p) * ((p + 1).factorial : ℝ) ^ 2 * (∫ x, ψ x ^ 2) *
        (∑ m : Fin 2, ∫ x, H' m x ^ 2) ^ p := by
    intro j
    have h1 := pdls_sob_gn_iter C hC0 hGN (u j) ((hu j).of_le (by exact_mod_cast le_top))
      (huc j) p
    have hS0 : 0 ≤ ∑ m : Fin 2, ∫ x, (pd2 m (u j) x) ^ 2 :=
      Finset.sum_nonneg (fun m _ => integral_nonneg (fun x => sq_nonneg _))
    have hA0 : 0 ≤ C ^ (2 * p) * ((p + 1).factorial : ℝ) ^ 2 := by positivity
    have hψ0' : 0 ≤ ∫ x, ψ x ^ 2 := integral_nonneg (fun x => sq_nonneg _)
    refine h1.trans ?_
    have hpow := pow_le_pow_left₀ hS0 (huS j) p
    have h2 : C ^ (2 * p) * ((p + 1).factorial : ℝ) ^ 2 * (∫ x, u j x ^ 2) ≤
        C ^ (2 * p) * ((p + 1).factorial : ℝ) ^ 2 * (∫ x, ψ x ^ 2) :=
      mul_le_mul_of_nonneg_left (hu2 j) hA0
    exact mul_le_mul h2 hpow (pow_nonneg hS0 _) (mul_nonneg hA0 hψ0')
  have hint : ∀ j, Integrable (fun x => u j x ^ (2 * (p + 1))) := by
    intro j
    refine Continuous.integrable_of_hasCompactSupport ((hu j).continuous.pow _) ?_
    exact (huc j).comp_left (g := fun t : ℝ => t ^ (2 * (p + 1))) (by simp)
  have hψp : MemLp ψ ((2 * (p + 1) : ℕ) : ENNReal) volume :=
    pdls_sob_fatou u ψ (fun j => (hu j).continuous) hlim p _ hint hM
  have hψL' : MemLp ψ ((2 * (p + 1) : ℕ) : ENNReal) (volume.restrict L) := hψp.restrict L
  have hae : ψ =ᵐ[volume.restrict L] φ :=
    ae_restrict_of_forall_mem hL.measurableSet (fun x hx => hψL x hx)
  have hφL := hψL'.ae_eq hae
  haveI : IsFiniteMeasure (volume.restrict L) :=
    isFiniteMeasure_restrict.mpr hL.measure_lt_top.ne
  exact hφL.mono_exponent (by exact_mod_cast (show p ≤ 2 * (p + 1) by omega))

theorem pdls_kernel : ∃ c₀ c₁ : ℝ, 0 ≤ c₀ ∧ 0 ≤ c₁ ∧ ∀ δ : ℝ, 0 < δ → ∃ η : E2 → ℝ,
    ContDiff ℝ ∞ η ∧ HasCompactSupport η ∧ (∀ z, 0 ≤ η z) ∧ (∀ z, δ ≤ ‖z‖ → η z = 0) ∧
    (∫ z, η z) = 1 ∧ (∀ z, |η z| ≤ c₀ / δ ^ 2) ∧ ∀ z, ‖fderiv ℝ η z‖ ≤ c₁ / δ ^ 3 :=
by
  let β : ContDiffBump (0 : E2) := ⟨1 / 2, 1, by norm_num, by norm_num⟩
  set η₁ : E2 → ℝ := β.normed MeasureTheory.volume with hη₁def
  have hη₁s : ContDiff ℝ ∞ η₁ := β.contDiff_normed
  have hη₁d : Differentiable ℝ η₁ := hη₁s.differentiable (by simp)
  have hη₁0 : ∀ x, 0 ≤ η₁ x := fun x => β.nonneg_normed x
  have hη₁int : ∫ x, η₁ x = 1 := β.integral_normed
  have hη₁supp : Function.support η₁ = Metric.ball 0 1 := β.support_normed_eq
  have hη₁c : HasCompactSupport η₁ := β.hasCompactSupport_normed
  have hη₁cont : Continuous η₁ := β.continuous_normed
  obtain ⟨B₀, hB₀⟩ := hη₁cont.bounded_above_of_compact_support hη₁c
  obtain ⟨B₁, hB₁⟩ := (hη₁s.continuous_fderiv (by simp)).bounded_above_of_compact_support
    (hη₁c.fderiv ℝ)
  have hB₀' : ∀ x, η₁ x ≤ max B₀ 0 := by
    intro x
    have h := hB₀ x
    rw [Real.norm_eq_abs, abs_of_nonneg (hη₁0 x)] at h
    exact h.trans (le_max_left _ _)
  have hB₁' : ∀ x, ‖fderiv ℝ η₁ x‖ ≤ max B₁ 0 := fun x => (hB₁ x).trans (le_max_left _ _)
  have hint : ∀ (f : E2 → ℝ) (δ : ℝ), 0 < δ →
      (∫ z, (δ ^ 2)⁻¹ * f (δ⁻¹ • z)) = ∫ z, f z := by
    intro f δ hδ
    rw [MeasureTheory.integral_const_mul,
      MeasureTheory.Measure.integral_comp_inv_smul_of_nonneg MeasureTheory.volume f hδ.le,
      finrank_euclideanSpace_fin, smul_eq_mul]
    field_simp
  refine ⟨max B₀ 0, max B₁ 0, le_max_right _ _, le_max_right _ _, ?_⟩
  intro δ hδ
  have hδi : 0 < δ⁻¹ := inv_pos.2 hδ
  have hδ2 : 0 < δ ^ 2 := pow_pos hδ 2
  have hnorm : ∀ z : E2, ‖δ⁻¹ • z‖ = δ⁻¹ * ‖z‖ := by
    intro z
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos hδi]
  have hvan : ∀ z : E2, δ ≤ ‖z‖ → (δ ^ 2)⁻¹ * η₁ (δ⁻¹ • z) = 0 := by
    intro z hz
    have h1 : 1 ≤ ‖δ⁻¹ • z‖ := by
      rw [hnorm]
      calc (1 : ℝ) = δ⁻¹ * δ := (inv_mul_cancel₀ hδ.ne').symm
        _ ≤ δ⁻¹ * ‖z‖ := mul_le_mul_of_nonneg_left hz hδi.le
    have h2 : δ⁻¹ • z ∉ Function.support η₁ := by
      rw [hη₁supp, mem_ball_zero_iff]
      exact not_lt.2 h1
    rw [Function.notMem_support.mp h2, mul_zero]
  refine ⟨fun z => (δ ^ 2)⁻¹ * η₁ (δ⁻¹ • z), ?_, ?_, ?_, hvan, ?_, ?_, ?_⟩
  · exact contDiff_const.mul (hη₁s.comp (contDiff_const_smul δ⁻¹))
  · refine HasCompactSupport.intro (isCompact_closedBall (0 : E2) δ) ?_
    intro z hz
    rw [mem_closedBall_zero_iff, not_le] at hz
    exact hvan z hz.le
  · intro z
    exact mul_nonneg (inv_nonneg.2 hδ2.le) (hη₁0 _)
  · rw [hint η₁ δ hδ, hη₁int]
  · intro z
    rw [abs_mul, abs_of_pos (inv_pos.2 hδ2), abs_of_nonneg (hη₁0 _), div_eq_inv_mul]
    exact mul_le_mul_of_nonneg_left (hB₀' _) (inv_pos.2 hδ2).le
  · intro z
    have hψ : DifferentiableAt ℝ (fun y : E2 => η₁ (δ⁻¹ • y)) z :=
      (hη₁d (δ⁻¹ • z)).comp z ((differentiableAt_id).const_smul δ⁻¹)
    rw [fderiv_const_mul hψ, fderiv_comp_smul, norm_smul, norm_smul, Real.norm_eq_abs,
      Real.norm_eq_abs, abs_of_pos (inv_pos.2 hδ2), abs_of_pos hδi]
    have h3 : (δ ^ 2)⁻¹ * (δ⁻¹ * max B₁ 0) = max B₁ 0 / δ ^ 3 := by
      field_simp
    rw [← h3]
    exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left (hB₁' _) hδi.le)
      (inv_pos.2 hδ2).le

theorem pdls_comm_holder (α : ℝ) (p : ℕ) (hα0 : 0 < α) (hα1 : α < 1) (hp : 2 ≤ (p : ℝ) * (1 - α))
    (c₀ c₁ Λ' : ℝ) (hc₀ : 0 ≤ c₀) (hc₁ : 0 ≤ c₁) (hΛ' : 0 ≤ Λ') :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ (N δ ρ : ℝ) (x₀ : E2) (A : E2 → Matrix (Fin 2) (Fin 2) ℝ) (η : E2 → ℝ)
      (G : Fin 2 → E2 → ℝ), 0 ≤ N → 0 < δ → δ ≤ ρ → ρ ≤ 1 →
      (∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.closedBall x₀ (4 * ρ))) →
      (∀ x ∈ Metric.ball x₀ (3 * ρ), ∀ a b c : Fin 2, |pd2 c (fun y => A y a b) x| ≤ Λ') →
      (∀ x ∈ Metric.ball x₀ (3 * ρ), ∀ y ∈ Metric.ball x₀ (3 * ρ), ∀ a b : Fin 2,
        |A y a b - A x a b| ≤ Λ' * ‖y - x‖) →
      ContDiff ℝ ∞ η → HasCompactSupport η → (∀ z, δ ≤ ‖z‖ → η z = 0) →
      (∀ z, |η z| ≤ c₀ / δ ^ 2) → (∀ z, ‖fderiv ℝ η z‖ ≤ c₁ / δ ^ 3) →
      (∀ b, MemLp (G b) p (volume.restrict (Metric.closedBall x₀ (4 * ρ)))) →
      (∀ b, ∫ y in Metric.closedBall x₀ (4 * ρ), |G b y| ^ p ≤ N) →
      ∀ a : Fin 2, ∀ x ∈ Metric.ball x₀ (2 * ρ), ∀ x' ∈ Metric.ball x₀ (2 * ρ),
        |(∫ y, η (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator
            (fun y => ∑ b : Fin 2, A y a b * G b y) y) -
          ∑ b : Fin 2, A x a b * ∫ y, η (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y|
          ≤ C * (N + 1) ∧
        |((∫ y, η (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator
            (fun y => ∑ b : Fin 2, A y a b * G b y) y) -
          ∑ b : Fin 2, A x a b * ∫ y, η (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y) -
         ((∫ y, η (x' - y) * (Metric.closedBall x₀ (4 * ρ)).indicator
            (fun y => ∑ b : Fin 2, A y a b * G b y) y) -
          ∑ b : Fin 2, A x' a b * ∫ y, η (x' - y) * (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y)|
          ≤ C * (N + 1) * dist x x' ^ α :=
by
  
  have hp1 : 1 ≤ p := by
    rcases Nat.eq_zero_or_pos p with h | h
    · subst h; norm_num at hp
    · exact h
  have hp0 : p ≠ 0 := by omega
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp1
  have h2p : 2 / (p : ℝ) ≤ 1 - α := by
    rw [div_le_iff₀ hpR, mul_comm]; exact hp
  have hκ2 : (2 : ℝ) - 2 / p ≤ 2 := by
    have : 0 ≤ (2 : ℝ) / p := by positivity
    linarith
  have E1 : ∀ δ : ℝ, 0 < δ → δ ≤ 1 → δ ^ ((2 : ℝ) - 2 / p) / δ ≤ δ ^ α := by
    intro δ hδ hδ1
    rw [← Real.rpow_sub_one hδ.ne']
    exact Real.rpow_le_rpow_of_exponent_ge hδ hδ1 (by linarith)
  have E4 : ∀ δ d : ℝ, 0 < δ → δ ≤ 1 → 0 ≤ d → d ≤ δ →
      d * (δ ^ ((2 : ℝ) - 2 / p) / δ ^ 2) ≤ d ^ α := by
    intro δ d hδ hδ1 hd hdδ
    have e : δ ^ ((2 : ℝ) - 2 / p) / δ ^ 2 = δ ^ (-(2 / (p : ℝ))) := by
      rw [← Real.rpow_two, ← Real.rpow_sub hδ]
      congr 1; ring
    rw [e]
    rcases hd.lt_or_eq with hd0 | hd0
    · have e2 : d = d ^ α * d ^ (1 - α) := by
        rw [← Real.rpow_add hd0]; simp
      have h3 : d ^ (1 - α) ≤ δ ^ (1 - α) := Real.rpow_le_rpow hd hdδ (by linarith)
      have h4 : δ ^ (1 - α) * δ ^ (-(2 / (p : ℝ))) ≤ 1 := by
        rw [← Real.rpow_add hδ]
        exact Real.rpow_le_one hδ.le hδ1 (by linarith)
      have h5 : 0 ≤ d ^ α := Real.rpow_nonneg hd _
      have h6 : 0 ≤ δ ^ (-(2 / (p : ℝ))) := Real.rpow_nonneg hδ.le _
      calc d * δ ^ (-(2 / (p : ℝ))) = d ^ α * (d ^ (1 - α) * δ ^ (-(2 / (p : ℝ)))) := by
            rw [← mul_assoc, ← e2]
        _ ≤ d ^ α * (δ ^ (1 - α) * δ ^ (-(2 / (p : ℝ)))) :=
            mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right h3 h6) h5
        _ ≤ d ^ α * 1 := mul_le_mul_of_nonneg_left h4 h5
        _ = d ^ α := mul_one _
    · subst hd0
      rw [Real.zero_rpow hα0.ne']; simp
  
  have L1 : ∀ (N r : ℝ), 0 < r → ∀ (g : E2 → ℝ), Integrable g →
      Integrable (fun y => |g y| ^ p) → ∫ y, |g y| ^ p ≤ N → ∀ z : E2,
      ∫ y in Metric.ball z r, |g y| ≤ (Real.pi + N) * r ^ ((2 : ℝ) - 2 / p) := by
    intro N r hr g hg hgp hN z
    set lam : ℝ := r ^ (-(2 / (p:ℝ))) with hlam
    have hlam0 : 0 < lam := Real.rpow_pos_of_pos hr _
    have hpt : ∀ y, |g y| ≤ lam + |g y| ^ p / lam ^ (p - 1) := by
      intro y
      rcases le_or_gt (|g y|) lam with h | h
      · have : 0 ≤ |g y| ^ p / lam ^ (p - 1) := by positivity
        linarith
      · have h1 : 1 ≤ (|g y| / lam) ^ (p - 1) := one_le_pow₀ ((one_le_div hlam0).2 h.le)
        have e : |g y| ^ p / lam ^ (p - 1) = |g y| * (|g y| / lam) ^ (p - 1) := by
          obtain ⟨k, hk⟩ : ∃ k, p = k + 1 := ⟨p - 1, by omega⟩
          rw [hk, div_pow, Nat.add_sub_cancel, pow_succ]
          field_simp
        have : |g y| ≤ |g y| ^ p / lam ^ (p - 1) := by
          rw [e]; nlinarith [abs_nonneg (g y)]
        linarith
    have hBm : volume (Metric.ball z r) < ⊤ := measure_ball_lt_top
    have hc1 : IntegrableOn (fun _ : E2 => lam) (Metric.ball z r) := integrableOn_const hBm.ne
    have hc2 : IntegrableOn (fun y => |g y| ^ p / lam ^ (p - 1)) (Metric.ball z r) :=
      (hgp.div_const _).integrableOn
    have hint1 : IntegrableOn (fun y => |g y|) (Metric.ball z r) := hg.abs.integrableOn
    have hint2 : IntegrableOn (fun y => lam + |g y| ^ p / lam ^ (p - 1)) (Metric.ball z r) :=
      hc1.add hc2
    have h1 := setIntegral_mono_on hint1 hint2 measurableSet_ball (fun y _ => hpt y)
    rw [integral_add hc1 hc2, setIntegral_const, integral_div] at h1
    have hvol : volume.real (Metric.ball z r) = r ^ 2 * Real.pi := by
      rw [measureReal_def, EuclideanSpace.volume_ball_fin_two, ENNReal.toReal_mul,
        ENNReal.toReal_pow, ENNReal.toReal_ofReal hr.le, ENNReal.toReal_ofReal Real.pi_pos.le]
    rw [hvol, smul_eq_mul] at h1
    have hJ : ∫ y in Metric.ball z r, |g y| ^ p ≤ N :=
      (setIntegral_le_integral hgp (Filter.Eventually.of_forall (fun y => by positivity))).trans hN
    have hlp : 0 < lam ^ (p - 1) := pow_pos hlam0 _
    have e1 : r ^ 2 * Real.pi * lam = Real.pi * r ^ ((2 : ℝ) - 2 / p) := by
      rw [hlam, ← Real.rpow_two, mul_comm (r ^ (2:ℝ)) Real.pi, mul_assoc, ← Real.rpow_add hr]
      congr 2
    have e2 : lam ^ (p - 1) = (r ^ ((2 : ℝ) - 2 / p))⁻¹ := by
      rw [hlam, ← Real.rpow_natCast, ← Real.rpow_mul hr.le, ← Real.rpow_neg hr.le]
      congr 1
      rw [Nat.cast_sub hp1]
      field_simp
      ring
    have h2 : (∫ y in Metric.ball z r, |g y| ^ p) / lam ^ (p - 1) ≤ N / lam ^ (p - 1) :=
      div_le_div_of_nonneg_right hJ hlp.le
    rw [e2] at h2
    simp only [div_inv_eq_mul] at h2
    rw [e1, e2] at h1
    rw [div_inv_eq_mul] at h1
    linarith
  
  have REW : ∀ (K : Set E2) (hK : MeasurableSet K) (A : E2 → Matrix (Fin 2) (Fin 2) ℝ)
      (η : E2 → ℝ) (G : Fin 2 → E2 → ℝ) (c : ℝ) (hη : Continuous η) (hηb : ∀ z, |η z| ≤ c)
      (hG : ∀ b, IntegrableOn (G b) K) (a : Fin 2)
      (hAG : ∀ b, IntegrableOn (fun y => A y a b * G b y) K) (x : E2),
      (∀ b : Fin 2, Integrable (fun y => η (x - y) * (A y a b - A x a b) * K.indicator (G b) y)) ∧
      (∫ y, η (x - y) * K.indicator (fun y => ∑ b : Fin 2, A y a b * G b y) y) -
          ∑ b : Fin 2, A x a b * ∫ y, η (x - y) * K.indicator (G b) y =
        ∑ b : Fin 2, ∫ y, η (x - y) * (A y a b - A x a b) * K.indicator (G b) y := by
    intro K hK A η G c hη hηb hG a hAG x
    have hmeas : AEStronglyMeasurable (fun y => η (x - y)) volume :=
      (hη.comp (continuous_const.sub continuous_id)).aestronglyMeasurable
    have hbd : ∀ᵐ y ∂(volume : Measure E2), ‖η (x - y)‖ ≤ c :=
      Filter.Eventually.of_forall (fun y => by rw [Real.norm_eq_abs]; exact hηb _)
    have I1 : ∀ b, Integrable (fun y => η (x - y) * K.indicator (fun y => A y a b * G b y) y) :=
      fun b => ((hAG b).integrable_indicator hK).bdd_mul hmeas hbd
    have I2 : ∀ b, Integrable (fun y => η (x - y) * K.indicator (G b) y) :=
      fun b => ((hG b).integrable_indicator hK).bdd_mul hmeas hbd
    have hfun : ∀ b, (fun y => η (x - y) * (A y a b - A x a b) * K.indicator (G b) y) =
        fun y => η (x - y) * K.indicator (fun y => A y a b * G b y) y -
          A x a b * (η (x - y) * K.indicator (G b) y) := by
      intro b
      funext y
      by_cases hy : y ∈ K
      · simp only [Set.indicator_of_mem hy]; ring
      · simp only [Set.indicator_of_notMem hy]; ring
    refine ⟨fun b => by rw [hfun b]; exact (I1 b).sub ((I2 b).const_mul _), ?_⟩
    have hsum : (fun y => η (x - y) * K.indicator (fun y => ∑ b : Fin 2, A y a b * G b y) y) =
        fun y => ∑ b : Fin 2, η (x - y) * K.indicator (fun y => A y a b * G b y) y := by
      funext y
      by_cases hy : y ∈ K
      · simp only [Set.indicator_of_mem hy, Finset.mul_sum]
      · simp only [Set.indicator_of_notMem hy, mul_zero, Finset.sum_const_zero]
    rw [hsum, integral_finset_sum _ (fun b _ => I1 b)]
    simp only [hfun]
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun b _ => ?_)
    rw [integral_sub (I1 b) ((I2 b).const_mul _), integral_const_mul]
  
  have SUP : ∀ (c₀ Λ' M κ δ ρ : ℝ) (hc₀ : 0 ≤ c₀) (hΛ' : 0 ≤ Λ')
      (hδ : 0 < δ) (hδρ : δ ≤ ρ) (x₀ : E2) (A : E2 → Matrix (Fin 2) (Fin 2) ℝ) (η : E2 → ℝ)
      (g : Fin 2 → E2 → ℝ) (a : Fin 2)
      (hLip : ∀ x ∈ Metric.ball x₀ (3 * ρ), ∀ y ∈ Metric.ball x₀ (3 * ρ), ∀ a b : Fin 2,
        |A y a b - A x a b| ≤ Λ' * ‖y - x‖)
      (hηs : ∀ z, δ ≤ ‖z‖ → η z = 0) (hηb : ∀ z, |η z| ≤ c₀ / δ ^ 2)
      (hg : ∀ b, Integrable (g b))
      (hL1 : ∀ (b : Fin 2) (z : E2) (r : ℝ), 0 < r → ∫ y in Metric.ball z r, |g b y| ≤ M * r ^ κ),
      ∀ x ∈ Metric.ball x₀ (2 * ρ),
        |∑ b : Fin 2, ∫ y, η (x - y) * (A y a b - A x a b) * g b y| ≤
          2 * (c₀ * Λ' / δ * (M * δ ^ κ)) := by
    intro c₀ Λ' M κ δ ρ hc₀ hΛ' hδ hδρ x₀ A η g a hLip hηs hηb hg hL1
    intro x hx
    have hk : 0 ≤ c₀ * Λ' / δ := by positivity
    have hone : ∀ b, |∫ y, η (x - y) * (A y a b - A x a b) * g b y| ≤
        c₀ * Λ' / δ * (M * δ ^ κ) := by
      intro b
      have hh : Integrable
          (fun y => c₀ * Λ' / δ * (Metric.ball x δ).indicator (fun y => |g b y|) y) :=
        ((hg b).abs.indicator measurableSet_ball).const_mul _
      have hpt : ∀ y, |η (x - y) * (A y a b - A x a b) * g b y| ≤
          c₀ * Λ' / δ * (Metric.ball x δ).indicator (fun y => |g b y|) y := by
        intro y
        by_cases hy : ‖x - y‖ < δ
        · have hyB : y ∈ Metric.ball x δ := by
            rw [Metric.mem_ball, dist_eq_norm, norm_sub_rev]; exact hy
          rw [Set.indicator_of_mem hyB]
          have hx3 : x ∈ Metric.ball x₀ (3 * ρ) := by
            rw [Metric.mem_ball] at hx ⊢; linarith
          have hy3 : y ∈ Metric.ball x₀ (3 * ρ) := by
            rw [Metric.mem_ball] at hx hyB ⊢
            linarith [dist_triangle y x x₀]
          have hyx : ‖y - x‖ < δ := by rw [norm_sub_rev]; exact hy
          have hA' : |A y a b - A x a b| ≤ Λ' * δ :=
            (hLip x hx3 y hy3 a b).trans (mul_le_mul_of_nonneg_left hyx.le hΛ')
          rw [abs_mul, abs_mul]
          calc |η (x - y)| * |A y a b - A x a b| * |g b y|
              ≤ c₀ / δ ^ 2 * (Λ' * δ) * |g b y| :=
                mul_le_mul_of_nonneg_right
                  (mul_le_mul (hηb _) hA' (abs_nonneg _) (by positivity)) (abs_nonneg _)
            _ = c₀ * Λ' / δ * |g b y| := by field_simp
        · push_neg at hy
          rw [hηs _ hy]
          simp only [zero_mul, abs_zero]
          exact mul_nonneg hk (Set.indicator_nonneg (fun _ _ => abs_nonneg _) _)
      calc |∫ y, η (x - y) * (A y a b - A x a b) * g b y|
          ≤ ∫ y, |η (x - y) * (A y a b - A x a b) * g b y| := abs_integral_le_integral_abs
        _ ≤ ∫ y, c₀ * Λ' / δ * (Metric.ball x δ).indicator (fun y => |g b y|) y :=
            integral_mono_of_nonneg (Filter.Eventually.of_forall (fun y => abs_nonneg _)) hh
              (Filter.Eventually.of_forall hpt)
        _ = c₀ * Λ' / δ * ∫ y in Metric.ball x δ, |g b y| := by
            rw [integral_const_mul, integral_indicator measurableSet_ball]
        _ ≤ c₀ * Λ' / δ * (M * δ ^ κ) := mul_le_mul_of_nonneg_left (hL1 b x δ hδ) hk
    calc |∑ b : Fin 2, ∫ y, η (x - y) * (A y a b - A x a b) * g b y|
        ≤ ∑ b : Fin 2, |∫ y, η (x - y) * (A y a b - A x a b) * g b y| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ b : Fin 2, c₀ * Λ' / δ * (M * δ ^ κ) := Finset.sum_le_sum (fun b _ => hone b)
      _ = 2 * (c₀ * Λ' / δ * (M * δ ^ κ)) := by rw [Fin.sum_univ_two]; ring
  
  have DIFF : ∀ (c₀ c₁ Λ' M κ δ ρ : ℝ) (hc₀ : 0 ≤ c₀) (hc₁ : 0 ≤ c₁) (hΛ' : 0 ≤ Λ')
      (hM : 0 ≤ M) (hκ : κ ≤ 2) (hδ : 0 < δ) (hδρ : δ ≤ ρ) (x₀ : E2)
      (A : E2 → Matrix (Fin 2) (Fin 2) ℝ) (η : E2 → ℝ) (g : Fin 2 → E2 → ℝ) (a : Fin 2)
      (hLip : ∀ x ∈ Metric.ball x₀ (3 * ρ), ∀ y ∈ Metric.ball x₀ (3 * ρ), ∀ a b : Fin 2,
        |A y a b - A x a b| ≤ Λ' * ‖y - x‖)
      (hηd : Differentiable ℝ η) (hηs : ∀ z, δ ≤ ‖z‖ → η z = 0)
      (hηb : ∀ z, |η z| ≤ c₀ / δ ^ 2)
      (hηf : ∀ z, ‖fderiv ℝ η z‖ ≤ c₁ / δ ^ 3)
      (hg : ∀ b, Integrable (g b))
      (hL1 : ∀ (b : Fin 2) (z : E2) (r : ℝ), 0 < r → ∫ y in Metric.ball z r, |g b y| ≤ M * r ^ κ),
      ∀ x ∈ Metric.ball x₀ (2 * ρ), ∀ x' ∈ Metric.ball x₀ (2 * ρ), dist x x' ≤ δ →
        (∀ b : Fin 2, Integrable (fun y => η (x - y) * (A y a b - A x a b) * g b y)) →
        (∀ b : Fin 2, Integrable (fun y => η (x' - y) * (A y a b - A x' a b) * g b y)) →
        |(∑ b : Fin 2, ∫ y, η (x - y) * (A y a b - A x a b) * g b y) -
            ∑ b : Fin 2, ∫ y, η (x' - y) * (A y a b - A x' a b) * g b y|
          ≤ 8 * ((2 * c₁ + c₀) * Λ' * M) * (dist x x' * (δ ^ κ / δ ^ 2)) := by
    intro c₀ c₁ Λ' M κ δ ρ hc₀ hc₁ hΛ' hM hκ hδ hδρ x₀ A η g a hLip hηd hηs hηb hηf hg hL1
    intro x hx x' hx' hd hI hI'
    set d := dist x x' with hddef
    have hd0 : 0 ≤ d := dist_nonneg
    have hρ : 0 < ρ := hδ.trans_le hδρ
    have hx3 : x ∈ Metric.ball x₀ (3 * ρ) := by
      rw [Metric.mem_ball] at hx ⊢; linarith
    have hx'3 : x' ∈ Metric.ball x₀ (3 * ρ) := by
      rw [Metric.mem_ball] at hx' ⊢; linarith
    set k : ℝ := (2 * c₁ + c₀) * Λ' * d / δ ^ 2 with hkdef
    have hk : 0 ≤ k := by positivity
    have h2κ : (2 * δ) ^ κ ≤ 4 * δ ^ κ := by
      rw [Real.mul_rpow (by norm_num) hδ.le]
      have h1 : (2 : ℝ) ^ κ ≤ (2 : ℝ) ^ (2 : ℝ) :=
        Real.rpow_le_rpow_of_exponent_le (by norm_num) hκ
      have h2 : (2 : ℝ) ^ (2 : ℝ) = 4 := by rw [Real.rpow_two]; norm_num
      rw [h2] at h1
      exact mul_le_mul_of_nonneg_right h1 (Real.rpow_nonneg hδ.le _)
    have hone : ∀ b, |∫ y, (η (x - y) * (A y a b - A x a b) * g b y -
        η (x' - y) * (A y a b - A x' a b) * g b y)| ≤ k * (M * (4 * δ ^ κ)) := by
      intro b
      have hh : Integrable
          (fun y => k * (Metric.ball x (2 * δ)).indicator (fun y => |g b y|) y) :=
        ((hg b).abs.indicator measurableSet_ball).const_mul _
      have hpt : ∀ y, |η (x - y) * (A y a b - A x a b) * g b y -
          η (x' - y) * (A y a b - A x' a b) * g b y| ≤
          k * (Metric.ball x (2 * δ)).indicator (fun y => |g b y|) y := by
        intro y
        by_cases hy : ‖x - y‖ < δ ∨ ‖x' - y‖ < δ
        · have hy3 : y ∈ Metric.ball x₀ (3 * ρ) := by
            rw [Metric.mem_ball] at hx hx' ⊢
            rcases hy with hy | hy
            · rw [← dist_eq_norm, dist_comm] at hy
              linarith [dist_triangle y x x₀]
            · rw [← dist_eq_norm, dist_comm] at hy
              linarith [dist_triangle y x' x₀]
          have hyx : ‖y - x‖ < 2 * δ := by
            rcases hy with hy | hy
            · rw [norm_sub_rev]; linarith
            · have h1 := norm_sub_le_norm_sub_add_norm_sub y x' x
              have h2 : ‖x' - x‖ = d := by rw [hddef, dist_comm, dist_eq_norm]
              rw [norm_sub_rev] at hy
              linarith
          have hyB : y ∈ Metric.ball x (2 * δ) := by
            rw [Metric.mem_ball, dist_eq_norm]; exact hyx
          rw [Set.indicator_of_mem hyB]
          have hA1 : |A y a b - A x a b| ≤ Λ' * (2 * δ) :=
            (hLip x hx3 y hy3 a b).trans (mul_le_mul_of_nonneg_left hyx.le hΛ')
          have hA2 : |A x' a b - A x a b| ≤ Λ' * d := by
            have := hLip x hx3 x' hx'3 a b
            rwa [← dist_eq_norm, dist_comm] at this
          have hmvt : ‖η (x - y) - η (x' - y)‖ ≤ c₁ / δ ^ 3 * ‖(x - y) - (x' - y)‖ :=
            Convex.norm_image_sub_le_of_norm_fderiv_le (fun z _ => hηd z) (fun z _ => hηf z)
              convex_univ (Set.mem_univ _) (Set.mem_univ _)
          rw [sub_sub_sub_cancel_right, Real.norm_eq_abs, ← dist_eq_norm x x', ← hddef] at hmvt
          have hη2 := hηb (x' - y)
          have e : η (x - y) * (A y a b - A x a b) * g b y -
              η (x' - y) * (A y a b - A x' a b) * g b y =
              (η (x - y) - η (x' - y)) * (A y a b - A x a b) * g b y +
                η (x' - y) * (A x' a b - A x a b) * g b y := by ring
          rw [e]
          refine (abs_add_le _ _).trans ?_
          rw [abs_mul, abs_mul, abs_mul, abs_mul]
          have t1 : |η (x - y) - η (x' - y)| * |A y a b - A x a b| * |g b y| ≤
              c₁ / δ ^ 3 * d * (Λ' * (2 * δ)) * |g b y| :=
            mul_le_mul_of_nonneg_right (mul_le_mul hmvt hA1 (abs_nonneg _) (by positivity))
              (abs_nonneg _)
          have t2 : |η (x' - y)| * |A x' a b - A x a b| * |g b y| ≤
              c₀ / δ ^ 2 * (Λ' * d) * |g b y| :=
            mul_le_mul_of_nonneg_right (mul_le_mul hη2 hA2 (abs_nonneg _) (by positivity))
              (abs_nonneg _)
          have e2 : c₁ / δ ^ 3 * d * (Λ' * (2 * δ)) * |g b y| +
              c₀ / δ ^ 2 * (Λ' * d) * |g b y| = k * |g b y| := by
            rw [hkdef]; field_simp
          linarith
        · push_neg at hy
          rw [hηs _ hy.1, hηs _ hy.2]
          simp only [zero_mul, sub_zero, abs_zero]
          exact mul_nonneg hk (Set.indicator_nonneg (fun _ _ => abs_nonneg _) _)
      calc |∫ y, (η (x - y) * (A y a b - A x a b) * g b y -
            η (x' - y) * (A y a b - A x' a b) * g b y)|
          ≤ ∫ y, |η (x - y) * (A y a b - A x a b) * g b y -
            η (x' - y) * (A y a b - A x' a b) * g b y| := abs_integral_le_integral_abs
        _ ≤ ∫ y, k * (Metric.ball x (2 * δ)).indicator (fun y => |g b y|) y :=
            integral_mono_of_nonneg (Filter.Eventually.of_forall (fun y => abs_nonneg _)) hh
              (Filter.Eventually.of_forall hpt)
        _ = k * ∫ y in Metric.ball x (2 * δ), |g b y| := by
            rw [integral_const_mul, integral_indicator measurableSet_ball]
        _ ≤ k * (M * (2 * δ) ^ κ) :=
            mul_le_mul_of_nonneg_left (hL1 b x (2 * δ) (by linarith)) hk
        _ ≤ k * (M * (4 * δ ^ κ)) :=
            mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left h2κ hM) hk
    have hsplit : (∑ b : Fin 2, ∫ y, η (x - y) * (A y a b - A x a b) * g b y) -
        ∑ b : Fin 2, ∫ y, η (x' - y) * (A y a b - A x' a b) * g b y =
        ∑ b : Fin 2, ∫ y, (η (x - y) * (A y a b - A x a b) * g b y -
          η (x' - y) * (A y a b - A x' a b) * g b y) := by
      rw [← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl (fun b _ => ?_)
      rw [integral_sub (hI b) (hI' b)]
    rw [hsplit]
    calc |∑ b : Fin 2, ∫ y, (η (x - y) * (A y a b - A x a b) * g b y -
          η (x' - y) * (A y a b - A x' a b) * g b y)|
        ≤ ∑ b : Fin 2, |∫ y, (η (x - y) * (A y a b - A x a b) * g b y -
          η (x' - y) * (A y a b - A x' a b) * g b y)| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ b : Fin 2, k * (M * (4 * δ ^ κ)) := Finset.sum_le_sum (fun b _ => hone b)
      _ = 8 * ((2 * c₁ + c₀) * Λ' * M) * (d * (δ ^ κ / δ ^ 2)) := by
          rw [Fin.sum_univ_two, hkdef]; ring
  
  refine ⟨32 * (2 * c₁ + c₀) * Λ', by positivity, ?_⟩
  intro N δ ρ x₀ A η G hN hδ hδρ hρ1 hA _hApd hLip hη _hηc hηs hηb hηf hGp hGN a x hx x' hx'
  have hδ1 : δ ≤ 1 := hδρ.trans hρ1
  have hKc : IsCompact (Metric.closedBall x₀ (4 * ρ)) := isCompact_closedBall _ _
  have hKm : MeasurableSet (Metric.closedBall x₀ (4 * ρ)) := measurableSet_closedBall
  haveI : IsFiniteMeasure (volume.restrict (Metric.closedBall x₀ (4 * ρ))) :=
    isFiniteMeasure_restrict.mpr hKc.measure_lt_top.ne
  have hGi : ∀ b, IntegrableOn (G b) (Metric.closedBall x₀ (4 * ρ)) := fun b =>
    (hGp b).integrable (by exact_mod_cast hp1)
  have hAG : ∀ b, IntegrableOn (fun y => A y a b * G b y) (Metric.closedBall x₀ (4 * ρ)) :=
    fun b => IntegrableOn.continuousOn_mul (hA a b).continuousOn (hGi b) hKc
  have hg : ∀ b, Integrable ((Metric.closedBall x₀ (4 * ρ)).indicator (G b)) := fun b =>
    (hGi b).integrable_indicator hKm
  have hpow : ∀ b, (fun y => |(Metric.closedBall x₀ (4 * ρ)).indicator (G b) y| ^ p) =
      (Metric.closedBall x₀ (4 * ρ)).indicator (fun y => ‖G b y‖ ^ p) := by
    intro b; funext y
    by_cases hy : y ∈ Metric.closedBall x₀ (4 * ρ)
    · simp only [Set.indicator_of_mem hy, Real.norm_eq_abs]
    · simp only [Set.indicator_of_notMem hy, abs_zero, zero_pow hp0]
  have hgp : ∀ b, Integrable
      (fun y => |(Metric.closedBall x₀ (4 * ρ)).indicator (G b) y| ^ p) := fun b => by
    rw [hpow b]
    exact IntegrableOn.integrable_indicator ((hGp b).integrable_norm_pow hp0) hKm
  have hgN : ∀ b, ∫ y, |(Metric.closedBall x₀ (4 * ρ)).indicator (G b) y| ^ p ≤ N := fun b => by
    rw [hpow b, integral_indicator hKm]
    simpa only [Real.norm_eq_abs] using hGN b
  have hL1' : ∀ (b : Fin 2) (z : E2) (r : ℝ), 0 < r →
      ∫ y in Metric.ball z r, |(fun b => (Metric.closedBall x₀ (4 * ρ)).indicator (G b)) b y| ≤
        (Real.pi + N) * r ^ ((2 : ℝ) - 2 / p) :=
    fun b z r hr => L1 N r hr _ (hg b) (hgp b) (hgN b) z
  have hM : 0 ≤ Real.pi + N := by linarith [Real.pi_pos]
  have hM4 : Real.pi + N ≤ 4 * (N + 1) := by linarith [Real.pi_le_four]
  obtain ⟨hIx, hRx⟩ := REW _ hKm A η G (c₀ / δ ^ 2) hη.continuous hηb hGi a hAG x
  obtain ⟨hIx', hRx'⟩ := REW _ hKm A η G (c₀ / δ ^ 2) hη.continuous hηb hGi a hAG x'
  rw [hRx, hRx']
  have hS : ∀ z ∈ Metric.ball x₀ (2 * ρ),
      |∑ b : Fin 2, ∫ y, η (z - y) * (A y a b - A z a b) *
        (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y| ≤
        2 * (c₀ * Λ' / δ * ((Real.pi + N) * δ ^ ((2 : ℝ) - 2 / p))) :=
    SUP c₀ Λ' (Real.pi + N) _ δ ρ hc₀ hΛ' hδ hδρ x₀ A η
      (fun b => (Metric.closedBall x₀ (4 * ρ)).indicator (G b)) a hLip hηs hηb hg hL1'
  set q : ℝ := δ ^ ((2 : ℝ) - 2 / p) / δ with hqdef
  have hq0 : 0 ≤ q := by positivity
  have hqα : q ≤ δ ^ α := E1 δ hδ hδ1
  have hα1' : δ ^ α ≤ 1 := Real.rpow_le_one hδ.le hδ1 hα0.le
  have hP : 0 ≤ c₀ * Λ' := mul_nonneg hc₀ hΛ'
  have hQ : 0 ≤ c₁ * Λ' := mul_nonneg hc₁ hΛ'
  have hN1 : 0 ≤ N + 1 := by linarith
  have hSeq : 2 * (c₀ * Λ' / δ * ((Real.pi + N) * δ ^ ((2 : ℝ) - 2 / p))) =
      2 * (c₀ * Λ') * (Real.pi + N) * q := by
    rw [hqdef]; ring
  have hPM : 0 ≤ c₀ * Λ' * (Real.pi + N) := mul_nonneg hP hM
  have hS' : ∀ z ∈ Metric.ball x₀ (2 * ρ),
      |∑ b : Fin 2, ∫ y, η (z - y) * (A y a b - A z a b) *
        (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y| ≤
        2 * (c₀ * Λ') * (Real.pi + N) * δ ^ α := by
    intro z hz
    have h1 := hS z hz
    rw [hSeq] at h1
    refine h1.trans ?_
    have := mul_le_mul_of_nonneg_left hqα hPM
    nlinarith
  refine ⟨?_, ?_⟩
  · refine (hS' x hx).trans ?_
    have h1 : c₀ * Λ' * (Real.pi + N) * δ ^ α ≤ c₀ * Λ' * (Real.pi + N) :=
      mul_le_of_le_one_right hPM hα1'
    have h2 : c₀ * Λ' * (Real.pi + N) ≤ c₀ * Λ' * (4 * (N + 1)) :=
      mul_le_mul_of_nonneg_left hM4 hP
    nlinarith [mul_nonneg hQ hN1, mul_nonneg hP hN1]
  · have hdα0 : 0 ≤ dist x x' ^ α := Real.rpow_nonneg dist_nonneg _
    rcases le_or_gt (dist x x') δ with hd | hd
    · have h1 := DIFF c₀ c₁ Λ' (Real.pi + N) _ δ ρ hc₀ hc₁ hΛ' hM hκ2 hδ hδρ x₀ A η
        (fun b => (Metric.closedBall x₀ (4 * ρ)).indicator (G b)) a hLip
        (hη.differentiable (by simp)) hηs hηb hηf hg hL1' x hx x' hx' hd hIx hIx'
      refine h1.trans ?_
      have h2 := E4 δ (dist x x') hδ hδ1 dist_nonneg hd
      have hW : 0 ≤ (2 * c₁ + c₀) * Λ' := by positivity
      have hWM : 0 ≤ 8 * ((2 * c₁ + c₀) * Λ' * (Real.pi + N)) := by positivity
      calc 8 * ((2 * c₁ + c₀) * Λ' * (Real.pi + N)) *
            (dist x x' * (δ ^ ((2 : ℝ) - 2 / p) / δ ^ 2))
          ≤ 8 * ((2 * c₁ + c₀) * Λ' * (Real.pi + N)) * dist x x' ^ α :=
            mul_le_mul_of_nonneg_left h2 hWM
        _ ≤ 8 * ((2 * c₁ + c₀) * Λ' * (4 * (N + 1))) * dist x x' ^ α := by
            apply mul_le_mul_of_nonneg_right _ hdα0
            apply mul_le_mul_of_nonneg_left _ (by norm_num)
            exact mul_le_mul_of_nonneg_left hM4 hW
        _ = 32 * (2 * c₁ + c₀) * Λ' * (N + 1) * dist x x' ^ α := by ring
    · have hδd : δ ^ α ≤ dist x x' ^ α := Real.rpow_le_rpow hδ.le hd.le hα0.le
      refine (abs_sub _ _).trans ?_
      have h1 := hS' x hx
      have h2 := hS' x' hx'
      have h3 : c₀ * Λ' * (Real.pi + N) * δ ^ α ≤ c₀ * Λ' * (Real.pi + N) * dist x x' ^ α :=
        mul_le_mul_of_nonneg_left hδd hPM
      have h4 : c₀ * Λ' * (Real.pi + N) * dist x x' ^ α ≤
          c₀ * Λ' * (4 * (N + 1)) * dist x x' ^ α :=
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hM4 hP) hdα0
      have h5 : 0 ≤ c₁ * Λ' * (N + 1) * dist x x' ^ α := by positivity
      have h6 : 0 ≤ c₀ * Λ' * (N + 1) * dist x x' ^ α := by positivity
      nlinarith

theorem pdls_grad_Lp_osc (p : ℕ) (hp : 3 ≤ p) (ρ N : ℝ) (hρ : 0 < ρ) (hN : 0 ≤ N) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ (x₀ : E2) (u : E2 → ℝ), ContDiff ℝ 1 u →
      (∀ k : Fin 2, ∫ x in Metric.ball x₀ (3 * ρ), |pd2 k u x| ^ p ≤ N) →
      ∀ y ∈ Metric.ball x₀ (2 * ρ), |u y - u x₀| ≤ M :=
by
  have hpR : (3 : ℝ) ≤ (p : ℝ) := by exact_mod_cast hp
  have hp0 : (p : ℝ) ≠ 0 := ne_of_gt (by linarith)
  set e : E2 ≃L[ℝ] (Fin 2 → ℝ) := EuclideanSpace.equiv (Fin 2) ℝ with he
  
  have hbridge : ∀ (v : E2 → ℝ) (x : Fin 2 → ℝ) (k : Fin 2),
      smthGrad (fun y => v (e.symm y)) x k = pd2 k v (e.symm x) := by
    intro v x k
    have h := ContinuousLinearEquiv.comp_right_fderiv (𝕜 := ℝ) e.symm (f := v) (x := x)
    show fderiv ℝ (v ∘ e.symm) x (Pi.single k 1) = fderiv ℝ v (e.symm x) (e2 k)
    rw [h]
    rfl
  
  have hpt : ∀ s t : ℝ, 0 ≤ s → 0 < t → s ^ 2 ≤ t ^ 2 + s ^ p / t ^ (p - 2) := by
    intro s t hs ht
    have htp : 0 < t ^ (p - 2) := pow_pos ht _
    have key : t ^ (p - 2) * s ^ 2 ≤ t ^ (p - 2) * t ^ 2 + s ^ p := by
      rcases le_or_gt s t with h | h
      · have h1 : s ^ 2 ≤ t ^ 2 := pow_le_pow_left₀ hs h 2
        have h2 := mul_le_mul_of_nonneg_left h1 htp.le
        have h3 : 0 ≤ s ^ p := pow_nonneg hs p
        linarith
      · have h1 : t ^ (p - 2) ≤ s ^ (p - 2) := pow_le_pow_left₀ ht.le h.le _
        have h2 := mul_le_mul_of_nonneg_right h1 (sq_nonneg s)
        have hsp : s ^ (p - 2) * s ^ 2 = s ^ p := by
          rw [← pow_add, Nat.sub_add_cancel (by omega : 2 ≤ p)]
        have h3 : 0 ≤ t ^ (p - 2) * t ^ 2 := by positivity
        linarith
    have e1 : t ^ 2 + s ^ p / t ^ (p - 2) = (t ^ (p - 2) * t ^ 2 + s ^ p) / t ^ (p - 2) := by
      rw [eq_div_iff htp.ne', add_mul, div_mul_cancel₀ _ htp.ne']
      ring
    rw [e1, le_div_iff₀ htp]
    linarith
  
  have hyoung : ∀ (f : (Fin 2 → ℝ) → ℝ), Continuous f → ∀ (z : Fin 2 → ℝ) (r N' : ℝ), 0 < r →
      ∫ x in Metric.ball z r, |f x| ^ p ≤ N' →
      ∫ x in Metric.ball z r, f x ^ 2 ≤ (4 + N') * r ^ (2 * (1 - 2 / (p : ℝ))) := by
    intro f hf z r N' hr hN'
    obtain ⟨t, htdef⟩ : ∃ t : ℝ, t = r ^ (-2 / (p : ℝ)) := ⟨_, rfl⟩
    have ht : 0 < t := by rw [htdef]; exact Real.rpow_pos_of_pos hr _
    have htp : 0 < t ^ (p - 2) := pow_pos ht _
    have hI1 : IntegrableOn (fun x => f x ^ 2) (Metric.ball z r) :=
      ((hf.pow 2).continuousOn.integrableOn_compact (isCompact_closedBall z r)).mono_set
        Metric.ball_subset_closedBall
    have hI2 : IntegrableOn (fun x => t ^ 2 + |f x| ^ p / t ^ (p - 2)) (Metric.ball z r) :=
      ((continuous_const.add ((hf.abs.pow p).div_const _)).continuousOn.integrableOn_compact
        (isCompact_closedBall z r)).mono_set Metric.ball_subset_closedBall
    have hI3 : IntegrableOn (fun x => |f x| ^ p / t ^ (p - 2)) (Metric.ball z r) :=
      (((hf.abs.pow p).div_const _).continuousOn.integrableOn_compact
        (isCompact_closedBall z r)).mono_set Metric.ball_subset_closedBall
    have hI4 : IntegrableOn (fun _ => t ^ 2) (Metric.ball z r) :=
      ((continuous_const).continuousOn.integrableOn_compact
        (isCompact_closedBall z r)).mono_set Metric.ball_subset_closedBall
    have hmono : ∫ x in Metric.ball z r, f x ^ 2 ≤
        ∫ x in Metric.ball z r, (t ^ 2 + |f x| ^ p / t ^ (p - 2)) :=
      setIntegral_mono hI1 hI2 (fun x => by
        have := hpt |f x| t (abs_nonneg _) ht
        rwa [sq_abs] at this)
    have hvol : (volume (Metric.ball z r)).toReal = 4 * r ^ 2 := by
      rw [Real.volume_pi_ball z hr, Fintype.card_fin, ENNReal.toReal_ofReal (by positivity)]
      ring
    have hsplit : ∫ x in Metric.ball z r, (t ^ 2 + |f x| ^ p / t ^ (p - 2)) =
        4 * r ^ 2 * t ^ 2 + (∫ x in Metric.ball z r, |f x| ^ p) / t ^ (p - 2) := by
      rw [integral_add hI4 hI3, setIntegral_const, integral_div, smul_eq_mul, measureReal_def,
        hvol]
    have hdiv : (∫ x in Metric.ball z r, |f x| ^ p) / t ^ (p - 2) ≤ N' / t ^ (p - 2) :=
      div_le_div_of_nonneg_right hN' htp.le
    have h1 : t ^ 2 * r ^ 2 = r ^ (2 * (1 - 2 / (p : ℝ))) := by
      rw [htdef, ← Real.rpow_natCast (r ^ (-2 / (p : ℝ))) 2, ← Real.rpow_natCast r 2,
        ← Real.rpow_mul hr.le, ← Real.rpow_add hr]
      congr 1
      push_cast
      ring
    have hpinv : (p : ℝ) * (p : ℝ)⁻¹ = 1 := mul_inv_cancel₀ hp0
    have h2 : t ^ (p - 2) * r ^ (2 * (1 - 2 / (p : ℝ))) = 1 := by
      rw [htdef, ← Real.rpow_natCast (r ^ (-2 / (p : ℝ))) (p - 2), ← Real.rpow_mul hr.le,
        ← Real.rpow_add hr]
      have hc : ((p - 2 : ℕ) : ℝ) = (p : ℝ) - 2 := by
        rw [Nat.cast_sub (by omega : 2 ≤ p), Nat.cast_ofNat]
      have hexp : -2 / (p : ℝ) * ((p - 2 : ℕ) : ℝ) + 2 * (1 - 2 / (p : ℝ)) = 0 := by
        rw [hc]
        linear_combination (-2 : ℝ) * hpinv
      rw [hexp, Real.rpow_zero]
    have e2 : N' / t ^ (p - 2) = N' * r ^ (2 * (1 - 2 / (p : ℝ))) := by
      rw [div_eq_iff htp.ne']
      linear_combination (-N') * h2
    calc ∫ x in Metric.ball z r, f x ^ 2
        ≤ ∫ x in Metric.ball z r, (t ^ 2 + |f x| ^ p / t ^ (p - 2)) := hmono
      _ = 4 * r ^ 2 * t ^ 2 + (∫ x in Metric.ball z r, |f x| ^ p) / t ^ (p - 2) := hsplit
      _ ≤ 4 * r ^ 2 * t ^ 2 + N' / t ^ (p - 2) := by linarith
      _ = (4 + N') * r ^ (2 * (1 - 2 / (p : ℝ))) := by
          rw [e2, ← h1]
          ring
  
  have hchain : ∀ (v : E2 → ℝ) (x₀ : E2) (R K : ℝ), 0 < R →
      (∀ a ∈ Metric.ball x₀ R, ∀ b ∈ Metric.ball x₀ R, ‖a - b‖ < R / 8 → |v a - v b| ≤ K) →
      ∀ y ∈ Metric.ball x₀ R, |v y - v x₀| ≤ 8 * K := by
    intro v x₀ R K hR hloc y hy
    have hy' : ‖y - x₀‖ < R := by rwa [Metric.mem_ball, dist_eq_norm] at hy
    obtain ⟨Y, hY⟩ : ∃ Y : ℕ → E2, ∀ j, Y j = x₀ + ((j : ℝ) / 8) • (y - x₀) :=
      ⟨_, fun j => rfl⟩
    have hmem : ∀ j : ℕ, j ≤ 8 → Y j ∈ Metric.ball x₀ R := by
      intro j hj
      have hj' : (j : ℝ) ≤ 8 := by exact_mod_cast hj
      rw [Metric.mem_ball, dist_eq_norm, hY, add_sub_cancel_left, norm_smul, Real.norm_eq_abs,
        abs_of_nonneg (by positivity)]
      have h1 : (j : ℝ) / 8 ≤ 1 := by linarith
      nlinarith [norm_nonneg (y - x₀)]
    have hstep : ∀ j : ℕ, ‖Y (j + 1) - Y j‖ < R / 8 := by
      intro j
      rw [hY, hY, add_sub_add_left_eq_sub, ← sub_smul, norm_smul, Real.norm_eq_abs]
      have h1 : ((j + 1 : ℕ) : ℝ) / 8 - (j : ℝ) / 8 = 1 / 8 := by push_cast; ring
      rw [h1, abs_of_pos (by norm_num)]
      linarith
    have h0 : Y 0 = x₀ := by rw [hY]; simp
    have h8 : Y 8 = y := by rw [hY]; norm_num
    have htel : v y - v x₀ = ∑ j ∈ Finset.range 8, (v (Y (j + 1)) - v (Y j)) := by
      have := Finset.sum_range_sub (fun j => v (Y j)) 8
      simp only [h8, h0] at this
      exact this.symm
    rw [htel]
    calc |∑ j ∈ Finset.range 8, (v (Y (j + 1)) - v (Y j))|
        ≤ ∑ j ∈ Finset.range 8, |v (Y (j + 1)) - v (Y j)| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _j ∈ Finset.range 8, K := by
          apply Finset.sum_le_sum
          intro j hj
          have hj8 : j < 8 := Finset.mem_range.mp hj
          exact hloc _ (hmem _ (by omega)) _ (hmem _ (by omega)) (hstep j)
      _ = 8 * K := by simp
  
  set γ : ℝ := 1 - 2 / (p : ℝ) with hγ
  have hγpos : 0 < γ := by
    have : 2 / (p : ℝ) ≤ 2 / 3 := by
      rw [div_le_div_iff₀ (by linarith) (by norm_num)]
      linarith
    linarith
  have hγle : γ ≤ 1 := by
    have : 0 ≤ 2 / (p : ℝ) := by positivity
    linarith
  set M₀ : ℝ := 2 * N + 8 with hM₀
  have hM₀0 : 0 ≤ M₀ := by linarith
  have hD : 0 < 1 - (2 : ℝ) ^ (-γ) := by
    have := Real.rpow_lt_one_of_one_lt_of_neg (by norm_num : (1 : ℝ) < 2) (by linarith : -γ < 0)
    linarith
  set C₁ : ℝ := 16 * Real.sqrt M₀ / (1 - (2 : ℝ) ^ (-γ)) with hC₁
  have hC₁0 : 0 ≤ C₁ := div_nonneg (by positivity) hD.le
  set K : ℝ := C₁ * (ρ / 4) ^ γ with hK
  have hK0 : 0 ≤ K := mul_nonneg hC₁0 (Real.rpow_nonneg (by linarith) _)
  refine ⟨8 * K, by linarith, ?_⟩
  intro x₀ u hu hint
  
  have hwc : ContDiff ℝ 1 (fun y => u (e.symm y)) := hu.comp e.symm.contDiff
  have hgradc : ∀ k : Fin 2, Continuous (fun x => smthGrad (fun y => u (e.symm y)) x k) := by
    intro k
    show Continuous (fun x => fderiv ℝ (fun y => u (e.symm y)) x (Pi.single k 1))
    exact (hwc.continuous_fderiv one_ne_zero).clm_apply continuous_const
  
  have htrans : ∀ (z : Fin 2 → ℝ), e.symm z ∈ Metric.ball x₀ (2 * ρ) →
      ∀ r : ℝ, 0 < r → r ≤ ρ / 2 → ∀ k : Fin 2, ∫ x in Metric.ball z r,
        |smthGrad (fun y => u (e.symm y)) x k| ^ p ≤ N := by
    intro z hz r hr hrρ k
    have hgeom : Metric.ball z r ⊆ e.symm ⁻¹' Metric.ball x₀ (3 * ρ) := by
      intro x hx
      rw [Metric.mem_ball] at hx hz
      show dist (e.symm x) x₀ < 3 * ρ
      have hd0 : dist (x 0) (z 0) < r := lt_of_le_of_lt (dist_le_pi_dist x z 0) hx
      have hd1 : dist (x 1) (z 1) < r := lt_of_le_of_lt (dist_le_pi_dist x z 1) hx
      have hTd : dist (e.symm x) (e.symm z) =
          Real.sqrt (dist (x 0) (z 0) ^ 2 + dist (x 1) (z 1) ^ 2) := by
        rw [EuclideanSpace.dist_eq, Fin.sum_univ_two]
        rfl
      have hlt : dist (e.symm x) (e.symm z) < 2 * r := by
        rw [hTd, Real.sqrt_lt' (by linarith)]
        linarith [mul_self_lt_mul_self dist_nonneg hd0, mul_self_lt_mul_self dist_nonneg hd1,
          sq_nonneg r]
      have := dist_triangle (e.symm x) (e.symm z) x₀
      linarith
    have hpd : Continuous (fun y => pd2 k u y) := by
      show Continuous (fun y => fderiv ℝ u y (e2 k))
      exact (hu.continuous_fderiv one_ne_zero).clm_apply continuous_const
    have hgc : Continuous (fun y => |pd2 k u y| ^ p) := hpd.abs.pow p
    have hMP : MeasurePreserving e.symm volume volume :=
      (EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp (Fin 2)).symm
    have hME : MeasurableEmbedding e.symm :=
      (MeasurableEquiv.toLp 2 (Fin 2 → ℝ)).measurableEmbedding
    have hgi : IntegrableOn (fun y => |pd2 k u y| ^ p) (Metric.ball x₀ (3 * ρ)) :=
      (hgc.continuousOn.integrableOn_compact (isCompact_closedBall x₀ (3 * ρ))).mono_set
        Metric.ball_subset_closedBall
    have hgi' : IntegrableOn ((fun y => |pd2 k u y| ^ p) ∘ e.symm)
        (e.symm ⁻¹' Metric.ball x₀ (3 * ρ)) :=
      (hMP.integrableOn_comp_preimage hME).2 hgi
    have hcov : ∫ x in e.symm ⁻¹' Metric.ball x₀ (3 * ρ), |pd2 k u (e.symm x)| ^ p =
        ∫ y in Metric.ball x₀ (3 * ρ), |pd2 k u y| ^ p :=
      hMP.setIntegral_preimage_emb hME (fun y => |pd2 k u y| ^ p) _
    calc ∫ x in Metric.ball z r, |smthGrad (fun y => u (e.symm y)) x k| ^ p
        = ∫ x in Metric.ball z r, |pd2 k u (e.symm x)| ^ p := by
          congr 1
          funext x
          rw [hbridge u x k]
      _ ≤ ∫ x in e.symm ⁻¹' Metric.ball x₀ (3 * ρ), |pd2 k u (e.symm x)| ^ p := by
          apply setIntegral_mono_set hgi'
          · exact Filter.Eventually.of_forall (fun x => by
              show (0 : ℝ) ≤ |pd2 k u (e.symm x)| ^ p
              positivity)
          · exact hgeom.eventuallyLE
      _ = ∫ y in Metric.ball x₀ (3 * ρ), |pd2 k u y| ^ p := hcov
      _ ≤ N := hint k
  
  have henergy : ∀ a ∈ Metric.ball x₀ (2 * ρ), ∀ r : ℝ, 0 < r → r ≤ ρ / 2 →
      ∫ x in Metric.ball (e a) r, ∑ k, (smthGrad (fun y => u (e.symm y)) x k) ^ 2 ≤
        M₀ * r ^ (2 * γ) := by
    intro a ha r hr hrρ
    have hTa : e.symm (e a) ∈ Metric.ball x₀ (2 * ρ) := by
      rw [ContinuousLinearEquiv.symm_apply_apply]; exact ha
    rw [integral_finset_sum]
    · rw [Fin.sum_univ_two]
      have h0 := hyoung (fun x => smthGrad (fun y => u (e.symm y)) x 0) (hgradc 0) (e a) r N hr
        (htrans (e a) hTa r hr hrρ 0)
      have h1 := hyoung (fun x => smthGrad (fun y => u (e.symm y)) x 1) (hgradc 1) (e a) r N hr
        (htrans (e a) hTa r hr hrρ 1)
      have hsum : M₀ * r ^ (2 * γ) = (4 + N) * r ^ (2 * γ) + (4 + N) * r ^ (2 * γ) := by
        rw [hM₀]; ring
      rw [hsum]
      exact add_le_add h0 h1
    · intro k _
      exact (((hgradc k).pow 2).continuousOn.integrableOn_compact
        (isCompact_closedBall _ _)).mono_set Metric.ball_subset_closedBall
  
  have hloc : ∀ a ∈ Metric.ball x₀ (2 * ρ), ∀ b ∈ Metric.ball x₀ (2 * ρ),
      ‖a - b‖ < 2 * ρ / 8 → |u a - u b| ≤ K := by
    intro a ha b hb hab
    have hd : dist (e a) (e b) ≤ ‖a - b‖ := by
      rw [dist_pi_le_iff (norm_nonneg _)]
      intro i
      rw [← dist_eq_norm, EuclideanSpace.dist_eq a b]
      calc dist (e a i) (e b i) = Real.sqrt (dist (a i) (b i) ^ 2) := by
            rw [Real.sqrt_sq dist_nonneg]; rfl
        _ ≤ _ := Real.sqrt_le_sqrt (Finset.single_le_sum (f := fun j => dist (a j) (b j) ^ 2)
            (fun j _ => by positivity) (Finset.mem_univ i))
    have hd' : dist (e a) (e b) < ρ / 2 / 2 := by linarith
    have hm := slh_morrey (ρ / 2) M₀ γ (by linarith) hM₀0 hγpos hγle
      (fun y => u (e.symm y)) hwc
      (fun a' b' L hab' hL => slh_box_poincare (fun y => u (e.symm y)) hwc a' b' L hab' hL)
      (e a) (e b) (fun r hr hrρ => henergy a ha r hr hrρ)
      (fun r hr hrρ => henergy b hb r hr hrρ) hd'
    have hm' : |u a - u b| ≤ C₁ * dist (e a) (e b) ^ γ := by
      simp only [ContinuousLinearEquiv.symm_apply_apply] at hm
      exact hm
    calc |u a - u b| ≤ C₁ * dist (e a) (e b) ^ γ := hm'
      _ ≤ C₁ * (ρ / 4) ^ γ := by
          apply mul_le_mul_of_nonneg_left _ hC₁0
          exact Real.rpow_le_rpow dist_nonneg (by linarith) hγpos.le
      _ = K := rfl
  
  exact hchain u x₀ (2 * ρ) K (by linarith) hloc

theorem pdls_moll_Lp (p : ℕ) (hp : 1 ≤ p) (η g : E2 → ℝ) (Ks D : Set E2) (hKs : MeasurableSet Ks)
    (hη : Continuous η) (hηc : HasCompactSupport η) (hη0 : ∀ z, 0 ≤ η z) (hη1 : ∫ z, η z = 1)
    (hg : MemLp g p (volume.restrict Ks)) (hgi : IntegrableOn g Ks) :
    ∫ x in D, |∫ y, η (x - y) * Ks.indicator g y| ^ p ≤ ∫ y in Ks, |g y| ^ p :=
by
  have hp0 : p ≠ 0 := by omega
  obtain ⟨n, rfl⟩ : ∃ n, p = n + 1 := ⟨p - 1, by omega⟩
  
  have amgm : ∀ a b : ℝ, 0 ≤ a → 0 ≤ b →
      ((n : ℝ) + 1) * a ^ n * b ≤ (n : ℝ) * a ^ (n + 1) + b ^ (n + 1) := by
    intro a b ha hb
    rcases ha.eq_or_lt with h | h
    · subst h
      rcases Nat.eq_zero_or_pos n with hn | hn
      · subst hn; simp
      · have h1 : (0:ℝ) ^ n = 0 := zero_pow (by omega)
        have h2 : (0:ℝ) ^ (n + 1) = 0 := zero_pow (by omega)
        rw [h1, h2]
        simp only [mul_zero, zero_mul, zero_add]
        exact pow_nonneg hb _
    · have hta : b / a * a = b := div_mul_cancel₀ b h.ne'
      have ht0 : 0 ≤ b / a := div_nonneg hb h.le
      have hb' := one_add_mul_le_pow (a := b / a - 1) (by linarith) (n + 1)
      have e1 : (1 : ℝ) + (b / a - 1) = b / a := by ring
      rw [e1] at hb'
      push_cast at hb'
      have hapos : 0 < a ^ (n + 1) := pow_pos h _
      have hm := mul_le_mul_of_nonneg_left hb' hapos.le
      have e2 : a ^ (n + 1) * (b / a) ^ (n + 1) = b ^ (n + 1) := by
        rw [← mul_pow, mul_comm a, hta]
      have e3 : a ^ (n + 1) * (b / a) = a ^ n * b := by
        rw [pow_succ, mul_assoc, mul_comm a, hta]
      have e4 : ((n:ℝ) + 1) * (a ^ (n + 1) * (b / a)) = ((n:ℝ) + 1) * (a ^ n * b) := by
        rw [e3]
      nlinarith [hm, e2, e3, e4]
  
  have wjensen : ∀ (w ψ : E2 → ℝ), (∀ y, 0 ≤ w y) → Integrable w → ∫ y, w y = 1 →
      Integrable (fun y => w y * ψ y) → Integrable (fun y => w y * |ψ y| ^ (n + 1)) →
      |∫ y, w y * ψ y| ^ (n + 1) ≤ ∫ y, w y * |ψ y| ^ (n + 1) := by
    intro w ψ hw0 hw hw1 hwψ hwψp
    obtain ⟨m, hm⟩ : ∃ m, ∫ y, w y * ψ y = m := ⟨_, rfl⟩
    rw [hm]
    obtain ⟨σ, hσm, hσt⟩ : ∃ σ : ℝ, σ * m = |m| ∧ ∀ t : ℝ, σ * t ≤ |t| := by
      rcases le_or_gt 0 m with h | h
      · exact ⟨1, by rw [one_mul, abs_of_nonneg h], fun t => by rw [one_mul]; exact le_abs_self t⟩
      · exact ⟨-1, by rw [abs_of_neg h]; ring, fun t => by rw [neg_one_mul]; exact neg_le_abs t⟩
    have ha0 : 0 ≤ |m| := abs_nonneg m
    have hpt : ∀ y, ((n:ℝ) + 1) * |m| ^ n * σ * (w y * ψ y) - (n:ℝ) * |m| ^ (n + 1) * w y
        ≤ w y * |ψ y| ^ (n + 1) := by
      intro y
      have h1 := amgm |m| |ψ y| ha0 (abs_nonneg _)
      have h2 : ((n:ℝ) + 1) * |m| ^ n * (σ * ψ y) ≤ ((n:ℝ) + 1) * |m| ^ n * |ψ y| :=
        mul_le_mul_of_nonneg_left (hσt _) (by positivity)
      have h3 : ((n:ℝ) + 1) * |m| ^ n * σ * ψ y - (n:ℝ) * |m| ^ (n + 1) ≤ |ψ y| ^ (n + 1) := by
        have e : ((n:ℝ) + 1) * |m| ^ n * σ * ψ y = ((n:ℝ) + 1) * |m| ^ n * (σ * ψ y) := by ring
        linarith
      have h4 := mul_le_mul_of_nonneg_left h3 (hw0 y)
      calc ((n:ℝ) + 1) * |m| ^ n * σ * (w y * ψ y) - (n:ℝ) * |m| ^ (n + 1) * w y
          = w y * (((n:ℝ) + 1) * |m| ^ n * σ * ψ y - (n:ℝ) * |m| ^ (n + 1)) := by ring
        _ ≤ w y * |ψ y| ^ (n + 1) := h4
    have hA := hwψ.const_mul (((n:ℝ) + 1) * |m| ^ n * σ)
    have hB' := hw.const_mul ((n:ℝ) * |m| ^ (n + 1))
    have hint : ∫ y, (((n:ℝ) + 1) * |m| ^ n * σ * (w y * ψ y) - (n:ℝ) * |m| ^ (n + 1) * w y)
        ≤ ∫ y, w y * |ψ y| ^ (n + 1) :=
      integral_mono (hA.sub hB') hwψp hpt
    rw [integral_sub hA hB', integral_const_mul, integral_const_mul, hw1, hm] at hint
    have key : ((n:ℝ) + 1) * |m| ^ n * σ * m - (n:ℝ) * |m| ^ (n + 1) * 1 = |m| ^ (n + 1) := by
      rw [mul_assoc _ σ m, hσm]; ring
    linarith
  
  set φ := Ks.indicator g with hφdef
  have hφi : Integrable φ := (integrable_indicator_iff hKs).2 hgi
  have hφL : MemLp φ ((n + 1 : ℕ) : ENNReal) volume := (memLp_indicator_iff_restrict hKs).2 hg
  have hφp : Integrable (fun y => |φ y| ^ (n + 1)) := by
    simpa [Real.norm_eq_abs] using hφL.integrable_norm_pow (by omega)
  have hRHS : ∫ y in Ks, |g y| ^ (n + 1) = ∫ y, |φ y| ^ (n + 1) := by
    rw [← integral_indicator hKs]
    congr 1
    funext y
    by_cases hy : y ∈ Ks
    · simp [hφdef, Set.indicator_of_mem hy]
    · simp [hφdef, Set.indicator_of_notMem hy]
  have hηI : Integrable η := hη.integrable_of_hasCompactSupport hηc
  obtain ⟨B, hB⟩ := hη.bounded_above_of_compact_support hηc
  
  have hconv : ∀ f : E2 → ℝ, Integrable f →
      Integrable (fun x => ∫ y, η (x - y) * f y) ∧ (∫ x, ∫ y, η (x - y) * f y) = ∫ y, f y := by
    intro f hf
    have e : (fun x => ∫ y, η (x - y) * f y) =
        MeasureTheory.convolution f η (ContinuousLinearMap.mul ℝ ℝ) volume := by
      funext x
      rw [MeasureTheory.convolution_def]
      congr 1
      funext t
      rw [ContinuousLinearMap.mul_apply', mul_comm]
    rw [e]
    refine ⟨hf.integrable_convolution _ hηI, ?_⟩
    rw [MeasureTheory.integral_convolution _ hf hηI, hη1, ContinuousLinearMap.mul_apply', mul_one]
  
  have hFQ : ∀ x, |∫ y, η (x - y) * φ y| ^ (n + 1) ≤ ∫ y, η (x - y) * |φ y| ^ (n + 1) := by
    intro x
    have hm : AEStronglyMeasurable (fun y => η (x - y)) volume :=
      (hη.comp (continuous_const.sub continuous_id)).aestronglyMeasurable
    have hw : Integrable (fun y => η (x - y)) := hηI.comp_sub_left x
    have hw1 : ∫ y, η (x - y) = 1 := by rw [integral_sub_left_eq_self η volume x, hη1]
    have hwψ : Integrable (fun y => η (x - y) * φ y) :=
      hφi.bdd_mul hm (ae_of_all _ (fun y => hB (x - y)))
    have hwψp : Integrable (fun y => η (x - y) * |φ y| ^ (n + 1)) :=
      hφp.bdd_mul hm (ae_of_all _ (fun y => hB (x - y)))
    exact wjensen (fun y => η (x - y)) φ (fun y => hη0 _) hw hw1 hwψ hwψp
  obtain ⟨hQi, hQint⟩ := hconv (fun y => |φ y| ^ (n + 1)) hφp
  have hQ0 : ∀ x, 0 ≤ ∫ y, η (x - y) * |φ y| ^ (n + 1) := fun x =>
    integral_nonneg (fun y => mul_nonneg (hη0 _) (by positivity))
  rw [hRHS, ← hQint]
  calc ∫ x in D, |∫ y, η (x - y) * φ y| ^ (n + 1)
      ≤ ∫ x in D, ∫ y, η (x - y) * |φ y| ^ (n + 1) :=
        integral_mono_of_nonneg (ae_of_all _ (fun x => show (0:ℝ) ≤ _ from by positivity))
          hQi.restrict (ae_of_all _ hFQ)
    _ ≤ ∫ x, ∫ y, η (x - y) * |φ y| ^ (n + 1) :=
        setIntegral_le_integral hQi (ae_of_all _ (fun x => show (0:ℝ) ≤ _ from hQ0 x))

theorem pdls_moll_holder (α B C δ : ℝ) (hC : 0 ≤ C) (η F : E2 → ℝ) (Ks D : Set E2)
    (hK : MeasurableSet Ks) (hηc : Continuous η) (hη0 : ∀ z, 0 ≤ η z) (hη1 : ∫ z, η z = 1)
    (hηs : ∀ z, δ ≤ ‖z‖ → η z = 0) (hFi : IntegrableOn F Ks volume)
    (hB : ∀ y ∈ D, |F y| ≤ B) (hH : ∀ y ∈ D, ∀ y' ∈ D, |F y - F y'| ≤ C * dist y y' ^ α) :
    ∀ x x' : E2, (∀ y, ‖x - y‖ < δ → y ∈ D ∧ y ∈ Ks) → (∀ y, ‖x' - y‖ < δ → y ∈ D ∧ y ∈ Ks) →
      |∫ y, η (x - y) * Ks.indicator F y| ≤ B ∧
      |(∫ y, η (x - y) * Ks.indicator F y) - ∫ y, η (x' - y) * Ks.indicator F y| ≤
        C * dist x x' ^ α :=
by
  intro x x' hx hx'
  set φ := Ks.indicator F with hφ
  have hs1 : ∀ z, η z ≠ 0 → ‖z‖ < δ := by
    intro z hz
    by_contra h
    exact hz (hηs z (not_lt.mp h))
  have hηI : MeasureTheory.Integrable η MeasureTheory.volume := by
    refine hηc.integrable_of_hasCompactSupport ?_
    refine HasCompactSupport.intro (isCompact_closedBall (0 : E2) δ) ?_
    intro z hz
    apply hηs
    rw [Metric.mem_closedBall, dist_zero_right, not_le] at hz
    exact hz.le
  have hφI : MeasureTheory.Integrable φ MeasureTheory.volume := hFi.integrable_indicator hK
  have hcov : ∀ w : E2, ∫ y, η (w - y) * φ y = ∫ z, η z * φ (w - z) := by
    intro w
    have h := MeasureTheory.integral_sub_left_eq_self (fun u => η u * φ (w - u))
      (MeasureTheory.volume : MeasureTheory.Measure E2) w
    simp only [sub_sub_cancel] at h
    exact h
  have hgood : ∀ w : E2, (∀ y, ‖w - y‖ < δ → y ∈ D ∧ y ∈ Ks) → ∀ z, η z ≠ 0 →
      w - z ∈ D ∧ φ (w - z) = F (w - z) := by
    intro w hw z hz
    have h1 : ‖w - (w - z)‖ < δ := by rw [sub_sub_cancel]; exact hs1 z hz
    obtain ⟨hD, hKs⟩ := hw _ h1
    exact ⟨hD, Set.indicator_of_mem hKs F⟩
  have hdom : ∀ w : E2, (∀ y, ‖w - y‖ < δ → y ∈ D ∧ y ∈ Ks) → ∀ z,
      ‖η z * φ (w - z)‖ ≤ B * η z := by
    intro w hw z
    by_cases hz : η z = 0
    · simp [hz]
    · obtain ⟨hD, hEq⟩ := hgood w hw z hz
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hη0 z), hEq, mul_comm B]
      exact mul_le_mul_of_nonneg_left (hB _ hD) (hη0 z)
  have hint : ∀ w : E2, (∀ y, ‖w - y‖ < δ → y ∈ D ∧ y ∈ Ks) →
      MeasureTheory.Integrable (fun z => η z * φ (w - z)) MeasureTheory.volume := by
    intro w hw
    refine MeasureTheory.Integrable.mono' (hηI.const_mul B) ?_
      (Filter.Eventually.of_forall (hdom w hw))
    exact hηc.aestronglyMeasurable.mul (hφI.comp_sub_left w).aestronglyMeasurable
  refine ⟨?_, ?_⟩
  · rw [hcov x]
    have h := MeasureTheory.norm_integral_le_of_norm_le (hηI.const_mul B)
      (Filter.Eventually.of_forall (hdom x hx))
    rw [MeasureTheory.integral_const_mul, hη1, mul_one, Real.norm_eq_abs] at h
    exact h
  · rw [hcov x, hcov x', ← MeasureTheory.integral_sub (hint x hx) (hint x' hx')]
    have hpt : ∀ z, ‖η z * φ (x - z) - η z * φ (x' - z)‖ ≤ (C * dist x x' ^ α) * η z := by
      intro z
      by_cases hz : η z = 0
      · simp [hz]
      · obtain ⟨hD, hEq⟩ := hgood x hx z hz
        obtain ⟨hD', hEq'⟩ := hgood x' hx' z hz
        rw [← mul_sub, Real.norm_eq_abs, abs_mul, abs_of_nonneg (hη0 z), hEq, hEq',
          mul_comm (C * dist x x' ^ α)]
        refine mul_le_mul_of_nonneg_left ?_ (hη0 z)
        have h2 := hH _ hD _ hD'
        rwa [dist_sub_right] at h2
    have h := MeasureTheory.norm_integral_le_of_norm_le (hηI.const_mul (C * dist x x' ^ α))
      (Filter.Eventually.of_forall hpt)
    rw [MeasureTheory.integral_const_mul, hη1, mul_one, Real.norm_eq_abs] at h
    exact h

theorem pdls_schauder_ball (α θ Kc s : ℝ) (hα0 : 0 < α) (hα1 : α < 1) (hθ : 0 < θ) (hKc : 0 ≤ Kc)
    (hs : 0 < s) (hs1 : s ≤ 1) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ (x₀ : E2) (A : E2 → Matrix (Fin 2) (Fin 2) ℝ) (R : Fin 2 → E2 → ℝ)
      (f u : E2 → ℝ), ContDiff ℝ ∞ u →
      (∀ a : Fin 2, ContDiff ℝ ∞ (fun y => ∑ b : Fin 2, A y a b * pd2 b u y + R a y)) →
      (∀ x ∈ Metric.ball x₀ s, ∀ ξ : Fin 2 → ℝ,
        θ * ∑ a : Fin 2, ξ a ^ 2 ≤ ∑ a : Fin 2, ∑ b : Fin 2, A x a b * ξ a * ξ b) →
      (∀ x ∈ Metric.ball x₀ s, ∀ a b : Fin 2, |A x a b| ≤ Kc) →
      (∀ x ∈ Metric.ball x₀ s, ∀ y ∈ Metric.ball x₀ s, ∀ a b : Fin 2,
        |A x a b - A y a b| ≤ Kc * dist x y ^ α) →
      (∀ x ∈ Metric.ball x₀ s, ∀ a : Fin 2, |R a x| ≤ Kc) →
      (∀ x ∈ Metric.ball x₀ s, ∀ y ∈ Metric.ball x₀ s, ∀ a : Fin 2,
        |R a x - R a y| ≤ Kc * dist x y ^ α) →
      (∀ x ∈ Metric.ball x₀ s, |f x| ≤ Kc) →
      (∀ x ∈ Metric.ball x₀ s, ∀ y ∈ Metric.ball x₀ s, |f x - f y| ≤ Kc * dist x y ^ α) →
      (∀ x ∈ Metric.ball x₀ s, |u x| ≤ Kc) →
      (∀ x ∈ Metric.ball x₀ s,
        ∑ a : Fin 2, pd2 a (fun y => ∑ b : Fin 2, A y a b * pd2 b u y + R a y) x = -f x) →
      ∀ y ∈ Metric.ball x₀ (s / 4), ∀ z ∈ Metric.ball x₀ (s / 4), ∀ i : Fin 2,
        |pd2 i u y| ≤ M ∧ |pd2 i u y - pd2 i u z| ≤ M * dist y z ^ α :=
by
  
  have hchain : ∀ (w : E2 → ℝ) (y : Fin 2 → ℝ) (i : Fin 2),
      smthGrad (fun q => w ((EuclideanSpace.equiv (Fin 2) ℝ).symm q)) y i =
        pd2 i w ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) := by
    intro w y i
    have h1 : (fun q => w ((EuclideanSpace.equiv (Fin 2) ℝ).symm q)) =
        w ∘ ((EuclideanSpace.equiv (Fin 2) ℝ).symm) := rfl
    have h2 : (EuclideanSpace.equiv (Fin 2) ℝ).symm (Pi.single i 1) = e2 i := by
      ext j
      simp [EuclideanSpace.single_apply]
    simp only [smthGrad, pd2]
    rw [h1, ContinuousLinearEquiv.comp_right_fderiv]
    simp only [ContinuousLinearMap.coe_comp', ContinuousLinearEquiv.coe_coe, Function.comp_apply]
    rw [h2]
  
  have geom : ∀ p q : E2,
      dist (EuclideanSpace.equiv (Fin 2) ℝ p) (EuclideanSpace.equiv (Fin 2) ℝ q) ≤ dist p q ∧
      dist p q ^ 2 ≤ 2 * dist (EuclideanSpace.equiv (Fin 2) ℝ p)
        (EuclideanSpace.equiv (Fin 2) ℝ q) ^ 2 ∧
      dist p q ≤ 2 * dist (EuclideanSpace.equiv (Fin 2) ℝ p) (EuclideanSpace.equiv (Fin 2) ℝ q) := by
    intro p q
    set d := dist (EuclideanSpace.equiv (Fin 2) ℝ p) (EuclideanSpace.equiv (Fin 2) ℝ q) with hd
    have hE : dist p q ^ 2 = dist (p 0) (q 0) ^ 2 + dist (p 1) (q 1) ^ 2 := by
      rw [EuclideanSpace.dist_eq, Real.sq_sqrt (by positivity), Fin.sum_univ_two]
    have h0 : dist (p 0) (q 0) ≤ d := dist_le_pi_dist (EuclideanSpace.equiv (Fin 2) ℝ p)
      (EuclideanSpace.equiv (Fin 2) ℝ q) 0
    have h1 : dist (p 1) (q 1) ≤ d := dist_le_pi_dist (EuclideanSpace.equiv (Fin 2) ℝ p)
      (EuclideanSpace.equiv (Fin 2) ℝ q) 1
    have hd0 : 0 ≤ d := dist_nonneg
    have hn0 := dist_nonneg (x := p 0) (y := q 0)
    have hn1 := dist_nonneg (x := p 1) (y := q 1)
    have hpq := dist_nonneg (x := p) (y := q)
    have hii : dist p q ^ 2 ≤ 2 * d ^ 2 := by nlinarith
    refine ⟨?_, hii, ?_⟩
    · rw [dist_pi_le_iff hpq]
      intro i
      show dist (p i) (q i) ≤ dist p q
      fin_cases i
      · show dist (p 0) (q 0) ≤ dist p q
        nlinarith
      · show dist (p 1) (q 1) ≤ dist p q
        nlinarith
    · nlinarith
  
  have hconv : ∀ (S : Set (Fin 2 → ℝ)) (C β : ℝ), 0 ≤ C → 0 ≤ β →
      (∀ f : (Fin 2 → ℝ) → ℝ, (∀ x ∈ S, ∀ y ∈ S, |f x - f y| ≤ C * dist x y ^ β) →
        HolderOnWith C.toNNReal β.toNNReal f S) ∧
      (∀ F : (Fin 2 → ℝ) → Fin 2 → ℝ,
        (∀ x ∈ S, ∀ y ∈ S, ∀ i : Fin 2, |F x i - F y i| ≤ C * dist x y ^ β) →
        HolderOnWith C.toNNReal β.toNNReal F S) ∧
      (∀ a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ,
        (∀ x ∈ S, ∀ y ∈ S, ∀ i j : Fin 2, |a x i j - a y i j| ≤ C * dist x y ^ β) →
        HolderOnWith C.toNNReal β.toNNReal a S) := by
    intro S C β hC hβ
    have key : ∀ (x y : Fin 2 → ℝ) (r s : ℝ), |r - s| ≤ C * dist x y ^ β →
        edist r s ≤ (C.toNNReal : ENNReal) * edist x y ^ ((β.toNNReal : NNReal) : ℝ) := by
      intro x y r s h
      rw [Real.coe_toNNReal β hβ, edist_dist, edist_dist,
        ENNReal.ofReal_rpow_of_nonneg dist_nonneg hβ, Real.dist_eq]
      have : ((C.toNNReal : ENNReal)) = ENNReal.ofReal C := rfl
      rw [this, ← ENNReal.ofReal_mul hC]
      exact ENNReal.ofReal_le_ofReal h
    refine ⟨fun f hf x hx y hy => key x y _ _ (hf x hx y hy), fun F hF x hx y hy => ?_,
      fun a ha x hx y hy => ?_⟩
    · rw [edist_pi_le_iff]
      intro i
      exact key x y _ _ (hF x hx y hy i)
    · rw [edist_pi_le_iff]
      intro i
      rw [edist_pi_le_iff]
      intro j
      exact key x y _ _ (ha x hx y hy i j)
  
  have gq : ∀ (w : (Fin 2 → ℝ) → ℝ), ContDiff ℝ ∞ w → ∀ (y₀ : Fin 2 → ℝ) (r : ℝ),
      r ≤ 1 / 2 → ∀ (β : NNReal), β ≤ 1 →
      ∃ C₀ : NNReal, HolderOnWith C₀ β (smthGrad w) (Metric.ball y₀ r) := by
    intro w hw y₀ r hr1 β hβ
    have hΦ : ContDiff ℝ ∞ (smthGrad w) := by
      rw [contDiff_pi]
      intro k
      exact (hw.fderiv_right (m := ∞) le_rfl).clm_apply contDiff_const
    have hc : Continuous (fderiv ℝ (smthGrad w)) := hΦ.continuous_fderiv (by simp)
    obtain ⟨L, hL⟩ := (isCompact_closedBall y₀ r).exists_bound_of_continuousOn hc.continuousOn
    have hlip : LipschitzOnWith L.toNNReal (smthGrad w) (Metric.ball y₀ r) := by
      refine Convex.lipschitzOnWith_of_nnnorm_fderiv_le (𝕜 := ℝ)
        (fun x _ => (hΦ.differentiable (by simp)) x) (fun x hx => ?_) (convex_ball y₀ r)
      have h := hL x (Metric.ball_subset_closedBall hx)
      rw [← NNReal.coe_le_coe, coe_nnnorm, Real.coe_toNNReal']
      exact h.trans (le_max_left _ _)
    have hhol := hlip.holderOnWith
    have hD : ∀ x ∈ Metric.ball y₀ r, ∀ y ∈ Metric.ball y₀ r,
        edist x y ≤ ((1 : NNReal) : ENNReal) := by
      intro x hx y hy
      rw [edist_dist, ENNReal.coe_one, ← ENNReal.ofReal_one]
      apply ENNReal.ofReal_le_ofReal
      rw [Metric.mem_ball] at hx hy
      linarith [dist_triangle_right x y y₀]
    exact ⟨_, hhol.of_le hD hβ⟩
  set ee := EuclideanSpace.equiv (Fin 2) ℝ with hee
  
  obtain ⟨M', hM'⟩ := smth_lin_schauder_est α.toNNReal θ (5 * Kc).toNNReal (s / 2)
    (Real.toNNReal_pos.mpr hα0) (Real.toNNReal_lt_one.mpr hα1) hθ (by linarith)
  refine ⟨(M' : ℝ), M'.coe_nonneg, ?_⟩
  intro x₀ A R f u hu hV hell hAb hAH hRb hRH hfB hfH huB heq
  have hαc : ((α.toNNReal : NNReal) : ℝ) = α := Real.coe_toNNReal α hα0.le
  have hKc5 : (((5 * Kc).toNNReal : NNReal) : ℝ) = 5 * Kc := Real.coe_toNNReal _ (by linarith)
  
  have G1 : ∀ q ∈ Metric.ball (ee x₀) (s / 2), ee.symm q ∈ Metric.ball x₀ s := by
    intro q hq
    have h := (geom (ee.symm q) x₀).2.2
    rw [ContinuousLinearEquiv.apply_symm_apply] at h
    rw [Metric.mem_ball] at hq ⊢
    linarith
  have G3b : ∀ q q' : Fin 2 → ℝ, dist (ee.symm q) (ee.symm q') ^ α ≤ 2 * dist q q' ^ α := by
    intro q q'
    have h := (geom (ee.symm q) (ee.symm q')).2.2
    rw [ContinuousLinearEquiv.apply_symm_apply, ContinuousLinearEquiv.apply_symm_apply] at h
    calc dist (ee.symm q) (ee.symm q') ^ α ≤ (2 * dist q q') ^ α :=
          Real.rpow_le_rpow dist_nonneg h hα0.le
      _ = 2 ^ α * dist q q' ^ α := Real.mul_rpow (by norm_num) dist_nonneg
      _ ≤ 2 * dist q q' ^ α := by
          apply mul_le_mul_of_nonneg_right _ (Real.rpow_nonneg dist_nonneg _)
          have := Real.rpow_le_rpow_of_exponent_le (x := 2) (by norm_num) hα1.le
          simpa using this
  have G3c : ∀ q ∈ Metric.ball (ee x₀) (s / 2), ∀ q' ∈ Metric.ball (ee x₀) (s / 2),
      dist q q' ≤ dist q q' ^ α := by
    intro q hq q' hq'
    rw [Metric.mem_ball] at hq hq'
    have : dist q q' ≤ 1 := by linarith [dist_triangle_right q q' (ee x₀)]
    exact Real.self_le_rpow_of_le_one dist_nonneg this hα1.le
  set c : ℝ := ee x₀ 0 - s / 2 with hc
  have G4 : ∀ q ∈ Metric.ball (ee x₀) (s / 2), |q 0 - c| ≤ 1 := by
    intro q hq
    have h := lt_of_le_of_lt (dist_le_pi_dist q (ee x₀) 0) hq
    rw [Real.dist_eq, abs_lt] at h
    rw [abs_le]
    constructor <;> linarith
  
  have hext : ∃ g : (Fin 2 → ℝ) → ℝ, Continuous g ∧ (∀ q, |g q| ≤ Kc) ∧
      (∀ q q', |g q - g q'| ≤ 2 * Kc * dist q q' ^ α) ∧
      ∀ q ∈ Metric.ball (ee x₀) (s / 2), g q = f (ee.symm q) := by
    let cl : (Fin 2 → ℝ) → (Fin 2 → ℝ) :=
      fun q i => max (ee x₀ i - s / 2) (min (q i) (ee x₀ i + s / 2))
    have hcl_range : ∀ q, ee.symm (cl q) ∈ Metric.ball x₀ s := by
      intro q
      have h1 : dist (cl q) (ee x₀) ≤ s / 2 := by
        rw [dist_pi_le_iff (by linarith)]
        intro i
        rw [Real.dist_eq, abs_le]
        constructor
        · have := le_max_left (ee x₀ i - s / 2) (min (q i) (ee x₀ i + s / 2))
          simp only [cl]; linarith
        · have h := min_le_right (q i) (ee x₀ i + s / 2)
          have : max (ee x₀ i - s / 2) (min (q i) (ee x₀ i + s / 2)) ≤ ee x₀ i + s / 2 :=
            max_le (by linarith) h
          simp only [cl]; linarith
      have h2 := (geom (ee.symm (cl q)) x₀).2.1
      rw [ContinuousLinearEquiv.apply_symm_apply] at h2
      rw [Metric.mem_ball]
      have h3 : dist (ee.symm (cl q)) x₀ ^ 2 < s ^ 2 := by
        have : dist (cl q) (ee x₀) ^ 2 ≤ (s / 2) ^ 2 := pow_le_pow_left₀ dist_nonneg h1 2
        nlinarith
      exact lt_of_pow_lt_pow_left₀ 2 hs.le h3
    have hcl_lip : ∀ q q', dist (cl q) (cl q') ≤ dist q q' := by
      intro q q'
      rw [dist_pi_le_iff dist_nonneg]
      intro i
      show dist (max (ee x₀ i - s / 2) (min (q i) (ee x₀ i + s / 2)))
        (max (ee x₀ i - s / 2) (min (q' i) (ee x₀ i + s / 2))) ≤ dist q q'
      rw [Real.dist_eq, max_comm (ee x₀ i - s / 2), max_comm (ee x₀ i - s / 2)]
      calc _ ≤ |min (q i) (ee x₀ i + s / 2) - min (q' i) (ee x₀ i + s / 2)| :=
            abs_max_sub_max_le_abs _ _ _
        _ ≤ max |q i - q' i| |(ee x₀ i + s / 2) - (ee x₀ i + s / 2)| :=
            abs_min_sub_min_le_max _ _ _ _
        _ = |q i - q' i| := by rw [sub_self, abs_zero]; exact max_eq_left (abs_nonneg _)
        _ = dist (q i) (q' i) := (Real.dist_eq _ _).symm
        _ ≤ dist q q' := dist_le_pi_dist q q' i
    have hgH : ∀ q q', |f (ee.symm (cl q)) - f (ee.symm (cl q'))| ≤ 2 * Kc * dist q q' ^ α := by
      intro q q'
      have h := hfH _ (hcl_range q) _ (hcl_range q')
      have h2 := G3b (cl q) (cl q')
      have h3 : dist (cl q) (cl q') ^ α ≤ dist q q' ^ α :=
        Real.rpow_le_rpow dist_nonneg (hcl_lip q q') hα0.le
      calc _ ≤ Kc * dist (ee.symm (cl q)) (ee.symm (cl q')) ^ α := h
        _ ≤ Kc * (2 * dist q q' ^ α) := mul_le_mul_of_nonneg_left (h2.trans (by linarith)) hKc
        _ = 2 * Kc * dist q q' ^ α := by ring
    have hgc : Continuous (fun q => f (ee.symm (cl q))) :=
      continuousOn_univ.mp (((hconv Set.univ (2 * Kc) α (by linarith) hα0.le).1 _
        (fun q _ q' _ => hgH q q')).continuousOn (Real.toNNReal_pos.mpr hα0))
    refine ⟨fun q => f (ee.symm (cl q)), hgc, fun q => hfB _ (hcl_range q), hgH, ?_⟩
    intro q hq
    have : cl q = q := by
      funext i
      have hi : dist (q i) (ee x₀ i) < s / 2 := lt_of_le_of_lt (dist_le_pi_dist q (ee x₀) i) hq
      rw [Real.dist_eq, abs_lt] at hi
      simp only [cl]
      rw [min_eq_left (by linarith), max_eq_right (by linarith)]
    simp only [this]
  obtain ⟨g, hgc, hgB, hgH, hgQ⟩ := hext
  
  let Ψ : (Fin 2 → ℝ) → ℝ := fun q => ∫ t in c..q 0, g (Function.update q 0 t)
  have hgu : ∀ q : Fin 2 → ℝ, Continuous fun t : ℝ => g (Function.update q 0 t) :=
    fun q => hgc.comp (continuous_const.update 0 continuous_id)
  have hΨc : Continuous Ψ :=
    intervalIntegral.continuous_parametric_intervalIntegral_of_continuous
      (f := fun q t => g (Function.update q 0 t)) (a₀ := c) (s := fun q => q 0)
      (by exact hgc.comp (continuous_fst.update 0 continuous_snd)) (continuous_apply 0)
  have hΨB : ∀ q, |Ψ q| ≤ Kc * |q 0 - c| := by
    intro q
    have := intervalIntegral.norm_integral_le_of_norm_le_const (a := c) (b := q 0) (C := Kc)
      (f := fun t => g (Function.update q 0 t)) (fun t _ => by rw [Real.norm_eq_abs]; exact hgB _)
    rw [Real.norm_eq_abs] at this
    exact this
  have hupd : ∀ (q q' : Fin 2 → ℝ) (t : ℝ),
      dist (Function.update q 0 t) (Function.update q' 0 t) ≤ dist q q' := by
    intro q q' t
    rw [dist_pi_le_iff dist_nonneg]
    intro i
    by_cases hi : i = 0
    · subst hi; simp
    · rw [Function.update_of_ne hi, Function.update_of_ne hi]; exact dist_le_pi_dist q q' i
  have hΨH : ∀ q q', |Ψ q - Ψ q'| ≤ Kc * |q 0 - q' 0| + 2 * Kc * |q 0 - c| * dist q q' ^ α := by
    intro q q'
    have hi1 : IntervalIntegrable (fun t => g (Function.update q 0 t)) volume c (q 0) :=
      (hgu q).intervalIntegrable _ _
    have hi2 : IntervalIntegrable (fun t => g (Function.update q' 0 t)) volume c (q 0) :=
      (hgu q').intervalIntegrable _ _
    have hi3 : IntervalIntegrable (fun t => g (Function.update q' 0 t)) volume c (q' 0) :=
      (hgu q').intervalIntegrable _ _
    have hi4 : IntervalIntegrable (fun t => g (Function.update q' 0 t)) volume (q' 0) (q 0) :=
      (hgu q').intervalIntegrable _ _
    have hsplit := intervalIntegral.integral_add_adjacent_intervals hi3 hi4
    have hsub := intervalIntegral.integral_sub hi1 hi2
    have hA1 : |∫ t in c..q 0, (g (Function.update q 0 t) - g (Function.update q' 0 t))| ≤
        2 * Kc * |q 0 - c| * dist q q' ^ α := by
      have := intervalIntegral.norm_integral_le_of_norm_le_const (a := c) (b := q 0)
        (C := 2 * Kc * dist q q' ^ α)
        (f := fun t => g (Function.update q 0 t) - g (Function.update q' 0 t)) (fun t _ => by
          rw [Real.norm_eq_abs]
          refine (hgH _ _).trans ?_
          exact mul_le_mul_of_nonneg_left
            (Real.rpow_le_rpow dist_nonneg (hupd q q' t) hα0.le) (by linarith))
      rw [Real.norm_eq_abs] at this
      exact this.trans (le_of_eq (by ring))
    have hA2 : |∫ t in q' 0..q 0, g (Function.update q' 0 t)| ≤ Kc * |q 0 - q' 0| := by
      have := intervalIntegral.norm_integral_le_of_norm_le_const (a := q' 0) (b := q 0) (C := Kc)
        (f := fun t => g (Function.update q' 0 t)) (fun t _ => by rw [Real.norm_eq_abs]; exact hgB _)
      rwa [Real.norm_eq_abs] at this
    have heq' : Ψ q - Ψ q' =
        (∫ t in c..q 0, (g (Function.update q 0 t) - g (Function.update q' 0 t))) +
          ∫ t in q' 0..q 0, g (Function.update q' 0 t) := by
      show (∫ t in c..q 0, g (Function.update q 0 t)) -
        (∫ t in c..q' 0, g (Function.update q' 0 t)) = _
      rw [hsub, ← hsplit]
      ring
    rw [heq']
    have := abs_add_le (∫ t in c..q 0, (g (Function.update q 0 t) - g (Function.update q' 0 t)))
      (∫ t in q' 0..q 0, g (Function.update q' 0 t))
    linarith
  have hpot : ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ →
      ∫ q, g q * φ q = -(∫ q, Ψ q * smthGrad φ q 0) := by
    intro φ hφ hφc
    have hφd : Differentiable ℝ φ := hφ.differentiable (by simp)
    have hdφc : Continuous fun q => fderiv ℝ φ q (Pi.single 0 1) :=
      (hφ.continuous_fderiv (by simp)).clm_apply continuous_const
    have hΨline : ∀ q, HasLineDerivAt ℝ Ψ (g q) q (Pi.single 0 1) := by
      intro q
      have hG := intervalIntegral.integral_hasDerivAt_right ((hgu q).intervalIntegrable c (q 0 + 0))
          ((hgu q).stronglyMeasurableAtFilter _ _) (hgu q).continuousAt
      have hG2 := hG.comp_const_add (q 0) 0
      have he : (fun t : ℝ => Ψ (q + t • (Pi.single 0 1 : Fin 2 → ℝ))) =
          fun x => ∫ τ in c..(q 0 + x), g (Function.update q 0 τ) := by
        funext t
        have h1 : (q + t • (Pi.single 0 1 : Fin 2 → ℝ)) 0 = q 0 + t := by simp
        have h2 : ∀ τ : ℝ, Function.update (q + t • (Pi.single 0 1 : Fin 2 → ℝ)) 0 τ =
            Function.update q 0 τ := by
          intro τ; funext i; fin_cases i <;> simp
        show (∫ τ in c..(q + t • (Pi.single 0 1 : Fin 2 → ℝ)) 0,
          g (Function.update (q + t • (Pi.single 0 1 : Fin 2 → ℝ)) 0 τ)) = _
        rw [h1]
        simp only [h2]
      have hq : g (Function.update q 0 (q 0 + 0)) = g q := by
        rw [add_zero, Function.update_eq_self]
      rw [hq] at hG2
      show HasDerivAt (fun t : ℝ => Ψ (q + t • (Pi.single 0 1 : Fin 2 → ℝ))) (g q) 0
      rw [he]
      exact hG2
    have hφline : ∀ q, HasLineDerivAt ℝ φ (fderiv ℝ φ q (Pi.single 0 1)) q (Pi.single 0 1) :=
      fun q => (hφd q).hasFDerivAt.hasLineDerivAt _
    have hI1 : Integrable (fun q => g q * φ q) :=
      (hgc.mul hφ.continuous).integrable_of_hasCompactSupport (hφc.mul_left (f := g))
    have hI2 : Integrable (fun q => Ψ q * fderiv ℝ φ q (Pi.single 0 1)) :=
      (hΨc.mul hdφc).integrable_of_hasCompactSupport
        ((HasCompactSupport.fderiv_apply ℝ hφc (Pi.single 0 1)).mul_left (f := Ψ))
    have hI3 : Integrable (fun q => Ψ q * φ q) :=
      (hΨc.mul hφ.continuous).integrable_of_hasCompactSupport (hφc.mul_left (f := Ψ))
    have key := integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable
      (μ := volume) (B := ContinuousLinearMap.mul ℝ ℝ) (f := Ψ) (f' := g) (g := φ)
      (g' := fun q => fderiv ℝ φ q (Pi.single 0 1)) (v := Pi.single 0 1) hI1 hI2 hI3 hΨline hφline
    simp only [ContinuousLinearMap.mul_apply'] at key
    show ∫ q, g q * φ q = -(∫ q, Ψ q * fderiv ℝ φ q (Pi.single 0 1))
    rw [key, neg_neg]
  
  let V : Fin 2 → E2 → ℝ := fun i y => ∑ b : Fin 2, A y i b * pd2 b u y + R i y
  let Vt : Fin 2 → (Fin 2 → ℝ) → ℝ := fun i q => V i (ee.symm q)
  let a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ := fun q i j => A (ee.symm q) i j
  let F : (Fin 2 → ℝ) → Fin 2 → ℝ := fun q i => -R i (ee.symm q) - (if i = 0 then Ψ q else 0)
  let w : (Fin 2 → ℝ) → ℝ := fun q => u (ee.symm q)
  have h10 : ¬ ((1 : Fin 2) = 0) := by decide
  
  have hsol : smthLinSol a F w (Metric.ball (ee x₀) (s / 2)) := by
    intro φ hφ hφc hφQ
    have hφd : Differentiable ℝ φ := hφ.differentiable (by simp)
    have hdφ : ∀ i : Fin 2, Continuous fun q => fderiv ℝ φ q (Pi.single i 1) :=
      fun i => (hφ.continuous_fderiv (by simp)).clm_apply continuous_const
    have hdφs : ∀ i : Fin 2, HasCompactSupport fun q => fderiv ℝ φ q (Pi.single i 1) :=
      fun i => HasCompactSupport.fderiv_apply ℝ hφc _
    have hVts : ∀ i, ContDiff ℝ ∞ (Vt i) := fun i => (hV i).comp ee.symm.contDiff
    have hVtd : ∀ i, Differentiable ℝ (Vt i) := fun i => (hVts i).differentiable (by simp)
    have hVtc : ∀ i, Continuous (Vt i) := fun i => (hVts i).continuous
    have hdVt : ∀ i j : Fin 2, Continuous fun q => fderiv ℝ (Vt i) q (Pi.single j 1) :=
      fun i j => ((hVts i).continuous_fderiv (by simp)).clm_apply continuous_const
    have hchV : ∀ (i : Fin 2) (q : Fin 2 → ℝ),
        fderiv ℝ (Vt i) q (Pi.single i 1) = pd2 i (V i) (ee.symm q) :=
      fun i q => hchain (V i) q i
    have hI : ∀ i : Fin 2, Integrable (fun q => Vt i q * fderiv ℝ φ q (Pi.single i 1)) :=
      fun i => ((hVtc i).mul (hdφ i)).integrable_of_hasCompactSupport
        ((hdφs i).mul_left (f := Vt i))
    have hIΨ : Integrable (fun q => Ψ q * fderiv ℝ φ q (Pi.single 0 1)) :=
      (hΨc.mul (hdφ 0)).integrable_of_hasCompactSupport ((hdφs 0).mul_left (f := Ψ))
    have hIf : ∀ i : Fin 2, Integrable (fun q => fderiv ℝ (Vt i) q (Pi.single i 1) * φ q) :=
      fun i => ((hdVt i i).mul hφ.continuous).integrable_of_hasCompactSupport
        (hφc.mul_left (f := fun q => fderiv ℝ (Vt i) q (Pi.single i 1)))
    have hibp : ∀ i : Fin 2, ∫ q, Vt i q * fderiv ℝ φ q (Pi.single i 1) =
        -∫ q, fderiv ℝ (Vt i) q (Pi.single i 1) * φ q := by
      intro i
      exact integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (hIf i) (hI i)
        (((hVtc i).mul hφ.continuous).integrable_of_hasCompactSupport (hφc.mul_left (f := Vt i)))
        (hVtd i) hφd
    have hpt : ∀ q, (fderiv ℝ (Vt 0) q (Pi.single 0 1) + fderiv ℝ (Vt 1) q (Pi.single 1 1)) *
        φ q = -(g q * φ q) := by
      intro q
      by_cases hq : q ∈ tsupport φ
      · have hqQ := hφQ hq
        rw [hchV 0 q, hchV 1 q, hgQ q hqQ]
        have h' : pd2 0 (V 0) (ee.symm q) + pd2 1 (V 1) (ee.symm q) = -f (ee.symm q) := by
          have := heq _ (G1 q hqQ)
          rw [Fin.sum_univ_two] at this
          exact this
        rw [h']
        ring
      · rw [image_eq_zero_of_notMem_tsupport hq]
        ring
    have hI01 : Integrable (fun q => Vt 0 q * fderiv ℝ φ q (Pi.single 0 1) +
        Vt 1 q * fderiv ℝ φ q (Pi.single 1 1)) := (hI 0).add (hI 1)
    have hDint : Integrable (fun q => Vt 0 q * fderiv ℝ φ q (Pi.single 0 1) +
        Vt 1 q * fderiv ℝ φ q (Pi.single 1 1) + Ψ q * fderiv ℝ φ q (Pi.single 0 1)) :=
      hI01.add hIΨ
    have hD0 : ∫ q, (Vt 0 q * fderiv ℝ φ q (Pi.single 0 1) +
        Vt 1 q * fderiv ℝ φ q (Pi.single 1 1) + Ψ q * fderiv ℝ φ q (Pi.single 0 1)) = 0 := by
      rw [integral_add hI01 hIΨ, integral_add (hI 0) (hI 1), hibp 0, hibp 1]
      have h1 : (∫ q, fderiv ℝ (Vt 0) q (Pi.single 0 1) * φ q) +
          (∫ q, fderiv ℝ (Vt 1) q (Pi.single 1 1) * φ q) = -∫ q, g q * φ q := by
        rw [← integral_add (hIf 0) (hIf 1), ← integral_neg]
        congr 1
        funext q
        rw [← hpt q]
        ring
      have h2 := hpot φ hφ hφc
      have h3 : ∫ q, Ψ q * smthGrad φ q 0 = ∫ q, Ψ q * fderiv ℝ φ q (Pi.single 0 1) := rfl
      linarith
    have hLpt : ∀ q, (∑ i : Fin 2, ∑ j : Fin 2, a q i j * smthGrad w q j * smthGrad φ q i) =
        (∑ i : Fin 2, F q i * smthGrad φ q i) +
          (Vt 0 q * fderiv ℝ φ q (Pi.single 0 1) + Vt 1 q * fderiv ℝ φ q (Pi.single 1 1) +
            Ψ q * fderiv ℝ φ q (Pi.single 0 1)) := by
      intro q
      have hw : ∀ j, smthGrad w q j = pd2 j u (ee.symm q) := fun j => hchain u q j
      simp only [Fin.sum_univ_two, hw]
      simp only [smthGrad, a, F, Vt, V, Fin.sum_univ_two]
      simp only [if_neg h10, ite_true, if_true, ↓reduceIte]
      ring
    rw [show (fun q => ∑ i : Fin 2, ∑ j : Fin 2, a q i j * smthGrad w q j * smthGrad φ q i) =
      fun q => (∑ i : Fin 2, F q i * smthGrad φ q i) +
          (Vt 0 q * fderiv ℝ φ q (Pi.single 0 1) + Vt 1 q * fderiv ℝ φ q (Pi.single 1 1) +
            Ψ q * fderiv ℝ φ q (Pi.single 0 1)) from funext hLpt]
    by_cases hRr : Integrable (fun q => ∑ i : Fin 2, F q i * smthGrad φ q i)
    · rw [integral_add hRr hDint, hD0, add_zero]
    · rw [integral_undef hRr, integral_undef]
      intro hL
      apply hRr
      refine (hL.sub hDint).congr (Filter.Eventually.of_forall fun q => ?_)
      simp
  
  have hFH : ∀ q ∈ Metric.ball (ee x₀) (s / 2), ∀ q' ∈ Metric.ball (ee x₀) (s / 2),
      ∀ i : Fin 2, |F q i - F q' i| ≤ 5 * Kc * dist q q' ^ α := by
    intro q hq q' hq'
    have hd1 := G3c q hq q' hq'
    have hdα : 0 ≤ dist q q' ^ α := Real.rpow_nonneg dist_nonneg _
    have hRR : ∀ i : Fin 2, |R i (ee.symm q) - R i (ee.symm q')| ≤ 2 * Kc * dist q q' ^ α := by
      intro i
      have h := hRH _ (G1 q hq) _ (G1 q' hq') i
      have h2 := G3b q q'
      calc _ ≤ Kc * dist (ee.symm q) (ee.symm q') ^ α := h
        _ ≤ Kc * (2 * dist q q' ^ α) := mul_le_mul_of_nonneg_left h2 hKc
        _ = 2 * Kc * dist q q' ^ α := by ring
    rw [Fin.forall_fin_two]
    constructor
    · show |(-R 0 (ee.symm q) - (if (0 : Fin 2) = 0 then Ψ q else 0)) -
          (-R 0 (ee.symm q') - (if (0 : Fin 2) = 0 then Ψ q' else 0))| ≤ 5 * Kc * dist q q' ^ α
      rw [if_pos rfl, if_pos rfl]
      have e : (-R 0 (ee.symm q) - Ψ q) - (-R 0 (ee.symm q') - Ψ q') =
          -((R 0 (ee.symm q) - R 0 (ee.symm q')) + (Ψ q - Ψ q')) := by ring
      rw [e, abs_neg]
      have h1 := abs_add_le (R 0 (ee.symm q) - R 0 (ee.symm q')) (Ψ q - Ψ q')
      have h2 := hRR 0
      have h3 := hΨH q q'
      have h4 : |q 0 - q' 0| ≤ dist q q' ^ α := by
        have := dist_le_pi_dist q q' 0
        rw [Real.dist_eq] at this
        exact this.trans hd1
      have h5 := G4 q hq
      have h6 : Kc * |q 0 - q' 0| ≤ Kc * dist q q' ^ α := mul_le_mul_of_nonneg_left h4 hKc
      have h7 : 2 * Kc * |q 0 - c| * dist q q' ^ α ≤ 2 * Kc * dist q q' ^ α := by
        have h8 : 0 ≤ 2 * Kc * dist q q' ^ α := by positivity
        nlinarith [abs_nonneg (q 0 - c)]
      nlinarith
    · show |(-R 1 (ee.symm q) - (if (1 : Fin 2) = 0 then Ψ q else 0)) -
          (-R 1 (ee.symm q') - (if (1 : Fin 2) = 0 then Ψ q' else 0))| ≤ 5 * Kc * dist q q' ^ α
      rw [if_neg h10, if_neg h10]
      have e : (-R 1 (ee.symm q) - 0) - (-R 1 (ee.symm q') - 0) =
          -(R 1 (ee.symm q) - R 1 (ee.symm q')) := by ring
      rw [e, abs_neg]
      have h2 := hRR 1
      have h8 : 0 ≤ Kc * dist q q' ^ α := mul_nonneg hKc hdα
      nlinarith
  have hdata : smthSchauderData θ (5 * Kc).toNNReal α.toNNReal a F w
      (Metric.ball (ee x₀) (s / 2)) := by
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, hsol⟩
    · intro q hq ξ
      exact hell _ (G1 q hq) ξ
    · intro q hq i j
      rw [hKc5]
      have := hAb _ (G1 q hq) i j
      show |A (ee.symm q) i j| ≤ 5 * Kc
      linarith
    · refine (hconv _ (5 * Kc) α (by linarith) hα0.le).2.2 a (fun q hq q' hq' i j => ?_)
      show |A (ee.symm q) i j - A (ee.symm q') i j| ≤ 5 * Kc * dist q q' ^ α
      have h1 := hAH _ (G1 q hq) _ (G1 q' hq') i j
      have h2 := G3b q q'
      have h3 : 0 ≤ dist q q' ^ α := Real.rpow_nonneg dist_nonneg _
      calc _ ≤ Kc * dist (ee.symm q) (ee.symm q') ^ α := h1
        _ ≤ Kc * (2 * dist q q' ^ α) := mul_le_mul_of_nonneg_left h2 hKc
        _ ≤ 5 * Kc * dist q q' ^ α := by nlinarith [mul_nonneg hKc h3]
    · intro q hq
      rw [hKc5, Fin.forall_fin_two]
      have hR0 := hRb _ (G1 q hq)
      have hΨq := hΨB q
      have hq0 := G4 q hq
      have hKq : Kc * |q 0 - c| ≤ Kc := mul_le_of_le_one_right hKc hq0
      constructor
      · show |-R 0 (ee.symm q) - (if (0 : Fin 2) = 0 then Ψ q else 0)| ≤ 5 * Kc
        rw [if_pos rfl, show -R 0 (ee.symm q) - Ψ q = -(R 0 (ee.symm q) + Ψ q) by ring, abs_neg]
        have := abs_add_le (R 0 (ee.symm q)) (Ψ q)
        linarith [hR0 0]
      · show |-R 1 (ee.symm q) - (if (1 : Fin 2) = 0 then Ψ q else 0)| ≤ 5 * Kc
        rw [if_neg h10, sub_zero, abs_neg]
        linarith [hR0 1]
    · exact (hconv _ (5 * Kc) α (by linarith) hα0.le).2.1 F hFH
    · intro q hq
      rw [hKc5]
      have := huB _ (G1 q hq)
      show |u (ee.symm q)| ≤ 5 * Kc
      linarith
    · exact ((hu.comp ee.symm.contDiff).of_le (by simp)).contDiffOn
    · exact gq w (hu.comp ee.symm.contDiff) (ee x₀) (s / 2) (by linarith) α.toNNReal
        (Real.toNNReal_lt_one.mpr hα1).le
  
  obtain ⟨hHol, hBd⟩ := hM' (ee x₀) a F w hdata
  intro y hy z hz i
  have hyQ : ee y ∈ Metric.ball (ee x₀) (s / 2 / 2) := by
    rw [Metric.mem_ball] at hy ⊢
    have := (geom y x₀).1
    linarith
  have hzQ : ee z ∈ Metric.ball (ee x₀) (s / 2 / 2) := by
    rw [Metric.mem_ball] at hz ⊢
    have := (geom z x₀).1
    linarith
  have hpy : pd2 i u y = smthGrad w (ee y) i := by
    rw [show smthGrad w (ee y) i = pd2 i u (ee.symm (ee y)) from hchain u (ee y) i,
      ContinuousLinearEquiv.symm_apply_apply]
  have hpz : pd2 i u z = smthGrad w (ee z) i := by
    rw [show smthGrad w (ee z) i = pd2 i u (ee.symm (ee z)) from hchain u (ee z) i,
      ContinuousLinearEquiv.symm_apply_apply]
  rw [hpy, hpz]
  constructor
  · calc |smthGrad w (ee y) i| = ‖smthGrad w (ee y) i‖ := (Real.norm_eq_abs _).symm
      _ ≤ ‖smthGrad w (ee y)‖ := norm_le_pi_norm _ i
      _ ≤ M' := hBd _ hyQ
  · calc |smthGrad w (ee y) i - smthGrad w (ee z) i|
          = dist (smthGrad w (ee y) i) (smthGrad w (ee z) i) := (Real.dist_eq _ _).symm
      _ ≤ dist (smthGrad w (ee y)) (smthGrad w (ee z)) := dist_le_pi_dist _ _ i
      _ ≤ M' * dist (ee y) (ee z) ^ ((α.toNNReal : NNReal) : ℝ) := hHol.dist_le hyQ hzQ
      _ ≤ M' * dist y z ^ α := by
        rw [hαc]
        exact mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow dist_nonneg (geom y z).1 hα0.le) M'.coe_nonneg

theorem pdls_moll_ae (g : E2 → ℝ) (hg : Integrable g) (δ : ℕ → ℝ) (hδ0 : ∀ j, 0 < δ j)
    (hδ : Tendsto δ atTop (𝓝 0)) (η : ℕ → E2 → ℝ) (hηc : ∀ j, Continuous (η j))
    (hη0 : ∀ j z, 0 ≤ η j z) (hη1 : ∀ j, ∫ z, η j z = 1) (hηs : ∀ j z, δ j ≤ ‖z‖ → η j z = 0) :
    ∃ ns : ℕ → ℕ, StrictMono ns ∧
      ∀ᵐ x ∂volume, Tendsto (fun i => ∫ y, η (ns i) (x - y) * g y) atTop (𝓝 (g x)) :=
by
  have hs1 : ∀ j x, (∫ y, η j (x - y) * g y) = ∫ t, η j t * g (x - t) := by
    intro j x
    have h := MeasureTheory.integral_sub_left_eq_self
      (fun t => η j t * g (x - t)) (μ := (volume : Measure E2)) x
    simp only [sub_sub_cancel] at h
    exact h
  obtain ⟨hInt, hL1⟩ := elr_moll_L1 g hg η hηc hη0 hη1 δ hδ hηs
  set F : ℕ → E2 → ℝ := fun j x => ∫ y, η j (x - y) * g y with hFdef
  have hInt' : ∀ j, Integrable (fun x => F j x - g x) volume := by
    intro j
    refine (hInt j).congr (Filter.Eventually.of_forall (fun x => ?_))
    simp only [hFdef, hs1]
  have hL1' : Tendsto (fun j => ∫ x, |F j x - g x|) atTop (𝓝 0) := by
    refine hL1.congr (fun j => ?_)
    simp only [hFdef, hs1]
  have hmeas : ∀ j, AEStronglyMeasurable (F j) volume := by
    intro j
    have h := (hInt' j).add hg
    have e : (fun x => F j x - g x) + g = F j := by
      funext x
      simp
    rw [e] at h
    exact h.aestronglyMeasurable
  have hnorm : Tendsto (fun j => eLpNorm (F j - g) 1 volume) atTop (𝓝 0) := by
    have h2 : Tendsto (fun j => ENNReal.ofReal (∫ x, |F j x - g x|)) atTop
        (𝓝 (ENNReal.ofReal 0)) := ENNReal.tendsto_ofReal hL1'
    rw [ENNReal.ofReal_zero] at h2
    refine h2.congr (fun j => ?_)
    rw [eLpNorm_one_eq_lintegral_enorm]
    simp only [Pi.sub_apply]
    rw [← ofReal_integral_norm_eq_lintegral_enorm (hInt' j)]
    simp only [Real.norm_eq_abs]
  have hTIM : TendstoInMeasure volume F atTop g :=
    tendstoInMeasure_of_tendsto_eLpNorm one_ne_zero hmeas hg.aestronglyMeasurable hnorm
  obtain ⟨ns, hns, hae⟩ := hTIM.exists_seq_tendsto_ae
  exact ⟨ns, hns, hae⟩

theorem pdls_c1alpha_limit (α : ℝ) (hα0 : 0 < α) (hα1 : α ≤ 1) (x₀ : E2) (r M : ℝ) (hr : 0 < r)
    (v : ℕ → E2 → ℝ) (w : E2 → ℝ) (hv : ∀ j, ContDiff ℝ 1 (v j))
    (hb : ∀ j, ∀ y ∈ Metric.ball x₀ r, ∀ i : Fin 2, |pd2 i (v j) y| ≤ M)
    (hh : ∀ j, ∀ y ∈ Metric.ball x₀ r, ∀ z ∈ Metric.ball x₀ r, ∀ i : Fin 2,
      |pd2 i (v j) y - pd2 i (v j) z| ≤ M * dist y z ^ α)
    (hae : ∀ᵐ y ∂(volume.restrict (Metric.ball x₀ r)), Tendsto (fun j => v j y) atTop (𝓝 (w y))) :
    ∃ v' : E2 → ℝ, pcrHolLoc α 1 v' (Metric.ball x₀ r) ∧
      ∀ᵐ y ∂(volume.restrict (Metric.ball x₀ r)), w y = v' y :=
by
  have t_clm : ∀ D : E2 →L[ℝ] ℝ, (∀ h : E2, D h = h 0 * D (e2 0) + h 1 * D (e2 1)) ∧
      ‖D‖ ≤ |D (e2 0)| + |D (e2 1)| := by
    intro D
    have h1 : ∀ h : E2, D h = h 0 * D (e2 0) + h 1 * D (e2 1) := by
      intro h
      have : h = h 0 • e2 0 + h 1 • e2 1 := by
        ext i; fin_cases i <;> simp [e2]
      conv_lhs => rw [this]
      simp [map_add, map_smul]
    refine ⟨h1, ?_⟩
    refine ContinuousLinearMap.opNorm_le_bound _ (by positivity) (fun h => ?_)
    rw [h1, Real.norm_eq_abs]
    have a0 : |h 0| ≤ ‖h‖ := by simpa using PiLp.norm_apply_le h 0
    have a1 : |h 1| ≤ ‖h‖ := by simpa using PiLp.norm_apply_le h 1
    calc |h 0 * D (e2 0) + h 1 * D (e2 1)| ≤ |h 0| * |D (e2 0)| + |h 1| * |D (e2 1)| := by
          rw [← abs_mul, ← abs_mul]; exact abs_add_le _ _
      _ ≤ ‖h‖ * |D (e2 0)| + ‖h‖ * |D (e2 1)| := by gcongr
      _ = (|D (e2 0)| + |D (e2 1)|) * ‖h‖ := by ring
  have hx₀ : x₀ ∈ ball x₀ r := mem_ball_self hr
  have hM : 0 ≤ M := le_trans (abs_nonneg _) (hb 0 x₀ hx₀ 0)
  
  have t_taylor : ∀ j, ∀ y ∈ ball x₀ r, ∀ z ∈ ball x₀ r, |v j z - v j y| ≤ 2 * M * dist z y ∧
      |v j z - v j y - ((z 0 - y 0) * pd2 0 (v j) y + (z 1 - y 1) * pd2 1 (v j) y)|
        ≤ 2 * M * dist z y ^ α * dist z y := by
    intro j y hy z hz
    have hf : Differentiable ℝ (v j) := (hv j).differentiable one_ne_zero
    have hgrad : ∀ x ∈ ball x₀ r, ‖fderiv ℝ (v j) x‖ ≤ 2 * M := by
      intro x hx
      have := (t_clm (fderiv ℝ (v j) x)).2
      have h0 := hb j x hx 0
      have h1 := hb j x hx 1
      simp only [pd2] at h0 h1
      linarith
    constructor
    · have := Convex.norm_image_sub_le_of_norm_fderiv_le (fun x _ => hf x) hgrad
        (convex_ball x₀ r) hy hz
      rw [Real.norm_eq_abs, ← dist_eq_norm] at this
      exact this
    · obtain ⟨D, hD⟩ : ∃ D, D = fderiv ℝ (v j) y := ⟨_, rfl⟩
      have hgd : ∀ x, HasFDerivAt (fun x => v j x - D x) (fderiv ℝ (v j) x - D) x := fun x =>
        (hf x).hasFDerivAt.sub D.hasFDerivAt
      have hs : Convex ℝ (ball x₀ r ∩ closedBall y (dist z y)) :=
        (convex_ball _ _).inter (convex_closedBall _ _)
      have hbound : ∀ x ∈ ball x₀ r ∩ closedBall y (dist z y),
          ‖fderiv ℝ (fun x => v j x - D x) x‖ ≤ 2 * M * dist z y ^ α := by
        intro x hx
        rw [(hgd x).fderiv]
        have := (t_clm (fderiv ℝ (v j) x - D)).2
        simp only [ContinuousLinearMap.sub_apply] at this
        have h0 := hh j x hx.1 y hy 0
        have h1 := hh j x hx.1 y hy 1
        simp only [pd2] at h0 h1
        rw [← hD] at h0 h1
        have hd : dist x y ^ α ≤ dist z y ^ α :=
          Real.rpow_le_rpow dist_nonneg (mem_closedBall.1 hx.2) hα0.le
        have := mul_le_mul_of_nonneg_left hd hM
        linarith
      have key := hs.norm_image_sub_le_of_norm_fderiv_le
        (fun x _ => (hgd x).differentiableAt) hbound
        ⟨hy, mem_closedBall_self dist_nonneg⟩ ⟨hz, mem_closedBall.2 le_rfl⟩
      have e : D z - D y = (z 0 - y 0) * D (e2 0) + (z 1 - y 1) * D (e2 1) := by
        rw [← map_sub, (t_clm D).1]
        simp
      rw [Real.norm_eq_abs, ← dist_eq_norm] at key
      have e2' : v j z - D z - (v j y - D y) =
          v j z - v j y - ((z 0 - y 0) * pd2 0 (v j) y + (z 1 - y 1) * pd2 1 (v j) y) := by
        simp only [pd2]
        rw [← hD]
        linear_combination (-1 : ℝ) * e
      rw [← e2']
      exact key
  
  have t_values : ∀ y ∈ ball x₀ r, ∃ c, Tendsto (fun j => v j y) atTop (𝓝 c) := by
    intro y hy
    apply cauchySeq_tendsto_of_complete
    rw [Metric.cauchySeq_iff]
    intro ε hε
    have hs : 0 < r - dist y x₀ := by rw [mem_ball] at hy; linarith
    obtain ⟨η, hηdef⟩ : ∃ η, η = min (r - dist y x₀) (ε / (4 * (2 * M + 1))) := ⟨_, rfl⟩
    have hη0 : 0 < η := by rw [hηdef]; exact lt_min hs (by positivity)
    have hη1 : η ≤ r - dist y x₀ := by rw [hηdef]; exact min_le_left _ _
    have hη2 : η ≤ ε / (4 * (2 * M + 1)) := by rw [hηdef]; exact min_le_right _ _
    have hsub : ball y η ⊆ ball x₀ r := ball_subset_ball' (by linarith)
    have hae' : ∀ᵐ a ∂(volume.restrict (ball y η)),
        Tendsto (fun j => v j a) atTop (𝓝 (w a)) ∧ a ∈ ball y η :=
      (ae_restrict_of_ae_restrict_of_subset hsub hae).and (ae_restrict_mem measurableSet_ball)
    haveI : (ae (volume.restrict (ball y η))).NeBot := by
      rw [ae_neBot]
      intro h0
      rw [Measure.restrict_eq_zero] at h0
      exact (measure_ball_pos volume y hη0).ne' h0
    obtain ⟨a, hconv, ha⟩ := hae'.exists
    obtain ⟨N, hN⟩ := Metric.cauchySeq_iff.1 hconv.cauchySeq (ε / 3) (by positivity)
    refine ⟨N, fun m hm n hn => ?_⟩
    have haB := hsub ha
    have hda : dist y a ≤ η := by rw [dist_comm]; exact (mem_ball.1 ha).le
    have hLη : 2 * M * η ≤ ε / 4 := by
      calc 2 * M * η ≤ (2 * M + 1) * (ε / (4 * (2 * M + 1))) := by
            apply mul_le_mul (by linarith) hη2 hη0.le (by linarith)
        _ = ε / 4 := by field_simp
    have h1 := abs_le.1 (t_taylor m a haB y hy).1
    have h2 := abs_le.1 (t_taylor n a haB y hy).1
    have h3 := hN m hm n hn
    rw [Real.dist_eq] at h3 ⊢
    have h3' := abs_lt.1 h3
    have hLd : 2 * M * dist y a ≤ 2 * M * η := mul_le_mul_of_nonneg_left hda (by linarith)
    rw [abs_lt]
    constructor <;> linarith [h1.1, h1.2, h2.1, h2.2, h3'.1, h3'.2]
  obtain ⟨V, hVdef⟩ : ∃ V : E2 → ℝ, V = fun y => limUnder atTop (fun j => v j y) := ⟨_, rfl⟩
  have hV : ∀ y ∈ ball x₀ r, Tendsto (fun j => v j y) atTop (𝓝 (V y)) := by
    intro y hy
    rw [hVdef]
    exact tendsto_nhds_limUnder (t_values y hy)
  
  have t_grads : ∀ i : Fin 2, ∀ y ∈ ball x₀ r, ∃ c,
      Tendsto (fun j => pd2 i (v j) y) atTop (𝓝 c) := by
    intro i y hy
    apply cauchySeq_tendsto_of_complete
    rw [Metric.cauchySeq_iff]
    intro ε hε
    have hs : 0 < r - dist y x₀ := by rw [mem_ball] at hy; linarith
    obtain ⟨t, htdef⟩ : ∃ t, t = min ((r - dist y x₀) / 2) ((ε / (8 * (2 * M + 1))) ^ α⁻¹) :=
      ⟨_, rfl⟩
    have ht0 : 0 < t := by rw [htdef]; exact lt_min (by linarith) (by positivity)
    have ht1 : t < r - dist y x₀ := by
      have : t ≤ (r - dist y x₀) / 2 := by rw [htdef]; exact min_le_left _ _
      linarith
    have ht2 : t ^ α ≤ ε / (8 * (2 * M + 1)) := by
      have : t ≤ (ε / (8 * (2 * M + 1))) ^ α⁻¹ := by rw [htdef]; exact min_le_right _ _
      calc t ^ α ≤ ((ε / (8 * (2 * M + 1))) ^ α⁻¹) ^ α := Real.rpow_le_rpow ht0.le this hα0.le
        _ = ε / (8 * (2 * M + 1)) := Real.rpow_inv_rpow (by positivity) hα0.ne'
    have hKt : 2 * M * t ^ α ≤ ε / 8 := by
      calc 2 * M * t ^ α ≤ (2 * M + 1) * (ε / (8 * (2 * M + 1))) :=
            mul_le_mul (by linarith) ht2 (Real.rpow_nonneg ht0.le _) (by linarith)
        _ = ε / 8 := by field_simp
    obtain ⟨z, hzdef⟩ : ∃ z : E2, z = y + t • e2 i := ⟨_, rfl⟩
    have hdz : dist z y = t := by
      rw [hzdef, dist_eq_norm, add_sub_cancel_left, norm_smul, EuclideanSpace.norm_single,
        norm_one, mul_one, Real.norm_eq_abs, abs_of_pos ht0]
    have hz : z ∈ ball x₀ r := by
      rw [mem_ball]
      have := dist_triangle z y x₀
      linarith
    have hsum : ∀ j, (z 0 - y 0) * pd2 0 (v j) y + (z 1 - y 1) * pd2 1 (v j) y =
        t * pd2 i (v j) y := by
      intro j
      rw [hzdef]
      fin_cases i <;> simp [e2]
    have hQ : CauchySeq (fun j => v j z - v j y) := ((hV z hz).sub (hV y hy)).cauchySeq
    obtain ⟨N, hN⟩ := Metric.cauchySeq_iff.1 hQ (ε * t / 2) (by positivity)
    refine ⟨N, fun m hm n hn => ?_⟩
    have h1 := (t_taylor m y hy z hz).2
    have h2 := (t_taylor n y hy z hz).2
    rw [hsum, hdz] at h1 h2
    have h1' := abs_le.1 h1
    have h2' := abs_le.1 h2
    have h3 := hN m hm n hn
    rw [Real.dist_eq] at h3 ⊢
    have h3' := abs_lt.1 h3
    have hKtt : 2 * M * t ^ α * t ≤ ε / 8 * t := mul_le_mul_of_nonneg_right hKt ht0.le
    rw [abs_lt]
    constructor
    · have : t * (-ε) < t * (pd2 i (v m) y - pd2 i (v n) y) := by
        nlinarith [h1'.1, h1'.2, h2'.1, h2'.2, h3'.1, h3'.2]
      exact lt_of_mul_lt_mul_left this ht0.le
    · have : t * (pd2 i (v m) y - pd2 i (v n) y) < t * ε := by
        nlinarith [h1'.1, h1'.2, h2'.1, h2'.2, h3'.1, h3'.2]
      exact lt_of_mul_lt_mul_left this ht0.le
  obtain ⟨G, hGdef⟩ : ∃ G : Fin 2 → E2 → ℝ,
      G = fun i y => limUnder atTop (fun j => pd2 i (v j) y) := ⟨_, rfl⟩
  have hGt : ∀ i : Fin 2, ∀ y ∈ ball x₀ r, Tendsto (fun j => pd2 i (v j) y) atTop (𝓝 (G i y)) := by
    intro i y hy
    rw [hGdef]
    exact tendsto_nhds_limUnder (t_grads i y hy)
  
  have hG : ∀ i : Fin 2, ∀ y ∈ ball x₀ r, ∀ z ∈ ball x₀ r,
      |G i y - G i z| ≤ M * dist y z ^ α := fun i y hy z hz =>
    le_of_tendsto' (((hGt i y hy).sub (hGt i z hz)).abs) (fun j => hh j y hy z hz i)
  have htayV : ∀ y ∈ ball x₀ r, ∀ z ∈ ball x₀ r,
      |V z - V y - ((z 0 - y 0) * G 0 y + (z 1 - y 1) * G 1 y)|
        ≤ 2 * M * dist z y ^ α * dist z y := fun y hy z hz =>
    le_of_tendsto' ((((hV z hz).sub (hV y hy)).sub
      (((hGt 0 y hy).const_mul (z 0 - y 0)).add ((hGt 1 y hy).const_mul (z 1 - y 1)))).abs)
      (fun j => (t_taylor j y hy z hz).2)
  
  have t_c1 : pcrHolLoc α 1 V (ball x₀ r) := by
    obtain ⟨L, hLdef⟩ : ∃ L : E2 → E2 →L[ℝ] ℝ, L = fun y =>
        G 0 y • EuclideanSpace.proj (0 : Fin 2) + G 1 y • EuclideanSpace.proj (1 : Fin 2) :=
      ⟨_, rfl⟩
    have hL : ∀ y h, L y h = h 0 * G 0 y + h 1 * G 1 y := by
      intro y h; rw [hLdef]; simp; ring
    have hderiv : ∀ y ∈ ball x₀ r, HasFDerivAt V (L y) y := by
      intro y hy
      rw [hasFDerivAt_iff_isLittleO_nhds_zero]
      refine Asymptotics.IsLittleO.of_bound (fun c hc => ?_)
      have hs : 0 < r - dist y x₀ := by rw [mem_ball] at hy; linarith
      have hev1 : ∀ᶠ h : E2 in 𝓝 0, h ∈ ball (0 : E2) (r - dist y x₀) := ball_mem_nhds 0 hs
      have hcont : Tendsto (fun h : E2 => 2 * M * ‖h‖ ^ α) (𝓝 0)
          (𝓝 (2 * M * ‖(0 : E2)‖ ^ α)) :=
        ((continuous_const.mul (continuous_norm.rpow_const (fun _ => Or.inr hα0.le))).tendsto 0)
      have h00 : 2 * M * ‖(0 : E2)‖ ^ α < c := by
        rw [norm_zero, Real.zero_rpow hα0.ne', mul_zero]; exact hc
      have hev2 : ∀ᶠ h : E2 in 𝓝 0, 2 * M * ‖h‖ ^ α ≤ c := hcont.eventually (ge_mem_nhds h00)
      filter_upwards [hev1, hev2] with h h1 h2
      rw [mem_ball_zero_iff] at h1
      have hz : y + h ∈ ball x₀ r := by
        rw [mem_ball]
        have := dist_triangle (y + h) y x₀
        rw [dist_eq_norm (y + h) y, add_sub_cancel_left] at this
        linarith
      have key := htayV y hy (y + h) hz
      have e1 : dist (y + h) y = ‖h‖ := by rw [dist_eq_norm, add_sub_cancel_left]
      rw [e1] at key
      rw [Real.norm_eq_abs, hL]
      have e2' : V (y + h) - V y - (h 0 * G 0 y + h 1 * G 1 y) =
          V (y + h) - V y - (((y + h) 0 - y 0) * G 0 y + ((y + h) 1 - y 1) * G 1 y) := by
        simp
      rw [e2']
      calc _ ≤ 2 * M * ‖h‖ ^ α * ‖h‖ := key
        _ ≤ c * ‖h‖ := mul_le_mul_of_nonneg_right h2 (norm_nonneg _)
    have hfd : ∀ y ∈ ball x₀ r, fderiv ℝ V y = L y := fun y hy => (hderiv y hy).fderiv
    have hLe : ∀ y i, L y (e2 i) = G i y := by
      intro y i; rw [hL]; fin_cases i <;> simp [e2]
    have hLn : ∀ y ∈ ball x₀ r, ∀ z ∈ ball x₀ r, ‖L y - L z‖ ≤ 2 * M * dist y z ^ α := by
      intro y hy z hz
      have := (t_clm (L y - L z)).2
      simp only [ContinuousLinearMap.sub_apply, hLe] at this
      have h0 := hG 0 y hy z hz
      have h1 := hG 1 y hy z hz
      linarith
    have hdiff : DifferentiableOn ℝ V (ball x₀ r) := fun y hy =>
      (hderiv y hy).differentiableAt.differentiableWithinAt
    have hcont : ContinuousOn (fderiv ℝ V) (ball x₀ r) := by
      rw [Metric.continuousOn_iff]
      intro b hb ε hε
      refine ⟨(ε / (2 * M + 1)) ^ α⁻¹, by positivity, fun a ha hab => ?_⟩
      rw [hfd a ha, hfd b hb, dist_eq_norm]
      have hd : dist a b ^ α < ε / (2 * M + 1) := by
        calc dist a b ^ α < ((ε / (2 * M + 1)) ^ α⁻¹) ^ α :=
              Real.rpow_lt_rpow dist_nonneg hab hα0
          _ = ε / (2 * M + 1) := Real.rpow_inv_rpow (by positivity) hα0.ne'
      have h2 : 2 * M * dist a b ^ α ≤ 2 * M * (ε / (2 * M + 1)) :=
        mul_le_mul_of_nonneg_left hd.le (by linarith)
      have h3 : 2 * M * (ε / (2 * M + 1)) < ε := by
        rw [mul_div_assoc', div_lt_iff₀ (by linarith)]
        nlinarith
      linarith [hLn a ha b hb]
    have hC1 : ContDiffOn ℝ ((0 : WithTop ℕ∞) + 1) V (ball x₀ r) :=
      (contDiffOn_succ_iff_fderiv_of_isOpen isOpen_ball).2
        ⟨hdiff, fun h => by simp at h, contDiffOn_zero.2 hcont⟩
    refine ⟨by simpa using hC1, fun x hx => ?_⟩
    have hs : 0 < r - dist x x₀ := by rw [mem_ball] at hx; linarith
    refine ⟨r - dist x x₀, hs, ball_subset_ball' (by linarith), 2 * M, fun y hy z hz => ?_⟩
    have hyB : y ∈ ball x₀ r := ball_subset_ball' (by linarith) hy
    have hzB : z ∈ ball x₀ r := ball_subset_ball' (by linarith) hz
    refine ContinuousMultilinearMap.opNorm_le_bound
      (mul_nonneg (by linarith) (Real.rpow_nonneg dist_nonneg _)) (fun m => ?_)
    rw [ContinuousMultilinearMap.sub_apply, iteratedFDeriv_one_apply, iteratedFDeriv_one_apply,
      hfd y hyB, hfd z hzB, Fin.prod_univ_one, ← ContinuousLinearMap.sub_apply]
    exact (ContinuousLinearMap.le_opNorm _ _).trans
      (mul_le_mul_of_nonneg_right (hLn y hyB z hzB) (norm_nonneg _))
  
  refine ⟨V, t_c1, ?_⟩
  filter_upwards [hae, ae_restrict_mem measurableSet_ball] with y hy hyB
  exact tendsto_nhds_unique hy (hV y hyB)

theorem pdls_C1alpha (S : Set E2) (hS : IsOpen S)
    (A : E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hA : ∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) S)
    (hApd : ∀ x ∈ S, (A x).PosDef)
    (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1)
    (F : E2 → ℝ) (hF : pcrHolLoc α 0 F S)
    (w : E2 → ℝ) (G : Fin 2 → E2 → ℝ)
    (hL2 : ∀ L : Set E2, IsCompact L → L ⊆ S →
      MemLp w 2 (volume.restrict L) ∧ ∀ k, MemLp (G k) 2 (volume.restrict L))
    (p : ℕ) (hp : 2 ≤ (p : ℝ) * (1 - α))
    (hLp : ∀ L : Set E2, IsCompact L → L ⊆ S → ∀ k, MemLp (G k) p (volume.restrict L))
    (hgrad : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ S →
      ∀ k : Fin 2, ∫ x, w x * pd2 k ζ x = -(∫ x, G k x * ζ x))
    (hweak : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ S →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * G b x * pd2 a ζ x = ∫ x, F x * ζ x) :
    ∀ x₀ ∈ S, ∃ r : ℝ, 0 < r ∧ Metric.ball x₀ r ⊆ S ∧ ∃ v : E2 → ℝ,
      pcrHolLoc α 1 v (Metric.ball x₀ r) ∧ ∀ᵐ y ∂(volume.restrict (Metric.ball x₀ r)), w y = v y :=
by
  intro x₀ hx₀
  
  have hFc : ContinuousOn F S := hF.1.continuousOn
  obtain ⟨ρF, hρF, hBF, C₀, hC₀⟩ := hF.2 x₀ hx₀
  have hFhol : ∀ y ∈ Metric.ball x₀ ρF, ∀ z ∈ Metric.ball x₀ ρF,
      |F y - F z| ≤ max C₀ 0 * dist y z ^ α := by
    intro y hy z hz
    have h := hC₀ y hy z hz
    have e : ‖iteratedFDeriv ℝ 0 F y - iteratedFDeriv ℝ 0 F z‖ = |F y - F z| := by
      rw [iteratedFDeriv_zero_eq_comp]
      simp only [Function.comp]
      rw [← map_sub, LinearIsometryEquiv.norm_map, Real.norm_eq_abs]
    rw [e] at h
    exact h.trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.rpow_nonneg dist_nonneg _))
  
  obtain ⟨ρ, hρ0, hρ14, hρF8⟩ : ∃ ρ : ℝ, 0 < ρ ∧ ρ ≤ 1 / 4 ∧ ρ ≤ ρF / 8 :=
    ⟨min (1 / 4) (ρF / 8), lt_min (by norm_num) (by linarith), min_le_left _ _, min_le_right _ _⟩
  have hKc : IsCompact (Metric.closedBall x₀ (4 * ρ)) := isCompact_closedBall _ _
  have hKm : MeasurableSet (Metric.closedBall x₀ (4 * ρ)) := measurableSet_closedBall
  have hKconv : Convex ℝ (Metric.closedBall x₀ (4 * ρ)) := convex_closedBall _ _
  have hKF : Metric.closedBall x₀ (4 * ρ) ⊆ Metric.ball x₀ ρF :=
    Metric.closedBall_subset_ball (by linarith)
  have hKS : Metric.closedBall x₀ (4 * ρ) ⊆ S := hKF.trans hBF
  have hB3K : Metric.ball x₀ (3 * ρ) ⊆ Metric.closedBall x₀ (4 * ρ) :=
    (Metric.ball_subset_ball (by linarith)).trans Metric.ball_subset_closedBall
  have hB2B3 : Metric.ball x₀ (2 * ρ) ⊆ Metric.ball x₀ (3 * ρ) :=
    Metric.ball_subset_ball (by linarith)
  have hB2K : Metric.ball x₀ (2 * ρ) ⊆ Metric.closedBall x₀ (4 * ρ) := hB2B3.trans hB3K
  have hB3F : Metric.ball x₀ (3 * ρ) ⊆ Metric.ball x₀ ρF := hB3K.trans hKF
  
  have hp3 : 3 ≤ p := by
    have hp0 : (0 : ℝ) ≤ p := Nat.cast_nonneg p
    have hp2 : (2 : ℝ) ≤ p := by nlinarith [mul_nonneg hp0 hα0.le]
    have h1 : (2 : ℝ) < p := by nlinarith [mul_pos (by linarith : (0 : ℝ) < p) hα0]
    have : 2 < p := by exact_mod_cast h1
    omega
  
  haveI hKfin : IsFiniteMeasure (volume.restrict (Metric.closedBall x₀ (4 * ρ))) :=
    isFiniteMeasure_restrict.mpr hKc.measure_lt_top.ne
  have hGi : ∀ b, IntegrableOn (G b) (Metric.closedBall x₀ (4 * ρ)) := fun b =>
    ((hL2 _ hKc hKS).2 b).integrable (by norm_num)
  have hwi : IntegrableOn w (Metric.closedBall x₀ (4 * ρ)) :=
    ((hL2 _ hKc hKS).1).integrable (by norm_num)
  have hwint : Integrable ((Metric.closedBall x₀ (4 * ρ)).indicator w) :=
    hwi.integrable_indicator hKm
  have hIntA : ∀ a : Fin 2, Integrable ((Metric.closedBall x₀ (4 * ρ)).indicator
      (fun y => ∑ b : Fin 2, A y a b * G b y)) := by
    intro a
    refine IntegrableOn.integrable_indicator ?_ hKm
    exact integrable_finset_sum _ (fun b _ =>
      IntegrableOn.continuousOn_mul ((hA a b).continuousOn.mono hKS) (hGi b) hKc)
  have hFi : IntegrableOn F (Metric.closedBall x₀ (4 * ρ)) :=
    ContinuousOn.integrableOn_compact hKc (hFc.mono hKS)
  have hF2 : ∀ L : Set E2, IsCompact L → L ⊆ S → MemLp F 2 (volume.restrict L) := by
    intro L hL hLW
    obtain ⟨C, hC⟩ := hL.exists_bound_of_continuousOn (hFc.mono hLW)
    haveI : IsFiniteMeasure (volume.restrict L) :=
      isFiniteMeasure_restrict.mpr hL.measure_lt_top.ne
    exact MemLp.of_bound ((hFc.mono hLW).aestronglyMeasurable hL.measurableSet) C
      (ae_restrict_of_forall_mem hL.measurableSet hC)
  
  have hFB : ∀ y ∈ Metric.ball x₀ (3 * ρ), |F y| ≤ |F x₀| + max C₀ 0 := by
    intro y hy
    have h1 := hFhol y (hB3F hy) x₀ (Metric.mem_ball_self hρF)
    have hd : dist y x₀ ≤ 1 := by rw [Metric.mem_ball] at hy; linarith
    have h2 : dist y x₀ ^ α ≤ 1 := Real.rpow_le_one dist_nonneg hd hα0.le
    have h3 : max C₀ 0 * dist y x₀ ^ α ≤ max C₀ 0 :=
      mul_le_of_le_one_right (le_max_right _ _) h2
    have h4 := abs_sub_abs_le_abs_sub (F y) (F x₀)
    linarith
  have hFH : ∀ y ∈ Metric.ball x₀ (3 * ρ), ∀ y' ∈ Metric.ball x₀ (3 * ρ),
      |F y - F y'| ≤ max C₀ 0 * dist y y' ^ α := fun y hy y' hy' =>
    hFhol y (hB3F hy) y' (hB3F hy')
  
  have hd1 : ∀ x ∈ Metric.ball x₀ (2 * ρ), ∀ y ∈ Metric.ball x₀ (2 * ρ), dist x y ≤ 1 := by
    intro x hx y hy
    rw [Metric.mem_ball] at hx hy
    linarith [dist_triangle_right x y x₀]
  have hdα : ∀ x ∈ Metric.ball x₀ (2 * ρ), ∀ y ∈ Metric.ball x₀ (2 * ρ),
      dist x y ≤ dist x y ^ α := fun x hx y hy => by
    have := Real.rpow_le_rpow_of_exponent_ge' dist_nonneg (hd1 x hx y hy) hα0.le hα1.le
    simpa using this
  
  obtain ⟨θ, Λ, Λ', hθ, hΛ, hΛ', hell, hAb, hAd, hALip⟩ :=
    elr_ellip_consts S hS A hA hApd _ hKc hKconv hKS
  obtain ⟨c₀, c₁, hc₀, hc₁, hker⟩ := pdls_kernel
  obtain ⟨N, hN0, hNb⟩ : ∃ N : ℝ, 0 ≤ N ∧
      ∀ b, ∫ y in Metric.closedBall x₀ (4 * ρ), |G b y| ^ p ≤ N :=
    ⟨∑ b : Fin 2, ∫ y in Metric.closedBall x₀ (4 * ρ), |G b y| ^ p,
      Finset.sum_nonneg (fun b _ => setIntegral_nonneg hKm (fun y _ => by positivity)),
      fun b => Finset.single_le_sum
        (f := fun b => ∫ y in Metric.closedBall x₀ (4 * ρ), |G b y| ^ p)
        (fun b _ => setIntegral_nonneg hKm (fun y _ => by positivity)) (Finset.mem_univ b)⟩
  obtain ⟨Cc, hCc, hcomm⟩ := pdls_comm_holder α p hα0 hα1 hp c₀ c₁ Λ' hc₀ hc₁ hΛ'
  obtain ⟨M₃, hM₃, hosc⟩ := pdls_grad_Lp_osc p hp3 ρ N hρ0 hN0
  obtain ⟨Kc, hKc0, hKcΛ, hKcΛ', hKcR, hBFKc, hKcM⟩ : ∃ Kc : ℝ, 0 ≤ Kc ∧ Λ ≤ Kc ∧ Λ' ≤ Kc ∧
      Cc * (N + 1) ≤ Kc ∧ |F x₀| + max C₀ 0 ≤ Kc ∧ M₃ ≤ Kc := by
    have h1 : 0 ≤ Cc * (N + 1) := mul_nonneg hCc (by linarith)
    have h2 : 0 ≤ |F x₀| := abs_nonneg _
    have h3 : 0 ≤ max C₀ 0 := le_max_right _ _
    exact ⟨Λ + Λ' + Cc * (N + 1) + (|F x₀| + max C₀ 0) + M₃, by linarith, by linarith,
      by linarith, by linarith, by linarith, by linarith⟩
  have hCFKc : max C₀ 0 ≤ Kc := by linarith [abs_nonneg (F x₀)]
  obtain ⟨MS, hMS, hsch⟩ :=
    pdls_schauder_ball α θ Kc (2 * ρ) hα0 hα1 hθ hKc0 (by linarith) (by linarith)
  
  obtain ⟨δ, hδpos, hδle, hδlim⟩ : ∃ δ : ℕ → ℝ, (∀ j, 0 < δ j) ∧ (∀ j, δ j ≤ ρ) ∧
      Tendsto δ atTop (𝓝 0) := by
    refine ⟨fun j => ρ * (1 / ((j : ℝ) + 1)), fun j => mul_pos hρ0 (by positivity),
      fun j => ?_, ?_⟩
    · have h1 : 1 / ((j : ℝ) + 1) ≤ 1 := by
        rw [div_le_one (by positivity)]
        linarith [(Nat.cast_nonneg j : (0 : ℝ) ≤ j)]
      show ρ * (1 / ((j : ℝ) + 1)) ≤ ρ
      nlinarith
    · have h := (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℝ)).const_mul ρ
      simpa using h
  have hker' : ∀ j : ℕ, ∃ η : E2 → ℝ, ContDiff ℝ ∞ η ∧ HasCompactSupport η ∧ (∀ z, 0 ≤ η z) ∧
      (∀ z, δ j ≤ ‖z‖ → η z = 0) ∧ (∫ z, η z) = 1 ∧ (∀ z, |η z| ≤ c₀ / δ j ^ 2) ∧
      ∀ z, ‖fderiv ℝ η z‖ ≤ c₁ / δ j ^ 3 := fun j => hker (δ j) (hδpos j)
  choose η hη hηc hη0 hηs hη1 hηb hηd using hker'
  
  have hunif : ∀ j : ℕ, ∀ y ∈ Metric.ball x₀ (2 * ρ / 4), ∀ z ∈ Metric.ball x₀ (2 * ρ / 4),
      ∀ i : Fin 2,
      |pd2 i (fun x => ∫ y', η j (x - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y') y|
          ≤ MS ∧
      |pd2 i (fun x => ∫ y', η j (x - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y') y -
        pd2 i (fun x => ∫ y', η j (x - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y') z|
          ≤ MS * dist y z ^ α := by
    intro j
    obtain ⟨hwsm, -, hpdw, hdiv, -, -⟩ := elr_mollified_system S hS A hA w G F
      (fun L hL hLS => ⟨(hL2 L hL hLS).1, (hL2 L hL hLS).2, hF2 L hL hLS⟩) hgrad hweak x₀ ρ hρ0
      hKS (δ j) (hδpos j) (hδle j) (η j) (hη j) (hηc j) (hη0 j) (hηs j) (hη1 j)
    obtain ⟨W, hWdef⟩ : ∃ W : E2 → ℝ,
        W = fun x => ∫ y', η j (x - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y' :=
      ⟨_, rfl⟩
    have hWs : ContDiff ℝ ∞ W := by rw [hWdef]; exact hwsm
    have hpdW : ∀ x ∈ Metric.ball x₀ (3 * ρ), ∀ b : Fin 2,
        pd2 b W x = ∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y := by
      rw [hWdef]; exact hpdw
    obtain ⟨cv, hcvdef⟩ : ∃ cv : Fin 2 → E2 → ℝ, cv = fun a x =>
        ∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator
          (fun y => ∑ b : Fin 2, A y a b * G b y) y := ⟨_, rfl⟩
    have hcvs : ∀ a, ContDiff ℝ ∞ (cv a) := fun a => by
      rw [hcvdef]; exact (elr_moll_deriv (η j) _ (hη j) (hηc j) (hIntA a)).1
    have hdiv' : ∀ x ∈ Metric.ball x₀ (3 * ρ), ∑ a : Fin 2, pd2 a (cv a) x =
        -(∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator F y) := by
      intro x hx
      rw [hcvdef]
      exact hdiv x hx
    obtain ⟨u, hudef⟩ : ∃ u : E2 → ℝ, u = fun x => W x - W x₀ := ⟨_, rfl⟩
    have hus : ContDiff ℝ ∞ u := by rw [hudef]; exact hWs.sub contDiff_const
    have hpdu : ∀ (b : Fin 2) (x : E2), pd2 b u x = pd2 b W x := by
      intro b x
      rw [hudef]
      simp only [pd2]
      rw [fderiv_sub_const]
    obtain ⟨R, hRdef⟩ : ∃ R : Fin 2 → E2 → ℝ,
        R = fun a x => cv a x - ∑ b : Fin 2, A x a b * pd2 b u x := ⟨_, rfl⟩
    have hV : ∀ a : Fin 2, (fun y => ∑ b : Fin 2, A y a b * pd2 b u y + R a y) = cv a := by
      intro a
      funext y
      rw [hRdef]
      ring
    have hRT : ∀ a : Fin 2, ∀ x ∈ Metric.ball x₀ (3 * ρ), R a x =
        (∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator
            (fun y => ∑ b : Fin 2, A y a b * G b y) y) -
          ∑ b : Fin 2, A x a b * ∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator
            (G b) y := by
      intro a x hx
      have h1 : ∀ b : Fin 2, pd2 b u x =
          ∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator (G b) y :=
        fun b => (hpdu b x).trans (hpdW x hx b)
      rw [hRdef, hcvdef]
      simp only [h1]
    have hcomm' := fun a x hx x' hx' => hcomm N (δ j) ρ x₀ A (η j) G hN0 (hδpos j) (hδle j)
      (by linarith) (fun a b => (hA a b).mono hKS) (fun x hx a b c => hAd x (hB3K hx) a b c)
      (fun x hx y hy a b => hALip x (hB3K hx) y (hB3K hy) a b) (hη j) (hηc j) (hηs j)
      (hηb j) (hηd j) (fun b => hLp _ hKc hKS b) hNb a x hx x' hx'
    have hsupp : ∀ x ∈ Metric.ball x₀ (2 * ρ), ∀ y, ‖x - y‖ < δ j →
        y ∈ Metric.ball x₀ (3 * ρ) ∧ y ∈ Metric.closedBall x₀ (4 * ρ) := by
      intro x hx y hy
      have h3 : y ∈ Metric.ball x₀ (3 * ρ) := by
        rw [Metric.mem_ball] at hx ⊢
        rw [← dist_eq_norm] at hy
        linarith [dist_triangle y x x₀, dist_comm x y, hδle j]
      exact ⟨h3, hB3K h3⟩
    have hmh := fun x hx x' hx' => pdls_moll_holder α (|F x₀| + max C₀ 0) (max C₀ 0) (δ j)
      (le_max_right _ _) (η j) F (Metric.closedBall x₀ (4 * ρ)) (Metric.ball x₀ (3 * ρ)) hKm
      (hη j).continuous (hη0 j) (hη1 j) (hηs j) hFi hFB hFH x x' (hsupp x hx) (hsupp x' hx')
    have hWint : ∀ k : Fin 2, ∫ x in Metric.ball x₀ (3 * ρ), |pd2 k W x| ^ p ≤ N := by
      intro k
      have e : ∫ x in Metric.ball x₀ (3 * ρ), |pd2 k W x| ^ p =
          ∫ x in Metric.ball x₀ (3 * ρ),
            |∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator (G k) y| ^ p :=
        setIntegral_congr_fun measurableSet_ball (fun x hx => by simp only [hpdW x hx k])
      rw [e]
      exact (pdls_moll_Lp p (by omega) (η j) (G k) (Metric.closedBall x₀ (4 * ρ))
        (Metric.ball x₀ (3 * ρ)) hKm (hη j).continuous (hηc j) (hη0 j) (hη1 j)
        (hLp _ hKc hKS k) (hGi k)).trans (hNb k)
    have hW1 : ContDiff ℝ 1 W := hWs.of_le (by simp)
    have hS' := hsch x₀ A R
      (fun x => ∫ y, η j (x - y) * (Metric.closedBall x₀ (4 * ρ)).indicator F y) u hus
      (fun a => by rw [hV a]; exact hcvs a)
      (fun x hx ξ => hell x (hB2K hx) ξ)
      (fun x hx a b => (hAb x (hB2K hx) a b).trans hKcΛ)
      (fun x hx y hy a b => by
        have h1 := hALip y (hB2K hy) x (hB2K hx) a b
        rw [← dist_eq_norm] at h1
        calc |A x a b - A y a b| ≤ Λ' * dist x y := h1
          _ ≤ Λ' * dist x y ^ α := mul_le_mul_of_nonneg_left (hdα x hx y hy) hΛ'
          _ ≤ Kc * dist x y ^ α :=
            mul_le_mul_of_nonneg_right hKcΛ' (Real.rpow_nonneg dist_nonneg _))
      (fun x hx a => by
        rw [hRT a x (hB2B3 hx)]
        exact (hcomm' a x hx x hx).1.trans hKcR)
      (fun x hx y hy a => by
        rw [hRT a x (hB2B3 hx), hRT a y (hB2B3 hy)]
        exact (hcomm' a x hx y hy).2.trans
          (mul_le_mul_of_nonneg_right hKcR (Real.rpow_nonneg dist_nonneg _)))
      (fun x hx => (hmh x hx x hx).1.trans hBFKc)
      (fun x hx y hy => (hmh x hx y hy).2.trans
        (mul_le_mul_of_nonneg_right hCFKc (Real.rpow_nonneg dist_nonneg _)))
      (fun x hx => by
        rw [hudef]
        exact (hosc x₀ W hW1 hWint x hx).trans hKcM)
      (fun x hx => by
        refine Eq.trans (Finset.sum_congr rfl (fun a _ => by rw [hV a])) ?_
        exact hdiv' x (hB2B3 hx))
    intro y hy z hz i
    have h := hS' y hy z hz i
    rw [hpdu, hpdu] at h
    rw [hWdef] at h
    exact h
  
  obtain ⟨ns, -, hae⟩ := pdls_moll_ae ((Metric.closedBall x₀ (4 * ρ)).indicator w) hwint δ hδpos
    hδlim η (fun j => (hη j).continuous) hη0 hη1 hηs
  have hae' : ∀ᵐ y ∂(volume.restrict (Metric.ball x₀ (2 * ρ / 4))),
      Tendsto (fun i => ∫ y', η (ns i) (y - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y')
        atTop (𝓝 (w y)) := by
    filter_upwards [ae_restrict_of_ae hae, ae_restrict_mem measurableSet_ball] with y hy hyB
    have hyK : y ∈ Metric.closedBall x₀ (4 * ρ) :=
      ((Metric.ball_subset_ball (by linarith)).trans Metric.ball_subset_closedBall) hyB
    rwa [Set.indicator_of_mem hyK] at hy
  have hvs : ∀ i : ℕ, ContDiff ℝ 1
      (fun x => ∫ y', η (ns i) (x - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y') :=
    fun i => ((elr_moll_deriv (η (ns i)) _ (hη (ns i)) (hηc (ns i)) hwint).1).of_le (by simp)
  obtain ⟨v', hv', hvae⟩ := pdls_c1alpha_limit α hα0 hα1.le x₀ (2 * ρ / 4) MS (by linarith)
    (fun i => fun x => ∫ y', η (ns i) (x - y') * (Metric.closedBall x₀ (4 * ρ)).indicator w y')
    w hvs (fun i y hy k => (hunif (ns i) y hy y hy k).1)
    (fun i y hy z hz k => (hunif (ns i) y hy z hz k).2) hae'
  exact ⟨2 * ρ / 4, by linarith,
    ((Metric.ball_subset_ball (by linarith)).trans Metric.ball_subset_closedBall).trans hKS,
    v', hv', hvae⟩

theorem pcr_holF_bridge (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1) :
    (∀ (w : E2 → ℝ) (x : Fin 2 → ℝ) (i : Fin 2),
      smthGrad (fun y => w ((EuclideanSpace.equiv (Fin 2) ℝ).symm y)) x i =
        pd2 i w ((EuclideanSpace.equiv (Fin 2) ℝ).symm x)) ∧
    (∀ (m : ℕ) (w : E2 → ℝ) (U : Set E2), IsOpen U →
      (pcrHolLoc α m w U ↔
        pcrHolF (Real.toNNReal α) m (fun y => w ((EuclideanSpace.equiv (Fin 2) ℝ).symm y))
          {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ U})) :=
by
  have hsingle : ∀ i : Fin 2, (EuclideanSpace.equiv (Fin 2) ℝ).symm (Pi.single i 1) = e2 i :=
    fun i => rfl
  generalize (EuclideanSpace.equiv (Fin 2) ℝ).symm = ι at hsingle ⊢
  have hα' : ((Real.toNNReal α : NNReal) : ℝ) = α := Real.coe_toNNReal α hα0.le
  
  have hdec : ∀ u : E2, u = u 0 • e2 0 + u 1 • e2 1 := by
    intro u
    ext i
    fin_cases i <;> simp [e2, EuclideanSpace.single_apply]
  
  have s1 : ∀ (w : E2 → ℝ) (x : Fin 2 → ℝ) (i : Fin 2),
      smthGrad (fun y => w (ι y)) x i = pd2 i w (ι x) := by
    intro w x i
    show fderiv ℝ (w ∘ ι) x (Pi.single i 1) = fderiv ℝ w (ι x) (e2 i)
    rw [ι.comp_right_fderiv, ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe,
      hsingle i]
  
  have s4 : ∀ (U : Set E2), IsOpen U → ∀ (m : ℕ) (w : E2 → ℝ),
      ContDiffOn ℝ ((m + 1 : ℕ) : WithTop ℕ∞) w U ↔
        (∀ x ∈ U, DifferentiableAt ℝ w x) ∧
          ∀ i : Fin 2, ContDiffOn ℝ (m : WithTop ℕ∞) (pd2 i w) U := by
    intro U hU m w
    rw [Nat.cast_succ, contDiffOn_succ_iff_fderiv_of_isOpen hU, contDiffOn_clm_apply]
    have hne : (m : WithTop ℕ∞) ≠ ω := WithTop.natCast_ne_top m
    constructor
    · rintro ⟨hd, -, hc⟩
      exact ⟨fun x hx => hd.differentiableAt (hU.mem_nhds hx), fun i => hc (e2 i)⟩
    · rintro ⟨hd, hc⟩
      refine ⟨fun x hx => (hd x hx).differentiableWithinAt, fun h => absurd h hne, fun y => ?_⟩
      have hy : (fun x => fderiv ℝ w x y) = fun x => y 0 * pd2 0 w x + y 1 * pd2 1 w x := by
        funext x
        conv_lhs => rw [hdec y]
        simp only [map_add, map_smul, smul_eq_mul, pd2]
      rw [hy]
      exact (contDiffOn_const.mul (hc 0)).add (contDiffOn_const.mul (hc 1))
  
  have hfun : ∀ φ : E2 →L[ℝ] ℝ, ‖φ‖ ≤ ‖φ (e2 0)‖ + ‖φ (e2 1)‖ := by
    intro φ
    refine ContinuousLinearMap.opNorm_le_bound _ (by positivity) (fun u => ?_)
    have h0 : ‖u 0‖ ≤ ‖u‖ := PiLp.norm_apply_le u 0
    have h1 : ‖u 1‖ ≤ ‖u‖ := PiLp.norm_apply_le u 1
    calc ‖φ u‖ = ‖u 0 * φ (e2 0) + u 1 * φ (e2 1)‖ := by
          conv_lhs => rw [hdec u]
          simp only [map_add, map_smul, smul_eq_mul]
      _ ≤ ‖u 0 * φ (e2 0)‖ + ‖u 1 * φ (e2 1)‖ := norm_add_le _ _
      _ = ‖u 0‖ * ‖φ (e2 0)‖ + ‖u 1‖ * ‖φ (e2 1)‖ := by rw [norm_mul, norm_mul]
      _ ≤ ‖u‖ * ‖φ (e2 0)‖ + ‖u‖ * ‖φ (e2 1)‖ :=
          add_le_add (mul_le_mul_of_nonneg_right h0 (norm_nonneg _))
            (mul_le_mul_of_nonneg_right h1 (norm_nonneg _))
      _ = (‖φ (e2 0)‖ + ‖φ (e2 1)‖) * ‖u‖ := by ring
  
  have s2 : ∀ (U : Set E2), IsOpen U → ∀ (m : ℕ) (w : E2 → ℝ),
      ContDiffOn ℝ ((m + 1 : ℕ) : WithTop ℕ∞) w U → ∀ y ∈ U, ∀ z ∈ U,
      (∀ i : Fin 2, ‖iteratedFDeriv ℝ m (pd2 i w) y - iteratedFDeriv ℝ m (pd2 i w) z‖ ≤
        ‖iteratedFDeriv ℝ (m + 1) w y - iteratedFDeriv ℝ (m + 1) w z‖) ∧
      ‖iteratedFDeriv ℝ (m + 1) w y - iteratedFDeriv ℝ (m + 1) w z‖ ≤
        ∑ i : Fin 2, ‖iteratedFDeriv ℝ m (pd2 i w) y - iteratedFDeriv ℝ m (pd2 i w) z‖ := by
    intro U hU m w hw y hy z hz
    have hDw : ContDiffOn ℝ (m : WithTop ℕ∞) (fun x => fderiv ℝ w x) U :=
      hw.fderiv_of_isOpen hU (by simp)
    have hpd : ∀ i : Fin 2, ∀ x ∈ U, iteratedFDeriv ℝ m (pd2 i w) x =
        (ContinuousLinearMap.apply ℝ ℝ (e2 i)).compContinuousMultilinearMap
          (iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) x) := by
      intro i x hx
      have heq : pd2 i w = ⇑(ContinuousLinearMap.apply ℝ ℝ (e2 i)) ∘ (fun x => fderiv ℝ w x) := by
        funext x'
        simp [pd2]
      rw [heq]
      exact (ContinuousLinearMap.apply ℝ ℝ (e2 i)).iteratedFDeriv_comp_left
        (hDw.contDiffAt (hU.mem_nhds hx)) le_rfl
    have hnorm : ‖iteratedFDeriv ℝ (m + 1) w y - iteratedFDeriv ℝ (m + 1) w z‖ =
        ‖iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) y -
          iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) z‖ := by
      rw [iteratedFDeriv_succ_eq_comp_right, iteratedFDeriv_succ_eq_comp_right]
      simp only [Function.comp_apply]
      rw [← LinearIsometryEquiv.map_sub, LinearIsometryEquiv.norm_map]
    have hΔv : ∀ (i : Fin 2) (v : Fin m → E2),
        (iteratedFDeriv ℝ m (pd2 i w) y - iteratedFDeriv ℝ m (pd2 i w) z) v =
          (iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) y -
            iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) z) v (e2 i) := by
      intro i v
      rw [hpd i y hy, hpd i z hz]
      simp [ContinuousLinearMap.compContinuousMultilinearMap_coe]
    rw [hnorm]
    generalize iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) y -
      iteratedFDeriv ℝ m (fun x => fderiv ℝ w x) z = A at hΔv ⊢
    refine ⟨fun i => ?_, ?_⟩
    · refine ContinuousMultilinearMap.opNorm_le_bound (norm_nonneg _) (fun v => ?_)
      rw [hΔv i v]
      calc ‖A v (e2 i)‖ ≤ ‖A v‖ * ‖e2 i‖ := (A v).le_opNorm _
        _ = ‖A v‖ := by simp [e2]
        _ ≤ ‖A‖ * ∏ j, ‖v j‖ := A.le_opNorm v
    · rw [Fin.sum_univ_two]
      refine ContinuousMultilinearMap.opNorm_le_bound (by positivity) (fun v => ?_)
      calc ‖A v‖ ≤ ‖A v (e2 0)‖ + ‖A v (e2 1)‖ := hfun _
        _ = ‖(iteratedFDeriv ℝ m (pd2 0 w) y - iteratedFDeriv ℝ m (pd2 0 w) z) v‖ +
            ‖(iteratedFDeriv ℝ m (pd2 1 w) y - iteratedFDeriv ℝ m (pd2 1 w) z) v‖ := by
          rw [hΔv 0 v, hΔv 1 v]
        _ ≤ ‖iteratedFDeriv ℝ m (pd2 0 w) y - iteratedFDeriv ℝ m (pd2 0 w) z‖ * ∏ j, ‖v j‖ +
            ‖iteratedFDeriv ℝ m (pd2 1 w) y - iteratedFDeriv ℝ m (pd2 1 w) z‖ * ∏ j, ‖v j‖ :=
          add_le_add (ContinuousMultilinearMap.le_opNorm _ _)
            (ContinuousMultilinearMap.le_opNorm _ _)
        _ = _ := by ring
  
  have T1 : ∀ (m : ℕ) (w : E2 → ℝ) (U : Set E2), IsOpen U →
      (pcrHolLoc α (m + 1) w U ↔
        (∀ x ∈ U, DifferentiableAt ℝ w x) ∧ ∀ i : Fin 2, pcrHolLoc α m (pd2 i w) U) := by
    intro m w U hU
    unfold pcrHolLoc
    constructor
    · rintro ⟨hcd, hH⟩
      obtain ⟨hd, hci⟩ := (s4 U hU m w).mp hcd
      refine ⟨hd, fun i => ⟨hci i, fun x hx => ?_⟩⟩
      obtain ⟨ρ, hρ, hball, C, hC⟩ := hH x hx
      refine ⟨ρ, hρ, hball, C, fun y hy z hz => ?_⟩
      exact ((s2 U hU m w hcd y (hball hy) z (hball hz)).1 i).trans (hC y hy z hz)
    · rintro ⟨hd, hi⟩
      have hcd := (s4 U hU m w).mpr ⟨hd, fun i => (hi i).1⟩
      refine ⟨hcd, fun x hx => ?_⟩
      obtain ⟨ρ₀, hρ₀, hb₀, C₀, hC₀⟩ := (hi 0).2 x hx
      obtain ⟨ρ₁, hρ₁, hb₁, C₁, hC₁⟩ := (hi 1).2 x hx
      refine ⟨min ρ₀ ρ₁, lt_min hρ₀ hρ₁,
        (Metric.ball_subset_ball (min_le_left _ _)).trans hb₀, C₀ + C₁, fun y hy z hz => ?_⟩
      have hy0 := Metric.ball_subset_ball (min_le_left _ _) hy
      have hz0 := Metric.ball_subset_ball (min_le_left _ _) hz
      have hy1 := Metric.ball_subset_ball (min_le_right _ _) hy
      have hz1 := Metric.ball_subset_ball (min_le_right _ _) hz
      calc ‖iteratedFDeriv ℝ (m + 1) w y - iteratedFDeriv ℝ (m + 1) w z‖
          ≤ ∑ i : Fin 2, ‖iteratedFDeriv ℝ m (pd2 i w) y - iteratedFDeriv ℝ m (pd2 i w) z‖ :=
            (s2 U hU m w hcd y (hb₀ hy0) z (hb₀ hz0)).2
        _ = ‖iteratedFDeriv ℝ m (pd2 0 w) y - iteratedFDeriv ℝ m (pd2 0 w) z‖ +
            ‖iteratedFDeriv ℝ m (pd2 1 w) y - iteratedFDeriv ℝ m (pd2 1 w) z‖ :=
            Fin.sum_univ_two _
        _ ≤ C₀ * dist y z ^ α + C₁ * dist y z ^ α :=
            add_le_add (hC₀ y hy0 z hz0) (hC₁ y hy1 z hz1)
        _ = (C₀ + C₁) * dist y z ^ α := by ring
  
  have transfer : ∀ {X Y : Type} [NormedAddCommGroup X] [NormedSpace ℝ X]
      [NormedAddCommGroup Y] [NormedSpace ℝ Y] (φ : X ≃L[ℝ] Y) (f : Y → ℝ) (g : X → ℝ),
      (∀ x, g x = f (φ x)) → ∀ (S : Set Y) (T : Set X), (∀ x, x ∈ T ↔ φ x ∈ S) →
      (∀ x ∈ S, ∃ (ρ : ℝ) (C : NNReal), 0 < ρ ∧ Metric.ball x ρ ⊆ S ∧
        HolderOnWith C (Real.toNNReal α) f (Metric.ball x ρ)) →
      (∀ x ∈ T, ∃ (ρ : ℝ) (C : NNReal), 0 < ρ ∧ Metric.ball x ρ ⊆ T ∧
        HolderOnWith C (Real.toNNReal α) g (Metric.ball x ρ)) := by
    intro X Y _ _ _ _ φ f g hg S T hT hS y hy
    obtain ⟨ρ, C, hρ, hball, hH⟩ := hS (φ y) ((hT y).1 hy)
    have hopen : IsOpen (φ ⁻¹' Metric.ball (φ y) ρ) := Metric.isOpen_ball.preimage φ.continuous
    obtain ⟨ε, hε, hεb⟩ := Metric.isOpen_iff.mp hopen y (Metric.mem_ball_self hρ)
    refine ⟨ε, C * ‖(φ : X →L[ℝ] Y)‖₊ ^ ((Real.toNNReal α : NNReal) : ℝ), hε,
      fun z hz => (hT z).2 (hball (hεb hz)), ?_⟩
    have hL : HolderOnWith ‖(φ : X →L[ℝ] Y)‖₊ 1 φ (Metric.ball y ε) :=
      φ.lipschitz.lipschitzOnWith.holderOnWith
    have hc := hH.comp hL (fun z hz => hεb hz)
    rw [mul_one] at hc
    have hgf : g = f ∘ φ := funext hg
    rw [hgf]
    exact hc
  
  have base : ∀ (w : E2 → ℝ) (U : Set E2),
      pcrHolLoc α 0 w U ↔ pcrHolF (Real.toNNReal α) 0 (fun y => w (ι y)) {y | ι y ∈ U} := by
    intro w U
    have hD0 : ∀ y z : E2,
        ‖iteratedFDeriv ℝ 0 w y - iteratedFDeriv ℝ 0 w z‖ = dist (w y) (w z) := by
      intro y z
      rw [iteratedFDeriv_zero_eq_comp]
      simp only [Function.comp_apply]
      rw [← LinearIsometryEquiv.map_sub, LinearIsometryEquiv.norm_map, dist_eq_norm]
    have hLoc : (∀ x ∈ U, ∃ ρ : ℝ, 0 < ρ ∧ Metric.ball x ρ ⊆ U ∧ ∃ C : ℝ,
          ∀ y ∈ Metric.ball x ρ, ∀ z ∈ Metric.ball x ρ,
            ‖iteratedFDeriv ℝ 0 w y - iteratedFDeriv ℝ 0 w z‖ ≤ C * dist y z ^ α) ↔
        (∀ x ∈ U, ∃ (ρ : ℝ) (C : NNReal), 0 < ρ ∧ Metric.ball x ρ ⊆ U ∧
          HolderOnWith C (Real.toNNReal α) w (Metric.ball x ρ)) := by
      constructor
      · intro h x hx
        obtain ⟨ρ, hρ, hb, C, hC⟩ := h x hx
        refine ⟨ρ, Real.toNNReal C, hρ, hb, ?_⟩
        intro y hy z hz
        have h1 := hC y hy z hz
        rw [hD0] at h1
        rw [edist_dist, edist_dist, hα', ENNReal.ofReal_rpow_of_nonneg dist_nonneg hα0.le,
          ← ENNReal.ofReal_coe_nnreal, ← ENNReal.ofReal_mul (NNReal.coe_nonneg _)]
        apply ENNReal.ofReal_le_ofReal
        rw [Real.coe_toNNReal']
        exact h1.trans (mul_le_mul_of_nonneg_right (le_max_left _ _)
          (Real.rpow_nonneg dist_nonneg _))
      · intro h x hx
        obtain ⟨ρ, C, hρ, hb, hH⟩ := h x hx
        refine ⟨ρ, hρ, hb, C, fun y hy z hz => ?_⟩
        rw [hD0]
        have h1 := hH.dist_le hy hz
        rwa [hα'] at h1
    unfold pcrHolLoc
    simp only [pcrHolF]
    rw [Nat.cast_zero, contDiffOn_zero]
    constructor
    · rintro ⟨hc, hH⟩
      refine ⟨hc.comp ι.continuous.continuousOn (fun y hy => hy), ?_⟩
      exact transfer ι w (fun y => w (ι y)) (fun y => rfl) U {y | ι y ∈ U} (fun y => Iff.rfl)
        (hLoc.mp hH)
    · rintro ⟨hc, hH⟩
      refine ⟨?_, hLoc.mpr ?_⟩
      · have h2 := hc.comp ι.symm.continuous.continuousOn
          (fun x (hx : x ∈ U) => show ι (ι.symm x) ∈ U by simpa using hx)
        exact h2.congr (fun x _ => by simp)
      · exact transfer ι.symm (fun y => w (ι y)) w (fun x => by simp) {y | ι y ∈ U} U
          (fun x => by simp) hH
  
  have s6 : ∀ (m : ℕ) (w : E2 → ℝ) (U : Set E2), IsOpen U →
      (pcrHolLoc α m w U ↔ pcrHolF (Real.toNNReal α) m (fun y => w (ι y)) {y | ι y ∈ U}) := by
    intro m
    induction m with
    | zero => intro w U _; exact base w U
    | succ m ih =>
      intro w U hU
      rw [T1 m w U hU]
      simp only [pcrHolF]
      apply and_congr
      · constructor
        · intro hd y hy
          exact (ι.comp_right_differentiableAt_iff (f := w)).mpr (hd _ hy)
        · intro hd x hx
          have h := (ι.comp_right_differentiableAt_iff (f := w) (x := ι.symm x)).mp
            (hd (ι.symm x) (by simpa using hx))
          simpa using h
      · apply forall_congr'
        intro i
        rw [ih (pd2 i w) U hU]
        have h : (fun x => smthGrad (fun y => w (ι y)) x i) = fun x => pd2 i w (ι x) :=
          funext fun x => s1 w x i
        rw [h]
  exact ⟨s1, s6⟩

theorem pdls_c2_transport (S : Set E2) (A : E2 → Matrix (Fin 2) (Fin 2) ℝ) (F u : E2 → ℝ)
    (hweak : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ S →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * pd2 b u x * pd2 a ζ x = ∫ x, F x * ζ x) :
    ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ →
      tsupport φ ⊆ {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S} →
      ∫ y, ∑ i : Fin 2, ∑ j : Fin 2, A ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) i j *
          smthGrad (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z)) y j * smthGrad φ y i =
        ∫ y, F ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) * φ y :=
by
  intro φ hφ hφc hφs
  set ι : (Fin 2 → ℝ) ≃L[ℝ] E2 := (EuclideanSpace.equiv (Fin 2) ℝ).symm with hι
  have hchain : ∀ (w : E2 → ℝ) (y : Fin 2 → ℝ) (k : Fin 2),
      smthGrad (fun z => w (ι z)) y k = pd2 k w (ι y) := by
    intro w y k
    have h := ContinuousLinearEquiv.comp_right_fderiv (𝕜 := ℝ) ι (f := w) (x := y)
    show fderiv ℝ (w ∘ ι) y (Pi.single k 1) = fderiv ℝ w (ι y) (e2 k)
    rw [h]
    simp only [ContinuousLinearMap.coe_comp', ContinuousLinearEquiv.coe_coe, Function.comp_apply]
    congr 1
  set ζ : E2 → ℝ := fun x => φ (EuclideanSpace.equiv (Fin 2) ℝ x) with hζ
  have hζι : ∀ z, ζ (ι z) = φ z := fun z => by
    simp only [hζ, hι, ContinuousLinearEquiv.apply_symm_apply]
  have hφeq : φ = fun z => ζ (ι z) := funext fun z => (hζι z).symm
  have hζs : ContDiff ℝ ∞ ζ := hφ.comp (EuclideanSpace.equiv (Fin 2) ℝ).contDiff
  have hζc : HasCompactSupport ζ :=
    hφc.comp_homeomorph (EuclideanSpace.equiv (Fin 2) ℝ).toHomeomorph
  have hζt : tsupport ζ ⊆ S := by
    intro x hx
    have h1 : tsupport ζ = (EuclideanSpace.equiv (Fin 2) ℝ).toHomeomorph ⁻¹' tsupport φ :=
      tsupport_comp_eq_preimage φ (EuclideanSpace.equiv (Fin 2) ℝ).toHomeomorph
    rw [h1] at hx
    have h2 := hφs hx
    simpa using h2
  have H := hweak ζ hζs hζc hζt
  have hT : MeasurePreserving (⇑(MeasurableEquiv.toLp 2 (Fin 2 → ℝ))) volume volume := by
    have := (EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp (Fin 2)).symm
    simpa using this
  have hTι : ∀ y : Fin 2 → ℝ, (MeasurableEquiv.toLp 2 (Fin 2 → ℝ)) y = ι y := fun y => rfl
  have e1 := hT.integral_comp' (fun x : E2 => ∑ a : Fin 2, ∑ b : Fin 2,
    A x a b * pd2 b u x * pd2 a ζ x)
  have e2' := hT.integral_comp' (fun x : E2 => F x * ζ x)
  simp only [hTι] at e1 e2'
  calc (∫ y, ∑ i : Fin 2, ∑ j : Fin 2, A (ι y) i j *
          smthGrad (fun z => u (ι z)) y j * smthGrad φ y i)
      = ∫ y, ∑ a : Fin 2, ∑ b : Fin 2, A (ι y) a b * pd2 b u (ι y) * pd2 a ζ (ι y) := by
        congr 1
        funext y
        rw [hφeq]
        simp only [hchain]
    _ = ∫ y, F (ι y) * ζ (ι y) := by rw [e1, e2', H]
    _ = ∫ y, F (ι y) * φ y := by simp only [hζι]

theorem pdls_c2_potential (G : (Fin 2 → ℝ) → ℝ) (hG : Continuous G) (m : Fin 2) :
    ∃ Ψ : (Fin 2 → ℝ) → ℝ, Continuous Ψ ∧
      (∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ →
        ∫ x, G x * φ x = -(∫ x, Ψ x * smthGrad φ x m)) ∧
      (∀ (x : Fin 2 → ℝ) (h : ℝ), h ≠ 0 →
        smthDQ Ψ m h x = ∫ s in (0:ℝ)..1, G (x + (s * h) • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))) :=
by
  set e : Fin 2 → ℝ := (Pi.single m (1 : ℝ) : Fin 2 → ℝ) with he
  have SH1 : ∀ (x : Fin 2 → ℝ) (τ t : ℝ),
      Function.update (x + τ • e) m t = Function.update x m t := by
    intro x τ t
    funext k
    by_cases hk : k = m
    · subst hk; simp
    · simp [Function.update_of_ne hk, he, Pi.single_apply, hk]
  have SH2 : ∀ (x : Fin 2 → ℝ) (τ : ℝ), (x + τ • e) m = x m + τ := by
    intro x τ; simp [he]
  have SH3 : ∀ (x : Fin 2 → ℝ) (c : ℝ), Function.update x m (x m + c) = x + c • e := by
    intro x c
    funext k
    by_cases hk : k = m
    · subst hk; simp [he]
    · simp [Function.update_of_ne hk, he, Pi.single_apply, hk]
  have hgc : ∀ x : Fin 2 → ℝ, Continuous (fun t : ℝ => G (Function.update x m t)) := fun x =>
    hG.comp (continuous_const.update m continuous_id)
  set Ψ : (Fin 2 → ℝ) → ℝ := fun y => ∫ t in (0:ℝ)..(y m), G (Function.update y m t) with hΨ
  have hshift : ∀ (x : Fin 2 → ℝ) (τ : ℝ),
      Ψ (x + τ • e) = ∫ t in (0:ℝ)..(x m + τ), G (Function.update x m t) := by
    intro x τ
    simp only [hΨ, SH1, SH2]
  have hcont : Continuous Ψ :=
    intervalIntegral.continuous_parametric_intervalIntegral_of_continuous (μ := MeasureTheory.volume)
      (a₀ := 0) (f := fun (x : Fin 2 → ℝ) (t : ℝ) => G (Function.update x m t))
      (hG.comp (Continuous.update continuous_fst m continuous_snd)) (s := fun x => x m)
      (continuous_apply m)
  have hline : ∀ x, HasLineDerivAt ℝ Ψ (G x) x e := by
    intro x
    show HasDerivAt (fun τ => Ψ (x + τ • e)) (G x) 0
    have h1 := ((hgc x).integral_hasStrictDerivAt 0 (x m + 0)).hasDerivAt
    have h2 := HasDerivAt.comp_const_add (x m) 0 h1
    simp only [add_zero, Function.update_eq_self] at h2
    have hf : (fun τ => Ψ (x + τ • e)) =
        fun τ => ∫ t in (0:ℝ)..(x m + τ), G (Function.update x m t) := funext (hshift x)
    rw [hf]
    exact h2
  refine ⟨Ψ, hcont, ?_, ?_⟩
  · intro φ hφ hφc
    have hφd : Differentiable ℝ φ := hφ.differentiable (by simp)
    have hdφc : Continuous (fun y => fderiv ℝ φ y e) :=
      (hφ.continuous_fderiv (by simp)).clm_apply continuous_const
    have hdφs : HasCompactSupport (fun y => fderiv ℝ φ y e) :=
      (hφc.fderiv ℝ).comp_left (g := fun L : (Fin 2 → ℝ) →L[ℝ] ℝ => L e)
        (ContinuousLinearMap.zero_apply e)
    have I1 : MeasureTheory.Integrable (fun y => G y * φ y) :=
      (hG.mul hφ.continuous).integrable_of_hasCompactSupport hφc.mul_left
    have I2 : MeasureTheory.Integrable (fun y => Ψ y * fderiv ℝ φ y e) :=
      (hcont.mul hdφc).integrable_of_hasCompactSupport hdφs.mul_left
    have I3 : MeasureTheory.Integrable (fun y => Ψ y * φ y) :=
      (hcont.mul hφ.continuous).integrable_of_hasCompactSupport hφc.mul_left
    have key := integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable
      (μ := MeasureTheory.volume)
      (B := ContinuousLinearMap.mul ℝ ℝ) (f := Ψ) (f' := G) (g := φ)
      (g' := fun y => fderiv ℝ φ y e) (v := e)
      (by simpa using I1) (by simpa using I2) (by simpa using I3) hline
      (fun y => (hφd y).hasFDerivAt.hasLineDerivAt e)
    simp only [ContinuousLinearMap.mul_apply'] at key
    have hsg : (fun x => Ψ x * smthGrad φ x m) = fun y => Ψ y * fderiv ℝ φ y e := by
      funext y; rfl
    rw [hsg, key, neg_neg]
  · intro x h hh
    unfold smthDQ
    rw [← he, hshift x h]
    have hint : ∀ a b : ℝ, IntervalIntegrable (fun t => G (Function.update x m t))
        MeasureTheory.volume a b := fun a b => (hgc x).intervalIntegrable a b
    rw [show Ψ x = ∫ t in (0:ℝ)..(x m), G (Function.update x m t) from rfl]
    rw [intervalIntegral.integral_interval_sub_left (hint 0 _) (hint 0 _)]
    have hsub := intervalIntegral.integral_comp_mul_add (a := 0) (b := 1)
      (fun t => G (Function.update x m t)) hh (x m)
    simp only [mul_zero, zero_add, mul_one] at hsub
    rw [add_comm (x m) h, div_eq_inv_mul, ← smul_eq_mul, ← hsub]
    apply intervalIntegral.integral_congr
    intro s _
    simp only
    rw [show h * s + x m = x m + s * h by ring, SH3]

theorem pdls_c2_clamp (x₀ : Fin 2 → ℝ) (ρ : ℝ) (hρ : 0 < ρ) (f : (Fin 2 → ℝ) → ℝ) (C B α : NNReal)
    (hα : 0 < α) (hH : HolderOnWith C α f (Metric.ball x₀ ρ))
    (hB : ∀ x ∈ Metric.ball x₀ ρ, |f x| ≤ (B : ℝ)) :
    ∃ G : (Fin 2 → ℝ) → ℝ, Continuous G ∧ HolderOnWith C α G Set.univ ∧ (∀ x, |G x| ≤ (B : ℝ)) ∧
      Set.EqOn G f (Metric.closedBall x₀ (ρ / 2)) :=
by
  set P : (Fin 2 → ℝ) → (Fin 2 → ℝ) :=
    fun x i => max (x₀ i - ρ / 2) (min (x i) (x₀ i + ρ / 2)) with hPdef
  have hs1 : ∀ x i, x₀ i - ρ / 2 ≤ P x i ∧ P x i ≤ x₀ i + ρ / 2 := by
    intro x i
    exact ⟨le_max_left _ _, max_le (by linarith) (min_le_right _ _)⟩
  have hs2 : ∀ x, P x ∈ Metric.closedBall x₀ (ρ / 2) := by
    intro x
    rw [Metric.mem_closedBall, dist_pi_le_iff (by linarith)]
    intro i
    rw [Real.dist_eq, abs_sub_le_iff]
    obtain ⟨h1, h2⟩ := hs1 x i
    constructor <;> linarith
  have hs2' : ∀ x, P x ∈ Metric.ball x₀ ρ := fun x =>
    Metric.closedBall_subset_ball (by linarith) (hs2 x)
  have hs3 : ∀ x ∈ Metric.closedBall x₀ (ρ / 2), P x = x := by
    intro x hx
    rw [Metric.mem_closedBall] at hx
    funext i
    have h := (dist_le_pi_dist x x₀ i).trans hx
    rw [Real.dist_eq, abs_sub_le_iff] at h
    show max (x₀ i - ρ / 2) (min (x i) (x₀ i + ρ / 2)) = x i
    rw [min_eq_left (by linarith), max_eq_right (by linarith)]
  have hs4 : LipschitzWith 1 P := by
    apply LipschitzWith.of_dist_le_mul
    intro x y
    rw [NNReal.coe_one, one_mul, dist_pi_le_iff dist_nonneg]
    intro i
    have hL : LipschitzWith 1
        (fun z : Fin 2 → ℝ => max (x₀ i - ρ / 2) (min (z i) (x₀ i + ρ / 2))) :=
      ((LipschitzWith.eval i).min_const (x₀ i + ρ / 2)).const_max (x₀ i - ρ / 2)
    have h := hL.dist_le_mul x y
    rw [NNReal.coe_one, one_mul] at h
    exact h
  have hP : HolderOnWith 1 1 P Set.univ := hs4.holderWith.holderOnWith Set.univ
  have hG : HolderOnWith C α (f ∘ P) Set.univ := by
    have h := hH.comp hP (fun x _ => hs2' x)
    simpa using h
  have hGc : Continuous (f ∘ P) := (holderOnWith_univ.mp hG).continuous hα
  refine ⟨f ∘ P, hGc, hG, fun x => hB (P x) (hs2' x), ?_⟩
  intro x hx
  show f (P x) = f x
  rw [hs3 x hx]

theorem pdls_c2_local_data (S : Set (Fin 2 → ℝ)) (hS : IsOpen S) (α : NNReal) (hα0 : 0 < α) (hα1 : α < 1)
    (a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ) (ha : ∀ i j : Fin 2, ContDiffOn ℝ ∞ (fun x => a x i j) S)
    (hpos : ∀ x ∈ S, ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 → 0 < ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j)
    (f w : (Fin 2 → ℝ) → ℝ) (hf : pcrHolF α 0 f S)
    (hw : ∀ j : Fin 2, pcrHolF α 0 (fun x => smthGrad w x j) S) (x₀ : Fin 2 → ℝ) (hx₀ : x₀ ∈ S) :
    ∃ (ρ : ℝ) (B C : NNReal) (lam : ℝ), 0 < ρ ∧ ρ ≤ 1 / 4 ∧ Metric.closedBall x₀ ρ ⊆ S ∧ 0 < lam ∧
      (∀ x ∈ Metric.ball x₀ ρ, ∀ ξ : Fin 2 → ℝ,
        lam * ∑ i : Fin 2, ξ i ^ 2 ≤ ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j) ∧
      (∀ i j : Fin 2, HolderOnWith C α (fun x => a x i j) (Metric.ball x₀ ρ) ∧
        ∀ x ∈ Metric.ball x₀ ρ, |a x i j| ≤ (B : ℝ)) ∧
      (∀ i j m : Fin 2, HolderOnWith C α (fun x => smthGrad (fun y => a y i j) x m) (Metric.ball x₀ ρ) ∧
        ∀ x ∈ Metric.ball x₀ ρ, |smthGrad (fun y => a y i j) x m| ≤ (B : ℝ)) ∧
      (∀ j : Fin 2, HolderOnWith C α (fun x => smthGrad w x j) (Metric.ball x₀ ρ) ∧
        ∀ x ∈ Metric.ball x₀ ρ, |smthGrad w x j| ≤ (B : ℝ)) ∧
      HolderOnWith C α f (Metric.ball x₀ ρ) ∧ ∀ x ∈ Metric.ball x₀ ρ, |f x| ≤ (B : ℝ) :=
by
  classical
  
  have LDc1 : ∀ g : (Fin 2 → ℝ) → ℝ, ContDiffAt ℝ 1 g x₀ →
      ∃ ε : ℝ, 0 < ε ∧ ∃ K : NNReal, ∀ r : ℝ, 0 < r → r ≤ ε →
        HolderOnWith K α g (Metric.ball x₀ r) ∧ ∀ x ∈ Metric.ball x₀ r, |g x| ≤ (K : ℝ) := by
    intro g hg
    obtain ⟨L, t, ht, hL⟩ := hg.exists_lipschitzOnWith
    obtain ⟨ε₁, hε₁, hball⟩ := Metric.mem_nhds_iff.1 ht
    refine ⟨min ε₁ (1 / 4), lt_min hε₁ (by norm_num), L + ‖g x₀‖₊, fun r hr hrε => ?_⟩
    have hr1 : r ≤ ε₁ := hrε.trans (min_le_left _ _)
    have hr2 : r ≤ 1 / 4 := hrε.trans (min_le_right _ _)
    have hL' : LipschitzOnWith L g (Metric.ball x₀ r) :=
      hL.mono ((Metric.ball_subset_ball hr1).trans hball)
    constructor
    · have hD : ∀ x ∈ Metric.ball x₀ r, ∀ y ∈ Metric.ball x₀ r,
          edist x y ≤ ((1 : NNReal) : ENNReal) := by
        intro x hx y hy
        rw [edist_dist, ENNReal.coe_one]
        apply ENNReal.ofReal_le_one.2
        have := dist_triangle_right x y x₀
        rw [Metric.mem_ball] at hx hy
        linarith
      have h1 := HolderOnWith.of_le hD hL'.holderOnWith hα1.le
      simp only [NNReal.one_rpow, mul_one] at h1
      exact h1.mono_const le_self_add
    · intro x hx
      have hx0 : x₀ ∈ Metric.ball x₀ r := Metric.mem_ball_self hr
      have hd := hL'.dist_le_mul x hx x₀ hx0
      rw [Real.dist_eq] at hd
      have hxx : dist x x₀ < r := hx
      have hLn : (0 : ℝ) ≤ L := L.coe_nonneg
      have hdn : 0 ≤ dist x x₀ := dist_nonneg
      have h2 : (L : ℝ) * dist x x₀ ≤ L := by nlinarith
      have h3 : |g x| ≤ |g x₀| + |g x - g x₀| := by
        have := abs_add_le (g x₀) (g x - g x₀)
        simpa using this
      push_cast
      rw [Real.norm_eq_abs]
      linarith
  
  have LDh : ∀ u : (Fin 2 → ℝ) → ℝ, pcrHolF α 0 u S →
      ∃ ε : ℝ, 0 < ε ∧ ∃ K : NNReal, ∀ r : ℝ, 0 < r → r ≤ ε →
        HolderOnWith K α u (Metric.ball x₀ r) ∧ ∀ x ∈ Metric.ball x₀ r, |u x| ≤ (K : ℝ) := by
    intro u hu
    unfold pcrHolF at hu
    obtain ⟨ρ₀, C₀, hρ₀, -, hH⟩ := hu.2 x₀ hx₀
    refine ⟨min ρ₀ 1, lt_min hρ₀ one_pos, C₀ + ‖u x₀‖₊, fun r hr hrε => ?_⟩
    have hr1 : r ≤ ρ₀ := hrε.trans (min_le_left _ _)
    have hr2 : r ≤ 1 := hrε.trans (min_le_right _ _)
    refine ⟨(hH.mono (Metric.ball_subset_ball hr1)).mono_const le_self_add, fun x hx => ?_⟩
    have hx' : x ∈ Metric.ball x₀ ρ₀ := Metric.ball_subset_ball hr1 hx
    have hd := hH.dist_le hx' (Metric.mem_ball_self hρ₀)
    rw [Real.dist_eq] at hd
    have hxx : dist x x₀ < r := hx
    have hp : dist x x₀ ^ (α : ℝ) ≤ 1 :=
      Real.rpow_le_one dist_nonneg (by linarith) α.coe_nonneg
    have hC : (C₀ : ℝ) * dist x x₀ ^ (α : ℝ) ≤ C₀ := mul_le_of_le_one_right C₀.coe_nonneg hp
    have h3 : |u x| ≤ |u x₀| + |u x - u x₀| := by
      have := abs_add_le (u x₀) (u x - u x₀)
      simpa using this
    push_cast
    rw [Real.norm_eq_abs]
    linarith
  
  have hSn : S ∈ 𝓝 x₀ := hS.mem_nhds hx₀
  have hAinf : ∀ i j : Fin 2, ContDiffAt ℝ ∞ (fun x => a x i j) x₀ :=
    fun i j => (ha i j).contDiffAt hSn
  have hA1 : ∀ i j : Fin 2, ContDiffAt ℝ 1 (fun x => a x i j) x₀ :=
    fun i j => (hAinf i j).of_le (by simp)
  have hD1 : ∀ i j m : Fin 2,
      ContDiffAt ℝ 1 (fun x => smthGrad (fun y => a y i j) x m) x₀ := by
    intro i j m
    have h2 : (1 : WithTop ℕ∞) + 1 ≤ ∞ := by norm_cast
    exact ((hAinf i j).fderiv_right (m := 1) h2).clm_apply contDiffAt_const
  
  choose εa hεa Ka hKa using fun i j => LDc1 _ (hA1 i j)
  choose εd hεd Kd hKd using fun i j m => LDc1 _ (hD1 i j m)
  choose εw hεw Kw hKw using fun j => LDh _ (hw j)
  obtain ⟨εf, hεf, Kf, hKf⟩ := LDh f hf
  obtain ⟨δ, hδ, hδS⟩ := Metric.isOpen_iff.1 hS x₀ hx₀
  
  have conv : ∀ (P : ℝ → Prop) (ε : ℝ), 0 < ε → (∀ r, 0 < r → r ≤ ε → P r) →
      ∀ᶠ r in 𝓝[>] (0:ℝ), P r :=
    fun P ε hε h => Filter.mem_of_superset (Ioo_mem_nhdsGT hε) (fun r hr => h r hr.1 hr.2.le)
  have E1 : ∀ᶠ r in 𝓝[>] (0:ℝ), 0 < r ∧ r ≤ 1 / 4 ∧ r < δ :=
    Filter.mem_of_superset (Ioo_mem_nhdsGT (lt_min (by norm_num : (0:ℝ) < 1 / 4) hδ))
      (fun r hr => ⟨hr.1, hr.2.le.trans (min_le_left _ _), hr.2.trans_le (min_le_right _ _)⟩)
  have Ea : ∀ᶠ r in 𝓝[>] (0:ℝ), ∀ i j : Fin 2,
      HolderOnWith (Ka i j) α (fun x => a x i j) (Metric.ball x₀ r) ∧
        ∀ x ∈ Metric.ball x₀ r, |a x i j| ≤ (Ka i j : ℝ) :=
    Filter.eventually_all.2 fun i => Filter.eventually_all.2 fun j =>
      conv _ _ (hεa i j) (hKa i j)
  have Ed : ∀ᶠ r in 𝓝[>] (0:ℝ), ∀ i j m : Fin 2,
      HolderOnWith (Kd i j m) α (fun x => smthGrad (fun y => a y i j) x m) (Metric.ball x₀ r) ∧
        ∀ x ∈ Metric.ball x₀ r, |smthGrad (fun y => a y i j) x m| ≤ (Kd i j m : ℝ) :=
    Filter.eventually_all.2 fun i => Filter.eventually_all.2 fun j =>
      Filter.eventually_all.2 fun m => conv _ _ (hεd i j m) (hKd i j m)
  have Ew : ∀ᶠ r in 𝓝[>] (0:ℝ), ∀ j : Fin 2,
      HolderOnWith (Kw j) α (fun x => smthGrad w x j) (Metric.ball x₀ r) ∧
        ∀ x ∈ Metric.ball x₀ r, |smthGrad w x j| ≤ (Kw j : ℝ) :=
    Filter.eventually_all.2 fun j => conv _ _ (hεw j) (hKw j)
  have Ef : ∀ᶠ r in 𝓝[>] (0:ℝ),
      HolderOnWith Kf α f (Metric.ball x₀ r) ∧ ∀ x ∈ Metric.ball x₀ r, |f x| ≤ (Kf : ℝ) :=
    conv _ _ hεf hKf
  obtain ⟨ρ, ⟨⟨⟨⟨⟨hρ0, hρ14, hρδ⟩, Ha⟩, Hd⟩, Hw⟩, Hf⟩⟩ :=
    ((((E1.and Ea).and Ed).and Ew).and Ef).exists
  have hcl : Metric.closedBall x₀ ρ ⊆ S := (Metric.closedBall_subset_ball hρδ).trans hδS
  
  obtain ⟨Ktot, hKtot⟩ : ∃ K : NNReal, K = ((∑ i : Fin 2, ∑ j : Fin 2, Ka i j) +
      (∑ i : Fin 2, ∑ j : Fin 2, ∑ m : Fin 2, Kd i j m) + Kf) + ∑ j : Fin 2, Kw j := ⟨_, rfl⟩
  have hKa_le : ∀ i j : Fin 2, Ka i j ≤ Ktot := by
    intro i j
    have h1 : Ka i j ≤ ∑ j' : Fin 2, Ka i j' :=
      Finset.single_le_sum (f := fun j' => Ka i j') (fun _ _ => zero_le _) (Finset.mem_univ j)
    have h2 : ∑ j' : Fin 2, Ka i j' ≤ ∑ i' : Fin 2, ∑ j' : Fin 2, Ka i' j' :=
      Finset.single_le_sum (f := fun i' => ∑ j' : Fin 2, Ka i' j') (fun _ _ => zero_le _)
        (Finset.mem_univ i)
    rw [hKtot]
    exact (h1.trans h2).trans (le_add_right (le_add_right (le_add_right le_rfl)))
  have hKd_le : ∀ i j m : Fin 2, Kd i j m ≤ Ktot := by
    intro i j m
    have h1 : Kd i j m ≤ ∑ m' : Fin 2, Kd i j m' :=
      Finset.single_le_sum (f := fun m' => Kd i j m') (fun _ _ => zero_le _) (Finset.mem_univ m)
    have h2 : ∑ m' : Fin 2, Kd i j m' ≤ ∑ j' : Fin 2, ∑ m' : Fin 2, Kd i j' m' :=
      Finset.single_le_sum (f := fun j' => ∑ m' : Fin 2, Kd i j' m') (fun _ _ => zero_le _)
        (Finset.mem_univ j)
    have h3 : ∑ j' : Fin 2, ∑ m' : Fin 2, Kd i j' m' ≤
        ∑ i' : Fin 2, ∑ j' : Fin 2, ∑ m' : Fin 2, Kd i' j' m' :=
      Finset.single_le_sum (f := fun i' => ∑ j' : Fin 2, ∑ m' : Fin 2, Kd i' j' m')
        (fun _ _ => zero_le _) (Finset.mem_univ i)
    rw [hKtot]
    exact ((h1.trans h2).trans h3).trans (le_add_right (le_add_right (le_add_left le_rfl)))
  have hKw_le : ∀ j : Fin 2, Kw j ≤ Ktot := by
    intro j
    have h1 : Kw j ≤ ∑ j' : Fin 2, Kw j' :=
      Finset.single_le_sum (f := fun j' => Kw j') (fun _ _ => zero_le _) (Finset.mem_univ j)
    rw [hKtot]
    exact h1.trans (le_add_left le_rfl)
  have hKf_le : Kf ≤ Ktot := by
    rw [hKtot]
    exact le_add_right (le_add_left le_rfl)
  
  have hell : ∃ lam : ℝ, 0 < lam ∧ ∀ x ∈ Metric.closedBall x₀ ρ, ∀ ξ : Fin 2 → ℝ,
      lam * ∑ i : Fin 2, ξ i ^ 2 ≤ ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j := by
    set K : Set (Fin 2 → ℝ) := Metric.closedBall x₀ ρ with hKdef
    have hK : IsCompact K := isCompact_closedBall x₀ ρ
    have hKne : K.Nonempty := ⟨x₀, Metric.mem_closedBall_self hρ0.le⟩
    set Sp : Set (Fin 2 → ℝ) := Metric.sphere (0 : Fin 2 → ℝ) 1 with hSdef
    have hSp : IsCompact Sp := isCompact_sphere 0 1
    have hP : IsCompact (K ×ˢ Sp) := hK.prod hSp
    obtain ⟨x₁, hx₁⟩ := hKne
    obtain ⟨η₁, hη₁⟩ : Sp.Nonempty := NormedSpace.sphere_nonempty.mpr zero_le_one
    have hPne : (K ×ˢ Sp).Nonempty := ⟨(x₁, η₁), Set.mk_mem_prod hx₁ hη₁⟩
    have hcont : ContinuousOn
        (fun p : (Fin 2 → ℝ) × (Fin 2 → ℝ) =>
          ∑ i : Fin 2, ∑ j : Fin 2, a p.1 i j * p.2 i * p.2 j) (K ×ˢ Sp) := by
      have hA : ∀ i j : Fin 2, ContinuousOn (fun p : (Fin 2 → ℝ) × (Fin 2 → ℝ) => a p.1 i j)
          (K ×ˢ Sp) := fun i j =>
        ((ha i j).continuousOn.mono hcl).comp continuousOn_fst
          (fun p hp => (Set.mem_prod.mp hp).1)
      have hC : ∀ i : Fin 2, ContinuousOn (fun p : (Fin 2 → ℝ) × (Fin 2 → ℝ) => p.2 i)
          (K ×ˢ Sp) := fun i => ((continuous_apply i).comp continuous_snd).continuousOn
      refine continuousOn_finset_sum _ (fun i _ => ?_)
      refine continuousOn_finset_sum _ (fun j _ => ?_)
      exact ((hA i j).mul (hC i)).mul (hC j)
    obtain ⟨p₀, hp₀, hmin⟩ := hP.exists_isMinOn hPne hcont
    set m : ℝ := ∑ i : Fin 2, ∑ j : Fin 2, a p₀.1 i j * p₀.2 i * p₀.2 j with hmdef
    have hmin' : ∀ x ∈ K, ∀ η ∈ Sp, m ≤ ∑ i : Fin 2, ∑ j : Fin 2, a x i j * η i * η j := by
      intro x hx η hη
      exact (isMinOn_iff.mp hmin) (x, η) (Set.mk_mem_prod hx hη)
    have hm : 0 < m := by
      obtain ⟨hx₀', hη₀⟩ := Set.mem_prod.mp hp₀
      have hn : ‖p₀.2‖ = 1 := mem_sphere_zero_iff_norm.mp hη₀
      have hne : p₀.2 ≠ 0 := by
        intro h
        rw [h, norm_zero] at hn
        exact zero_ne_one hn
      exact hpos p₀.1 (hcl hx₀') p₀.2 hne
    refine ⟨m / 2, half_pos hm, ?_⟩
    intro x hx ξ
    by_cases hξ : ξ = 0
    · subst hξ
      simp
    have hr : 0 < ‖ξ‖ := norm_pos_iff.mpr hξ
    set r : ℝ := ‖ξ‖ with hrdef
    set η : Fin 2 → ℝ := r⁻¹ • ξ with hηdef
    have hηn : ‖η‖ = 1 := by
      rw [hηdef, norm_smul, norm_inv, Real.norm_eq_abs, abs_of_pos hr, inv_mul_cancel₀ hr.ne']
    have hηS : η ∈ Sp := mem_sphere_zero_iff_norm.mpr hηn
    have hcoord : ∀ i : Fin 2, ξ i = r * η i := by
      intro i
      rw [hηdef, Pi.smul_apply, smul_eq_mul, ← mul_assoc, mul_inv_cancel₀ hr.ne', one_mul]
    have hhom : ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j =
        r ^ 2 * ∑ i : Fin 2, ∑ j : Fin 2, a x i j * η i * η j := by
      simp only [Fin.sum_univ_two, hcoord 0, hcoord 1]
      ring
    have hbd : ∀ i : Fin 2, ξ i ^ 2 ≤ r ^ 2 := by
      intro i
      have h1 : |ξ i| ≤ r := by
        have := norm_le_pi_norm ξ i
        rwa [Real.norm_eq_abs] at this
      have h2 : 0 ≤ |ξ i| := abs_nonneg _
      rw [← sq_abs]
      exact pow_le_pow_left₀ h2 h1 2
    have hsum : ∑ i : Fin 2, ξ i ^ 2 ≤ 2 * r ^ 2 := by
      rw [Fin.sum_univ_two]
      linarith [hbd 0, hbd 1]
    have hmq := hmin' x hx η hηS
    rw [hhom]
    have hr2 : 0 ≤ r ^ 2 := sq_nonneg r
    calc m / 2 * ∑ i : Fin 2, ξ i ^ 2 ≤ m / 2 * (2 * r ^ 2) :=
          mul_le_mul_of_nonneg_left hsum (by linarith)
      _ = r ^ 2 * m := by ring
      _ ≤ r ^ 2 * ∑ i : Fin 2, ∑ j : Fin 2, a x i j * η i * η j :=
          mul_le_mul_of_nonneg_left hmq hr2
  obtain ⟨lam, hlam, hellK⟩ := hell
  
  refine ⟨ρ, Ktot, Ktot, lam, hρ0, hρ14, hcl, hlam,
    fun x hx ξ => hellK x (Metric.ball_subset_closedBall hx) ξ,
    fun i j => ⟨(Ha i j).1.mono_const (hKa_le i j),
      fun x hx => ((Ha i j).2 x hx).trans (NNReal.coe_le_coe.2 (hKa_le i j))⟩,
    fun i j m => ⟨(Hd i j m).1.mono_const (hKd_le i j m),
      fun x hx => ((Hd i j m).2 x hx).trans (NNReal.coe_le_coe.2 (hKd_le i j m))⟩,
    fun j => ⟨(Hw j).1.mono_const (hKw_le j),
      fun x hx => ((Hw j).2 x hx).trans (NNReal.coe_le_coe.2 (hKw_le j))⟩,
    Hf.1.mono_const hKf_le,
    fun x hx => (Hf.2 x hx).trans (NNReal.coe_le_coe.2 hKf_le)⟩

theorem pdls_c2_dq_schauder (x₀ : Fin 2 → ℝ) (ρ : ℝ) (hρ : 0 < ρ) (α B C : NNReal) (hα0 : 0 < α)
    (hα1 : α < 1) (lam : ℝ) (hlam : 0 < lam)
    (a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ) (w G : (Fin 2 → ℝ) → ℝ) (Ψ : Fin 2 → (Fin 2 → ℝ) → ℝ)
    (hell : ∀ x ∈ Metric.ball x₀ ρ, ∀ ξ : Fin 2 → ℝ,
      lam * ∑ i : Fin 2, ξ i ^ 2 ≤ ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j)
    (ha : ∀ i j : Fin 2, HolderOnWith C α (fun x => a x i j) (Metric.ball x₀ ρ) ∧
      ∀ x ∈ Metric.ball x₀ ρ, |a x i j| ≤ (B : ℝ))
    (had : ∀ i j : Fin 2, ∀ x ∈ Metric.ball x₀ ρ, DifferentiableAt ℝ (fun y => a y i j) x)
    (hda : ∀ i j m : Fin 2, HolderOnWith C α (fun x => smthGrad (fun y => a y i j) x m) (Metric.ball x₀ ρ) ∧
      ∀ x ∈ Metric.ball x₀ ρ, |smthGrad (fun y => a y i j) x m| ≤ (B : ℝ))
    (hw1 : ContDiffOn ℝ 1 w (Metric.ball x₀ ρ))
    (hdw : ∀ j : Fin 2, HolderOnWith C α (fun x => smthGrad w x j) (Metric.ball x₀ ρ) ∧
      ∀ x ∈ Metric.ball x₀ ρ, |smthGrad w x j| ≤ (B : ℝ))
    (hGc : Continuous G) (hGH : HolderOnWith C α G Set.univ) (hGB : ∀ x, |G x| ≤ (B : ℝ))
    (hΨc : ∀ m : Fin 2, Continuous (Ψ m))
    (hΨibp : ∀ (m : Fin 2) (φ : (Fin 2 → ℝ) → ℝ), ContDiff ℝ ∞ φ → HasCompactSupport φ →
      ∫ x, G x * φ x = -(∫ x, Ψ m x * smthGrad φ x m))
    (hΨdq : ∀ (m : Fin 2) (x : Fin 2 → ℝ) (h : ℝ), h ≠ 0 →
      smthDQ (Ψ m) m h x = ∫ s in (0:ℝ)..1, G (x + (s * h) • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)))
    (hweak : ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ → tsupport φ ⊆ Metric.ball x₀ ρ →
      ∫ x, ∑ i : Fin 2, ∑ j : Fin 2, a x i j * smthGrad w x j * smthGrad φ x i = ∫ x, G x * φ x) :
    ∃ (r : ℝ) (M : NNReal), 0 < r ∧ r ≤ ρ ∧ ∀ m : Fin 2,
      ContDiffOn ℝ 1 (fun x => smthGrad w x m) (Metric.ball x₀ r) ∧
      HolderOnWith M α (smthGrad (fun x => smthGrad w x m)) (Metric.ball x₀ r) :=
by
  
  have of_dist : ∀ {X : Type} [PseudoMetricSpace X] (T : Set (Fin 2 → ℝ)) (f : (Fin 2 → ℝ) → X)
      (K α : NNReal), (∀ x ∈ T, ∀ y ∈ T, dist (f x) (f y) ≤ (K : ℝ) * dist x y ^ (α : ℝ)) →
      HolderOnWith K α f T := by
    intro X _ T f K α hf x hx y hy
    rw [edist_dist, edist_dist, ENNReal.ofReal_rpow_of_nonneg dist_nonneg (NNReal.coe_nonneg α),
      ← ENNReal.ofReal_coe_nnreal, ← ENNReal.ofReal_mul (NNReal.coe_nonneg K)]
    exact ENNReal.ofReal_le_ofReal (hf x hx y hy)
  
  have prod_le : ∀ p q p' q' b d : ℝ, |p| ≤ b → |q'| ≤ b → |p - p'| ≤ d → |q - q'| ≤ d →
      |p * q - p' * q'| ≤ 2 * b * d := by
    intro p q p' q' b d hp hq' h1 h2
    have hb : 0 ≤ b := (abs_nonneg _).trans hp
    have e : p * q - p' * q' = p * (q - q') + q' * (p - p') := by ring
    rw [e]
    calc |p * (q - q') + q' * (p - p')| ≤ |p| * |q - q'| + |q'| * |p - p'| := by
          rw [← abs_mul, ← abs_mul]; exact abs_add_le _ _
      _ ≤ b * d + b * d := add_le_add (mul_le_mul hp h2 (abs_nonneg _) hb)
          (mul_le_mul hq' h1 (abs_nonneg _) hb)
      _ = 2 * b * d := by ring
  have comb : ∀ A A' P0 P0' P1 P1' c d : ℝ, |A - A'| ≤ c → |P0 - P0'| ≤ d → |P1 - P1'| ≤ d →
      |A - (P0 + P1) - (A' - (P0' + P1'))| ≤ c + 2 * d := by
    intro A A' P0 P0' P1 P1' c d h1 h2 h3
    have e : A - (P0 + P1) - (A' - (P0' + P1')) = (A - A') - ((P0 - P0') + (P1 - P1')) := by ring
    rw [e]
    have h4 := abs_sub (A - A') ((P0 - P0') + (P1 - P1'))
    have h5 := abs_add_le (P0 - P0') (P1 - P1')
    linarith
  
  have hgdq : ∀ (u : (Fin 2 → ℝ) → ℝ) (m : Fin 2) (h : ℝ) (x : Fin 2 → ℝ), DifferentiableAt ℝ u x →
      DifferentiableAt ℝ u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) → ∀ j : Fin 2,
      smthGrad (smthDQ u m h) x j =
        (smthGrad u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) j - smthGrad u x j) / h := by
    intro u m h x hx hxh j
    have h0 : HasFDerivAt (fun y : Fin 2 → ℝ => y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))
        (ContinuousLinearMap.id ℝ (Fin 2 → ℝ)) x := (hasFDerivAt_id x).add_const _
    have h1 : HasFDerivAt (fun y => u (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)))
        (fderiv ℝ u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))) x := by
      have := hxh.hasFDerivAt.comp x h0
      simpa [Function.comp_def] using this
    have h2 : HasFDerivAt
        (fun y => (u (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - u y) * h⁻¹)
        (h⁻¹ • (fderiv ℝ u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - fderiv ℝ u x)) x :=
      (h1.sub hx.hasFDerivAt).mul_const h⁻¹
    have h3 : smthDQ u m h =
        fun y => (u (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - u y) * h⁻¹ := by
      funext y; simp only [smthDQ, div_eq_mul_inv]
    simp only [smthGrad]
    rw [h3, h2.fderiv]
    simp only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.sub_apply, smul_eq_mul]
    ring
  
  have hAvgC : ∀ (h : ℝ) (v z : Fin 2 → ℝ), Continuous (fun s : ℝ => G (z + (s * h) • v)) :=
    fun h v z => hGc.comp (continuous_const.add ((continuous_id.mul continuous_const).smul
      continuous_const))
  have hAvgB : ∀ (h : ℝ) (v x : Fin 2 → ℝ), |∫ s in (0:ℝ)..1, G (x + (s * h) • v)| ≤ (B : ℝ) := by
    intro h v x
    have := intervalIntegral.norm_integral_le_of_norm_le_const (a := 0) (b := 1) (C := (B : ℝ))
      (f := fun s => G (x + (s * h) • v)) (fun s _ => by rw [Real.norm_eq_abs]; exact hGB _)
    simpa [Real.norm_eq_abs] using this
  have hAvgH : ∀ (h : ℝ) (v x y : Fin 2 → ℝ),
      dist (∫ s in (0:ℝ)..1, G (x + (s * h) • v)) (∫ s in (0:ℝ)..1, G (y + (s * h) • v)) ≤
        (C : ℝ) * dist x y ^ (α : ℝ) := by
    intro h v x y
    rw [Real.dist_eq, ← intervalIntegral.integral_sub ((hAvgC h v x).intervalIntegrable _ _)
      ((hAvgC h v y).intervalIntegrable _ _)]
    have := intervalIntegral.norm_integral_le_of_norm_le_const (a := 0) (b := 1)
      (C := (C : ℝ) * dist x y ^ (α : ℝ))
      (f := fun s => G (x + (s * h) • v) - G (y + (s * h) • v)) (fun s _ => by
        rw [Real.norm_eq_abs, ← Real.dist_eq]
        have h1 := hGH.dist_le (Set.mem_univ (x + (s * h) • v)) (Set.mem_univ (y + (s * h) • v))
        rwa [dist_add_right] at h1)
    simpa [Real.norm_eq_abs] using this
  have hPeq : ∀ (m i : Fin 2) (h : ℝ), h ≠ 0 → ∀ x : Fin 2 → ℝ,
      smthDQ (fun y => if i = m then -Ψ m y else 0) m h x =
        if i = m then -(∫ s in (0:ℝ)..1, G (x + (s * h) • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)))
        else 0 := by
    intro m i h hh0 x
    by_cases hi : i = m
    · rw [if_pos hi, ← hΨdq m x h hh0]
      simp only [smthDQ, if_pos hi]
      ring
    · rw [if_neg hi]
      simp only [smthDQ, if_neg hi, sub_self, zero_div]
  
  have hsol : ∀ m : Fin 2,
      smthLinSol a (fun x i => if i = m then -Ψ m x else 0) w (Metric.ball x₀ ρ) := by
    intro m φ hφ hφc hφs
    rw [hweak φ hφ hφc hφs, hΨibp m φ hφ hφc, ← integral_neg]
    congr 1
    funext x
    fin_cases m <;> simp [Fin.sum_univ_two]
  
  obtain ⟨R, hRdef⟩ : ∃ R : ℝ, R = ρ / 4 := ⟨_, rfl⟩
  have hR : 0 < R := by rw [hRdef]; positivity
  have h2R : Metric.ball x₀ (2 * R) ⊆ Metric.ball x₀ ρ :=
    Metric.ball_subset_ball (by rw [hRdef]; linarith)
  have hRS : Metric.ball x₀ R ⊆ Metric.ball x₀ ρ :=
    Metric.ball_subset_ball (by rw [hRdef]; linarith)
  have hwd : ∀ x ∈ Metric.ball x₀ ρ, DifferentiableAt ℝ w x := fun x hx =>
    (hw1.differentiableOn (by norm_num)).differentiableAt (Metric.isOpen_ball.mem_nhds hx)
  have hB0 : (0 : ℝ) ≤ B := NNReal.coe_nonneg B
  have hC0 : (0 : ℝ) ≤ C := NNReal.coe_nonneg C
  obtain ⟨K₀, hK₀⟩ : ∃ K₀ : NNReal, K₀ = B + C + 2 * B * B + 4 * B * C := ⟨_, rfl⟩
  have hK₀r : (K₀ : ℝ) = B + C + 2 * B * B + 4 * B * C := by rw [hK₀]; push_cast; ring
  have hBB : 0 ≤ (B : ℝ) * B := mul_nonneg hB0 hB0
  have hBC : 0 ≤ (B : ℝ) * C := mul_nonneg hB0 hC0
  have hBK : (B : ℝ) ≤ K₀ := by rw [hK₀r]; linarith
  have hCK : (C : ℝ) ≤ K₀ := by rw [hK₀r]; linarith
  have hFK2 : (C : ℝ) + 4 * B * C ≤ K₀ := by rw [hK₀r]; linarith
  
  have hdata : ∀ m : Fin 2, ∀ h : ℝ, 0 < |h| → |h| < R →
      smthSchauderData lam K₀ α (fun x => a (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)))
        (fun x i => smthDQ (fun y => if i = m then -Ψ m y else 0) m h x -
          ∑ j : Fin 2, smthDQ (fun y => a y i j) m h x * smthGrad w x j)
        (smthDQ w m h) (Metric.ball x₀ R) := by
    intro m h hh hhR
    have hh0 : h ≠ 0 := abs_pos.mp hh
    have hv : ‖h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)‖ = |h| := by
      rw [norm_smul, Pi.norm_single, norm_one, mul_one, Real.norm_eq_abs]
    have hshift : ∀ x ∈ Metric.ball x₀ R,
        x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ) ∈ Metric.ball x₀ (2 * R) := by
      intro x hx
      rw [Metric.mem_ball] at hx ⊢
      have h1 : dist (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) x = |h| := by
        rw [dist_eq_norm, add_sub_cancel_left, hv]
      have h2 := dist_triangle (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) x x₀
      linarith
    have hshS : ∀ x ∈ Metric.ball x₀ R,
        x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ) ∈ Metric.ball x₀ ρ :=
      fun x hx => h2R (hshift x hx)
    have hdist : ∀ x y : Fin 2 → ℝ, dist (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))
        (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) = dist x y := fun x y => dist_add_right _ _ _
    have mvt : ∀ f : (Fin 2 → ℝ) → ℝ, (∀ x ∈ Metric.ball x₀ ρ, DifferentiableAt ℝ f x) →
        HolderOnWith C α (fun x => smthGrad f x m) (Metric.ball x₀ ρ) →
        (∀ x ∈ Metric.ball x₀ ρ, |smthGrad f x m| ≤ (B : ℝ)) →
        (∀ x ∈ Metric.ball x₀ R, |smthDQ f m h x| ≤ (B : ℝ)) ∧
          HolderOnWith C α (smthDQ f m h) (Metric.ball x₀ R) :=
      fun f hd hH hB => smth_dq_mvt_bounds f x₀ R m B C α hR (fun x hx => hd x (h2R hx))
        (fun x hx => hB x (h2R hx)) (hH.mono h2R) h hh hhR
    have dqF : ∀ i : Fin 2,
        (∀ x ∈ Metric.ball x₀ R, |smthDQ (fun y => if i = m then -Ψ m y else 0) m h x| ≤ (B : ℝ)) ∧
          HolderOnWith C α (smthDQ (fun y => if i = m then -Ψ m y else 0) m h)
            (Metric.ball x₀ R) := by
      intro i
      refine ⟨fun x _ => ?_, of_dist _ _ _ _ (fun x _ y _ => ?_)⟩
      · rw [hPeq m i h hh0 x]
        split_ifs
        · rw [abs_neg]; exact hAvgB _ _ _
        · rw [abs_zero]; exact hB0
      · rw [hPeq m i h hh0 x, hPeq m i h hh0 y]
        split_ifs
        · rw [dist_neg_neg]; exact hAvgH _ _ _ _
        · rw [dist_self]; positivity
    have dqA := fun i j : Fin 2 => mvt (fun y => a y i j) (had i j) (hda i j m).1 (hda i j m).2
    have dqW := mvt w hwd (hdw m).1 (hdw m).2
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · 
      intro x hx ξ
      exact hell _ (hshS x hx) ξ
    · 
      intro x hx i j
      exact ((ha i j).2 _ (hshS x hx)).trans hBK
    · 
      refine of_dist _ _ _ _ (fun x hx y hy => ?_)
      have hD : 0 ≤ (K₀ : ℝ) * dist x y ^ (α : ℝ) := by positivity
      refine (dist_pi_le_iff hD).2 (fun i => (dist_pi_le_iff hD).2 (fun j => ?_))
      have h1 := (ha i j).1.dist_le (hshS x hx) (hshS y hy)
      rw [hdist] at h1
      exact h1.trans (mul_le_mul_of_nonneg_right hCK (by positivity))
    · 
      intro x hx i
      have e1 := (dqF i).1 x hx
      have e2 := (dqA i 0).1 x hx
      have e3 := (dqA i 1).1 x hx
      have e4 := (hdw 0).2 x (hRS hx)
      have e5 := (hdw 1).2 x (hRS hx)
      simp only [Fin.sum_univ_two]
      calc _ ≤ |smthDQ (fun y => if i = m then -Ψ m y else 0) m h x| +
            (|smthDQ (fun y => a y i 0) m h x| * |smthGrad w x 0| +
              |smthDQ (fun y => a y i 1) m h x| * |smthGrad w x 1|) := by
            refine (abs_sub _ _).trans (add_le_add le_rfl ?_)
            rw [← abs_mul, ← abs_mul]
            exact abs_add_le _ _
        _ ≤ B + (B * B + B * B) := add_le_add e1 (add_le_add
            (mul_le_mul e2 e4 (abs_nonneg _) hB0) (mul_le_mul e3 e5 (abs_nonneg _) hB0))
        _ ≤ K₀ := by rw [hK₀r]; linarith
    · 
      refine of_dist _ _ _ _ (fun x hx y hy => ?_)
      have hDn : 0 ≤ dist x y ^ (α : ℝ) := by positivity
      have hD : 0 ≤ (K₀ : ℝ) * dist x y ^ (α : ℝ) := by positivity
      refine (dist_pi_le_iff hD).2 (fun i => ?_)
      have hxρ := hRS hx
      have hyρ := hRS hy
      have f1 := (dqF i).2.dist_le hx hy
      have f2 := (dqA i 0).2.dist_le hx hy
      have f3 := (dqA i 1).2.dist_le hx hy
      have f4 := (hdw 0).1.dist_le hxρ hyρ
      have f5 := (hdw 1).1.dist_le hxρ hyρ
      simp only [Real.dist_eq] at f1 f2 f3 f4 f5 ⊢
      have p0 := prod_le _ _ _ _ _ _ ((dqA i 0).1 x hx) ((hdw 0).2 y hyρ) f2 f4
      have p1 := prod_le _ _ _ _ _ _ ((dqA i 1).1 x hx) ((hdw 1).2 y hyρ) f3 f5
      simp only [Fin.sum_univ_two]
      calc _ ≤ (C : ℝ) * dist x y ^ (α : ℝ) + 2 * (2 * B * (C * dist x y ^ (α : ℝ))) :=
            comb _ _ _ _ _ _ _ _ f1 p0 p1
        _ = (C + 4 * B * C) * dist x y ^ (α : ℝ) := by ring
        _ ≤ K₀ * dist x y ^ (α : ℝ) := mul_le_mul_of_nonneg_right hFK2 hDn
    · 
      intro x hx
      exact (dqW.1 x hx).trans hBK
    · 
      have hc : ContDiffOn ℝ 1
          (fun x => (w (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - w x) / h)
          (Metric.ball x₀ R) := by
        refine ContDiffOn.div_const (ContDiffOn.sub ?_ (hw1.mono hRS)) h
        exact hw1.comp (contDiffOn_id.add contDiffOn_const) (fun x hx => hshS x hx)
      exact hc
    · 
      refine ⟨Real.toNNReal (2 * C / |h|), of_dist _ _ _ _ (fun x hx y hy => ?_)⟩
      rw [Real.coe_toNNReal _ (by positivity)]
      have hD : 0 ≤ 2 * (C : ℝ) / |h| * dist x y ^ (α : ℝ) := by positivity
      refine (dist_pi_le_iff hD).2 (fun j => ?_)
      rw [hgdq w m h x (hwd x (hRS hx)) (hwd _ (hshS x hx)) j,
        hgdq w m h y (hwd y (hRS hy)) (hwd _ (hshS y hy)) j, Real.dist_eq]
      have g1 := (hdw j).1.dist_le (hshS x hx) (hshS y hy)
      have g2 := (hdw j).1.dist_le (hRS hx) (hRS hy)
      rw [hdist] at g1
      simp only [Real.dist_eq] at g1 g2
      rw [div_sub_div_same, abs_div, div_le_iff₀ hh]
      have e2 : 2 * (C : ℝ) / |h| * dist x y ^ (α : ℝ) * |h| = 2 * C * dist x y ^ (α : ℝ) := by
        field_simp
      rw [e2]
      have e : ∀ p q r s : ℝ, p - q - (r - s) = (p - r) - (q - s) := by intros; ring
      rw [e]
      have h4 := abs_sub (smthGrad w (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) j -
        smthGrad w (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) j) (smthGrad w x j - smthGrad w y j)
      linarith
    · 
      exact smth_lin_dq_eq (Metric.ball x₀ ρ) Metric.isOpen_ball a
        (fun x i => if i = m then -Ψ m x else 0) w
        (fun i j => (ha i j).1.continuousOn hα0)
        (fun i => by
          show ContinuousOn (fun x => if i = m then -Ψ m x else 0) (Metric.ball x₀ ρ)
          by_cases hi : i = m
          · simp only [if_pos hi]; exact (hΨc m).neg.continuousOn
          · simp only [if_neg hi]; exact continuousOn_const)
        hwd (fun j => (hdw j).1.continuousOn hα0) (hsol m) x₀ R hR h2R m h hh hhR
  
  obtain ⟨M, hM⟩ := smth_lin_schauder_est α lam K₀ R hα0 hα1 hlam hR
  refine ⟨R / 2, M, half_pos hR, by rw [hRdef]; linarith, fun m => ?_⟩
  refine smth_dq_limit w x₀ (R / 2) (R / 2) (half_pos hR) (half_pos hR) ?_ m M α hα0 ?_
  · refine hw1.mono ?_
    rw [add_halves]
    exact hRS
  · intro h hpos hlt
    exact hM x₀ _ _ (smthDQ w m h) (hdata m h hpos (by linarith))

theorem pdls_C2_step (S : Set E2) (hS : IsOpen S)
    (A : E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hA : ∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) S)
    (hApd : ∀ x ∈ S, (A x).PosDef)
    (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1)
    (F : E2 → ℝ) (hF : pcrHolLoc α 0 F S)
    (u : E2 → ℝ) (hu : pcrHolLoc α 1 u S)
    (hweak : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ S →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * pd2 b u x * pd2 a ζ x = ∫ x, F x * ζ x) :
    pcrHolLoc α 2 u S :=
by
  
  obtain ⟨_, hbr⟩ := pcr_holF_bridge α hα0 hα1
  have hα'0 : 0 < Real.toNNReal α := Real.toNNReal_pos.2 hα0
  have hα'1 : Real.toNNReal α < 1 := Real.toNNReal_lt_one.2 hα1
  have hT : IsOpen {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S} :=
    hS.preimage (EuclideanSpace.equiv (Fin 2) ℝ).symm.continuous
  have hut := (hbr 1 u S hS).1 hu
  have hFt := (hbr 0 F S hS).1 hF
  refine (hbr 2 u S hS).2 ?_
  have hw1 : ContDiffOn ℝ 1 (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z))
      {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S} := by
    have h := hu.1.comp (EuclideanSpace.equiv (Fin 2) ℝ).symm.contDiff.contDiffOn
      (fun y (hy : (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S) => hy)
    exact_mod_cast h
  have has : ∀ i j : Fin 2, ContDiffOn ℝ ∞
      (fun y => A ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) i j)
      {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S} := fun i j =>
    (hA i j).comp (EuclideanSpace.equiv (Fin 2) ℝ).symm.contDiff.contDiffOn
      (fun y (hy : (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S) => hy)
  
  have hpos : ∀ y ∈ {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S},
      ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 →
        0 < ∑ i : Fin 2, ∑ j : Fin 2,
          A ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) i j * ξ i * ξ j := by
    intro y hy ξ hξ
    have h := (hApd _ hy).dotProduct_mulVec_pos hξ
    simp only [star_trivial, dotProduct, Matrix.mulVec, Fin.sum_univ_two] at h
    simp only [Fin.sum_univ_two]
    linarith
  
  have hlocal : ∀ x₀ ∈ {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S},
      ∃ r : ℝ, 0 < r ∧ ∃ M : NNReal,
        Metric.ball x₀ r ⊆ {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S} ∧
        ∀ m : Fin 2,
          ContDiffOn ℝ 1 (fun x => smthGrad (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z)) x m)
            (Metric.ball x₀ r) ∧
          HolderOnWith M (Real.toNNReal α)
            (smthGrad (fun x => smthGrad (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z)) x m))
            (Metric.ball x₀ r) := by
    intro x₀ hx₀
    obtain ⟨ρ₁, B, C, lam, hρ₁, _, hcl, hlam, hell, ha, hda, hdw, hFH, hFB⟩ :=
      pdls_c2_local_data _ hT (Real.toNNReal α) hα'0 hα'1
        (fun y i j => A ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) i j) has hpos
        (fun y => F ((EuclideanSpace.equiv (Fin 2) ℝ).symm y))
        (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z)) hFt hut.2 x₀ hx₀
    obtain ⟨G, hGc, hGH, hGB, hGeq⟩ := pdls_c2_clamp x₀ ρ₁ hρ₁ _ C B (Real.toNNReal α) hα'0 hFH hFB
    have hpot := fun m : Fin 2 => pdls_c2_potential G hGc m
    choose Ψ hΨc hΨibp hΨdq using hpot
    have hsub : Metric.ball x₀ (ρ₁ / 2) ⊆ Metric.ball x₀ ρ₁ :=
      Metric.ball_subset_ball (by linarith)
    have hsubT : Metric.ball x₀ (ρ₁ / 2) ⊆
        {y : Fin 2 → ℝ | (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ S} :=
      hsub.trans (Metric.ball_subset_closedBall.trans hcl)
    have had : ∀ i j : Fin 2, ∀ x ∈ Metric.ball x₀ (ρ₁ / 2),
        DifferentiableAt ℝ (fun y => A ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) i j) x :=
      fun i j x hx => ((has i j).differentiableOn (by simp)).differentiableAt
        (hT.mem_nhds (hsubT hx))
    have hweak' : ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ →
        tsupport φ ⊆ Metric.ball x₀ (ρ₁ / 2) →
        ∫ x, ∑ i : Fin 2, ∑ j : Fin 2, A ((EuclideanSpace.equiv (Fin 2) ℝ).symm x) i j *
            smthGrad (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z)) x j * smthGrad φ x i =
          ∫ x, G x * φ x := by
      intro φ hφ hφc hφs
      rw [pdls_c2_transport S A F u hweak φ hφ hφc (hφs.trans hsubT)]
      congr 1
      funext x
      by_cases hx : x ∈ Metric.ball x₀ (ρ₁ / 2)
      · rw [hGeq (Metric.ball_subset_closedBall hx)]
      · have h0 : φ x = 0 := image_eq_zero_of_notMem_tsupport (fun h => hx (hφs h))
        rw [h0, mul_zero, mul_zero]
    obtain ⟨r, M, hr, hrρ, hl⟩ := pdls_c2_dq_schauder x₀ (ρ₁ / 2) (half_pos hρ₁) (Real.toNNReal α)
      B C hα'0 hα'1 lam hlam (fun y i j => A ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) i j)
      (fun z => u ((EuclideanSpace.equiv (Fin 2) ℝ).symm z)) G Ψ
      (fun x hx ξ => hell x (hsub hx) ξ)
      (fun i j => ⟨(ha i j).1.mono hsub, fun x hx => (ha i j).2 x (hsub hx)⟩)
      had
      (fun i j m => ⟨(hda i j m).1.mono hsub, fun x hx => (hda i j m).2 x (hsub hx)⟩)
      (hw1.mono hsubT)
      (fun j => ⟨(hdw j).1.mono hsub, fun x hx => (hdw j).2 x (hsub hx)⟩)
      hGc hGH hGB hΨc hΨibp hΨdq hweak'
    exact ⟨r, hr, M, (Metric.ball_subset_ball hrρ).trans hsubT, hl⟩
  
  have hcoord : ∀ (f : (Fin 2 → ℝ) → (Fin 2 → ℝ)) (C' β : NNReal) (s : Set (Fin 2 → ℝ))
      (j : Fin 2), HolderOnWith C' β f s → HolderOnWith C' β (fun x => f x j) s := by
    intro f C' β s j hf x hx y hy
    exact (edist_le_pi_edist (f x) (f y) j).trans (hf x hx y hy)
  refine ⟨hut.1, fun m => ⟨?_, fun j => ⟨?_, ?_⟩⟩⟩
  · intro x hx
    obtain ⟨r, hr, M, _, hl⟩ := hlocal x hx
    exact ((hl m).1.differentiableOn (by norm_num)).differentiableAt
      (Metric.isOpen_ball.mem_nhds (Metric.mem_ball_self hr))
  · intro x hx
    obtain ⟨r, hr, M, _, hl⟩ := hlocal x hx
    have hH := hcoord _ M (Real.toNNReal α) _ j (hl m).2
    exact ((hH.continuousOn hα'0).continuousAt
      (Metric.isOpen_ball.mem_nhds (Metric.mem_ball_self hr))).continuousWithinAt
  · intro x hx
    obtain ⟨r, hr, M, hsub, hl⟩ := hlocal x hx
    exact ⟨r, M, hr, hsub, hcoord _ M (Real.toNNReal α) _ j (hl m).2⟩

theorem pdls_weak_classical (W : Set E2) (hW : IsOpen W)
    (A : E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hA : ∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) W)
    (F : E2 → ℝ) (hFc : ContinuousOn F W)
    (w u : E2 → ℝ) (G : Fin 2 → E2 → ℝ)
    (hL2 : ∀ L : Set E2, IsCompact L → L ⊆ W →
      MemLp w 2 (volume.restrict L) ∧ ∀ k, MemLp (G k) 2 (volume.restrict L))
    (hgrad : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∀ k : Fin 2, ∫ x, w x * pd2 k ζ x = -(∫ x, G k x * ζ x))
    (hweak : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * G b x * pd2 a ζ x = ∫ x, F x * ζ x)
    (hae : ∀ᵐ x ∂(volume.restrict W), w x = u x) (hu : ContDiffOn ℝ 1 u W) :
    (∀ k : Fin 2, ∀ᵐ x ∂(volume.restrict W), G k x = pd2 k u x) ∧
    (∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * pd2 b u x * pd2 a ζ x = ∫ x, F x * ζ x) ∧
    (ContDiffOn ℝ 2 u W → ∀ x ∈ W,
      -(∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A x' a b * pd2 b u x') x) = F x) :=
by
  have hWm : MeasurableSet W := hW.measurableSet
  
  have hfdz : ∀ ζ : E2 → ℝ, tsupport ζ ⊆ W → ∀ x, x ∉ W → ζ x = 0 ∧ ∀ a : Fin 2, pd2 a ζ x = 0 := by
    intro ζ hζW x hx
    have hx' : x ∉ tsupport ζ := fun hm => hx (hζW hm)
    refine ⟨image_eq_zero_of_notMem_tsupport hx', fun a => ?_⟩
    have hx'' : x ∉ tsupport (fderiv ℝ ζ) := fun hm => hx' (tsupport_fderiv_subset ℝ hm)
    have h0 : fderiv ℝ ζ x = 0 := image_eq_zero_of_notMem_tsupport hx''
    show fderiv ℝ ζ x (e2 a) = 0
    rw [h0, ContinuousLinearMap.zero_apply]
  
  have hpdtest : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∀ a : Fin 2, Continuous (pd2 a ζ) ∧ HasCompactSupport (pd2 a ζ) ∧ tsupport (pd2 a ζ) ⊆ W := by
    intro ζ hζ hζc hζW a
    have hcont : Continuous (pd2 a ζ) := by
      show Continuous (fun x => fderiv ℝ ζ x (e2 a))
      exact (hζ.continuous_fderiv (by simp)).clm_apply continuous_const
    have hsupp : Function.support (pd2 a ζ) ⊆ tsupport ζ := by
      intro x hx
      by_contra hxn
      apply hx
      have h0 : fderiv ℝ ζ x = 0 :=
        image_eq_zero_of_notMem_tsupport (fun hm => hxn (tsupport_fderiv_subset ℝ hm))
      show fderiv ℝ ζ x (e2 a) = 0
      rw [h0, ContinuousLinearMap.zero_apply]
    exact ⟨hcont, hζc.mono' hsupp, (closure_minimal hsupp (isClosed_tsupport ζ)).trans hζW⟩
  
  have s1 : ∀ f φ : E2 → ℝ, ContinuousOn f W → Continuous φ → HasCompactSupport φ →
      tsupport φ ⊆ W → Integrable (fun x => f x * φ x) := by
    intro f φ hf hφ hφc hφW
    have hcont : Continuous (fun x => f x * φ x) := by
      rw [continuous_iff_continuousAt]
      intro x
      by_cases hx : x ∈ W
      · exact (hf.continuousAt (hW.mem_nhds hx)).mul hφ.continuousAt
      · have hO : (tsupport φ)ᶜ ∈ 𝓝 x :=
          (isClosed_tsupport φ).isOpen_compl.mem_nhds (fun hm => hx (hφW hm))
        have hev : (fun _ => (0 : ℝ)) =ᶠ[𝓝 x] (fun y => f y * φ y) := by
          filter_upwards [hO] with y hy
          rw [image_eq_zero_of_notMem_tsupport hy, mul_zero]
        exact continuousAt_const.congr hev
    exact hcont.integrable_of_hasCompactSupport (HasCompactSupport.mul_left (f := f) hφc)
  
  have ibpL : ∀ f : E2 → ℝ, ContDiffOn ℝ 1 f W → ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ →
      HasCompactSupport ζ → tsupport ζ ⊆ W → ∀ k : Fin 2,
      ∫ x, f x * pd2 k ζ x = -(∫ x, pd2 k f x * ζ x) := by
    intro f hf ζ hζ hζc hζW k
    have hvan : ∀ x, x ∉ W → (ζ =ᶠ[𝓝 x] 0) := fun x hx =>
      notMem_tsupport_iff_eventuallyEq.mp (fun hm => hx (hζW hm))
    have hFder : ∀ x, HasFDerivAt (fun y => f y * ζ y)
        (fderiv ℝ (fun y => f y * ζ y) x) x ∧
        fderiv ℝ (fun y => f y * ζ y) x (e2 k) = pd2 k f x * ζ x + f x * pd2 k ζ x := by
      intro x
      by_cases hx : x ∈ W
      · have hf' : HasFDerivAt f (fderiv ℝ f x) x :=
          ((hf.differentiableOn (by simp)).differentiableAt (hW.mem_nhds hx)).hasFDerivAt
        have hζ' : HasFDerivAt ζ (fderiv ℝ ζ x) x :=
          (hζ.differentiable (by simp) x).hasFDerivAt
        have hm : HasFDerivAt (fun y => f y * ζ y)
            (f x • fderiv ℝ ζ x + ζ x • fderiv ℝ f x) x := hf'.mul hζ'
        refine ⟨hm.differentiableAt.hasFDerivAt, ?_⟩
        rw [hm.fderiv]
        simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, pd2]
        ring
      · have hF0 : (fun y => f y * ζ y) =ᶠ[𝓝 x] (fun _ => (0 : ℝ)) := by
          filter_upwards [hvan x hx] with y hy
          simp only [Pi.zero_apply] at hy
          simp [hy]
        have hd : HasFDerivAt (fun y => f y * ζ y) (0 : E2 →L[ℝ] ℝ) x :=
          (hasFDerivAt_const (0 : ℝ) x).congr_of_eventuallyEq hF0
        refine ⟨hd.differentiableAt.hasFDerivAt, ?_⟩
        rw [hd.fderiv, (hfdz ζ hζW x hx).1, (hfdz ζ hζW x hx).2 k]
        simp
    have hFd : Differentiable ℝ (fun y => f y * ζ y) :=
      fun x => (hFder x).1.differentiableAt
    have hprod : (fun x => fderiv ℝ (fun y => f y * ζ y) x (e2 k)) =
        fun x => pd2 k f x * ζ x + f x * pd2 k ζ x := funext fun x => (hFder x).2
    have hpz := hpdtest ζ hζ hζc hζW k
    have hdf : ContinuousOn (pd2 k f) W :=
      (hf.continuousOn_fderiv_of_isOpen hW le_rfl).clm_apply continuousOn_const
    have hg₁ : Integrable (fun x => pd2 k f x * ζ x) :=
      s1 _ ζ hdf hζ.continuous hζc hζW
    have hg₂ : Integrable (fun x => f x * pd2 k ζ x) :=
      s1 f (pd2 k ζ) hf.continuousOn hpz.1 hpz.2.1 hpz.2.2
    have hF : Integrable (fun x => f x * ζ x) := s1 f ζ hf.continuousOn hζ.continuous hζc hζW
    have hF' : Integrable (fun x => fderiv ℝ (fun y => f y * ζ y) x (e2 k)) := by
      rw [hprod]; exact hg₁.add hg₂
    have hI := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := volume)
      (f := fun y => f y * ζ y) (g := fun _ => (1 : ℝ)) (v := e2 k)
      (by simpa using hF') (by simp) (by simpa using hF) hFd (differentiable_const 1)
    have hzero : ∫ x, fderiv ℝ (fun y => f y * ζ y) x (e2 k) = 0 := by
      simp only [fderiv_const_apply, ContinuousLinearMap.zero_apply, mul_zero, integral_zero,
        mul_one] at hI
      linarith
    rw [hprod, integral_add hg₁ hg₂] at hzero
    linarith
  have hpducont : ∀ k : Fin 2, ContinuousOn (pd2 k u) W := fun k =>
    (hu.continuousOn_fderiv_of_isOpen hW le_rfl).clm_apply continuousOn_const
  have haeW : ∀ᵐ x ∂volume, x ∈ W → w x = u x := (ae_restrict_iff' hWm).1 hae
  
  have s2 : ∀ k : Fin 2, ∀ᵐ x ∂volume, x ∈ W → G k x = pd2 k u x := by
    intro k
    have hloc : LocallyIntegrableOn (fun x => G k x - pd2 k u x) W volume := by
      rw [locallyIntegrableOn_iff hW.isLocallyClosed]
      intro L hLW hL
      haveI : IsFiniteMeasure (volume.restrict L) :=
        isFiniteMeasure_restrict.2 hL.measure_lt_top.ne
      have h1 : IntegrableOn (G k) L volume := ((hL2 L hL hLW).2 k).integrable (by norm_num)
      have h2 : IntegrableOn (pd2 k u) L volume :=
        ((hpducont k).mono hLW).integrableOn_compact hL
      exact h1.sub h2
    have htest : ∀ g : E2 → ℝ, ContDiff ℝ ∞ g → HasCompactSupport g → tsupport g ⊆ W →
        ∫ x, g x • (G k x - pd2 k u x) = 0 := by
      intro ζ hζ hζc hζW
      have e1 : ∫ x, w x * pd2 k ζ x = ∫ x, u x * pd2 k ζ x := by
        apply integral_congr_ae
        filter_upwards [haeW] with x hx
        by_cases hxW : x ∈ W
        · rw [hx hxW]
        · rw [(hfdz ζ hζW x hxW).2 k, mul_zero, mul_zero]
      have e2 := ibpL u hu ζ hζ hζc hζW k
      have e3 := hgrad ζ hζ hζc hζW k
      have iG : Integrable (fun x => G k x * ζ x) := by
        haveI : IsFiniteMeasure (volume.restrict (tsupport ζ)) :=
          isFiniteMeasure_restrict.2 (IsCompact.measure_lt_top hζc).ne
        have hGi : IntegrableOn (G k) (tsupport ζ) volume :=
          ((hL2 _ hζc hζW).2 k).integrable (by norm_num)
        have h1 : IntegrableOn (fun x => G k x * ζ x) (tsupport ζ) volume :=
          hGi.mul_continuousOn hζ.continuous.continuousOn hζc
        refine (integrableOn_iff_integrable_of_support_subset ?_).1 h1
        intro x hx
        by_contra hxn
        exact hx (show G k x * ζ x = 0 by rw [image_eq_zero_of_notMem_tsupport hxn, mul_zero])
      have iP : Integrable (fun x => pd2 k u x * ζ x) :=
        s1 _ ζ (hpducont k) hζ.continuous hζc hζW
      have e4 : ∫ x, ζ x • (G k x - pd2 k u x) = ∫ x, (G k x * ζ x - pd2 k u x * ζ x) := by
        congr 1; funext x; rw [smul_eq_mul]; ring
      have e5 : ∫ x, (G k x * ζ x - pd2 k u x * ζ x)
          = (∫ x, G k x * ζ x) - ∫ x, pd2 k u x * ζ x := integral_sub iG iP
      rw [e4, e5]
      linarith
    have := hW.ae_eq_zero_of_integral_contDiff_smul_eq_zero hloc htest
    filter_upwards [this] with x hx hxW
    exact sub_eq_zero.1 (hx hxW)
  
  have s3 : ∀ H : E2 → ℝ, ContinuousOn H W → (∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      tsupport ζ ⊆ W → ∫ x, H x * ζ x = 0) → ∀ x ∈ W, H x = 0 := by
    intro H hH h0
    have hloc : LocallyIntegrableOn H W volume := hH.locallyIntegrableOn hWm
    have h1 := hW.ae_eq_zero_of_integral_contDiff_smul_eq_zero hloc (fun g hg hgc hgW => by
      have hfun : (fun x => g x • H x) = fun x => H x * g x :=
        funext fun x => by rw [smul_eq_mul, mul_comm]
      rw [hfun]
      exact h0 g hg hgc hgW)
    have h2 : H =ᵐ[volume.restrict W] (fun _ => (0 : ℝ)) := (ae_restrict_iff' hWm).2 h1
    intro x hx
    exact Measure.eqOn_open_of_ae_eq h2 hW hH continuousOn_const hx
  have hall : ∀ᵐ x ∂volume, x ∈ W → ∀ b : Fin 2, G b x = pd2 b u x := by
    have hG' : ∀ᵐ x ∂volume, ∀ b : Fin 2, x ∈ W → G b x = pd2 b u x := ae_all_iff.2 s2
    filter_upwards [hG'] with x h1 hx
    exact fun b => h1 b hx
  
  have hii : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * pd2 b u x * pd2 a ζ x = ∫ x, F x * ζ x := by
    intro ζ hζ hζc hζW
    rw [← hweak ζ hζ hζc hζW]
    apply integral_congr_ae
    filter_upwards [hall] with x hx
    by_cases hxW : x ∈ W
    · simp only [hx hxW]
    · obtain ⟨_, hpz⟩ := hfdz ζ hζW x hxW
      simp [hpz]
  refine ⟨fun k => (ae_restrict_iff' hWm).2 (s2 k), hii, ?_⟩
  
  intro hu2
  have hfd1 : ContDiffOn ℝ 1 (fderiv ℝ u) W := hu2.fderiv_of_isOpen hW (by norm_num)
  have hpd1 : ∀ b : Fin 2, ContDiffOn ℝ 1 (pd2 b u) W := fun b => by
    show ContDiffOn ℝ 1 (fun x => fderiv ℝ u x (e2 b)) W
    exact hfd1.clm_apply contDiffOn_const
  have hA1 : ∀ a b : Fin 2, ContDiffOn ℝ 1 (fun x => A x a b) W := fun a b =>
    (hA a b).of_le (by exact_mod_cast le_top)
  obtain ⟨V, hVdef⟩ : ∃ V : Fin 2 → E2 → ℝ,
      V = fun a y => ∑ b : Fin 2, A y a b * pd2 b u y := ⟨_, rfl⟩
  have hVa : ∀ a y, V a y = ∑ b : Fin 2, A y a b * pd2 b u y := by
    intro a y; rw [hVdef]
  have hV : ∀ a : Fin 2, ContDiffOn ℝ 1 (V a) W := by
    intro a
    rw [hVdef]
    exact ContDiffOn.sum (fun b _ => (hA1 a b).mul (hpd1 b))
  have hdV : ∀ a : Fin 2, ContinuousOn (pd2 a (V a)) W := fun a =>
    ((hV a).continuousOn_fderiv_of_isOpen hW le_rfl).clm_apply continuousOn_const
  have hgoal : ∀ x ∈ W, ∑ a : Fin 2, pd2 a (V a) x + F x = 0 := by
    refine s3 (fun x => ∑ a : Fin 2, pd2 a (V a) x + F x)
      ((continuousOn_finset_sum _ (fun a _ => hdV a)).add hFc) ?_
    intro ζ hζ hζc hζW
    have hJ : ∫ x, (V 0 x * pd2 0 ζ x + V 1 x * pd2 1 ζ x) = ∫ x, F x * ζ x := by
      rw [← hii ζ hζ hζc hζW]
      congr 1; funext x; simp only [Fin.sum_univ_two, hVa]; ring
    have hpz := hpdtest ζ hζ hζc hζW
    have iV : ∀ a : Fin 2, Integrable (fun x => V a x * pd2 a ζ x) := fun a =>
      s1 (V a) (pd2 a ζ) (hV a).continuousOn (hpz a).1 (hpz a).2.1 (hpz a).2.2
    have iD : ∀ a : Fin 2, Integrable (fun x => pd2 a (V a) x * ζ x) := fun a =>
      s1 _ ζ (hdV a) hζ.continuous hζc hζW
    have iF : Integrable (fun x => F x * ζ x) := s1 F ζ hFc hζ.continuous hζc hζW
    have ibp : ∀ a : Fin 2, ∫ x, V a x * pd2 a ζ x = -(∫ x, pd2 a (V a) x * ζ x) := fun a =>
      ibpL (V a) (hV a) ζ hζ hζc hζW a
    have e2 : ∫ x, (V 0 x * pd2 0 ζ x + V 1 x * pd2 1 ζ x)
        = (∫ x, V 0 x * pd2 0 ζ x) + ∫ x, V 1 x * pd2 1 ζ x := integral_add (iV 0) (iV 1)
    have e3 : ∫ x, (∑ a : Fin 2, pd2 a (V a) x + F x) * ζ x
        = ∫ x, ((pd2 0 (V 0) x * ζ x + pd2 1 (V 1) x * ζ x) + F x * ζ x) := by
      congr 1; funext x; simp only [Fin.sum_univ_two]; ring
    have e4 : ∫ x, ((pd2 0 (V 0) x * ζ x + pd2 1 (V 1) x * ζ x) + F x * ζ x)
        = (∫ x, (pd2 0 (V 0) x * ζ x + pd2 1 (V 1) x * ζ x)) + ∫ x, F x * ζ x :=
      integral_add ((iD 0).add (iD 1)) iF
    have e5 : ∫ x, (pd2 0 (V 0) x * ζ x + pd2 1 (V 1) x * ζ x)
        = (∫ x, pd2 0 (V 0) x * ζ x) + ∫ x, pd2 1 (V 1) x * ζ x := integral_add (iD 0) (iD 1)
    show ∫ x, (∑ a : Fin 2, pd2 a (V a) x + F x) * ζ x = 0
    rw [e3, e4, e5]
    have i0 := ibp 0
    have i1 := ibp 1
    linarith
  intro x hx
  have hx' : ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A x' a b * pd2 b u x') x + F x = 0 := by
    have h := hgoal x hx
    rw [hVdef] at h
    exact h
  linarith

theorem pdls_holLoc_glue (α : ℝ) (hα0 : 0 < α) (m : ℕ) :
    (∀ (w : E2 → ℝ) (U V : Set E2), IsOpen V → V ⊆ U → pcrHolLoc α m w U → pcrHolLoc α m w V) ∧
    (∀ (W : Set E2) (w : E2 → ℝ), IsOpen W →
      (∀ x ∈ W, ∃ r : ℝ, 0 < r ∧ Metric.ball x r ⊆ W ∧ ∃ v : E2 → ℝ,
        pcrHolLoc α m v (Metric.ball x r) ∧ ∀ᵐ y ∂(volume.restrict (Metric.ball x r)), w y = v y) →
      ∃ w' : E2 → ℝ, pcrHolLoc α m w' W ∧ ∀ᵐ x ∂(volume.restrict W), w x = w' x) :=
by
  refine ⟨?_, ?_⟩
  · intro w U V hV hVU hw
    refine ⟨hw.1.mono hVU, fun x hx => ?_⟩
    obtain ⟨ε, hε, hεV⟩ := Metric.isOpen_iff.mp hV x hx
    obtain ⟨ρ, hρ, _, C, H⟩ := hw.2 x (hVU hx)
    refine ⟨min ρ ε, lt_min hρ hε,
      (Metric.ball_subset_ball (min_le_right _ _)).trans hεV, C, fun y hy z hz => ?_⟩
    exact H y (Metric.ball_subset_ball (min_le_left _ _) hy) z
      (Metric.ball_subset_ball (min_le_left _ _) hz)
  · intro W w hW h
    choose! r hr hrW v hv hae using h
    
    have hover : ∀ x ∈ W, ∀ x' ∈ W, ∀ z ∈ Metric.ball x (r x) ∩ Metric.ball x' (r x'),
        v x z = v x' z := by
      intro x hx x' hx' z hz
      have hO : IsOpen (Metric.ball x (r x) ∩ Metric.ball x' (r x')) :=
        Metric.isOpen_ball.inter Metric.isOpen_ball
      have h1 : ∀ᵐ y ∂(volume.restrict (Metric.ball x (r x) ∩ Metric.ball x' (r x'))),
          w y = v x y := ae_restrict_of_ae_restrict_of_subset Set.inter_subset_left (hae x hx)
      have h2 : ∀ᵐ y ∂(volume.restrict (Metric.ball x (r x) ∩ Metric.ball x' (r x'))),
          w y = v x' y := ae_restrict_of_ae_restrict_of_subset Set.inter_subset_right (hae x' hx')
      have h3 : v x =ᵐ[volume.restrict (Metric.ball x (r x) ∩ Metric.ball x' (r x'))] v x' := by
        filter_upwards [h1, h2] with y hy1 hy2
        rw [← hy1, ← hy2]
      exact MeasureTheory.Measure.eqOn_open_of_ae_eq h3 hO
        ((hv x hx).1.continuousOn.mono Set.inter_subset_left)
        ((hv x' hx').1.continuousOn.mono Set.inter_subset_right) hz
    set w' : E2 → ℝ := fun y => v y y with hw'def
    have hagree : ∀ x ∈ W, Set.EqOn w' (v x) (Metric.ball x (r x)) := by
      intro x hx z hz
      have hzW : z ∈ W := hrW x hx hz
      exact hover z hzW x hx z ⟨Metric.mem_ball_self (hr z hzW), hz⟩
    have hgerm : ∀ x ∈ W, ∀ y ∈ Metric.ball x (r x),
        iteratedFDeriv ℝ m w' y = iteratedFDeriv ℝ m (v x) y := by
      intro x hx y hy
      have hev : w' =ᶠ[𝓝 y] v x :=
        Filter.eventuallyEq_of_mem (Metric.isOpen_ball.mem_nhds hy) (hagree x hx)
      exact (hev.iteratedFDeriv ℝ m).eq_of_nhds
    refine ⟨w', ⟨?_, ?_⟩, ?_⟩
    · apply contDiffOn_of_locally_contDiffOn
      intro x hx
      refine ⟨Metric.ball x (r x), Metric.isOpen_ball, Metric.mem_ball_self (hr x hx), ?_⟩
      exact ((hv x hx).1.mono Set.inter_subset_right).congr
        (fun y hy => hagree x hx hy.2)
    · intro x hx
      obtain ⟨ρ, hρ, hρB, C, H⟩ := (hv x hx).2 x (Metric.mem_ball_self (hr x hx))
      refine ⟨ρ, hρ, hρB.trans (hrW x hx), C, fun y hy z hz => ?_⟩
      rw [hgerm x hx y (hρB hy), hgerm x hx z (hρB hz)]
      exact H y hy z hz
    · obtain ⟨T, hTc, hTU⟩ := TopologicalSpace.isOpen_iUnion_countable
        (fun i : W => Metric.ball (i : E2) (r i)) (fun i => Metric.isOpen_ball)
      have hWU : W = ⋃ i : W, Metric.ball (i : E2) (r i) := by
        ext y
        constructor
        · intro hy
          exact Set.mem_iUnion.2 ⟨⟨y, hy⟩, Metric.mem_ball_self (hr y hy)⟩
        · intro hy
          obtain ⟨i, hi⟩ := Set.mem_iUnion.1 hy
          exact hrW i i.2 hi
      have hWT : W = ⋃ i ∈ T, Metric.ball (i : E2) (r i) := by rw [hTU]; exact hWU
      rw [hWT]
      refine (MeasureTheory.ae_restrict_biUnion_iff
        (fun i : W => Metric.ball (i : E2) (r i)) hTc (fun y => w y = w' y)).2 ?_
      intro i _
      filter_upwards [hae i i.2, ae_restrict_mem Metric.isOpen_ball.measurableSet] with y hy hyB
      exact hy.trans (hagree i i.2 hyB).symm

theorem pcr_div_local_schauder (W : Set E2) (hW : IsOpen W)
    (A : E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hA : ∀ a b : Fin 2, ContDiffOn ℝ ∞ (fun x => A x a b) W)
    (hApd : ∀ x ∈ W, (A x).PosDef)
    (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1)
    (F : E2 → ℝ) (hF : pcrHolLoc α 0 F W)
    (w : E2 → ℝ) (G : Fin 2 → E2 → ℝ)
    (hL2 : ∀ L : Set E2, IsCompact L → L ⊆ W →
      MemLp w 2 (volume.restrict L) ∧ ∀ k, MemLp (G k) 2 (volume.restrict L))
    (hgrad : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∀ k : Fin 2, ∫ x, w x * pd2 k ζ x = -(∫ x, G k x * ζ x))
    (hweak : ∀ ζ : E2 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ W →
      ∫ x, ∑ a : Fin 2, ∑ b : Fin 2, A x a b * G b x * pd2 a ζ x = ∫ x, F x * ζ x) :
    ∃ w' : E2 → ℝ, pcrHolLoc α 2 w' W ∧ (∀ᵐ x ∂(volume.restrict W), w x = w' x) ∧
      ∀ x ∈ W, -(∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A x' a b * pd2 b w' x') x) = F x :=
by
  
  have hFc : ContinuousOn F W := hF.1.continuousOn
  have hF2 : ∀ L : Set E2, IsCompact L → L ⊆ W → MemLp F 2 (volume.restrict L) := by
    intro L hL hLW
    obtain ⟨C, hC⟩ := hL.exists_bound_of_continuousOn (hFc.mono hLW)
    haveI : IsFiniteMeasure (volume.restrict L) :=
      isFiniteMeasure_restrict.mpr hL.measure_lt_top.ne
    exact MemLp.of_bound ((hFc.mono hLW).aestronglyMeasurable hL.measurableSet) C
      (ae_restrict_of_forall_mem hL.measurableSet hC)
  
  have h1α : 0 < 1 - α := by linarith
  have hp : 2 ≤ ((⌈2 / (1 - α)⌉₊ : ℕ) : ℝ) * (1 - α) :=
    (div_le_iff₀ h1α).mp (Nat.le_ceil _)
  
  have hloc : ∀ x₀ ∈ W, ∃ r : ℝ, 0 < r ∧ Metric.ball x₀ r ⊆ W ∧ ∃ v : E2 → ℝ,
      pcrHolLoc α 1 v (Metric.ball x₀ r) ∧
        ∀ᵐ y ∂(volume.restrict (Metric.ball x₀ r)), w y = v y := by
    intro x₀ hx₀
    obtain ⟨r₁, hr₁, hB₁, H, hHL2, hHgrad⟩ := elr_local_H2 W hW A hA hApd w G F
      (fun L hL hLW => ⟨(hL2 L hL hLW).1, (hL2 L hL hLW).2, hF2 L hL hLW⟩) hgrad hweak x₀ hx₀
    have hB₁o : IsOpen (Metric.ball x₀ r₁) := Metric.isOpen_ball
    have hLp : ∀ L : Set E2, IsCompact L → L ⊆ Metric.ball x₀ r₁ → ∀ k,
        MemLp (G k) (⌈2 / (1 - α)⌉₊ : ℕ) (volume.restrict L) :=
      fun L hL hLB k => pdls_sobolev_Lp (Metric.ball x₀ r₁) hB₁o (G k) (H k)
        (fun L' hL' hL'B => ⟨(hL2 L' hL' (hL'B.trans hB₁)).2 k, fun m => hHL2 L' hL' hL'B k m⟩)
        (fun ζ hζ hζc hζs m => hHgrad ζ hζ hζc hζs k m) _ L hL hLB
    obtain ⟨r, hr, hrB, v, hv, hae⟩ := pdls_C1alpha (Metric.ball x₀ r₁) hB₁o A
      (fun a b => (hA a b).mono hB₁) (fun x hx => hApd x (hB₁ hx)) α hα0 hα1 F
      ((pdls_holLoc_glue α hα0 0).1 F W _ hB₁o hB₁ hF) w G
      (fun L hL hLB => hL2 L hL (hLB.trans hB₁)) _ hp hLp
      (fun ζ hζ hζc hζs => hgrad ζ hζ hζc (hζs.trans hB₁))
      (fun ζ hζ hζc hζs => hweak ζ hζ hζc (hζs.trans hB₁)) x₀ (Metric.mem_ball_self hr₁)
    exact ⟨r, hr, hrB.trans hB₁, v, hv, hae⟩
  
  obtain ⟨w₁, hw₁, hw₁ae⟩ := (pdls_holLoc_glue α hα0 1).2 W w hW hloc
  have hw₁C1 : ContDiffOn ℝ 1 w₁ W := by exact_mod_cast hw₁.1
  
  obtain ⟨_, hweak₁, hstrong⟩ :=
    pdls_weak_classical W hW A hA F hFc w w₁ G hL2 hgrad hweak hw₁ae hw₁C1
  
  have hw₂ := pdls_C2_step W hW A hA hApd α hα0 hα1 F hF w₁ hw₁ hweak₁
  have hw₂C2 : ContDiffOn ℝ 2 w₁ W := by exact_mod_cast hw₂.1
  
  exact ⟨w₁, hw₂, hw₁ae, hstrong hw₂C2⟩

theorem pcr_div_overlap_glue {X : Type*} [TopologicalSpace X]
    (S : Set X) (P : EigPatchedSurface X S) (w w' : Fin P.n → E2 → ℝ)
    (hw' : ∀ j, ContinuousOn (w' j) (P.W j))
    (hae : ∀ j, ∀ᵐ x ∂(volume.restrict (P.W j)), w j x = w' j x)
    (hcompat : ∀ j k, ∀ᵐ x ∂(volume.restrict (P.W j ∩ P.param j ⁻¹' P.O k)),
      w j x = w k (P.proj k (P.param j x))) :
    ∃ u : X → ℝ, (∀ q, q ∉ S → u q = 0) ∧ ∀ j, ∀ x ∈ P.W j, u (P.param j x) = w' j x :=
by
  classical
  
  have hS1 : ∀ j k : Fin P.n, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j x) ∈ P.W k ∩ P.param k ⁻¹' P.O j ∧
        P.param k (P.proj k (P.param j x)) = P.param j x ∧
        P.proj j (P.param k (P.proj k (P.param j x))) = x := by
    intro j k x hx
    have hq : P.param j x ∈ P.O j ∩ S := by
      rw [← P.image_eq j]; exact ⟨x, hx.1, rfl⟩
    have hqk : P.param j x ∈ P.O k ∩ S := ⟨hx.2, hq.2⟩
    rw [← P.image_eq k] at hqk
    obtain ⟨y, hy, hyq⟩ := hqk
    have hpy : P.proj k (P.param j x) = y := by rw [← hyq, P.proj_param k y hy]
    have h2 : P.param k (P.proj k (P.param j x)) = P.param j x := by rw [hpy, hyq]
    refine ⟨⟨?_, ?_⟩, h2, ?_⟩
    · rw [hpy]; exact hy
    · show P.param k (P.proj k (P.param j x)) ∈ P.O j
      rw [h2]; exact hq.1
    · rw [h2, P.proj_param j x hx.1]
  have hVopen : ∀ j k : Fin P.n, IsOpen (P.W j ∩ P.param j ⁻¹' P.O k) := fun j k =>
    (P.param_cont j).isOpen_inter_preimage (P.W_open j) (P.O_open k)
  
  have hagree : ∀ j k : Fin P.n, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      w' j x = w' k (P.proj k (P.param j x)) := by
    intro j k
    have hVm : MeasurableSet (P.W j ∩ P.param j ⁻¹' P.O k) := (hVopen j k).measurableSet
    have h3 : ∀ᵐ x ∂(volume.restrict (P.W j ∩ P.param j ⁻¹' P.O k)),
        w k (P.proj k (P.param j x)) = w' k (P.proj k (P.param j x)) := by
      have hN := hae k
      rw [ae_restrict_iff' (P.W_open k).measurableSet, ae_iff] at hN
      rw [ae_restrict_iff' hVm, ae_iff]
      have hσ : DifferentiableOn ℝ (fun y => P.proj j (P.param k y))
          (P.W k ∩ P.param k ⁻¹' P.O j) :=
        (P.trans_smooth k j).differentiableOn (by simp)
      have himg := MeasureTheory.addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero
        (volume : Measure E2) (hσ.mono Set.inter_subset_right)
        (measure_mono_null Set.inter_subset_left hN)
      refine measure_mono_null ?_ himg
      intro x hx
      simp only [Set.mem_setOf_eq, Classical.not_imp] at hx
      obtain ⟨hxV, hne⟩ := hx
      have hs := hS1 j k x hxV
      refine ⟨P.proj k (P.param j x), ⟨?_, hs.1⟩, hs.2.2⟩
      simp only [Set.mem_setOf_eq, Classical.not_imp]
      exact ⟨hs.1.1, hne⟩
    have h1 : ∀ᵐ x ∂(volume.restrict (P.W j ∩ P.param j ⁻¹' P.O k)), w j x = w' j x :=
      ae_restrict_of_ae_restrict_of_subset Set.inter_subset_left (hae j)
    have h2 := hcompat j k
    have hae' : (w' j) =ᵐ[volume.restrict (P.W j ∩ P.param j ⁻¹' P.O k)]
        (fun x => w' k (P.proj k (P.param j x))) := by
      filter_upwards [h1, h2, h3] with x e1 e2 e3
      rw [← e1, e2, e3]
    have hc1 : ContinuousOn (w' j) (P.W j ∩ P.param j ⁻¹' P.O k) :=
      (hw' j).mono Set.inter_subset_left
    have hc2 : ContinuousOn (fun x => w' k (P.proj k (P.param j x)))
        (P.W j ∩ P.param j ⁻¹' P.O k) :=
      (hw' k).comp (P.trans_smooth j k).continuousOn (fun x hx => (hS1 j k x hx).1.1)
    exact Measure.eqOn_open_of_ae_eq hae' (hVopen j k) hc1 hc2
  
  refine ⟨fun q => if h : ∃ k, q ∈ P.O k ∧ q ∈ S then w' h.choose (P.proj h.choose q) else 0,
    ?_, ?_⟩
  · intro q hq
    have hn : ¬ ∃ k, q ∈ P.O k ∧ q ∈ S := fun ⟨_, hk⟩ => hq hk.2
    dsimp only
    rw [dif_neg hn]
  · intro j x hx
    have hq : P.param j x ∈ P.O j ∩ S := by
      rw [← P.image_eq j]; exact ⟨x, hx, rfl⟩
    have h : ∃ k, P.param j x ∈ P.O k ∧ P.param j x ∈ S := ⟨j, hq⟩
    dsimp only
    rw [dif_pos h]
    exact (hagree j h.choose x ⟨hx, h.choose_spec.1⟩).symm

theorem pcr_patched_div_iso {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hSc : IsCompact S) (hSpc : IsPreconnected S)
    (P : EigPatchedSurface X S) (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1)
    (wd : Fin P.n → E2 → ℝ) (A : Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hwd : ∀ j, ContDiffOn ℝ ∞ (wd j) (P.W j)) (hwdpos : ∀ j, ∀ x ∈ P.W j, 0 < wd j x)
    (hA : ∀ j (a b : Fin 2), ContDiffOn ℝ ∞ (fun x => A j x a b) (P.W j))
    (hApd : ∀ j, ∀ x ∈ P.W j, (A j x).PosDef)
    (hcomp : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        wd j x = |(fderiv ℝ (fun x' => P.proj k (P.param j x')) x).det| *
          wd k (P.proj k (P.param j x)) ∧
        ∀ c d : Fin 2, ∑ a : Fin 2, ∑ b : Fin 2,
            fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c * A j x a b *
              fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 b) d =
          |(fderiv ℝ (fun x' => P.proj k (P.param j x')) x).det| *
            A k (P.proj k (P.param j x)) c d)
    (q₀ : X) (hq₀ : q₀ ∈ S) (f : X → ℝ) (hf : pcrClass P α 0 f) :
    ∃! pa : (X → ℝ) × ℝ, pcrClass P α 2 pa.1 ∧ pa.1 q₀ = 0 ∧
      ∀ j, ∀ x ∈ P.W j,
        -(wd j x)⁻¹ * ∑ a : Fin 2,
            pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
              pd2 b (fun x'' => pa.1 (P.param j x'')) x') x - pa.2 = f (P.param j x) :=
by
  classical
  
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := by
    intro j x hx
    have h : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at h
    exact h.2
  have hfc : ∀ j, ContinuousOn (fun x => f (P.param j x)) (P.W j) := fun j =>
    (hf.2 j).1.continuousOn
  have hC2 : ∀ (g : E2 → ℝ) j, pcrHolLoc α 2 g (P.W j) → ContDiffOn ℝ 2 g (P.W j) := by
    intro g j h
    have h1 := h.1
    exact_mod_cast h1
  
  obtain ⟨κ, w, G, hW1, hW2, hW3, hW4⟩ :=
    pcr_div_weak_solution S hSc ⟨q₀, hq₀⟩ hSpc P wd A hwd hwdpos hA hApd hcomp f hfc
  have hF : ∀ j, pcrHolLoc α 0 (fun x => (f (P.param j x) + κ) * wd j x) (P.W j) := fun j =>
    (pcr_div_holLoc_toolkit α hα0 hα1.le (P.W j) (P.W_open j)).2.2 _ _ κ (hf.2 j)
      ((hwd j).of_le (by norm_num))
  have hloc : ∀ j, ∃ w' : E2 → ℝ, pcrHolLoc α 2 w' (P.W j) ∧
      (∀ᵐ x ∂(volume.restrict (P.W j)), w j x = w' x) ∧
      ∀ x ∈ P.W j, -(∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b * pd2 b w' x') x) =
        (f (P.param j x) + κ) * wd j x := fun j =>
    pcr_div_local_schauder (P.W j) (P.W_open j) (A j) (hA j) (hApd j) α hα0 hα1 _ (hF j)
      (w j) (G j) (hW1 j) (hW2 j) (hW3 j)
  choose w' hw'H hw'ae hw'eq using hloc
  obtain ⟨u, hu0, hu⟩ :=
    pcr_div_overlap_glue S P w w' (fun j => (hw'H j).1.continuousOn) hw'ae hW4
  obtain ⟨u₀, hu₀def⟩ : ∃ u₀ : X → ℝ, u₀ = fun q => u q - S.indicator (fun _ => u q₀) q :=
    ⟨_, rfl⟩
  have hu₀p : ∀ j, ∀ x ∈ P.W j, u₀ (P.param j x) = w' j x - u q₀ := by
    intro j x hx
    rw [hu₀def]
    simp only [Set.indicator_of_mem (hparS j x hx), hu j x hx]
  have hu₀off : ∀ q, q ∉ S → u₀ q = 0 := by
    intro q hq
    rw [hu₀def]
    simp only [Set.indicator_of_notMem hq, hu0 q hq, sub_zero]
  have hu₀q : u₀ q₀ = 0 := by
    rw [hu₀def]
    simp only [Set.indicator_of_mem hq₀, sub_self]
  have hu₀cl : pcrClass P α 2 u₀ := by
    refine ⟨hu₀off, fun j => ?_⟩
    have hT := pcr_div_holLoc_toolkit α hα0 hα1.le (P.W j) (P.W_open j)
    exact hT.1 2 _ _ (hT.2.1 2 _ (u q₀) (hw'H j)) (fun x hx => (hu₀p j x hx).symm)
  have hD : ∀ j, ∀ x ∈ P.W j,
      ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => u₀ (P.param j x'')) x') x = -((f (P.param j x) + κ) * wd j x) := by
    intro j x hx
    have hO := pcr_div_op_toolkit (P.W j) (P.W_open j) (A j) (hA j)
    have e1 : ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => u₀ (P.param j x'')) x') x =
        ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
          pd2 b (fun y => w' j y - u q₀) x') x :=
      hO.2.1 (fun x'' => u₀ (P.param j x'')) (fun y => w' j y - u q₀)
        (fun y hy => hu₀p j y hy) x hx
    have e2 : ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun y => w' j y - u q₀) x') x =
        ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b * pd2 b (w' j) x') x -
          ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
            pd2 b (fun _ => u q₀) x') x :=
      hO.1 (w' j) (fun _ => u q₀) (hC2 _ j (hw'H j)) contDiffOn_const x hx
    have e3 : ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun _ => u q₀) x') x = 0 :=
      hO.2.2 (fun _ => u q₀) (u q₀) (fun _ _ => rfl) x hx
    rw [e1, e2, e3, sub_zero, ← hw'eq j x hx, neg_neg]
  have heq0 : ∀ j, ∀ x ∈ P.W j,
      -(wd j x)⁻¹ * ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => u₀ (P.param j x'')) x') x - κ = f (P.param j x) := by
    intro j x hx
    have hne : wd j x ≠ 0 := (hwdpos j x hx).ne'
    rw [hD j x hx]
    calc -(wd j x)⁻¹ * -((f (P.param j x) + κ) * wd j x) - κ
        = (f (P.param j x) + κ) * (wd j x * (wd j x)⁻¹) - κ := by ring
      _ = f (P.param j x) := by rw [mul_inv_cancel₀ hne]; ring
  
  refine ⟨(u₀, κ), ⟨hu₀cl, hu₀q, fun j x hx => heq0 j x hx⟩, ?_⟩
  rintro ⟨u₁, a₁⟩ ⟨hu₁cl, hu₁q, hu₁eq⟩
  dsimp only at hu₁cl hu₁q hu₁eq
  have hv : ∀ j, ContDiffOn ℝ 2 (fun x => (fun q => u₁ q - u₀ q) (P.param j x)) (P.W j) :=
    fun j => (hC2 _ j (hu₁cl.2 j)).sub (hC2 _ j (hu₀cl.2 j))
  have hLv : ∀ j, ∀ x ∈ P.W j,
      -(wd j x)⁻¹ * ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => (fun q => u₁ q - u₀ q) (P.param j x'')) x') x = a₁ - κ := by
    intro j x hx
    have hO := pcr_div_op_toolkit (P.W j) (P.W_open j) (A j) (hA j)
    have e1 : ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => (fun q => u₁ q - u₀ q) (P.param j x'')) x') x =
        ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
          pd2 b (fun x'' => u₁ (P.param j x'')) x') x -
        ∑ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
          pd2 b (fun x'' => u₀ (P.param j x'')) x') x :=
      hO.1 (fun x'' => u₁ (P.param j x'')) (fun x'' => u₀ (P.param j x''))
        (hC2 _ j (hu₁cl.2 j)) (hC2 _ j (hu₀cl.2 j)) x hx
    have h1 := hu₁eq j x hx
    have h0 := heq0 j x hx
    rw [e1]
    linear_combination h1 - h0
  obtain ⟨hc, hconst⟩ := pcr_div_kernel_const S hSc hSpc P wd A hwdpos hA hApd
    (fun q => u₁ q - u₀ q) hv (a₁ - κ) hLv q₀ hq₀
  have ha : a₁ = κ := by linarith
  have hu' : u₁ = u₀ := by
    funext q
    by_cases hq : q ∈ S
    · have h := hconst q hq
      simp only [hu₁q, hu₀q, sub_zero] at h
      linarith
    · rw [hu₁cl.1 q hq, hu₀off q hq]
  rw [hu', ha]

theorem pcr_lin_symbol (U : Set E2) (hU : IsOpen U) (s₁ : ℝ)
    (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U})
    (hGsymm : ∀ (y : E3) (a b : Fin 3), G y a b = G y b a)
    (hGpd : ∀ y : E3, |y 0| < s₁ → hpProj y ∈ U → (G y).PosDef) :
    ∃ (Φa : Fin 2 → Fin 2 → E2 × (Fin 3 → ℝ) → ℝ) (Φb : Fin 2 → E2 × (Fin 7 → ℝ) → ℝ)
      (Φc : E2 × (Fin 7 → ℝ) → ℝ),
      (∀ i j : Fin 2, ContDiffOn ℝ ∞ (Φa i j) {z | z.1 ∈ U ∧ |z.2 0| < s₁}) ∧
      (∀ i : Fin 2, ContDiffOn ℝ ∞ (Φb i) {z | z.1 ∈ U ∧ |z.2 0| < s₁}) ∧
      ContDiffOn ℝ ∞ Φc {z | z.1 ∈ U ∧ |z.2 0| < s₁} ∧
      (∀ z : E2 × (Fin 3 → ℝ), z.1 ∈ U → |z.2 0| < s₁ → ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 →
        0 < ∑ i : Fin 2, ∑ j : Fin 2, Φa i j z * ξ i * ξ j) ∧
      (∀ (w p : E2 → ℝ) (x : E2), x ∈ U → |w x| < s₁ → ContDiffAt ℝ 2 w x →
        ContDiffAt ℝ 2 p x →
        HasDerivAt (fun ε : ℝ => pcrH G (fun x' => w x' + ε * p x') x)
          (-(∑ i : Fin 2, ∑ j : Fin 2,
              Φa i j (x, ![w x, pd2 0 w x, pd2 1 w x]) * pd2 i (pd2 j p) x) +
            (∑ i : Fin 2, Φb i (x, ![w x, pd2 0 w x, pd2 1 w x, pd2 0 (pd2 0 w) x,
                pd2 0 (pd2 1 w) x, pd2 1 (pd2 0 w) x, pd2 1 (pd2 1 w) x]) * pd2 i p x) +
            Φc (x, ![w x, pd2 0 w x, pd2 1 w x, pd2 0 (pd2 0 w) x,
                pd2 0 (pd2 1 w) x, pd2 1 (pd2 0 w) x, pd2 1 (pd2 1 w) x]) * p x) 0) :=
by
  
  
  
  have hP1 : ∀ y : E3, hpProj y 0 = y 1 := by
    intro y; simp [hpProj]
  have hP2 : ∀ y : E3, hpProj y 1 = y 2 := by
    intro y; simp [hpProj]
  have hL0 : ∀ (t : ℝ) (x : E2), (hpLift t x) 0 = t := by
    intro t x; simp [hpLift, cylPt, EuclideanSpace.single_apply]
  have hL1 : ∀ (t : ℝ) (x : E2), (hpLift t x) 1 = x 0 := by
    intro t x; simp [hpLift, cylPt, EuclideanSpace.single_apply]
  have hL2 : ∀ (t : ℝ) (x : E2), (hpLift t x) 2 = x 1 := by
    intro t x; simp [hpLift, cylPt, EuclideanSpace.single_apply]
  have hLP : ∀ (t : ℝ) (x : E2), hpProj (hpLift t x) = x := by
    intro t x; ext k; fin_cases k
    · simp [hP1, hL1]
    · simp [hP2, hL2]
  have hP0 : hpProj (e 0) = 0 := by
    ext k; fin_cases k
    · simp [hP1, EuclideanSpace.single_apply]
    · simp [hP2, EuclideanSpace.single_apply]
  have hPe1 : hpProj (e 1) = e2 0 := by
    ext k; fin_cases k
    · simp [hP1, EuclideanSpace.single_apply]
    · simp [hP2, EuclideanSpace.single_apply]
  have hPe2 : hpProj (e 2) = e2 1 := by
    ext k; fin_cases k
    · simp [hP1, EuclideanSpace.single_apply]
    · simp [hP2, EuclideanSpace.single_apply]
  let Pl : E3 →ₗ[ℝ] E2 :=
    { toFun := hpProj
      map_add' := by
        intro y y'; ext k; fin_cases k
        · simp [hP1]
        · simp [hP2]
      map_smul' := by
        intro c y; ext k; fin_cases k
        · simp [hP1]
        · simp [hP2] }
  let P : E3 →L[ℝ] E2 := LinearMap.toContinuousLinearMap Pl
  have hP : ∀ y, P y = hpProj y := fun y => rfl
  have hPf : hpProj = ⇑P := funext fun y => (hP y).symm
  let Ll : ℝ × E2 →ₗ[ℝ] E3 :=
    { toFun := fun p => hpLift p.1 p.2
      map_add' := by
        intro p p'; ext k; fin_cases k
        · simp [hL0]
        · simp [hL1]
        · simp [hL2]
      map_smul' := by
        intro c p; ext k; fin_cases k
        · simp [hL0]
        · simp [hL1]
        · simp [hL2] }
  let L : ℝ × E2 →L[ℝ] E3 := LinearMap.toContinuousLinearMap Ll
  have hL : ∀ t x, L (t, x) = hpLift t x := fun t x => rfl
  let π0 : E3 →L[ℝ] ℝ := EuclideanSpace.proj (0 : Fin 3)
  have hπ0 : ∀ y : E3, π0 y = y 0 := fun y => rfl
  
  
  
  set Sl : Set E3 := {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U} with hSl
  have hSlo : IsOpen Sl := by
    have hcP : Continuous hpProj := by rw [hPf]; exact P.continuous
    exact IsOpen.and (isOpen_lt π0.continuous.abs continuous_const) (hU.preimage hcP)
  set O3 : Set (E2 × (Fin 3 → ℝ)) := {z | z.1 ∈ U ∧ |z.2 0| < s₁} with hO3
  have hO3o : IsOpen O3 :=
    (hU.preimage continuous_fst).inter
      (isOpen_lt (continuous_abs.comp ((continuous_apply 0).comp continuous_snd)) continuous_const)
  
  
  
  have hdet : ∀ M : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      (∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => M y a b) Sl) →
      ContDiffOn ℝ ∞ (fun y => (M y).det) Sl := by
    intro M hM
    simp only [Matrix.det_fin_three]
    have h00 := hM 0 0; have h01 := hM 0 1; have h02 := hM 0 2
    have h10 := hM 1 0; have h11 := hM 1 1; have h12 := hM 1 2
    have h20 := hM 2 0; have h21 := hM 2 1; have h22 := hM 2 2
    fun_prop
  have hGpd' : ∀ y ∈ Sl, (G y).PosDef := fun y hy => hGpd y hy.1 hy.2
  have hinv : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => (G y)⁻¹ a b) Sl := by
    intro a b
    have hadj : ContDiffOn ℝ ∞ (fun y => (G y).adjugate a b) Sl := by
      simp only [Matrix.adjugate_apply]
      apply hdet
      intro c d
      simp only [Matrix.updateRow_apply]
      split_ifs
      · exact contDiffOn_const
      · exact hGs c d
    have hd : ContDiffOn ℝ ∞ (fun y => ((G y).det)⁻¹) Sl :=
      (hdet G hGs).inv fun y hy => ((hGpd' y hy).det_pos).ne'
    have heq : (fun y => (G y)⁻¹ a b) = fun y => ((G y).det)⁻¹ * (G y).adjugate a b := by
      funext y
      rw [Matrix.inv_def, Matrix.smul_apply, Ring.inverse_eq_inv', smul_eq_mul]
    rw [heq]
    exact hd.mul hadj
  have hpdG : ∀ a b c : Fin 3, ContDiffOn ℝ ∞ (partialDeriv c (fun z => G z a b)) Sl := by
    intro a b c
    have h1 := (hGs a b).fderiv_of_isOpen hSlo (m := ∞) (by simp)
    exact h1.clm_apply contDiffOn_const
  have hchr : ∀ k i j : Fin 3, ContDiffOn ℝ ∞ (christoffel G k i j) Sl := by
    intro k i j
    unfold christoffel
    apply ContDiffOn.mul contDiffOn_const
    apply ContDiffOn.sum
    intro l _
    exact (hinv k l).mul (((hpdG j l i).add (hpdG i l j)).sub (hpdG i j l))
  have hpos : ∀ y ∈ Sl, ∀ v : Fin 3 → ℝ, v ≠ 0 →
      0 < ∑ i : Fin 3, ∑ j : Fin 3, (G y)⁻¹ i j * v i * v j := by
    intro y hy v hv
    have h := (hGpd' y hy).inv.dotProduct_mulVec_pos hv
    simp only [star_trivial, dotProduct, Matrix.mulVec, Finset.mul_sum] at h
    convert h using 2 with i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  have hsymI : ∀ y ∈ Sl, ∀ a b : Fin 3, (G y)⁻¹ a b = (G y)⁻¹ b a := by
    intro y hy a b
    have h := (hGpd' y hy).inv.isHermitian.apply a b
    rw [star_trivial] at h
    exact h.symm
  
  
  
  have hgraph : ∀ (w : E2 → ℝ) (x : E2) (t : ℝ), ContDiffAt ℝ 2 w x →
      (∀ i : Fin 3, partialDeriv i (fun y => y 0 - w (hpProj y)) (hpLift t x) =
          (e i) 0 - fderiv ℝ w x (hpProj (e i))) ∧
      (∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun y => y 0 - w (hpProj y))) (hpLift t x) =
          -(fderiv ℝ (fderiv ℝ w) x (hpProj (e i)) (hpProj (e j)))) := by
    intro w x t hw
    have hPx : P (hpLift t x) = x := by rw [hP, hLP]
    have hev : ∀ᶠ x' in 𝓝 x, ContDiffAt ℝ 2 w x' := hw.eventually (by decide)
    have hev' : ∀ᶠ y in 𝓝 (hpLift t x), DifferentiableAt ℝ w (P y) := by
      have hT : Tendsto P (𝓝 (hpLift t x)) (𝓝 x) := by
        have := P.continuous.tendsto (hpLift t x)
        rwa [hPx] at this
      exact (hT.eventually hev).mono fun y hy => hy.differentiableAt (by norm_num)
    have hderiv : ∀ y, DifferentiableAt ℝ w (P y) → ∀ j : Fin 3,
        partialDeriv j (fun y => y 0 - w (hpProj y)) y = (e j) 0 - fderiv ℝ w (P y) (P (e j)) := by
      intro y hy j
      have h1 : HasFDerivAt (fun y : E3 => y 0 - w (hpProj y))
          (π0 - (fderiv ℝ w (P y)).comp P) y := by
        rw [hPf]
        exact π0.hasFDerivAt.sub (hy.hasFDerivAt.comp y P.hasFDerivAt)
      unfold partialDeriv
      rw [h1.fderiv]
      simp [hπ0]
    have hx2 : DifferentiableAt ℝ (fderiv ℝ w) x :=
      (hw.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    refine ⟨fun i => ?_, fun i j => ?_⟩
    · rw [hderiv _ (hev'.self_of_nhds) i, hPx, hP]
    · have heq : partialDeriv j (fun y => y 0 - w (hpProj y)) =ᶠ[𝓝 (hpLift t x)]
          fun y => (e j) 0 - fderiv ℝ w (P y) (P (e j)) :=
        hev'.mono fun y hy => hderiv y hy j
      have hA : HasFDerivAt (fun y => fderiv ℝ w (P y))
          ((fderiv ℝ (fderiv ℝ w) x).comp P) (hpLift t x) := by
        have := hx2.hasFDerivAt
        rw [← hPx] at this
        have h2 := this.comp (hpLift t x) P.hasFDerivAt
        rw [hPx] at h2
        exact h2
      have hB : HasFDerivAt (fun y => (e j) 0 - fderiv ℝ w (P y) (P (e j)))
          (-(((fderiv ℝ (fderiv ℝ w) x).comp P).flip (P (e j)))) (hpLift t x) := by
        have h3 := hA.clm_apply (hasFDerivAt_const (P (e j)) (hpLift t x))
        have h4 := h3.const_sub ((e j) 0)
        convert h4 using 1
        ext v
        simp
      change fderiv ℝ (partialDeriv j (fun y => y 0 - w (hpProj y))) (hpLift t x) (e i) = _
      rw [heq.fderiv_eq, hB.fderiv]
      simp [hP]
  have hpd2 : ∀ (w : E2 → ℝ) (x : E2), DifferentiableAt ℝ (fderiv ℝ w) x → ∀ a b : Fin 2,
      pd2 a (pd2 b w) x = fderiv ℝ (fderiv ℝ w) x (e2 a) (e2 b) := by
    intro w x hx a b
    have h := hx.hasFDerivAt.clm_apply (hasFDerivAt_const (e2 b) x)
    have h' : pd2 b w = fun x' => fderiv ℝ w x' (e2 b) := rfl
    show fderiv ℝ (pd2 b w) x (e2 a) = _
    rw [h', h.fderiv]
    simp
  have hglit : ∀ (w : E2 → ℝ) (x : E2) (t : ℝ), ContDiffAt ℝ 2 w x →
      (∀ I : Fin 3, partialDeriv I (fun y => y 0 - w (hpProj y)) (hpLift t x) =
        ![1, -pd2 0 w x, -pd2 1 w x] I) ∧
      (∀ I J : Fin 3, partialDeriv I (partialDeriv J (fun y => y 0 - w (hpProj y))) (hpLift t x) =
        ![![0, 0, 0], ![0, -pd2 0 (pd2 0 w) x, -pd2 0 (pd2 1 w) x],
          ![0, -pd2 1 (pd2 0 w) x, -pd2 1 (pd2 1 w) x]] I J) := by
    intro w x t hw
    obtain ⟨g1, g2⟩ := hgraph w x t hw
    have hx2 : DifferentiableAt ℝ (fderiv ℝ w) x :=
      (hw.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    refine ⟨fun I => ?_, fun I J => ?_⟩
    · rw [g1]
      fin_cases I <;> simp [hP0, hPe1, hPe2, pd2, EuclideanSpace.single_apply]
    · rw [g2]
      fin_cases I <;> fin_cases J <;> simp [hP0, hPe1, hPe2, hpd2 w x hx2]
  
  
  
  have halg : ∀ (M : Matrix (Fin 3) (Fin 3) ℝ) (d : Fin 3 → ℝ) (H : Fin 3 → Fin 3 → ℝ) (s : ℝ),
      (∑ i : Fin 3, ∑ j : Fin 3, M i j * H i j) / s -
        (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
          M i a * d a * (M j b * d b) * H i j) / s ^ 3 =
      ∑ I : Fin 3, ∑ J : Fin 3,
        (M I J / s - (∑ a : Fin 3, M I a * d a) * (∑ b : Fin 3, M J b * d b) / s ^ 3) * H I J := by
    intro M d H s
    simp only [Fin.sum_univ_three]
    ring
  have hsplit : ∀ (y : E3) (f : E3 → ℝ) (d : Fin 3 → ℝ) (D : Fin 3 → Fin 3 → ℝ),
      (∀ I : Fin 3, partialDeriv I f y = d I) →
      (∀ I J : Fin 3, partialDeriv I (partialDeriv J f) y = D I J) →
      levelMeanCurvCoord G f y =
        ∑ I : Fin 3, ∑ J : Fin 3, mcP G y d I J *
          (D I J - ∑ K : Fin 3, christoffel G K I J y * d K) := by
    intro y f d D h1 h2
    unfold levelMeanCurvCoord lapLoc hessLoc
    simp only [h2, h1]
    unfold mcP mcS
    exact halg (G y)⁻¹ d (fun I J => D I J - ∑ K : Fin 3, christoffel G K I J y * d K) _
  
  
  
  obtain ⟨Φa, hΦa⟩ : ∃ Φa : Fin 2 → Fin 2 → E2 × (Fin 3 → ℝ) → ℝ,
      Φa = fun i j z => mcP G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2] i.succ j.succ :=
    ⟨_, rfl⟩
  obtain ⟨A, hA⟩ : ∃ A : E2 × (Fin 3 → ℝ) → ℝ,
      A = fun z => -(∑ I : Fin 3, ∑ J : Fin 3,
        mcP G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2] I J *
          ∑ K : Fin 3, christoffel G K I J (hpLift (z.2 0) z.1) * ![1, -z.2 1, -z.2 2] K) :=
    ⟨_, rfl⟩
  have hR : ∀ (w : E2 → ℝ) (x : E2), ContDiffAt ℝ 2 w x →
      pcrH G w x = A (x, ![w x, pd2 0 w x, pd2 1 w x]) -
        ∑ a : Fin 2, ∑ b : Fin 2, Φa a b (x, ![w x, pd2 0 w x, pd2 1 w x]) * pd2 a (pd2 b w) x := by
    intro w x hw
    obtain ⟨g1, g2⟩ := hglit w x (w x) hw
    subst hA hΦa
    show levelMeanCurvCoord G (fun y => y 0 - w (hpProj y)) (hpLift (w x) x) =
      -(∑ I : Fin 3, ∑ J : Fin 3,
        mcP G (hpLift (w x) x) ![1, -pd2 0 w x, -pd2 1 w x] I J *
          ∑ K : Fin 3, christoffel G K I J (hpLift (w x) x) * ![1, -pd2 0 w x, -pd2 1 w x] K) -
        ∑ a : Fin 2, ∑ b : Fin 2,
          mcP G (hpLift (w x) x) ![1, -pd2 0 w x, -pd2 1 w x] a.succ b.succ * pd2 a (pd2 b w) x
    rw [hsplit _ _ _ _ g1 g2]
    simp only [Fin.sum_univ_three, Fin.sum_univ_two, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, Fin.succ_zero_eq_one,
      Fin.succ_one_eq_two]
    ring
  
  
  
  have hY : ContDiff ℝ ∞ (fun z : E2 × (Fin 3 → ℝ) => hpLift (z.2 0) z.1) := by
    have : (fun z : E2 × (Fin 3 → ℝ) => hpLift (z.2 0) z.1) = fun z => L (z.2 0, z.1) := rfl
    rw [this]
    exact L.contDiff.comp (((contDiff_apply ℝ ℝ (0 : Fin 3)).comp contDiff_snd).prodMk contDiff_fst)
  have hmaps : Set.MapsTo (fun z : E2 × (Fin 3 → ℝ) => hpLift (z.2 0) z.1) O3 Sl := by
    intro z hz
    exact ⟨by rw [hL0]; exact hz.2, by rw [hLP]; exact hz.1⟩
  have hdv : ∀ K : Fin 3, ContDiff ℝ ∞
      (fun z : E2 × (Fin 3 → ℝ) => (![1, -z.2 1, -z.2 2] : Fin 3 → ℝ) K) := by
    intro K
    fin_cases K
    · exact contDiff_const
    · exact ((contDiff_apply ℝ ℝ (1 : Fin 3)).comp contDiff_snd).neg
    · exact ((contDiff_apply ℝ ℝ (2 : Fin 3)).comp contDiff_snd).neg
  have hGi : ∀ a b : Fin 3, ContDiffOn ℝ ∞
      (fun z : E2 × (Fin 3 → ℝ) => (G (hpLift (z.2 0) z.1))⁻¹ a b) O3 :=
    fun a b => (hinv a b).comp hY.contDiffOn hmaps
  have hCh : ∀ k i j : Fin 3, ContDiffOn ℝ ∞
      (fun z : E2 × (Fin 3 → ℝ) => christoffel G k i j (hpLift (z.2 0) z.1)) O3 :=
    fun k i j => (hchr k i j).comp hY.contDiffOn hmaps
  have hSs : ContDiffOn ℝ ∞
      (fun z : E2 × (Fin 3 → ℝ) => mcS G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2]) O3 := by
    unfold mcS
    exact ContDiffOn.sum fun i _ => ContDiffOn.sum fun j _ =>
      ((hGi i j).mul (hdv i).contDiffOn).mul (hdv j).contDiffOn
  have hSpos : ∀ z ∈ O3, 0 < mcS G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2] := by
    intro z hz
    unfold mcS
    apply hpos _ (hmaps hz)
    intro h
    have := congrFun h 0
    simp at this
  have hN : ContDiffOn ℝ ∞
      (fun z : E2 × (Fin 3 → ℝ) =>
        Real.sqrt (mcS G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2])) O3 :=
    hSs.sqrt fun z hz => (hSpos z hz).ne'
  have hNne : ∀ z ∈ O3, Real.sqrt (mcS G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2]) ≠ 0 :=
    fun z hz => (Real.sqrt_pos.2 (hSpos z hz)).ne'
  have hmcP : ∀ I J : Fin 3, ContDiffOn ℝ ∞
      (fun z : E2 × (Fin 3 → ℝ) => mcP G (hpLift (z.2 0) z.1) ![1, -z.2 1, -z.2 2] I J) O3 := by
    intro I J
    unfold mcP
    exact ((hGi I J).div hN hNne).sub
      (((ContDiffOn.sum fun a _ => (hGi I a).mul (hdv a).contDiffOn).mul
        (ContDiffOn.sum fun b _ => (hGi J b).mul (hdv b).contDiffOn)).div (hN.pow 3)
        fun z hz => pow_ne_zero 3 (hNne z hz))
  have hAs : ContDiffOn ℝ ∞ A O3 := by
    rw [hA]
    exact (ContDiffOn.sum fun I _ => ContDiffOn.sum fun J _ =>
      (hmcP I J).mul (ContDiffOn.sum fun K _ => (hCh K I J).mul (hdv K).contDiffOn)).neg
  have hΦas : ∀ i j : Fin 2, ContDiffOn ℝ ∞ (Φa i j) O3 := by
    intro i j
    rw [hΦa]
    exact hmcP _ _
  
  
  
  have halg2 : ∀ r X Y : ℝ, r ≠ 0 → X / r - Y / r ^ 3 = (r ^ 2 * X - Y) / r ^ 3 := by
    intro r X Y hr
    field_simp
  have hell : ∀ (M : Matrix (Fin 3) (Fin 3) ℝ), (∀ a b : Fin 3, M a b = M b a) →
      (∀ v : Fin 3 → ℝ, v ≠ 0 → 0 < ∑ i : Fin 3, ∑ j : Fin 3, M i j * v i * v j) →
      ∀ (d : Fin 3 → ℝ), d 0 = 1 → ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 →
      0 < ∑ i : Fin 2, ∑ j : Fin 2,
        (M i.succ j.succ / Real.sqrt (∑ a : Fin 3, ∑ b : Fin 3, M a b * d a * d b) -
          (∑ a : Fin 3, M i.succ a * d a) * (∑ b : Fin 3, M j.succ b * d b) /
            Real.sqrt (∑ a : Fin 3, ∑ b : Fin 3, M a b * d a * d b) ^ 3) * ξ i * ξ j := by
    intro M hM hpd d hd0 ξ hξ
    have h10 := hM 1 0
    have h20 := hM 2 0
    have h21 := hM 2 1
    obtain ⟨S, hSd⟩ : ∃ S : ℝ, S = ∑ a : Fin 3, ∑ b : Fin 3, M a b * d a * d b := ⟨_, rfl⟩
    obtain ⟨β, hβd⟩ : ∃ β : ℝ, β = (M 1 0 * ξ 0 + M 2 0 * ξ 1) * d 0 +
        (M 1 1 * ξ 0 + M 2 1 * ξ 1) * d 1 + (M 1 2 * ξ 0 + M 2 2 * ξ 1) * d 2 := ⟨_, rfl⟩
    obtain ⟨B, hBd⟩ : ∃ B : ℝ, B = M 1 1 * ξ 0 * ξ 0 + M 1 2 * ξ 0 * ξ 1 +
        M 2 1 * ξ 1 * ξ 0 + M 2 2 * ξ 1 * ξ 1 := ⟨_, rfl⟩
    have hdne : d ≠ 0 := by
      intro h
      have := congrFun h 0
      rw [hd0] at this
      simp at this
    have hSpos : 0 < S := by rw [hSd]; exact hpd d hdne
    have hvne : (![-β, S * ξ 0 - β * d 1, S * ξ 1 - β * d 2] : Fin 3 → ℝ) ≠ 0 := by
      intro h
      have h0 := congrFun h 0
      have h1 := congrFun h 1
      have h2 := congrFun h 2
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
        Matrix.head_cons, Matrix.tail_cons, Pi.zero_apply] at h0 h1 h2
      have hb : β = 0 := by linarith
      rw [hb, zero_mul, sub_zero] at h1 h2
      have e0 : ξ 0 = 0 := (mul_eq_zero.1 h1).resolve_left hSpos.ne'
      have e1 : ξ 1 = 0 := (mul_eq_zero.1 h2).resolve_left hSpos.ne'
      apply hξ
      funext k
      fin_cases k
      · exact e0
      · exact e1
    have hBv := hpd _ hvne
    have hid : ∑ i : Fin 3, ∑ j : Fin 3,
        M i j * (![-β, S * ξ 0 - β * d 1, S * ξ 1 - β * d 2] : Fin 3 → ℝ) i *
          (![-β, S * ξ 0 - β * d 1, S * ξ 1 - β * d 2] : Fin 3 → ℝ) j =
        S * (S * B - β ^ 2) := by
      simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
        Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
      rw [hSd, hβd, hBd]
      simp only [Fin.sum_univ_three, hd0]
      rw [h10, h20, h21]
      ring
    have hkey : 0 < S * B - β ^ 2 := pos_of_mul_pos_right (hid ▸ hBv) hSpos.le
    rw [← hSd]
    have hs : 0 < Real.sqrt S := Real.sqrt_pos.2 hSpos
    have hs2 : Real.sqrt S ^ 2 = S := Real.sq_sqrt hSpos.le
    suffices h : 0 < B / Real.sqrt S - β ^ 2 / Real.sqrt S ^ 3 by
      convert h using 1
      rw [hβd, hBd]
      simp only [Fin.sum_univ_two, Fin.sum_univ_three, Fin.succ_zero_eq_one, Fin.succ_one_eq_two]
      ring
    rw [halg2 _ _ _ hs.ne', hs2]
    exact div_pos hkey (pow_pos hs 3)
  have hΦell : ∀ z : E2 × (Fin 3 → ℝ), z.1 ∈ U → |z.2 0| < s₁ → ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 →
      0 < ∑ i : Fin 2, ∑ j : Fin 2, Φa i j z * ξ i * ξ j := by
    intro z hz1 hz2 ξ hξ
    have hy : hpLift (z.2 0) z.1 ∈ Sl := hmaps ⟨hz1, hz2⟩
    rw [hΦa]
    unfold mcP mcS
    exact hell _ (hsymI _ hy) (hpos _ hy) _ rfl ξ hξ
  
  
  
  obtain ⟨Φb, hΦb⟩ : ∃ Φb : Fin 2 → E2 × (Fin 7 → ℝ) → ℝ,
      Φb = fun i z => fderiv ℝ A (z.1, ![z.2 0, z.2 1, z.2 2])
          ((0 : E2), (Pi.single i.succ (1 : ℝ) : Fin 3 → ℝ)) -
        ∑ a : Fin 2, ∑ b : Fin 2, fderiv ℝ (Φa a b) (z.1, ![z.2 0, z.2 1, z.2 2])
          ((0 : E2), (Pi.single i.succ (1 : ℝ) : Fin 3 → ℝ)) *
          (![![z.2 3, z.2 4], ![z.2 5, z.2 6]] : Fin 2 → Fin 2 → ℝ) a b := ⟨_, rfl⟩
  obtain ⟨Φc, hΦc⟩ : ∃ Φc : E2 × (Fin 7 → ℝ) → ℝ,
      Φc = fun z => fderiv ℝ A (z.1, ![z.2 0, z.2 1, z.2 2])
          ((0 : E2), (Pi.single 0 (1 : ℝ) : Fin 3 → ℝ)) -
        ∑ a : Fin 2, ∑ b : Fin 2, fderiv ℝ (Φa a b) (z.1, ![z.2 0, z.2 1, z.2 2])
          ((0 : E2), (Pi.single 0 (1 : ℝ) : Fin 3 → ℝ)) *
          (![![z.2 3, z.2 4], ![z.2 5, z.2 6]] : Fin 2 → Fin 2 → ℝ) a b := ⟨_, rfl⟩
  have hπ7 : ContDiff ℝ ∞
      (fun z : E2 × (Fin 7 → ℝ) => (z.1, (![z.2 0, z.2 1, z.2 2] : Fin 3 → ℝ))) := by
    refine contDiff_fst.prodMk (contDiff_pi.2 fun k => ?_)
    fin_cases k
    · exact (contDiff_apply ℝ ℝ (0 : Fin 7)).comp contDiff_snd
    · exact (contDiff_apply ℝ ℝ (1 : Fin 7)).comp contDiff_snd
    · exact (contDiff_apply ℝ ℝ (2 : Fin 7)).comp contDiff_snd
  have hQm : ∀ a b : Fin 2, ContDiff ℝ ∞ (fun z : E2 × (Fin 7 → ℝ) =>
      (![![z.2 3, z.2 4], ![z.2 5, z.2 6]] : Fin 2 → Fin 2 → ℝ) a b) := by
    intro a b
    fin_cases a <;> fin_cases b
    · exact (contDiff_apply ℝ ℝ (3 : Fin 7)).comp contDiff_snd
    · exact (contDiff_apply ℝ ℝ (4 : Fin 7)).comp contDiff_snd
    · exact (contDiff_apply ℝ ℝ (5 : Fin 7)).comp contDiff_snd
    · exact (contDiff_apply ℝ ℝ (6 : Fin 7)).comp contDiff_snd
  have hpart : ∀ F : E2 × (Fin 3 → ℝ) → ℝ, ContDiffOn ℝ ∞ F O3 → ∀ l : Fin 3,
      ContDiffOn ℝ ∞ (fun z : E2 × (Fin 7 → ℝ) => fderiv ℝ F (z.1, ![z.2 0, z.2 1, z.2 2])
        ((0 : E2), (Pi.single l (1 : ℝ) : Fin 3 → ℝ))) {z | z.1 ∈ U ∧ |z.2 0| < s₁} := by
    intro F hF l
    have h1 : ContDiffOn ℝ ∞
        (fun z => fderiv ℝ F z ((0 : E2), (Pi.single l (1 : ℝ) : Fin 3 → ℝ))) O3 :=
      (hF.fderiv_of_isOpen hO3o (m := ∞) (by simp)).clm_apply contDiffOn_const
    exact h1.comp hπ7.contDiffOn (fun z hz => hz)
  have hΦbs : ∀ i : Fin 2, ContDiffOn ℝ ∞ (Φb i) {z | z.1 ∈ U ∧ |z.2 0| < s₁} := by
    intro i
    rw [hΦb]
    exact (hpart A hAs i.succ).sub (ContDiffOn.sum fun a _ => ContDiffOn.sum fun b _ =>
      (hpart (Φa a b) (hΦas a b) i.succ).mul (hQm a b).contDiffOn)
  have hΦcs : ContDiffOn ℝ ∞ Φc {z | z.1 ∈ U ∧ |z.2 0| < s₁} := by
    rw [hΦc]
    exact (hpart A hAs 0).sub (ContDiffOn.sum fun a _ => ContDiffOn.sum fun b _ =>
      (hpart (Φa a b) (hΦas a b) 0).mul (hQm a b).contDiffOn)
  
  
  
  have hjet : ∀ (w p : E2 → ℝ) (x : E2), ContDiffAt ℝ 2 w x → ContDiffAt ℝ 2 p x → ∀ ε : ℝ,
      ContDiffAt ℝ 2 (fun x' => w x' + ε * p x') x ∧
      (∀ i : Fin 2, pd2 i (fun x' => w x' + ε * p x') x = pd2 i w x + ε * pd2 i p x) ∧
      (∀ i j : Fin 2, pd2 i (pd2 j (fun x' => w x' + ε * p x')) x =
        pd2 i (pd2 j w) x + ε * pd2 i (pd2 j p) x) := by
    intro w p x hw hp ε
    have hev : ∀ᶠ x' in 𝓝 x, fderiv ℝ (fun x' => w x' + ε * p x') x' =
        fderiv ℝ w x' + ε • fderiv ℝ p x' := by
      filter_upwards [hw.eventually (by decide), hp.eventually (by decide)] with x' hw' hp'
      exact ((hw'.differentiableAt (by norm_num)).hasFDerivAt.add
        ((hp'.differentiableAt (by norm_num)).hasFDerivAt.const_mul ε)).fderiv
    have hw2 : DifferentiableAt ℝ (fderiv ℝ w) x :=
      (hw.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    have hp2 : DifferentiableAt ℝ (fderiv ℝ p) x :=
      (hp.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    have h1 : ContDiffAt ℝ 2 (fun x' => w x' + ε * p x') x := hw.add (contDiffAt_const.mul hp)
    have he2 : DifferentiableAt ℝ (fderiv ℝ (fun x' => w x' + ε * p x')) x :=
      (h1.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    have hev2 : fderiv ℝ (fun x' => w x' + ε * p x') =ᶠ[𝓝 x]
        fun x' => fderiv ℝ w x' + ε • fderiv ℝ p x' := hev
    have F2 : fderiv ℝ (fderiv ℝ (fun x' => w x' + ε * p x')) x =
        fderiv ℝ (fderiv ℝ w) x + ε • fderiv ℝ (fderiv ℝ p) x := by
      rw [hev2.fderiv_eq]
      exact (hw2.hasFDerivAt.add (hp2.hasFDerivAt.const_smul ε)).fderiv
    refine ⟨h1, fun i => ?_, fun i j => ?_⟩
    · unfold pd2
      rw [hev.self_of_nhds]
      simp
    · rw [hpd2 _ x he2, hpd2 w x hw2, hpd2 p x hp2, F2]
      simp
  have hdec : ∀ c : Fin 3 → ℝ,
      ((0 : E2), c) = ∑ l : Fin 3, c l • ((0 : E2), (Pi.single l (1 : ℝ) : Fin 3 → ℝ)) := by
    intro c
    refine Prod.ext ?_ ?_
    · simp [Prod.fst_sum]
    · funext k
      simp [Prod.snd_sum, Finset.sum_apply, Pi.single_apply]
  have hpath : ∀ F : E2 × (Fin 3 → ℝ) → ℝ, ContDiffOn ℝ ∞ F O3 → ∀ (x : E2) (v c : Fin 3 → ℝ),
      (x, v) ∈ O3 →
      HasDerivAt (fun ε : ℝ => F (x, fun l => v l + ε * c l))
        (∑ l : Fin 3, c l * fderiv ℝ F (x, v) ((0 : E2), (Pi.single l (1 : ℝ) : Fin 3 → ℝ))) 0 := by
    intro F hF x v c hmem
    have hd0 := ((hF.contDiffAt (hO3o.mem_nhds hmem)).differentiableAt (by simp)).hasFDerivAt
    have hγ := ((hasDerivAt_id' (x := (0 : ℝ))).smul_const ((0 : E2), c)).const_add (x, v)
    have hc := hd0.comp_hasDerivAt_of_eq (0 : ℝ) hγ (by simp)
    convert hc using 1
    · funext ε
      show F _ = F _
      congr 1
      refine Prod.ext ?_ ?_
      · simp
      · funext l
        simp
    · rw [one_smul, hdec c, map_sum]
      simp only [map_smul, smul_eq_mul]
  
  
  
  have hΦbE : ∀ (i : Fin 2) (x' : E2) (u : Fin 7 → ℝ), Φb i (x', u) =
      fderiv ℝ A (x', ![u 0, u 1, u 2]) ((0 : E2), (Pi.single i.succ (1 : ℝ) : Fin 3 → ℝ)) -
        ∑ a : Fin 2, ∑ b : Fin 2, fderiv ℝ (Φa a b) (x', ![u 0, u 1, u 2])
          ((0 : E2), (Pi.single i.succ (1 : ℝ) : Fin 3 → ℝ)) *
          (![![u 3, u 4], ![u 5, u 6]] : Fin 2 → Fin 2 → ℝ) a b := by
    intro i x' u; rw [hΦb]
  have hΦcE : ∀ (x' : E2) (u : Fin 7 → ℝ), Φc (x', u) =
      fderiv ℝ A (x', ![u 0, u 1, u 2]) ((0 : E2), (Pi.single 0 (1 : ℝ) : Fin 3 → ℝ)) -
        ∑ a : Fin 2, ∑ b : Fin 2, fderiv ℝ (Φa a b) (x', ![u 0, u 1, u 2])
          ((0 : E2), (Pi.single 0 (1 : ℝ) : Fin 3 → ℝ)) *
          (![![u 3, u 4], ![u 5, u 6]] : Fin 2 → Fin 2 → ℝ) a b := by
    intro x' u; rw [hΦc]
  have hlin : ∀ (w p : E2 → ℝ) (x : E2), x ∈ U → |w x| < s₁ → ContDiffAt ℝ 2 w x →
      ContDiffAt ℝ 2 p x →
      HasDerivAt (fun ε : ℝ => pcrH G (fun x' => w x' + ε * p x') x)
        (-(∑ i : Fin 2, ∑ j : Fin 2,
            Φa i j (x, ![w x, pd2 0 w x, pd2 1 w x]) * pd2 i (pd2 j p) x) +
          (∑ i : Fin 2, Φb i (x, ![w x, pd2 0 w x, pd2 1 w x, pd2 0 (pd2 0 w) x,
              pd2 0 (pd2 1 w) x, pd2 1 (pd2 0 w) x, pd2 1 (pd2 1 w) x]) * pd2 i p x) +
          Φc (x, ![w x, pd2 0 w x, pd2 1 w x, pd2 0 (pd2 0 w) x,
              pd2 0 (pd2 1 w) x, pd2 1 (pd2 0 w) x, pd2 1 (pd2 1 w) x]) * p x) 0 := by
    intro w p x hx hwx hw hp
    have hmem : (x, (![w x, pd2 0 w x, pd2 1 w x] : Fin 3 → ℝ)) ∈ O3 := ⟨hx, hwx⟩
    have hfun : (fun ε : ℝ => pcrH G (fun x' => w x' + ε * p x') x) =
        fun ε : ℝ =>
          A (x, fun l => (![w x, pd2 0 w x, pd2 1 w x] : Fin 3 → ℝ) l +
            ε * (![p x, pd2 0 p x, pd2 1 p x] : Fin 3 → ℝ) l) -
          ∑ a : Fin 2, ∑ b : Fin 2,
            Φa a b (x, fun l => (![w x, pd2 0 w x, pd2 1 w x] : Fin 3 → ℝ) l +
              ε * (![p x, pd2 0 p x, pd2 1 p x] : Fin 3 → ℝ) l) *
            (pd2 a (pd2 b w) x + ε * pd2 a (pd2 b p) x) := by
      funext ε
      obtain ⟨h1, h2, h3⟩ := hjet w p x hw hp ε
      rw [hR _ x h1]
      have hJ : (![w x + ε * p x, pd2 0 (fun x' => w x' + ε * p x') x,
          pd2 1 (fun x' => w x' + ε * p x') x] : Fin 3 → ℝ) =
          fun l => (![w x, pd2 0 w x, pd2 1 w x] : Fin 3 → ℝ) l +
            ε * (![p x, pd2 0 p x, pd2 1 p x] : Fin 3 → ℝ) l := by
        funext l
        fin_cases l <;> simp [h2]
      simp only [hJ, h3]
    have hDA := hpath A hAs x _ (![p x, pd2 0 p x, pd2 1 p x]) hmem
    have hprod : ∀ a b : Fin 2, HasDerivAt
        (fun ε : ℝ => Φa a b (x, fun l => (![w x, pd2 0 w x, pd2 1 w x] : Fin 3 → ℝ) l +
              ε * (![p x, pd2 0 p x, pd2 1 p x] : Fin 3 → ℝ) l) *
            (pd2 a (pd2 b w) x + ε * pd2 a (pd2 b p) x))
        ((∑ l : Fin 3, (![p x, pd2 0 p x, pd2 1 p x] : Fin 3 → ℝ) l *
            fderiv ℝ (Φa a b) (x, ![w x, pd2 0 w x, pd2 1 w x])
              ((0 : E2), (Pi.single l (1 : ℝ) : Fin 3 → ℝ))) *
            (pd2 a (pd2 b w) x + 0 * pd2 a (pd2 b p) x) +
          Φa a b (x, fun l => (![w x, pd2 0 w x, pd2 1 w x] : Fin 3 → ℝ) l +
              0 * (![p x, pd2 0 p x, pd2 1 p x] : Fin 3 → ℝ) l) * pd2 a (pd2 b p) x) 0 := by
      intro a b
      have hl : HasDerivAt (fun ε : ℝ => pd2 a (pd2 b w) x + ε * pd2 a (pd2 b p) x)
          (pd2 a (pd2 b p) x) 0 :=
        (((hasDerivAt_id' (x := (0 : ℝ))).mul_const (pd2 a (pd2 b p) x)).const_add
          (pd2 a (pd2 b w) x)).congr_deriv (one_mul _)
      exact (hpath (Φa a b) (hΦas a b) x _ _ hmem).fun_mul hl
    have hsum := HasDerivAt.fun_sum (u := Finset.univ) fun a _ =>
      HasDerivAt.fun_sum (u := Finset.univ) fun b _ => hprod a b
    have hfin := hDA.fun_sub hsum
    rw [hfun]
    convert hfin using 1
    have e5 : (![w x, pd2 0 w x, pd2 1 w x, pd2 0 (pd2 0 w) x, pd2 0 (pd2 1 w) x,
        pd2 1 (pd2 0 w) x, pd2 1 (pd2 1 w) x] : Fin 7 → ℝ) 5 = pd2 1 (pd2 0 w) x := rfl
    have e6 : (![w x, pd2 0 w x, pd2 1 w x, pd2 0 (pd2 0 w) x, pd2 0 (pd2 1 w) x,
        pd2 1 (pd2 0 w) x, pd2 1 (pd2 1 w) x] : Fin 7 → ℝ) 6 = pd2 1 (pd2 1 w) x := rfl
    simp only [zero_mul, add_zero, hΦbE, hΦcE]
    simp only [Fin.sum_univ_two, Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, Fin.succ_zero_eq_one,
      Fin.succ_one_eq_two, Matrix.cons_val_three, Matrix.cons_val_four, e5, e6]
    ring
  exact ⟨Φa, Φb, Φc, hΦas, hΦbs, hΦcs, hΦell, hlin⟩

theorem pcr_holF_algebra (α : NNReal) (hα0 : 0 < α) (hα1 : α ≤ 1)
    (S : Set (Fin 2 → ℝ)) (hS : IsOpen S) :
    (∀ (k : ℕ) (c : ℝ), pcrHolF α k (fun _ => c) S) ∧
    (∀ (k : ℕ) (u w : (Fin 2 → ℝ) → ℝ), pcrHolF α k u S → pcrHolF α k w S →
      pcrHolF α k (fun x => u x + w x) S) ∧
    (∀ (k : ℕ) (u w : (Fin 2 → ℝ) → ℝ), pcrHolF α k u S → pcrHolF α k w S →
      pcrHolF α k (fun x => u x * w x) S) ∧
    (∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ), pcrHolF α k u S → pcrHolF α k (fun x => -u x) S) ∧
    (∀ (k : ℕ) (u w : (Fin 2 → ℝ) → ℝ), pcrHolF α k u S → Set.EqOn u w S →
      pcrHolF α k w S) ∧
    (∀ (j k : ℕ) (u : (Fin 2 → ℝ) → ℝ), j ≤ k → pcrHolF α k u S → pcrHolF α j u S) ∧
    (∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ), pcrHolF α k u S → smthHolC k u S) ∧
    (∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ) (T : Set (Fin 2 → ℝ)), IsOpen T → T ⊆ S →
      pcrHolF α k u S → pcrHolF α k u T) ∧
    (∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ),
      (∀ x ∈ S, ∃ T : Set (Fin 2 → ℝ), IsOpen T ∧ x ∈ T ∧ T ⊆ S ∧ pcrHolF α k u T) →
      pcrHolF α k u S) :=
by
  
  have hcongr : ∀ (n : ℕ) (f g : (Fin 2 → ℝ) → ℝ), pcrHolF α n f S → Set.EqOn f g S →
      pcrHolF α n g S := by
    intro n
    induction n with
    | zero =>
      intro f g hf hfg
      refine ⟨hf.1.congr (fun x hx => (hfg hx).symm), fun x₀ hx₀ => ?_⟩
      obtain ⟨ρ, C, hρ, hsub, hH⟩ := hf.2 x₀ hx₀
      refine ⟨ρ, C, hρ, hsub, ?_⟩
      intro x hx y hy
      rw [← hfg (hsub hx), ← hfg (hsub hy)]
      exact hH x hx y hy
    | succ n ih =>
      intro f g hf hfg
      have hev : ∀ x ∈ S, f =ᶠ[𝓝 x] g := fun x hx =>
        Filter.eventually_of_mem (hS.mem_nhds hx) hfg
      refine ⟨fun x hx => (hf.1 x hx).congr_of_eventuallyEq (hev x hx).symm, fun m => ?_⟩
      refine ih _ _ (hf.2 m) (fun x hx => ?_)
      simp only [smthGrad]
      rw [(hev x hx).fderiv_eq]
  
  have hconst : ∀ (n : ℕ) (c : ℝ), pcrHolF α n (fun _ => c) S := by
    intro n
    induction n with
    | zero =>
      intro c
      refine ⟨continuousOn_const, fun x₀ hx₀ => ?_⟩
      obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp hS x₀ hx₀
      refine ⟨ε, 0, hε, hball, ?_⟩
      intro x _ y _
      simp
    | succ n ih =>
      intro c
      refine ⟨fun x _ => differentiableAt_const c, fun m => ?_⟩
      have h0 : (fun x => smthGrad (fun _ => c) x m) = fun _ => (0 : ℝ) := by
        funext x
        simp [smthGrad]
      rw [h0]
      exact ih 0
  
  have hgrad : ∀ (f g : (Fin 2 → ℝ) → ℝ) (x : Fin 2 → ℝ) (m : Fin 2),
      DifferentiableAt ℝ f x → DifferentiableAt ℝ g x →
      smthGrad (fun y => f y + g y) x m = smthGrad f x m + smthGrad g x m ∧
      smthGrad (fun y => f y * g y) x m = smthGrad f x m * g x + f x * smthGrad g x m := by
    intro f g x m hf hg
    simp only [smthGrad]
    constructor
    · rw [fderiv_fun_add hf hg, ContinuousLinearMap.add_apply]
    · rw [fderiv_fun_mul hf hg, ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul, smul_eq_mul]
      ring
  have hgradneg : ∀ (f : (Fin 2 → ℝ) → ℝ) (x : Fin 2 → ℝ) (m : Fin 2),
      smthGrad (fun y => -f y) x m = -smthGrad f x m := by
    intro f x m
    simp only [smthGrad]
    rw [fderiv_fun_neg, ContinuousLinearMap.neg_apply]
  
  have mk : ∀ (h : (Fin 2 → ℝ) → ℝ) (A : Set (Fin 2 → ℝ)) (K : ℝ), 0 ≤ K →
      (∀ x ∈ A, ∀ y ∈ A, |h x - h y| ≤ K * dist x y ^ (α : ℝ)) →
      HolderOnWith (Real.toNNReal K) α h A := by
    intro h A K hK hb
    intro x hx y hy
    calc edist (h x) (h y) = ENNReal.ofReal |h x - h y| := by rw [edist_dist, Real.dist_eq]
      _ ≤ ENNReal.ofReal (K * dist x y ^ (α : ℝ)) := ENNReal.ofReal_le_ofReal (hb x hx y hy)
      _ = ENNReal.ofReal K * ENNReal.ofReal (dist x y ^ (α : ℝ)) := ENNReal.ofReal_mul hK
      _ = ((Real.toNNReal K : NNReal) : ENNReal) * edist x y ^ (α : ℝ) := by
        rw [edist_dist, ENNReal.ofReal_rpow_of_nonneg (dist_nonneg (x := x) (y := y))
          (NNReal.coe_nonneg α)]
        rfl
  
  have hneg0 : ∀ f : (Fin 2 → ℝ) → ℝ, pcrHolF α 0 f S → pcrHolF α 0 (fun x => -f x) S := by
    intro f hf
    refine ⟨hf.1.neg, fun x₀ hx₀ => ?_⟩
    obtain ⟨ρ, C, hρ, hsub, hH⟩ := hf.2 x₀ hx₀
    refine ⟨ρ, C, hρ, hsub, ?_⟩
    intro x hx y hy
    rw [edist_neg_neg]
    exact hH x hx y hy
  
  have hbase : ∀ f g : (Fin 2 → ℝ) → ℝ, pcrHolF α 0 f S → pcrHolF α 0 g S →
      pcrHolF α 0 (fun x => f x + g x) S ∧ pcrHolF α 0 (fun x => f x * g x) S := by
    intro f g hf hg
    have loc : ∀ x₀ ∈ S, ∃ (ρ : ℝ) (C₁ C₂ : NNReal), 0 < ρ ∧
        Metric.ball x₀ ρ ⊆ S ∧
        ∀ x ∈ Metric.ball x₀ ρ, ∀ y ∈ Metric.ball x₀ ρ,
          |f x - f y| ≤ C₁ * dist x y ^ (α : ℝ) ∧ |g x - g y| ≤ C₂ * dist x y ^ (α : ℝ) ∧
          dist x y ^ (α : ℝ) ≤ 1 := by
      intro x₀ hx₀
      obtain ⟨ρ₁, C₁, hρ₁, hsub₁, hH₁⟩ := hf.2 x₀ hx₀
      obtain ⟨ρ₂, C₂, hρ₂, hsub₂, hH₂⟩ := hg.2 x₀ hx₀
      have hρ : 0 < min (min ρ₁ ρ₂) (1 / 2) := lt_min (lt_min hρ₁ hρ₂) (by norm_num)
      have hB1 : Metric.ball x₀ (min (min ρ₁ ρ₂) (1 / 2)) ⊆ Metric.ball x₀ ρ₁ :=
        Metric.ball_subset_ball (le_trans (min_le_left _ _) (min_le_left _ _))
      have hB2 : Metric.ball x₀ (min (min ρ₁ ρ₂) (1 / 2)) ⊆ Metric.ball x₀ ρ₂ :=
        Metric.ball_subset_ball (le_trans (min_le_left _ _) (min_le_right _ _))
      have hdist : ∀ x ∈ Metric.ball x₀ (min (min ρ₁ ρ₂) (1 / 2)),
          ∀ y ∈ Metric.ball x₀ (min (min ρ₁ ρ₂) (1 / 2)), dist x y ≤ 1 := by
        intro x hx y hy
        rw [Metric.mem_ball] at hx hy
        have h1 := dist_triangle x x₀ y
        rw [dist_comm x₀ y] at h1
        have : min (min ρ₁ ρ₂) (1 / 2) ≤ 1 / 2 := min_le_right _ _
        linarith
      refine ⟨min (min ρ₁ ρ₂) (1 / 2), C₁, C₂, hρ, hB1.trans hsub₁,
        fun x hx y hy => ⟨?_, ?_, ?_⟩⟩
      · rw [← Real.dist_eq]; exact (hH₁.mono hB1).dist_le hx hy
      · rw [← Real.dist_eq]; exact (hH₂.mono hB2).dist_le hx hy
      · exact Real.rpow_le_one dist_nonneg (hdist x hx y hy) (NNReal.coe_nonneg _)
    refine ⟨⟨hf.1.add hg.1, fun x₀ hx₀ => ?_⟩, ⟨hf.1.mul hg.1, fun x₀ hx₀ => ?_⟩⟩
    · obtain ⟨ρ, C₁, C₂, hρ, hsub, hb⟩ := loc x₀ hx₀
      refine ⟨ρ, _, hρ, hsub, mk _ _ ((C₁ : ℝ) + C₂) (by positivity) ?_⟩
      intro x hx y hy
      show |(f x + g x) - (f y + g y)| ≤ _
      obtain ⟨h1, h2, -⟩ := hb x hx y hy
      have e : (f x + g x) - (f y + g y) = (f x - f y) + (g x - g y) := by ring
      rw [e]
      calc |(f x - f y) + (g x - g y)| ≤ |f x - f y| + |g x - g y| := abs_add_le _ _
        _ ≤ C₁ * dist x y ^ (α : ℝ) + C₂ * dist x y ^ (α : ℝ) := add_le_add h1 h2
        _ = ((C₁ : ℝ) + C₂) * dist x y ^ (α : ℝ) := by ring
    · obtain ⟨ρ, C₁, C₂, hρ, hsub, hb⟩ := loc x₀ hx₀
      have hx₀B : x₀ ∈ Metric.ball x₀ ρ := Metric.mem_ball_self hρ
      have bf : ∀ z ∈ Metric.ball x₀ ρ, |f z| ≤ |f x₀| + C₁ := by
        intro z hz
        obtain ⟨h1, -, h3⟩ := hb z hz x₀ hx₀B
        have h4 : |f z - f x₀| ≤ C₁ :=
          le_trans h1 (mul_le_of_le_one_right (NNReal.coe_nonneg _) h3)
        have h5 := abs_sub_abs_le_abs_sub (f z) (f x₀)
        linarith
      have bg : ∀ z ∈ Metric.ball x₀ ρ, |g z| ≤ |g x₀| + C₂ := by
        intro z hz
        obtain ⟨-, h2, h3⟩ := hb z hz x₀ hx₀B
        have h4 : |g z - g x₀| ≤ C₂ :=
          le_trans h2 (mul_le_of_le_one_right (NNReal.coe_nonneg _) h3)
        have h5 := abs_sub_abs_le_abs_sub (g z) (g x₀)
        linarith
      refine ⟨ρ, _, hρ, hsub,
        mk _ _ ((C₁ : ℝ) * (|g x₀| + C₂) + (|f x₀| + C₁) * C₂) (by positivity) ?_⟩
      intro x hx y hy
      show |f x * g x - f y * g y| ≤ _
      obtain ⟨h1, h2, -⟩ := hb x hx y hy
      have hδ : 0 ≤ dist x y ^ (α : ℝ) := Real.rpow_nonneg dist_nonneg _
      have bgx := bg x hx
      have bfy := bf y hy
      have e : f x * g x - f y * g y = (f x - f y) * g x + f y * (g x - g y) := by ring
      rw [e]
      calc |(f x - f y) * g x + f y * (g x - g y)|
          ≤ |(f x - f y) * g x| + |f y * (g x - g y)| := abs_add_le _ _
        _ = |f x - f y| * |g x| + |f y| * |g x - g y| := by rw [abs_mul, abs_mul]
        _ ≤ ((C₁ : ℝ) * dist x y ^ (α : ℝ)) * (|g x₀| + C₂) +
              (|f x₀| + C₁) * ((C₂ : ℝ) * dist x y ^ (α : ℝ)) :=
            add_le_add (mul_le_mul h1 bgx (abs_nonneg _) (by positivity))
              (mul_le_mul bfy h2 (abs_nonneg _) (by positivity))
        _ = ((C₁ : ℝ) * (|g x₀| + C₂) + (|f x₀| + C₁) * C₂) * dist x y ^ (α : ℝ) := by ring
  
  have hmono : ∀ (n : ℕ) (f : (Fin 2 → ℝ) → ℝ), pcrHolF α (n + 1) f S → pcrHolF α n f S := by
    intro n
    induction n with
    | zero =>
      intro f hf
      obtain ⟨hd, hg⟩ := hf
      refine ⟨fun x hx => (hd x hx).continuousAt.continuousWithinAt, fun x₀ hx₀ => ?_⟩
      have hev : ∀ m : Fin 2, ∀ᶠ x in 𝓝 x₀, |smthGrad f x m| ≤ |smthGrad f x₀ m| + 1 := by
        intro m
        have hc : ContinuousAt (fun x => smthGrad f x m) x₀ :=
          (hg m).1.continuousAt (hS.mem_nhds hx₀)
        filter_upwards [hc.eventually (Metric.ball_mem_nhds _ one_pos)] with x hx
        rw [Real.dist_eq] at hx
        have := abs_sub_abs_le_abs_sub (smthGrad f x m) (smthGrad f x₀ m)
        linarith
      obtain ⟨ρ, hρ, hball⟩ :=
        Metric.eventually_nhds_iff_ball.mp ((hev 0).and ((hev 1).and (hS.mem_nhds hx₀)))
      have hB0 : 0 ≤ (|smthGrad f x₀ 0| + 1) + (|smthGrad f x₀ 1| + 1) := by positivity
      have hnorm : ∀ x ∈ Metric.ball x₀ ρ,
          ‖fderiv ℝ f x‖ ≤ (|smthGrad f x₀ 0| + 1) + (|smthGrad f x₀ 1| + 1) := by
        intro x hx
        obtain ⟨h0, h1, -⟩ := hball x hx
        refine ContinuousLinearMap.opNorm_le_bound _ hB0 (fun v => ?_)
        have hv : v = v 0 • (Pi.single 0 1 : Fin 2 → ℝ) + v 1 • (Pi.single 1 1 : Fin 2 → ℝ) := by
          funext i
          fin_cases i <;> simp
        have hval : fderiv ℝ f x v = v 0 * smthGrad f x 0 + v 1 * smthGrad f x 1 := by
          conv_lhs => rw [hv]
          rw [map_add, map_smul, map_smul, smul_eq_mul, smul_eq_mul]
          rfl
        have hv0 : |v 0| ≤ ‖v‖ := by rw [← Real.norm_eq_abs]; exact norm_le_pi_norm v 0
        have hv1 : |v 1| ≤ ‖v‖ := by rw [← Real.norm_eq_abs]; exact norm_le_pi_norm v 1
        rw [hval, Real.norm_eq_abs]
        calc |v 0 * smthGrad f x 0 + v 1 * smthGrad f x 1|
            ≤ |v 0 * smthGrad f x 0| + |v 1 * smthGrad f x 1| := abs_add_le _ _
          _ = |v 0| * |smthGrad f x 0| + |v 1| * |smthGrad f x 1| := by rw [abs_mul, abs_mul]
          _ ≤ ‖v‖ * (|smthGrad f x₀ 0| + 1) + ‖v‖ * (|smthGrad f x₀ 1| + 1) :=
            add_le_add (mul_le_mul hv0 h0 (abs_nonneg _) (norm_nonneg _))
              (mul_le_mul hv1 h1 (abs_nonneg _) (norm_nonneg _))
          _ = ((|smthGrad f x₀ 0| + 1) + (|smthGrad f x₀ 1| + 1)) * ‖v‖ := by ring
      have hρ' : 0 < min ρ (1 / 2) := lt_min hρ (by norm_num)
      have hBB : Metric.ball x₀ (min ρ (1 / 2)) ⊆ Metric.ball x₀ ρ :=
        Metric.ball_subset_ball (min_le_left _ _)
      have hlip : LipschitzOnWith (Real.toNNReal ((|smthGrad f x₀ 0| + 1) + (|smthGrad f x₀ 1| + 1)))
          f (Metric.ball x₀ (min ρ (1 / 2))) := by
        refine Convex.lipschitzOnWith_of_nnnorm_fderiv_le (𝕜 := ℝ)
          (fun x hx => hd x (hball x (hBB hx)).2.2) (fun x hx => ?_) (convex_ball x₀ _)
        rw [← NNReal.coe_le_coe, coe_nnnorm, Real.coe_toNNReal _ hB0]
        exact hnorm x (hBB hx)
      have hdist : ∀ x ∈ Metric.ball x₀ (min ρ (1 / 2)),
          ∀ y ∈ Metric.ball x₀ (min ρ (1 / 2)), dist x y ≤ 1 := by
        intro x hx y hy
        rw [Metric.mem_ball] at hx hy
        have h1 := dist_triangle x x₀ y
        rw [dist_comm x₀ y] at h1
        have : min ρ (1 / 2) ≤ 1 / 2 := min_le_right _ _
        linarith
      have hD : ∀ x ∈ Metric.ball x₀ (min ρ (1 / 2)),
          ∀ y ∈ Metric.ball x₀ (min ρ (1 / 2)), edist x y ≤ ((1 : NNReal) : ENNReal) := by
        intro x hx y hy
        rw [edist_dist, ENNReal.coe_one]
        exact ENNReal.ofReal_le_one.mpr (hdist x hx y hy)
      have hH := HolderOnWith.of_le hD hlip.holderOnWith hα1
      obtain ⟨C', hC'⟩ : ∃ C : NNReal, HolderOnWith C α f (Metric.ball x₀ (min ρ (1 / 2))) :=
        ⟨_, hH⟩
      exact ⟨min ρ (1 / 2), C', hρ', fun x hx => (hball x (hBB hx)).2.2, hC'⟩
    | succ n ih =>
      intro f hf
      exact ⟨hf.1, fun m => ih _ (hf.2 m)⟩
  
  have hP : ∀ n : ℕ, ∀ f g : (Fin 2 → ℝ) → ℝ, pcrHolF α n f S → pcrHolF α n g S →
      pcrHolF α n (fun x => f x + g x) S ∧ pcrHolF α n (fun x => f x * g x) S := by
    intro n
    induction n with
    | zero => exact hbase
    | succ n ih =>
      intro f g hf hg
      have hf' := hmono n f hf
      have hg' := hmono n g hg
      refine ⟨⟨fun x hx => (hf.1 x hx).fun_add (hg.1 x hx), fun m => ?_⟩,
        ⟨fun x hx => (hf.1 x hx).fun_mul (hg.1 x hx), fun m => ?_⟩⟩
      · refine hcongr n (fun x => smthGrad f x m + smthGrad g x m) _
          (ih _ _ (hf.2 m) (hg.2 m)).1 ?_
        exact fun x hx => ((hgrad f g x m (hf.1 x hx) (hg.1 x hx)).1).symm
      · refine hcongr n (fun x => smthGrad f x m * g x + f x * smthGrad g x m) _
          (ih _ _ (ih _ _ (hf.2 m) hg').2 (ih _ _ hf' (hg.2 m)).2).1 ?_
        exact fun x hx => ((hgrad f g x m (hf.1 x hx) (hg.1 x hx)).2).symm
  
  have hneg : ∀ (n : ℕ) (f : (Fin 2 → ℝ) → ℝ), pcrHolF α n f S →
      pcrHolF α n (fun x => -f x) S := by
    intro n
    induction n with
    | zero => exact hneg0
    | succ n ih =>
      intro f hf
      refine ⟨fun x hx => (hf.1 x hx).fun_neg, fun m => ?_⟩
      have h0 : (fun x => smthGrad (fun y => -f y) x m) = fun x => -smthGrad f x m := by
        funext x
        exact hgradneg f x m
      rw [h0]
      exact ih _ (hf.2 m)
  
  have hmonoG : ∀ (j k : ℕ) (u : (Fin 2 → ℝ) → ℝ), j ≤ k → pcrHolF α k u S →
      pcrHolF α j u S := by
    intro j k u hjk hu
    obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hjk
    clear hjk
    induction d generalizing u with
    | zero => simpa using hu
    | succ d ih => exact ih u (hmono (j + d) u hu)
  
  have hsm : ∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ), pcrHolF α k u S → smthHolC k u S := by
    intro k
    induction k with
    | zero =>
      intro u hu
      refine ⟨hu.1, fun x₀ hx₀ => ?_⟩
      obtain ⟨ρ, C, hρ, hsub, hH⟩ := hu.2 x₀ hx₀
      exact ⟨ρ, C, α, hρ, hα0, hsub, hH⟩
    | succ k ih =>
      intro u hu
      exact ⟨hu.1, fun m => ih _ (hu.2 m)⟩
  
  have hres : ∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ) (T : Set (Fin 2 → ℝ)), IsOpen T → T ⊆ S →
      pcrHolF α k u S → pcrHolF α k u T := by
    intro k
    induction k with
    | zero =>
      intro u T hT hTS hu
      refine ⟨hu.1.mono hTS, fun x₀ hx₀ => ?_⟩
      obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp hT x₀ hx₀
      obtain ⟨ρ, C, hρ, hsub, hH⟩ := hu.2 x₀ (hTS hx₀)
      exact ⟨min ε ρ, C, lt_min hε hρ,
        (Metric.ball_subset_ball (min_le_left _ _)).trans hball,
        hH.mono (Metric.ball_subset_ball (min_le_right _ _))⟩
    | succ k ih =>
      intro u T hT hTS hu
      exact ⟨fun x hx => hu.1 x (hTS hx), fun m => ih _ T hT hTS (hu.2 m)⟩
  
  have hloc : ∀ (k : ℕ) (u : (Fin 2 → ℝ) → ℝ),
      (∀ x ∈ S, ∃ T : Set (Fin 2 → ℝ), IsOpen T ∧ x ∈ T ∧ T ⊆ S ∧ pcrHolF α k u T) →
      pcrHolF α k u S := by
    intro k
    induction k with
    | zero =>
      intro u hl
      refine ⟨fun x hx => ?_, fun x₀ hx₀ => ?_⟩
      · obtain ⟨T, hTo, hxT, -, hT⟩ := hl x hx
        exact (hT.1.continuousAt (hTo.mem_nhds hxT)).continuousWithinAt
      · obtain ⟨T, -, hxT, hTS, hT⟩ := hl x₀ hx₀
        obtain ⟨ρ, C, hρ, hsub, hH⟩ := hT.2 x₀ hxT
        exact ⟨ρ, C, hρ, hsub.trans hTS, hH⟩
    | succ k ih =>
      intro u hl
      refine ⟨fun x hx => ?_, fun m => ih _ (fun x hx => ?_)⟩
      · obtain ⟨T, -, hxT, -, hT⟩ := hl x hx
        exact hT.1 x hxT
      · obtain ⟨T, hTo, hxT, hTS, hT⟩ := hl x hx
        exact ⟨T, hTo, hxT, hTS, hT.2 m⟩
  exact ⟨hconst, fun k u w hu hw => (hP k u w hu hw).1, fun k u w hu hw => (hP k u w hu hw).2,
    hneg, hcongr, hmonoG, hsm, hres, hloc⟩

theorem pcr_holF_comp (α : NNReal) (hα0 : 0 < α) (hα1 : α ≤ 1)
    (S : Set (Fin 2 → ℝ)) (hS : IsOpen S) (N k : ℕ)
    (Φ : (Fin 2 → ℝ) × (Fin N → ℝ) → ℝ) (O : Set ((Fin 2 → ℝ) × (Fin N → ℝ)))
    (hO : IsOpen O) (hΦ : ContDiffOn ℝ ∞ Φ O)
    (u : Fin N → (Fin 2 → ℝ) → ℝ) (hu : ∀ l, pcrHolF α k (u l) S)
    (huO : ∀ x ∈ S, (x, fun l => u l x) ∈ O) :
    pcrHolF α k (fun x => Φ (x, fun l => u l x)) S :=
by
  have hinf0 : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  obtain ⟨hconst, hadd, hmul, -, hcongr, hmono, -, -, -⟩ := pcr_holF_algebra α hα0 hα1 S hS
  
  have base : ∀ Ψ : (Fin 2 → ℝ) × (Fin N → ℝ) → ℝ, ContDiffOn ℝ ∞ Ψ O →
      (∀ l, pcrHolF α 0 (u l) S) → pcrHolF α 0 (fun x => Ψ (x, fun l => u l x)) S := by
    intro Ψ hΨ hu0
    have hγc : ContinuousOn (fun x => (x, fun l => u l x)) S :=
      continuousOn_id.prodMk (continuousOn_pi.2 fun l => (hu0 l).1)
    refine ⟨hΨ.continuousOn.comp hγc (fun x hx => huO x hx), ?_⟩
    intro x₀ hx₀
    choose ρl Cl hρl hsubl hHl using fun l => (hu0 l).2 x₀ hx₀
    have hev : ∀ᶠ y in nhds x₀, (∀ l, y ∈ Metric.ball x₀ (ρl l)) ∧ y ∈ S :=
      (Filter.eventually_all.2 fun l => Metric.ball_mem_nhds x₀ (hρl l)).and (hS.mem_nhds hx₀)
    obtain ⟨ε₁, hε₁, hε₁P⟩ := Metric.eventually_nhds_iff_ball.1 hev
    obtain ⟨r, hr, hrO⟩ := Metric.isOpen_iff.1 hO _ (huO x₀ hx₀)
    have hKO : Metric.closedBall ((x₀, fun l => u l x₀) : (Fin 2 → ℝ) × (Fin N → ℝ)) (r / 2)
        ⊆ O :=
      (Metric.closedBall_subset_ball (half_lt_self hr)).trans hrO
    obtain ⟨L, hL⟩ := (hΨ.mono hKO).exists_lipschitzOnWith hinf0 (convex_closedBall _ _)
      (isCompact_closedBall _ _)
    obtain ⟨δ, hδ, hδX⟩ :=
      Metric.continuousAt_iff.1 (hγc.continuousAt (hS.mem_nhds hx₀)) (r / 2) (half_pos hr)
    set ρ : ℝ := min (min ε₁ δ) (1 / 4) with hρdef
    have hρ : 0 < ρ := lt_min (lt_min hε₁ hδ) (by norm_num)
    have hρε : ρ ≤ ε₁ := (min_le_left _ _).trans (min_le_left _ _)
    have hρδ : ρ ≤ δ := (min_le_left _ _).trans (min_le_right _ _)
    have hρq : ρ ≤ 1 / 4 := min_le_right _ _
    have hBε : Metric.ball x₀ ρ ⊆ Metric.ball x₀ ε₁ := Metric.ball_subset_ball hρε
    set Cm : NNReal := max 1 (∑ l, Cl l) with hCmdef
    have hCm1 : (1 : NNReal) ≤ Cm := le_max_left _ _
    have hCml : ∀ l, Cl l ≤ Cm := fun l =>
      (Finset.single_le_sum (fun i _ => zero_le (Cl i)) (Finset.mem_univ l)).trans
        (le_max_right _ _)
    have hd : ∀ x ∈ Metric.ball x₀ ρ, ∀ y ∈ Metric.ball x₀ ρ, edist x y ≤ 1 := by
      intro x hx y hy
      rw [edist_dist]
      apply ENNReal.ofReal_le_one.2
      have h1 := Metric.mem_ball.1 hx
      have h2 := Metric.mem_ball.1 hy
      have h3 := dist_triangle_right x y x₀
      linarith
    have hpow : ∀ (d : ENNReal), d ≤ 1 → d ≤ (Cm : ENNReal) * d ^ (α : ℝ) := by
      intro d hd1
      calc d = d ^ (1 : ℝ) := (ENNReal.rpow_one d).symm
        _ ≤ d ^ (α : ℝ) := ENNReal.rpow_le_rpow_of_exponent_ge hd1 (by exact_mod_cast hα1)
        _ = (1 : ENNReal) * d ^ (α : ℝ) := (one_mul _).symm
        _ ≤ (Cm : ENNReal) * d ^ (α : ℝ) := mul_le_mul_right' (by exact_mod_cast hCm1) _
    have hXH : HolderOnWith Cm α (fun x => (x, fun l => u l x)) (Metric.ball x₀ ρ) := by
      intro x hx y hy
      have hd1 := hd x hx y hy
      rw [Prod.edist_eq]
      refine max_le (hpow _ hd1) ?_
      refine edist_pi_le_iff.2 (fun l => ?_)
      have hxl := (hε₁P x (hBε hx)).1 l
      have hyl := (hε₁P y (hBε hy)).1 l
      exact (hHl l x hxl y hyl).trans (mul_le_mul_right' (by exact_mod_cast hCml l) _)
    have hmaps : Set.MapsTo (fun x => (x, fun l => u l x)) (Metric.ball x₀ ρ)
        (Metric.closedBall ((x₀, fun l => u l x₀) : (Fin 2 → ℝ) × (Fin N → ℝ)) (r / 2)) := by
      intro x hx
      exact Metric.mem_closedBall.2
        (le_of_lt (hδX (lt_of_lt_of_le (Metric.mem_ball.1 hx) hρδ)))
    have hcomp := hL.holderOnWith.comp hXH hmaps
    rw [one_mul] at hcomp
    exact ⟨ρ, _, hρ, fun y hy => (hε₁P y (hBε hy)).2, hcomp⟩
  
  have H : ∀ n : ℕ, ∀ Ψ : (Fin 2 → ℝ) × (Fin N → ℝ) → ℝ, ContDiffOn ℝ ∞ Ψ O →
      (∀ l, pcrHolF α n (u l) S) → pcrHolF α n (fun x => Ψ (x, fun l => u l x)) S := by
    intro n
    induction n with
    | zero => exact base
    | succ n ih =>
      intro Ψ hΨ hu1
      have hu' : ∀ l, pcrHolF α n (u l) S :=
        fun l => hmono n (n + 1) (u l) (Nat.le_succ n) (hu1 l)
      have hΨ1 : ContDiffOn ℝ ∞ (fderiv ℝ Ψ) O := hΨ.fderiv_of_isOpen hO le_rfl
      have IH : ∀ c : (Fin 2 → ℝ) × (Fin N → ℝ),
          pcrHolF α n (fun x => fderiv ℝ Ψ (x, fun l => u l x) c) S :=
        fun c => ih _ (hΨ1.clm_apply contDiffOn_const) hu'
      have hdec : ∀ (a : Fin 2 → ℝ) (d : Fin N → ℝ),
          ((a, d) : (Fin 2 → ℝ) × (Fin N → ℝ)) =
            (a, 0) + ∑ l : Fin N, d l • ((0 : Fin 2 → ℝ), (Pi.single l (1 : ℝ) : Fin N → ℝ)) := by
        intro a d
        refine Prod.ext ?_ ?_
        · simp [Prod.fst_sum]
        · funext j
          simp [Prod.snd_sum, Finset.sum_apply, Pi.single_apply]
      have chain : ∀ x ∈ S, ∀ m : Fin 2,
          DifferentiableAt ℝ (fun y => Ψ (y, fun l => u l y)) x ∧
          smthGrad (fun y => Ψ (y, fun l => u l y)) x m =
            fderiv ℝ Ψ (x, fun l => u l x) (Pi.single m 1, 0) +
            ∑ l : Fin N, smthGrad (u l) x m *
              fderiv ℝ Ψ (x, fun l => u l x) (0, Pi.single l 1) := by
        intro x hx m
        have hdΨ : DifferentiableAt ℝ Ψ (x, fun l => u l x) :=
          (hΨ.differentiableOn hinf0).differentiableAt (hO.mem_nhds (huO x hx))
        have hγd : HasFDerivAt (fun y => (y, fun l => u l y))
            ((ContinuousLinearMap.id ℝ (Fin 2 → ℝ)).prod
              (ContinuousLinearMap.pi fun l => fderiv ℝ (u l) x)) x :=
          (hasFDerivAt_id x).prodMk ((hasFDerivAt_pi (φ := fun l y => u l y)).2
            fun l => ((hu1 l).1 x hx).hasFDerivAt)
        have hg := hdΨ.hasFDerivAt.comp x hγd
        refine ⟨hg.differentiableAt, ?_⟩
        show fderiv ℝ (Ψ ∘ (fun y => (y, fun l => u l y))) x (Pi.single m 1) = _
        rw [hg.fderiv]
        simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.prod_apply,
          ContinuousLinearMap.id_apply, ContinuousLinearMap.pi_apply]
        rw [hdec (Pi.single m 1) _]
        simp only [map_add, map_sum, map_smul, smul_eq_mul]
        simp only [smthGrad]
        rfl
      refine ⟨fun x hx => (chain x hx 0).1, fun m => ?_⟩
      have T0 := IH (Pi.single m 1, 0)
      have Tl : ∀ l, pcrHolF α n (fun x => smthGrad (u l) x m *
          fderiv ℝ Ψ (x, fun l => u l x) (0, Pi.single l 1)) S :=
        fun l => hmul n _ _ ((hu1 l).2 m) (IH (0, Pi.single l 1))
      have hsum : ∀ s : Finset (Fin N), pcrHolF α n (fun x => ∑ l ∈ s, smthGrad (u l) x m *
          fderiv ℝ Ψ (x, fun l => u l x) (0, Pi.single l 1)) S := by
        intro s
        refine Finset.induction_on s ?_ ?_
        · simpa using hconst n 0
        · intro a s ha ih'
          refine hcongr n _ _ (hadd n _ _ (Tl a) ih') (fun x _ => ?_)
          simp only [Finset.sum_insert ha]
      have T := hadd n _ _ T0 (hsum Finset.univ)
      refine hcongr n _ _ T (fun x hx => ?_)
      exact ((chain x hx m).2).symm
  exact H k Φ hΦ hu

theorem pcr_gb_weak_deriv (S : Set (Fin 2 → ℝ)) (hS : IsOpen S)
    (a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ) (q h : (Fin 2 → ℝ) → ℝ)
    (ha : ∀ i j : Fin 2, ContDiffOn ℝ 1 (fun x => a x i j) S) (hq : ContDiffOn ℝ 2 q S)
    (hh : ContinuousOn h S)
    (hdiv : ∀ x ∈ S, h x = ∑ i : Fin 2, ∑ j : Fin 2,
      (smthGrad (fun y => a y i j) x i * smthGrad q x j +
        a x i j * smthGrad (fun y => smthGrad q y j) x i))
    (m : Fin 2) :
    smthLinSol a (fun x i => (if i = m then h x else 0) -
        ∑ j : Fin 2, smthGrad (fun y => a y i j) x m * smthGrad q x j)
      (fun x => smthGrad q x m) S :=
by
  
  have s1 : ∀ (g u : (Fin 2 → ℝ) → ℝ), ContinuousOn g S → Continuous u → HasCompactSupport u →
      tsupport u ⊆ S → Integrable (fun x => g x * u x) := by
    intro g u hg hu huc huS
    have hcont : Continuous (fun x => g x * u x) := by
      rw [continuous_iff_continuousAt]
      intro x
      by_cases hx : x ∈ S
      · exact (hg.continuousAt (hS.mem_nhds hx)).mul hu.continuousAt
      · have hxt : x ∉ tsupport u := fun h' => hx (huS h')
        have hev : u =ᶠ[𝓝 x] 0 := (notMem_tsupport_iff_eventuallyEq).1 hxt
        have hev2 : (fun y => g y * u y) =ᶠ[𝓝 x] fun _ => (0:ℝ) := by
          filter_upwards [hev] with y hy
          simp [hy]
        exact continuousAt_const.congr hev2.symm
    exact hcont.integrable_of_hasCompactSupport huc.mul_left
  
  have tsup_grad : ∀ u : (Fin 2 → ℝ) → ℝ, tsupport u ⊆ S → ∀ k : Fin 2,
      tsupport (fun x => smthGrad u x k) ⊆ S := by
    intro u huS k x hx
    by_contra hxS
    have hxt : x ∉ tsupport (fderiv ℝ u) := fun h' => hxS (huS (tsupport_fderiv_subset ℝ h'))
    have hev : fderiv ℝ u =ᶠ[𝓝 x] 0 := (notMem_tsupport_iff_eventuallyEq).1 hxt
    have hev2 : (fun y => smthGrad u y k) =ᶠ[𝓝 x] 0 := by
      filter_upwards [hev] with y hy
      simp [smthGrad, hy]
    exact (notMem_tsupport_iff_eventuallyEq).2 hev2 hx
  
  have s3 : ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ → tsupport φ ⊆ S →
      ∀ k : Fin 2, ContDiff ℝ ∞ (fun x => smthGrad φ x k) ∧
        HasCompactSupport (fun x => smthGrad φ x k) ∧ tsupport (fun x => smthGrad φ x k) ⊆ S := by
    intro φ hφ hφc hφS k
    have hd : ContDiff ℝ ∞ (fderiv ℝ φ) := (contDiff_infty_iff_fderiv.mp hφ).2
    exact ⟨hd.clm_apply contDiff_const, hφc.fderiv_apply ℝ _, tsup_grad φ hφS k⟩
  
  have s4 : ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → ∀ (x : Fin 2 → ℝ) (i k : Fin 2),
      smthGrad (fun y => smthGrad φ y k) x i = smthGrad (fun y => smthGrad φ y i) x k := by
    intro φ hφ x i k
    have hd : ContDiff ℝ ∞ (fderiv ℝ φ) := (contDiff_infty_iff_fderiv.mp hφ).2
    have hdd : DifferentiableAt ℝ (fderiv ℝ φ) x := (hd.differentiable (by simp)).differentiableAt
    have key : ∀ a b : Fin 2, fderiv ℝ (fun y => smthGrad φ y a) x (Pi.single b 1) =
        fderiv ℝ (fderiv ℝ φ) x (Pi.single b 1) (Pi.single a 1) := by
      intro a b
      show fderiv ℝ (fun y => fderiv ℝ φ y (Pi.single a 1)) x (Pi.single b 1) = _
      rw [fderiv_clm_apply hdd (differentiableAt_const _)]
      simp
    have hS2 : IsSymmSndFDerivAt ℝ φ x := hφ.contDiffAt.isSymmSndFDerivAt (by
      simp only [minSmoothness_of_isRCLikeNormedField]
      exact (WithTop.coe_le_coe.mpr (le_top : (2 : ℕ∞) ≤ ⊤)))
    show fderiv ℝ (fun y => smthGrad φ y k) x (Pi.single i 1) =
      fderiv ℝ (fun y => smthGrad φ y i) x (Pi.single k 1)
    rw [key, key]
    exact hS2 _ _
  
  have s2 : ∀ (p u : (Fin 2 → ℝ) → ℝ), ContDiffOn ℝ 1 p S → ContDiff ℝ 1 u →
      HasCompactSupport u → tsupport u ⊆ S → ∀ k : Fin 2,
      ∫ x, p x * smthGrad u x k = -∫ x, smthGrad p x k * u x := by
    intro p u hp hu huc huS k
    have hoff : ∀ x, x ∉ S → u =ᶠ[𝓝 x] 0 ∧ fderiv ℝ u =ᶠ[𝓝 x] 0 := by
      intro x hx
      have hxt : x ∉ tsupport u := fun h' => hx (huS h')
      refine ⟨(notMem_tsupport_iff_eventuallyEq).1 hxt, (notMem_tsupport_iff_eventuallyEq).1 ?_⟩
      exact fun h' => hxt (tsupport_fderiv_subset ℝ h')
    have hFoff : ∀ x, x ∉ S → (fun y => p y * u y) =ᶠ[𝓝 x] fun _ => (0:ℝ) := by
      intro x hx
      filter_upwards [(hoff x hx).1] with y hy
      simp [hy]
    have hpd : ∀ x ∈ S, DifferentiableAt ℝ p x := fun x hx =>
      (hp.differentiableOn (by simp)).differentiableAt (hS.mem_nhds hx)
    have hud : Differentiable ℝ u := hu.differentiable (by simp)
    have hFd : Differentiable ℝ (fun y => p y * u y) := by
      intro x
      by_cases hx : x ∈ S
      · exact (hpd x hx).mul (hud x)
      · exact (differentiableAt_const (0:ℝ)).congr_of_eventuallyEq (hFoff x hx)
    have hFder : ∀ x, fderiv ℝ (fun y => p y * u y) x (Pi.single k 1) * 1 =
        smthGrad p x k * u x + p x * smthGrad u x k := by
      intro x
      by_cases hx : x ∈ S
      · rw [show (fun y => p y * u y) = p * u from rfl, fderiv_mul (hpd x hx) (hud x)]
        simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul,
          smthGrad]
        ring
      · have h1 : fderiv ℝ (fun y => p y * u y) x = 0 := by
          rw [(hFoff x hx).fderiv_eq]; simp
        have h2 : u x = 0 := (hoff x hx).1.self_of_nhds
        have h3 : fderiv ℝ u x = 0 := (hoff x hx).2.self_of_nhds
        simp [h1, h2, h3, smthGrad]
    have hcp : ContinuousOn (fun x => smthGrad p x k) S :=
      (hp.continuousOn_fderiv_of_isOpen hS le_rfl).clm_apply continuousOn_const
    have hU := s1 (fun x => smthGrad p x k) u hcp hu.continuous huc huS
    have hV := s1 p (fun x => smthGrad u x k) hp.continuousOn
      ((hu.continuous_fderiv one_ne_zero).clm_apply continuous_const) (huc.fderiv_apply ℝ _)
      (tsup_grad u huS k)
    have hFi := s1 p u hp.continuousOn hu.continuous huc huS
    have hfun : (fun x => fderiv ℝ (fun y => p y * u y) x (Pi.single k 1) * 1) =
        fun x => smthGrad p x k * u x + p x * smthGrad u x k := funext hFder
    have key := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable
      (f := fun y => p y * u y) (g := fun _ => (1:ℝ)) (v := Pi.single k 1) (μ := volume)
      (by rw [hfun]; exact hU.add hV) (by simp) (by simpa using hFi) hFd (differentiable_const 1)
    rw [hfun, integral_add hU hV] at key
    simp at key
    linarith
  
  have hDq0 : ContDiffOn ℝ 1 (fderiv ℝ q) S := hq.fderiv_of_isOpen hS (by norm_num)
  have hDq : ∀ j : Fin 2, ContDiffOn ℝ 1 (fun y => smthGrad q y j) S := fun j =>
    hDq0.clm_apply contDiffOn_const
  have hDa : ∀ i j l : Fin 2, ContinuousOn (fun y => smthGrad (fun z => a z i j) y l) S :=
    fun i j l => ((ha i j).continuousOn_fderiv_of_isOpen hS le_rfl).clm_apply continuousOn_const
  
  have hsym : ∀ x ∈ S, ∀ i j : Fin 2,
      smthGrad (fun y => smthGrad q y j) x i = smthGrad (fun y => smthGrad q y i) x j := by
    intro x hx i j
    have hc : ContDiffAt ℝ 2 q x := hq.contDiffAt (hS.mem_nhds hx)
    have hdd : DifferentiableAt ℝ (fderiv ℝ q) x :=
      (hDq0.differentiableOn (by simp)).differentiableAt (hS.mem_nhds hx)
    have key : ∀ a b : Fin 2, fderiv ℝ (fun y => smthGrad q y a) x (Pi.single b 1) =
        fderiv ℝ (fderiv ℝ q) x (Pi.single b 1) (Pi.single a 1) := by
      intro a b
      show fderiv ℝ (fun y => fderiv ℝ q y (Pi.single a 1)) x (Pi.single b 1) = _
      rw [fderiv_clm_apply hdd (differentiableAt_const _)]
      simp
    have hS2 : IsSymmSndFDerivAt ℝ q x := hc.isSymmSndFDerivAt (by
      simp [minSmoothness_of_isRCLikeNormedField])
    show fderiv ℝ (fun y => smthGrad q y j) x (Pi.single i 1) =
      fderiv ℝ (fun y => smthGrad q y i) x (Pi.single j 1)
    rw [key, key]
    exact hS2 _ _
  
  obtain ⟨Pf, hPf⟩ : ∃ Pf : Fin 2 → (Fin 2 → ℝ) → ℝ,
      ∀ i, Pf i = fun y => ∑ j : Fin 2, a y i j * smthGrad q y j := ⟨_, fun i => rfl⟩
  have hPC : ∀ i : Fin 2, ContDiffOn ℝ 1 (Pf i) S := by
    intro i
    rw [hPf]
    exact ContDiffOn.sum (fun j _ => (ha i j).mul (hDq j))
  have hprod : ∀ i : Fin 2, ∀ x ∈ S, ∀ l : Fin 2,
      smthGrad (Pf i) x l = ∑ j : Fin 2, (smthGrad (fun y => a y i j) x l * smthGrad q x j +
        a x i j * smthGrad (fun y => smthGrad q y j) x l) := by
    intro i x hx l
    have hda : ∀ j, DifferentiableAt ℝ (fun y => a y i j) x := fun j =>
      ((ha i j).differentiableOn (by simp)).differentiableAt (hS.mem_nhds hx)
    have hdq : ∀ j, DifferentiableAt ℝ (fun y => smthGrad q y j) x := fun j =>
      ((hDq j).differentiableOn (by simp)).differentiableAt (hS.mem_nhds hx)
    rw [hPf]
    show fderiv ℝ (fun y => ∑ j : Fin 2, a y i j * smthGrad q y j) x (Pi.single l 1) = _
    rw [fderiv_fun_sum (fun j _ => (hda j).fun_mul (hdq j)), ContinuousLinearMap.sum_apply]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [fderiv_fun_mul (hda j) (hdq j)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, smthGrad]
    ring
  have hPg : ∀ i l : Fin 2, ContinuousOn (fun x => smthGrad (Pf i) x l) S := fun i l =>
    ((hPC i).continuousOn_fderiv_of_isOpen hS le_rfl).clm_apply continuousOn_const
  
  intro φ hφ hφc hφS
  have hψ := s3 φ hφ hφc hφS
  have hvan : ∀ k : Fin 2, ∀ x, x ∉ S → smthGrad φ x k = 0 := fun k x hx =>
    image_eq_zero_of_notMem_tsupport (f := fun y => smthGrad φ y k)
      (fun h' => hx ((hψ k).2.2 h'))
  
  have hA : ∀ i : Fin 2, Integrable (fun x => smthGrad (Pf i) x m * smthGrad φ x i) := fun i =>
    s1 (fun x => smthGrad (Pf i) x m) _ (hPg i m) (hψ i).1.continuous (hψ i).2.1 (hψ i).2.2
  have hB : ∀ i : Fin 2, Integrable (fun x => smthGrad (Pf i) x i * smthGrad φ x m) := fun i =>
    s1 (fun x => smthGrad (Pf i) x i) _ (hPg i i) (hψ m).1.continuous (hψ m).2.1 (hψ m).2.2
  have hHint : Integrable (fun x => h x * smthGrad φ x m) :=
    s1 h _ hh (hψ m).1.continuous (hψ m).2.1 (hψ m).2.2
  have hAint : Integrable (fun x => smthGrad (Pf 0) x m * smthGrad φ x 0 +
      smthGrad (Pf 1) x m * smthGrad φ x 1) := (hA 0).add (hA 1)
  have hTint : Integrable (fun x => ∑ i : Fin 2, ∑ j : Fin 2,
      smthGrad (fun y => a y i j) x m * smthGrad q x j * smthGrad φ x i) :=
    integrable_finset_sum _ (fun i _ => integrable_finset_sum _ (fun j _ =>
      s1 (fun x => smthGrad (fun y => a y i j) x m * smthGrad q x j) (fun x => smthGrad φ x i)
        ((hDa i j m).mul (hDq j).continuousOn) (hψ i).1.continuous (hψ i).2.1 (hψ i).2.2))
  
  have hswap : ∀ i : Fin 2, ∫ x, smthGrad (Pf i) x m * smthGrad φ x i =
      ∫ x, smthGrad (Pf i) x i * smthGrad φ x m := by
    intro i
    have e1 : ∫ x, Pf i x * smthGrad (fun y => smthGrad φ y i) x m =
        -∫ x, smthGrad (Pf i) x m * smthGrad φ x i :=
      s2 (Pf i) (fun y => smthGrad φ y i) (hPC i) ((hψ i).1.of_le (by simp)) (hψ i).2.1
        (hψ i).2.2 m
    have e2 : ∫ x, Pf i x * smthGrad (fun y => smthGrad φ y m) x i =
        -∫ x, smthGrad (Pf i) x i * smthGrad φ x m :=
      s2 (Pf i) (fun y => smthGrad φ y m) (hPC i) ((hψ m).1.of_le (by simp)) (hψ m).2.1
        (hψ m).2.2 i
    have hsw : (fun x => Pf i x * smthGrad (fun y => smthGrad φ y i) x m) =
        fun x => Pf i x * smthGrad (fun y => smthGrad φ y m) x i := by
      funext x
      rw [s4 φ hφ x m i]
    rw [hsw] at e1
    linarith
  
  have hdivfun : (fun x => smthGrad (Pf 0) x 0 * smthGrad φ x m +
      smthGrad (Pf 1) x 1 * smthGrad φ x m) = fun x => h x * smthGrad φ x m := by
    funext x
    by_cases hx : x ∈ S
    · rw [hdiv x hx, hprod 0 x hx 0, hprod 1 x hx 1]
      simp only [Fin.sum_univ_two]
      ring
    · simp [hvan m x hx]
  have hAH : ∫ x, (smthGrad (Pf 0) x m * smthGrad φ x 0 + smthGrad (Pf 1) x m * smthGrad φ x 1) =
      ∫ x, h x * smthGrad φ x m := by
    rw [integral_add (hA 0) (hA 1), ← hdivfun, integral_add (hB 0) (hB 1), hswap 0, hswap 1]
  
  have hG1 : (fun x => ∑ i : Fin 2, ∑ j : Fin 2,
      a x i j * smthGrad (fun y => smthGrad q y m) x j * smthGrad φ x i) =
      fun x => (smthGrad (Pf 0) x m * smthGrad φ x 0 + smthGrad (Pf 1) x m * smthGrad φ x 1) -
        ∑ i : Fin 2, ∑ j : Fin 2,
          smthGrad (fun y => a y i j) x m * smthGrad q x j * smthGrad φ x i := by
    funext x
    by_cases hx : x ∈ S
    · rw [hprod 0 x hx m, hprod 1 x hx m]
      simp only [Fin.sum_univ_two]
      rw [hsym x hx m 0, hsym x hx m 1]
      ring
    · simp [hvan 0 x hx, hvan 1 x hx, Fin.sum_univ_two]
  have hG2 : (fun x => ∑ i : Fin 2, ((if i = m then h x else 0) -
      ∑ j : Fin 2, smthGrad (fun y => a y i j) x m * smthGrad q x j) * smthGrad φ x i) =
      fun x => h x * smthGrad φ x m - ∑ i : Fin 2, ∑ j : Fin 2,
          smthGrad (fun y => a y i j) x m * smthGrad q x j * smthGrad φ x i := by
    funext x
    fin_cases m <;> simp [Fin.sum_univ_two] <;> ring
  have hfinal : ∫ x, ∑ i : Fin 2, ∑ j : Fin 2,
      a x i j * smthGrad (fun y => smthGrad q y m) x j * smthGrad φ x i =
      ∫ x, ∑ i : Fin 2, ((if i = m then h x else 0) -
        ∑ j : Fin 2, smthGrad (fun y => a y i j) x m * smthGrad q x j) * smthGrad φ x i := by
    rw [hG1, hG2, integral_sub hAint hTint, integral_sub hHint hTint, hAH]
  exact hfinal

theorem pcr_gb_diff_identity (S : Set (Fin 2 → ℝ)) (hS : IsOpen S)
    (a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ) (b : (Fin 2 → ℝ) → Fin 2 → ℝ) (c : (Fin 2 → ℝ) → ℝ)
    (q : (Fin 2 → ℝ) → ℝ)
    (ha : ∀ i j : Fin 2, ContDiffOn ℝ 1 (fun x => a x i j) S)
    (hb : ∀ i : Fin 2, ContDiffOn ℝ 1 (fun x => b x i) S) (hc : ContDiffOn ℝ 1 c S)
    (hq : ContDiffOn ℝ 3 q S) (m : Fin 2) (x : Fin 2 → ℝ) (hx : x ∈ S) :
    smthGrad (fun y => (∑ i : Fin 2, ∑ j : Fin 2,
        a y i j * smthGrad (fun z => smthGrad q z j) y i) +
      (∑ i : Fin 2, b y i * smthGrad q y i) + c y * q y) x m =
    ((∑ i : Fin 2, ∑ j : Fin 2,
        a x i j * smthGrad (fun y => smthGrad (fun z => smthGrad q z m) y j) x i) +
      (∑ i : Fin 2, b x i * smthGrad (fun z => smthGrad q z m) x i) + c x * smthGrad q x m) +
    (∑ i : Fin 2, ∑ j : Fin 2, smthGrad (fun y => a y i j) x m *
        smthGrad (fun z => smthGrad q z j) x i) +
    (∑ i : Fin 2, smthGrad (fun y => b y i) x m * smthGrad q x i) +
    smthGrad c x m * q x :=
by
  have hN : S ∈ nhds x := hS.mem_nhds hx
  
  have symm2 : ∀ f : (Fin 2 → ℝ) → ℝ, ContDiffOn ℝ 2 f S → ∀ y ∈ S, ∀ i j : Fin 2,
      smthGrad (fun z => smthGrad f z j) y i = smthGrad (fun z => smthGrad f z i) y j := by
    intro f hf y hy i j
    have hfa : ContDiffAt ℝ 2 f y := hf.contDiffAt (hS.mem_nhds hy)
    have hsym : IsSymmSndFDerivAt ℝ f y :=
      hfa.isSymmSndFDerivAt (by simp [minSmoothness_of_isRCLikeNormedField])
    have hd : DifferentiableAt ℝ (fderiv ℝ f) y :=
      (hfa.fderiv_right (m := 1) (by norm_num)).differentiableAt one_ne_zero
    have key : ∀ k l : Fin 2, smthGrad (fun z => smthGrad f z l) y k =
        fderiv ℝ (fderiv ℝ f) y (Pi.single k 1) (Pi.single l 1) := by
      intro k l
      show fderiv ℝ (fun z => fderiv ℝ f z (Pi.single l 1)) y (Pi.single k 1) = _
      rw [fderiv_clm_apply hd (differentiableAt_const _)]
      simp
    rw [key, key]
    exact hsym _ _
  
  have hq2 : ContDiffOn ℝ 2 q S := hq.of_le (by norm_num)
  have hD1 : ∀ j : Fin 2, ContDiffOn ℝ 2 (fun y => smthGrad q y j) S := fun j =>
    (hq.fderiv_of_isOpen hS (by norm_num : (2 : WithTop ℕ∞) + 1 ≤ 3)).clm_apply
      (contDiffOn_const (c := (Pi.single j (1 : ℝ) : Fin 2 → ℝ)))
  have hD2 : ∀ i j : Fin 2,
      ContDiffOn ℝ 1 (fun y => smthGrad (fun z => smthGrad q z j) y i) S := fun i j =>
    ((hD1 j).fderiv_of_isOpen hS (by norm_num : (1 : WithTop ℕ∞) + 1 ≤ 2)).clm_apply
      (contDiffOn_const (c := (Pi.single i (1 : ℝ) : Fin 2 → ℝ)))
  
  have hgerm : ∀ F G : (Fin 2 → ℝ) → ℝ, F =ᶠ[nhds x] G → ∀ k : Fin 2,
      smthGrad F x k = smthGrad G x k := by
    intro F G h k
    unfold smthGrad
    rw [h.fderiv_eq]
  
  have h3 : ∀ i j : Fin 2,
      smthGrad (fun y => smthGrad (fun z => smthGrad q z j) y i) x m =
        smthGrad (fun y => smthGrad (fun z => smthGrad q z m) y j) x i := by
    intro i j
    refine (symm2 _ (hD1 j) x hx m i).trans ?_
    refine hgerm _ _ ?_ i
    exact Filter.eventually_of_mem hN (fun y hy => symm2 q hq2 y hy m j)
  have h2 : ∀ i : Fin 2,
      smthGrad (fun y => smthGrad q y i) x m = smthGrad (fun y => smthGrad q y m) x i :=
    fun i => symm2 q hq2 x hx m i
  
  have dA : ∀ i j : Fin 2, DifferentiableAt ℝ (fun y => a y i j) x := fun i j =>
    ((ha i j).differentiableOn one_ne_zero).differentiableAt hN
  have dU : ∀ i j : Fin 2,
      DifferentiableAt ℝ (fun y => smthGrad (fun z => smthGrad q z j) y i) x := fun i j =>
    ((hD2 i j).differentiableOn one_ne_zero).differentiableAt hN
  have dB : ∀ i : Fin 2, DifferentiableAt ℝ (fun y => b y i) x := fun i =>
    ((hb i).differentiableOn one_ne_zero).differentiableAt hN
  have dV : ∀ i : Fin 2, DifferentiableAt ℝ (fun y => smthGrad q y i) x := fun i =>
    ((hD1 i).differentiableOn (by norm_num)).differentiableAt hN
  have dC : DifferentiableAt ℝ c x := (hc.differentiableOn one_ne_zero).differentiableAt hN
  have dQ : DifferentiableAt ℝ q x := (hq.differentiableOn (by norm_num)).differentiableAt hN
  
  have hF : HasFDerivAt (fun y => (∑ i : Fin 2, ∑ j : Fin 2,
        a y i j * smthGrad (fun z => smthGrad q z j) y i) +
      (∑ i : Fin 2, b y i * smthGrad q y i) + c y * q y)
      ((∑ i : Fin 2, ∑ j : Fin 2,
          (a x i j • fderiv ℝ (fun y => smthGrad (fun z => smthGrad q z j) y i) x +
            smthGrad (fun z => smthGrad q z j) x i • fderiv ℝ (fun y => a y i j) x)) +
        (∑ i : Fin 2, (b x i • fderiv ℝ (fun y => smthGrad q y i) x +
            smthGrad q x i • fderiv ℝ (fun y => b y i) x)) +
        (c x • fderiv ℝ q x + q x • fderiv ℝ c x)) x := by
    refine ((HasFDerivAt.fun_sum fun i _ => HasFDerivAt.fun_sum fun j _ =>
      (dA i j).hasFDerivAt.fun_mul (dU i j).hasFDerivAt).add
      (HasFDerivAt.fun_sum fun i _ => (dB i).hasFDerivAt.fun_mul (dV i).hasFDerivAt)).add
      (dC.hasFDerivAt.fun_mul dQ.hasFDerivAt)
  have hsg : ∀ G : (Fin 2 → ℝ) → ℝ,
      fderiv ℝ G x (Pi.single m (1 : ℝ)) = smthGrad G x m := fun G => rfl
  refine (congrArg (fun L => L (Pi.single m (1 : ℝ))) hF.fderiv).trans ?_
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.sum_apply,
    ContinuousLinearMap.smul_apply, smul_eq_mul, hsg, Fin.sum_univ_two]
  rw [h3 0 0, h3 0 1, h3 1 0, h3 1 1, h2 0, h2 1]
  ring

theorem pcr_genlin_bootstrap (S : Set (Fin 2 → ℝ)) (hS : IsOpen S) (α : NNReal)
    (hα0 : 0 < α) (hα1 : α < 1)
    (a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ) (b : (Fin 2 → ℝ) → Fin 2 → ℝ) (c : (Fin 2 → ℝ) → ℝ)
    (k : ℕ)
    (ha : ∀ i j : Fin 2, pcrHolF α (k + 1) (fun x => a x i j) S)
    (hb : ∀ i : Fin 2, pcrHolF α k (fun x => b x i) S) (hc : pcrHolF α k c S)
    (hstep : ∀ (F : (Fin 2 → ℝ) → Fin 2 → ℝ) (w : (Fin 2 → ℝ) → ℝ),
      (∀ i : Fin 2, pcrHolF α 1 (fun x => F x i) S) → pcrHolF α 1 w S →
      smthLinSol a F w S → pcrHolF α 2 w S)
    (p : (Fin 2 → ℝ) → ℝ) (hp : pcrHolF α 2 p S)
    (hf : pcrHolF α k (fun x => (∑ i : Fin 2, ∑ j : Fin 2,
        a x i j * smthGrad (fun y => smthGrad p y j) x i) +
      (∑ i : Fin 2, b x i * smthGrad p x i) + c x * p x) S) :
    pcrHolF α (k + 2) p S :=
by
  obtain ⟨hconst, hadd, hmul, hneg, hcongr, hmono, -, -, -⟩ :=
    pcr_holF_algebra α hα0 hα1.le S hS
  
  have hsum2 : ∀ (n : ℕ) (f : Fin 2 → (Fin 2 → ℝ) → ℝ), (∀ i, pcrHolF α n (f i) S) →
      pcrHolF α n (fun x => ∑ i : Fin 2, f i x) S := by
    intro n f hf'
    exact hcongr n _ _ (hadd n _ _ (hf' 0) (hf' 1)) (fun x _ => by simp [Fin.sum_univ_two])
  have hsub : ∀ (n : ℕ) (u w : (Fin 2 → ℝ) → ℝ), pcrHolF α n u S → pcrHolF α n w S →
      pcrHolF α n (fun x => u x - w x) S := by
    intro n u w hu hw
    exact hcongr n _ _ (hadd n _ _ hu (hneg n _ hw)) (fun x _ => by simp [sub_eq_add_neg])
  
  have hCD : ∀ (n : ℕ) (u : (Fin 2 → ℝ) → ℝ), pcrHolF α n u S → ContDiffOn ℝ n u S := by
    intro n
    induction n with
    | zero =>
      intro u hu
      have h0 : ContinuousOn u S := hu.1
      simpa using (contDiffOn_zero (𝕜 := ℝ)).mpr h0
    | succ n ih =>
      intro u hu
      have hd : ∀ x ∈ S, DifferentiableAt ℝ u x := hu.1
      have hpar : ∀ m : Fin 2, ContDiffOn ℝ n (fun x => smthGrad u x m) S :=
        fun m => ih _ (hu.2 m)
      have hlin : ∀ x y : Fin 2 → ℝ,
          fderiv ℝ u x y = y 0 * smthGrad u x 0 + y 1 * smthGrad u x 1 := by
        intro x y
        have hy : y = y 0 • (Pi.single 0 1 : Fin 2 → ℝ) + y 1 • (Pi.single 1 1 : Fin 2 → ℝ) := by
          funext i; fin_cases i <;> simp
        conv_lhs => rw [hy]
        simp only [map_add, map_smul, smul_eq_mul, smthGrad]
      have hfd : ContDiffOn ℝ n (fderiv ℝ u) S := by
        refine contDiffOn_clm_apply.mpr ?_
        intro y
        refine ContDiffOn.congr (f := fun x => y 0 * smthGrad u x 0 + y 1 * smthGrad u x 1)
          ((contDiffOn_const.mul (hpar 0)).add (contDiffOn_const.mul (hpar 1))) ?_
        intro x _
        exact hlin x y
      have hdiff : DifferentiableOn ℝ u S := fun x hx => (hd x hx).differentiableWithinAt
      rw [Nat.cast_succ]
      exact (contDiffOn_succ_iff_fderiv_of_isOpen hS).mpr
        ⟨hdiff, fun h => absurd h (WithTop.natCast_ne_top n), hfd⟩
  
  have key : ∀ n : ℕ, n ≤ k → ∀ q : (Fin 2 → ℝ) → ℝ, pcrHolF α 2 q S →
      pcrHolF α n (fun x => (∑ i : Fin 2, ∑ j : Fin 2,
          a x i j * smthGrad (fun y => smthGrad q y j) x i) +
        (∑ i : Fin 2, b x i * smthGrad q x i) + c x * q x) S →
      pcrHolF α (n + 2) q S := by
    intro n
    induction n with
    | zero =>
      intro _ q hq _
      exact hq
    | succ n ih =>
      intro hn q hq hLq
      rcases Nat.eq_zero_or_pos n with rfl | hnpos
      · 
        have ha2 : ∀ i j : Fin 2, pcrHolF α 2 (fun x => a x i j) S :=
          fun i j => hmono 2 (k + 1) _ (by omega) (ha i j)
        have hb1 : ∀ i : Fin 2, pcrHolF α 1 (fun x => b x i) S :=
          fun i => hmono 1 k _ (by omega) (hb i)
        have hc1 : pcrHolF α 1 c S := hmono 1 k _ (by omega) hc
        have hq1 : pcrHolF α 1 q S := hmono 1 2 q (by norm_num) hq
        have hDq : ∀ i : Fin 2, pcrHolF α 1 (fun x => smthGrad q x i) S := fun i => hq.2 i
        have hDa : ∀ i j l : Fin 2, pcrHolF α 1 (fun x => smthGrad (fun y => a y i j) x l) S :=
          fun i j l => (ha2 i j).2 l
        obtain ⟨h, hhdef⟩ : ∃ h : (Fin 2 → ℝ) → ℝ, ∀ x, h x = ∑ i : Fin 2, ∑ j : Fin 2,
            (smthGrad (fun y => a y i j) x i * smthGrad q x j +
              a x i j * smthGrad (fun y => smthGrad q y j) x i) := ⟨_, fun x => rfl⟩
        have hE : pcrHolF α 1 (fun x => ((∑ i : Fin 2, ∑ j : Fin 2,
              a x i j * smthGrad (fun y => smthGrad q y j) x i) +
            (∑ i : Fin 2, b x i * smthGrad q x i) + c x * q x) -
            (∑ i : Fin 2, b x i * smthGrad q x i) - c x * q x +
            ∑ i : Fin 2, ∑ j : Fin 2, smthGrad (fun y => a y i j) x i * smthGrad q x j) S := by
          refine hadd 1 _ _ (hsub 1 _ _ (hsub 1 _ _ hLq ?_) (hmul 1 _ _ hc1 hq1)) ?_
          · exact hsum2 1 (fun i x => b x i * smthGrad q x i)
              (fun i => hmul 1 _ _ (hb1 i) (hDq i))
          · exact hsum2 1 (fun i x => ∑ j : Fin 2, smthGrad (fun y => a y i j) x i * smthGrad q x j)
              (fun i => hsum2 1 _ (fun j => hmul 1 _ _ (hDa i j i) (hDq j)))
        have hF1h : pcrHolF α 1 h S := by
          refine hcongr 1 _ _ hE (fun x _ => ?_)
          simp only [hhdef, Fin.sum_univ_two]
          ring
        have hFm : ∀ m i : Fin 2, pcrHolF α 1 (fun x => (if i = m then h x else 0) -
            ∑ j : Fin 2, smthGrad (fun y => a y i j) x m * smthGrad q x j) S := by
          intro m i
          have h1 : pcrHolF α 1 (fun x => if i = m then h x else 0) S := by
            by_cases him : i = m
            · exact hcongr 1 h _ hF1h (fun x _ => by simp [him])
            · exact hcongr 1 (fun _ => (0 : ℝ)) _ (hconst 1 0) (fun x _ => by simp [him])
          exact hsub 1 _ _ h1 (hsum2 1 _ (fun j => hmul 1 _ _ (hDa i j m) (hDq j)))
        have ha1C : ∀ i j : Fin 2, ContDiffOn ℝ 1 (fun x => a x i j) S := fun i j =>
          (hCD 2 _ (ha2 i j)).of_le (by exact_mod_cast (show (1 : ℕ) ≤ 2 by norm_num))
        have hq2C : ContDiffOn ℝ 2 q S := by
          have := hCD 2 q hq
          exact_mod_cast this
        have hhC : ContinuousOn h S := (hmono 0 1 h (by norm_num) hF1h).1
        show pcrHolF α (2 + 1) q S
        refine ⟨hq.1, fun m => ?_⟩
        exact hstep _ _ (hFm m) (hq.2 m)
          (pcr_gb_weak_deriv S hS a q h ha1C hq2C hhC (fun x _ => hhdef x) m)
      · 
        have haN : ∀ i j : Fin 2, pcrHolF α (n + 1) (fun x => a x i j) S :=
          fun i j => hmono (n + 1) (k + 1) _ (by omega) (ha i j)
        have hbN : ∀ i : Fin 2, pcrHolF α (n + 1) (fun x => b x i) S :=
          fun i => hmono (n + 1) k _ (by omega) (hb i)
        have hcN : pcrHolF α (n + 1) c S := hmono (n + 1) k _ (by omega) hc
        have hq2 : pcrHolF α (n + 2) q S := ih (by omega) q hq (hmono n (n + 1) _ (by omega) hLq)
        have hq3C : ContDiffOn ℝ 3 q S := by
          have := hCD 3 q (hmono 3 (n + 2) q (by omega) hq2)
          exact_mod_cast this
        have h1le : ((1 : ℕ) : WithTop ℕ∞) ≤ ((n + 1 : ℕ) : WithTop ℕ∞) := by
          exact_mod_cast (show 1 ≤ n + 1 by omega)
        have ha1C : ∀ i j : Fin 2, ContDiffOn ℝ 1 (fun x => a x i j) S := fun i j => by
          have := (hCD (n + 1) _ (haN i j)).of_le h1le
          exact_mod_cast this
        have hb1C : ∀ i : Fin 2, ContDiffOn ℝ 1 (fun x => b x i) S := fun i => by
          have := (hCD (n + 1) _ (hbN i)).of_le h1le
          exact_mod_cast this
        have hc1C : ContDiffOn ℝ 1 c S := by
          have := (hCD (n + 1) _ hcN).of_le h1le
          exact_mod_cast this
        show pcrHolF α (n + 2 + 1) q S
        refine ⟨hq.1, fun m => ?_⟩
        have hr2 : pcrHolF α 2 (fun x => smthGrad q x m) S :=
          hmono 2 (n + 1) _ (by omega) (hq2.2 m)
        have hE : pcrHolF α n (fun x =>
            smthGrad (fun y => (∑ i : Fin 2, ∑ j : Fin 2,
                a y i j * smthGrad (fun z => smthGrad q z j) y i) +
              (∑ i : Fin 2, b y i * smthGrad q y i) + c y * q y) x m -
            (∑ i : Fin 2, ∑ j : Fin 2, smthGrad (fun y => a y i j) x m *
                smthGrad (fun z => smthGrad q z j) x i) -
            (∑ i : Fin 2, smthGrad (fun y => b y i) x m * smthGrad q x i) -
            smthGrad c x m * q x) S := by
          refine hsub n _ _ (hsub n _ _ (hsub n _ _ (hLq.2 m) ?_) ?_) ?_
          · exact hsum2 n (fun i x => ∑ j : Fin 2, smthGrad (fun y => a y i j) x m *
                smthGrad (fun z => smthGrad q z j) x i)
              (fun i => hsum2 n _ (fun j => hmul n _ _ ((haN i j).2 m) ((hq2.2 j).2 i)))
          · exact hsum2 n (fun i x => smthGrad (fun y => b y i) x m * smthGrad q x i)
              (fun i => hmul n _ _ ((hbN i).2 m) (hmono n (n + 1) _ (by omega) (hq2.2 i)))
          · exact hmul n _ _ (hcN.2 m) (hmono n (n + 2) q (by omega) hq2)
        have hLr : pcrHolF α n (fun x => (∑ i : Fin 2, ∑ j : Fin 2,
              a x i j * smthGrad (fun y => smthGrad (fun z => smthGrad q z m) y j) x i) +
            (∑ i : Fin 2, b x i * smthGrad (fun z => smthGrad q z m) x i) +
              c x * smthGrad q x m) S := by
          refine hcongr n _ _ hE (fun x hx => ?_)
          have hid := pcr_gb_diff_identity S hS a b c q ha1C hb1C hc1C hq3C m x hx
          linarith
        exact ih (by omega) (fun x => smthGrad q x m) hr2 hLr
  exact key k le_rfl p hp hf

theorem pcr_div_C2alpha (S : Set (Fin 2 → ℝ)) (hS : IsOpen S) (α : NNReal)
    (hα0 : 0 < α) (hα1 : α < 1)
    (a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ) (F : (Fin 2 → ℝ) → Fin 2 → ℝ)
    (w : (Fin 2 → ℝ) → ℝ)
    (ha : ∀ i j : Fin 2, pcrHolF α 1 (fun x => a x i j) S)
    (hF : ∀ i : Fin 2, pcrHolF α 1 (fun x => F x i) S)
    (hell : ∀ x ∈ S, ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 →
      0 < ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j)
    (hw : pcrHolF α 1 w S) (heq : smthLinSol a F w S) :
    pcrHolF α 2 w S :=
by
  
  have of_dist : ∀ {X : Type} [PseudoMetricSpace X] (T : Set (Fin 2 → ℝ)) (f : (Fin 2 → ℝ) → X)
      (K α : NNReal), (∀ x ∈ T, ∀ y ∈ T, dist (f x) (f y) ≤ (K : ℝ) * dist x y ^ (α : ℝ)) →
      HolderOnWith K α f T := by
    intro X _ T f K α hf x hx y hy
    rw [edist_dist, edist_dist, ENNReal.ofReal_rpow_of_nonneg dist_nonneg (NNReal.coe_nonneg α),
      ← ENNReal.ofReal_coe_nnreal, ← ENNReal.ofReal_mul (NNReal.coe_nonneg K)]
    exact ENNReal.ofReal_le_ofReal (hf x hx y hy)
  have prod_le : ∀ p q p' q' b d : ℝ, |p| ≤ b → |q'| ≤ b → |p - p'| ≤ d → |q - q'| ≤ d →
      |p * q - p' * q'| ≤ 2 * b * d := by
    intro p q p' q' b d hp hq' h1 h2
    have hb : 0 ≤ b := (abs_nonneg _).trans hp
    have e : p * q - p' * q' = p * (q - q') + q' * (p - p') := by ring
    rw [e]
    calc |p * (q - q') + q' * (p - p')| ≤ |p| * |q - q'| + |q'| * |p - p'| := by
          rw [← abs_mul, ← abs_mul]; exact abs_add_le _ _
      _ ≤ b * d + b * d := add_le_add (mul_le_mul hp h2 (abs_nonneg _) hb)
          (mul_le_mul hq' h1 (abs_nonneg _) hb)
      _ = 2 * b * d := by ring
  have comb : ∀ A A' P0 P0' P1 P1' c d : ℝ, |A - A'| ≤ c → |P0 - P0'| ≤ d → |P1 - P1'| ≤ d →
      |A - (P0 + P1) - (A' - (P0' + P1'))| ≤ c + 2 * d := by
    intro A A' P0 P0' P1 P1' c d h1 h2 h3
    have e : A - (P0 + P1) - (A' - (P0' + P1')) = (A - A') - ((P0 - P0') + (P1 - P1')) := by ring
    rw [e]
    have h4 := abs_sub (A - A') ((P0 - P0') + (P1 - P1'))
    have h5 := abs_add_le (P0 - P0') (P1 - P1')
    linarith
  
  have hgdq : ∀ (u : (Fin 2 → ℝ) → ℝ) (m : Fin 2) (h : ℝ) (x : Fin 2 → ℝ), DifferentiableAt ℝ u x →
      DifferentiableAt ℝ u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) → ∀ j : Fin 2,
      smthGrad (smthDQ u m h) x j =
        (smthGrad u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) j - smthGrad u x j) / h := by
    intro u m h x hx hxh j
    have h0 : HasFDerivAt (fun y : Fin 2 → ℝ => y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))
        (ContinuousLinearMap.id ℝ (Fin 2 → ℝ)) x := (hasFDerivAt_id x).add_const _
    have h1 : HasFDerivAt (fun y => u (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)))
        (fderiv ℝ u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))) x := by
      have := hxh.hasFDerivAt.comp x h0
      simpa [Function.comp_def] using this
    have h2 : HasFDerivAt
        (fun y => (u (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - u y) * h⁻¹)
        (h⁻¹ • (fderiv ℝ u (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - fderiv ℝ u x)) x :=
      (h1.sub hx.hasFDerivAt).mul_const h⁻¹
    have h3 : smthDQ u m h =
        fun y => (u (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - u y) * h⁻¹ := by
      funext y; simp only [smthDQ, div_eq_mul_inv]
    simp only [smthGrad]
    rw [h3, h2.fderiv]
    simp only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.sub_apply, smul_eq_mul]
    ring
  
  have common : ∀ (ι : Type) [Fintype ι] (f : ι → (Fin 2 → ℝ) → ℝ),
      (∀ i, pcrHolF α 0 (f i) S) → ∀ x₀ ∈ S,
      ∃ (ρ : ℝ) (B C : NNReal), 0 < ρ ∧ ρ ≤ 1 / 4 ∧ ball x₀ ρ ⊆ S ∧
        ∀ i, HolderOnWith C α (f i) (ball x₀ ρ) ∧ ∀ x ∈ ball x₀ ρ, |f i x| ≤ (B : ℝ) := by
    intro ι _ f hf x₀ hx₀
    have hdat : ∀ i, ∃ (r : ℝ) (Ci : NNReal), 0 < r ∧ ball x₀ r ⊆ S ∧
        HolderOnWith Ci α (f i) (ball x₀ r) := fun i => (hf i).2 x₀ hx₀
    choose r Ci hr hrS hH using hdat
    obtain ⟨ε, hε, hεS⟩ := Metric.isOpen_iff.1 hS x₀ hx₀
    have hsum0 : 0 ≤ ∑ i, 1 / r i :=
      Finset.sum_nonneg (fun i _ => le_of_lt (one_div_pos.2 (hr i)))
    have hε' : 0 < 1 / ε := one_div_pos.2 hε
    obtain ⟨D, hD⟩ : ∃ D : ℝ, D = 4 + 1 / ε + ∑ i, 1 / r i := ⟨_, rfl⟩
    have hDpos : 0 < D := by rw [hD]; linarith
    have hD4 : 1 / D ≤ 1 / 4 := one_div_le_one_div_of_le (by norm_num) (by rw [hD]; linarith)
    have hDε : 1 / D ≤ ε := by
      have h := one_div_le_one_div_of_le hε' (show 1 / ε ≤ D by rw [hD]; linarith)
      rwa [one_div_one_div] at h
    have hDr : ∀ i, 1 / D ≤ r i := by
      intro i
      have hs : 1 / r i ≤ ∑ j, 1 / r j :=
        Finset.single_le_sum (f := fun j => 1 / r j)
          (fun j _ => le_of_lt (one_div_pos.2 (hr j))) (Finset.mem_univ i)
      have h := one_div_le_one_div_of_le (one_div_pos.2 (hr i))
        (show 1 / r i ≤ D by rw [hD]; linarith)
      rwa [one_div_one_div] at h
    refine ⟨1 / D, ∑ i, (Real.toNNReal |f i x₀| + Ci i), ∑ i, Ci i, one_div_pos.2 hDpos, hD4,
      (ball_subset_ball hDε).trans hεS, fun i => ⟨?_, ?_⟩⟩
    · intro x hx y hy
      have h1 := hH i x (ball_subset_ball (hDr i) hx) y (ball_subset_ball (hDr i) hy)
      refine h1.trans (mul_le_mul_right' (ENNReal.coe_le_coe.2 ?_) _)
      exact Finset.single_le_sum (f := Ci) (fun j _ => zero_le _) (Finset.mem_univ i)
    · intro x hx
      have hx' : x ∈ ball x₀ (r i) := ball_subset_ball (hDr i) hx
      have h1 := (hH i).dist_le hx' (mem_ball_self (hr i))
      have hd : dist x x₀ < 1 / D := hx
      have hd1 : dist x x₀ ≤ 1 := by linarith
      have hp : dist x x₀ ^ (α : ℝ) ≤ 1 := Real.rpow_le_one dist_nonneg hd1 (NNReal.coe_nonneg α)
      have h2 : dist (f i x) (f i x₀) ≤ (Ci i : ℝ) := by
        calc dist (f i x) (f i x₀) ≤ (Ci i : ℝ) * dist x x₀ ^ (α : ℝ) := h1
          _ ≤ (Ci i : ℝ) * 1 := mul_le_mul_of_nonneg_left hp (NNReal.coe_nonneg _)
          _ = (Ci i : ℝ) := mul_one _
      rw [Real.dist_eq] at h2
      have hsingle : Real.toNNReal |f i x₀| + Ci i ≤ ∑ j, (Real.toNNReal |f j x₀| + Ci j) :=
        Finset.single_le_sum (f := fun j => Real.toNNReal |f j x₀| + Ci j)
          (fun j _ => zero_le _) (Finset.mem_univ i)
      have hs' : ((Real.toNNReal |f i x₀| + Ci i : NNReal) : ℝ) ≤
          ((∑ j, (Real.toNNReal |f j x₀| + Ci j) : NNReal) : ℝ) := by exact_mod_cast hsingle
      rw [NNReal.coe_add, Real.coe_toNNReal _ (abs_nonneg _)] at hs'
      have h3 := abs_sub_abs_le_abs_sub (f i x) (f i x₀)
      linarith
  
  obtain ⟨-, -, -, -, -, hmono, hsmth, -, hloc⟩ := pcr_holF_algebra α hα0 hα1.le S hS
  refine hloc 2 w ?_
  intro x₀ hx₀
  have ha0 : ∀ i j : Fin 2, pcrHolF α 0 (fun x => a x i j) S :=
    fun i j => hmono 0 1 _ (by norm_num) (ha i j)
  have hF0 : ∀ i : Fin 2, pcrHolF α 0 (fun x => F x i) S :=
    fun i => hmono 0 1 _ (by norm_num) (hF i)
  obtain ⟨ρ, B, C, hρ, hρ4, hρS, hfam⟩ := common
    ((Fin 2 × Fin 2) ⊕ ((Fin 2 × Fin 2 × Fin 2) ⊕ ((Fin 2 × Fin 2) ⊕ Fin 2)))
    (Sum.elim (fun p x => a x p.1 p.2)
      (Sum.elim (fun p x => smthGrad (fun y => a y p.1 p.2.1) x p.2.2)
        (Sum.elim (fun p x => smthGrad (fun y => F y p.1) x p.2) (fun j x => smthGrad w x j))))
    (by
      rintro (p | p | p | j)
      · exact ha0 p.1 p.2
      · exact (ha p.1 p.2.1).2 p.2.2
      · exact (hF p.1).2 p.2
      · exact hw.2 j)
    x₀ hx₀
  have hA : ∀ i j : Fin 2, HolderOnWith C α (fun x => a x i j) (ball x₀ ρ) ∧
      ∀ x ∈ ball x₀ ρ, |a x i j| ≤ (B : ℝ) := fun i j => hfam (Sum.inl (i, j))
  have hDA : ∀ i j m : Fin 2,
      HolderOnWith C α (fun x => smthGrad (fun y => a y i j) x m) (ball x₀ ρ) ∧
      ∀ x ∈ ball x₀ ρ, |smthGrad (fun y => a y i j) x m| ≤ (B : ℝ) :=
    fun i j m => hfam (Sum.inr (Sum.inl (i, j, m)))
  have hDF : ∀ i m : Fin 2,
      HolderOnWith C α (fun x => smthGrad (fun y => F y i) x m) (ball x₀ ρ) ∧
      ∀ x ∈ ball x₀ ρ, |smthGrad (fun y => F y i) x m| ≤ (B : ℝ) :=
    fun i m => hfam (Sum.inr (Sum.inr (Sum.inl (i, m))))
  have hDW : ∀ j : Fin 2, HolderOnWith C α (fun x => smthGrad w x j) (ball x₀ ρ) ∧
      ∀ x ∈ ball x₀ ρ, |smthGrad w x j| ≤ (B : ℝ) :=
    fun j => hfam (Sum.inr (Sum.inr (Sum.inr j)))
  
  obtain ⟨R, hRdef⟩ : ∃ R : ℝ, R = ρ / 4 := ⟨_, rfl⟩
  have hR : 0 < R := by rw [hRdef]; positivity
  have hcl : closedBall x₀ (2 * R) ⊆ ball x₀ ρ := closedBall_subset_ball (by rw [hRdef]; linarith)
  have h2R : ball x₀ (2 * R) ⊆ ball x₀ ρ := ball_subset_closedBall.trans hcl
  have hRS : ball x₀ R ⊆ ball x₀ ρ := ball_subset_ball (by rw [hRdef]; linarith)
  obtain ⟨lam, hlam, hlamE⟩ := smth_unif_ellipticity (closedBall x₀ (2 * R))
    (isCompact_closedBall _ _) a (fun i j => (ha0 i j).1.mono (hcl.trans hρS))
    (fun x hx => hell x (hρS (hcl hx)))
  have hB0 : (0 : ℝ) ≤ B := NNReal.coe_nonneg B
  have hC0 : (0 : ℝ) ≤ C := NNReal.coe_nonneg C
  obtain ⟨K₀, hK₀⟩ : ∃ K₀ : NNReal, K₀ = B + C + 2 * B * B + 4 * B * C := ⟨_, rfl⟩
  have hK₀r : (K₀ : ℝ) = B + C + 2 * B * B + 4 * B * C := by rw [hK₀]; push_cast; ring
  have hBB : 0 ≤ (B : ℝ) * B := mul_nonneg hB0 hB0
  have hBC : 0 ≤ (B : ℝ) * C := mul_nonneg hB0 hC0
  have hBK : (B : ℝ) ≤ K₀ := by rw [hK₀r]; linarith
  have hCK : (C : ℝ) ≤ K₀ := by rw [hK₀r]; linarith
  have hFK2 : (C : ℝ) + 4 * B * C ≤ K₀ := by rw [hK₀r]; linarith
  
  obtain ⟨M, hM⟩ := smth_lin_schauder_est α lam K₀ R hα0 hα1 hlam hR
  have hw1 : ContDiffOn ℝ 1 w S := by exact_mod_cast smth_holC_contDiffOn 1 w S hS (hsmth 1 w hw)
  
  have hdata : ∀ m : Fin 2, ∀ h : ℝ, 0 < |h| → |h| < R →
      smthSchauderData lam K₀ α (fun x => a (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)))
        (fun x i => smthDQ (fun y => F y i) m h x -
          ∑ j : Fin 2, smthDQ (fun y => a y i j) m h x * smthGrad w x j)
        (smthDQ w m h) (ball x₀ R) := by
    intro m h hh hhR
    have hv : ‖h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)‖ = |h| := by
      rw [norm_smul, Pi.norm_single, norm_one, mul_one, Real.norm_eq_abs]
    have hshift : ∀ x ∈ ball x₀ R,
        x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ) ∈ ball x₀ (2 * R) := by
      intro x hx
      rw [mem_ball] at hx ⊢
      have h1 : dist (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) x = |h| := by
        rw [dist_eq_norm, add_sub_cancel_left, hv]
      have h2 := dist_triangle (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) x x₀
      linarith
    have hshS : ∀ x ∈ ball x₀ R, x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ) ∈ ball x₀ ρ :=
      fun x hx => h2R (hshift x hx)
    have hdist : ∀ x y : Fin 2 → ℝ, dist (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ))
        (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) = dist x y := fun x y => dist_add_right _ _ _
    have mvt : ∀ f : (Fin 2 → ℝ) → ℝ, (∀ x ∈ S, DifferentiableAt ℝ f x) →
        HolderOnWith C α (fun x => smthGrad f x m) (ball x₀ ρ) →
        (∀ x ∈ ball x₀ ρ, |smthGrad f x m| ≤ (B : ℝ)) →
        (∀ x ∈ ball x₀ R, |smthDQ f m h x| ≤ (B : ℝ)) ∧
          HolderOnWith C α (smthDQ f m h) (ball x₀ R) :=
      fun f hd hH hB => smth_dq_mvt_bounds f x₀ R m B C α hR (fun x hx => hd x (hρS (h2R hx)))
        (fun x hx => hB x (h2R hx)) (hH.mono h2R) h hh hhR
    have dqF := fun i : Fin 2 => mvt (fun y => F y i) (hF i).1 (hDF i m).1 (hDF i m).2
    have dqA := fun i j : Fin 2 => mvt (fun y => a y i j) (ha i j).1 (hDA i j m).1 (hDA i j m).2
    have dqW := mvt w hw.1 (hDW m).1 (hDW m).2
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · intro x hx ξ
      exact hlamE _ (ball_subset_closedBall (hshift x hx)) ξ
    · intro x hx i j
      exact ((hA i j).2 _ (hshS x hx)).trans hBK
    · refine of_dist _ _ _ _ (fun x hx y hy => ?_)
      have hD : 0 ≤ (K₀ : ℝ) * dist x y ^ (α : ℝ) := by positivity
      refine (dist_pi_le_iff hD).2 (fun i => (dist_pi_le_iff hD).2 (fun j => ?_))
      have h1 := (hA i j).1.dist_le (hshS x hx) (hshS y hy)
      rw [hdist] at h1
      exact h1.trans (mul_le_mul_of_nonneg_right hCK (by positivity))
    · intro x hx i
      have e1 := (dqF i).1 x hx
      have e2 := (dqA i 0).1 x hx
      have e3 := (dqA i 1).1 x hx
      have e4 := (hDW 0).2 x (hRS hx)
      have e5 := (hDW 1).2 x (hRS hx)
      simp only [Fin.sum_univ_two]
      calc _ ≤ |smthDQ (fun y => F y i) m h x| +
            (|smthDQ (fun y => a y i 0) m h x| * |smthGrad w x 0| +
              |smthDQ (fun y => a y i 1) m h x| * |smthGrad w x 1|) := by
            refine (abs_sub _ _).trans (add_le_add le_rfl ?_)
            rw [← abs_mul, ← abs_mul]
            exact abs_add_le _ _
        _ ≤ B + (B * B + B * B) := add_le_add e1 (add_le_add
            (mul_le_mul e2 e4 (abs_nonneg _) hB0) (mul_le_mul e3 e5 (abs_nonneg _) hB0))
        _ ≤ K₀ := by rw [hK₀r]; linarith
    · refine of_dist _ _ _ _ (fun x hx y hy => ?_)
      have hDn : 0 ≤ dist x y ^ (α : ℝ) := by positivity
      have hD : 0 ≤ (K₀ : ℝ) * dist x y ^ (α : ℝ) := by positivity
      refine (dist_pi_le_iff hD).2 (fun i => ?_)
      have hxρ := hRS hx
      have hyρ := hRS hy
      have f1 := (dqF i).2.dist_le hx hy
      have f2 := (dqA i 0).2.dist_le hx hy
      have f3 := (dqA i 1).2.dist_le hx hy
      have f4 := (hDW 0).1.dist_le hxρ hyρ
      have f5 := (hDW 1).1.dist_le hxρ hyρ
      simp only [Real.dist_eq] at f1 f2 f3 f4 f5 ⊢
      have p0 := prod_le _ _ _ _ _ _ ((dqA i 0).1 x hx) ((hDW 0).2 y hyρ) f2 f4
      have p1 := prod_le _ _ _ _ _ _ ((dqA i 1).1 x hx) ((hDW 1).2 y hyρ) f3 f5
      simp only [Fin.sum_univ_two]
      calc _ ≤ (C : ℝ) * dist x y ^ (α : ℝ) + 2 * (2 * B * (C * dist x y ^ (α : ℝ))) :=
            comb _ _ _ _ _ _ _ _ f1 p0 p1
        _ = (C + 4 * B * C) * dist x y ^ (α : ℝ) := by ring
        _ ≤ K₀ * dist x y ^ (α : ℝ) := mul_le_mul_of_nonneg_right hFK2 hDn
    · intro x hx
      exact (dqW.1 x hx).trans hBK
    · have hc : ContDiffOn ℝ 1
          (fun x => (w (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) - w x) / h) (ball x₀ R) := by
        refine ContDiffOn.div_const (ContDiffOn.sub ?_ (hw1.mono (hRS.trans hρS))) h
        exact hw1.comp (contDiffOn_id.add contDiffOn_const) (fun x hx => hρS (hshS x hx))
      exact hc
    · have hh0 : |h| ≠ 0 := hh.ne'
      refine ⟨Real.toNNReal (2 * C / |h|), of_dist _ _ _ _ (fun x hx y hy => ?_)⟩
      rw [Real.coe_toNNReal _ (by positivity)]
      have hD : 0 ≤ 2 * (C : ℝ) / |h| * dist x y ^ (α : ℝ) := by positivity
      refine (dist_pi_le_iff hD).2 (fun j => ?_)
      have hxS := hρS (hRS hx)
      have hyS := hρS (hRS hy)
      rw [hgdq w m h x (hw.1 x hxS) (hw.1 _ (hρS (hshS x hx))) j,
        hgdq w m h y (hw.1 y hyS) (hw.1 _ (hρS (hshS y hy))) j, Real.dist_eq]
      have g1 := (hDW j).1.dist_le (hshS x hx) (hshS y hy)
      have g2 := (hDW j).1.dist_le (hRS hx) (hRS hy)
      rw [hdist] at g1
      simp only [Real.dist_eq] at g1 g2
      rw [div_sub_div_same, abs_div, div_le_iff₀ hh]
      have e2 : 2 * (C : ℝ) / |h| * dist x y ^ (α : ℝ) * |h| = 2 * C * dist x y ^ (α : ℝ) := by
        field_simp
      rw [e2]
      have e : ∀ p q r s : ℝ, p - q - (r - s) = (p - r) - (q - s) := by intros; ring
      rw [e]
      have h4 := abs_sub (smthGrad w (x + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) j -
        smthGrad w (y + h • (Pi.single m (1 : ℝ) : Fin 2 → ℝ)) j) (smthGrad w x j - smthGrad w y j)
      linarith
    · exact smth_lin_dq_eq S hS a F w (fun i j => (ha0 i j).1) (fun i => (hF0 i).1) hw.1
        (fun j => (hw.2 j).1) heq x₀ R hR (h2R.trans hρS) m h hh hhR
  
  have hlim : ∀ m : Fin 2, ContDiffOn ℝ 1 (fun x => smthGrad w x m) (ball x₀ (R / 2)) ∧
      HolderOnWith M α (smthGrad (fun x => smthGrad w x m)) (ball x₀ (R / 2)) := by
    intro m
    refine smth_dq_limit w x₀ (R / 2) (R / 2) (half_pos hR) (half_pos hR) ?_ m M α hα0 ?_
    · refine hw1.mono ?_
      rw [add_halves]
      exact hRS.trans hρS
    · intro h hpos hlt
      exact hM x₀ _ _ (smthDQ w m h) (hdata m h hpos (by linarith))
  
  have hcoord : ∀ (f : (Fin 2 → ℝ) → (Fin 2 → ℝ)) (C' α' : NNReal) (s : Set (Fin 2 → ℝ))
      (m : Fin 2), HolderOnWith C' α' f s → HolderOnWith C' α' (fun x => f x m) s := by
    intro f C' α' s m hf x hx y hy
    exact (edist_le_pi_edist (f x) (f y) m).trans (hf x hx y hy)
  have hR2 : 0 < R / 2 := half_pos hR
  have hRR : ball x₀ (R / 2) ⊆ ball x₀ R := ball_subset_ball (by linarith)
  refine ⟨ball x₀ (R / 2), isOpen_ball, mem_ball_self hR2, hRR.trans (hRS.trans hρS), ?_⟩
  refine ⟨fun x hx => hw.1 x (hρS (hRS (hRR hx))), fun m => ⟨?_, fun j => ⟨?_, ?_⟩⟩⟩
  · intro x hx
    exact ((hlim m).1.differentiableOn (by norm_num)).differentiableAt (isOpen_ball.mem_nhds hx)
  · exact (hcoord _ M α _ j (hlim m).2).continuousOn hα0
  · intro x hx
    have hxd := mem_ball.1 hx
    refine ⟨R / 2 - dist x x₀, M, by linarith, ?_, ?_⟩
    · exact ball_subset_ball' (by linarith)
    · exact (hcoord _ M α _ j (hlim m).2).mono (ball_subset_ball' (by linarith))

theorem pcr_lin_regularity (U : Set E2) (hU : IsOpen U) (s₁ : ℝ)
    (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U})
    (hGsymm : ∀ (y : E3) (a b : Fin 3), G y a b = G y b a)
    (hGpd : ∀ y : E3, |y 0| < s₁ → hpProj y ∈ U → (G y).PosDef)
    (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1) (k : ℕ) (v p : E2 → ℝ)
    (hv : pcrHolLoc α (k + 2) v U) (hvs : ∀ x ∈ U, |v x| < s₁) (hp : pcrHolLoc α 2 p U)
    (hL : pcrHolLoc α k
      (fun x => deriv (fun ε : ℝ => pcrH G (fun x' => v x' + ε * p x') x) 0) U) :
    pcrHolLoc α (k + 2) p U :=
by
  
  obtain ⟨hch, hbr⟩ := pcr_holF_bridge α hα0 hα1
  generalize hιdef : (EuclideanSpace.equiv (Fin 2) ℝ).symm = ι at hch hbr
  have hα'0 : 0 < Real.toNNReal α := Real.toNNReal_pos.2 hα0
  have hα'r : ((Real.toNNReal α : NNReal) : ℝ) = α := Real.coe_toNNReal _ hα0.le
  have hα'1 : Real.toNNReal α < 1 := by
    have h : ((Real.toNNReal α : NNReal) : ℝ) < 1 := by rw [hα'r]; exact hα1
    exact_mod_cast h
  have hα'1' : Real.toNNReal α ≤ 1 := hα'1.le
  have hTo : IsOpen {y : Fin 2 → ℝ | ι y ∈ U} := hU.preimage ι.continuous
  obtain ⟨-, -, -, hneg, hcongr, hmono, -, -, -⟩ :=
    pcr_holF_algebra (Real.toNNReal α) hα'0 hα'1' {y : Fin 2 → ℝ | ι y ∈ U} hTo
  
  have hv' : pcrHolF (Real.toNNReal α) (k + 2) (fun y => v (ι y)) {y | ι y ∈ U} :=
    (hbr (k + 2) v U hU).1 hv
  have hp' : pcrHolF (Real.toNNReal α) 2 (fun y => p (ι y)) {y | ι y ∈ U} :=
    (hbr 2 p U hU).1 hp
  have hg' := (hbr k _ U hU).1 hL
  have hd1 : ∀ (w : E2 → ℝ) (i : Fin 2),
      (fun y => smthGrad (fun y' => w (ι y')) y i) = fun y => pd2 i w (ι y) :=
    fun w i => funext fun y => hch w y i
  have hd2 : ∀ (w : E2 → ℝ) (i j : Fin 2) (y : Fin 2 → ℝ),
      smthGrad (fun y' => smthGrad (fun y'' => w (ι y'')) y' j) y i =
        pd2 i (pd2 j w) (ι y) := by
    intro w i j y
    rw [hd1 w j]
    exact hch (pd2 j w) y i
  
  obtain ⟨Φa, Φb, Φc, hΦa, hΦb, hΦc, hell, hlin⟩ := pcr_lin_symbol U hU s₁ G hGs hGsymm hGpd
  obtain ⟨u3, hu3⟩ : ∃ u3 : Fin 3 → (Fin 2 → ℝ) → ℝ,
      u3 = ![fun y => v (ι y), fun y => smthGrad (fun y' => v (ι y')) y 0,
        fun y => smthGrad (fun y' => v (ι y')) y 1] := ⟨_, rfl⟩
  obtain ⟨u7, hu7⟩ : ∃ u7 : Fin 7 → (Fin 2 → ℝ) → ℝ,
      u7 = ![fun y => v (ι y), fun y => smthGrad (fun y' => v (ι y')) y 0,
        fun y => smthGrad (fun y' => v (ι y')) y 1,
        fun y => smthGrad (fun y' => smthGrad (fun y'' => v (ι y'')) y' 0) y 0,
        fun y => smthGrad (fun y' => smthGrad (fun y'' => v (ι y'')) y' 1) y 0,
        fun y => smthGrad (fun y' => smthGrad (fun y'' => v (ι y'')) y' 0) y 1,
        fun y => smthGrad (fun y' => smthGrad (fun y'' => v (ι y'')) y' 1) y 1] := ⟨_, rfl⟩
  have hJ1 : ∀ y, (fun l => u3 l y) = ![v (ι y), pd2 0 v (ι y), pd2 1 v (ι y)] := by
    intro y
    subst hu3
    funext l
    fin_cases l
    · rfl
    · exact hch v y 0
    · exact hch v y 1
  have hJ2 : ∀ y, (fun l => u7 l y) = ![v (ι y), pd2 0 v (ι y), pd2 1 v (ι y),
      pd2 0 (pd2 0 v) (ι y), pd2 0 (pd2 1 v) (ι y), pd2 1 (pd2 0 v) (ι y),
      pd2 1 (pd2 1 v) (ι y)] := by
    intro y
    subst hu7
    funext l
    fin_cases l
    · rfl
    · exact hch v y 0
    · exact hch v y 1
    · exact hd2 v 0 0 y
    · exact hd2 v 0 1 y
    · exact hd2 v 1 0 y
    · exact hd2 v 1 1 y
  have hu30 : ∀ y, u3 0 y = v (ι y) := by intro y; subst hu3; rfl
  have hu70 : ∀ y, u7 0 y = v (ι y) := by intro y; subst hu7; rfl
  have hu3reg : ∀ l, pcrHolF (Real.toNNReal α) (k + 1) (u3 l) {y | ι y ∈ U} := by
    subst hu3
    intro l
    fin_cases l
    · exact hmono (k + 1) (k + 2) _ (by omega) hv'
    · exact hv'.2 0
    · exact hv'.2 1
  have hu7reg : ∀ l, pcrHolF (Real.toNNReal α) k (u7 l) {y | ι y ∈ U} := by
    subst hu7
    intro l
    fin_cases l
    · exact hmono k (k + 2) _ (by omega) hv'
    · exact hmono k (k + 1) _ (by omega) (hv'.2 0)
    · exact hmono k (k + 1) _ (by omega) (hv'.2 1)
    · exact (hv'.2 0).2 0
    · exact (hv'.2 1).2 0
    · exact (hv'.2 0).2 1
    · exact (hv'.2 1).2 1
  have hO3 : IsOpen {z : (Fin 2 → ℝ) × (Fin 3 → ℝ) | ι z.1 ∈ U ∧ |z.2 0| < s₁} :=
    (hU.preimage (ι.continuous.comp continuous_fst)).inter
      (isOpen_lt (continuous_abs.comp ((continuous_apply 0).comp continuous_snd))
        continuous_const)
  have hO7 : IsOpen {z : (Fin 2 → ℝ) × (Fin 7 → ℝ) | ι z.1 ∈ U ∧ |z.2 0| < s₁} :=
    (hU.preimage (ι.continuous.comp continuous_fst)).inter
      (isOpen_lt (continuous_abs.comp ((continuous_apply 0).comp continuous_snd))
        continuous_const)
  have hsm3 : ContDiffOn ℝ ∞ (fun z : (Fin 2 → ℝ) × (Fin 3 → ℝ) => (ι z.1, z.2))
      {z | ι z.1 ∈ U ∧ |z.2 0| < s₁} :=
    ((ι.contDiff.comp contDiff_fst).prodMk contDiff_snd).contDiffOn
  have hsm7 : ContDiffOn ℝ ∞ (fun z : (Fin 2 → ℝ) × (Fin 7 → ℝ) => (ι z.1, z.2))
      {z | ι z.1 ∈ U ∧ |z.2 0| < s₁} :=
    ((ι.contDiff.comp contDiff_fst).prodMk contDiff_snd).contDiffOn
  have huO3 : ∀ y ∈ {y : Fin 2 → ℝ | ι y ∈ U},
      (y, fun l => u3 l y) ∈ {z : (Fin 2 → ℝ) × (Fin 3 → ℝ) | ι z.1 ∈ U ∧ |z.2 0| < s₁} := by
    intro y hy
    refine ⟨hy, ?_⟩
    show |u3 0 y| < s₁
    rw [hu30]
    exact hvs _ hy
  have huO7 : ∀ y ∈ {y : Fin 2 → ℝ | ι y ∈ U},
      (y, fun l => u7 l y) ∈ {z : (Fin 2 → ℝ) × (Fin 7 → ℝ) | ι z.1 ∈ U ∧ |z.2 0| < s₁} := by
    intro y hy
    refine ⟨hy, ?_⟩
    show |u7 0 y| < s₁
    rw [hu70]
    exact hvs _ hy
  obtain ⟨a, ha⟩ : ∃ a : (Fin 2 → ℝ) → Fin 2 → Fin 2 → ℝ,
      a = fun y i j => Φa i j (ι y, fun l => u3 l y) := ⟨_, rfl⟩
  obtain ⟨b, hb⟩ : ∃ b : (Fin 2 → ℝ) → Fin 2 → ℝ,
      b = fun y i => -Φb i (ι y, fun l => u7 l y) := ⟨_, rfl⟩
  obtain ⟨c, hc⟩ : ∃ c : (Fin 2 → ℝ) → ℝ,
      c = fun y => -Φc (ι y, fun l => u7 l y) := ⟨_, rfl⟩
  have haP : ∀ y i j, a y i j = Φa i j (ι y, ![v (ι y), pd2 0 v (ι y), pd2 1 v (ι y)]) := by
    intro y i j
    rw [ha, ← hJ1 y]
  have hbP : ∀ y i, b y i = -Φb i (ι y, ![v (ι y), pd2 0 v (ι y), pd2 1 v (ι y),
      pd2 0 (pd2 0 v) (ι y), pd2 0 (pd2 1 v) (ι y), pd2 1 (pd2 0 v) (ι y),
      pd2 1 (pd2 1 v) (ι y)]) := by
    intro y i
    rw [hb, ← hJ2 y]
  have hcP : ∀ y, c y = -Φc (ι y, ![v (ι y), pd2 0 v (ι y), pd2 1 v (ι y),
      pd2 0 (pd2 0 v) (ι y), pd2 0 (pd2 1 v) (ι y), pd2 1 (pd2 0 v) (ι y),
      pd2 1 (pd2 1 v) (ι y)]) := by
    intro y
    rw [hc, ← hJ2 y]
  have haReg : ∀ i j : Fin 2,
      pcrHolF (Real.toNNReal α) (k + 1) (fun x => a x i j) {y | ι y ∈ U} := by
    intro i j
    subst ha
    exact pcr_holF_comp (Real.toNNReal α) hα'0 hα'1' _ hTo 3 (k + 1)
      (fun z => Φa i j (ι z.1, z.2)) _ hO3 ((hΦa i j).comp hsm3 (fun z hz => hz))
      u3 hu3reg huO3
  have hbReg : ∀ i : Fin 2, pcrHolF (Real.toNNReal α) k (fun x => b x i) {y | ι y ∈ U} := by
    intro i
    subst hb
    exact hneg k _ (pcr_holF_comp (Real.toNNReal α) hα'0 hα'1' _ hTo 7 k
      (fun z => Φb i (ι z.1, z.2)) _ hO7 ((hΦb i).comp hsm7 (fun z hz => hz))
      u7 hu7reg huO7)
  have hcReg : pcrHolF (Real.toNNReal α) k c {y | ι y ∈ U} := by
    subst hc
    exact hneg k _ (pcr_holF_comp (Real.toNNReal α) hα'0 hα'1' _ hTo 7 k
      (fun z => Φc (ι z.1, z.2)) _ hO7 (hΦc.comp hsm7 (fun z hz => hz))
      u7 hu7reg huO7)
  have haEll : ∀ x ∈ {y : Fin 2 → ℝ | ι y ∈ U}, ∀ ξ : Fin 2 → ℝ, ξ ≠ 0 →
      0 < ∑ i : Fin 2, ∑ j : Fin 2, a x i j * ξ i * ξ j := by
    intro y hy ξ hξ
    subst ha
    exact hell (ι y, fun l => u3 l y) hy (by show |u3 0 y| < s₁; rw [hu30]; exact hvs _ hy)
      ξ hξ
  
  have hstep : ∀ (F : (Fin 2 → ℝ) → Fin 2 → ℝ) (w : (Fin 2 → ℝ) → ℝ),
      (∀ i : Fin 2, pcrHolF (Real.toNNReal α) 1 (fun x => F x i) {y | ι y ∈ U}) →
      pcrHolF (Real.toNNReal α) 1 w {y | ι y ∈ U} →
      smthLinSol a F w {y | ι y ∈ U} → pcrHolF (Real.toNNReal α) 2 w {y | ι y ∈ U} :=
    fun F w hF hw heq => pcr_div_C2alpha _ hTo (Real.toNNReal α) hα'0 hα'1 a F w
      (fun i j => hmono 1 (k + 1) _ (by omega) (haReg i j)) hF haEll hw heq
  
  have hres := pcr_genlin_bootstrap _ hTo (Real.toNNReal α) hα'0 hα'1 a b c k haReg hbReg hcReg
    hstep (fun y => p (ι y)) hp' (hcongr k _ _ (hneg k _ hg') ?_)
  · exact (hbr (k + 2) p U hU).2 hres
  · intro y hy
    have hx : ι y ∈ U := hy
    have hpx : ContDiffAt ℝ 2 p (ι y) :=
      (hp.1.contDiffAt (hU.mem_nhds hx)).of_le (by exact_mod_cast le_refl 2)
    have hvx : ContDiffAt ℝ 2 v (ι y) :=
      (hv.1.contDiffAt (hU.mem_nhds hx)).of_le
        (by exact_mod_cast (show (2 : ℕ) ≤ k + 2 by omega))
    have hD := (hlin v p (ι y) hx (hvs _ hx) hvx hpx).deriv
    beta_reduce
    rw [hD]
    simp only [haP, hbP, hcP, Fin.sum_univ_two, hch p, hch (pd2 0 p), hch (pd2 1 p)]
    ring

theorem pcr_cmc_param_integral_smooth {H E : Type} [NormedAddCommGroup H] [NormedSpace ℝ H]
    [FiniteDimensional ℝ H] [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (W : Set (H × ℝ)) (hW : IsOpen W) (F : H × ℝ → E)
    (hF : ContDiffOn ℝ ∞ F W) (Ω : Set H) (hΩ : IsOpen Ω)
    (hΩW : ∀ x ∈ Ω, ∀ s ∈ Set.Icc (0:ℝ) 1, (x, s) ∈ W) :
    ContDiffOn ℝ ∞ (fun x => ∫ s in (0:ℝ)..1, F (x, s)) Ω :=
by
  
  have tube : ∀ x₀ ∈ Ω, ∃ δ > 0, ∀ x ∈ Metric.closedBall x₀ δ, ∀ s ∈ Set.Icc (0:ℝ) 1,
      (x, s) ∈ W := by
    intro x₀ hx₀
    have hK : IsCompact ((fun s : ℝ => (x₀, s)) '' Set.Icc (0:ℝ) 1) :=
      isCompact_Icc.image (continuous_const.prodMk continuous_id)
    have hKW : (fun s : ℝ => (x₀, s)) '' Set.Icc (0:ℝ) 1 ⊆ W := by
      rintro _ ⟨s, hs, rfl⟩
      exact hΩW x₀ hx₀ s hs
    obtain ⟨δ', hδ', hth⟩ := hK.exists_thickening_subset_open hW hKW
    refine ⟨δ' / 2, by linarith, fun x hx s hs => hth ?_⟩
    rw [Metric.mem_thickening_iff]
    refine ⟨(x₀, s), ⟨s, hs, rfl⟩, ?_⟩
    rw [Prod.dist_eq, dist_self, max_eq_left dist_nonneg]
    have : dist x x₀ ≤ δ' / 2 := hx
    linarith
  
  have leib : ∀ (E' : Type) [NormedAddCommGroup E'] [NormedSpace ℝ E'] (G : H × ℝ → E'),
      ContDiffOn ℝ ∞ G W → ∀ x₀ ∈ Ω, HasFDerivAt (fun x => ∫ s in (0:ℝ)..1, G (x, s))
        (∫ s in (0:ℝ)..1, (fderiv ℝ G (x₀, s)).comp (ContinuousLinearMap.inl ℝ H ℝ)) x₀ := by
    intro E' _ _ G hG x₀ hx₀
    obtain ⟨δ, hδ, hball⟩ := tube x₀ hx₀
    have hK' : IsCompact (Metric.closedBall x₀ δ ×ˢ Set.Icc (0:ℝ) 1) :=
      (isCompact_closedBall x₀ δ).prod isCompact_Icc
    have hK'W : Metric.closedBall x₀ δ ×ˢ Set.Icc (0:ℝ) 1 ⊆ W := fun p hp =>
      hball p.1 hp.1 p.2 hp.2
    have hGc : ContinuousOn G W := hG.continuousOn
    have hdG : ContinuousOn (fderiv ℝ G) W := hG.continuousOn_fderiv_of_isOpen hW (by simp)
    have hG1c : ContinuousOn (fun p => (fderiv ℝ G p).comp (ContinuousLinearMap.inl ℝ H ℝ)) W :=
      hdG.clm_comp continuousOn_const
    obtain ⟨C, hC⟩ := hK'.exists_bound_of_continuousOn (hG1c.mono hK'W)
    have hsec : ∀ x ∈ Metric.closedBall x₀ δ,
        Set.MapsTo (fun t : ℝ => (x, t)) (Set.Icc (0:ℝ) 1) W :=
      fun x hx t ht => hball x hx t ht
    have hcont : ∀ x ∈ Metric.closedBall x₀ δ,
        ContinuousOn (fun t : ℝ => G (x, t)) (Set.Icc (0:ℝ) 1) :=
      fun x hx => hGc.comp (continuous_const.prodMk continuous_id).continuousOn (hsec x hx)
    have hcont1 : ∀ x ∈ Metric.closedBall x₀ δ, ContinuousOn
        (fun t : ℝ => (fderiv ℝ G (x, t)).comp (ContinuousLinearMap.inl ℝ H ℝ))
        (Set.Icc (0:ℝ) 1) :=
      fun x hx => hG1c.comp (continuous_const.prodMk continuous_id).continuousOn (hsec x hx)
    have hx₀b : x₀ ∈ Metric.closedBall x₀ δ := Metric.mem_closedBall_self hδ.le
    have huIoc : Set.uIoc (0:ℝ) 1 ⊆ Set.Icc 0 1 := by
      rw [Set.uIoc_of_le zero_le_one]
      exact Set.Ioc_subset_Icc_self
    refine intervalIntegral.hasFDerivAt_integral_of_dominated_of_fderiv_le (𝕜 := ℝ)
      (μ := MeasureTheory.volume) (s := Metric.ball x₀ δ) (bound := fun _ => C)
      (F := fun x t => G (x, t))
      (F' := fun x t => (fderiv ℝ G (x, t)).comp (ContinuousLinearMap.inl ℝ H ℝ))
      (Metric.ball_mem_nhds x₀ hδ) ?_ ?_ ?_ ?_ intervalIntegrable_const ?_
    · filter_upwards [Metric.ball_mem_nhds x₀ hδ] with x hx
      exact ((hcont x (Metric.ball_subset_closedBall hx)).mono huIoc).aestronglyMeasurable
        measurableSet_uIoc
    · exact ContinuousOn.intervalIntegrable_of_Icc zero_le_one (hcont x₀ hx₀b)
    · exact ((hcont1 x₀ hx₀b).mono huIoc).aestronglyMeasurable measurableSet_uIoc
    · refine Filter.Eventually.of_forall (fun t ht x hx => ?_)
      exact hC (x, t) ⟨Metric.ball_subset_closedBall hx, huIoc ht⟩
    · refine Filter.Eventually.of_forall (fun t ht x hx => ?_)
      have hxt : (x, t) ∈ W := hball x (Metric.ball_subset_closedBall hx) t (huIoc ht)
      have hd : HasFDerivAt G (fderiv ℝ G (x, t)) (x, t) :=
        ((hG.differentiableOn (by simp)).differentiableAt (hW.mem_nhds hxt)).hasFDerivAt
      exact hd.comp x (hasFDerivAt_prodMk_left x t)
  
  have smooth1 : ∀ (E' : Type) [NormedAddCommGroup E'] [NormedSpace ℝ E'] (G : H × ℝ → E'),
      ContDiffOn ℝ ∞ G W →
        ContDiffOn ℝ ∞ (fun p => (fderiv ℝ G p).comp (ContinuousLinearMap.inl ℝ H ℝ)) W := by
    intro E' _ _ G hG
    exact ((contDiffOn_infty_iff_fderiv_of_isOpen hW).1 hG).2.clm_comp contDiffOn_const
  
  have key : ∀ n : ℕ, ∀ (E' : Type) [NormedAddCommGroup E'] [NormedSpace ℝ E'] [CompleteSpace E']
      (G : H × ℝ → E'), ContDiffOn ℝ ∞ G W →
        ContDiffOn ℝ n (fun x => ∫ s in (0:ℝ)..1, G (x, s)) Ω := by
    intro n
    induction n with
    | zero =>
      intro E' _ _ _ G hG
      rw [Nat.cast_zero]
      refine contDiffOn_zero.2 ?_
      exact fun x hx => (leib E' G hG x hx).continuousAt.continuousWithinAt
    | succ n ih =>
      intro E' _ _ _ G hG
      have h1 := ih (H →L[ℝ] E')
        (fun p => (fderiv ℝ G p).comp (ContinuousLinearMap.inl ℝ H ℝ)) (smooth1 E' G hG)
      have h2 : ContDiffOn ℝ n (fderiv ℝ (fun x => ∫ s in (0:ℝ)..1, G (x, s))) Ω :=
        h1.congr (fun x hx => (leib E' G hG x hx).fderiv)
      rw [Nat.cast_succ]
      exact (contDiffOn_succ_iff_fderiv_of_isOpen hΩ).2
        ⟨fun x hx => (leib E' G hG x hx).differentiableAt.differentiableWithinAt,
         fun h => absurd h (by simp), h2⟩
  exact contDiffOn_infty.2 (fun n => key n E F hF)

theorem pcr_cmc_vol_lagrangian (U : Set E2) (hU : IsOpen U) (s₁ : ℝ)
    (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U})
    (hGsymm : ∀ (y : E3) (a b : Fin 3), G y a b = G y b a)
    (hGpd : ∀ y : E3, |y 0| < s₁ → hpProj y ∈ U → (G y).PosDef) (a : ℝ) :
    ∃ (Λ : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) → ℝ) (O : Set ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ))),
      IsOpen O ∧ ContDiffOn ℝ ∞ Λ O ∧
      (∀ w ∈ O, ∀ q : Fin 2 → ℝ, q ≠ 0 →
        0 < fderiv ℝ (fun w' => fderiv ℝ Λ w' (0, 0, q)) w (0, 0, q)) ∧
      (∀ w : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ), |w.2.1| < s₁ →
        (EuclideanSpace.equiv (Fin 2) ℝ).symm w.1 ∈ U → w ∈ O) ∧
      (∀ u : (Fin 2 → ℝ) → ℝ, ContDiff ℝ 2 u → ∀ x : Fin 2 → ℝ,
        (x, u x, smthGrad u x) ∈ O →
        smthELop Λ u x = smthELop (smthLag G 0) u x -
          a * Real.sqrt (G (smthLift 0 x (u x))).det) :=
by
  
  have F1 : ∀ (x : Fin 2 → ℝ) (t : ℝ), (smthLift 0 x t) 0 = t := by
    intro x t
    simp [smthLift]
  have F2 : ∀ (x : Fin 2 → ℝ) (t : ℝ),
      hpProj (smthLift 0 x t) = (EuclideanSpace.equiv (Fin 2) ℝ).symm x := by
    intro x t
    unfold hpProj
    congr 1
    funext i
    fin_cases i
    · simp [smthLift]
      try rfl
    · simp [smthLift]
      try rfl
  have hliftC : ∀ {X : Type} [NormedAddCommGroup X] [NormedSpace ℝ X] (f : X → Fin 2 → ℝ)
      (g : X → ℝ), ContDiff ℝ ∞ f → ContDiff ℝ ∞ g →
      ContDiff ℝ ∞ (fun p => smthLift 0 (f p) (g p)) := by
    intro X _ _ f g hf hg
    unfold smthLift
    refine (EuclideanSpace.equiv (Fin 3) ℝ).symm.contDiff.comp ?_
    refine contDiff_pi.2 fun i => ?_
    rcases Fin.eq_self_or_eq_succAbove 0 i with rfl | ⟨j, rfl⟩
    · simpa using hg
    · simpa using (contDiff_apply ℝ ℝ j).comp hf
  have hcont0 : Continuous (fun y : E3 => y 0) := PiLp.continuous_apply 2 _ 0
  have hcontP : Continuous hpProj := by
    have h : Continuous (fun z : E3 => (![z 1, z 2] : Fin 2 → ℝ)) := by
      refine continuous_pi fun i => ?_
      fin_cases i
      · simpa using (PiLp.continuous_apply 2 (fun _ : Fin 3 => ℝ) 1)
      · simpa using (PiLp.continuous_apply 2 (fun _ : Fin 3 => ℝ) 2)
    exact (EuclideanSpace.equiv (Fin 2) ℝ).symm.continuous.comp h
  set S3 : Set E3 := {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U} with hS3
  have hS3open : IsOpen S3 :=
    (isOpen_lt (continuous_abs.comp hcont0) continuous_const).inter (hU.preimage hcontP)
  have memS3 : ∀ (x : Fin 2 → ℝ) (t : ℝ),
      smthLift 0 x t ∈ S3 ↔ |t| < s₁ ∧ (EuclideanSpace.equiv (Fin 2) ℝ).symm x ∈ U := by
    intro x t
    show |(smthLift 0 x t) 0| < s₁ ∧ hpProj (smthLift 0 x t) ∈ U ↔ _
    rw [F1, F2]
  obtain ⟨hOo, hLag, hEll⟩ :=
    smth_lag_props G S3 hS3open hGs hGsymm (fun y hy => hGpd y hy.1 hy.2) 0
  have hσs : ContDiffOn ℝ ∞ (fun z => Real.sqrt (G z).det) S3 :=
    ccs_sqrtdet_smooth G S3 hGs (fun z hz => (hGpd z hz.1 hz.2).det_pos)
  set O : Set ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)) :=
    {w : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) | smthLift 0 w.1 w.2.1 ∈ S3} with hOdef
  have memO : ∀ w : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ),
      w ∈ O ↔ |w.2.1| < s₁ ∧ (EuclideanSpace.equiv (Fin 2) ℝ).symm w.1 ∈ U :=
    fun w => memS3 w.1 w.2.1
  
  obtain ⟨I, hIdef⟩ : ∃ I : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) → ℝ, ∀ w,
      I w = ∫ s in (0:ℝ)..1, Real.sqrt (G (smthLift 0 w.1 (s * w.2.1))).det :=
    ⟨_, fun _ => rfl⟩
  obtain ⟨V, hVdef⟩ : ∃ V : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) → ℝ, ∀ w, V w = w.2.1 * I w :=
    ⟨_, fun _ => rfl⟩
  have hI : ContDiffOn ℝ ∞ I O := by
    have hφ : ContDiff ℝ ∞ (fun p : ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)) × ℝ =>
        smthLift 0 p.1.1 (p.2 * p.1.2.1)) :=
      hliftC _ _ (contDiff_fst.fst) (contDiff_snd.mul contDiff_fst.snd.fst)
    have hW : IsOpen ((fun p : ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)) × ℝ =>
        smthLift 0 p.1.1 (p.2 * p.1.2.1)) ⁻¹' S3) := hS3open.preimage hφ.continuous
    have hF : ContDiffOn ℝ ∞ ((fun z => Real.sqrt (G z).det) ∘
        (fun p : ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)) × ℝ => smthLift 0 p.1.1 (p.2 * p.1.2.1)))
        ((fun p : ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)) × ℝ =>
          smthLift 0 p.1.1 (p.2 * p.1.2.1)) ⁻¹' S3) :=
      hσs.comp hφ.contDiffOn (fun p hp => hp)
    have hΩW : ∀ w ∈ O, ∀ s ∈ Set.Icc (0:ℝ) 1, (w, s) ∈
        ((fun p : ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)) × ℝ =>
          smthLift 0 p.1.1 (p.2 * p.1.2.1)) ⁻¹' S3) := by
      intro w hw s hs
      obtain ⟨hw1, hw2⟩ := (memO w).1 hw
      show smthLift 0 w.1 (s * w.2.1) ∈ S3
      rw [memS3]
      refine ⟨?_, hw2⟩
      rw [abs_mul, abs_of_nonneg hs.1]
      calc s * |w.2.1| ≤ 1 * |w.2.1| := mul_le_mul_of_nonneg_right hs.2 (abs_nonneg _)
        _ = |w.2.1| := one_mul _
        _ < s₁ := hw1
    have h := pcr_cmc_param_integral_smooth _ hW _ hF O hOo hΩW
    refine h.congr (fun w _ => ?_)
    rw [hIdef]
    rfl
  have hV : ContDiffOn ℝ ∞ V O :=
    ((contDiff_snd.fst.contDiffOn).mul hI).congr (fun w _ => hVdef w)
  have hΛ : ContDiffOn ℝ ∞ (fun w => smthLag G 0 w - a * V w) O :=
    hLag.sub (contDiffOn_const.mul hV)
  have hLagD : ∀ w ∈ O, DifferentiableAt ℝ (smthLag G 0) w := fun w hw =>
    (hLag.differentiableOn (by simp)).differentiableAt (hOo.mem_nhds hw)
  have hVD : ∀ w ∈ O, DifferentiableAt ℝ V w := fun w hw =>
    (hV.differentiableOn (by simp)).differentiableAt (hOo.mem_nhds hw)
  have hDΛ : ∀ w ∈ O, ∀ v, fderiv ℝ (fun w => smthLag G 0 w - a * V w) w v =
      fderiv ℝ (smthLag G 0) w v - a * fderiv ℝ V w v := by
    intro w hw v
    have h : HasFDerivAt (fun w => smthLag G 0 w - a * V w)
        (fderiv ℝ (smthLag G 0) w - a • fderiv ℝ V w) w :=
      (hLagD w hw).hasFDerivAt.sub ((hVD w hw).hasFDerivAt.const_mul a)
    rw [h.fderiv]
    simp
  
  have hVp : ∀ w ∈ O, ∀ q : Fin 2 → ℝ, fderiv ℝ V w (0, 0, q) = 0 := by
    intro w hw q
    have hl : HasDerivAt (fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (0 : ℝ), q))
        ((0 : Fin 2 → ℝ), (0 : ℝ), q) 0 := by
      simpa using ((hasDerivAt_id (0:ℝ)).smul_const ((0 : Fin 2 → ℝ), (0 : ℝ), q)).const_add w
    have h1 : HasDerivAt (V ∘ fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (0 : ℝ), q))
        (fderiv ℝ V w (0, 0, q)) 0 :=
      (hVD w hw).hasFDerivAt.comp_hasDerivAt_of_eq 0 hl (by simp)
    have h2 : (V ∘ fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (0 : ℝ), q)) = fun _ => V w := by
      funext h
      have e1 : (w + h • ((0 : Fin 2 → ℝ), (0 : ℝ), q)).1 = w.1 := by simp
      have e2 : (w + h • ((0 : Fin 2 → ℝ), (0 : ℝ), q)).2.1 = w.2.1 := by simp
      rw [Function.comp_apply, hVdef, hVdef, hIdef, hIdef, e1, e2]
    have h3 : HasDerivAt (V ∘ fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (0 : ℝ), q)) 0 0 := by
      rw [h2]; exact hasDerivAt_const _ _
    exact h1.unique h3
  
  have hVz : ∀ w ∈ O, fderiv ℝ V w (0, 1, 0) = Real.sqrt (G (smthLift 0 w.1 w.2.1)).det := by
    intro w hw
    obtain ⟨hw1, hw2⟩ := (memO w).1 hw
    obtain ⟨f, hfdef⟩ : ∃ f : ℝ → ℝ, ∀ τ, f τ = Real.sqrt (G (smthLift 0 w.1 τ)).det :=
      ⟨_, fun _ => rfl⟩
    have hfc : ContinuousOn f (Set.Ioo (-s₁) s₁) := by
      have h0 : ContinuousOn ((fun z => Real.sqrt (G z).det) ∘ fun τ => smthLift 0 w.1 τ)
          (Set.Ioo (-s₁) s₁) := by
        refine hσs.continuousOn.comp
          (hliftC (fun _ : ℝ => w.1) (fun τ => τ) contDiff_const contDiff_id).continuous.continuousOn ?_
        intro τ hτ
        rw [memS3]
        exact ⟨abs_lt.2 hτ, hw2⟩
      refine h0.congr (fun τ _ => ?_)
      rw [hfdef]
      rfl
    have hprim : ∀ t, t * ∫ s in (0:ℝ)..1, f (s * t) = ∫ τ in (0:ℝ)..t, f τ := by
      intro t
      rcases eq_or_ne t 0 with rfl | ht
      · simp
      · rw [intervalIntegral.integral_comp_mul_right f ht, zero_mul, one_mul, smul_eq_mul,
          mul_inv_cancel_left₀ ht]
    have ht0 : w.2.1 ∈ Set.Ioo (-s₁) s₁ := abs_lt.1 hw1
    have h0mem : (0:ℝ) ∈ Set.Ioo (-s₁) s₁ := ⟨by linarith [ht0.1, ht0.2], by linarith [ht0.1, ht0.2]⟩
    have hsub : Set.uIcc 0 w.2.1 ⊆ Set.Ioo (-s₁) s₁ :=
      Set.ordConnected_Ioo.uIcc_subset h0mem ht0
    have hFTC : HasDerivAt (fun t => ∫ τ in (0:ℝ)..t, f τ) (f w.2.1) w.2.1 :=
      intervalIntegral.integral_hasDerivAt_right ((hfc.mono hsub).intervalIntegrable)
        (hfc.stronglyMeasurableAtFilter isOpen_Ioo _ ht0)
        (hfc.continuousAt (Ioo_mem_nhds ht0.1 ht0.2))
    have hg : HasDerivAt (fun h : ℝ => ∫ τ in (0:ℝ)..(h + w.2.1), f τ) (f w.2.1) 0 :=
      HasDerivAt.comp_add_const 0 w.2.1 (by rwa [zero_add])
    have hl : HasDerivAt (fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ)))
        ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ)) 0 := by
      simpa using ((hasDerivAt_id (0:ℝ)).smul_const
        ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ))).const_add w
    have h1 : HasDerivAt (V ∘ fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ)))
        (fderiv ℝ V w (0, 1, 0)) 0 :=
      (hVD w hw).hasFDerivAt.comp_hasDerivAt_of_eq 0 hl (by simp)
    have h2 : (V ∘ fun h : ℝ => w + h • ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ))) =
        fun h : ℝ => ∫ τ in (0:ℝ)..(h + w.2.1), f τ := by
      funext h
      have e1 : (w + h • ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ))).1 = w.1 := by simp
      have e2 : (w + h • ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ))).2.1 = h + w.2.1 := by
        simp [add_comm]
      rw [Function.comp_apply, hVdef, hIdef, e1, e2, ← hprim]
      simp only [hfdef]
    rw [h2] at h1
    rw [h1.unique hg, hfdef]
  refine ⟨fun w => smthLag G 0 w - a * V w, O, hOo, hΛ, ?_, ?_, ?_⟩
  · intro w hw q hq
    have hev : (fun w' => fderiv ℝ (fun w => smthLag G 0 w - a * V w) w' (0, 0, q)) =ᶠ[𝓝 w]
        (fun w' => fderiv ℝ (smthLag G 0) w' (0, 0, q)) := by
      filter_upwards [hOo.mem_nhds hw] with w' hw'
      rw [hDΛ w' hw', hVp w' hw', mul_zero, sub_zero]
    rw [hev.fderiv_eq]
    exact hEll w hw q hq
  · intro w h1 h2
    exact (memO w).2 ⟨h1, h2⟩
  · intro u hu x hx
    have hu1 : ContDiff ℝ 1 u := hu.of_le (by norm_num)
    have hJ : Continuous (fun y => (y, u y, smthGrad u y)) := by
      refine continuous_id.prodMk (hu1.continuous.prodMk ?_)
      refine continuous_pi fun k => ?_
      show Continuous fun y => fderiv ℝ u y (Pi.single k 1)
      exact (hu1.continuous_fderiv one_ne_zero).clm_apply continuous_const
    have hev : ∀ᶠ y in 𝓝 x, (y, u y, smthGrad u y) ∈ O :=
      hJ.continuousAt.preimage_mem_nhds (hOo.mem_nhds hx)
    have hsum : ∀ k : Fin 2,
        fderiv ℝ (fun y => fderiv ℝ (fun w => smthLag G 0 w - a * V w) (y, u y, smthGrad u y)
          (0, 0, Pi.single k 1)) x =
        fderiv ℝ (fun y => fderiv ℝ (smthLag G 0) (y, u y, smthGrad u y)
          (0, 0, Pi.single k 1)) x := by
      intro k
      apply Filter.EventuallyEq.fderiv_eq
      filter_upwards [hev] with y hy
      rw [hDΛ _ hy, hVp _ hy, mul_zero, sub_zero]
    unfold smthELop
    rw [hDΛ _ hx, hVz _ hx]
    simp only [hsum]
    ring

theorem pcr_cmc_strong_EL (U : Set E2) (hU : IsOpen U) (s₁ : ℝ)
    (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U})
    (hGsymm : ∀ (y : E3) (a b : Fin 3), G y a b = G y b a)
    (hGpd : ∀ y : E3, |y 0| < s₁ → hpProj y ∈ U → (G y).PosDef)
    (v : E2 → ℝ) (hv : ContDiffOn ℝ 2 v U)
    (u : (Fin 2 → ℝ) → ℝ) (hu : ContDiff ℝ 2 u) (x : Fin 2 → ℝ)
    (hxU : (EuclideanSpace.equiv (Fin 2) ℝ).symm x ∈ U) (hus : |u x| < s₁)
    (huv : ∀ᶠ y in nhds x, u y = v ((EuclideanSpace.equiv (Fin 2) ℝ).symm y)) :
    smthELop (smthLag G 0) u x =
      Real.sqrt (G (smthLift 0 x (u x))).det * pcrH G v ((EuclideanSpace.equiv (Fin 2) ℝ).symm x) :=
by
  
  
  
  have hformula : ∀ (Λ : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) → ℝ)
      (O : Set ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ))), IsOpen O → ContDiffOn ℝ 2 Λ O →
      ∀ f : (Fin 2 → ℝ) → ℝ, ContDiffAt ℝ 2 f x → (x, f x, smthGrad f x) ∈ O →
      smthELop Λ f x = fderiv ℝ Λ (x, f x, smthGrad f x) (0, 1, 0) -
        ∑ k : Fin 2, fderiv ℝ (fderiv ℝ Λ) (x, f x, smthGrad f x)
          ((Pi.single k 1 : Fin 2 → ℝ), fderiv ℝ f x (Pi.single k 1),
            fun j => fderiv ℝ (fderiv ℝ f) x (Pi.single k 1) (Pi.single j 1))
          (0, 0, Pi.single k 1) := by
    intro Λ O hO hΛ f hf hfO
    unfold smthELop
    congr 1
    refine Finset.sum_congr rfl (fun k _ => ?_)
    have hf2 : DifferentiableAt ℝ (fderiv ℝ f) x :=
      (hf.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    have hgrad : HasFDerivAt (smthGrad f)
        (ContinuousLinearMap.pi fun j : Fin 2 =>
          (fderiv ℝ (fderiv ℝ f) x).flip (Pi.single j (1 : ℝ))) x := by
      show HasFDerivAt (fun y (j : Fin 2) => fderiv ℝ f y (Pi.single j 1)) _ x
      refine hasFDerivAt_pi.2 (fun j => ?_)
      have h := hf2.hasFDerivAt.clm_apply (hasFDerivAt_const (Pi.single j (1 : ℝ)) x)
      convert h using 1
      ext w
      simp
    have hΦ : HasFDerivAt (fun y => (y, f y, smthGrad f y))
        ((ContinuousLinearMap.id ℝ (Fin 2 → ℝ)).prod ((fderiv ℝ f x).prod
          (ContinuousLinearMap.pi fun j : Fin 2 =>
            (fderiv ℝ (fderiv ℝ f) x).flip (Pi.single j (1 : ℝ))))) x :=
      (hasFDerivAt_id x).prodMk ((hf.differentiableAt (by norm_num)).hasFDerivAt.prodMk hgrad)
    have hΛ1 : DifferentiableAt ℝ (fderiv ℝ Λ) (x, f x, smthGrad f x) :=
      ((hΛ.fderiv_of_isOpen hO (m := 1) (by norm_num)).contDiffAt
        (hO.mem_nhds hfO)).differentiableAt (by norm_num)
    have hcomp : HasFDerivAt
        (fun y => fderiv ℝ Λ (y, f y, smthGrad f y) (0, 0, Pi.single k 1)) _ x :=
      (hΛ1.hasFDerivAt.comp x hΦ).clm_apply (hasFDerivAt_const _ x)
    rw [hcomp.fderiv]
    simp
  
  
  
  have hL0 : ∀ (t : ℝ) (z : E2), (hpLift t z) 0 = t := by
    intro t z; simp [hpLift, cylPt, EuclideanSpace.single_apply]
  have hL1 : ∀ (t : ℝ) (z : E2), (hpLift t z) 1 = z 0 := by
    intro t z; simp [hpLift, cylPt, EuclideanSpace.single_apply]
  have hL2 : ∀ (t : ℝ) (z : E2), (hpLift t z) 2 = z 1 := by
    intro t z; simp [hpLift, cylPt, EuclideanSpace.single_apply]
  have hP1 : ∀ y : E3, hpProj y 0 = y 1 := by intro y; simp [hpProj]
  have hP2 : ∀ y : E3, hpProj y 1 = y 2 := by intro y; simp [hpProj]
  have hLP : ∀ (t : ℝ) (z : E2), hpProj (hpLift t z) = z := by
    intro t z; ext k; fin_cases k
    · simp [hP1, hL1]
    · simp [hP2, hL2]
  have hI : ∀ (y : Fin 2 → ℝ) (t : ℝ) (k : Fin 2),
      (Fin.insertNth (0 : Fin 3) t y : Fin 3 → ℝ) k.succ = y k := by
    intro y t k; simp [Fin.insertNth_zero']
  have hF4 : ∀ (y : Fin 2 → ℝ) (t : ℝ),
      smthLift 0 y t = hpLift t ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) := by
    intro y t
    ext i
    refine Fin.cases ?_ (fun k => ?_) i
    · simp [hL0, smthLift]
    · have h1 : (smthLift 0 y t) k.succ = y k := by
        simp only [smthLift]
        simpa using hI y t k
      rw [h1]
      fin_cases k
      · simp [hL1]
      · simp [hL2]
  have hF3 : ∀ w : E3,
      (EuclideanSpace.equiv (Fin 2) ℝ).symm (smthHoriz 0 w) = hpProj w := by
    intro w
    unfold hpProj
    congr 1
    funext k
    fin_cases k <;> simp [smthHoriz]
  have hcP : Continuous hpProj := by
    have h : hpProj = fun w => (EuclideanSpace.equiv (Fin 2) ℝ).symm (smthHoriz 0 w) :=
      funext fun w => (hF3 w).symm
    rw [h]
    refine (EuclideanSpace.equiv (Fin 2) ℝ).symm.continuous.comp ?_
    unfold smthHoriz
    exact continuous_pi fun k =>
      (EuclideanSpace.proj ((0 : Fin 3).succAbove k) : E3 →L[ℝ] ℝ).continuous
  have hS3 : IsOpen {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U} :=
    IsOpen.and (isOpen_lt (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous.abs
      continuous_const) (hU.preimage hcP)
  have hpd' : ∀ y ∈ {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U}, (G y).PosDef :=
    fun y hy => hGpd y hy.1 hy.2
  
  
  
  set J2 := EuclideanSpace.equiv (Fin 2) ℝ with hJ2
  have hvx : ContDiffAt ℝ 2 v (J2.symm x) := hv.contDiffAt (hU.mem_nhds hxU)
  obtain ⟨Th, hTh, e0, e1, e2, -⟩ := pcr_l0_taylor_reduce (fun _ => 0) v (J2.symm x)
    (fun a b => differentiableAt_const _) hvx
  have hTh2 : ContDiff ℝ 2 Th := hTh.of_le (WithTop.coe_le_coe.2 le_top)
  have hR : pcrH G v (J2.symm x) = pcrH G Th (J2.symm x) := by
    have h := pcr_l0_jet_congr G v Th (J2.symm x) hvx hTh2.contDiffAt e0 e1 e2 1
    simpa only [one_mul] using h
  obtain ⟨T, hTdef⟩ : ∃ T : (Fin 2 → ℝ) → ℝ, T = fun y => Th (J2.symm y) := ⟨_, rfl⟩
  have hT : ContDiff ℝ ∞ T := by rw [hTdef]; exact hTh.comp J2.symm.contDiff
  have hT2 : ContDiff ℝ 2 T := hT.of_le (WithTop.coe_le_coe.2 le_top)
  
  
  
  obtain ⟨Φ, hΦ⟩ : ∃ Φ : (E2 →L[ℝ] ℝ) ≃L[ℝ] ((Fin 2 → ℝ) →L[ℝ] ℝ),
      Φ = J2.arrowCongr (ContinuousLinearEquiv.refl ℝ ℝ) := ⟨_, rfl⟩
  have hD1 : ∀ (f : E2 → ℝ) (y : Fin 2 → ℝ),
      fderiv ℝ (fun z => f (J2.symm z)) y = Φ (fderiv ℝ f (J2.symm y)) := by
    intro f y
    rw [show (fun z => f (J2.symm z)) = f ∘ J2.symm from rfl, J2.symm.comp_right_fderiv]
    refine ContinuousLinearMap.ext fun w => ?_
    simp [hΦ]
  have hD2 : ∀ (f : E2 → ℝ) (y : Fin 2 → ℝ),
      fderiv ℝ (fderiv ℝ (fun z => f (J2.symm z))) y =
        (Φ : (E2 →L[ℝ] ℝ) →L[ℝ] ((Fin 2 → ℝ) →L[ℝ] ℝ)).comp
          ((fderiv ℝ (fderiv ℝ f) (J2.symm y)).comp (J2.symm : (Fin 2 → ℝ) →L[ℝ] E2)) := by
    intro f y
    have hfun : fderiv ℝ (fun z => f (J2.symm z)) = Φ ∘ (fderiv ℝ f ∘ J2.symm) :=
      funext (hD1 f)
    rw [hfun, Φ.comp_fderiv, J2.symm.comp_right_fderiv]
  have huv' : u =ᶠ[𝓝 x] (fun y => v (J2.symm y)) := huv
  have hu0 : u x = v (J2.symm x) := huv'.self_of_nhds
  have j0 : T x = u x := by
    rw [hTdef, hu0, ← e0]
  have j1 : fderiv ℝ T x = fderiv ℝ u x := by
    rw [huv'.fderiv_eq, hTdef, hD1 Th x, hD1 v x, e1]
  have j2 : fderiv ℝ (fderiv ℝ T) x = fderiv ℝ (fderiv ℝ u) x := by
    rw [huv'.fderiv.fderiv_eq, hTdef, hD2 Th x, hD2 v x, e2]
  have jg : smthGrad T x = smthGrad u x := by
    unfold smthGrad; rw [j1]
  
  
  
  obtain ⟨hO, hΛ, -⟩ := smth_lag_props G _ hS3 hGs hGsymm hpd' 0
  have hΛ2 := hΛ.of_le (show (2 : WithTop ℕ∞) ≤ ∞ from WithTop.coe_le_coe.2 le_top)
  have hmem : smthLift 0 x (u x) ∈ {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U} := by
    show |(smthLift 0 x (u x)) 0| < s₁ ∧ hpProj (smthLift 0 x (u x)) ∈ U
    rw [hF4, hL0, hLP]
    exact ⟨hus, hxU⟩
  have huO : (x, u x, smthGrad u x) ∈
      {w : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) |
        smthLift 0 w.1 w.2.1 ∈ {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U}} := hmem
  have hTO : (x, T x, smthGrad T x) ∈
      {w : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) |
        smthLift 0 w.1 w.2.1 ∈ {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U}} := by
    rw [j0, jg]; exact huO
  have hEL : smthELop (smthLag G 0) u x = smthELop (smthLag G 0) T x := by
    rw [hformula _ _ hO hΛ2 u hu.contDiffAt huO, hformula _ _ hO hΛ2 T hT2.contDiffAt hTO,
      j0, jg, j1, j2]
  have hELT := smth_ELop_eq_meanCurv G _ hS3 hGs hGsymm hpd' 0 T hT x
    (by rw [j0]; exact hmem)
  
  
  
  rw [hEL, hELT, j0, hR]
  congr 1
  have hfun : (fun w : E3 => w 0 - T (smthHoriz 0 w)) = fun y => y 0 - Th (hpProj y) := by
    funext w
    rw [hTdef]
    simp only [hF3]
  unfold pcrH
  rw [hfun, hF4, hu0, ← e0]

theorem pcr_cmc_weak_of_strong (Λ : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) → ℝ)
    (O : Set ((Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ))) (hO : IsOpen O) (hΛ : ContDiffOn ℝ ∞ Λ O)
    (D : Set (Fin 2 → ℝ)) (hD : IsOpen D) (u : (Fin 2 → ℝ) → ℝ) (hu : ContDiff ℝ 2 u)
    (huO : ∀ x ∈ D, (x, u x, smthGrad u x) ∈ O)
    (hstrong : ∀ x ∈ D, smthELop Λ u x = 0) :
    ∀ φ : (Fin 2 → ℝ) → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ → tsupport φ ⊆ D →
      ∫ x in D, fderiv ℝ Λ (x, u x, smthGrad u x) (0, φ x, smthGrad φ x) = 0 :=
by
  intro φ hφ hφc hφD
  
  have s1 : ∀ h : (Fin 2 → ℝ) → ℝ, ContDiff ℝ 1 h → HasCompactSupport h → ∀ v : Fin 2 → ℝ,
      MeasureTheory.Integrable (fun x => fderiv ℝ h x v) ∧ ∫ x, fderiv ℝ h x v = 0 := by
    intro h hh hc v
    have hint : MeasureTheory.Integrable (fun x => fderiv ℝ h x v) :=
      ((hh.continuous_fderiv one_ne_zero).clm_apply continuous_const).integrable_of_hasCompactSupport
        (hc.fderiv_apply ℝ v)
    refine ⟨hint, ?_⟩
    have key := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := MeasureTheory.volume)
      (f := fun _ : Fin 2 → ℝ => (1 : ℝ)) (g := h) (v := v)
      (by simp) (by simpa using hint)
      (by simpa using hh.continuous.integrable_of_hasCompactSupport hc)
      (differentiable_const _) (hh.differentiable one_ne_zero)
    simpa using key
  
  have hgradu : ContDiff ℝ 1 (smthGrad u) := by
    have h1 : ContDiff ℝ 1 (fderiv ℝ u) := hu.fderiv_right (by norm_num)
    rw [contDiff_pi]
    intro k
    show ContDiff ℝ 1 fun x => fderiv ℝ u x (Pi.single k 1)
    exact h1.clm_apply contDiff_const
  have hJ : ContDiff ℝ 1 (fun y : Fin 2 → ℝ => (y, u y, smthGrad u y)) :=
    contDiff_id.prodMk ((hu.of_le (by norm_num)).prodMk hgradu)
  have hDΛ : ContDiffOn ℝ 1 (fderiv ℝ Λ) O :=
    hΛ.fderiv_of_isOpen hO (WithTop.coe_le_coe.2 le_top)
  have hP : ∀ (w₀ : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ)), ∀ x ∈ D,
      ContDiffAt ℝ 1 (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) w₀) x := by
    intro w₀ x hx
    have h1 : ContDiffAt ℝ 1 (fderiv ℝ Λ) (x, u x, smthGrad u x) :=
      hDΛ.contDiffAt (hO.mem_nhds (huO x hx))
    have h2 : ContDiffAt ℝ 1 (fun y => fderiv ℝ Λ (y, u y, smthGrad u y)) x :=
      h1.comp (f := fun y : Fin 2 → ℝ => (y, u y, smthGrad u y)) x hJ.contDiffAt
    exact h2.clm_apply contDiffAt_const
  
  have hφ1 : ContDiff ℝ 1 φ := hφ.of_le (by first | exact_mod_cast le_top | norm_cast | simp)
  have hoff : ∀ x, x ∉ D → φ =ᶠ[𝓝 x] 0 := fun x hx =>
    notMem_tsupport_iff_eventuallyEq.1 (fun h => hx (hφD h))
  have hcut : ∀ k : Fin 2,
      ContDiff ℝ 1 (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y) ∧
      HasCompactSupport
        (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y) ∧
      (∀ x ∈ D, ∀ v : Fin 2 → ℝ,
        fderiv ℝ (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y) x v =
          fderiv ℝ (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1)) x v * φ x +
            fderiv ℝ Λ (x, u x, smthGrad u x) (0, 0, Pi.single k 1) * fderiv ℝ φ x v) ∧
      (∀ x, x ∉ D →
        fderiv ℝ (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y) x
          = 0) := by
    intro k
    have hloc : ∀ x, x ∉ D →
        (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y)
          =ᶠ[𝓝 x] fun _ => (0 : ℝ) := by
      intro x hx
      filter_upwards [hoff x hx] with y hy
      simp [hy]
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [contDiff_iff_contDiffAt]
      intro x
      by_cases hx : x ∈ D
      · exact (hP (0, 0, Pi.single k 1) x hx).mul hφ1.contDiffAt
      · exact contDiffAt_const.congr_of_eventuallyEq (hloc x hx)
    · exact HasCompactSupport.mul_left hφc
    · intro x hx v
      have hd := fderiv_mul (𝕜 := ℝ)
        ((hP (0, 0, Pi.single k 1) x hx).differentiableAt one_ne_zero)
        (hφ1.differentiable one_ne_zero x)
      have heq : (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y) =
          (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1)) * φ := rfl
      rw [heq, hd]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    · intro x hx
      rw [(hloc x hx).fderiv_eq]
      simp
  
  have hdec : ∀ (L : (Fin 2 → ℝ) × ℝ × (Fin 2 → ℝ) →L[ℝ] ℝ) (a : ℝ) (p : Fin 2 → ℝ),
      L (0, a, p) = a * L (0, 1, 0) + ∑ k : Fin 2, p k * L (0, 0, Pi.single k 1) := by
    intro L a p
    have hv : ((0 : Fin 2 → ℝ), a, p) =
        a • ((0 : Fin 2 → ℝ), (1 : ℝ), (0 : Fin 2 → ℝ)) +
          (p 0 • ((0 : Fin 2 → ℝ), (0 : ℝ), (Pi.single 0 1 : Fin 2 → ℝ)) +
            p 1 • ((0 : Fin 2 → ℝ), (0 : ℝ), (Pi.single 1 1 : Fin 2 → ℝ))) := by
      refine Prod.ext ?_ (Prod.ext ?_ ?_)
      · simp
      · simp
      · funext i
        fin_cases i <;> simp [Pi.single_apply]
    rw [hv, Fin.sum_univ_two]
    simp only [map_add, map_smul, smul_eq_mul]
  
  have hpt : ∀ x, fderiv ℝ Λ (x, u x, smthGrad u x) (0, φ x, smthGrad φ x) =
      ∑ k : Fin 2, fderiv ℝ
        (fun y => fderiv ℝ Λ (y, u y, smthGrad u y) (0, 0, Pi.single k 1) * φ y) x
          (Pi.single k 1) := by
    intro x
    by_cases hx : x ∈ D
    · have hg : ∀ k, smthGrad φ x k = fderiv ℝ φ x (Pi.single k 1) := fun k => rfl
      rw [hdec, Fin.sum_univ_two, Fin.sum_univ_two, (hcut 0).2.2.1 x hx, (hcut 1).2.2.1 x hx,
        hg 0, hg 1]
      have hs := hstrong x hx
      unfold smthELop at hs
      rw [Fin.sum_univ_two] at hs
      linear_combination φ x * hs
    · have hφx : φ x = 0 := image_eq_zero_of_notMem_tsupport (fun h => hx (hφD h))
      have hdφ : fderiv ℝ φ x = 0 := by
        by_contra h
        exact hx (hφD (support_fderiv_subset ℝ h))
      have hgφ : smthGrad φ x = 0 := by
        funext k
        simp [smthGrad, hdφ]
      have h0 : ((0 : Fin 2 → ℝ), (0 : ℝ), (0 : Fin 2 → ℝ)) = 0 := rfl
      rw [hφx, hgφ, h0, map_zero, Fin.sum_univ_two, (hcut 0).2.2.2 x hx, (hcut 1).2.2.2 x hx]
      simp
  have hzero : ∀ x, x ∉ D →
      fderiv ℝ Λ (x, u x, smthGrad u x) (0, φ x, smthGrad φ x) = 0 := by
    intro x hx
    rw [hpt x, Fin.sum_univ_two, (hcut 0).2.2.2 x hx, (hcut 1).2.2.2 x hx]
    simp
  rw [MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero hzero,
    MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall hpt),
    MeasureTheory.integral_finset_sum _ (fun k _ => (s1 _ (hcut k).1 (hcut k).2.1 _).1)]
  exact Finset.sum_eq_zero (fun k _ => (s1 _ (hcut k).1 (hcut k).2.1 _).2)

theorem pcr_cmc_regularity (U : Set E2) (hU : IsOpen U) (s₁ : ℝ)
    (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ U})
    (hGsymm : ∀ (y : E3) (a b : Fin 3), G y a b = G y b a)
    (hGpd : ∀ y : E3, |y 0| < s₁ → hpProj y ∈ U → (G y).PosDef)
    (α : ℝ) (hα0 : 0 < α) (hα1 : α < 1) (v : E2 → ℝ)
    (hv : pcrHolLoc α 2 v U) (hvs : ∀ x ∈ U, |v x| < s₁) (a : ℝ)
    (hH : ∀ x ∈ U, pcrH G v x = a) :
    ∀ m : ℕ, pcrHolLoc α m v U :=
by
  
  have hs5 : ContDiffOn ℝ ∞ v U → ∀ m : ℕ, pcrHolLoc α m v U := by
    intro hsm m
    refine ⟨contDiffOn_infty.1 hsm m, fun x hx => ?_⟩
    obtain ⟨ε, hε, hεU⟩ := Metric.isOpen_iff.1 hU x hx
    have hρ0 : 0 < min (ε / 2) (1 / 2) := lt_min (by linarith) (by norm_num)
    have hρε : min (ε / 2) (1 / 2) ≤ ε / 2 := min_le_left _ _
    have hρ1 : min (ε / 2) (1 / 2) ≤ 1 / 2 := min_le_right _ _
    have hcb : Metric.closedBall x (min (ε / 2) (1 / 2)) ⊆ U := fun y hy =>
      hεU (Metric.mem_ball.2 (lt_of_le_of_lt (Metric.mem_closedBall.1 hy) (by linarith)))
    have hbU : Metric.ball x (min (ε / 2) (1 / 2)) ⊆ U := Metric.ball_subset_closedBall.trans hcb
    have hg : ContDiffOn ℝ 1 (iteratedFDeriv ℝ m v) U := by
      intro y hy
      have h1 : ContDiffAt ℝ ((m + 1 : ℕ) : WithTop ℕ∞) v y :=
        (contDiffOn_infty.1 hsm (m + 1)).contDiffAt (hU.mem_nhds hy)
      exact (h1.iteratedFDeriv_right (m := 1) (i := m)
        (by push_cast; exact (add_comm _ _).le)).contDiffWithinAt
    obtain ⟨M, hM⟩ := (isCompact_closedBall x (min (ε / 2) (1 / 2))).exists_bound_of_continuousOn
      ((hg.continuousOn_fderiv_of_isOpen hU le_rfl).mono hcb)
    have hdiff : ∀ y ∈ Metric.ball x (min (ε / 2) (1 / 2)),
        DifferentiableAt ℝ (iteratedFDeriv ℝ m v) y := fun y hy =>
      (hg.contDiffAt (hU.mem_nhds (hbU hy))).differentiableAt one_ne_zero
    refine ⟨min (ε / 2) (1 / 2), hρ0, hbU, max M 0, fun y hy z hz => ?_⟩
    have hmv := (convex_ball x (min (ε / 2) (1 / 2))).norm_image_sub_le_of_norm_fderiv_le hdiff
      (fun w hw => (hM w (Metric.ball_subset_closedBall hw)).trans (le_max_left M 0)) hz hy
    have hyz : ‖y - z‖ = dist y z := (dist_eq_norm y z).symm
    rw [hyz] at hmv
    have hd1 : dist y z ≤ 1 := by
      have h0 := dist_triangle_right y z x
      have h1 := Metric.mem_ball.1 hy
      have h2 := Metric.mem_ball.1 hz
      linarith
    have hdα : dist y z ≤ dist y z ^ α := by
      rcases (dist_nonneg (x := y) (y := z)).eq_or_lt with h0 | hpos
      · rw [← h0, Real.zero_rpow hα0.ne']
      · calc dist y z = dist y z ^ (1 : ℝ) := (Real.rpow_one _).symm
          _ ≤ dist y z ^ α := Real.rpow_le_rpow_of_exponent_ge hpos hd1 hα1.le
    calc ‖iteratedFDeriv ℝ m v y - iteratedFDeriv ℝ m v z‖ ≤ max M 0 * dist y z := hmv
      _ ≤ max M 0 * dist y z ^ α := mul_le_mul_of_nonneg_left hdα (le_max_right _ _)
  apply hs5
  have hv2 : ContDiffOn ℝ 2 v U := by exact_mod_cast hv.1
  refine contDiffOn_of_locally_contDiffOn (fun x₀ hx₀ => ?_)
  obtain ⟨ε, hε, hεU⟩ := Metric.isOpen_iff.1 hU x₀ hx₀
  have hr : 0 < ε / 4 := by positivity
  have hballU : Metric.ball x₀ (ε / 4) ⊆ U := fun z hz =>
    hεU (Metric.mem_ball.2 (lt_of_lt_of_le (Metric.mem_ball.1 hz) (by linarith)))
  
  obtain ⟨w, hw, hwv⟩ : ∃ w : E2 → ℝ, ContDiff ℝ 2 w ∧
      ∀ z ∈ Metric.ball x₀ (ε / 4), w z = v z := by
    let f : ContDiffBump x₀ := ⟨ε / 4, ε / 2, by positivity, by linarith⟩
    refine ⟨fun z => f z * v z, ?_, fun z hz => ?_⟩
    · rw [contDiff_iff_contDiffAt]
      intro z
      by_cases hz : z ∈ U
      · exact (f.contDiff.contDiffAt).mul (hv2.contDiffAt (hU.mem_nhds hz))
      · have hzt : z ∉ tsupport f := by
          rw [f.tsupport_eq]
          intro hz'
          exact hz (hεU (Metric.mem_ball.2 (lt_of_le_of_lt (Metric.mem_closedBall.1 hz')
            (show ε / 2 < ε by linarith))))
        have hev : (fun z => f z * v z) =ᶠ[𝓝 z] fun _ => (0 : ℝ) := by
          filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hzt] with y hy
          simp [hy]
        exact contDiffAt_const.congr_of_eventuallyEq hev
    · show f z * v z = v z
      rw [f.one_of_mem_closedBall (Metric.ball_subset_closedBall hz), one_mul]
  
  obtain ⟨D, hD, hDmem⟩ : ∃ D : Set (Fin 2 → ℝ), IsOpen D ∧
      ∀ y, y ∈ D ↔ (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ Metric.ball x₀ (ε / 4) :=
    ⟨(EuclideanSpace.equiv (Fin 2) ℝ).symm ⁻¹' Metric.ball x₀ (ε / 4),
      Metric.isOpen_ball.preimage (EuclideanSpace.equiv (Fin 2) ℝ).symm.continuous,
      fun y => Iff.rfl⟩
  obtain ⟨u, hu, huD⟩ : ∃ u : (Fin 2 → ℝ) → ℝ, ContDiff ℝ 2 u ∧
      ∀ y ∈ D, u y = v ((EuclideanSpace.equiv (Fin 2) ℝ).symm y) :=
    ⟨fun y => w ((EuclideanSpace.equiv (Fin 2) ℝ).symm y),
      hw.comp (EuclideanSpace.equiv (Fin 2) ℝ).symm.contDiff,
      fun y hy => hwv _ ((hDmem y).1 hy)⟩
  have hDU : ∀ y ∈ D, (EuclideanSpace.equiv (Fin 2) ℝ).symm y ∈ U :=
    fun y hy => hballU ((hDmem y).1 hy)
  have hus : ∀ y ∈ D, |u y| < s₁ := fun y hy => by
    rw [huD y hy]; exact hvs _ (hDU y hy)
  
  obtain ⟨Λ, O, hO, hΛ, hell, hmem, hrel⟩ :=
    pcr_cmc_vol_lagrangian U hU s₁ G hGs hGsymm hGpd a
  have huO : ∀ y ∈ D, (y, u y, smthGrad u y) ∈ O := fun y hy =>
    hmem (y, u y, smthGrad u y) (hus y hy) (hDU y hy)
  
  have hstrong : ∀ y ∈ D, smthELop Λ u y = 0 := by
    intro y hy
    have hev : ∀ᶠ y' in 𝓝 y, u y' = v ((EuclideanSpace.equiv (Fin 2) ℝ).symm y') :=
      Filter.eventually_of_mem (hD.mem_nhds hy) huD
    rw [hrel u hu y (huO y hy),
      pcr_cmc_strong_EL U hU s₁ G hGs hGsymm hGpd v hv2 u hu y (hDU y hy) (hus y hy) hev,
      hH _ (hDU y hy)]
    ring
  
  have hEL := pcr_cmc_weak_of_strong Λ O hO hΛ D hD u hu huO hstrong
  
  have hgrad : ContDiff ℝ 1 (smthGrad u) := by
    have h1 : ContDiff ℝ 1 (fderiv ℝ u) := hu.fderiv_right (by norm_num)
    rw [contDiff_pi]
    intro k
    show ContDiff ℝ 1 fun x => fderiv ℝ u x (Pi.single k 1)
    exact h1.clm_apply contDiff_const
  have hhol : ∀ x₁ ∈ D, ∃ (ρ : ℝ) (C α : NNReal), 0 < ρ ∧ 0 < α ∧ Metric.ball x₁ ρ ⊆ D ∧
      HolderOnWith C α (smthGrad u) (Metric.ball x₁ ρ) := by
    intro x₁ hx₁
    obtain ⟨K, t, ht, hK⟩ := (hgrad.contDiffAt (x := x₁)).exists_lipschitzOnWith
    obtain ⟨ρ, hρ, hρs⟩ := Metric.mem_nhds_iff.1 (Filter.inter_mem ht (hD.mem_nhds hx₁))
    exact ⟨ρ, K, 1, hρ, one_pos, hρs.trans Set.inter_subset_right,
      (hK.mono (hρs.trans Set.inter_subset_left)).holderOnWith⟩
  
  have hsmooth : ContDiffOn ℝ ∞ u D :=
    smth_weak_holder_smooth Λ O hO hΛ hell D hD u (hu.of_le (by norm_num)) huO hEL hhol
  
  refine ⟨Metric.ball x₀ (ε / 4), Metric.isOpen_ball, Metric.mem_ball_self hr, ?_⟩
  have h1 : ContDiffOn ℝ ∞ (fun z => u (EuclideanSpace.equiv (Fin 2) ℝ z))
      (Metric.ball x₀ (ε / 4)) :=
    hsmooth.comp (EuclideanSpace.equiv (Fin 2) ℝ).contDiff.contDiffOn
      (fun z hz => (hDmem _).2 (by rw [ContinuousLinearEquiv.symm_apply_apply]; exact hz))
  refine (h1.congr (fun z hz => ?_)).mono Set.inter_subset_right
  rw [huD _ ((hDmem _).2 (by rw [ContinuousLinearEquiv.symm_apply_apply]; exact hz)),
    ContinuousLinearEquiv.symm_apply_apply]

theorem patched_cmc_realization {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hSc : IsCompact S) (hSne : S.Nonempty) (hSpc : IsPreconnected S)
    (P : EigPatchedSurface X S) (s₁ : ℝ) (hs₁ : 0 < s₁)
    (G : Fin P.n → E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ j (a b : Fin 3), ContDiffOn ℝ ∞ (fun y => G j y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ P.W j})
    (hGsymm : ∀ j (y : E3) (a b : Fin 3), G j y a b = G j y b a)
    (hGpd : ∀ j, ∀ y : E3, |y 0| < s₁ → hpProj y ∈ P.W j → (G j y).PosDef)
    (hGc : ∀ j k, ∀ s ∈ Set.Ioo (-s₁) s₁, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      G j (hpLift s x) = pullbackMetric (G k)
        (fun y => hpLift (y 0) (P.proj k (P.param j (hpProj y)))) (hpLift s x))
    (hleaf : ∀ j, ∀ x ∈ P.W j,
      levelMeanCurvCoord (G j) (fun y => y 0) (hpLift 0 x) = 0 ∧
      HasDerivAt (fun s => levelMeanCurvCoord (G j) (fun y => y 0) (hpLift s x)) 0 0) :
    ∃ (B : BanachScale) (Hop : ∀ k, B.E k → B.F k) (r : ℝ) (e₁ : ∀ k, B.E k) (c : ∀ k, B.F k)
      (ℓ : B.E 0 →L[ℝ] ℝ) (ev : B.E 0 → X → ℝ) (C : ℝ),
      (∀ k, Function.Injective (B.ιE k)) ∧ (∀ v, B.ιE 0 v = v) ∧ 0 < r ∧
      (∀ k, ContDiffOn ℝ ∞ (Hop k) {v | ‖B.ιE k v‖ < r}) ∧
      (∀ k (v : B.E k), B.ιF k (Hop k v) = Hop 0 (B.ιE k v)) ∧
      (∀ k, B.ιE k (e₁ k) = e₁ 0) ∧ (∀ k, B.ιF k (c k) = c 0) ∧ ℓ (e₁ 0) = 1 ∧
      Hop 0 0 = 0 ∧ fderiv ℝ (Hop 0) 0 (e₁ 0) = 0 ∧
      (∀ k (v : B.E k), ‖B.ιE k v‖ < r → ∀ f : B.F k,
        ∃! p : B.E k × ℝ, ℓ (B.ιE k p.1) = 0 ∧ fderiv ℝ (Hop k) v p.1 - p.2 • c k = f) ∧
      (∀ k (v : B.E 0), ‖v‖ < r → ∀ a : ℝ, Hop 0 v = a • c 0 → ∃ w : B.E k, B.ιE k w = v) ∧
      (∀ (a : ℝ) (v w : B.E 0), ev (a • v + w) = fun q => a * ev v q + ev w q) ∧
      (∀ q ∈ S, ev (e₁ 0) q = 1) ∧ 0 ≤ C ∧ (∀ v, ∀ q ∈ S, |ev v q| ≤ C * ‖v‖) ∧
      (∀ v : B.E 0, ‖v‖ < r → (∀ q ∈ S, ev v q ∈ Set.Ioo (-s₁) s₁) ∧
        ∀ a : ℝ, Hop 0 v = a • c 0 → ∀ j, ∀ x ∈ P.W j,
          levelMeanCurvCoord (G j) (fun y => y 0 - ev v (P.param j (hpProj y)))
            (hpLift (ev v (P.param j x)) x) = a) ∧
      (∀ (k : ℕ) (I : Set ℝ), IsOpen I → ∀ γ : ℝ → B.E k, ContDiffOn ℝ ∞ γ I →
        ∀ j, ContDiffOn ℝ k (fun p : ℝ × E2 => ev (B.ιE k (γ p.1)) (P.param j p.2))
          (I ×ˢ P.W j)) :=
by
  classical
  
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := by
    intro j x hx
    have h : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at h
    exact h.2
  have hT : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j x) ∈ P.W k ∧ P.param k (P.proj k (P.param j x)) = P.param j x := by
    intro j k x hx
    have h1 : P.param j x ∈ P.O k ∩ S := ⟨hx.2, hparS j x hx.1⟩
    rw [← P.image_eq k] at h1
    obtain ⟨x'', hx'', hxe⟩ := h1
    rw [← hxe, P.proj_param k x'' hx'']
    exact ⟨hx'', rfl⟩
  have hSpar : ∀ q ∈ S, ∃ j, ∃ x ∈ P.W j, P.param j x = q := by
    intro q hq
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (P.cover hq)
    have h : q ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hj, hq⟩
    obtain ⟨x, hx, hxq⟩ := h
    exact ⟨j, x, hx, hxq⟩
  
  have hα0 : (0 : ℝ) < 1 / 2 := by norm_num
  have hα1 : (1 / 2 : ℝ) < 1 := by norm_num
  have hCD2 : ∀ (m : ℕ) (w : E2 → ℝ) (U : Set E2), IsOpen U → 2 ≤ m →
      pcrHolLoc (1 / 2) m w U → ∀ x ∈ U, ContDiffAt ℝ 2 w x := by
    intro m w U hU hm hw x hx
    have h1 := hw.1.contDiffAt (hU.mem_nhds hx)
    exact h1.of_le (by exact_mod_cast hm)
  
  have hbasic : ∀ (m : ℕ) (U : Set E2), IsOpen U →
      (∀ c : ℝ, pcrHolLoc (1 / 2) m (fun _ => c) U) ∧
      (∀ w₁ w₂ : E2 → ℝ, pcrHolLoc (1 / 2) m w₁ U → pcrHolLoc (1 / 2) m w₂ U →
        pcrHolLoc (1 / 2) m (fun x => w₁ x + w₂ x) U) ∧
      (∀ w₁ w₂ : E2 → ℝ, pcrHolLoc (1 / 2) m w₁ U → Set.EqOn w₁ w₂ U →
        pcrHolLoc (1 / 2) m w₂ U) := by
    intro m U hU
    refine ⟨fun c => ?_, fun w₁ w₂ h₁ h₂ => ?_, fun w₁ w₂ h₁ heq => ?_⟩
    · refine ⟨contDiffOn_const, fun x hx => ?_⟩
      obtain ⟨ρ, hρ, hball⟩ := Metric.isOpen_iff.1 hU x hx
      refine ⟨ρ, hρ, hball, 0, fun y _ z _ => ?_⟩
      have hc : iteratedFDeriv ℝ m (fun _ : E2 => c) y =
          iteratedFDeriv ℝ m (fun _ : E2 => c) z := by
        rcases Nat.eq_zero_or_pos m with h | h
        · subst h
          ext v
          simp [iteratedFDeriv_zero_apply]
        · rw [iteratedFDeriv_const_of_ne (Nat.pos_iff_ne_zero.mp h)]
          rfl
      rw [hc, sub_self, norm_zero, zero_mul]
    · refine ⟨h₁.1.add h₂.1, fun x hx => ?_⟩
      obtain ⟨ρ₁, hρ₁, hb₁, C₁, hC₁⟩ := h₁.2 x hx
      obtain ⟨ρ₂, hρ₂, hb₂, C₂, hC₂⟩ := h₂.2 x hx
      have hs1 : Metric.ball x (min ρ₁ ρ₂) ⊆ Metric.ball x ρ₁ :=
        Metric.ball_subset_ball (min_le_left _ _)
      have hs2 : Metric.ball x (min ρ₁ ρ₂) ⊆ Metric.ball x ρ₂ :=
        Metric.ball_subset_ball (min_le_right _ _)
      have hadd : ∀ u ∈ U, iteratedFDeriv ℝ m (fun x => w₁ x + w₂ x) u =
          iteratedFDeriv ℝ m w₁ u + iteratedFDeriv ℝ m w₂ u := fun u hu =>
        iteratedFDeriv_add_apply' (h₁.1.contDiffAt (hU.mem_nhds hu))
          (h₂.1.contDiffAt (hU.mem_nhds hu))
      refine ⟨min ρ₁ ρ₂, lt_min hρ₁ hρ₂, hs1.trans hb₁, C₁ + C₂, fun y hy z hz => ?_⟩
      rw [hadd y (hb₁ (hs1 hy)), hadd z (hb₁ (hs1 hz))]
      calc ‖iteratedFDeriv ℝ m w₁ y + iteratedFDeriv ℝ m w₂ y -
            (iteratedFDeriv ℝ m w₁ z + iteratedFDeriv ℝ m w₂ z)‖
          = ‖(iteratedFDeriv ℝ m w₁ y - iteratedFDeriv ℝ m w₁ z) +
            (iteratedFDeriv ℝ m w₂ y - iteratedFDeriv ℝ m w₂ z)‖ := by congr 1; abel
        _ ≤ ‖iteratedFDeriv ℝ m w₁ y - iteratedFDeriv ℝ m w₁ z‖ +
            ‖iteratedFDeriv ℝ m w₂ y - iteratedFDeriv ℝ m w₂ z‖ := norm_add_le _ _
        _ ≤ C₁ * dist y z ^ (1 / 2 : ℝ) + C₂ * dist y z ^ (1 / 2 : ℝ) :=
            add_le_add (hC₁ y (hs1 hy) z (hs1 hz)) (hC₂ y (hs2 hy) z (hs2 hz))
        _ = (C₁ + C₂) * dist y z ^ (1 / 2 : ℝ) := by ring
    · refine ⟨h₁.1.congr (fun x hx => (heq hx).symm), fun x hx => ?_⟩
      obtain ⟨ρ, hρ, hb, C, hC⟩ := h₁.2 x hx
      have hit : ∀ u ∈ U, iteratedFDeriv ℝ m w₂ u = iteratedFDeriv ℝ m w₁ u := by
        intro u hu
        have hev : w₂ =ᶠ[𝓝 u] w₁ :=
          Filter.eventually_of_mem (hU.mem_nhds hu) (fun y hy => (heq hy).symm)
        exact (hev.iteratedFDeriv ℝ m).eq_of_nhds
      refine ⟨ρ, hρ, hb, C, fun y hy z hz => ?_⟩
      rw [hit y (hb hy), hit z (hb hz)]
      exact hC y hy z hz
  
  choose Ψ hΨs hΨrep hΨlin using fun j =>
    pcr_lmc_symbol (P.W j) (P.W_open j) s₁ (G j) (hGs j) (hGsymm j) (hGpd j)
  have hcompat : ∀ u : X → ℝ, pcrClass P (1 / 2) 2 u → (∀ q ∈ S, |u q| < s₁) →
      ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        Ψ j (x, u (P.param j x), fderiv ℝ (fun x' => u (P.param j x')) x,
            fderiv ℝ (fderiv ℝ (fun x' => u (P.param j x'))) x) =
          Ψ k (P.proj k (P.param j x), u (P.param k (P.proj k (P.param j x))),
            fderiv ℝ (fun x' => u (P.param k x')) (P.proj k (P.param j x)),
            fderiv ℝ (fderiv ℝ (fun x' => u (P.param k x'))) (P.proj k (P.param j x))) := by
    intro u hu hus j k x hx
    obtain ⟨hτW, -⟩ := hT j k x hx
    have h1 : pcrH (G j) (fun x' => u (P.param j x')) x =
        Ψ j (x, u (P.param j x), fderiv ℝ (fun x' => u (P.param j x')) x,
          fderiv ℝ (fderiv ℝ (fun x' => u (P.param j x'))) x) :=
      hΨrep j _ x hx.1 (hus _ (hparS j x hx.1))
        (hCD2 2 _ _ (P.W_open j) le_rfl (hu.2 j) x hx.1)
    have h2 : pcrH (G k) (fun x' => u (P.param k x')) (P.proj k (P.param j x)) =
        Ψ k (P.proj k (P.param j x), u (P.param k (P.proj k (P.param j x))),
          fderiv ℝ (fun x' => u (P.param k x')) (P.proj k (P.param j x)),
          fderiv ℝ (fderiv ℝ (fun x' => u (P.param k x'))) (P.proj k (P.param j x))) :=
      hΨrep k _ _ hτW (hus _ (hparS k _ hτW))
        (hCD2 2 _ _ (P.W_open k) le_rfl (hu.2 k) _ hτW)
    have h3 := pcr_lmc_patch_compat S P s₁ G hGs hGsymm hGpd hGc u
      (fun j' => (hu.2 j').1.of_le (by norm_num)) hus j k x hx
    rw [← h1, ← h2, h3]
  
  obtain ⟨B, evE, evF, Hop, r₀, C, hr₀, hC0, hinjE, hinjF, hrangeE, hrangeF, hιEv, hιFv, hιE0,
      hCb, hHs, hHc, hform, htr⟩ :=
    pcr_holder_scale S hSc P (1 / 2) hα0 hα1 s₁ hs₁ Ψ hΨs hcompat
  have hclassE : ∀ k (v : B.E k), pcrClass P (1 / 2) (k + 2) (evE k v) :=
    fun k v => (hrangeE k _).1 ⟨v, rfl⟩
  have hclassF : ∀ k (g : B.F k), pcrClass P (1 / 2) k (evF k g) :=
    fun k g => (hrangeF k _).1 ⟨g, rfl⟩
  have hextF : ∀ g g' : B.F 0,
      (∀ j, ∀ x ∈ P.W j, evF 0 g (P.param j x) = evF 0 g' (P.param j x)) → g = g' := by
    intro g g' h
    apply hinjF 0
    funext q
    by_cases hq : q ∈ S
    · obtain ⟨j, x, hx, rfl⟩ := hSpar q hq
      exact h j x hx
    · rw [(hclassF 0 g).1 q hq, (hclassF 0 g').1 q hq]
  have hιFinj : ∀ k, Function.Injective (B.ιF k) := by
    intro k g g' h
    apply hinjF k
    rw [← hιFv k g, ← hιFv k g', h]
  have hιEinj : ∀ k, Function.Injective (B.ιE k) := by
    intro k v v' h
    apply hinjE k
    rw [← hιEv k v, ← hιEv k v', h]
  
  set one : X → ℝ := S.indicator (fun _ => (1 : ℝ)) with hone
  have hone_mem : ∀ q ∈ S, one q = 1 := fun q hq => Set.indicator_of_mem hq _
  have hone_class : ∀ m : ℕ, pcrClass P (1 / 2) m one := by
    intro m
    refine ⟨fun q hq => Set.indicator_of_notMem hq _, fun j => ?_⟩
    have hb := hbasic m (P.W j) (P.W_open j)
    exact hb.2.2 (fun _ => (1 : ℝ)) _ (hb.1 1) (fun x hx => (hone_mem _ (hparS j x hx)).symm)
  choose e₁ he₁def using fun k => (hrangeE k one).2 (hone_class (k + 2))
  choose c hcdef using fun k => (hrangeF k one).2 (hone_class k)
  have he₁ι : ∀ k, B.ιE k (e₁ k) = e₁ 0 := by
    intro k
    apply hinjE 0
    rw [hιEv, he₁def, he₁def]
  have hcι : ∀ k, B.ιF k (c k) = c 0 := by
    intro k
    apply hinjF 0
    rw [hιFv, hcdef, hcdef]
  have hc0 : ∀ j, ∀ x ∈ P.W j, evF 0 (c 0) (P.param j x) = 1 := by
    intro j x hx
    rw [hcdef 0]
    exact hone_mem _ (hparS j x hx)
  obtain ⟨q₀, hq₀⟩ := hSne
  let ℓL : B.E 0 →ₗ[ℝ] ℝ := (LinearMap.proj q₀).comp (evE 0)
  let ℓ : B.E 0 →L[ℝ] ℝ := ℓL.mkContinuous C (fun v => by
    show ‖evE 0 v q₀‖ ≤ C * ‖v‖
    rw [Real.norm_eq_abs]
    exact hCb v q₀ hq₀)
  have hℓv : ∀ v, ℓ v = evE 0 v q₀ := fun v => rfl
  
  have hval : ∀ v : B.E 0, ‖v‖ < r₀ → ∀ j, ∀ x ∈ P.W j,
      evF 0 (Hop 0 v) (P.param j x) = pcrH (G j) (fun x' => evE 0 v (P.param j x')) x := by
    intro v hv j x hx
    rw [((hform v hv).2 j x hx).1]
    exact (hΨrep j _ x hx ((hform v hv).1 _ (hparS j x hx))
      (hCD2 (0 + 2) _ _ (P.W_open j) (by norm_num) ((hclassE 0 v).2 j) x hx)).symm
  have hbridge : ∀ v : B.E 0, ‖v‖ < r₀ → ∀ (p : B.E 0) j, ∀ x ∈ P.W j,
      HasDerivAt (fun ε : ℝ => pcrH (G j)
          (fun x' => evE 0 v (P.param j x') + ε * evE 0 p (P.param j x')) x)
        (evF 0 (fderiv ℝ (Hop 0) v p) (P.param j x)) 0 := by
    intro v hv p j x hx
    rw [((hform v hv).2 j x hx).2 p]
    exact hΨlin j _ _ x hx ((hform v hv).1 _ (hparS j x hx))
      (hCD2 (0 + 2) _ _ (P.W_open j) (by norm_num) ((hclassE 0 v).2 j) x hx)
      (hCD2 (0 + 2) _ _ (P.W_open j) (by norm_num) ((hclassE 0 p).2 j) x hx)
  have hr₀0 : ‖(0 : B.E 0)‖ < r₀ := by rw [norm_zero]; exact hr₀
  
  have hH00 : Hop 0 0 = 0 := by
    apply hextF
    intro j x hx
    rw [hval 0 hr₀0 j x hx, map_zero (evF 0)]
    simp only [map_zero, Pi.zero_apply]
    unfold pcrH
    simp only [sub_zero]
    exact (hleaf j x hx).1
  
  obtain ⟨wd, A, hwd, hwdpos, hA, hApd, hcomp, hlin0⟩ :=
    pcr_lin0_divergence S P s₁ hs₁ G hGs hGsymm hGpd hGc hleaf
  have hTform : ∀ (p : B.E 0) j, ∀ x ∈ P.W j,
      evF 0 (fderiv ℝ (Hop 0) 0 p) (P.param j x) = -(wd j x)⁻¹ * ∑ a : Fin 2,
        pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
          pd2 b (fun x'' => evE 0 p (P.param j x'')) x') x := by
    intro p j x hx
    have h1 := hbridge 0 hr₀0 p j x hx
    simp only [map_zero, Pi.zero_apply, zero_add] at h1
    have h2 := hlin0 j (fun x'' => evE 0 p (P.param j x'')) x hx
      (hCD2 (0 + 2) _ _ (P.W_open j) (by norm_num) ((hclassE 0 p).2 j) x hx)
    exact h1.unique h2
  
  have hD0 : fderiv ℝ (Hop 0) 0 (e₁ 0) = 0 := by
    apply hextF
    intro j x hx
    rw [hTform (e₁ 0) j x hx, he₁def 0, map_zero (evF 0), Pi.zero_apply]
    have hpd1 : ∀ x' ∈ P.W j, ∀ b : Fin 2, pd2 b (fun x'' => one (P.param j x'')) x' = 0 := by
      intro x' hx' b
      have hev : (fun x'' => one (P.param j x'')) =ᶠ[𝓝 x'] fun _ => (1 : ℝ) :=
        Filter.eventually_of_mem ((P.W_open j).mem_nhds hx')
          (fun y hy => hone_mem _ (hparS j y hy))
      unfold pd2
      rw [hev.fderiv_eq]
      simp
    have hpd2 : ∀ a : Fin 2, pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
        pd2 b (fun x'' => one (P.param j x'')) x') x = 0 := by
      intro a
      have hev : (fun x' => ∑ b : Fin 2, A j x' a b *
          pd2 b (fun x'' => one (P.param j x'')) x') =ᶠ[𝓝 x] fun _ => (0 : ℝ) :=
        Filter.eventually_of_mem ((P.W_open j).mem_nhds hx)
          (fun y hy => by simp [hpd1 y hy])
      calc pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
            pd2 b (fun x'' => one (P.param j x'')) x') x
          = fderiv ℝ (fun x' => ∑ b : Fin 2, A j x' a b *
            pd2 b (fun x'' => one (P.param j x'')) x') x (e2 a) := rfl
        _ = 0 := by rw [hev.fderiv_eq]; simp
    rw [Finset.sum_eq_zero (fun a _ => hpd2 a), mul_zero]
  
  have hiso0 : ∀ f : B.F 0, ∃! p : B.E 0 × ℝ,
      ℓ p.1 = 0 ∧ fderiv ℝ (Hop 0) 0 p.1 - p.2 • c 0 = f := by
    intro f
    obtain ⟨⟨Pf, a⟩, ⟨hP2, hPq, hPeq⟩, huniq⟩ :=
      pcr_patched_div_iso S hSc hSpc P (1 / 2) hα0 hα1 wd A hwd hwdpos hA hApd hcomp q₀ hq₀
        (evF 0 f) (hclassF 0 f)
    have hPeq' : ∀ j, ∀ x ∈ P.W j,
        -(wd j x)⁻¹ * ∑ a : Fin 2,
            pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
              pd2 b (fun x'' => Pf (P.param j x'')) x') x - a = evF 0 f (P.param j x) := hPeq
    obtain ⟨ph, hph⟩ := (hrangeE 0 Pf).2 hP2
    have hsolve : ∀ (p : B.E 0) (b : ℝ) j, ∀ x ∈ P.W j,
        evF 0 (fderiv ℝ (Hop 0) 0 p - b • c 0) (P.param j x) =
          -(wd j x)⁻¹ * ∑ a : Fin 2,
            pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
              pd2 b (fun x'' => evE 0 p (P.param j x'')) x') x - b := by
      intro p b j x hx
      rw [map_sub, map_smul, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, hc0 j x hx, mul_one,
        hTform p j x hx]
    refine ⟨(ph, a), ⟨?_, ?_⟩, ?_⟩
    · show evE 0 ph q₀ = 0
      rw [hph]
      exact hPq
    · apply hextF
      intro j x hx
      show evF 0 (fderiv ℝ (Hop 0) 0 ph - a • c 0) (P.param j x) = evF 0 f (P.param j x)
      rw [hsolve ph a j x hx, hph]
      exact hPeq' j x hx
    · rintro ⟨p', a'⟩ ⟨hℓ', heq'⟩
      have hℓ'' : evE 0 p' q₀ = 0 := hℓ'
      have heq'' : fderiv ℝ (Hop 0) 0 p' - a' • c 0 = f := heq'
      have hcl : ∀ j, ∀ x ∈ P.W j,
          -(wd j x)⁻¹ * ∑ a : Fin 2,
              pd2 a (fun x' => ∑ b : Fin 2, A j x' a b *
                pd2 b (fun x'' => evE 0 p' (P.param j x'')) x') x - a' =
            evF 0 f (P.param j x) := by
        intro j x hx
        rw [← hsolve p' a' j x hx, heq'']
      have hsol := huniq (evE 0 p', a') ⟨hclassE 0 p', hℓ'', hcl⟩
      have h1 : evE 0 p' = evE 0 ph := by
        rw [hph]
        exact congrArg Prod.fst hsol
      have h2 : a' = a := congrArg Prod.snd hsol
      rw [hinjE 0 h1, h2]
  
  obtain ⟨δ, hδ, hδiso⟩ : ∃ δ : ℝ, 0 < δ ∧ ∀ T' : B.E 0 →L[ℝ] B.F 0,
      ‖T' - fderiv ℝ (Hop 0) 0‖ < δ →
        ∀ f : B.F 0, ∃! p : B.E 0 × ℝ, ℓ p.1 = 0 ∧ T' p.1 - p.2 • c 0 = f := by
    set K : Submodule ℝ (B.E 0) := LinearMap.ker (ℓ : B.E 0 →ₗ[ℝ] ℝ) with hK
    haveI : CompleteSpace K := (ℓ.isClosed_ker).completeSpace_coe
    let J : K × ℝ →L[ℝ] B.E 0 := K.subtypeL.comp (ContinuousLinearMap.fst ℝ K ℝ)
    let Bd : (B.E 0 →L[ℝ] B.F 0) → (K × ℝ →L[ℝ] B.F 0) := fun T' =>
      T'.comp J - (ContinuousLinearMap.snd ℝ K ℝ).smulRight (c 0)
    have hBd : ∀ T' (p : K × ℝ), Bd T' p = T' (p.1 : B.E 0) - p.2 • c 0 := by
      intro T' p
      simp [Bd, J]
    have hJ : ‖J‖ ≤ 1 := by
      refine ContinuousLinearMap.opNorm_le_bound _ zero_le_one (fun p => ?_)
      simp only [J, ContinuousLinearMap.comp_apply, ContinuousLinearMap.coe_fst',
        Submodule.coe_subtypeL', Submodule.coe_subtype, one_mul]
      exact (norm_fst_le p)
    have hinj : Function.Injective (Bd (fderiv ℝ (Hop 0) 0)) := by
      intro p q hpq
      obtain ⟨_, _, hu⟩ := hiso0 (Bd (fderiv ℝ (Hop 0) 0) p)
      have h1 := hu ((p.1 : B.E 0), p.2) ⟨p.1.2, (hBd _ p).symm⟩
      have h2 := hu ((q.1 : B.E 0), q.2) ⟨q.1.2, by rw [hpq, hBd]⟩
      have h3 : ((p.1 : B.E 0), p.2) = ((q.1 : B.E 0), q.2) := h1.trans h2.symm
      simp only [Prod.mk.injEq] at h3
      exact Prod.ext (Subtype.ext h3.1) h3.2
    have hsurj : Function.Surjective (Bd (fderiv ℝ (Hop 0) 0)) := by
      intro f
      obtain ⟨⟨p, a⟩, ⟨hp1, hp2⟩, _⟩ := hiso0 f
      exact ⟨(⟨p, hp1⟩, a), by rw [hBd]; exact hp2⟩
    let eB := ContinuousLinearEquiv.ofBijective (Bd (fderiv ℝ (Hop 0) 0))
      (LinearMap.ker_eq_bot.mpr hinj) (LinearMap.range_eq_top.mpr hsurj)
    have hopen := ContinuousLinearEquiv.isOpen (𝕜 := ℝ) (E := K × ℝ) (F := B.F 0)
    obtain ⟨ε, hε, hballε⟩ := Metric.isOpen_iff.1 hopen (Bd (fderiv ℝ (Hop 0) 0)) ⟨eB, rfl⟩
    refine ⟨ε, hε, fun T' hT' f => ?_⟩
    have hdist : dist (Bd T') (Bd (fderiv ℝ (Hop 0) 0)) < ε := by
      refine lt_of_eq_of_lt (dist_eq_norm (Bd T') (Bd (fderiv ℝ (Hop 0) 0))) ?_
      have : Bd T' - Bd (fderiv ℝ (Hop 0) 0) = (T' - fderiv ℝ (Hop 0) 0).comp J := by
        refine ContinuousLinearMap.ext (fun p => ?_)
        rw [ContinuousLinearMap.sub_apply, hBd, hBd]
        simp [J]
      rw [this]
      calc ‖(T' - fderiv ℝ (Hop 0) 0).comp J‖ ≤ ‖T' - fderiv ℝ (Hop 0) 0‖ * ‖J‖ :=
            ContinuousLinearMap.opNorm_comp_le _ _
        _ ≤ ‖T' - fderiv ℝ (Hop 0) 0‖ * 1 := mul_le_mul_of_nonneg_left hJ (norm_nonneg _)
        _ < ε := by rw [mul_one]; exact hT'
    obtain ⟨e', he'⟩ := hballε hdist
    have he'a : ∀ p, e' p = Bd T' p := fun p => by rw [← he']; rfl
    refine ⟨(((e'.symm f).1 : B.E 0), (e'.symm f).2), ⟨(e'.symm f).1.2, ?_⟩, ?_⟩
    · have := he'a (e'.symm f)
      rw [ContinuousLinearEquiv.apply_symm_apply, hBd] at this
      exact this.symm
    · rintro ⟨p, a⟩ ⟨hp1, hp2⟩
      have h1 : e' (⟨p, hp1⟩, a) = f := by rw [he'a, hBd]; exact hp2
      have h2 : (⟨p, hp1⟩, a) = e'.symm f := by
        rw [← h1, ContinuousLinearEquiv.symm_apply_apply]
      rw [← h2]
  have hball : IsOpen {v : B.E 0 | ‖v‖ < r₀} := isOpen_lt continuous_norm continuous_const
  have hHs0 : ContDiffOn ℝ ∞ (Hop 0) {v : B.E 0 | ‖v‖ < r₀} := by
    have h := hHs 0
    simpa only [hιE0] using h
  have hcont : ContinuousAt (fderiv ℝ (Hop 0)) 0 :=
    (hHs0.continuousOn_fderiv_of_isOpen hball (by simp)).continuousAt
      (hball.mem_nhds hr₀0)
  obtain ⟨r₁, hr₁, hr₁b⟩ := Metric.continuousAt_iff.1 hcont δ hδ
  have hδ' : ∀ v : B.E 0, ‖v‖ < min r₀ r₁ →
      ‖fderiv ℝ (Hop 0) v - fderiv ℝ (Hop 0) 0‖ < δ := by
    intro v hv
    have h := hr₁b (show dist v 0 < r₁ by
      rw [dist_zero_right]; exact lt_of_lt_of_le hv (min_le_right _ _))
    rwa [dist_eq_norm] at h
  
  have hDc : ∀ k (v : B.E k), ‖B.ιE k v‖ < r₀ → ∀ p : B.E k,
      B.ιF k (fderiv ℝ (Hop k) v p) = fderiv ℝ (Hop 0) (B.ιE k v) (B.ιE k p) := by
    intro k v hv p
    have hopen : IsOpen {w : B.E k | ‖B.ιE k w‖ < r₀} :=
      isOpen_lt ((B.ιE k).continuous.norm) continuous_const
    have hdk : DifferentiableAt ℝ (Hop k) v :=
      ((hHs k).differentiableOn (by simp)).differentiableAt (hopen.mem_nhds hv)
    have hd0 : DifferentiableAt ℝ (Hop 0) (B.ιE k v) :=
      (hHs0.differentiableOn (by simp)).differentiableAt (hball.mem_nhds hv)
    have h1 : (fun w => B.ιF k (Hop k w)) = fun w => Hop 0 (B.ιE k w) := funext (hHc k)
    have h3 : HasFDerivAt (fun w => B.ιF k (Hop k w)) ((B.ιF k).comp (fderiv ℝ (Hop k) v)) v :=
      (B.ιF k).hasFDerivAt.comp v hdk.hasFDerivAt
    have h4 : HasFDerivAt (fun w => B.ιF k (Hop k w))
        ((fderiv ℝ (Hop 0) (B.ιE k v)).comp (B.ιE k)) v := by
      rw [h1]
      exact hd0.hasFDerivAt.comp v (B.ιE k).hasFDerivAt
    have h5 := h3.unique h4
    have h6 := congrArg (fun L : B.E k →L[ℝ] B.F 0 => L p) h5
    simpa using h6
  
  refine ⟨B, Hop, min r₀ r₁, e₁, c, ℓ, ⇑(evE 0), C, hιEinj, hιE0, lt_min hr₀ hr₁, ?_, hHc,
    he₁ι, hcι, ?_, hH00, hD0, ?_, ?_, ?_, ?_, hC0, ?_, ?_, ?_⟩
  · 
    intro k
    exact (hHs k).mono (fun v hv => show ‖B.ιE k v‖ < r₀ from
      lt_of_lt_of_le hv (min_le_left _ _))
  · 
    rw [hℓv, he₁def]
    exact hone_mem q₀ hq₀
  · 
    intro k v hv f
    have hv0 : ‖B.ιE k v‖ < r₀ := lt_of_lt_of_le hv (min_le_left _ _)
    obtain ⟨⟨p₀, a⟩, ⟨hp₀ℓ, hp₀eq⟩, hp₀u⟩ := hδiso _ (hδ' _ hv) (B.ιF k f)
    have hp₀ℓ' : ℓ p₀ = 0 := hp₀ℓ
    have hp₀eq' : fderiv ℝ (Hop 0) (B.ιE k v) p₀ - a • c 0 = B.ιF k f := hp₀eq
    have hreg_p : pcrClass P (1 / 2) (k + 2) (evE 0 p₀) := by
      refine ⟨(hclassE 0 p₀).1, fun j => ?_⟩
      have hb := hbasic k (P.W j) (P.W_open j)
      have hderiv : ∀ x ∈ P.W j, deriv (fun ε : ℝ => pcrH (G j)
          (fun x' => evE k v (P.param j x') + ε * evE 0 p₀ (P.param j x')) x) 0 =
            evF k f (P.param j x) + a := by
        intro x hx
        have h1 := hbridge (B.ιE k v) hv0 p₀ j x hx
        rw [hιEv] at h1
        rw [h1.deriv]
        have h2 : fderiv ℝ (Hop 0) (B.ιE k v) p₀ = B.ιF k f + a • c 0 := by
          rw [← hp₀eq']
          abel
        rw [h2, map_add, map_smul, Pi.add_apply, Pi.smul_apply, smul_eq_mul, hιFv,
          hc0 j x hx, mul_one]
      have hL : pcrHolLoc (1 / 2) k (fun x => deriv (fun ε : ℝ => pcrH (G j)
          (fun x' => evE k v (P.param j x') + ε * evE 0 p₀ (P.param j x')) x) 0) (P.W j) :=
        hb.2.2 (fun x => evF k f (P.param j x) + a) _
          (hb.2.1 _ _ ((hclassF k f).2 j) (hb.1 a)) (fun x hx => (hderiv x hx).symm)
      exact pcr_lin_regularity (P.W j) (P.W_open j) s₁ (G j) (hGs j) (hGsymm j) (hGpd j)
        (1 / 2) hα0 hα1 k (fun x' => evE k v (P.param j x')) (fun x' => evE 0 p₀ (P.param j x'))
        ((hclassE k v).2 j)
        (fun x hx => by rw [← hιEv]; exact (hform _ hv0).1 _ (hparS j x hx))
        ((hclassE 0 p₀).2 j) hL
    obtain ⟨p, hp⟩ := (hrangeE k _).2 hreg_p
    have hιp : B.ιE k p = p₀ := hinjE 0 (by rw [hιEv, hp])
    refine ⟨(p, a), ⟨?_, ?_⟩, ?_⟩
    · show ℓ (B.ιE k p) = 0
      rw [hιp]
      exact hp₀ℓ'
    · apply hιFinj k
      show B.ιF k (fderiv ℝ (Hop k) v p - a • c k) = B.ιF k f
      rw [map_sub, map_smul, hDc k v hv0 p, hιp, hcι k]
      exact hp₀eq'
    · rintro ⟨p', a'⟩ ⟨hℓ', heq'⟩
      have hℓ'' : ℓ (B.ιE k p') = 0 := hℓ'
      have heq'' : fderiv ℝ (Hop k) v p' - a' • c k = f := heq'
      have h1 : B.ιF k (fderiv ℝ (Hop k) v p' - a' • c k) = B.ιF k f := by rw [heq'']
      rw [map_sub, map_smul, hDc k v hv0 p', hcι k] at h1
      have h2 := hp₀u (B.ιE k p', a') ⟨hℓ'', h1⟩
      have h3 : B.ιE k p' = B.ιE k p := by
        rw [hιp]
        exact congrArg Prod.fst h2
      have h4 : a' = a := congrArg Prod.snd h2
      rw [hιEinj k h3, h4]
  · 
    intro k v hv a ha
    have hv0 : ‖v‖ < r₀ := lt_of_lt_of_le hv (min_le_left _ _)
    have hcl : pcrClass P (1 / 2) (k + 2) (evE 0 v) := by
      refine ⟨(hclassE 0 v).1, fun j => ?_⟩
      have hH : ∀ x ∈ P.W j, pcrH (G j) (fun x' => evE 0 v (P.param j x')) x = a := by
        intro x hx
        have h1 := hval v hv0 j x hx
        rw [ha, map_smul, Pi.smul_apply, smul_eq_mul, hc0 j x hx, mul_one] at h1
        exact h1.symm
      exact pcr_cmc_regularity (P.W j) (P.W_open j) s₁ (G j) (hGs j) (hGsymm j) (hGpd j)
        (1 / 2) hα0 hα1 _ ((hclassE 0 v).2 j)
        (fun x hx => (hform v hv0).1 _ (hparS j x hx)) a hH (k + 2)
    obtain ⟨w, hw⟩ := (hrangeE k _).2 hcl
    exact ⟨w, hinjE 0 (by rw [hιEv, hw])⟩
  · 
    intro a v w
    funext q
    simp [map_add, map_smul]
  · 
    intro q hq
    rw [he₁def]
    exact hone_mem q hq
  · 
    intro v q hq
    exact hCb v q hq
  · 
    intro v hv
    have hv0 : ‖v‖ < r₀ := lt_of_lt_of_le hv (min_le_left _ _)
    refine ⟨fun q hq => abs_lt.1 ((hform v hv0).1 q hq), fun a ha j x hx => ?_⟩
    have h1 := hval v hv0 j x hx
    rw [ha, map_smul, Pi.smul_apply, smul_eq_mul, hc0 j x hx, mul_one] at h1
    exact h1.symm
  · 
    intro k I hI γ hγ j
    simp only [hιEv]
    exact htr k I hI γ hγ j

theorem slab_cmc_graph_family {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hSc : IsCompact S) (hSne : S.Nonempty) (hSpc : IsPreconnected S)
    (P : EigPatchedSurface X S) (s₁ : ℝ) (hs₁ : 0 < s₁)
    (G : Fin P.n → E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hGs : ∀ j (a b : Fin 3), ContDiffOn ℝ ∞ (fun y => G j y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ P.W j})
    (hGsymm : ∀ j (y : E3) (a b : Fin 3), G j y a b = G j y b a)
    (hGpd : ∀ j, ∀ y : E3, |y 0| < s₁ → hpProj y ∈ P.W j → (G j y).PosDef)
    (hGc : ∀ j k, ∀ s ∈ Set.Ioo (-s₁) s₁, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      G j (hpLift s x) = pullbackMetric (G k)
        (fun y => hpLift (y 0) (P.proj k (P.param j (hpProj y)))) (hpLift s x))
    (hleaf : ∀ j, ∀ x ∈ P.W j,
      levelMeanCurvCoord (G j) (fun y => y 0) (hpLift 0 x) = 0 ∧
      HasDerivAt (fun s => levelMeanCurvCoord (G j) (fun y => y 0) (hpLift s x)) 0 0) :
    ∃ (t₁ : ℝ) (u : ℝ → X → ℝ) (h : ℝ → ℝ), 0 < t₁ ∧
      (∀ j, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => u p.1 (P.param j p.2))
        (Set.Ioo (-t₁) t₁ ×ˢ P.W j)) ∧
      (∀ q ∈ S, u 0 q = 0) ∧
      (∀ t ∈ Set.Ioo (-t₁) t₁, ∀ q ∈ S, u t q ∈ Set.Ioo (-s₁) s₁) ∧
      (∀ t ∈ Set.Ioo (-t₁) t₁, ∀ j, ∀ x ∈ P.W j, 0 < deriv (fun τ => u τ (P.param j x)) t) ∧
      (∀ t ∈ Set.Ioo (-t₁) t₁, ∀ j, ∀ x ∈ P.W j,
        levelMeanCurvCoord (G j) (fun y => y 0 - u t (P.param j (hpProj y)))
          (hpLift (u t (P.param j x)) x) = h t) ∧
      h 0 = 0 ∧ ContDiffOn ℝ ∞ h (Set.Ioo (-t₁) t₁) :=
by
  obtain ⟨B, Hop, r, e₁, c, ℓ, ev, C, hιE, hιE0, hr, hHs, hHc, he₁, hc, hℓ, hH0, hD0, hiso,
    hreg, hlin, hev1, hC0, hCb, hslab, htrans⟩ :=
    patched_cmc_realization S hSc hSne hSpc P s₁ hs₁ G hGs hGsymm hGpd hGc hleaf
  have hεpos : (0 : ℝ) < 1 / (2 * (C + 1)) := by positivity
  obtain ⟨t₁, V, h, ht₁, hV0, hh0, hhs, hcurve, hlev⟩ :=
    ls_ift_scale B hιE hιE0 Hop r hr hHs hHc e₁ he₁ c hc ℓ hℓ hH0 hD0 hiso hreg _ hεpos
  
  have hadd : ∀ (v w : B.E 0) (q : X), ev (v + w) q = ev v q + ev w q := by
    intro v w q
    have h1 := congrFun (hlin 1 v w) q
    simpa using h1
  have hev0 : ∀ q : X, ev 0 q = 0 := by
    intro q
    have h1 := hadd 0 0 q
    simp only [add_zero] at h1
    linarith
  have hsmul : ∀ (a : ℝ) (v : B.E 0) (q : X), ev (a • v) q = a * ev v q := by
    intro a v q
    have h1 := congrFun (hlin a v 0) q
    simp only [add_zero] at h1
    rw [h1, hev0 q, add_zero]
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := by
    intro j x hx
    have hmem : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at hmem
    exact hmem.2
  
  obtain ⟨V0, hV0s, hV0e⟩ := hlev 0
  have hVeq : ∀ t ∈ Set.Ioo (-t₁) t₁, V0 t = V t := by
    intro t ht
    rw [← hV0e t ht, hιE0]
  refine ⟨t₁, fun t q => ev (t • e₁ 0 + V t) q, h, ht₁, ?_, ?_, ?_, ?_, ?_, hh0, hhs⟩
  · 
    intro j
    rw [contDiffOn_infty]
    intro n
    obtain ⟨Vk, hVks, hVk⟩ := hlev n
    have hγ : ContDiffOn ℝ ∞ (fun t : ℝ => t • e₁ n + Vk t) (Set.Ioo (-t₁) t₁) :=
      (contDiffOn_id.smul contDiffOn_const).add hVks
    have hT := htrans n (Set.Ioo (-t₁) t₁) isOpen_Ioo _ hγ j
    refine hT.congr ?_
    intro p hp
    show ev (p.1 • e₁ 0 + V p.1) (P.param j p.2) =
      ev (B.ιE n (p.1 • e₁ n + Vk p.1)) (P.param j p.2)
    rw [map_add, map_smul, he₁, hVk p.1 hp.1]
  · 
    intro q _
    show ev ((0 : ℝ) • e₁ 0 + V 0) q = 0
    rw [hV0, zero_smul, add_zero, hev0]
  · 
    intro t ht q hq
    exact (hslab _ (hcurve t ht).1).1 q hq
  · 
    intro t ht j x hx
    have hq : P.param j x ∈ S := hparS j x hx
    set q := P.param j x with hqdef
    let lamL : B.E 0 →ₗ[ℝ] ℝ :=
      { toFun := fun v => ev v q
        map_add' := fun v w => hadd v w q
        map_smul' := fun a v => by simp [hsmul a v q] }
    let lam : B.E 0 →L[ℝ] ℝ := lamL.mkContinuous C (fun v => by
      show ‖ev v q‖ ≤ C * ‖v‖
      rw [Real.norm_eq_abs]
      exact hCb v q hq)
    have hlam : ∀ v, lam v = ev v q := fun v => rfl
    have hIoo : Set.Ioo (-t₁) t₁ ∈ 𝓝 t := Ioo_mem_nhds ht.1 ht.2
    have hV0d : DifferentiableAt ℝ V0 t :=
      (hV0s.differentiableOn (by simp)).differentiableAt hIoo
    have hVev : V0 =ᶠ[𝓝 t] V := Filter.eventually_of_mem hIoo hVeq
    have hVd : DifferentiableAt ℝ V t := hV0d.congr_of_eventuallyEq hVev.symm
    have hinner : HasDerivAt (fun τ : ℝ => τ • e₁ 0 + V τ) ((1 : ℝ) • e₁ 0 + deriv V t) t :=
      ((hasDerivAt_id t).smul_const (e₁ 0)).add hVd.hasDerivAt
    have hcomp : HasDerivAt (fun τ : ℝ => ev (τ • e₁ 0 + V τ) q)
        (lam ((1 : ℝ) • e₁ 0 + deriv V t)) t :=
      lam.hasFDerivAt.comp_hasDerivAt t hinner
    show 0 < deriv (fun τ : ℝ => ev (τ • e₁ 0 + V τ) q) t
    rw [hcomp.deriv, hlam, hadd, one_smul, hev1 q hq]
    have hb : |ev (deriv V t) q| ≤ C * ‖deriv V t‖ := hCb _ q hq
    have hd : ‖deriv V t‖ < 1 / (2 * (C + 1)) := (hcurve t ht).2.2
    have h1 : C * ‖deriv V t‖ ≤ C * (1 / (2 * (C + 1))) :=
      mul_le_mul_of_nonneg_left hd.le hC0
    have h2 : C * (1 / (2 * (C + 1))) < 1 := by
      rw [mul_one_div, div_lt_one (by positivity)]
      linarith
    have h3 := neg_abs_le (ev (deriv V t) q)
    linarith
  · 
    intro t ht j x hx
    exact (hslab _ (hcurve t ht).1).2 (h t) (hcurve t ht).2.1 j x hx

theorem lfc_u_strictMono {X : Type*} [TopologicalSpace X] (S : Set X) (P : EigPatchedSurface X S)
    (u : ℝ → X → ℝ) (t₁ s₁ : ℝ)
    (hu0 : ∀ ℓ ∈ S, u 0 ℓ = 0)
    (hub : ∀ t ∈ Set.Ioo (-t₁) t₁, ∀ ℓ ∈ S, u t ℓ ∈ Set.Ioo (-s₁) s₁)
    (hud : ∀ t ∈ Set.Ioo (-t₁) t₁, ∀ j, ∀ x ∈ P.W j,
      0 < deriv (fun τ => u τ (P.param j x)) t)
    (ℓ : X) (hℓ : ℓ ∈ S) :
    StrictMonoOn (fun τ => u τ ℓ) (Set.Ioo (-t₁) t₁) ∧
    ContinuousOn (fun τ => u τ ℓ) (Set.Ioo (-t₁) t₁) ∧
    (∀ t ∈ Set.Ioo 0 t₁, u t ℓ ∈ Set.Ioo 0 s₁) ∧
    (∀ t' ∈ Set.Ioo 0 t₁, ∀ s ∈ Set.Ioo 0 (u t' ℓ), ∃ t ∈ Set.Ioo 0 t', u t ℓ = s) :=
by
  obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (P.cover hℓ)
  have hmem : ℓ ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hj, hℓ⟩
  obtain ⟨x, hx, hxℓ⟩ := hmem
  subst hxℓ
  have hpos : ∀ t ∈ Set.Ioo (-t₁) t₁, 0 < deriv (fun τ => u τ (P.param j x)) t :=
    fun t ht => hud t ht j x hx
  have hcont : ContinuousOn (fun τ => u τ (P.param j x)) (Set.Ioo (-t₁) t₁) := by
    intro t ht
    exact (differentiableAt_of_deriv_ne_zero (ne_of_gt (hpos t ht))).continuousAt.continuousWithinAt
  have hmono : StrictMonoOn (fun τ => u τ (P.param j x)) (Set.Ioo (-t₁) t₁) := by
    apply strictMonoOn_of_deriv_pos (convex_Ioo (-t₁) t₁) hcont
    rw [interior_Ioo]
    exact hpos
  have h0 : u 0 (P.param j x) = 0 := hu0 _ hℓ
  refine ⟨hmono, hcont, ?_, ?_⟩
  · intro t ht
    have h0I : (0 : ℝ) ∈ Set.Ioo (-t₁) t₁ := ⟨by linarith [ht.1, ht.2], by linarith [ht.1, ht.2]⟩
    have htI : t ∈ Set.Ioo (-t₁) t₁ := ⟨by linarith [ht.1, ht.2], ht.2⟩
    have hlt : u 0 (P.param j x) < u t (P.param j x) := hmono h0I htI ht.1
    refine ⟨by linarith, (hub t htI _ hℓ).2⟩
  · intro t' ht' s hs
    have hsub : Set.Icc 0 t' ⊆ Set.Ioo (-t₁) t₁ :=
      Set.Icc_subset_Ioo (by linarith [ht'.1, ht'.2]) ht'.2
    have hivt := intermediate_value_Ioo (le_of_lt ht'.1) (hcont.mono hsub)
    have hs' : s ∈ Set.Ioo ((fun τ => u τ (P.param j x)) 0) ((fun τ => u τ (P.param j x)) t') := by
      simp only [h0]
      exact hs
    obtain ⟨t, ht, hts⟩ := hivt hs'
    exact ⟨t, ht, hts⟩

theorem lfc_joint_continuousOn [IsManifold 𝓘(ℝ, E3) ∞ M] (S : Set M) (P : EigPatchedSurface M S)
    (Φ : Fin P.n → PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (Ψ : ℝ → M → M) (s₁ : ℝ)
    (hΦ : ∀ j, ∀ s ∈ Set.Ioo (-s₁) s₁, ∀ x ∈ P.W j, hpLift s x ∈ (Φ j).source ∧
      Φ j (hpLift s x) = Ψ s (P.param j x))
    (u : ℝ → M → ℝ) (t₁ : ℝ)
    (hus : ∀ j, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => u p.1 (P.param j p.2))
      (Set.Ioo (-t₁) t₁ ×ˢ P.W j))
    (hub : ∀ t ∈ Set.Ioo (-t₁) t₁, ∀ ℓ ∈ S, u t ℓ ∈ Set.Ioo (-s₁) s₁) :
    ContinuousOn (fun p : ℝ × M => u p.1 p.2) (Set.Ioo (-t₁) t₁ ×ˢ S) ∧
    ContinuousOn (fun p : ℝ × M => Ψ (u p.1 p.2) p.2) (Set.Ioo (-t₁) t₁ ×ˢ S) :=
by
  
  have hpp : ∀ j, ∀ ℓ, ℓ ∈ P.O j → ℓ ∈ S → P.proj j ℓ ∈ P.W j ∧ P.param j (P.proj j ℓ) = ℓ := by
    intro j ℓ hO hS
    have h : ℓ ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hO, hS⟩
    obtain ⟨x, hx, rfl⟩ := h
    rw [P.proj_param j x hx]
    exact ⟨hx, rfl⟩
  
  have hL : Continuous (fun q : ℝ × E2 => hpLift q.1 q.2) := by
    unfold hpLift cylPt
    fun_prop
  generalize hHdef : hpLift = H at hL hΦ
  
  have hloc : ∀ j, ContinuousOn (fun p : ℝ × M => u p.1 p.2)
        ((Set.Ioo (-t₁) t₁ ×ˢ S) ∩ (Set.univ ×ˢ P.O j)) ∧
      ContinuousOn (fun p : ℝ × M => Ψ (u p.1 p.2) p.2)
        ((Set.Ioo (-t₁) t₁ ×ˢ S) ∩ (Set.univ ×ˢ P.O j)) := by
    intro j
    set A := (Set.Ioo (-t₁) t₁ ×ˢ S) ∩ (Set.univ ×ˢ P.O j) with hA
    have hmaps2 : Set.MapsTo (Prod.snd : ℝ × M → M) A (P.O j) := fun p hp => hp.2.2
    have hpc : ContinuousOn (fun p : ℝ × M => P.proj j p.2) A :=
      (P.proj_cont j).comp continuousOn_snd hmaps2
    have hκc : ContinuousOn (fun p : ℝ × M => (p.1, P.proj j p.2)) A :=
      continuousOn_fst.prodMk hpc
    have hκm : Set.MapsTo (fun p : ℝ × M => (p.1, P.proj j p.2)) A
        (Set.Ioo (-t₁) t₁ ×ˢ P.W j) :=
      fun p hp => ⟨hp.1.1, (hpp j p.2 hp.2.2 hp.1.2).1⟩
    have hC1 : ContinuousOn (fun p : ℝ × M => u p.1 p.2) A := by
      refine ((hus j).continuousOn.comp hκc hκm).congr ?_
      intro p hp
      simp only [Function.comp]
      rw [(hpp j p.2 hp.2.2 hp.1.2).2]
    refine ⟨hC1, ?_⟩
    have hin : ContinuousOn (fun p : ℝ × M => (u p.1 p.2, P.proj j p.2)) A :=
      hC1.prodMk hpc
    have hlc' : ContinuousOn ((fun q : ℝ × E2 => H q.1 q.2) ∘
        (fun p : ℝ × M => (u p.1 p.2, P.proj j p.2))) A :=
      Continuous.comp_continuousOn hL hin
    have hlc : ContinuousOn (fun p : ℝ × M => H (u p.1 p.2) (P.proj j p.2)) A := hlc'
    have hlm : Set.MapsTo (fun p : ℝ × M => H (u p.1 p.2) (P.proj j p.2)) A
        (Φ j).source := by
      intro p hp
      exact (hΦ j _ (hub p.1 hp.1.1 p.2 hp.1.2) _ (hpp j p.2 hp.2.2 hp.1.2).1).1
    have hΦc : ContinuousOn (Φ j : E3 → M) (Φ j).source := (Φ j).contMDiffOn_toFun.continuousOn
    refine (hΦc.comp hlc hlm).congr ?_
    intro p hp
    simp only [Function.comp]
    rw [(hΦ j _ (hub p.1 hp.1.1 p.2 hp.1.2) _ (hpp j p.2 hp.2.2 hp.1.2).1).2,
      (hpp j p.2 hp.2.2 hp.1.2).2]
  have hcov : ∀ p ∈ Set.Ioo (-t₁) t₁ ×ˢ S, ∃ j, p.2 ∈ P.O j := by
    intro p hp
    exact Set.mem_iUnion.1 (P.cover hp.2)
  refine ⟨continuousOn_of_locally_continuousOn fun p hp => ?_,
    continuousOn_of_locally_continuousOn fun p hp => ?_⟩
  · obtain ⟨j, hj⟩ := hcov p hp
    exact ⟨Set.univ ×ˢ P.O j, isOpen_univ.prod (P.O_open j), ⟨Set.mem_univ _, hj⟩, (hloc j).1⟩
  · obtain ⟨j, hj⟩ := hcov p hp
    exact ⟨Set.univ ×ˢ P.O j, isOpen_univ.prod (P.O_open j), ⟨Set.mem_univ _, hj⟩, (hloc j).2⟩

theorem lfc_graph_local_inverse (W : Set E2) (hW : IsOpen W) (a b : ℝ) (v : ℝ × E2 → ℝ)
    (hv : ContDiffOn ℝ ∞ v (Set.Ioo a b ×ˢ W))
    (hd : ∀ p ∈ Set.Ioo a b ×ˢ W, 0 < deriv (fun τ => v (τ, p.2)) p.1)
    (p₀ : ℝ × E2) (hp₀ : p₀ ∈ Set.Ioo a b ×ˢ W) :
    ∃ (A : Set (ℝ × E2)) (B : Set E3) (T : E3 → ℝ),
      p₀ ∈ A ∧ A ⊆ Set.Ioo a b ×ˢ W ∧ IsOpen B ∧
      (∀ y ∈ B, ∃ p ∈ A, y = hpLift (v p) p.2) ∧
      (∀ p ∈ A, hpLift (v p) p.2 ∈ B ∧ T (hpLift (v p) p.2) = p.1) ∧
      ContDiffOn ℝ ∞ T B ∧
      0 < partialDeriv 0 T (hpLift (v p₀) p₀.2) :=
by
  classical
  set D : Set (ℝ × E2) := Set.Ioo a b ×ˢ W with hDdef
  have hDo : IsOpen D := isOpen_Ioo.prod hW
  
  have hL0 : ∀ (s : ℝ) (x : E2), (hpLift s x) 0 = s := by
    intro s x
    simp [hpLift, cylPt, e, EuclideanSpace.single_apply]
  have hPL : ∀ (s : ℝ) (x : E2), hpProj (hpLift s x) = x := by
    intro s x
    ext i
    fin_cases i <;> simp [hpLift, hpProj, cylPt, e, EuclideanSpace.single_apply]
  have hLP : ∀ z : E3, hpLift (z 0) (hpProj z) = z := by
    intro z
    ext i
    fin_cases i <;> simp [hpLift, hpProj, cylPt, e, EuclideanSpace.single_apply]
  have hPadd : ∀ z w : E3, hpProj (z + w) = hpProj z + hpProj w := by
    intro z w
    ext i
    fin_cases i <;> simp [hpProj]
  have hPsmul : ∀ (c : ℝ) (z : E3), hpProj (c • z) = c • hpProj z := by
    intro c z
    ext i
    fin_cases i <;> simp [hpProj]
  let πₗ : E3 →ₗ[ℝ] ℝ × E2 :=
    { toFun := fun z => (z 0, hpProj z)
      map_add' := fun z w => by simp [hPadd]
      map_smul' := fun c z => by simp [hPsmul] }
  let πL : E3 →L[ℝ] ℝ × E2 := LinearMap.toContinuousLinearMap πₗ
  have hπ : ∀ z, πL z = (z 0, hpProj z) := fun z => rfl
  have hπe : πL (e 0) = (1, 0) := by
    rw [hπ]
    refine Prod.ext ?_ ?_
    · simp [e]
    · ext i
      fin_cases i <;> simp [hpProj, e, EuclideanSpace.single_apply]
  
  let F : ℝ × E2 → ℝ × E2 := fun q => (v q, q.2)
  have hF : ContDiffOn ℝ ∞ F D := hv.prodMk contDiffOn_snd
  have hcd : ∀ q ∈ D, ContDiffAt ℝ ∞ F q := fun q hq => hF.contDiffAt (hDo.mem_nhds hq)
  have hdiff : ∀ p ∈ D, DifferentiableAt ℝ v p := fun p hp =>
    (hv.contDiffAt (hDo.mem_nhds hp)).differentiableAt (by simp)
  
  have hE : ∀ p ∈ D, ∃ E : (ℝ × E2) ≃L[ℝ] (ℝ × E2),
      HasFDerivAt F (E : (ℝ × E2) →L[ℝ] (ℝ × E2)) p ∧ 0 < (E.symm (1, 0)).1 := by
    intro p hp
    set Λ := fderiv ℝ v p with hΛ
    set α := Λ ((1 : ℝ), (0 : E2)) with hα
    have hderiv : HasDerivAt (fun τ => v (τ, p.2)) α p.1 := by
      have h1 : HasDerivAt (fun τ : ℝ => (τ, p.2)) ((1 : ℝ), (0 : E2)) p.1 :=
        (hasDerivAt_id p.1).prodMk (hasDerivAt_const p.1 p.2)
      have h2 : HasFDerivAt v Λ (p.1, p.2) := by
        rw [Prod.mk.eta]; exact (hdiff p hp).hasFDerivAt
      exact h2.comp_hasDerivAt p.1 h1
    have hαpos : 0 < α := by rw [← hderiv.deriv]; exact hd p hp
    have hα0 : α ≠ 0 := hαpos.ne'
    have hlin : ∀ (c : ℝ) (ξ : E2), Λ (c, ξ) = c * α + Λ (0, ξ) := by
      intro c ξ
      have : ((c, ξ) : ℝ × E2) = c • ((1 : ℝ), (0 : E2)) + ((0 : ℝ), ξ) := by
        refine Prod.ext ?_ ?_ <;> simp
      rw [this, map_add, map_smul, smul_eq_mul]
    let Φ' : (ℝ × E2) →L[ℝ] (ℝ × E2) := Λ.prod (ContinuousLinearMap.snd ℝ ℝ E2)
    let K : (ℝ × E2) →L[ℝ] (ℝ × E2) :=
      (α⁻¹ • (ContinuousLinearMap.fst ℝ ℝ E2 -
        Λ.comp ((ContinuousLinearMap.inr ℝ ℝ E2).comp (ContinuousLinearMap.snd ℝ ℝ E2)))).prod
        (ContinuousLinearMap.snd ℝ ℝ E2)
    have hΦ'app : ∀ q : ℝ × E2, Φ' q = (Λ q, q.2) := fun q => rfl
    have hKapp : ∀ q : ℝ × E2, K q = (α⁻¹ * (q.1 - Λ (0, q.2)), q.2) := fun q => rfl
    have hleft : Function.LeftInverse K Φ' := by
      rintro ⟨c, ξ⟩
      rw [hΦ'app, hKapp]
      refine Prod.ext ?_ rfl
      show α⁻¹ * (Λ (c, ξ) - Λ (0, ξ)) = c
      rw [hlin c ξ]
      calc α⁻¹ * (c * α + Λ (0, ξ) - Λ (0, ξ)) = c * (α⁻¹ * α) := by ring
        _ = c := by rw [inv_mul_cancel₀ hα0, mul_one]
    have hright : Function.RightInverse K Φ' := by
      rintro ⟨s, ξ⟩
      rw [hKapp, hΦ'app]
      refine Prod.ext ?_ rfl
      show Λ (α⁻¹ * (s - Λ (0, ξ)), ξ) = s
      rw [hlin]
      calc α⁻¹ * (s - Λ (0, ξ)) * α + Λ (0, ξ) = (s - Λ (0, ξ)) * (α⁻¹ * α) + Λ (0, ξ) := by
            ring
        _ = s := by rw [inv_mul_cancel₀ hα0]; ring
    refine ⟨ContinuousLinearEquiv.equivOfInverse Φ' K hleft hright, ?_, ?_⟩
    · have hcoe : ((ContinuousLinearEquiv.equivOfInverse Φ' K hleft hright :
          (ℝ × E2) ≃L[ℝ] (ℝ × E2)) : (ℝ × E2) →L[ℝ] (ℝ × E2)) = Φ' := by
        exact ContinuousLinearMap.ext fun q => rfl
      rw [hcoe]
      exact (hdiff p hp).hasFDerivAt.prodMk hasFDerivAt_snd
    · rw [ContinuousLinearEquiv.symm_equivOfInverse,
        ContinuousLinearEquiv.equivOfInverse_apply, hKapp]
      have h00 : Λ ((0 : ℝ), (0 : E2)) = 0 := by
        rw [Prod.mk_zero_zero]; exact map_zero Λ
      show 0 < α⁻¹ * ((1 : ℝ) - Λ ((0 : ℝ), (0 : E2)))
      rw [h00, sub_zero, mul_one]
      exact inv_pos.mpr hαpos
  
  obtain ⟨E₀, hE₀, hpos₀⟩ := hE p₀ hp₀
  obtain ⟨h, hhF, hp₀s, hsD, hsm, hder⟩ : ∃ h : OpenPartialHomeomorph (ℝ × E2) (ℝ × E2),
      ((⇑h : ℝ × E2 → ℝ × E2) = F) ∧ p₀ ∈ h.source ∧ h.source ⊆ D ∧
      ContDiffOn ℝ ∞ (⇑h.symm) h.target ∧
      HasFDerivAt (⇑h.symm) (E₀.symm : (ℝ × E2) →L[ℝ] (ℝ × E2)) (F p₀) := by
    set h₀ := ContDiffAt.toOpenPartialHomeomorph F (hcd p₀ hp₀) hE₀ (by simp) with hh₀def
    have hh₀ : (⇑h₀ : ℝ × E2 → ℝ × E2) = F :=
      ContDiffAt.toOpenPartialHomeomorph_coe _ _ _
    have hp₀h₀ : p₀ ∈ h₀.source := ContDiffAt.mem_toOpenPartialHomeomorph_source _ _ _
    have hsrc : (h₀.restr D).source = h₀.source ∩ D := by
      rw [OpenPartialHomeomorph.restr_source, hDo.interior_eq]
    have hfun : (⇑(h₀.restr D) : ℝ × E2 → ℝ × E2) = F := by
      rw [OpenPartialHomeomorph.restr_apply, hh₀]
    have hp₀s : p₀ ∈ (h₀.restr D).source := by rw [hsrc]; exact ⟨hp₀h₀, hp₀⟩
    refine ⟨h₀.restr D, hfun, hp₀s, ?_, ?_, ?_⟩
    · rw [hsrc]; exact Set.inter_subset_right
    · intro q hq
      have ha : (h₀.restr D).symm q ∈ (h₀.restr D).source := (h₀.restr D).map_target hq
      have haD : (h₀.restr D).symm q ∈ D := by rw [hsrc] at ha; exact ha.2
      obtain ⟨E', hE', -⟩ := hE _ haD
      have hC := hcd _ haD
      rw [← hfun] at hE' hC
      exact ((h₀.restr D).contDiffAt_symm hq hE' hC).contDiffWithinAt
    · have hmem : F p₀ ∈ (h₀.restr D).target := by
        rw [← hfun]; exact (h₀.restr D).map_source hp₀s
      have hinv : (h₀.restr D).symm (F p₀) = p₀ := by
        rw [← hfun]; exact (h₀.restr D).left_inv hp₀s
      have hE₀' : HasFDerivAt (⇑(h₀.restr D)) (E₀ : (ℝ × E2) →L[ℝ] (ℝ × E2))
          ((h₀.restr D).symm (F p₀)) := by
        rw [hinv, hfun]; exact hE₀
      exact (h₀.restr D).hasFDerivAt_symm hmem hE₀'
  
  have KI : ∀ p : ℝ × E2, πL (hpLift (v p) p.2) = F p := by
    intro p
    rw [hπ, hL0, hPL]
  refine ⟨h.source, πL ⁻¹' h.target, fun z => (h.symm (πL z)).1, hp₀s, hsD,
    h.open_target.preimage πL.continuous, ?_, ?_, ?_, ?_⟩
  · intro y hy
    refine ⟨h.symm (πL y), h.map_target hy, ?_⟩
    have h1 : F (h.symm (πL y)) = πL y := by rw [← hhF]; exact h.right_inv hy
    rw [hπ] at h1
    have h2 : v (h.symm (πL y)) = y 0 ∧ (h.symm (πL y)).2 = hpProj y := Prod.ext_iff.mp h1
    rw [h2.1, h2.2, hLP]
  · intro p hp
    have hmem : F p ∈ h.target := by rw [← hhF]; exact h.map_source hp
    refine ⟨?_, ?_⟩
    · show πL (hpLift (v p) p.2) ∈ h.target
      rw [KI]; exact hmem
    · show (h.symm (πL (hpLift (v p) p.2))).1 = p.1
      rw [KI, ← hhF, h.left_inv hp]
  · intro z hz
    have h1 : ContDiffAt ℝ ∞ (⇑h.symm) (πL z) :=
      (hsm _ hz).contDiffAt (h.open_target.mem_nhds hz)
    exact (contDiffAt_fst.comp z (h1.comp z πL.contDiff.contDiffAt)).contDiffWithinAt
  · have h1 : HasFDerivAt (⇑h.symm) (E₀.symm : (ℝ × E2) →L[ℝ] (ℝ × E2))
        (πL (hpLift (v p₀) p₀.2)) := by
      rw [KI]; exact hder
    have hT : HasFDerivAt (fun z : E3 => (h.symm (πL z)).1)
        ((ContinuousLinearMap.fst ℝ ℝ E2).comp
          ((E₀.symm : (ℝ × E2) →L[ℝ] (ℝ × E2)).comp πL)) (hpLift (v p₀) p₀.2) :=
      hasFDerivAt_fst.comp _ (h1.comp _ πL.hasFDerivAt)
    unfold partialDeriv
    rw [hT.fderiv]
    show 0 < (E₀.symm (πL (e 0))).1
    rw [hπe]
    exact hpos₀

theorem lfc_chart_transfer [IsManifold 𝓘(ℝ, E3) ∞ M]
    (Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (B : Set E3) (hB : IsOpen B)
    (hBs : B ⊆ Φ.source) (T : E3 → ℝ) (hT : ContDiffOn ℝ ∞ T B) (w : M → ℝ)
    (hw : ∀ y ∈ B, w (Φ y) = T y) :
    IsOpen (Φ '' B) ∧ ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (Φ '' B) ∧
    ∀ y ∈ B, partialDeriv 0 (fun y' => w (Φ y')) y = partialDeriv 0 T y ∧
      (partialDeriv 0 T y ≠ 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w (Φ y) ≠ 0) :=
by
  have hO : IsOpen (Φ '' B) := Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source hB hBs
  have hleft : ∀ y ∈ B, Φ.symm (Φ y) = y := fun y hy => Φ.toPartialEquiv.left_inv (hBs hy)
  have hT' : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ T B := contMDiffOn_iff_contDiffOn.mpr hT
  have hinv : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ.symm (Φ '' B) := by
    refine Φ.contMDiffOn_invFun.mono ?_
    rintro _ ⟨y, hy, rfl⟩
    exact Φ.toPartialEquiv.map_source (hBs hy)
  have hcomp : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (T ∘ Φ.symm) (Φ '' B) := by
    refine hT'.comp hinv ?_
    rintro _ ⟨y, hy, rfl⟩
    show Φ.symm (Φ y) ∈ B
    rw [hleft y hy]
    exact hy
  have hws : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (Φ '' B) := by
    refine hcomp.congr ?_
    rintro _ ⟨y, hy, rfl⟩
    show w (Φ y) = T (Φ.symm (Φ y))
    rw [hleft y hy, hw y hy]
  refine ⟨hO, hws, fun y hy => ?_⟩
  have heq : (fun y' => w (Φ y')) =ᶠ[𝓝 y] T := Filter.eventually_of_mem (hB.mem_nhds hy) hw
  have hC3 : partialDeriv 0 (fun y' => w (Φ y')) y = partialDeriv 0 T y := by
    unfold partialDeriv
    rw [Filter.EventuallyEq.fderiv_eq heq]
  refine ⟨hC3, fun hT0 h0 => hT0 ?_⟩
  have hwA : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w (Φ y) :=
    (hws.contMDiffAt (hO.mem_nhds ⟨y, hy, rfl⟩)).mdifferentiableAt (by simp)
  have hΦA : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ y :=
    (Φ.contMDiffOn_toFun.contMDiffAt (Φ.open_source.mem_nhds (hBs hy))).mdifferentiableAt
      (by simp)
  have h1 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (w ∘ Φ) y = 0 := by
    rw [mfderiv_comp y hwA hΦA, h0]
    exact ContinuousLinearMap.zero_comp _
  have h2 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (w ∘ Φ) y = fderiv ℝ T y := by
    have heq' : (w ∘ Φ) =ᶠ[𝓝 y] T := heq
    rw [Filter.EventuallyEq.mfderiv_eq heq', mfderiv_eq_fderiv]
  unfold partialDeriv
  rw [← h2, h1]
  rfl

theorem lfc_level_compact_continuous {X : Type*} [TopologicalSpace X] [T2Space X]
    (S D R F O' : Set X) (hSc : IsCompact S) (Ψ' : ℝ → X → X) (w : X → ℝ) (t₀ t₁ : ℝ)
    (ht₀ : 0 < t₀) (ht₀₁ : t₀ < t₁)
    (hcont : ContinuousOn (fun p : ℝ × X => Ψ' p.1 p.2) (Set.Ioo (-t₁) t₁ ×ˢ S))
    (hD : D = R ∪ F) (hRF : Disjoint R F)
    (hF0 : ∀ ℓ ∈ S, Ψ' 0 ℓ ∈ F) (hF0s : ∀ p ∈ F, ∃ ℓ ∈ S, Ψ' 0 ℓ = p)
    (hR : ∀ x ∈ R, w x ∈ Set.Ioo 0 t₁ ∧ ∃ ℓ ∈ S, x = Ψ' (w x) ℓ)
    (hRmem : ∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, Ψ' t ℓ ∈ R)
    (hwΨ : ∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, w (Ψ' t ℓ) = t)
    (hwF : ∀ x ∈ F, w x = 0)
    (hRo : IsOpen R) (hwR : ContinuousOn w R)
    (hO' : IsOpen O') (hFO' : F ⊆ O') (hO'R : ∀ x ∈ R ∩ O', w x < t₀) :
    IsCompact {x | x ∈ D ∧ w x ≤ t₀} ∧ ContinuousOn w D :=
by
  subst hD
  have hKc : ∀ c : ℝ, 0 ≤ c →
      IsCompact ((fun p : ℝ × X => Ψ' p.1 p.2) '' (Set.Icc c t₀ ×ˢ S)) := by
    intro c hc
    refine (isCompact_Icc.prod hSc).image_of_continuousOn (hcont.mono ?_)
    exact Set.prod_mono (Set.Icc_subset_Ioo (by linarith) ht₀₁) subset_rfl
  have hwnn : ∀ y ∈ R ∪ F, 0 ≤ w y := by
    intro y hy
    rcases hy with hy | hy
    · exact (hR y hy).1.1.le
    · exact (hwF y hy).ge
  refine ⟨?_, ?_⟩
  · have heq : {x | x ∈ R ∪ F ∧ w x ≤ t₀} =
        (fun p : ℝ × X => Ψ' p.1 p.2) '' (Set.Icc 0 t₀ ×ˢ S) := by
      ext x
      constructor
      · rintro ⟨hxD, hxw⟩
        rcases hxD with hx | hx
        · obtain ⟨hw, ℓ, hℓ, hxe⟩ := hR x hx
          exact ⟨(w x, ℓ), ⟨⟨hw.1.le, hxw⟩, hℓ⟩, hxe.symm⟩
        · obtain ⟨ℓ, hℓ, hxe⟩ := hF0s x hx
          exact ⟨(0, ℓ), ⟨⟨le_rfl, ht₀.le⟩, hℓ⟩, hxe⟩
      · rintro ⟨⟨t, ℓ⟩, ⟨⟨ht0, htt⟩, hℓ⟩, rfl⟩
        rcases eq_or_lt_of_le ht0 with h | h
        · subst h
          refine ⟨Or.inr (hF0 ℓ hℓ), ?_⟩
          show w (Ψ' 0 ℓ) ≤ t₀
          rw [hwF _ (hF0 ℓ hℓ)]
          exact ht₀.le
        · have ht : t ∈ Set.Ioo 0 t₁ := ⟨h, by linarith⟩
          refine ⟨Or.inl (hRmem t ht ℓ hℓ), ?_⟩
          show w (Ψ' t ℓ) ≤ t₀
          rw [hwΨ t ht ℓ hℓ]
          exact htt
    rw [heq]
    exact hKc 0 le_rfl
  · intro x hx
    rcases hx with hx | hx
    · exact (hwR.continuousAt (hRo.mem_nhds hx)).continuousWithinAt
    · have hw0 : w x = 0 := hwF x hx
      show Filter.Tendsto w (nhdsWithin x (R ∪ F)) (nhds (w x))
      rw [hw0]
      refine tendsto_order.2 ⟨fun a ha => ?_, fun b hb => ?_⟩
      · exact eventually_nhdsWithin_of_forall (fun y hy => lt_of_lt_of_le ha (hwnn y hy))
      · have hδpos : 0 < min b t₀ := lt_min hb ht₀
        have hδb : min b t₀ ≤ b := min_le_left _ _
        have hδt : min b t₀ ≤ t₀ := min_le_right _ _
        have hKcl : IsClosed ((fun p : ℝ × X => Ψ' p.1 p.2) '' (Set.Icc (min b t₀) t₀ ×ˢ S)) :=
          (hKc (min b t₀) hδpos.le).isClosed
        have hKR : (fun p : ℝ × X => Ψ' p.1 p.2) '' (Set.Icc (min b t₀) t₀ ×ˢ S) ⊆ R := by
          rintro _ ⟨⟨t, ℓ⟩, ⟨⟨h1, h2⟩, hℓ⟩, rfl⟩
          exact hRmem t ⟨by linarith, by linarith⟩ ℓ hℓ
        have hxK : x ∉ (fun p : ℝ × X => Ψ' p.1 p.2) '' (Set.Icc (min b t₀) t₀ ×ˢ S) :=
          fun h => Set.disjoint_left.1 hRF (hKR h) hx
        have hV : O' ∩ ((fun p : ℝ × X => Ψ' p.1 p.2) '' (Set.Icc (min b t₀) t₀ ×ˢ S))ᶜ
            ∈ nhds x := (hO'.inter hKcl.isOpen_compl).mem_nhds ⟨hFO' hx, hxK⟩
        filter_upwards [mem_nhdsWithin_of_mem_nhds hV, self_mem_nhdsWithin] with y hyV hyD
        rcases hyD with hyR | hyF
        · have hlt : w y < t₀ := hO'R y ⟨hyR, hyV.1⟩
          by_contra hcon
          push_neg at hcon
          obtain ⟨_, ℓ, hℓ, hye⟩ := hR y hyR
          exact hyV.2 ⟨(w y, ℓ), ⟨⟨le_trans hδb hcon, hlt.le⟩, hℓ⟩, hye.symm⟩
        · rw [hwF y hyF]
          exact hb

theorem leaf_foliation_coordinate [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (U N : Set M) (σ : M → ℝ) (x₀ : M) (hUo : IsOpen U) (hNo : IsOpen N)
    (hFN : frontier U ⊆ N) (hx₀ : x₀ ∈ U ∩ N)
    (hσ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N ∩ σ ⁻¹' Set.Iio δ)
    (S : Set M) (hSc : IsCompact S) (hSne : S.Nonempty) (P : EigPatchedSurface M S)
    (Φ : Fin P.n → PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (Ψ : ℝ → M → M) (s₁ : ℝ)
    (hs₁ : 0 < s₁)
    (hΦ : ∀ j, ∀ s ∈ Set.Ioo (-s₁) s₁, ∀ x ∈ P.W j, hpLift s x ∈ (Φ j).source ∧
      Φ j (hpLift s x) = Ψ s (P.param j x))
    (hΨ0 : ∀ ℓ ∈ S, Ψ 0 ℓ ∈ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U)
    (hΨ0s : ∀ p ∈ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U, ∃ ℓ ∈ S, Ψ 0 ℓ = p)
    (hΨC : ∀ s ∈ Set.Ioo 0 s₁, ∀ ℓ ∈ S, Ψ s ℓ ∈ connectedComponentIn (U ∩ N) x₀)
    (hΨinj : ∀ s ∈ Set.Ioo 0 s₁, ∀ s' ∈ Set.Ioo 0 s₁, ∀ ℓ ∈ S, ∀ ℓ' ∈ S,
      Ψ s ℓ = Ψ s' ℓ' → s = s' ∧ ℓ = ℓ')
    (hΨthin : ∀ m ∈ Set.Ioo 0 s₁, ∃ δ : ℝ, 0 < δ ∧ ∀ x ∈ connectedComponentIn (U ∩ N) x₀,
      σ x ≤ δ → ∃ s ∈ Set.Ioo 0 m, ∃ ℓ ∈ S, Ψ s ℓ = x)
    (u : ℝ → M → ℝ) (t₁ : ℝ) (ht₁ : 0 < t₁)
    (hus : ∀ j, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => u p.1 (P.param j p.2))
      (Set.Ioo (-t₁) t₁ ×ˢ P.W j))
    (hu0 : ∀ ℓ ∈ S, u 0 ℓ = 0)
    (hub : ∀ t ∈ Set.Ioo (-t₁) t₁, ∀ ℓ ∈ S, u t ℓ ∈ Set.Ioo (-s₁) s₁)
    (hud : ∀ t ∈ Set.Ioo (-t₁) t₁, ∀ j, ∀ x ∈ P.W j,
      0 < deriv (fun τ => u τ (P.param j x)) t) :
    ∃ (O : Set M) (w : M → ℝ) (t₀ : ℝ),
      IsOpen O ∧ O ⊆ N ∧ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U ⊆ O ∧
      0 < t₀ ∧ t₀ < t₁ ∧
      ContinuousOn w (O ∩ closure (connectedComponentIn (U ∩ N) x₀)) ∧
      (∀ x ∈ O ∩ closure (connectedComponentIn (U ∩ N) x₀), x ∈ frontier U → w x = 0) ∧
      (∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, 0 < w x) ∧
      IsCompact {x | x ∈ O ∩ closure (connectedComponentIn (U ∩ N) x₀) ∧ w x ≤ t₀} ∧
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (O ∩ connectedComponentIn (U ∩ N) x₀) ∧
      (∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0) ∧
      (∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, w x < t₁ ∧ ∃ ℓ ∈ S, x = Ψ (u (w x) ℓ) ℓ) ∧
      (∀ t ∈ Set.Ioo 0 t₀, ∀ ℓ ∈ S, Ψ (u t ℓ) ℓ ∈ O ∩ connectedComponentIn (U ∩ N) x₀) ∧
      (∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, w (Ψ (u t ℓ) ℓ) = t) ∧
      (∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, u t ℓ ∈ Set.Ioo 0 s₁) ∧
      (∀ j, ∀ s ∈ Set.Ioo 0 s₁, ∀ x ∈ P.W j,
        Φ j (hpLift s x) ∈ O ∩ connectedComponentIn (U ∩ N) x₀ →
        0 < partialDeriv 0 (fun y => w (Φ j y)) (hpLift s x)) :=
by
  classical
  set C := connectedComponentIn (U ∩ N) x₀ with hCdef
  
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := by
    intro j x hx
    have h : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at h
    exact h.2
  have hrepS : ∀ ℓ ∈ S, ∃ j, ∃ x ∈ P.W j, P.param j x = ℓ := by
    intro ℓ hℓ
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (P.cover hℓ)
    have h : ℓ ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hj, hℓ⟩
    obtain ⟨x, hx, hxe⟩ := h
    exact ⟨j, x, hx, hxe⟩
  
  have hmono := fun ℓ (hℓ : ℓ ∈ S) => lfc_u_strictMono S P u t₁ s₁ hu0 hub hud ℓ hℓ
  obtain ⟨hcu, hcΨ⟩ := lfc_joint_continuousOn S P Φ Ψ s₁ hΦ u t₁ hus hub
  have hrange : ∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, u t ℓ ∈ Set.Ioo 0 s₁ :=
    fun t ht ℓ hℓ => (hmono ℓ hℓ).2.2.1 t ht
  have hinj : ∀ t ∈ Set.Ioo 0 t₁, ∀ t' ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, ∀ ℓ' ∈ S,
      Ψ (u t ℓ) ℓ = Ψ (u t' ℓ') ℓ' → t = t' ∧ ℓ = ℓ' := by
    intro t ht t' ht' ℓ hℓ ℓ' hℓ' h
    obtain ⟨h1, h2⟩ := hΨinj _ (hrange t ht ℓ hℓ) _ (hrange t' ht' ℓ' hℓ') ℓ hℓ ℓ' hℓ' h
    subst h2
    exact ⟨(hmono ℓ hℓ).1.injOn ⟨by linarith [ht.1], ht.2⟩ ⟨by linarith [ht'.1], ht'.2⟩ h1, rfl⟩
  have hCUN : C ⊆ U ∩ N := connectedComponentIn_subset _ _
  obtain ⟨R, hRdef⟩ : ∃ R : Set M, ∀ x, x ∈ R ↔ ∃ t ∈ Set.Ioo 0 t₁, ∃ ℓ ∈ S, x = Ψ (u t ℓ) ℓ :=
    ⟨{x | ∃ t ∈ Set.Ioo 0 t₁, ∃ ℓ ∈ S, x = Ψ (u t ℓ) ℓ}, fun x => Iff.rfl⟩
  have hRmem : ∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, Ψ (u t ℓ) ℓ ∈ R :=
    fun t ht ℓ hℓ => (hRdef _).2 ⟨t, ht, ℓ, hℓ, rfl⟩
  have hRC : R ⊆ C := by
    intro x hx
    obtain ⟨t, ht, ℓ, hℓ, rfl⟩ := (hRdef x).1 hx
    exact hΨC _ (hrange t ht ℓ hℓ) ℓ hℓ
  
  obtain ⟨w, hwdef⟩ : ∃ w : M → ℝ, ∀ x, w x =
      if h : ∃ t, t ∈ Set.Ioo 0 t₁ ∧ ∃ ℓ ∈ S, x = Ψ (u t ℓ) ℓ then Classical.choose h else 0 :=
    ⟨_, fun x => rfl⟩
  have hW1 : ∀ x ∈ R, w x ∈ Set.Ioo 0 t₁ ∧ ∃ ℓ ∈ S, x = Ψ (u (w x) ℓ) ℓ := by
    intro x hx
    have hx' : ∃ t, t ∈ Set.Ioo 0 t₁ ∧ ∃ ℓ ∈ S, x = Ψ (u t ℓ) ℓ := (hRdef x).1 hx
    rw [hwdef x, dif_pos hx']
    exact Classical.choose_spec hx'
  have hW2 : ∀ x, x ∉ R → w x = 0 := by
    intro x hx
    rw [hwdef x, dif_neg (fun h => hx ((hRdef x).2 h))]
  have hW3 : ∀ t ∈ Set.Ioo 0 t₁, ∀ ℓ ∈ S, w (Ψ (u t ℓ) ℓ) = t := by
    intro t ht ℓ hℓ
    obtain ⟨h1, ℓ', hℓ', h2⟩ := hW1 _ (hRmem t ht ℓ hℓ)
    exact ((hinj t ht _ h1 ℓ hℓ ℓ' hℓ' h2).1).symm
  
  have ht₀ : (0:ℝ) < t₁ / 2 := by linarith
  have ht₀₁ : t₁ / 2 < t₁ := by linarith
  have hcu0 : ContinuousOn (fun ℓ => u (t₁ / 2) ℓ) S :=
    hcu.comp (continuousOn_const.prodMk continuousOn_id)
      (fun ℓ hℓ => ⟨⟨by linarith, ht₀₁⟩, hℓ⟩)
  obtain ⟨ℓm, hℓmS, hℓmin⟩ := hSc.exists_isMinOn hSne hcu0
  have hm : u (t₁ / 2) ℓm ∈ Set.Ioo 0 s₁ := hrange _ ⟨ht₀, ht₀₁⟩ ℓm hℓmS
  obtain ⟨δ, hδ, hδthin⟩ := hΨthin _ hm
  obtain ⟨O', hO'o, hFO', hO'sub⟩ := hσ0 δ hδ
  have hthin : ∀ x ∈ C, x ∈ O' → ∃ t ∈ Set.Ioo 0 (t₁ / 2), ∃ ℓ ∈ S, x = Ψ (u t ℓ) ℓ := by
    intro x hxC hxO'
    have hxU : x ∈ U := (hCUN hxC).1
    have h1 := hO'sub ⟨hxU, hxO'⟩
    have hσx : σ x < δ := h1.2
    obtain ⟨s, hs, ℓ, hℓ, hΨs⟩ := hδthin x hxC hσx.le
    have hle : u (t₁ / 2) ℓm ≤ u (t₁ / 2) ℓ := hℓmin hℓ
    obtain ⟨t, ht, hts⟩ := (hmono ℓ hℓ).2.2.2 (t₁ / 2) ⟨ht₀, ht₀₁⟩ s
      ⟨hs.1, lt_of_lt_of_le hs.2 hle⟩
    exact ⟨t, ht, ℓ, hℓ, by rw [hts, hΨs]⟩
  have hO'R : ∀ x ∈ R ∩ O', w x < t₁ / 2 := by
    rintro x ⟨hxR, hxO'⟩
    obtain ⟨t, ht, ℓ, hℓ, rfl⟩ := hthin x (hRC hxR) hxO'
    rw [hW3 t ⟨ht.1, by linarith [ht.2]⟩ ℓ hℓ]
    exact ht.2
  
  have hLOC : ∀ j, ∀ t ∈ Set.Ioo 0 t₁, ∀ x ∈ P.W j,
      ∃ V : Set M, IsOpen V ∧ V ⊆ R ∧ Φ j (hpLift (u t (P.param j x)) x) ∈ V ∧
        ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w V ∧
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w (Φ j (hpLift (u t (P.param j x)) x)) ≠ 0 ∧
        0 < partialDeriv 0 (fun y' => w (Φ j y')) (hpLift (u t (P.param j x)) x) := by
    intro j t ht x hx
    obtain ⟨A, B, T, hpA, hAsub, hBo, hBrep, hAB, hTs, hTd⟩ :=
      lfc_graph_local_inverse (P.W j) (P.W_open j) 0 t₁
        (fun p : ℝ × E2 => u p.1 (P.param j p.2))
        ((hus j).mono (Set.prod_mono (Set.Ioo_subset_Ioo (by linarith) le_rfl) subset_rfl))
        (fun p hp => hud p.1 ⟨by linarith [hp.1.1], hp.1.2⟩ j p.2 hp.2) (t, x) ⟨ht, hx⟩
    have hBΦ : ∀ y' ∈ B, y' ∈ (Φ j).source ∧ Φ j y' ∈ R ∧ w (Φ j y') = T y' := by
      intro y' hy'
      obtain ⟨p, hpA', hy'eq⟩ := hBrep y' hy'
      have hy'eq' : y' = hpLift (u p.1 (P.param j p.2)) p.2 := hy'eq
      have hT' : T (hpLift (u p.1 (P.param j p.2)) p.2) = p.1 := (hAB p hpA').2
      have hp := hAsub hpA'
      have hℓ := hparS j p.2 hp.2
      have hp1 : p.1 ∈ Set.Ioo 0 t₁ := hp.1
      obtain ⟨hsrc, hΦe⟩ := hΦ j _ (hub p.1 ⟨by linarith [hp1.1], hp1.2⟩ _ hℓ) p.2 hp.2
      rw [hy'eq']
      refine ⟨hsrc, ?_, ?_⟩
      · rw [hΦe]; exact hRmem p.1 hp1 _ hℓ
      · rw [hΦe, hW3 p.1 hp1 _ hℓ, hT']
    obtain ⟨hVo, hws, hd⟩ := lfc_chart_transfer (Φ j) B hBo (fun y' hy' => (hBΦ y' hy').1) T hTs
      w (fun y' hy' => (hBΦ y' hy').2.2)
    have hyB : hpLift (u t (P.param j x)) x ∈ B := (hAB (t, x) hpA).1
    have hd0 := hd _ hyB
    have hTpos : 0 < partialDeriv 0 T (hpLift (u t (P.param j x)) x) := hTd
    refine ⟨(Φ j) '' B, hVo, ?_, ⟨_, hyB, rfl⟩, hws, hd0.2 (ne_of_gt hTpos), ?_⟩
    · rintro _ ⟨y', hy', rfl⟩
      exact (hBΦ y' hy').2.1
    · rw [hd0.1]; exact hTpos
  have hzrep : ∀ z ∈ R, ∃ j, ∃ t ∈ Set.Ioo 0 t₁, ∃ x ∈ P.W j,
      z = Φ j (hpLift (u t (P.param j x)) x) := by
    intro z hz
    obtain ⟨t, ht, ℓ, hℓ, rfl⟩ := (hRdef z).1 hz
    obtain ⟨j, x, hx, rfl⟩ := hrepS ℓ hℓ
    refine ⟨j, t, ht, x, hx, ?_⟩
    rw [(hΦ j _ (hub t ⟨by linarith [ht.1], ht.2⟩ _ hℓ) x hx).2]
  have hRo : IsOpen R := by
    rw [isOpen_iff_forall_mem_open]
    intro z hz
    obtain ⟨j, t, ht, x, hx, rfl⟩ := hzrep z hz
    obtain ⟨V, hVo, hVR, hzV, -⟩ := hLOC j t ht x hx
    exact ⟨V, hVR, hVo, hzV⟩
  have hL2 : ∀ z ∈ R, ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w z ∧
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w z ≠ 0 := by
    intro z hz
    obtain ⟨j, t, ht, x, hx, rfl⟩ := hzrep z hz
    obtain ⟨V, hVo, hVR, hzV, hws, hdw, -⟩ := hLOC j t ht x hx
    exact ⟨hws.contMDiffAt (hVo.mem_nhds hzV), hdw⟩
  have hwR : ContinuousOn w R := fun z hz => (hL2 z hz).1.continuousAt.continuousWithinAt
  have hL3 : ∀ j, ∀ s ∈ Set.Ioo 0 s₁, ∀ x ∈ P.W j, Φ j (hpLift s x) ∈ R →
      0 < partialDeriv 0 (fun y => w (Φ j y)) (hpLift s x) := by
    intro j s hs x hx hR
    obtain ⟨t, ht, ℓ, hℓ, heq⟩ := (hRdef _).1 hR
    rw [(hΦ j s ⟨by linarith [hs.1], hs.2⟩ x hx).2] at heq
    obtain ⟨h1, h2⟩ := hΨinj s hs _ (hrange t ht ℓ hℓ) _ (hparS j x hx) ℓ hℓ heq
    subst h2
    subst h1
    obtain ⟨-, -, -, -, -, -, hpos⟩ := hLOC j t ht x hx
    exact hpos
  
  set O : Set M := (O' ∪ R) ∩ N with hOdef
  have hOo : IsOpen O := (hO'o.union hRo).inter hNo
  have hON : O ⊆ N := Set.inter_subset_right
  have hRN : R ⊆ N := fun x hx => (hCUN (hRC hx)).2
  have hRU : R ⊆ U := fun x hx => (hCUN (hRC hx)).1
  have hRO : R ⊆ O := fun x hx => ⟨Or.inr hx, hRN hx⟩
  have hFCO : closure C ∩ frontier U ⊆ O := fun x hx => ⟨Or.inl (hFO' hx.2), hFN hx.2⟩
  have hO1 : O ∩ C ⊆ R := by
    rintro x ⟨⟨hx | hx, -⟩, hxC⟩
    · obtain ⟨t, ht, ℓ, hℓ, rfl⟩ := hthin x hxC hx
      exact hRmem t ⟨ht.1, by linarith [ht.2]⟩ ℓ hℓ
    · exact hx
  have hCL : closure C ∩ (U ∩ N) ⊆ C := by
    rintro y ⟨hyc, hyUN⟩
    have hpc : IsPreconnected (insert y C) :=
      isPreconnected_connectedComponentIn.subset_closure (Set.subset_insert y C)
        (Set.insert_subset hyc subset_closure)
    exact hpc.subset_connectedComponentIn (Set.mem_insert_of_mem _ (mem_connectedComponentIn hx₀))
      (Set.insert_subset hyUN hCUN) (Set.mem_insert y C)
  have hfrU : ∀ x, x ∈ frontier U → x ∉ U := by
    intro x hx
    rw [hUo.frontier_eq] at hx
    exact hx.2
  have hO2 : O ∩ closure C = R ∪ (closure C ∩ frontier U) := by
    ext x
    constructor
    · rintro ⟨hxO, hxc⟩
      by_cases hxU : x ∈ U
      · exact Or.inl (hO1 ⟨hxO, hCL ⟨hxc, hxU, hON hxO⟩⟩)
      · right
        refine ⟨hxc, ?_⟩
        rw [hUo.frontier_eq]
        exact ⟨closure_mono (fun y hy => (hCUN hy).1) hxc, hxU⟩
    · rintro (hx | hx)
      · exact ⟨hRO hx, subset_closure (hRC hx)⟩
      · exact ⟨hFCO hx, hx.1⟩
  have hO3 : Disjoint R (closure C ∩ frontier U) := by
    rw [Set.disjoint_left]
    intro x hxR hxF
    exact hfrU x hxF.2 (hRU hxR)
  have hwF : ∀ x ∈ closure C ∩ frontier U, w x = 0 :=
    fun x hx => hW2 x (fun hxR => hfrU x hx.2 (hRU hxR))
  
  obtain ⟨hK, hwc⟩ := lfc_level_compact_continuous S (O ∩ closure C) R
    (closure C ∩ frontier U) O' hSc (fun t ℓ => Ψ (u t ℓ) ℓ) w (t₁ / 2) t₁ ht₀ ht₀₁ hcΨ hO2 hO3
    (fun ℓ hℓ => by
      show Ψ (u 0 ℓ) ℓ ∈ _
      rw [hu0 ℓ hℓ]; exact hΨ0 ℓ hℓ)
    (fun p hp => by
      obtain ⟨ℓ, hℓ, h⟩ := hΨ0s p hp
      refine ⟨ℓ, hℓ, ?_⟩
      show Ψ (u 0 ℓ) ℓ = p
      rw [hu0 ℓ hℓ]; exact h)
    hW1 hRmem hW3 hwF hRo hwR hO'o (fun x hx => hFO' hx.2) hO'R
  
  refine ⟨O, w, t₁ / 2, hOo, hON, hFCO, ht₀, ht₀₁, hwc, ?_, ?_, hK, ?_, ?_, ?_, ?_, hW3, hrange,
    ?_⟩
  · intro x hx hxF
    exact hwF x ⟨hx.2, hxF⟩
  · intro x hx
    exact (hW1 x (hO1 hx)).1.1
  · intro x hx
    exact (hL2 x (hO1 hx)).1.contMDiffWithinAt
  · intro x hx
    exact (hL2 x (hO1 hx)).2
  · intro x hx
    exact ⟨(hW1 x (hO1 hx)).1.2, (hW1 x (hO1 hx)).2⟩
  · intro t ht ℓ hℓ
    have ht' : t ∈ Set.Ioo 0 t₁ := ⟨ht.1, by linarith [ht.2]⟩
    exact ⟨hRO (hRmem t ht' ℓ hℓ), hRC (hRmem t ht' ℓ hℓ)⟩
  · intro j s hs x hx hmem
    exact hL3 j s hs x hx (hO1 hmem)

theorem levelMeanCurv_of_slab_leaf [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞)
    (D : Set M) (hD : IsOpen D) (w : M → ℝ) (hw : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w D)
    (v : E2 → ℝ) (W : Set E2) (hW : IsOpen W) (hv : ContDiffOn ℝ ∞ v W)
    (y₀ : E3) (hy₀s : y₀ ∈ Φ.source) (hy₀D : Φ y₀ ∈ D) (hy₀W : hpProj y₀ ∈ W)
    (hF0 : y₀ 0 = v (hpProj y₀))
    (hw1 : 0 < partialDeriv 0 (fun y => w (Φ y)) y₀)
    (hlev : ∀ y ∈ Φ.source, Φ y ∈ D → hpProj y ∈ W → y 0 = v (hpProj y) →
      w (Φ y) = w (Φ y₀)) :
    g.levelMeanCurv w (Φ y₀) =
      levelMeanCurvCoord (g.coeff Φ) (fun y => y 0 - v (hpProj y)) y₀ :=
by
  
  let Lp : E3 →L[ℝ] E2 :=
    (EuclideanSpace.proj (1 : Fin 3) : E3 →L[ℝ] ℝ).smulRight (e2 0) +
      (EuclideanSpace.proj (2 : Fin 3) : E3 →L[ℝ] ℝ).smulRight (e2 1)
  have hLpEq : ∀ z : E3, Lp z = hpProj z := by
    intro z
    ext i
    fin_cases i <;> simp [Lp, hpProj, e2, EuclideanSpace.single_apply]
  have hLpfun : (Lp : E3 → E2) = hpProj := funext hLpEq
  have hPe0 : hpProj (e 0) = 0 := by
    ext i
    fin_cases i <;> simp [hpProj, e, EuclideanSpace.single_apply]
  have hPcd : ContDiff ℝ ∞ hpProj := by
    rw [← hLpfun]; exact Lp.contDiff
  have hPcont : Continuous hpProj := hPcd.continuous
  have hP0 : ∀ y : E3, HasFDerivAt (fun y : E3 => y 0)
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ) y :=
    fun y => (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).hasFDerivAt
  have hLpd : ∀ y : E3, HasFDerivAt hpProj Lp y := by
    intro y; rw [← hLpfun]; exact Lp.hasFDerivAt
  obtain ⟨F, hFdef⟩ : ∃ F : E3 → ℝ, F = fun y => y 0 - v (hpProj y) := ⟨_, rfl⟩
  have hFd : ∀ y : E3, hpProj y ∈ W → HasFDerivAt F
      ((EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ) - (fderiv ℝ v (hpProj y)).comp Lp) y := by
    intro y hy
    have hvd : DifferentiableAt ℝ v (hpProj y) :=
      (hv.differentiableOn (by simp)).differentiableAt (hW.mem_nhds hy)
    rw [hFdef]
    exact (hP0 y).sub (hvd.hasFDerivAt.comp y (hLpd y))
  have hF1 : ∀ y : E3, hpProj y ∈ W → fderiv ℝ F y (e 0) = 1 := by
    intro y hy
    rw [(hFd y hy).fderiv]
    show (e 0 : E3) 0 - fderiv ℝ v (hpProj y) (Lp (e 0)) = 1
    rw [hLpEq, hPe0, map_zero]
    simp [e]
  have hFs : ContDiffOn ℝ ∞ F (hpProj ⁻¹' W) := by
    rw [hFdef]
    exact (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).contDiff.contDiffOn.sub
      (hv.comp hPcd.contDiffOn (fun y hy => hy))
  have hFy0 : F y₀ = 0 := by rw [hFdef]; exact sub_eq_zero.mpr hF0
  have hdf : fderiv ℝ F y₀ ≠ 0 := by
    intro h
    have := hF1 y₀ hy₀W
    rw [h] at this
    simp at this
  
  have hB1 : IsOpen (Φ.source ∩ Φ ⁻¹' D) :=
    Φ.contMDiffOn.continuousOn.isOpen_inter_preimage Φ.open_source hD
  have hBo : IsOpen ((Φ.source ∩ Φ ⁻¹' D) ∩ hpProj ⁻¹' W) := hB1.inter (hW.preimage hPcont)
  have hy₀B : y₀ ∈ (Φ.source ∩ Φ ⁻¹' D) ∩ hpProj ⁻¹' W := ⟨⟨hy₀s, hy₀D⟩, hy₀W⟩
  have hus1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (w ∘ Φ) (Φ.source ∩ Φ ⁻¹' D) :=
    hw.comp (Φ.contMDiffOn.mono Set.inter_subset_left) (fun y hy => hy.2)
  have hus : ContDiffOn ℝ ∞ (fun y => w (Φ y)) ((Φ.source ∩ Φ ⁻¹' D) ∩ hpProj ⁻¹' W) :=
    (contMDiffOn_iff_contDiffOn.mp hus1).mono Set.inter_subset_left
  
  obtain ⟨r, hr, μ, hball, hμs, hdiv⟩ := coord_division _ hBo F (fun y => w (Φ y) - w (Φ y₀))
    (hFs.mono Set.inter_subset_right) (hus.sub contDiffOn_const) y₀ hy₀B hFy0 hdf
    (by
      intro y hy hFy
      have h0 : y 0 = v (hpProj y) := by
        rw [hFdef] at hFy; exact sub_eq_zero.mp hFy
      show w (Φ y) - w (Φ y₀) = 0
      rw [hlev y hy.1.1 hy.1.2 hy.2 h0, sub_self])
  
  have hballN : Metric.ball y₀ r ∈ 𝓝 y₀ := Metric.ball_mem_nhds y₀ hr
  have hFdiff : DifferentiableAt ℝ F y₀ := (hFd y₀ hy₀W).differentiableAt
  have hμdiff : DifferentiableAt ℝ μ y₀ :=
    (hμs.differentiableOn (by simp)).differentiableAt hballN
  have hE : (fun y => w (Φ y) - w (Φ y₀)) =ᶠ[𝓝 y₀] (fun y => F y * μ y) :=
    Filter.eventually_of_mem hballN hdiv
  have hμeq : partialDeriv 0 (fun y => w (Φ y)) y₀ = μ y₀ := by
    have h1 : fderiv ℝ (fun y => w (Φ y) - w (Φ y₀)) y₀ = fderiv ℝ (fun y => F y * μ y) y₀ :=
      hE.fderiv_eq
    have h2 : fderiv ℝ (fun y => F y * μ y) y₀ = F y₀ • fderiv ℝ μ y₀ + μ y₀ • fderiv ℝ F y₀ :=
      (hFdiff.hasFDerivAt.mul hμdiff.hasFDerivAt).fderiv
    rw [fderiv_sub_const, h2] at h1
    unfold partialDeriv
    rw [h1]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    rw [hF1 y₀ hy₀W, hFy0]
    ring
  have hμpos : 0 < μ y₀ := hμeq ▸ hw1
  have hμne : μ y₀ ≠ 0 := ne_of_gt hμpos
  
  have hsymm : ∀ (y : E3) (i j : Fin 3), g.coeff Φ y i j = g.coeff Φ y j i := by
    intro y i j
    simp only [RiemannianMetric3.coeff, coeffMatrix]
    exact g.symm _ _ _
  have hs12 : levelMeanCurvCoord (g.coeff Φ) (fun y => F y * μ y) y₀ =
      levelMeanCurvCoord (g.coeff Φ) F y₀ := by
    have h := lmc_mul_zero (g.coeff Φ) (Metric.ball y₀ r) Metric.isOpen_ball hsymm F μ
      (hFs.mono (fun y hy => (hball hy).2)) hμs y₀ (Metric.mem_ball_self hr)
      (coeff_posDef g Φ y₀ hy₀s) hFy0 hdf hμne
    rw [abs_of_pos hμpos] at h
    exact mul_right_cancel₀ hμne (h.trans (mul_comm _ _))
  
  have hcongr : ∀ (h₁ h₂ : E3 → ℝ) (c : ℝ) (y : E3), (∀ᶠ z in 𝓝 y, h₁ z = h₂ z + c) →
      levelMeanCurvCoord (g.coeff Φ) h₁ y = levelMeanCurvCoord (g.coeff Φ) h₂ y := by
    intro h₁ h₂ c y hev
    have hev' : h₁ =ᶠ[𝓝 y] (fun z => h₂ z + c) := hev
    have hd : fderiv ℝ h₁ =ᶠ[𝓝 y] fderiv ℝ h₂ := by
      filter_upwards [hev'.eventuallyEq_nhds] with z hz
      rw [Filter.EventuallyEq.fderiv_eq (𝕜 := ℝ) hz, fderiv_add_const]
    have hP1 : ∀ k, partialDeriv k h₁ y = partialDeriv k h₂ y := by
      intro k
      show fderiv ℝ h₁ y (e k) = fderiv ℝ h₂ y (e k)
      rw [hd.eq_of_nhds]
    have hP2 : ∀ i j, partialDeriv i (partialDeriv j h₁) y =
        partialDeriv i (partialDeriv j h₂) y := by
      intro i j
      have hj : partialDeriv j h₁ =ᶠ[𝓝 y] partialDeriv j h₂ := by
        filter_upwards [hd] with z hz
        show fderiv ℝ h₁ z (e j) = fderiv ℝ h₂ z (e j)
        rw [hz]
      show fderiv ℝ (partialDeriv j h₁) y (e i) = fderiv ℝ (partialDeriv j h₂) y (e i)
      rw [Filter.EventuallyEq.fderiv_eq (𝕜 := ℝ) hj]
    have hH : ∀ i j, hessLoc (g.coeff Φ) h₁ i j y = hessLoc (g.coeff Φ) h₂ i j y := by
      intro i j
      simp only [hessLoc, hP2, hP1]
    simp only [levelMeanCurvCoord, lapLoc, hH, hP1]
  have hs13 : levelMeanCurvCoord (g.coeff Φ) (fun y => w (Φ y)) y₀ =
      levelMeanCurvCoord (g.coeff Φ) (fun y => F y * μ y) y₀ := by
    refine hcongr _ _ (w (Φ y₀)) y₀ ?_
    filter_upwards [hballN] with y hy
    have := hdiv y hy
    linarith
  
  obtain ⟨b, -, hb⟩ :=
    (SmoothBumpFunction.nhds_basis_tsupport (I := 𝓘(ℝ, E3)) (Φ y₀)).mem_iff.mp
      (hD.mem_nhds hy₀D)
  have hw's : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => b x * w x) := by
    apply contMDiff_of_tsupport
    intro x hx
    have hxb : x ∈ tsupport b := tsupport_mul_subset_left hx
    have hxD : x ∈ D := hb hxb
    exact (b.contMDiff.contMDiffAt).mul (hw.contMDiffAt (hD.mem_nhds hxD))
  have hgerm : (fun x => b x * w x) =ᶠ[𝓝 (Φ y₀)] w := by
    filter_upwards [b.eventuallyEq_one] with x hx
    rw [hx, Pi.one_apply, one_mul]
  have hΦc : ContinuousAt Φ y₀ :=
    Φ.contMDiffOn.continuousOn.continuousAt (Φ.open_source.mem_nhds hy₀s)
  have hfh : ∀ᶠ z in 𝓝 y₀, b (Φ z) * w (Φ z) = w (Φ z) := hΦc.tendsto.eventually hgerm
  have hs14 : g.levelMeanCurv w (Φ y₀) =
      levelMeanCurvCoord (g.coeff Φ) (fun y => w (Φ y)) y₀ := by
    rw [levelMeanCurv_congr_of_eventuallyEq g w (fun x => b x * w x) (Φ y₀) hgerm.symm]
    exact levelMeanCurv_eq_coord g Φ (fun x => b x * w x) (fun y => w (Φ y)) hw's y₀ hy₀s hfh
  rw [hs14, hs13, hs12, hFdef]

theorem degenerate_cmc_foliation [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (U : Set M)
    (hUo : IsOpen U) (hFc : IsCompact (frontier U)) (hfront : IsMinimalSurfaceSet g (frontier U))
    (N : Set M) (ε : ℝ) (σ : M → ℝ) (hNo : IsOpen N) (hFN : frontier U ⊆ N)
    (hNc : IsCompact (closure N)) (hε : 0 < ε)
    (hσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ σ (U ∩ N))
    (hσr : ∀ x ∈ U ∩ N, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) σ x ≠ 0)
    (hσb : ∀ x ∈ U ∩ N, 0 < σ x ∧ σ x < ε)
    (hσp : ∀ c d : ℝ, 0 < c → d < ε → IsCompact (U ∩ N ∩ σ ⁻¹' Set.Icc c d))
    (hσi : ∀ δ : ℝ, 0 < δ → δ < ε → IsClosed (frontier U ∪ (U ∩ N ∩ σ ⁻¹' Set.Iic δ)))
    (hσ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N ∩ σ ⁻¹' Set.Iio δ)
    (hgood : ∀ p ∈ frontier U, ∃ (V : Set M) (f : M → ℝ), IsOpen V ∧ p ∈ V ∧
      ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧ (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
      V ∩ frontier U = V ∩ f ⁻¹' {0} ∧ ∀ x ∈ V ∩ U ∩ N, σ x = |f x|)
    (φ lam : M → ℝ)
    (hlam : ∀ p ∈ frontier U, ∃ V ∈ 𝓝 p, ∀ q ∈ V, q ∈ frontier U → lam q = lam p)
    (hdata : ∀ p ∈ frontier U, 0 < φ p ∧ ∃ (V : Set M) (f : M → ℝ), IsOpen V ∧ p ∈ V ∧
        ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧ (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
        V ∩ frontier U = V ∩ f ⁻¹' {0} ∧
        ∀ x ∈ V ∩ frontier U, Real.sqrt (g.gradInner f f x) * φ x = 1 ∧
          g.jacobiDeriv f x = lam x / φ x)
    (x₀ p₀ : M) (hx₀ : x₀ ∈ U ∩ N)
    (hp₀C : p₀ ∈ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U)
    (hthin : ∀ O : Set M, IsOpen O →
      closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U ⊆ O →
      ∃ δ : ℝ, 0 < δ ∧ δ < ε ∧ connectedComponentIn (U ∩ N) x₀ ∩ σ ⁻¹' Set.Iic δ ⊆ O)
    (hFCpc : IsPreconnected (closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U))
    (hlam0 : ∀ q ∈ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U, lam q = 0) :
    ∃ (O : Set M) (w : M → ℝ) (hcm : ℝ → ℝ) (t₀ : ℝ) (S : Set M) (P : EigPatchedSurface M S)
      (z : Fin P.n → M) (Y : Fin P.n → ℝ → E2 → E3),
      IsOpen O ∧ O ⊆ N ∧ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U ⊆ O ∧ 0 < t₀ ∧
      ContinuousOn w (O ∩ closure (connectedComponentIn (U ∩ N) x₀)) ∧
      (∀ x ∈ O ∩ closure (connectedComponentIn (U ∩ N) x₀), x ∈ frontier U → w x = 0) ∧
      (∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, 0 < w x) ∧
      IsCompact {x | x ∈ O ∩ closure (connectedComponentIn (U ∩ N) x₀) ∧ w x ≤ t₀} ∧
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (O ∩ connectedComponentIn (U ∩ N) x₀) ∧
      (∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0) ∧
      (∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, w x < t₀ → g.levelMeanCurv w x = hcm (w x)) ∧
      (∀ t ∈ Set.Ioo 0 t₀, ∃ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, w x = t) ∧
      hcm 0 = 0 ∧ ContinuousOn hcm (Set.Ico 0 t₀) ∧ DifferentiableOn ℝ hcm (Set.Ioo 0 t₀) ∧
      IsCompact S ∧ S.Nonempty ∧
      (∀ j, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => Y j p.1 p.2) (Set.Ioo (-t₀) t₀ ×ˢ P.W j)) ∧
      (∀ j (a b : Fin 2), ContDiffOn ℝ ∞
        (fun p : ℝ × E2 => pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j p.1) p.2 a b)
        (Set.Ioo (-t₀) t₀ ×ˢ P.W j)) ∧
      (∀ j, ∀ t ∈ Set.Ioo (-t₀) t₀, ∀ x ∈ P.W j,
        Y j t x ∈ (chartAt E3 (z j)).target ∧ Function.Injective (fderiv ℝ (Y j t) x)) ∧
      (∀ j, ∀ x ∈ P.W j, (chartAt E3 (z j)).symm (Y j 0 x) ∈
        closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U) ∧
      (∀ j, ∀ t ∈ Set.Ioo 0 t₀, ∀ x ∈ P.W j,
        (chartAt E3 (z j)).symm (Y j t x) ∈ O ∩ connectedComponentIn (U ∩ N) x₀ ∧
        w ((chartAt E3 (z j)).symm (Y j t x)) = t) ∧
      (∀ t ∈ Set.Ioo (-t₀) t₀, ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        (chartAt E3 (z j)).symm (Y j t x) =
          (chartAt E3 (z k)).symm (Y k t (P.proj k (P.param j x))) ∧
        ∀ a b : Fin 2, pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t) x a b =
          ∑ c : Fin 2, ∑ d : Fin 2,
            fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 a) c *
              pullMetric2 (g.coeff (chartAt E3 (z k)).symm) (Y k t) (P.proj k (P.param j x)) c d *
              fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 b) d) :=
by
  haveI : LocallyConnectedSpace M := ChartedSpace.locallyConnectedSpace E3 M
  
  have hLP : ∀ y : E3, hpLift (y 0) (hpProj y) = y := by
    intro y; ext i; fin_cases i <;> simp [hpLift, hpProj, cylPt, e, EuclideanSpace.single_apply]
  have hPL : ∀ (s : ℝ) (x : E2), hpProj (hpLift s x) = x := by
    intro s x; ext i; fin_cases i <;> simp [hpLift, hpProj, cylPt, e, EuclideanSpace.single_apply]
  have hL0 : ∀ (s : ℝ) (x : E2), (hpLift s x) 0 = s := by
    intro s x; simp [hpLift, cylPt, e, EuclideanSpace.single_apply]
  have hPeq : hpProj = fun z : E3 => (z 1) • e2 0 + (z 2) • e2 1 := by
    funext z; ext i; fin_cases i <;> simp [hpProj, e2, EuclideanSpace.single_apply]
  have hPdiff : Differentiable ℝ hpProj := by rw [hPeq]; fun_prop
  have hPcont : Continuous hpProj := hPdiff.continuous
  have hCo : IsOpen (connectedComponentIn (U ∩ N) x₀) := (hUo.inter hNo).connectedComponentIn
  
  obtain ⟨S, P, z, Φ, Ψ, s₁, hs₁, hSc, hSne, hSpc, hA2, hA3, hA3', hA4, hA5, hA6, hA8, hA7⟩ :=
    collar_slab_coordinates g U hUo hFc hfront N ε σ hNo hFN hNc hε hσs hσr hσb hσp hσi hσ0 hgood
      φ lam hdata x₀ p₀ hx₀ hp₀C hthin hFCpc
  have hslabo : ∀ W : Set E2, IsOpen W → IsOpen ({y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' W) :=
    fun W hW => (isOpen_lt (continuous_abs.comp (by fun_prop)) continuous_const).inter
      (hW.preimage hPcont)
  have hparS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := by
    intro j x hx
    have h : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at h
    exact h.2
  have hovo : ∀ j k, IsOpen (P.W j ∩ P.param j ⁻¹' P.O k) := fun j k =>
    (P.param_cont j).isOpen_inter_preimage (P.W_open j) (P.O_open k)
  have hT : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j x) ∈ P.W k ∧ P.param k (P.proj k (P.param j x)) = P.param j x := by
    intro j k x hx
    have h1 : P.param j x ∈ P.O k ∩ S := ⟨hx.2, hparS j x hx.1⟩
    rw [← P.image_eq k] at h1
    obtain ⟨x'', hx'', hxe⟩ := h1
    rw [← hxe, P.proj_param k x'' hx'']
    exact ⟨hx'', rfl⟩
  have hτd : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      DifferentiableAt ℝ (fun x' => P.proj k (P.param j x')) x := fun j k x hx =>
    ((P.trans_smooth j k).differentiableOn (by simp)).differentiableAt ((hovo j k).mem_nhds hx)
  have hslab : ∀ j, ∀ y : E3, |y 0| < s₁ → hpProj y ∈ P.W j →
      y ∈ (Φ j).source ∧ Φ j y = Ψ (y 0) (P.param j (hpProj y)) := by
    intro j y hy hyW
    have h := hA2 j (y 0) (abs_lt.mp hy) (hpProj y) hyW
    rw [hLP y] at h
    exact ⟨h.1, h.2.1⟩
  
  have hGs : ∀ j (a b : Fin 3), ContDiffOn ℝ ∞ (fun y => g.coeff (Φ j) y a b)
      {y : E3 | |y 0| < s₁ ∧ hpProj y ∈ P.W j} := fun j a b =>
    (coeff_contDiffOn_source g (Φ j) a b).mono (fun y hy => (hslab j y hy.1 hy.2).1)
  have hGsymm : ∀ j (y : E3) (a b : Fin 3), g.coeff (Φ j) y a b = g.coeff (Φ j) y b a := by
    intro j y a b
    simp only [RiemannianMetric3.coeff, coeffMatrix]
    exact g.symm _ _ _
  have hGpd : ∀ j, ∀ y : E3, |y 0| < s₁ → hpProj y ∈ P.W j → (g.coeff (Φ j) y).PosDef :=
    fun j y hy hyW => coeff_posDef g (Φ j) y (hslab j y hy hyW).1
  have hGc : ∀ j k, ∀ s ∈ Set.Ioo (-s₁) s₁, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      g.coeff (Φ j) (hpLift s x) = pullbackMetric (g.coeff (Φ k))
        (fun y => hpLift (y 0) (P.proj k (P.param j (hpProj y)))) (hpLift s x) := by
    intro j k s hs x hx
    have hΩo := hslabo _ (hovo j k)
    have hyΩ : hpLift s x ∈ {y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' (P.W j ∩ P.param j ⁻¹' P.O k) := by
      refine ⟨?_, ?_⟩
      · show |(hpLift s x) 0| < s₁
        rw [hL0]; exact abs_lt.mpr hs
      · show hpProj (hpLift s x) ∈ P.W j ∩ P.param j ⁻¹' P.O k
        rw [hPL]; exact hx
    have hEq : ∀ y ∈ {y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' (P.W j ∩ P.param j ⁻¹' P.O k),
        Φ j y = Φ k (hpLift (y 0) (P.proj k (P.param j (hpProj y)))) := by
      intro y hy
      have hy1 : |y 0| < s₁ := hy.1
      have hy2 : hpProj y ∈ P.W j ∩ P.param j ⁻¹' P.O k := hy.2
      obtain ⟨hτW, hτp⟩ := hT j k (hpProj y) hy2
      rw [(hslab j y hy1 hy2.1).2, (hA2 k (y 0) (abs_lt.mp hy1) _ hτW).2.1, hτp]
    have hev : (Φ j : E3 → M) =ᶠ[𝓝 (hpLift s x)]
        (Φ k : E3 → M) ∘ (fun y => hpLift (y 0) (P.proj k (P.param j (hpProj y)))) :=
      Filter.eventually_of_mem (hΩo.mem_nhds hyΩ) (fun y hy => hEq y hy)
    have h1 : DifferentiableAt ℝ (fun y : E3 => P.proj k (P.param j (hpProj y))) (hpLift s x) := by
      have h2 := hτd j k x hx
      rw [← hPL s x] at h2
      exact h2.comp (hpLift s x) (hPdiff _)
    have hTd : DifferentiableAt ℝ (fun y => hpLift (y 0) (P.proj k (P.param j (hpProj y))))
        (hpLift s x) := by
      simp only [hpLift, cylPt]
      fun_prop
    have hmem : hpLift (hpLift s x 0) (P.proj k (P.param j (hpProj (hpLift s x)))) ∈
        (Φ k).source := by
      rw [hL0, hPL]
      exact (hA2 k s hs _ (hT j k x hx).1).1
    have hΦkd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (Φ k)
        (hpLift (hpLift s x 0) (P.proj k (P.param j (hpProj (hpLift s x))))) :=
      ((Φ k).contMDiffOn.contMDiffAt ((Φ k).open_source.mem_nhds hmem)).mdifferentiableAt
        (by simp)
    funext a b
    have h3 : g.coeff (Φ j) (hpLift s x) a b = g.coeff ((Φ k : E3 → M) ∘
        (fun y => hpLift (y 0) (P.proj k (P.param j (hpProj y))))) (hpLift s x) a b := by
      show g.g _ _ _ = g.g _ _ _
      rw [hev.mfderiv_eq, hev.eq_of_nhds]
    rw [h3, coeff_comp_apply g (Φ k) _ (hpLift s x) hTd hΦkd a b]
    rfl
  have hleaf : ∀ j, ∀ x ∈ P.W j,
      levelMeanCurvCoord (g.coeff (Φ j)) (fun y => y 0) (hpLift 0 x) = 0 ∧
      HasDerivAt (fun s => levelMeanCurvCoord (g.coeff (Φ j)) (fun y => y 0) (hpLift s x)) 0 0 := by
    intro j x hx
    have h0 : (0:ℝ) ∈ Set.Ioo (-s₁) s₁ := ⟨by linarith, hs₁⟩
    obtain ⟨hsrc0, hΦ0, -⟩ := hA2 j 0 h0 x hx
    have hpF : Ψ 0 (P.param j x) ∈ closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U :=
      hA3 _ (hparS j x hx)
    obtain ⟨-, V, f, hVo, hpV, hf, hdf, hVS, hdat⟩ := hdata _ hpF.2
    have hBo : IsOpen (((Φ j).source ∩ (Φ j) ⁻¹' V) ∩
        ({y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' P.W j)) :=
      ((Φ j).contMDiffOn.continuousOn.isOpen_inter_preimage (Φ j).open_source hVo).inter
        (hslabo _ (P.W_open j))
    have hxB : hpLift 0 x ∈ ((Φ j).source ∩ (Φ j) ⁻¹' V) ∩
        ({y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' P.W j) := by
      refine ⟨⟨hsrc0, ?_⟩, ?_, ?_⟩
      · show Φ j (hpLift 0 x) ∈ V
        rw [hΦ0]; exact hpV
      · show |(hpLift 0 x) 0| < s₁
        rw [hL0, abs_zero]; exact hs₁
      · show hpProj (hpLift 0 x) ∈ P.W j
        rw [hPL]; exact hx
    have hBrep : ∀ y ∈ ((Φ j).source ∩ (Φ j) ⁻¹' V) ∩
        ({y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' P.W j),
        Φ j y = Ψ (y 0) (P.param j (hpProj y)) := fun y hy => (hslab j y hy.2.1 hy.2.2).2
    have hBS : ∀ y ∈ ((Φ j).source ∩ (Φ j) ⁻¹' V) ∩
        ({y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' P.W j), (Φ j y ∈ frontier U ↔ y 0 = 0) := by
      intro y hy
      rw [hBrep y hy]
      constructor
      · intro hF
        by_contra h0'
        exact hA8 (y 0) (abs_lt.mp hy.2.1) _ (hparS j _ hy.2.2) h0' hF
      · intro h0'
        rw [h0']
        exact (hA3 _ (hparS j _ hy.2.2)).2
    have hnorm : ∀ y ∈ ((Φ j).source ∩ (Φ j) ⁻¹' V) ∩
        ({y : E3 | |y 0| < s₁} ∩ hpProj ⁻¹' P.W j), y 0 = 0 →
        |partialDeriv 0 (fun y' => f (Φ j y')) y| = 1 := by
      intro y hy h0'
      have hyV : Φ j y ∈ V := hy.1.2
      have hyF : Φ j y ∈ frontier U := (hBS y hy).2 h0'
      have hrep : Ψ 0 (P.param j (hpProj y)) = Φ j y := by rw [hBrep y hy, h0']
      have h4 := hA7 j (hpProj y) hy.2.2 V f hVo (by rw [hrep]; exact hyV) hf hdf hVS
        (by rw [hrep]; exact (hdat _ ⟨hyV, hyF⟩).1)
      have hy' : hpLift 0 (hpProj y) = y := by
        calc hpLift 0 (hpProj y) = hpLift (y 0) (hpProj y) := by rw [h0']
          _ = y := hLP y
      rw [hy'] at h4
      exact h4
    have hjac : g.jacobiDeriv f (Φ j (hpLift 0 x)) = 0 := by
      rw [hΦ0, (hdat _ ⟨hpV, hpF.2⟩).2, hlam0 _ hpF, zero_div]
    exact slab_leaf_jacobi_vanishing g (frontier U) hfront (Φ j) x _ hBo (fun y hy => hy.1.1) hxB
      V f hVo hf hdf hVS (fun y hy => hy.1.2) hBS hnorm hjac
  
  obtain ⟨t₁, u, h, ht₁, hus, hu0, hub, hud, hH, hh0, hhs⟩ :=
    slab_cmc_graph_family S hSc hSne hSpc P s₁ hs₁ (fun j => g.coeff (Φ j)) hGs hGsymm hGpd hGc
      hleaf
  
  obtain ⟨O, w, t₀, hO, hON, hFCO, ht₀, ht₀₁, hwc, hw0, hwpos, hK, hws, hdw, hrep, hleafO, hlev,
      hupos, hd0⟩ :=
    leaf_foliation_coordinate U N σ x₀ hUo hNo hFN hx₀ hσ0 S hSc hSne P Φ Ψ s₁ hs₁
      (fun j s hs x hx => ⟨(hA2 j s hs x hx).1, (hA2 j s hs x hx).2.1⟩) hA3 hA3' hA4 hA5 hA6
      u t₁ ht₁ hus hu0 hub hud
  have hsub : ∀ t ∈ Set.Ioo (-t₀) t₀, t ∈ Set.Ioo (-t₁) t₁ :=
    fun t ht => ⟨by linarith [ht.1], by linarith [ht.2]⟩
  have hstar : ∀ j, ∀ t ∈ Set.Ioo (-t₁) t₁, ∀ x ∈ P.W j,
      (chartAt E3 (z j)).symm (chartAt E3 (z j) (Φ j (hpLift (u t (P.param j x)) x))) =
        Ψ (u t (P.param j x)) (P.param j x) := by
    intro j t ht x hx
    obtain ⟨-, h2, h3⟩ := hA2 j _ (hub t ht _ (hparS j x hx)) x hx
    rw [h2]
    exact (chartAt E3 (z j)).left_inv h3
  have hR := fun j => slab_graph_param_regular g (Φ j) (z j) (P.W j) (P.W_open j) t₀
      (fun t x => u t (P.param j x))
      ((hus j).mono (Set.prod_mono (Set.Ioo_subset_Ioo (by linarith) (by linarith)) subset_rfl))
      (fun t ht x hx => ⟨(hA2 j _ (hub t (hsub t ht) _ (hparS j x hx)) x hx).1, by
        rw [(hA2 j _ (hub t (hsub t ht) _ (hparS j x hx)) x hx).2.1]
        exact (hA2 j _ (hub t (hsub t ht) _ (hparS j x hx)) x hx).2.2⟩)
  refine ⟨O, w, h, t₀, S, P, z,
    fun j t x => chartAt E3 (z j) (Φ j (hpLift (u t (P.param j x)) x)),
    hO, hON, hFCO, ht₀, hwc, hw0, hwpos, hK, hws, hdw, ?_, ?_, hh0,
    hhs.continuousOn.mono (fun t ht => ⟨by linarith [ht.1], by linarith [ht.2]⟩),
    (hhs.differentiableOn (by simp)).mono (fun t ht => ⟨by linarith [ht.1], by linarith [ht.2]⟩),
    hSc, hSne, fun j => (hR j).1, fun j a b => (hR j).2.1 a b, ?_, ?_, ?_, ?_⟩
  · 
    intro x hx hxt
    have hwx := hwpos x hx
    obtain ⟨-, ℓ, hℓS, hxℓ⟩ := hrep x hx
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (P.cover hℓS)
    have hℓim : ℓ ∈ P.param j '' P.W j := by rw [P.image_eq j]; exact ⟨hj, hℓS⟩
    obtain ⟨x', hx', rfl⟩ := hℓim
    have ht1 : w x ∈ Set.Ioo 0 t₁ := ⟨hwx, by linarith⟩
    have hsI := hupos (w x) ht1 _ hℓS
    have hsI' : u (w x) (P.param j x') ∈ Set.Ioo (-s₁) s₁ := ⟨by linarith [hsI.1], hsI.2⟩
    obtain ⟨hsrc, hΦe, -⟩ := hA2 j _ hsI' x' hx'
    have hΦx : Φ j (hpLift (u (w x) (P.param j x')) x') = x := by rw [hΦe, ← hxℓ]
    have hvs : ContDiffOn ℝ ∞ (fun x'' => u (w x) (P.param j x'')) (P.W j) :=
      (hus j).comp (contDiff_const.prodMk contDiff_id).contDiffOn
        (fun y hy => ⟨⟨by linarith, by linarith⟩, hy⟩)
    have hlev' : ∀ y ∈ (Φ j).source, Φ j y ∈ O ∩ connectedComponentIn (U ∩ N) x₀ →
        hpProj y ∈ P.W j → y 0 = u (w x) (P.param j (hpProj y)) →
        w (Φ j y) = w (Φ j (hpLift (u (w x) (P.param j x')) x')) := by
      intro y _ _ hyW hy0
      rw [hΦx]
      have hℓy := hparS j _ hyW
      have hb := hub (w x) ⟨by linarith, by linarith⟩ _ hℓy
      have hrepy : Φ j y = Ψ (y 0) (P.param j (hpProj y)) :=
        (hslab j y (by rw [hy0]; exact abs_lt.mpr hb) hyW).2
      rw [hrepy, hy0]
      exact hlev (w x) ht1 _ hℓy
    have key := levelMeanCurv_of_slab_leaf g (Φ j) (O ∩ connectedComponentIn (U ∩ N) x₀)
      (hO.inter hCo) w hws (fun x'' => u (w x) (P.param j x'')) (P.W j) (P.W_open j) hvs
      (hpLift (u (w x) (P.param j x')) x') hsrc (by rw [hΦx]; exact hx)
      (by rw [hPL]; exact hx') (by simp only [hL0, hPL])
      (hd0 j _ hsI x' hx' (by rw [hΦx]; exact hx)) hlev'
    rw [hΦx] at key
    rw [key]
    exact hH (w x) ⟨by linarith, by linarith⟩ j x' hx'
  · 
    intro t ht
    obtain ⟨ℓ, hℓ⟩ := hSne
    exact ⟨Ψ (u t ℓ) ℓ, hleafO t ht ℓ hℓ, hlev t ⟨ht.1, by linarith [ht.2]⟩ ℓ hℓ⟩
  · 
    intro j t ht x hx
    exact ⟨((hR j).2.2 t ht x hx).1, ((hR j).2.2 t ht x hx).2.2⟩
  · 
    intro j x hx
    have h0 : (0:ℝ) ∈ Set.Ioo (-t₁) t₁ := ⟨by linarith, ht₁⟩
    show (chartAt E3 (z j)).symm (chartAt E3 (z j) (Φ j (hpLift (u 0 (P.param j x)) x))) ∈
      closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U
    rw [hstar j 0 h0 x hx, hu0 _ (hparS j x hx)]
    exact hA3 _ (hparS j x hx)
  · 
    intro j t ht x hx
    show (chartAt E3 (z j)).symm (chartAt E3 (z j) (Φ j (hpLift (u t (P.param j x)) x))) ∈
        O ∩ connectedComponentIn (U ∩ N) x₀ ∧
      w ((chartAt E3 (z j)).symm (chartAt E3 (z j) (Φ j (hpLift (u t (P.param j x)) x)))) = t
    rw [hstar j t ⟨by linarith [ht.1], by linarith [ht.2]⟩ x hx]
    exact ⟨hleafO t ht _ (hparS j x hx), hlev t ⟨ht.1, by linarith [ht.2]⟩ _ (hparS j x hx)⟩
  · 
    intro t ht j k x hx
    have ht' := hsub t ht
    obtain ⟨hτW, -⟩ := hT j k x hx
    have hpt : ∀ x' ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        (chartAt E3 (z j)).symm (chartAt E3 (z j) (Φ j (hpLift (u t (P.param j x')) x'))) =
          (chartAt E3 (z k)).symm (chartAt E3 (z k) (Φ k (hpLift
            (u t (P.param k (P.proj k (P.param j x')))) (P.proj k (P.param j x'))))) := by
      intro x' hx'
      obtain ⟨hτW', hτp'⟩ := hT j k x' hx'
      rw [hstar j t ht' x' hx'.1, hstar k t ht' _ hτW', hτp']
    refine ⟨hpt x hx, ?_⟩
    exact pullMetric2_reparam_compat g (z j) (z k)
      (fun x' => chartAt E3 (z j) (Φ j (hpLift (u t (P.param j x')) x')))
      (fun x' => chartAt E3 (z k) (Φ k (hpLift (u t (P.param k x')) x')))
      (fun x' => P.proj k (P.param j x')) x
      ((hR j).2.2 t ht x hx.1).2.1 ((hR k).2.2 t ht _ hτW).2.1 (hτd j k x hx)
      ((hR j).2.2 t ht x hx.1).1 ((hR k).2.2 t ht _ hτW).1
      (Filter.eventually_of_mem ((hovo j k).mem_nhds hx) hpt)

theorem cml_chart_data [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (z : M) (Q : Set M) (hQ : IsOpen Q) (w : M → ℝ)
    (hw : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w Q)
    (hdw : ∀ x ∈ Q, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0)
    (hcm : ℝ → ℝ) (hH : ∀ x ∈ Q, g.levelMeanCurv w x = hcm (w x))
    (t : ℝ) (hd : DifferentiableAt ℝ hcm t) :
    IsOpen ((chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q) ∧
    ContDiffOn ℝ ∞ (fun y => w ((chartAt E3 z).symm y) - t)
      ((chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q) ∧
    (∀ y ∈ (chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q,
      fderiv ℝ (fun y' => w ((chartAt E3 z).symm y') - t) y ≠ 0) ∧
    (∀ y ∈ (chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q,
      ejpS (g.coeff (chartAt E3 z).symm) (fun y' => w ((chartAt E3 z).symm y') - t) y =
        g.gradInner w w ((chartAt E3 z).symm y)) ∧
    (∀ y ∈ (chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q, w ((chartAt E3 z).symm y) = t →
      ejpJac (g.coeff (chartAt E3 z).symm) (fun y' => w ((chartAt E3 z).symm y') - t) y =
        deriv hcm t * ejpS (g.coeff (chartAt E3 z).symm) (fun y' => w ((chartAt E3 z).symm y') - t) y) :=
by
  have hCU := chart_unit_normal_calculus g Q w hQ hw hdw z
  have hUo : IsOpen ((chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q) :=
    (chartAt E3 z).isOpen_inter_preimage_symm hQ
  
  have hpd : ∀ i : Fin 3, partialDeriv i (fun y => w ((chartAt E3 z).symm y) - t) =
      partialDeriv i (fun y => w ((chartAt E3 z).symm y)) := by
    intro i
    funext y
    simp only [partialDeriv, fderiv_sub_const]
  have hS : ejpS (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y) - t) =
      ejpS (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y)) := by
    funext y
    simp only [ejpS, hpd]
  have hhess : ∀ i j : Fin 3,
      hessLoc (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y) - t) i j =
      hessLoc (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y)) i j := by
    intro i j
    funext y
    simp only [hessLoc, hpd]
  have hLc : levelMeanCurvCoord (g.coeff (chartAt E3 z).symm)
        (fun y => w ((chartAt E3 z).symm y) - t) =
      levelMeanCurvCoord (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y)) := by
    funext y
    simp only [levelMeanCurvCoord, lapLoc, hhess, hpd]
  have hJ : ejpJac (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y) - t) =
      ejpJac (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y)) := by
    funext y
    simp only [ejpJac, hLc, hpd]
  
  have hcrux : ∀ y ∈ (chartAt E3 z).target, (chartAt E3 z).symm y ∈ Q →
      ejpS (g.coeff (chartAt E3 z).symm) (fun y' => w ((chartAt E3 z).symm y')) y =
        g.gradInner w w ((chartAt E3 z).symm y) := by
    intro y hy hyQ
    obtain ⟨x, hx⟩ : ∃ x, x = (chartAt E3 z).symm y := ⟨_, rfl⟩
    rw [← hx] at hyQ ⊢
    obtain ⟨f, -, hfQ⟩ :=
      (SmoothBumpFunction.nhds_basis_tsupport (I := 𝓘(ℝ, E3)) x).mem_iff.1 (hQ.mem_nhds hyQ)
    obtain ⟨u, hu_def⟩ : ∃ u : M → ℝ, u = fun p => f p * w p := ⟨_, rfl⟩
    have hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u := by
      rw [hu_def]
      apply contMDiff_of_tsupport
      intro p hp
      have hpQ : p ∈ Q := hfQ (tsupport_mul_subset_left hp)
      exact (f.contMDiff p).mul (hw.contMDiffAt (hQ.mem_nhds hpQ))
    have huw : ∀ᶠ p in 𝓝 x, u p = w p := by
      filter_upwards [f.eventuallyEq_one] with p hp
      rw [hu_def]
      simp only [Pi.one_apply] at hp
      simp [hp]
    have hgerm : ∀ (q : M) (v : E3), v ∈ (chartAt E3 q).target → (chartAt E3 q).symm v = x →
        ∀ i : Fin 3, partialDeriv i (fun v' => u ((chartAt E3 q).symm v')) v =
          partialDeriv i (fun v' => w ((chartAt E3 q).symm v')) v := by
      intro q v hv hvx i
      have hc := (chartAt E3 q).continuousAt_symm hv
      have huw' : ∀ᶠ p in 𝓝 ((chartAt E3 q).symm v), u p = w p := by
        rw [hvx]
        exact huw
      have h1 : (fun v' => u ((chartAt E3 q).symm v')) =ᶠ[𝓝 v]
          (fun v' => w ((chartAt E3 q).symm v')) := hc.eventually huw'
      unfold partialDeriv
      rw [Filter.EventuallyEq.fderiv_eq h1]
    have hL : g.gradInner w w x = g.gradInner u u x := by
      have h := hgerm x (chartAt E3 x x) (mem_chart_target E3 x)
        ((chartAt E3 x).left_inv (mem_chart_source E3 x))
      simp only [RiemannianMetric3.gradInner, h]
    have hR := (chart_pullback_gradInner g u hu z).2.1 y hy
    rw [← hx] at hR
    rw [hL, hR]
    have h := hgerm z y hy hx.symm
    simp only [ejpS, h]
  refine ⟨hUo, hCU.1.sub contDiffOn_const, ?_, ?_, ?_⟩
  · 
    intro y hy hzero
    have hx : (chartAt E3 z).symm y ∈ Q ∩ (chartAt E3 z).source :=
      ⟨hy.2, (chartAt E3 z).map_target hy.1⟩
    have h1 := (hCU.2 _ hx).1
    rw [(chartAt E3 z).right_inv hy.1] at h1
    have hpz : ∀ a : Fin 3, partialDeriv a (fun y => w ((chartAt E3 z).symm y)) y = 0 := by
      intro a
      rw [← hpd a]
      simp only [partialDeriv]
      rw [hzero]
      rfl
    simp [hpz] at h1
  · 
    intro y hy
    rw [hS]
    exact hcrux y hy.1 hy.2
  · 
    intro y hy hyt
    have hlev : ∀ y' ∈ (chartAt E3 z).target ∩ (chartAt E3 z).symm ⁻¹' Q,
        levelMeanCurvCoord (g.coeff (chartAt E3 z).symm) (fun y => w ((chartAt E3 z).symm y)) y' =
          hcm (w ((chartAt E3 z).symm y')) := by
      intro y' hy'
      have h1 := (hCU.2 _ ⟨hy'.2, (chartAt E3 z).map_target hy'.1⟩).2.1
      rw [(chartAt E3 z).right_inv hy'.1] at h1
      rw [← h1]
      exact hH _ hy'.2
    have hev : levelMeanCurvCoord (g.coeff (chartAt E3 z).symm)
        (fun y => w ((chartAt E3 z).symm y)) =ᶠ[𝓝 y]
        (fun y' => hcm (w ((chartAt E3 z).symm y'))) :=
      Filter.eventually_of_mem (hUo.mem_nhds hy) hlev
    have hfd : DifferentiableAt ℝ (fun y => w ((chartAt E3 z).symm y)) y :=
      (hCU.1.differentiableOn (by simp)).differentiableAt (hUo.mem_nhds hy)
    have hd' : HasDerivAt hcm (deriv hcm t) ((fun y => w ((chartAt E3 z).symm y)) y) := by
      show HasDerivAt hcm (deriv hcm t) (w ((chartAt E3 z).symm y))
      rw [hyt]
      exact hd.hasDerivAt
    have hcomp := hd'.comp_hasFDerivAt y hfd.hasFDerivAt
    have hfd2 : fderiv ℝ (levelMeanCurvCoord (g.coeff (chartAt E3 z).symm)
        (fun y => w ((chartAt E3 z).symm y))) y =
        deriv hcm t • fderiv ℝ (fun y => w ((chartAt E3 z).symm y)) y := by
      rw [hev.fderiv_eq]
      exact hcomp.fderiv
    have hpdL : ∀ i : Fin 3, partialDeriv i (levelMeanCurvCoord (g.coeff (chartAt E3 z).symm)
        (fun y => w ((chartAt E3 z).symm y))) y =
        deriv hcm t * partialDeriv i (fun y => w ((chartAt E3 z).symm y)) y := by
      intro i
      simp only [partialDeriv, hfd2, ContinuousLinearMap.smul_apply, smul_eq_mul]
    rw [hJ, hS]
    simp only [ejpJac, ejpS, hpdL, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring

theorem cml_leaf_conformal_pointwise [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (z : M)
    (Φ : E3 → ℝ) (U : Set E3) (hU : IsOpen U) (hUt : U ⊆ (chartAt E3 z).target)
    (hΦ : ContDiffOn ℝ ∞ Φ U) (hdΦ : ∀ y ∈ U, fderiv ℝ Φ y ≠ 0)
    (W : Set E2) (hW : IsOpen W) (F : E2 → E3) (hF : ContDiffOn ℝ ∞ F W)
    (hFW : ∀ x ∈ W, F x ∈ U ∧ Φ (F x) = 0 ∧ Function.Injective (fderiv ℝ F x))
    (c : ℝ) (hJ : ∀ x ∈ W, ejpJac (g.coeff (chartAt E3 z).symm) Φ (F x) =
      c * ejpS (g.coeff (chartAt E3 z).symm) Φ (F x)) :
    ContDiffOn ℝ ∞ (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) W ∧
    ∀ x ∈ W, 0 < ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x) ∧
      c * (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x))⁻¹ ≤
        gaussCurv2 (fun y => (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) ^ 2 •
            pullMetric2 (g.coeff (chartAt E3 z).symm) F y) x *
          (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x)) ^ 2 :=
by
  classical
  have hFU : ∀ y ∈ W, F y ∈ U := fun y hy => (hFW y hy).1
  have hFt : ∀ y ∈ W, F y ∈ (chartAt E3 z).target := fun y hy => hUt (hFU y hy)
  have hΦF : ∀ y ∈ W, Φ (F y) = 0 := fun y hy => (hFW y hy).2.1
  have hinj : ∀ y ∈ W, Function.Injective (fderiv ℝ F y) := fun y hy => (hFW y hy).2.2
  have hGs : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 z).symm y i j)
      (chartAt E3 z).target := fun i j => g.smooth z i j
  have hGsymm : ∀ (y : E3) (i j : Fin 3),
      g.coeff (chartAt E3 z).symm y i j = g.coeff (chartAt E3 z).symm y j i :=
    fun y i j => g.symm _ _ _
  have hGpos : ∀ y ∈ (chartAt E3 z).target, (g.coeff (chartAt E3 z).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g z y hy
  have hGU : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 z).symm y i j) U :=
    fun i j => (hGs i j).mono hUt
  have hGposU : ∀ y ∈ U, (g.coeff (chartAt E3 z).symm y).PosDef := fun y hy => hGpos y (hUt hy)
  obtain ⟨hSpos, -, hψ, -⟩ :=
    ejp_level_regularity (g.coeff (chartAt E3 z).symm) Φ U hU hGU hGposU hΦ hdΦ
  have hu : ContDiffOn ℝ ∞ (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) W :=
    hψ.comp hF (fun y hy => hFU y hy)
  have hupos : ∀ y ∈ W, 0 < ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y) := by
    intro y hy
    unfold ejpPsi
    exact inv_pos.mpr (Real.sqrt_pos.mpr (hSpos _ (hFU y hy)))
  obtain ⟨hh, hhsymm, hhpos, -, -, -, hA2⟩ :=
    gs_regularity (g.coeff (chartAt E3 z).symm) (chartAt E3 z).target (chartAt E3 z).open_target
      hGs hGsymm hGpos F W hW hF hFt hinj
  refine ⟨hu, fun x hx => ⟨hupos x hx, ?_⟩⟩
  have hFxU : F x ∈ U := hFU x hx
  have hu0 : 0 < ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x) := hupos x hx
  have hS0 : 0 < ejpS (g.coeff (chartAt E3 z).symm) Φ (F x) := hSpos _ hFxU
  have hS2 : ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x) ^ 2 *
      ejpS (g.coeff (chartAt E3 z).symm) Φ (F x) = 1 := by
    unfold ejpPsi
    rw [inv_pow, Real.sq_sqrt hS0.le, inv_mul_cancel₀ hS0.ne']
  
  have hlap := ejp_immersion_lap2 (g.coeff (chartAt E3 z).symm) Φ
    (ejpPsi (g.coeff (chartAt E3 z).symm) Φ) U hU hGU hGsymm hGposU hΦ hdΦ hψ F W hW hF hFW x hx
  have hamb := ejp_ambient_identity (g.coeff (chartAt E3 z).symm) Φ U hU hGU hGsymm hGposU
    hΦ hdΦ (F x) hFxU
  have hJx := hJ x hx
  have hL : lap2 (pullMetric2 (g.coeff (chartAt E3 z).symm) F)
      (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x =
      -(ejpPot (g.coeff (chartAt E3 z).symm) Φ (F x)) *
        ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x) - c := by
    linear_combination hlap + hamb -
      ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x) ^ 2 * hJx - c * hS2
  have hLdiv : lap2 (pullMetric2 (g.coeff (chartAt E3 z).symm) F)
      (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x /
        ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x) =
      -(ejpPot (g.coeff (chartAt E3 z).symm) Φ (F x)) -
        c * (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x))⁻¹ := by
    rw [hL]
    field_simp
  
  have hconf := gaussCurv2_conformal_mul (pullMetric2 (g.coeff (chartAt E3 z).symm) F)
    (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) W hW hh hhsymm hhpos hu hupos x hx
  beta_reduce at hconf
  
  have hgauss := gs_gauss_equation (g.coeff (chartAt E3 z).symm) (chartAt E3 z).target
    (chartAt E3 z).open_target hGs hGsymm hGpos F W hW hF hFt hinj x hx
  
  have hzero : ∀ᶠ y in 𝓝 x, Φ (F y) = 0 := Filter.eventually_of_mem (hW.mem_nhds hx) hΦF
  have hΦ2 : ContDiffAt ℝ 2 Φ (F x) :=
    (hΦ.contDiffAt (hU.mem_nhds hFxU)).of_le (WithTop.coe_le_coe.mpr le_top)
  have hsff := (gs_levelset_param (g.coeff (chartAt E3 z).symm) F Φ W hW x hx hF
    (hinj x hx) hGsymm (hGpos _ (hFt x hx)) hΦ2 (hdΦ _ hFxU) hzero).1
  have hpot : ejpPot (g.coeff (chartAt E3 z).symm) Φ (F x) =
      gsSffSq (g.coeff (chartAt E3 z).symm) F x + ejpRic (g.coeff (chartAt E3 z).symm) Φ (F x) := by
    rw [← hsff]
    rfl
  
  have htan : ∀ i : Fin 2, fderiv ℝ Φ (F x) (fderiv ℝ F x (e2 i)) = 0 := by
    intro i
    have hΦd : DifferentiableAt ℝ Φ (F x) :=
      (hΦ.contDiffAt (hU.mem_nhds hFxU)).differentiableAt (by simp)
    have hFd : DifferentiableAt ℝ F x :=
      (hF.contDiffAt (hW.mem_nhds hx)).differentiableAt (by simp)
    have hc : fderiv ℝ (fun y => Φ (F y)) x = (fderiv ℝ Φ (F x)).comp (fderiv ℝ F x) :=
      fderiv_comp x hΦd hFd
    have h0 : fderiv ℝ (fun y => Φ (F y)) x = 0 := by
      rw [(show (fun y => Φ (F y)) =ᶠ[𝓝 x] fun _ => (0 : ℝ) from hzero).fderiv_eq]
      exact fderiv_const_apply _
    have h3 := congrArg (fun L : E2 →L[ℝ] ℝ => L (e2 i)) (hc.symm.trans h0)
    simpa using h3
  
  have htrace := jcc_scalar_trace (g.coeff (chartAt E3 z).symm) (chartAt E3 z).target
    (chartAt E3 z).open_target hGs hGsymm hGpos Φ F x (hFt x hx) (hinj x hx) (hdΦ _ hFxU) htan
  
  let Φc : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞ :=
    { toPartialEquiv := (chartAt E3 z).symm.toPartialEquiv
      open_source := (chartAt E3 z).open_target
      open_target := (chartAt E3 z).open_source
      contMDiffOn_toFun := contMDiffOn_chart_symm
      contMDiffOn_invFun := contMDiffOn_chart }
  have hRc : g.scalarCurvature ((chartAt E3 z).symm (F x)) =
      scalarCurvatureLocal (g.coeff (chartAt E3 z).symm) (F x) :=
    scalarCurvature_eq_scalarCurvatureLocal_coeff g Φc (F x) (hFt x hx)
  have hRnn : 0 ≤ g.scalarCurvature ((chartAt E3 z).symm (F x)) := hR _
  
  have hhinv : ((pullMetric2 (g.coeff (chartAt E3 z).symm) F x)⁻¹).PosDef := (hhpos x hx).inv
  have hQv : (∑ a : Fin 2, ∑ b : Fin 2, (pullMetric2 (g.coeff (chartAt E3 z).symm) F x)⁻¹ a b *
      pd2 a (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x *
      pd2 b (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x) =
      dotProduct (star (fun a : Fin 2 => pd2 a
          (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x))
        (Matrix.mulVec (pullMetric2 (g.coeff (chartAt E3 z).symm) F x)⁻¹
          (fun a : Fin 2 => pd2 a (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x)) := by
    simp only [star_trivial, dotProduct, Matrix.mulVec, Fin.sum_univ_two]
    ring
  have hQnn : 0 ≤ (∑ a : Fin 2, ∑ b : Fin 2,
      (pullMetric2 (g.coeff (chartAt E3 z).symm) F x)⁻¹ a b *
      pd2 a (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x *
      pd2 b (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x) := by
    by_cases hv0 : (fun a : Fin 2 =>
        pd2 a (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x) = 0
    · have h0 : ∀ a : Fin 2,
          pd2 a (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x = 0 :=
        fun a => congrFun hv0 a
      simp [h0]
    · rw [hQv]
      exact (hhinv.dotProduct_mulVec_pos hv0).le
  have hQdiv := div_nonneg hQnn (sq_nonneg (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x)))
  have hH2 := sq_nonneg (gsMeanCurv (g.coeff (chartAt E3 z).symm) F x)
  have hstar : gaussCurv2 (fun y => (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) ^ 2 •
        pullMetric2 (g.coeff (chartAt E3 z).symm) F y) x *
        (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x)) ^ 2 =
      c * (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x))⁻¹ +
        g.scalarCurvature ((chartAt E3 z).symm (F x)) / 2 +
        gsSffSq (g.coeff (chartAt E3 z).symm) F x / 2 +
        gsMeanCurv (g.coeff (chartAt E3 z).symm) F x ^ 2 / 2 +
        (∑ a : Fin 2, ∑ b : Fin 2, (pullMetric2 (g.coeff (chartAt E3 z).symm) F x)⁻¹ a b *
          pd2 a (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x *
          pd2 b (fun y => ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F y)) x) /
          (ejpPsi (g.coeff (chartAt E3 z).symm) Φ (F x)) ^ 2 := by
    linear_combination hconf - hLdiv + hgauss + hpot - (1 / 2 : ℝ) * hRc - (1 / 2 : ℝ) * htrace
  rw [hstar]
  linarith [hA2 x hx]

theorem gaussCurv2_continuousOn (h : E2 → Matrix (Fin 2) (Fin 2) ℝ) (s : Set E2)
    (hs : IsOpen s) (hh : ∀ i j : Fin 2, ContDiffOn ℝ ∞ (fun x => h x i j) s)
    (hpos : ∀ x ∈ s, (h x).PosDef) :
    ContinuousOn (gaussCurv2 h) s :=
by
  have hinf : ∀ f : E2 → ℝ, ContDiffOn ℝ ∞ f s → ∀ c : Fin 2, ContDiffOn ℝ ∞ (pd2 c f) s := by
    intro f hf c
    have hfd : ContDiffOn ℝ ∞ (fun y => fderiv ℝ f y) s :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hs).1 hf).2
    exact hfd.clm_apply contDiffOn_const
  have hdet : ∀ y ∈ s, (h y).det ≠ 0 := fun y hy => (hpos y hy).det_pos.ne'
  have hdetS : ContDiffOn ℝ ∞ (fun y => (h y).det) s := by
    have heq : (fun y => (h y).det) = fun y => h y 0 0 * h y 1 1 - h y 0 1 * h y 1 0 := by
      funext y
      exact Matrix.det_fin_two (h y)
    rw [heq]
    exact ((hh 0 0).mul (hh 1 1)).sub ((hh 0 1).mul (hh 1 0))
  have hadj : ∀ i j : Fin 2, ContDiffOn ℝ ∞ (fun y => (h y).adjugate i j) s := by
    intro i j
    fin_cases i <;> fin_cases j <;> simp [Matrix.adjugate_fin_two] <;>
      first | exact hh _ _ | exact (hh _ _).neg
  have hinv : ∀ i j : Fin 2, ContDiffOn ℝ ∞ (fun y => (h y)⁻¹ i j) s := by
    intro i j
    have heq : (fun y => (h y)⁻¹ i j) = fun y => ((h y).det)⁻¹ * (h y).adjugate i j := by
      funext y
      rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
    rw [heq]
    exact (hdetS.inv hdet).mul (hadj i j)
  have hchr : ∀ k i j : Fin 2, ContDiffOn ℝ ∞ (christoffel2 h k i j) s := by
    intro k i j
    show ContDiffOn ℝ ∞ (fun x => (1 / 2 : ℝ) * ∑ l : Fin 2, (h x)⁻¹ k l *
      (pd2 i (fun z => h z j l) x + pd2 j (fun z => h z i l) x - pd2 l (fun z => h z i j) x)) s
    exact contDiffOn_const.mul (ContDiffOn.sum fun l _ => (hinv k l).mul
      (((hinf _ (hh j l) i).add (hinf _ (hh i l) j)).sub (hinf _ (hh i j) l)))
  have hchrC : ∀ k i j : Fin 2, ContinuousOn (christoffel2 h k i j) s :=
    fun k i j => (hchr k i j).continuousOn
  have hdchr : ∀ c k i j : Fin 2, ContinuousOn (pd2 c (christoffel2 h k i j)) s :=
    fun c k i j => (hinf _ (hchr k i j) c).continuousOn
  have hric : ∀ j k : Fin 2, ContinuousOn (ricci2 h j k) s := by
    intro j k
    show ContinuousOn (fun x => ∑ i : Fin 2,
        (pd2 i (christoffel2 h i j k) x - pd2 j (christoffel2 h i i k) x)
      + ∑ i : Fin 2, ∑ p : Fin 2,
          (christoffel2 h i i p x * christoffel2 h p j k x
            - christoffel2 h i j p x * christoffel2 h p i k x)) s
    exact (continuousOn_finset_sum _ fun i _ => (hdchr i i j k).sub (hdchr j i i k)).add
      (continuousOn_finset_sum _ fun i _ => continuousOn_finset_sum _ fun p _ =>
        ((hchrC i i p).mul (hchrC p j k)).sub ((hchrC i j p).mul (hchrC p i k)))
  show ContinuousOn
    (fun x => (1 / 2 : ℝ) * ∑ j : Fin 2, ∑ k : Fin 2, (h x)⁻¹ j k * ricci2 h j k x) s
  exact continuousOn_const.mul (continuousOn_finset_sum _ fun j _ =>
    continuousOn_finset_sum _ fun k _ => (hinv j k).continuousOn.mul (hric j k))

theorem christoffel2_family_smooth (W : Set E2) (hW : IsOpen W) (a b : ℝ)
    (H : ℝ → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hs : ∀ c d : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => H p.1 p.2 c d) (Set.Ioo a b ×ˢ W))
    (hpos : ∀ t ∈ Set.Ioo a b, ∀ x ∈ W, (H t x).PosDef) :
    ∀ k i j : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => christoffel2 (H p.1) k i j p.2)
      (Set.Ioo a b ×ˢ W) :=
by
  intro k i j
  have hU : IsOpen (Set.Ioo a b ×ˢ W) := isOpen_Ioo.prod hW
  
  have hD : ∀ (F : ℝ → E2 → ℝ), ContDiffOn ℝ ∞ (fun p : ℝ × E2 => F p.1 p.2) (Set.Ioo a b ×ˢ W) →
      ∀ m : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => pd2 m (F p.1) p.2) (Set.Ioo a b ×ˢ W) := by
    intro F hF m
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2)) (Set.Ioo a b ×ˢ W) :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hU).1 hF).2
    have h2 : ContDiffOn ℝ ∞
        (fun p => fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2) p ((0 : ℝ), e2 m)) (Set.Ioo a b ×ˢ W) :=
      h1.clm_apply contDiffOn_const
    refine h2.congr ?_
    intro p hp
    have hdiff : DifferentiableAt ℝ (fun p : ℝ × E2 => F p.1 p.2) (p.1, p.2) := by
      rw [Prod.mk.eta]
      exact (hF.contDiffAt (hU.mem_nhds hp)).differentiableAt (by simp)
    have hι : HasFDerivAt (fun z : E2 => (p.1, z)) (ContinuousLinearMap.inr ℝ ℝ E2) p.2 :=
      hasFDerivAt_prodMk_right p.1 p.2
    have hcomp : HasFDerivAt (F p.1)
        ((fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2) (p.1, p.2)).comp
          (ContinuousLinearMap.inr ℝ ℝ E2)) p.2 :=
      hdiff.hasFDerivAt.comp p.2 hι
    simp only [pd2]
    rw [hcomp.fderiv]
    simp
  
  have hdet : ∀ p ∈ Set.Ioo a b ×ˢ W, (H p.1 p.2).det ≠ 0 :=
    fun p hp => (hpos p.1 hp.1 p.2 hp.2).det_pos.ne'
  have hdetS : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (H p.1 p.2).det) (Set.Ioo a b ×ˢ W) := by
    refine (((hs 0 0).mul (hs 1 1)).sub ((hs 0 1).mul (hs 1 0))).congr ?_
    intro p _
    simp [Matrix.det_fin_two]
  have hinv : ∀ r s : Fin 2,
      ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (H p.1 p.2)⁻¹ r s) (Set.Ioo a b ×ˢ W) := by
    intro r s
    have hadj : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (H p.1 p.2).adjugate r s)
        (Set.Ioo a b ×ˢ W) := by
      fin_cases r <;> fin_cases s <;> simp [Matrix.adjugate_fin_two] <;>
        first | exact hs _ _ | exact (hs _ _).neg
    refine ((hdetS.inv hdet).mul hadj).congr ?_
    intro p _
    simp [Matrix.inv_def, Ring.inverse_eq_inv]
  
  have hD' : ∀ c d m : Fin 2, ContDiffOn ℝ ∞
      (fun p : ℝ × E2 => pd2 m (fun z => H p.1 z c d) p.2) (Set.Ioo a b ×ˢ W) :=
    fun c d m => hD (fun t z => H t z c d) (hs c d) m
  show ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (1 / 2 : ℝ) * ∑ l : Fin 2, (H p.1 p.2)⁻¹ k l *
    (pd2 i (fun z => H p.1 z j l) p.2 + pd2 j (fun z => H p.1 z i l) p.2 -
      pd2 l (fun z => H p.1 z i j) p.2)) (Set.Ioo a b ×ˢ W)
  exact contDiffOn_const.mul (ContDiffOn.sum fun l _ =>
    (hinv k l).mul (((hD' j l i).add (hD' i l j)).sub (hD' i j l)))

theorem gb_family_regular (W : Set E2) (hW : IsOpen W) (a b : ℝ)
    (H : ℝ → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hs : ∀ c d : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => H p.1 p.2 c d) (Set.Ioo a b ×ˢ W))
    (hpos : ∀ t ∈ Set.Ioo a b, ∀ x ∈ W, (H t x).PosDef)
    (hΓ : ∀ k i j : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => christoffel2 (H p.1) k i j p.2)
      (Set.Ioo a b ×ˢ W)) :
    (∀ k i j : Fin 2, ∀ t ∈ Set.Ioo a b, ∀ x ∈ W,
      DifferentiableAt ℝ (fun s => christoffel2 (H s) k i j x) t) ∧
    ContinuousOn (fun p : ℝ × E2 => gaussCurv2 (H p.1) p.2 * Real.sqrt (H p.1 p.2).det)
      (Set.Ioo a b ×ˢ W) ∧
    (∀ e : Fin 2, ContinuousOn
      (fun p : ℝ × E2 => pd2 e (fun y => Real.sqrt (H p.1 y).det * gbW H p.1 y e) p.2)
      (Set.Ioo a b ×ˢ W)) ∧
    (∀ t ∈ Set.Ioo a b, ∀ e : Fin 2,
      ContDiffOn ℝ ∞ (fun y => Real.sqrt (H t y).det * gbW H t y e) W) ∧
    (∀ t ∈ Set.Ioo a b, ∀ e : Fin 2, ContinuousOn (fun y => gbW H t y e) W) ∧
    (∀ t ∈ Set.Ioo a b, ContinuousOn (fun y => Real.sqrt (H t y).det) W) :=
by
  have hU : IsOpen (Set.Ioo a b ×ˢ W) := isOpen_Ioo.prod hW
  
  have hD : ∀ (F : ℝ → E2 → ℝ), ContDiffOn ℝ ∞ (fun p : ℝ × E2 => F p.1 p.2) (Set.Ioo a b ×ˢ W) →
      ∀ m : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => pd2 m (F p.1) p.2) (Set.Ioo a b ×ˢ W) := by
    intro F hF m
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2)) (Set.Ioo a b ×ˢ W) :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hU).1 hF).2
    have h2 : ContDiffOn ℝ ∞
        (fun p => fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2) p ((0 : ℝ), e2 m)) (Set.Ioo a b ×ˢ W) :=
      h1.clm_apply contDiffOn_const
    refine h2.congr ?_
    intro p hp
    have hdiff : DifferentiableAt ℝ (fun p : ℝ × E2 => F p.1 p.2) (p.1, p.2) := by
      rw [Prod.mk.eta]
      exact (hF.contDiffAt (hU.mem_nhds hp)).differentiableAt (by simp)
    have hι : HasFDerivAt (fun z : E2 => (p.1, z)) (ContinuousLinearMap.inr ℝ ℝ E2) p.2 :=
      hasFDerivAt_prodMk_right p.1 p.2
    have hcomp : HasFDerivAt (F p.1)
        ((fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2) (p.1, p.2)).comp
          (ContinuousLinearMap.inr ℝ ℝ E2)) p.2 :=
      hdiff.hasFDerivAt.comp p.2 hι
    simp only [pd2]
    rw [hcomp.fderiv]
    simp
  
  have hT : ∀ (F : ℝ → E2 → ℝ), ContDiffOn ℝ ∞ (fun p : ℝ × E2 => F p.1 p.2) (Set.Ioo a b ×ˢ W) →
      ContDiffOn ℝ ∞ (fun p : ℝ × E2 => deriv (fun s => F s p.2) p.1) (Set.Ioo a b ×ˢ W) := by
    intro F hF
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2)) (Set.Ioo a b ×ˢ W) :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hU).1 hF).2
    have h2 : ContDiffOn ℝ ∞
        (fun p => fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2) p ((1 : ℝ), (0 : E2)))
        (Set.Ioo a b ×ˢ W) :=
      h1.clm_apply contDiffOn_const
    refine h2.congr ?_
    intro p hp
    have hdiff : DifferentiableAt ℝ (fun p : ℝ × E2 => F p.1 p.2) (p.1, p.2) := by
      rw [Prod.mk.eta]
      exact (hF.contDiffAt (hU.mem_nhds hp)).differentiableAt (by simp)
    have hι : HasFDerivAt (fun s : ℝ => (s, p.2)) (ContinuousLinearMap.inl ℝ ℝ E2) p.1 :=
      hasFDerivAt_prodMk_left p.1 p.2
    have hcomp0 := hdiff.hasFDerivAt.comp p.1 hι
    have hcomp : HasFDerivAt (fun s => F s p.2)
        ((fderiv ℝ (fun p : ℝ × E2 => F p.1 p.2) (p.1, p.2)).comp
          (ContinuousLinearMap.inl ℝ ℝ E2)) p.1 := hcomp0
    rw [hcomp.hasDerivAt.deriv]
    simp
  
  have hdetpos : ∀ p ∈ Set.Ioo a b ×ˢ W, 0 < (H p.1 p.2).det :=
    fun p hp => (hpos p.1 hp.1 p.2 hp.2).det_pos
  have hdet : ∀ p ∈ Set.Ioo a b ×ˢ W, (H p.1 p.2).det ≠ 0 :=
    fun p hp => (hdetpos p hp).ne'
  have hdetS : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (H p.1 p.2).det) (Set.Ioo a b ×ˢ W) := by
    refine (((hs 0 0).mul (hs 1 1)).sub ((hs 0 1).mul (hs 1 0))).congr ?_
    intro p _
    simp [Matrix.det_fin_two]
  have hinv : ∀ r s : Fin 2,
      ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (H p.1 p.2)⁻¹ r s) (Set.Ioo a b ×ˢ W) := by
    intro r s
    have hadj : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => (H p.1 p.2).adjugate r s)
        (Set.Ioo a b ×ˢ W) := by
      fin_cases r <;> fin_cases s <;> simp [Matrix.adjugate_fin_two] <;>
        first | exact hs _ _ | exact (hs _ _).neg
    refine ((hdetS.inv hdet).mul hadj).congr ?_
    intro p _
    simp [Matrix.inv_def, Ring.inverse_eq_inv]
  
  have hdot : ∀ k i j : Fin 2, ContDiffOn ℝ ∞
      (fun p : ℝ × E2 => deriv (fun s => christoffel2 (H s) k i j p.2) p.1) (Set.Ioo a b ×ˢ W) :=
    fun k i j => hT (fun s x => christoffel2 (H s) k i j x) (hΓ k i j)
  have hpdΓ : ∀ c k i j : Fin 2, ContDiffOn ℝ ∞
      (fun p : ℝ × E2 => pd2 c (christoffel2 (H p.1) k i j) p.2) (Set.Ioo a b ×ˢ W) :=
    fun c k i j => hD (fun s => christoffel2 (H s) k i j) (hΓ k i j) c
  have hsq : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => Real.sqrt (H p.1 p.2).det) (Set.Ioo a b ×ˢ W) :=
    hdetS.sqrt hdet
  have hgb : ∀ e : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => gbW H p.1 p.2 e)
      (Set.Ioo a b ×ˢ W) := by
    intro e
    unfold gbW
    exact (ContDiffOn.sum fun b _ => ContDiffOn.sum fun c _ => (hinv b c).mul (hdot e b c)).sub
      (ContDiffOn.sum fun b _ => (hinv e b).mul (ContDiffOn.sum fun c _ => hdot c c b))
  have hΨ : ∀ e : Fin 2, ContDiffOn ℝ ∞
      (fun p : ℝ × E2 => Real.sqrt (H p.1 p.2).det * gbW H p.1 p.2 e) (Set.Ioo a b ×ˢ W) :=
    fun e => hsq.mul (hgb e)
  have hK : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => gaussCurv2 (H p.1) p.2) (Set.Ioo a b ×ˢ W) := by
    unfold gaussCurv2 ricci2
    exact contDiffOn_const.mul (ContDiffOn.sum fun j _ => ContDiffOn.sum fun k _ =>
      (hinv j k).mul
        ((ContDiffOn.sum fun i _ => (hpdΓ i i j k).sub (hpdΓ j i i k)).add
          (ContDiffOn.sum fun i _ => ContDiffOn.sum fun q _ =>
            ((hΓ i i q).mul (hΓ q j k)).sub ((hΓ i j q).mul (hΓ q i k)))))
  have hm : ∀ t ∈ Set.Ioo a b, Set.MapsTo (fun y : E2 => (t, y)) W (Set.Ioo a b ×ˢ W) :=
    fun t ht y hy => ⟨ht, hy⟩
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro k i j t ht x hx
    have hd : DifferentiableAt ℝ (fun p : ℝ × E2 => christoffel2 (H p.1) k i j p.2) (t, x) :=
      ((hΓ k i j).contDiffAt (hU.mem_nhds ⟨ht, hx⟩)).differentiableAt (by simp)
    have hι : DifferentiableAt ℝ (fun s : ℝ => (s, x)) t :=
      (hasFDerivAt_prodMk_left (𝕜 := ℝ) t x).differentiableAt
    have hc := hd.comp t hι
    exact hc
  · exact (hK.mul hsq).continuousOn
  · intro e
    exact (hD (fun s y => Real.sqrt (H s y).det * gbW H s y e) (hΨ e) e).continuousOn
  · intro t ht e
    exact (hΨ e).comp (contDiff_const.prodMk contDiff_id).contDiffOn (hm t ht)
  · intro t ht e
    exact ((hgb e).comp (contDiff_const.prodMk contDiff_id).contDiffOn (hm t ht)).continuousOn
  · intro t ht
    exact (hsq.comp (contDiff_const.prodMk contDiff_id).contDiffOn (hm t ht)).continuousOn

theorem ricci2_two_dim (W : Set E2) (hW : IsOpen W) (h : E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hh : ∀ c d : Fin 2, ContDiffOn ℝ ∞ (fun y => h y c d) W)
    (hpd : ∀ y ∈ W, (h y).PosDef) (x : E2) (hx : x ∈ W) (j k : Fin 2) :
    ricci2 h j k x = gaussCurv2 h x * h x j k :=
by
  have hxU : W ∈ 𝓝 x := hW.mem_nhds hx
  have hsymm : ∀ z ∈ W, ∀ a b : Fin 2, h z a b = h z b a := by
    intro z hz a b
    have := (hpd z hz).isHermitian.apply b a
    simpa using this
  have hdh : ∀ a b : Fin 2, DifferentiableAt ℝ (fun z => h z a b) x := fun a b =>
    ((hh a b).differentiableOn (by simp)).differentiableAt hxU
  have hdP : ∀ c a b : Fin 2, DifferentiableAt ℝ (fun y => pd2 c (fun z => h z a b) y) x := by
    intro c a b
    have h1 : ContDiffOn ℝ 1 (fun y => fderiv ℝ (fun z => h z a b) y) W :=
      (hh a b).fderiv_of_isOpen hW (WithTop.coe_le_coe.mpr le_top)
    have h2 : ContDiffOn ℝ 1 (fun y => pd2 c (fun z => h z a b) y) W :=
      h1.clm_apply contDiffOn_const
    exact (h2.differentiableOn (by norm_num)).differentiableAt hxU
  
  have hschw : ∀ (f : E2 → ℝ), ContDiffOn ℝ ∞ f W → ∀ c e : Fin 2,
      pd2 e (fun y => pd2 c f y) x = pd2 c (fun y => pd2 e f y) x := by
    intro f hf c e
    have hfx : ContDiffAt ℝ ∞ f x := hf.contDiffAt hxU
    have hsym : IsSymmSndFDerivAt ℝ f x := hfx.isSymmSndFDerivAt (by
      rw [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.mpr le_top)
    have hdf : DifferentiableAt ℝ (fderiv ℝ f) x :=
      (hfx.fderiv_right (m := 1) (WithTop.coe_le_coe.mpr le_top)).differentiableAt one_ne_zero
    have key : ∀ u v : Fin 2,
        pd2 v (fun y => pd2 u f y) x = fderiv ℝ (fderiv ℝ f) x (e2 v) (e2 u) := by
      intro u v
      unfold pd2
      rw [fderiv_clm_apply hdf (differentiableAt_const (e2 u))]
      simp
    rw [key, key]
    exact hsym _ _
  
  have pmul : ∀ (f g : E2 → ℝ) (k : Fin 2), DifferentiableAt ℝ f x → DifferentiableAt ℝ g x →
      pd2 k (fun z => f z * g z) x = pd2 k f x * g x + f x * pd2 k g x := by
    intro f g k hf hg
    unfold pd2
    rw [fderiv_fun_mul hf hg]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have padd : ∀ (f g : E2 → ℝ) (k : Fin 2), DifferentiableAt ℝ f x → DifferentiableAt ℝ g x →
      pd2 k (fun z => f z + g z) x = pd2 k f x + pd2 k g x := by
    intro f g k hf hg
    unfold pd2
    rw [fderiv_fun_add hf hg]
    rfl
  have psub : ∀ (f g : E2 → ℝ) (k : Fin 2), DifferentiableAt ℝ f x → DifferentiableAt ℝ g x →
      pd2 k (fun z => f z - g z) x = pd2 k f x - pd2 k g x := by
    intro f g k hf hg
    unfold pd2
    rw [fderiv_fun_sub hf hg]
    rfl
  have pneg : ∀ (f : E2 → ℝ) (k : Fin 2), pd2 k (fun z => -f z) x = -pd2 k f x := by
    intro f k
    unfold pd2
    rw [show (fun z => -f z) = -f from rfl, fderiv_neg]
    rfl
  have pcmul : ∀ (c : ℝ) (f : E2 → ℝ) (k : Fin 2), DifferentiableAt ℝ f x →
      pd2 k (fun z => c * f z) x = c * pd2 k f x := by
    intro c f k hf
    unfold pd2
    rw [fderiv_const_mul hf c]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
  have pinv : ∀ (f : E2 → ℝ) (k : Fin 2), DifferentiableAt ℝ f x → f x ≠ 0 →
      pd2 k (fun z => (f z)⁻¹) x = -pd2 k f x / (f x) ^ 2 := by
    intro f k hf hf0
    unfold pd2
    have H := (hasDerivAt_inv hf0).comp_hasFDerivAt x hf.hasFDerivAt
    rw [show (fun z => (f z)⁻¹) = (fun y : ℝ => y⁻¹) ∘ f from rfl, H.fderiv]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
    field_simp
  
  have hinvE : ∀ (A : Matrix (Fin 2) (Fin 2) ℝ) (i j : Fin 2),
      A⁻¹ i j = A.det⁻¹ * A.adjugate i j := by
    intro A i j
    rw [Matrix.inv_def, Ring.inverse_eq_inv']
    rfl
  have hadj00 : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, A.adjugate 0 0 = A 1 1 := by
    intro A; simp [Matrix.adjugate_fin_two]
  have hadj01 : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, A.adjugate 0 1 = -A 0 1 := by
    intro A; simp [Matrix.adjugate_fin_two]
  have hadj10 : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, A.adjugate 1 0 = -A 1 0 := by
    intro A; simp [Matrix.adjugate_fin_two]
  have hadj11 : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, A.adjugate 1 1 = A 0 0 := by
    intro A; simp [Matrix.adjugate_fin_two]
  have hdetE : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, A.det = A 0 0 * A 1 1 - A 0 1 * A 1 0 :=
    fun A => Matrix.det_fin_two A
  have hDpos : 0 < (h x).det := (hpd x hx).det_pos
  have hD0 : (h x).det ≠ 0 := hDpos.ne'
  have hdetfun : (fun z => (h z).det) = fun z => h z 0 0 * h z 1 1 - h z 0 1 * h z 1 0 := by
    funext z; exact hdetE (h z)
  have hdD : DifferentiableAt ℝ (fun z => (h z).det) x := by
    rw [hdetfun]; exact ((hdh 0 0).mul (hdh 1 1)).sub ((hdh 0 1).mul (hdh 1 0))
  have hdI : ∀ i j : Fin 2, DifferentiableAt ℝ (fun z => (h z)⁻¹ i j) x := by
    intro i j
    have e : (fun z => (h z)⁻¹ i j) = fun z => ((h z).det)⁻¹ * (h z).adjugate i j :=
      funext fun z => hinvE (h z) i j
    rw [e]
    refine (hdD.inv hD0).mul ?_
    fin_cases i <;> fin_cases j
    · simp only [Fin.zero_eta, hadj00]; exact hdh 1 1
    · simp only [Fin.zero_eta, Fin.mk_one, hadj01]; exact (hdh 0 1).neg
    · simp only [Fin.zero_eta, Fin.mk_one, hadj10]; exact (hdh 1 0).neg
    · simp only [Fin.mk_one, hadj11]; exact hdh 0 0
  have pD : ∀ k : Fin 2, pd2 k (fun z => (h z).det) x =
      pd2 k (fun z => h z 0 0) x * h x 1 1 + h x 0 0 * pd2 k (fun z => h z 1 1) x -
        (pd2 k (fun z => h z 0 1) x * h x 1 0 + h x 0 1 * pd2 k (fun z => h z 1 0) x) := by
    intro k
    rw [hdetfun, psub _ _ k ((hdh 0 0).fun_mul (hdh 1 1)) ((hdh 0 1).fun_mul (hdh 1 0)),
      pmul _ _ k (hdh 0 0) (hdh 1 1), pmul _ _ k (hdh 0 1) (hdh 1 0)]
  have pI00 : ∀ k : Fin 2, pd2 k (fun z => (h z)⁻¹ 0 0) x =
      -pd2 k (fun z => (h z).det) x / (h x).det ^ 2 * h x 1 1 +
        (h x).det⁻¹ * pd2 k (fun z => h z 1 1) x := by
    intro k
    simp only [hinvE, hadj00]
    rw [pmul _ _ k (hdD.fun_inv hD0) (hdh 1 1), pinv _ k hdD hD0]
  have pI01 : ∀ k : Fin 2, pd2 k (fun z => (h z)⁻¹ 0 1) x =
      -pd2 k (fun z => (h z).det) x / (h x).det ^ 2 * (-h x 0 1) +
        (h x).det⁻¹ * (-pd2 k (fun z => h z 0 1) x) := by
    intro k
    simp only [hinvE, hadj01]
    rw [pmul _ _ k (hdD.fun_inv hD0) (hdh 0 1).fun_neg, pinv _ k hdD hD0, pneg]
  have pI10 : ∀ k : Fin 2, pd2 k (fun z => (h z)⁻¹ 1 0) x =
      -pd2 k (fun z => (h z).det) x / (h x).det ^ 2 * (-h x 1 0) +
        (h x).det⁻¹ * (-pd2 k (fun z => h z 1 0) x) := by
    intro k
    simp only [hinvE, hadj10]
    rw [pmul _ _ k (hdD.fun_inv hD0) (hdh 1 0).fun_neg, pinv _ k hdD hD0, pneg]
  have pI11 : ∀ k : Fin 2, pd2 k (fun z => (h z)⁻¹ 1 1) x =
      -pd2 k (fun z => (h z).det) x / (h x).det ^ 2 * h x 0 0 +
        (h x).det⁻¹ * pd2 k (fun z => h z 0 0) x := by
    intro k
    simp only [hinvE, hadj11]
    rw [pmul _ _ k (hdD.fun_inv hD0) (hdh 0 0), pinv _ k hdD hD0]
  
  have pdinv : ∀ e k l : Fin 2, pd2 e (fun y => (h y)⁻¹ k l) x =
      -∑ p : Fin 2, ∑ q : Fin 2, (h x)⁻¹ k p * pd2 e (fun y => h y p q) x * (h x)⁻¹ q l := by
    intro e k l
    fin_cases k <;> fin_cases l
    all_goals
      simp only [Fin.zero_eta, Fin.mk_one, Fin.isValue, pI00, pI01, pI10, pI11, pD,
        Fin.sum_univ_two, hinvE (h x), hadj00, hadj01, hadj10, hadj11]
      field_simp
      simp only [hdetE (h x)]
      ring
  
  have hs2 : ∀ e k i j : Fin 2, pd2 e (christoffel2 h k i j) x =
      (1 / 2 : ℝ) * ∑ l : Fin 2,
        ((-∑ p : Fin 2, ∑ q : Fin 2, (h x)⁻¹ k p * pd2 e (fun y => h y p q) x * (h x)⁻¹ q l) *
            (pd2 i (fun z => h z j l) x + pd2 j (fun z => h z i l) x - pd2 l (fun z => h z i j) x) +
          (h x)⁻¹ k l *
            (pd2 e (fun y => pd2 i (fun z => h z j l) y) x +
              pd2 e (fun y => pd2 j (fun z => h z i l) y) x -
              pd2 e (fun y => pd2 l (fun z => h z i j) y) x)) := by
    intro e k i j
    have hP : ∀ l : Fin 2, DifferentiableAt ℝ (fun y => pd2 i (fun z => h z j l) y +
        pd2 j (fun z => h z i l) y - pd2 l (fun z => h z i j) y) x :=
      fun l => ((hdP i j l).fun_add (hdP j i l)).fun_sub (hdP l i j)
    have hX : ∀ l : Fin 2, DifferentiableAt ℝ (fun y => (h y)⁻¹ k l * (pd2 i (fun z => h z j l) y +
        pd2 j (fun z => h z i l) y - pd2 l (fun z => h z i j) y)) x :=
      fun l => (hdI k l).fun_mul (hP l)
    have hT : ∀ l : Fin 2, pd2 e (fun y => (h y)⁻¹ k l * (pd2 i (fun z => h z j l) y +
        pd2 j (fun z => h z i l) y - pd2 l (fun z => h z i j) y)) x =
        pd2 e (fun y => (h y)⁻¹ k l) x *
          (pd2 i (fun z => h z j l) x + pd2 j (fun z => h z i l) x - pd2 l (fun z => h z i j) x) +
        (h x)⁻¹ k l * (pd2 e (fun y => pd2 i (fun z => h z j l) y) x +
              pd2 e (fun y => pd2 j (fun z => h z i l) y) x -
              pd2 e (fun y => pd2 l (fun z => h z i j) y) x) := by
      intro l
      rw [pmul _ _ e (hdI k l) (hP l), psub _ _ e ((hdP i j l).fun_add (hdP j i l)) (hdP l i j),
        padd _ _ e (hdP i j l) (hdP j i l)]
    show pd2 e (fun y => (1 / 2 : ℝ) * ∑ l : Fin 2, (h y)⁻¹ k l *
      (pd2 i (fun z => h z j l) y + pd2 j (fun z => h z i l) y - pd2 l (fun z => h z i j) y)) x = _
    simp only [Fin.sum_univ_two]
    rw [pcmul _ _ e ((hX 0).fun_add (hX 1)), padd _ _ e (hX 0) (hX 1), hT 0, hT 1]
    simp only [pdinv, Fin.sum_univ_two]
  
  have key : ∀ (A : Matrix (Fin 2) (Fin 2) ℝ), A 1 0 = A 0 1 → A.det ≠ 0 →
      ∀ (d : Fin 2 → Fin 2 → Fin 2 → ℝ), (∀ c, d c 1 0 = d c 0 1) →
      ∀ (dd : Fin 2 → Fin 2 → Fin 2 → Fin 2 → ℝ), (∀ a b, dd 1 0 a b = dd 0 1 a b) →
      ∀ (Γ : Fin 2 → Fin 2 → Fin 2 → ℝ),
        (∀ k i j, Γ k i j = (1 / 2 : ℝ) * ∑ l : Fin 2, A⁻¹ k l * (d i j l + d j i l - d l i j)) →
      ∀ (dΓ : Fin 2 → Fin 2 → Fin 2 → Fin 2 → ℝ),
        (∀ e k i j, dΓ e k i j = (1 / 2 : ℝ) * ∑ l : Fin 2,
          ((-∑ p : Fin 2, ∑ q : Fin 2, A⁻¹ k p * d e p q * A⁻¹ q l) * (d i j l + d j i l - d l i j) +
            A⁻¹ k l * (dd e i j l + dd e j i l - dd e l i j))) →
      ∀ j k : Fin 2,
        (∑ i : Fin 2, (dΓ i i j k - dΓ j i i k) +
            ∑ i : Fin 2, ∑ p : Fin 2, (Γ i i p * Γ p j k - Γ i j p * Γ p i k)) =
          ((1 / 2 : ℝ) * ∑ a : Fin 2, ∑ b : Fin 2, A⁻¹ a b *
              (∑ i : Fin 2, (dΓ i i a b - dΓ a i i b) +
                ∑ i : Fin 2, ∑ p : Fin 2, (Γ i i p * Γ p a b - Γ i a p * Γ p i b))) * A j k := by
    intro A hA hdet d hd dd hdd Γ hΓ dΓ hdΓ j k
    have hDdef : A.det = A 0 0 * A 1 1 - A 0 1 * A 0 1 := by
      rw [Matrix.det_fin_two, hA]
    fin_cases j <;> fin_cases k <;>
    · simp only [Fin.zero_eta, Fin.mk_one, Fin.isValue, hΓ, hdΓ, Fin.sum_univ_two, hinvE A,
        hadj00, hadj01, hadj10, hadj11, hA, hd, hdd]
      generalize A.det = D at hdet hDdef ⊢
      generalize A 0 0 = a at hDdef ⊢
      generalize A 0 1 = b at hDdef ⊢
      generalize A 1 1 = c at hDdef ⊢
      field_simp
      rw [hDdef]
      ring
  
  have hd : ∀ c : Fin 2, pd2 c (fun y => h y 1 0) x = pd2 c (fun y => h y 0 1) x := by
    intro c
    have hev : (fun z => h z 1 0) =ᶠ[𝓝 x] (fun z => h z 0 1) :=
      Filter.eventually_of_mem hxU (fun z hz => hsymm z hz 1 0)
    unfold pd2
    rw [Filter.EventuallyEq.fderiv_eq hev]
  have hdd : ∀ a b : Fin 2, pd2 1 (fun y => pd2 0 (fun z => h z a b) y) x =
      pd2 0 (fun y => pd2 1 (fun z => h z a b) y) x :=
    fun a b => hschw _ (hh a b) 0 1
  exact key (h x) (hsymm x hx 1 0) hD0 (fun c a b => pd2 c (fun y => h y a b) x) hd
    (fun e c a b => pd2 e (fun y => pd2 c (fun z => h z a b) y) x) hdd
    (fun k i j => christoffel2 h k i j x) (fun k i j => rfl)
    (fun e k i j => pd2 e (christoffel2 h k i j) x) hs2 j k

theorem gb_variation_pointwise (W : Set E2) (hW : IsOpen W) (a b : ℝ)
    (H : ℝ → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hs : ∀ c d : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => H p.1 p.2 c d) (Set.Ioo a b ×ˢ W))
    (hpos : ∀ t ∈ Set.Ioo a b, ∀ x ∈ W, (H t x).PosDef)
    (hΓ : ∀ k i j : Fin 2, ContDiffOn ℝ ∞ (fun p : ℝ × E2 => christoffel2 (H p.1) k i j p.2)
      (Set.Ioo a b ×ˢ W))
    (t : ℝ) (ht : t ∈ Set.Ioo a b) (x : E2) (hx : x ∈ W)
    (hric : ∀ j k : Fin 2, ricci2 (H t) j k x = gaussCurv2 (H t) x * H t x j k) :
    HasDerivAt (fun s => gaussCurv2 (H s) x * Real.sqrt (H s x).det)
      ((1 / 2 : ℝ) * ∑ e : Fin 2, pd2 e (fun y => Real.sqrt (H t y).det * gbW H t y e) x) t :=
by
  
  have mat2_inv_sqrtDet_hasFDerivAt : ∀ {V : Type} [NormedAddCommGroup V] [NormedSpace ℝ V]
      (M : V → Matrix (Fin 2) (Fin 2) ℝ) (v : V) (L : Fin 2 → Fin 2 → V →L[ℝ] ℝ),
      (∀ a b : Fin 2, HasFDerivAt (fun u => M u a b) (L a b) v) →
      0 < (M v).det →
      (∀ i j : Fin 2, HasFDerivAt (fun u => (M u)⁻¹ i j)
        (-(∑ a : Fin 2, ∑ b : Fin 2, ((M v)⁻¹ i a * (M v)⁻¹ b j) • L a b)) v) ∧
      HasFDerivAt (fun u => Real.sqrt (M u).det)
        (((1 / 2 : ℝ) * Real.sqrt (M v).det) • ∑ a : Fin 2, ∑ b : Fin 2, (M v)⁻¹ b a • L a b) v := by
    intro V _ _ M v L hM hdet
    have hdet_eq : ∀ u, (M u).det = M u 0 0 * M u 1 1 - M u 0 1 * M u 1 0 :=
      fun u => Matrix.det_fin_two _
    have hD : HasFDerivAt (fun u => (M u).det)
        (M v 0 0 • L 1 1 + M v 1 1 • L 0 0 - (M v 0 1 • L 1 0 + M v 1 0 • L 0 1)) v := by
      have h := ((hM 0 0).mul (hM 1 1)).sub ((hM 0 1).mul (hM 1 0))
      simp only [hdet_eq]
      exact h
    have hinvE : ∀ u (i j : Fin 2), (M u)⁻¹ i j = ((M u).det)⁻¹ * (M u).adjugate i j := by
      intro u i j
      rw [Matrix.inv_def, Matrix.smul_apply, smul_eq_mul, Ring.inverse_eq_inv']
    have hdi := (hasFDerivAt_inv hdet.ne').comp v hD
    have hgen : ∀ (f : V → ℝ) (f' : V →L[ℝ] ℝ), HasFDerivAt f f' v →
        HasFDerivAt (fun u => ((M u).det)⁻¹ * f u)
          (((M v).det)⁻¹ • f' + f v • ((ContinuousLinearMap.toSpanSingleton ℝ
            (-((M v).det ^ 2)⁻¹)).comp
            (M v 0 0 • L 1 1 + M v 1 1 • L 0 0 - (M v 0 1 • L 1 0 + M v 1 0 • L 0 1)))) v := by
      intro f f' hf
      exact hdi.mul hf
    have hd0 : (M v 0 0 * M v 1 1 - M v 0 1 * M v 1 0) ≠ 0 := by
      rw [← hdet_eq]; exact hdet.ne'
    refine ⟨?_, ?_⟩
    · intro i j
      simp only [funext (hinvE · i j)]
      fin_cases i <;> fin_cases j
      · have h := hgen _ _ (hM 1 1)
        simp only [Matrix.adjugate_fin_two, Matrix.of_apply] at h ⊢
        refine h.congr_fderiv ?_
        ext w
        simp [hinvE, Matrix.adjugate_fin_two, Fin.sum_univ_two, hdet_eq]
        field_simp
        ring
      · have h := hgen _ _ (hM 0 1).neg
        simp only [Matrix.adjugate_fin_two, Matrix.of_apply] at h ⊢
        refine h.congr_fderiv ?_
        ext w
        simp [hinvE, Matrix.adjugate_fin_two, Fin.sum_univ_two, hdet_eq]
        field_simp
        ring
      · have h := hgen _ _ (hM 1 0).neg
        simp only [Matrix.adjugate_fin_two, Matrix.of_apply] at h ⊢
        refine h.congr_fderiv ?_
        ext w
        simp [hinvE, Matrix.adjugate_fin_two, Fin.sum_univ_two, hdet_eq]
        field_simp
        ring
      · have h := hgen _ _ (hM 0 0)
        simp only [Matrix.adjugate_fin_two, Matrix.of_apply] at h ⊢
        refine h.congr_fderiv ?_
        ext w
        simp [hinvE, Matrix.adjugate_fin_two, Fin.sum_univ_two, hdet_eq]
        field_simp
        ring
    · have h := hD.sqrt hdet.ne'
      refine h.congr_fderiv ?_
      have hs : Real.sqrt (M v).det ^ 2 = (M v).det := Real.sq_sqrt hdet.le
      have hsp : 0 < Real.sqrt (M v).det := Real.sqrt_pos.2 hdet
      have hadj : ∀ a b : Fin 2, (M v)⁻¹ a b = ((M v).det)⁻¹ * (M v).adjugate a b := hinvE v
      simp only [hadj]
      set s := Real.sqrt (M v).det with hsdef
      set d := (M v).det with hddef
      have hk : 1 / (2 * s) = (1 / 2 * s) * d⁻¹ := by
        rw [← hs]; field_simp
      ext w
      simp only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.sub_apply,
        ContinuousLinearMap.add_apply, smul_eq_mul, Fin.sum_univ_two, Matrix.adjugate_fin_two,
        Matrix.of_apply]
      rw [hk]
      simp
      ring
  
  have christoffel2_family_dt_dx_comm : ∀ (k i j : Fin 2),
      DifferentiableAt ℝ (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) x ∧
      ∀ e : Fin 2, HasDerivAt (fun s => pd2 e (christoffel2 (H s) k i j) x)
        (pd2 e (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) x) t := by
    intro k i j
    have hU : IsOpen (Set.Ioo a b ×ˢ W) := isOpen_Ioo.prod hW
    have hp : ((t, x) : ℝ × E2) ∈ Set.Ioo a b ×ˢ W := ⟨ht, hx⟩
    obtain ⟨Φ, hΦ⟩ : ∃ Φ : ℝ × E2 → ℝ, Φ = fun p => christoffel2 (H p.1) k i j p.2 := ⟨_, rfl⟩
    have hcd : ∀ q ∈ Set.Ioo a b ×ˢ W, ContDiffAt ℝ ∞ Φ q := by
      intro q hq
      rw [hΦ]
      exact (hΓ k i j).contDiffAt (hU.mem_nhds hq)
    have hdiff : ∀ q ∈ Set.Ioo a b ×ˢ W, HasFDerivAt Φ (fderiv ℝ Φ q) q :=
      fun q hq => ((hcd q hq).differentiableAt (by simp)).hasFDerivAt
    have hspace : ∀ s y, (s, y) ∈ Set.Ioo a b ×ˢ W → ∀ e : Fin 2,
        pd2 e (christoffel2 (H s) k i j) y = fderiv ℝ Φ (s, y) (0, e2 e) := by
      intro s y hq e
      have h := (hdiff (s, y) hq).comp y (hasFDerivAt_prodMk_right (𝕜 := ℝ) s y)
      unfold pd2
      rw [show christoffel2 (H s) k i j = Φ ∘ (fun y' => (s, y')) by rw [hΦ]; rfl, h.fderiv]
      simp
    have htime : ∀ s y, (s, y) ∈ Set.Ioo a b ×ˢ W →
        deriv (fun s' => christoffel2 (H s') k i j y) s = fderiv ℝ Φ (s, y) (1, 0) := by
      intro s y hq
      have h := ((hdiff (s, y) hq).comp s (hasFDerivAt_prodMk_left (𝕜 := ℝ) s y)).hasDerivAt
      rw [show (fun s' => christoffel2 (H s') k i j y) = Φ ∘ (fun s' => (s', y)) by
        rw [hΦ]; rfl, h.deriv]
      simp
    have hc2 : ContDiffAt ℝ 2 Φ (t, x) := (hcd _ hp).of_le ENat.LEInfty.out
    have hD2 : DifferentiableAt ℝ (fderiv ℝ Φ) (t, x) :=
      (hc2.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)
    have hsymm : IsSymmSndFDerivAt ℝ Φ (t, x) :=
      (hcd _ hp).isSymmSndFDerivAt
        (by rw [minSmoothness_of_isRCLikeNormedField]; exact ENat.LEInfty.out)
    have hnT : {s : ℝ | (s, x) ∈ Set.Ioo a b ×ˢ W} ∈ 𝓝 t :=
      (continuous_id.prodMk continuous_const).continuousAt.preimage_mem_nhds (hU.mem_nhds hp)
    have hnX : {y : E2 | (t, y) ∈ Set.Ioo a b ×ˢ W} ∈ 𝓝 x :=
      (continuous_const.prodMk continuous_id).continuousAt.preimage_mem_nhds (hU.mem_nhds hp)
    have hevX : (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) =ᶠ[𝓝 x]
        (fun y => fderiv ℝ Φ (t, y) (1, 0)) := by
      filter_upwards [hnX] with y hy
      exact htime t y hy
    have hBX := (hD2.hasFDerivAt.comp x (hasFDerivAt_prodMk_right (𝕜 := ℝ) t x)).clm_apply
      (hasFDerivAt_const ((1, 0) : ℝ × E2) x)
    refine ⟨?_, ?_⟩
    · exact hBX.differentiableAt.congr_of_eventuallyEq hevX
    · intro e
      have hA : HasDerivAt (fun s => fderiv ℝ Φ (s, x) (0, e2 e))
          (fderiv ℝ (fderiv ℝ Φ) (t, x) (1, 0) (0, e2 e)) t := by
        have h1 := hD2.hasFDerivAt.comp t (hasFDerivAt_prodMk_left (𝕜 := ℝ) t x)
        have h2 := (h1.clm_apply (hasFDerivAt_const ((0, e2 e) : ℝ × E2) t)).hasDerivAt
        convert h2 using 1
        simp
      have hevT : (fun s => pd2 e (christoffel2 (H s) k i j) x) =ᶠ[𝓝 t]
          (fun s => fderiv ℝ Φ (s, x) (0, e2 e)) := by
        filter_upwards [hnT] with s hs
        exact hspace s x hs e
      have hval : pd2 e (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) x =
          fderiv ℝ (fderiv ℝ Φ) (t, x) (1, 0) (0, e2 e) := by
        unfold pd2
        rw [hevX.fderiv_eq]
        have := hBX.fderiv
        simp only [Function.comp_def] at this
        rw [this]
        rw [hsymm (1, 0) (0, e2 e)]
        simp
      rw [hval]
      exact hA.congr_of_eventuallyEq hevT
  
  have gb_variation_algebra : ∀ (h hi : Matrix (Fin 2) (Fin 2) ℝ) (hd : Fin 2 → Fin 2 → ℝ)
      (dh Γ Gd : Fin 2 → Fin 2 → Fin 2 → ℝ) (dGd : Fin 2 → Fin 2 → Fin 2 → Fin 2 → ℝ) (K σ : ℝ),
      (∀ a b : Fin 2, h a b = h b a) → (∀ a b : Fin 2, hi a b = hi b a) →
      (∀ a b : Fin 2, ∑ c : Fin 2, hi a c * h c b = if a = b then 1 else 0) →
      (∀ e a b : Fin 2, dh e a b = dh e b a) →
      (∀ k i j : Fin 2,
        Γ k i j = (1 / 2 : ℝ) * ∑ l : Fin 2, hi k l * (dh i j l + dh j i l - dh l i j)) →
      (1 / 2 : ℝ) * (∑ j : Fin 2, ∑ k : Fin 2,
          ((-∑ a : Fin 2, ∑ b : Fin 2, hi j a * hi b k * hd a b) * (K * h j k) +
            hi j k * (∑ i : Fin 2, (dGd i i j k - dGd j i i k) +
              ∑ i : Fin 2, ∑ p : Fin 2, (Gd i i p * Γ p j k + Γ i i p * Gd p j k -
                (Gd i j p * Γ p i k + Γ i j p * Gd p i k))))) * σ +
        K * ((1 / 2 : ℝ) * σ * ∑ a : Fin 2, ∑ b : Fin 2, hi b a * hd a b) =
      (1 / 2 : ℝ) * ∑ e : Fin 2,
        (((1 / 2 : ℝ) * σ * ∑ a : Fin 2, ∑ b : Fin 2, hi b a * dh e a b) *
            (∑ b : Fin 2, ∑ c : Fin 2, hi b c * Gd e b c -
              ∑ b : Fin 2, hi e b * ∑ c : Fin 2, Gd c c b) +
          σ * (∑ b : Fin 2, ∑ c : Fin 2,
                ((-∑ a : Fin 2, ∑ a' : Fin 2, hi b a * hi a' c * dh e a a') * Gd e b c +
                  hi b c * dGd e e b c) -
              ∑ b : Fin 2, ((-∑ a : Fin 2, ∑ a' : Fin 2, hi e a * hi a' b * dh e a a') *
                  ∑ c : Fin 2, Gd c c b + hi e b * ∑ c : Fin 2, dGd e c c b))) := by
    intro h hi hd dh Γ Gd dGd K σ hsym hisym hinv hdh hΓ
    have i00 : hi 0 0 * h 0 0 + hi 0 1 * h 1 0 = 1 := by
      simpa [Fin.sum_univ_two] using hinv 0 0
    have i01 : hi 0 0 * h 0 1 + hi 0 1 * h 1 1 = 0 := by
      simpa [Fin.sum_univ_two] using hinv 0 1
    have i10 : hi 1 0 * h 0 0 + hi 1 1 * h 1 0 = 0 := by
      simpa [Fin.sum_univ_two] using hinv 1 0
    have i11 : hi 1 0 * h 0 1 + hi 1 1 * h 1 1 = 1 := by
      simpa [Fin.sum_univ_two] using hinv 1 1
    have s1 := hsym 1 0
    have s2 := hisym 1 0
    have s3 := hdh 0 1 0
    have s4 := hdh 1 1 0
    simp only [hΓ, Fin.sum_univ_two, Fin.isValue]
    simp only [s1, s2, s3, s4] at i00 i01 i10 i11 ⊢
    linear_combination (-(1/2) * σ * K) *
      (hd 0 0 * hi 0 0 * i00 + hd 0 0 * hi 0 1 * i01 + hd 0 1 * hi 0 0 * i10 +
        hd 0 1 * hi 0 1 * i11 + hd 1 0 * hi 0 1 * i00 + hd 1 0 * hi 1 1 * i01 +
        hd 1 1 * hi 0 1 * i10 + hd 1 1 * hi 1 1 * i11)
  
  have gb_lhs_hasDerivAt : ∀ (Gd : Fin 2 → Fin 2 → Fin 2 → ℝ)
      (dGd : Fin 2 → Fin 2 → Fin 2 → Fin 2 → ℝ) (hid : Fin 2 → Fin 2 → ℝ) (sd : ℝ),
      (∀ k i j : Fin 2, HasDerivAt (fun s => christoffel2 (H s) k i j x) (Gd k i j) t) →
      (∀ e k i j : Fin 2, HasDerivAt (fun s => pd2 e (christoffel2 (H s) k i j) x)
        (dGd e k i j) t) →
      (∀ i j : Fin 2, HasDerivAt (fun s => (H s x)⁻¹ i j) (hid i j) t) →
      HasDerivAt (fun s => Real.sqrt (H s x).det) sd t →
      HasDerivAt (fun s => gaussCurv2 (H s) x * Real.sqrt (H s x).det)
        ((1 / 2 : ℝ) * (∑ j : Fin 2, ∑ k : Fin 2,
            (hid j k * ricci2 (H t) j k x +
              (H t x)⁻¹ j k * (∑ i : Fin 2, (dGd i i j k - dGd j i i k) +
                ∑ i : Fin 2, ∑ p : Fin 2,
                  (Gd i i p * christoffel2 (H t) p j k x + christoffel2 (H t) i i p x * Gd p j k -
                    (Gd i j p * christoffel2 (H t) p i k x +
                      christoffel2 (H t) i j p x * Gd p i k))))) *
            Real.sqrt (H t x).det +
          gaussCurv2 (H t) x * sd) t := by
    intro Gd dGd hid sd hG hdG hinv hsq
    have hR : ∀ j k : Fin 2, HasDerivAt (fun s => ricci2 (H s) j k x)
        (∑ i : Fin 2, (dGd i i j k - dGd j i i k) +
          ∑ i : Fin 2, ∑ p : Fin 2,
            (Gd i i p * christoffel2 (H t) p j k x + christoffel2 (H t) i i p x * Gd p j k -
              (Gd i j p * christoffel2 (H t) p i k x +
                christoffel2 (H t) i j p x * Gd p i k))) t := by
      intro j k
      unfold ricci2
      exact (HasDerivAt.fun_sum fun i _ => (hdG i i j k).sub (hdG j i i k)).add
        (HasDerivAt.fun_sum fun i _ => HasDerivAt.fun_sum fun p _ =>
          ((hG i i p).mul (hG p j k)).sub ((hG i j p).mul (hG p i k)))
    have hK : HasDerivAt (fun s => gaussCurv2 (H s) x)
        ((1 / 2 : ℝ) * (∑ j : Fin 2, ∑ k : Fin 2,
            (hid j k * ricci2 (H t) j k x +
              (H t x)⁻¹ j k * (∑ i : Fin 2, (dGd i i j k - dGd j i i k) +
                ∑ i : Fin 2, ∑ p : Fin 2,
                  (Gd i i p * christoffel2 (H t) p j k x + christoffel2 (H t) i i p x * Gd p j k -
                    (Gd i j p * christoffel2 (H t) p i k x +
                      christoffel2 (H t) i j p x * Gd p i k)))))) t := by
      unfold gaussCurv2
      exact (HasDerivAt.fun_sum fun j _ => HasDerivAt.fun_sum fun k _ =>
        (hinv j k).mul (hR j k)).const_mul (1 / 2 : ℝ)
    exact hK.mul hsq
  
  have gb_rhs_pd2 : ∀ (e : Fin 2)
      (sx : E2 →L[ℝ] ℝ) (ix : Fin 2 → Fin 2 → E2 →L[ℝ] ℝ)
      (gx : Fin 2 → Fin 2 → Fin 2 → E2 →L[ℝ] ℝ),
      HasFDerivAt (fun y => Real.sqrt (H t y).det) sx x →
      (∀ i j : Fin 2, HasFDerivAt (fun y => (H t y)⁻¹ i j) (ix i j) x) →
      (∀ k i j : Fin 2,
        HasFDerivAt (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) (gx k i j) x) →
      pd2 e (fun y => Real.sqrt (H t y).det * gbW H t y e) x =
        sx (e2 e) * gbW H t x e +
          Real.sqrt (H t x).det *
            (∑ b : Fin 2, ∑ c : Fin 2,
                (ix b c (e2 e) * deriv (fun s => christoffel2 (H s) e b c x) t +
                  (H t x)⁻¹ b c * gx e b c (e2 e)) -
              ∑ b : Fin 2, (ix e b (e2 e) *
                  ∑ c : Fin 2, deriv (fun s => christoffel2 (H s) c c b x) t +
                (H t x)⁻¹ e b * ∑ c : Fin 2, gx c c b (e2 e))) := by
    intro e sx ix gx hsq hinv hg
    have hW := (HasFDerivAt.fun_sum (u := Finset.univ) fun b _ =>
        HasFDerivAt.fun_sum (u := Finset.univ) fun c _ => (hinv b c).fun_mul (hg e b c)).fun_sub
      (HasFDerivAt.fun_sum (u := Finset.univ) fun b _ => (hinv e b).fun_mul
        (HasFDerivAt.fun_sum (u := Finset.univ) fun c _ => hg c c b))
    have h := hsq.fun_mul hW
    unfold pd2
    have hfe : (fun y => Real.sqrt (H t y).det * gbW H t y e) = (fun y => Real.sqrt (H t y).det *
        (∑ b : Fin 2, ∑ c : Fin 2, (H t y)⁻¹ b c * deriv (fun s => christoffel2 (H s) e b c y) t -
          ∑ b : Fin 2, (H t y)⁻¹ e b * ∑ c : Fin 2,
            deriv (fun s => christoffel2 (H s) c c b y) t)) :=
      rfl
    rw [hfe, h.fderiv]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.sub_apply,
      ContinuousLinearMap.smul_apply, ContinuousLinearMap.sum_apply, smul_eq_mul, gbW]
    simp only [Fin.sum_univ_two]
    ring
  
  have hU : IsOpen (Set.Ioo a b ×ˢ W) := isOpen_Ioo.prod hW
  have hp : ((t, x) : ℝ × E2) ∈ Set.Ioo a b ×ˢ W := ⟨ht, hx⟩
  have hposx := hpos t ht x hx
  have hdet : 0 < (H t x).det := hposx.det_pos
  
  have hsymz : ∀ z ∈ W, ∀ a' b' : Fin 2, H t z a' b' = H t z b' a' := by
    intro z hz a' b'
    have h1 := (hpos t ht z hz).isHermitian.apply a' b'
    rw [star_trivial] at h1
    exact h1.symm
  have hsym : ∀ a' b' : Fin 2, H t x a' b' = H t x b' a' := hsymz x hx
  have hisym : ∀ a' b' : Fin 2, (H t x)⁻¹ a' b' = (H t x)⁻¹ b' a' := by
    intro a' b'
    have h1 := hposx.isHermitian.inv.apply a' b'
    rw [star_trivial] at h1
    exact h1.symm
  have hinv : ∀ a' b' : Fin 2, ∑ c : Fin 2, (H t x)⁻¹ a' c * H t x c b' =
      if a' = b' then 1 else 0 := by
    intro a' b'
    have hm := Matrix.nonsing_inv_mul (H t x) ((isUnit_iff_ne_zero).2 hdet.ne')
    have h1 := congrFun (congrFun hm a') b'
    rw [Matrix.mul_apply, Matrix.one_apply] at h1
    exact h1
  have hdh : ∀ e' a' b' : Fin 2, fderiv ℝ (fun y => H t y a' b') x (e2 e') =
      fderiv ℝ (fun y => H t y b' a') x (e2 e') := by
    intro e' a' b'
    have hev : (fun y => H t y a' b') =ᶠ[𝓝 x] (fun y => H t y b' a') := by
      filter_upwards [hW.mem_nhds hx] with z hz
      exact hsymz z hz a' b'
    rw [hev.fderiv_eq]
  
  have hcd : ∀ a' b' : Fin 2, ContDiffAt ℝ ∞ (fun p : ℝ × E2 => H p.1 p.2 a' b') (t, x) :=
    fun a' b' => (hs a' b').contDiffAt (hU.mem_nhds hp)
  have hsl1 : DifferentiableAt ℝ (fun s : ℝ => ((s, x) : ℝ × E2)) t :=
    differentiableAt_id.prodMk (differentiableAt_const x)
  have hsl2 : DifferentiableAt ℝ (fun y : E2 => ((t, y) : ℝ × E2)) x :=
    (differentiableAt_const t).prodMk differentiableAt_id
  have hTd : ∀ a' b' : Fin 2, DifferentiableAt ℝ (fun s => H s x a' b') t := by
    intro a' b'
    have h1 : DifferentiableAt ℝ (fun p : ℝ × E2 => H p.1 p.2 a' b') (t, x) :=
      (hcd a' b').differentiableAt (by simp)
    exact h1.comp t hsl1
  have hXd : ∀ a' b' : Fin 2, DifferentiableAt ℝ (fun y => H t y a' b') x := by
    intro a' b'
    have h1 : DifferentiableAt ℝ (fun p : ℝ × E2 => H p.1 p.2 a' b') (t, x) :=
      (hcd a' b').differentiableAt (by simp)
    exact h1.comp x hsl2
  
  obtain ⟨hiT, hsT⟩ := mat2_inv_sqrtDet_hasFDerivAt (fun s => H s x) t
    (fun a' b' => fderiv ℝ (fun s => H s x a' b') t) (fun a' b' => (hTd a' b').hasFDerivAt) hdet
  have hG : ∀ k i j : Fin 2, HasDerivAt (fun s => christoffel2 (H s) k i j x)
      (deriv (fun s => christoffel2 (H s) k i j x) t) t := by
    intro k i j
    have h1 : DifferentiableAt ℝ (fun p : ℝ × E2 => christoffel2 (H p.1) k i j p.2) (t, x) :=
      ((hΓ k i j).contDiffAt (hU.mem_nhds hp)).differentiableAt (by simp)
    exact (h1.comp t hsl1).hasDerivAt
  have hdG : ∀ e k i j : Fin 2, HasDerivAt (fun s => pd2 e (christoffel2 (H s) k i j) x)
      (fderiv ℝ (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) x (e2 e)) t :=
    fun e k i j => (christoffel2_family_dt_dx_comm k i j).2 e
  have hL := gb_lhs_hasDerivAt _ _ _ _ hG hdG (fun i j => (hiT i j).hasDerivAt)
    hsT.hasDerivAt
  
  obtain ⟨hiX, hsX⟩ := mat2_inv_sqrtDet_hasFDerivAt (fun y => H t y) x
    (fun a' b' => fderiv ℝ (fun y => H t y a' b') x) (fun a' b' => (hXd a' b').hasFDerivAt) hdet
  have hgX : ∀ k i j : Fin 2, HasFDerivAt (fun y => deriv (fun s => christoffel2 (H s) k i j y) t)
      (fderiv ℝ (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) x) x :=
    fun k i j => (christoffel2_family_dt_dx_comm k i j).1.hasFDerivAt
  have hR := fun e => gb_rhs_pd2 e _ _ _ hsX hiX hgX
  
  have key := gb_variation_algebra (H t x) (H t x)⁻¹
    (fun a' b' => fderiv ℝ (fun s => H s x a' b') t 1)
    (fun e' a' b' => fderiv ℝ (fun y => H t y a' b') x (e2 e'))
    (fun k i j => christoffel2 (H t) k i j x)
    (fun k i j => deriv (fun s => christoffel2 (H s) k i j x) t)
    (fun e k i j => fderiv ℝ (fun y => deriv (fun s => christoffel2 (H s) k i j y) t) x (e2 e))
    (gaussCurv2 (H t) x) (Real.sqrt (H t x).det) hsym hisym hinv hdh (fun k i j => rfl)
  refine hL.congr_deriv ?_
  rw [Finset.sum_congr rfl (fun e _ => hR e)]
  simp only [hric, gbW, ContinuousLinearMap.neg_apply, ContinuousLinearMap.coe_sum',
    Finset.sum_apply, ContinuousLinearMap.smul_apply, smul_eq_mul] at key ⊢
  simp only [Fin.sum_univ_two, Fin.isValue] at key ⊢
  linear_combination key

theorem christoffel2_transform (A B : Set E2) (hA : IsOpen A) (hB : IsOpen B) (τ : E2 → E2)
    (hτ : ContDiffOn ℝ ∞ τ A) (hτAB : ∀ x ∈ A, τ x ∈ B)
    (h h' : E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hh' : ∀ c d : Fin 2, ContDiffOn ℝ ∞ (fun y => h' y c d) B)
    (hpd' : ∀ y ∈ B, (h' y).PosDef) (hpd : ∀ x ∈ A, (h x).PosDef)
    (hcomp : ∀ x ∈ A, ∀ c d : Fin 2, h x c d = ∑ c' : Fin 2, ∑ d' : Fin 2,
      fderiv ℝ τ x (e2 c) c' * h' (τ x) c' d' * fderiv ℝ τ x (e2 d) d')
    (x : E2) (hx : x ∈ A) (m b c : Fin 2) :
    ∑ e : Fin 2, fderiv ℝ τ x (e2 e) m * christoffel2 h e b c x =
      ∑ p : Fin 2, ∑ q : Fin 2,
          christoffel2 h' m p q (τ x) * fderiv ℝ τ x (e2 b) p * fderiv ℝ τ x (e2 c) q +
        fderiv ℝ (fun y => fderiv ℝ τ y (e2 c)) x (e2 b) m :=
by
  
  have alg : ∀ (J : Fin 2 → Fin 2 → ℝ) (g hm : Matrix (Fin 2) (Fin 2) ℝ)
      (D T dH : Fin 2 → Fin 2 → Fin 2 → ℝ),
      (∀ p q : Fin 2, g p q = g q p) →
      (∀ m b c : Fin 2, T m b c = T m c b) →
      (∀ c d : Fin 2, hm c d = ∑ c' : Fin 2, ∑ d' : Fin 2, J c' c * g c' d' * J d' d) →
      hm.det ≠ 0 →
      (∀ i c d : Fin 2, dH i c d = ∑ c' : Fin 2, ∑ d' : Fin 2,
        (T c' i c * g c' d' * J d' d + J c' c * (∑ r : Fin 2, D r c' d' * J r i) * J d' d +
          J c' c * g c' d' * T d' i d)) →
      ∀ m b c : Fin 2,
      ∑ e : Fin 2, J m e * ((1 / 2 : ℝ) * ∑ l : Fin 2, hm⁻¹ e l * (dH b c l + dH c b l - dH l b c)) =
        ∑ p : Fin 2, ∑ q : Fin 2,
            ((1 / 2 : ℝ) * ∑ l : Fin 2, g⁻¹ m l * (D p q l + D q p l - D l p q)) * J p b * J q c +
          T m b c := by
    intro J g hm D T dH hg hT hhm hdet hdH m b c
    
    have hA : ∀ l : Fin 2, dH b c l + dH c b l - dH l b c = ∑ q : Fin 2, J q l *
        (2 * ∑ p : Fin 2, g q p * T p b c +
          ∑ p : Fin 2, ∑ r : Fin 2, (D p r q + D r p q - D q p r) * J p b * J r c) := by
      intro l
      have hT1 : ∀ x, T x c b = T x b c := fun x => hT x c b
      have hT2 : ∀ x, T x l b = T x b l := fun x => hT x l b
      have hT3 : ∀ x, T x l c = T x c l := fun x => hT x l c
      have hg10 : g 1 0 = g 0 1 := hg 1 0
      simp only [hdH, Fin.sum_univ_two, hT1, hT2, hT3, hg10]
      ring
    
    set Jm : Matrix (Fin 2) (Fin 2) ℝ := Matrix.of J with hJm
    have hhm' : hm = Jm.transpose * g * Jm := by
      ext i j
      rw [hhm i j]
      simp only [hJm, Matrix.mul_apply, Matrix.transpose_apply, Matrix.of_apply, Fin.sum_univ_two]
      ring
    have hdet' : hm.det = Jm.det * g.det * Jm.det := by
      rw [hhm', Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
    have hJdet : Jm.det ≠ 0 := by
      intro h0; apply hdet; rw [hdet', h0]; ring
    have hgdet : g.det ≠ 0 := by
      intro h0; apply hdet; rw [hdet', h0]; ring
    have hJu : IsUnit Jm.det := isUnit_iff_ne_zero.mpr hJdet
    have hJtu : IsUnit Jm.transpose.det := by rw [Matrix.det_transpose]; exact hJu
    have hgu : IsUnit g.det := isUnit_iff_ne_zero.mpr hgdet
    have hraiseM : Jm * hm⁻¹ * Jm.transpose = g⁻¹ := by
      rw [hhm', Matrix.mul_inv_rev, Matrix.mul_inv_rev]
      calc Jm * (Jm⁻¹ * (g⁻¹ * Jm.transpose⁻¹)) * Jm.transpose
          = (Jm * Jm⁻¹) * g⁻¹ * (Jm.transpose⁻¹ * Jm.transpose) := by simp only [Matrix.mul_assoc]
        _ = g⁻¹ := by
          rw [Matrix.mul_nonsing_inv _ hJu, Matrix.nonsing_inv_mul _ hJtu, Matrix.one_mul,
            Matrix.mul_one]
    have hB : ∀ q : Fin 2, ∑ e : Fin 2, ∑ l : Fin 2, J m e * hm⁻¹ e l * J q l = g⁻¹ m q := by
      intro q
      have := congrFun (congrFun hraiseM m) q
      rw [← this]
      simp only [hJm, Matrix.mul_apply, Matrix.transpose_apply, Matrix.of_apply, Fin.sum_univ_two]
      ring
    have hC : ∑ p : Fin 2, (∑ q : Fin 2, g⁻¹ m q * g q p) * T p b c = T m b c := by
      have h1 : ∀ p : Fin 2, ∑ q : Fin 2, g⁻¹ m q * g q p = (1 : Matrix (Fin 2) (Fin 2) ℝ) m p := by
        intro p
        rw [← Matrix.nonsing_inv_mul g hgu, Matrix.mul_apply]
      simp only [h1, Matrix.one_apply, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq,
        Finset.mem_univ, if_true]
    
    have key : ∀ U : Fin 2 → ℝ, (∀ l : Fin 2, dH b c l + dH c b l - dH l b c =
        ∑ q : Fin 2, J q l * U q) → ∑ e : Fin 2, J m e * ((1 / 2 : ℝ) * ∑ l : Fin 2, hm⁻¹ e l *
        (dH b c l + dH c b l - dH l b c)) = (1 / 2 : ℝ) * ∑ q : Fin 2, g⁻¹ m q * U q := by
      intro U hU
      simp only [hU]
      have hB0 := hB 0
      have hB1 := hB 1
      simp only [Fin.sum_univ_two] at hB0 hB1 ⊢
      linear_combination (1 / 2 * U 0) * hB0 + (1 / 2 * U 1) * hB1
    rw [key (fun q => 2 * ∑ p : Fin 2, g q p * T p b c +
          ∑ p : Fin 2, ∑ r : Fin 2, (D p r q + D r p q - D q p r) * J p b * J r c) hA, ← hC]
    simp only [Fin.sum_univ_two]
    ring
  
  have schwarz : ∀ m b c : Fin 2,
      fderiv ℝ (fun y => fderiv ℝ τ y (e2 c)) x (e2 b) m =
        fderiv ℝ (fun y => fderiv ℝ τ y (e2 b)) x (e2 c) m := by
    intro m b c
    have hτx : ContDiffAt ℝ ∞ τ x := hτ.contDiffAt (hA.mem_nhds hx)
    have hD : DifferentiableAt ℝ (fderiv ℝ τ) x :=
      (hτx.fderiv_right (m := ∞) (by simp)).differentiableAt (by simp)
    have hrw : ∀ u : E2, fderiv ℝ (fun y => fderiv ℝ τ y u) x = (fderiv ℝ (fderiv ℝ τ) x).flip u := by
      intro u
      rw [fderiv_clm_apply hD (differentiableAt_const u)]
      simp
    have hsym := hτx.isSymmSndFDerivAt (by
      rw [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.mpr le_top)
    rw [hrw, hrw]
    simp only [ContinuousLinearMap.flip_apply]
    rw [hsym.eq]
  
  have pull : ∀ i c d : Fin 2,
      pd2 i (fun y => h y c d) x = ∑ c' : Fin 2, ∑ d' : Fin 2,
        (fderiv ℝ (fun y => fderiv ℝ τ y (e2 c)) x (e2 i) c' * h' (τ x) c' d' *
            fderiv ℝ τ x (e2 d) d' +
          fderiv ℝ τ x (e2 c) c' *
            (∑ r : Fin 2, pd2 r (fun y => h' y c' d') (τ x) * fderiv ℝ τ x (e2 i) r) *
            fderiv ℝ τ x (e2 d) d' +
          fderiv ℝ τ x (e2 c) c' * h' (τ x) c' d' *
            fderiv ℝ (fun y => fderiv ℝ τ y (e2 d)) x (e2 i) d') := by
    intro i c d
    have hτx : ContDiffAt ℝ ∞ τ x := hτ.contDiffAt (hA.mem_nhds hx)
    have hτd : DifferentiableAt ℝ τ x := hτx.differentiableAt (by simp)
    have hD : DifferentiableAt ℝ (fderiv ℝ τ) x :=
      (hτx.fderiv_right (m := ∞) (by simp)).differentiableAt (by simp)
    
    have ha : ∀ (u : E2) (k : Fin 2), HasFDerivAt (fun y => fderiv ℝ τ y u k)
        ((EuclideanSpace.proj k : E2 →L[ℝ] ℝ).comp (fderiv ℝ (fun y => fderiv ℝ τ y u) x)) x := by
      intro u k
      have h1 : DifferentiableAt ℝ (fun y => fderiv ℝ τ y u) x := hD.clm_apply (differentiableAt_const u)
      exact (EuclideanSpace.proj k : E2 →L[ℝ] ℝ).hasFDerivAt.comp x h1.hasFDerivAt
    have hb : ∀ p q : Fin 2, HasFDerivAt (fun y => h' (τ y) p q)
        ((fderiv ℝ (fun z => h' z p q) (τ x)).comp (fderiv ℝ τ x)) x := by
      intro p q
      have h1 : DifferentiableAt ℝ (fun z => h' z p q) (τ x) :=
        ((hh' p q).contDiffAt (hB.mem_nhds (hτAB x hx))).differentiableAt (by simp)
      exact h1.hasFDerivAt.comp x hτd.hasFDerivAt
    have hΦ : HasFDerivAt (fun y => ∑ c' : Fin 2, ∑ d' : Fin 2,
        fderiv ℝ τ y (e2 c) c' * h' (τ y) c' d' * fderiv ℝ τ y (e2 d) d')
        (∑ c' : Fin 2, ∑ d' : Fin 2,
          ((fderiv ℝ τ x (e2 c) c' * h' (τ x) c' d') •
              (EuclideanSpace.proj d' : E2 →L[ℝ] ℝ).comp (fderiv ℝ (fun y => fderiv ℝ τ y (e2 d)) x) +
            fderiv ℝ τ x (e2 d) d' •
              (fderiv ℝ τ x (e2 c) c' •
                  (fderiv ℝ (fun z => h' z c' d') (τ x)).comp (fderiv ℝ τ x) +
                h' (τ x) c' d' •
                  (EuclideanSpace.proj c' : E2 →L[ℝ] ℝ).comp
                    (fderiv ℝ (fun y => fderiv ℝ τ y (e2 c)) x)))) x := by
      apply HasFDerivAt.fun_sum
      intro c' _
      apply HasFDerivAt.fun_sum
      intro d' _
      exact ((ha (e2 c) c').mul (hb c' d')).mul (ha (e2 d) d')
    have hev : (fun y => h y c d) =ᶠ[𝓝 x] (fun y => ∑ c' : Fin 2, ∑ d' : Fin 2,
        fderiv ℝ τ y (e2 c) c' * h' (τ y) c' d' * fderiv ℝ τ y (e2 d) d') :=
      Filter.eventually_of_mem (hA.mem_nhds hx) (fun y hy => hcomp y hy c d)
    have hexp : ∀ v : E2, v = v 0 • e2 0 + v 1 • e2 1 := by
      intro v
      ext k
      fin_cases k <;> simp [EuclideanSpace.single_apply]
    have hp : ∀ (k : Fin 2) (v : E2), (EuclideanSpace.proj k : E2 →L[ℝ] ℝ) v = v k := fun _ _ => rfl
    unfold pd2
    rw [hev.fderiv_eq, hΦ.fderiv]
    simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply, smul_eq_mul]
    have hv := hexp (fderiv ℝ τ x (e2 i))
    have hlin : ∀ p q : Fin 2, fderiv ℝ (fun z => h' z p q) (τ x) (fderiv ℝ τ x (e2 i)) =
        ∑ r : Fin 2, fderiv ℝ (fun z => h' z p q) (τ x) (e2 r) * fderiv ℝ τ x (e2 i) r := by
      intro p q
      conv_lhs => rw [hv]
      rw [map_add, map_smul, map_smul, Fin.sum_univ_two, smul_eq_mul, smul_eq_mul]
      ring
    simp only [hlin]
    refine Finset.sum_congr rfl (fun c' _ => Finset.sum_congr rfl (fun d' _ => ?_))
    simp only [hp]
    ring
  
  have hg : ∀ p q : Fin 2, h' (τ x) p q = h' (τ x) q p := by
    intro p q
    have h1 := (hpd' (τ x) (hτAB x hx)).isHermitian.apply p q
    simp only [star_trivial] at h1
    exact h1.symm
  have key := alg (fun p b => fderiv ℝ τ x (e2 b) p) (h' (τ x)) (h x)
    (fun r p q => pd2 r (fun y => h' y p q) (τ x))
    (fun m b c => fderiv ℝ (fun y => fderiv ℝ τ y (e2 c)) x (e2 b) m)
    (fun i c d => pd2 i (fun y => h y c d) x)
    hg schwarz (hcomp x hx) (hpd x hx).det_pos.ne' pull m b c
  unfold christoffel2
  exact key

theorem gbW_transform (a b t : ℝ) (ht : t ∈ Set.Ioo a b)
    (H H' : ℝ → E2 → Matrix (Fin 2) (Fin 2) ℝ) (x y : E2)
    (J : Matrix (Fin 2) (Fin 2) ℝ) (T : Fin 2 → Fin 2 → Fin 2 → ℝ)
    (hpos : (H t x).PosDef) (hpos' : (H' t y).PosDef)
    (hcomp : ∀ s ∈ Set.Ioo a b, ∀ c d : Fin 2,
      H s x c d = ∑ c' : Fin 2, ∑ d' : Fin 2, J c' c * H' s y c' d' * J d' d)
    (hchr : ∀ s ∈ Set.Ioo a b, ∀ m p q : Fin 2,
      ∑ e : Fin 2, J m e * christoffel2 (H s) e p q x =
        ∑ p' : Fin 2, ∑ q' : Fin 2, christoffel2 (H' s) m p' q' y * J p' p * J q' q + T m p q)
    (hd : ∀ e p q : Fin 2, DifferentiableAt ℝ (fun s => christoffel2 (H s) e p q x) t)
    (hd' : ∀ e p q : Fin 2, DifferentiableAt ℝ (fun s => christoffel2 (H' s) e p q y) t) :
    ∀ i : Fin 2, ∑ e : Fin 2, J i e * gbW H t x e = gbW H' t y i :=
by
  intro i
  
  have hAB : ∀ m p q : Fin 2,
      ∑ e : Fin 2, J m e * deriv (fun s => christoffel2 (H s) e p q x) t =
        ∑ p' : Fin 2, ∑ q' : Fin 2,
          deriv (fun s => christoffel2 (H' s) m p' q' y) t * J p' p * J q' q := by
    intro m p q
    have hF : HasDerivAt (fun s => ∑ e : Fin 2, J m e * christoffel2 (H s) e p q x)
        (∑ e : Fin 2, J m e * deriv (fun s => christoffel2 (H s) e p q x) t) t :=
      HasDerivAt.fun_sum (fun e _ => ((hd e p q).hasDerivAt).const_mul (J m e))
    have hG0 : HasDerivAt (fun s => ∑ p' : Fin 2, ∑ q' : Fin 2,
          christoffel2 (H' s) m p' q' y * J p' p * J q' q)
        (∑ p' : Fin 2, ∑ q' : Fin 2,
          deriv (fun s => christoffel2 (H' s) m p' q' y) t * J p' p * J q' q) t :=
      HasDerivAt.fun_sum (fun p' _ => HasDerivAt.fun_sum (fun q' _ =>
        (((hd' m p' q').hasDerivAt).mul_const (J p' p)).mul_const (J q' q)))
    have hG := hG0.add (hasDerivAt_const t (T m p q))
    rw [add_zero] at hG
    have hev : (fun s => ∑ e : Fin 2, J m e * christoffel2 (H s) e p q x) =ᶠ[nhds t]
        (fun s => (∑ p' : Fin 2, ∑ q' : Fin 2,
          christoffel2 (H' s) m p' q' y * J p' p * J q' q) + T m p q) := by
      filter_upwards [Ioo_mem_nhds ht.1 ht.2] with s hs
      exact hchr s hs m p q
    exact hF.unique (hG.congr_of_eventuallyEq hev)
  
  have hmat : H t x = J.transpose * H' t y * J := by
    ext c d
    rw [hcomp t ht c d]
    simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_two]
    ring
  have hdet : (H t x).det ≠ 0 := hpos.det_pos.ne'
  rw [hmat, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose] at hdet
  have hJ : J.det ≠ 0 := by
    intro h0
    apply hdet
    rw [h0]
    ring
  have hinv : J * (H t x)⁻¹ * J.transpose = (H' t y)⁻¹ := by
    have hJu : IsUnit J.det := isUnit_iff_ne_zero.mpr hJ
    have hJTu : IsUnit J.transpose.det := by rw [Matrix.det_transpose]; exact hJu
    rw [hmat, Matrix.mul_inv_rev, Matrix.mul_inv_rev, ← Matrix.mul_assoc J,
      Matrix.mul_nonsing_inv J hJu, Matrix.one_mul, Matrix.mul_assoc,
      Matrix.nonsing_inv_mul _ hJTu, Matrix.mul_one]
  have hP : ∀ i j : Fin 2, ∑ b : Fin 2, ∑ c : Fin 2, J i b * (H t x)⁻¹ b c * J j c =
      (H' t y)⁻¹ i j := by
    intro i j
    rw [← hinv]
    simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_two]
    ring
  
  unfold gbW
  obtain ⟨A, hAdef⟩ : ∃ A : Fin 2 → Fin 2 → Fin 2 → ℝ,
      ∀ e p q, deriv (fun s => christoffel2 (H s) e p q x) t = A e p q :=
    ⟨_, fun _ _ _ => rfl⟩
  obtain ⟨B, hBdef⟩ : ∃ B : Fin 2 → Fin 2 → Fin 2 → ℝ,
      ∀ e p q, deriv (fun s => christoffel2 (H' s) e p q y) t = B e p q :=
    ⟨_, fun _ _ _ => rfl⟩
  simp only [hAdef, hBdef] at hAB ⊢
  generalize (H t x)⁻¹ = P at hP ⊢
  generalize (H' t y)⁻¹ = P' at hP ⊢
  simp only [Fin.sum_univ_two] at hAB hP ⊢
  have htr : ∀ b : Fin 2, A 0 0 b + A 1 1 b =
      B 0 0 0 * J 0 b + B 0 0 1 * J 1 b + (B 1 1 0 * J 0 b + B 1 1 1 * J 1 b) := by
    intro b
    apply mul_left_cancel₀ hJ
    rw [Matrix.det_fin_two]
    linear_combination J 1 1 * hAB 0 0 b - J 0 1 * hAB 1 0 b - J 1 0 * hAB 0 1 b +
      J 0 0 * hAB 1 1 b
  linear_combination P 0 0 * hAB i 0 0 + P 0 1 * hAB i 0 1 + P 1 0 * hAB i 1 0 +
    P 1 1 * hAB i 1 1 +
    B i 0 0 * hP 0 0 + B i 0 1 * hP 0 1 + B i 1 0 * hP 1 0 + B i 1 1 * hP 1 1 -
    (J i 0 * P 0 0 + J i 1 * P 1 0) * htr 0 - (J i 0 * P 0 1 + J i 1 * P 1 1) * htr 1 -
    (B 0 0 0 + B 1 1 0) * hP i 0 - (B 0 0 1 + B 1 1 1) * hP i 1

theorem integral_hasDerivAt_cutoff (W Kc : Set E2) (hW : IsOpen W) (hKc : IsCompact Kc)
    (hKW : Kc ⊆ W) (a b : ℝ) (ζ : E2 → ℝ) (hζ : ContinuousOn ζ W)
    (hζK : ∀ x ∈ W, x ∉ Kc → ζ x = 0) (F F' : ℝ → E2 → ℝ)
    (hF : ContinuousOn (fun p : ℝ × E2 => F p.1 p.2) (Set.Ioo a b ×ˢ W))
    (hF' : ContinuousOn (fun p : ℝ × E2 => F' p.1 p.2) (Set.Ioo a b ×ˢ W))
    (hd : ∀ t ∈ Set.Ioo a b, ∀ x ∈ W, HasDerivAt (fun s => F s x) (F' t x) t)
    (t : ℝ) (ht : t ∈ Set.Ioo a b) :
    HasDerivAt (fun s => ∫ x in W, ζ x * F s x) (∫ x in W, ζ x * F' t x) t :=
by
  obtain ⟨hat, htb⟩ := ht
  set η : ℝ := min (t - a) (b - t) / 2 with hη_def
  have hmin : 0 < min (t - a) (b - t) := lt_min (by linarith) (by linarith)
  have hη : 0 < η := by rw [hη_def]; linarith
  have hη1 : η < t - a := by
    have : min (t - a) (b - t) ≤ t - a := min_le_left _ _
    rw [hη_def]; linarith
  have hη2 : η < b - t := by
    have : min (t - a) (b - t) ≤ b - t := min_le_right _ _
    rw [hη_def]; linarith
  have hball : ∀ s ∈ Metric.ball t η, s ∈ Set.Icc (t - η) (t + η) := by
    intro s hs
    rw [Metric.mem_ball, Real.dist_eq, abs_lt] at hs
    constructor <;> linarith [hs.1, hs.2]
  have hIcc : ∀ s ∈ Set.Icc (t - η) (t + η), s ∈ Set.Ioo a b := by
    intro s hs
    exact ⟨by linarith [hs.1], by linarith [hs.2]⟩
  have hWm : MeasurableSet W := hW.measurableSet
  have hcont : ∀ s ∈ Set.Ioo a b, ContinuousOn (fun x => ζ x * F s x) W := by
    intro s hs
    refine hζ.mul ?_
    have hpair : ContinuousOn (fun x : E2 => ((s, x) : ℝ × E2)) W :=
      continuousOn_const.prodMk continuousOn_id
    exact hF.comp hpair (fun x hx => ⟨hs, hx⟩)
  have hcont' : ∀ s ∈ Set.Ioo a b, ContinuousOn (fun x => ζ x * F' s x) W := by
    intro s hs
    refine hζ.mul ?_
    have hpair : ContinuousOn (fun x : E2 => ((s, x) : ℝ × E2)) W :=
      continuousOn_const.prodMk continuousOn_id
    exact hF'.comp hpair (fun x hx => ⟨hs, hx⟩)
  have hQc : IsCompact (Set.Icc (t - η) (t + η) ×ˢ Kc) := isCompact_Icc.prod hKc
  have hQsub : Set.Icc (t - η) (t + η) ×ˢ Kc ⊆ Set.Ioo a b ×ˢ W :=
    fun p hp => ⟨hIcc _ hp.1, hKW hp.2⟩
  have hQcont : ContinuousOn (fun p : ℝ × E2 => ζ p.2 * F' p.1 p.2)
      (Set.Icc (t - η) (t + η) ×ˢ Kc) := by
    refine ContinuousOn.mul ?_ (hF'.mono hQsub)
    exact hζ.comp continuousOn_snd (fun p hp => hKW hp.2)
  obtain ⟨C, hC⟩ := hQc.exists_bound_of_continuousOn hQcont
  have hKcont : ContinuousOn (fun x => ζ x * F t x) Kc := (hcont t ⟨hat, htb⟩).mono hKW
  obtain ⟨C₀, hC₀⟩ := hKc.exists_bound_of_continuousOn hKcont
  have hind : ∀ D : ℝ, MeasureTheory.Integrable (Kc.indicator (fun _ => D))
      (MeasureTheory.volume.restrict W) := by
    intro D
    refine MeasureTheory.Integrable.restrict ?_
    refine MeasureTheory.IntegrableOn.integrable_indicator ?_ hKc.measurableSet
    exact MeasureTheory.integrableOn_const hKc.measure_lt_top.ne
  have hmeas : ∀ᶠ s in nhds t, MeasureTheory.AEStronglyMeasurable (fun x => ζ x * F s x)
      (MeasureTheory.volume.restrict W) := by
    filter_upwards [Metric.ball_mem_nhds t hη] with s hs
    exact (hcont s (hIcc s (hball s hs))).aestronglyMeasurable hWm
  have hint0 : MeasureTheory.Integrable (fun x => ζ x * F t x)
      (MeasureTheory.volume.restrict W) := by
    refine MeasureTheory.Integrable.mono' (hind C₀)
      ((hcont t ⟨hat, htb⟩).aestronglyMeasurable hWm) ?_
    refine (MeasureTheory.ae_restrict_mem hWm).mono ?_
    intro x hx
    by_cases hxK : x ∈ Kc
    · rw [Set.indicator_of_mem hxK]; exact hC₀ x hxK
    · rw [Set.indicator_of_notMem hxK, hζK x hx hxK, zero_mul, norm_zero]
  have hbound : Filter.Eventually (fun x => ∀ s ∈ Metric.ball t η,
      ‖ζ x * F' s x‖ ≤ Kc.indicator (fun _ => C) x)
      (MeasureTheory.ae (MeasureTheory.volume.restrict W)) := by
    refine (MeasureTheory.ae_restrict_mem hWm).mono ?_
    intro x hx s hs
    by_cases hxK : x ∈ Kc
    · rw [Set.indicator_of_mem hxK]
      exact hC (s, x) ⟨hball s hs, hxK⟩
    · rw [Set.indicator_of_notMem hxK, hζK x hx hxK, zero_mul, norm_zero]
  have hdiff : Filter.Eventually (fun x => ∀ s ∈ Metric.ball t η,
      HasDerivAt (fun s => ζ x * F s x) (ζ x * F' s x) s)
      (MeasureTheory.ae (MeasureTheory.volume.restrict W)) := by
    refine (MeasureTheory.ae_restrict_mem hWm).mono ?_
    intro x hx s hs
    exact (hd s (hIcc s (hball s hs)) x hx).const_mul (ζ x)
  exact (hasDerivAt_integral_of_dominated_loc_of_deriv_le (Metric.ball_mem_nhds t hη) hmeas
    hint0 ((hcont' t ⟨hat, htb⟩).aestronglyMeasurable hWm) hbound (hind C) hdiff).2

theorem patched_divergence_sum_zero {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (P : EigPatchedSurface X S)
    (ρ : Fin P.n → X → ℝ) (Kc : Fin P.n → Set E2)
    (hρs : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1)
    (hK : ∀ j, IsCompact (Kc j) ∧ Kc j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ Kc j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0)
    (hm : Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hmc : ∀ j, ContinuousOn (fun x => Real.sqrt (hm j x).det) (P.W j))
    (hcov : ∀ (j k : Fin P.n) (G : E2 → ℝ),
      (∫ x in P.W j ∩ P.param j ⁻¹' P.O k, G (P.proj k (P.param j x)) * Real.sqrt (hm j x).det) =
        ∫ y in P.W k ∩ P.param k ⁻¹' P.O j, G y * Real.sqrt (hm k y).det)
    (Wv : Fin P.n → E2 → Fin 2 → ℝ)
    (hWc : ∀ j (e : Fin 2), ContinuousOn (fun x => Wv j x e) (P.W j))
    (hWt : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, ∀ i : Fin 2,
      ∑ e : Fin 2, fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 e) i * Wv j x e =
        Wv k (P.proj k (P.param j x)) i) :
    ∑ j, ∑ e : Fin 2, ∫ x in P.W j, pd2 e (fun x' => ρ j (P.param j x')) x *
      (Real.sqrt (hm j x).det * Wv j x e) = 0 :=
by
  classical
  
  have memS : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ S := by
    intro j x hx
    have h : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at h
    exact h.2
  have memO : ∀ j, ∀ x ∈ P.W j, P.param j x ∈ P.O j := by
    intro j x hx
    have h : P.param j x ∈ P.param j '' P.W j := ⟨x, hx, rfl⟩
    rw [P.image_eq j] at h
    exact h.1
  have hH3 : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      P.proj k (P.param j x) ∈ P.W k ∧ P.param k (P.proj k (P.param j x)) = P.param j x := by
    intro j k x hx
    have h2 : P.param j x ∈ P.param k '' P.W k := by
      rw [P.image_eq k]; exact ⟨hx.2, memS j x hx.1⟩
    obtain ⟨y, hy, hyx⟩ := h2
    rw [← hyx, P.proj_param k y hy]
    exact ⟨hy, rfl⟩
  have hAopen : ∀ j k, IsOpen (P.W j ∩ P.param j ⁻¹' P.O k) := fun j k =>
    (P.param_cont j).isOpen_inter_preimage (P.W_open j) (P.O_open k)
  
  have pd_zero : ∀ (u : E2 → ℝ) (y : E2) (V : Set E2), IsOpen V → y ∈ V →
      (∀ z ∈ V, u z = 0) → ∀ i, pd2 i u y = 0 := by
    intro u y V hV hy hu i
    have hev : u =ᶠ[𝓝 y] fun _ => (0 : ℝ) := Filter.eventually_of_mem (hV.mem_nhds hy) hu
    unfold pd2
    rw [hev.fderiv_eq]
    simp
  
  have pd_cont : ∀ (u : E2 → ℝ) (V : Set E2), IsOpen V → ContDiffOn ℝ ∞ u V → ∀ i,
      ContinuousOn (fun x => pd2 i u x) V := by
    intro u V hV hu i
    exact (hu.continuousOn_fderiv_of_isOpen hV (by simp)).clm_apply continuousOn_const
  
  have hint : ∀ j (f : E2 → ℝ), ContinuousOn f (P.W j) →
      (∀ x ∈ P.W j, x ∉ Kc j → f x = 0) → IntegrableOn f (P.W j) := by
    intro j f hf hf0
    have h1 : IntegrableOn f (Kc j) := (hf.mono (hK j).2).integrableOn_compact (hK j).1
    exact h1.of_forall_diff_eq_zero (P.W_open j).measurableSet (fun x hx => hf0 x hx.1 hx.2)
  
  have s5 : ∀ j, ∀ x ∈ P.W j, x ∉ Kc j → ∀ e,
      pd2 e (fun x' => ρ j (P.param j x')) x = 0 := by
    intro j x hx hxK e
    exact pd_zero _ x (P.W j ∩ (Kc j)ᶜ) ((P.W_open j).inter (hK j).1.isClosed.isOpen_compl)
      ⟨hx, hxK⟩ (fun z hz => hρK j z hz.1 hz.2) e
  
  have s2 : ∀ j k, ∀ y ∈ P.W k, P.param k y ∉ P.O j → ∀ i,
      pd2 i (fun y' => ρ j (P.param k y')) y = 0 := by
    intro j k y hy hyO i
    have hCc : IsCompact (P.param j '' Kc j) :=
      (hK j).1.image_of_continuousOn ((P.param_cont j).mono (hK j).2)
    have hCO : P.param j '' Kc j ⊆ P.O j := by
      rintro _ ⟨x, hx, rfl⟩
      exact memO j x ((hK j).2 hx)
    refine pd_zero _ y (P.W k ∩ P.param k ⁻¹' (P.param j '' Kc j)ᶜ)
      ((P.param_cont k).isOpen_inter_preimage (P.W_open k) hCc.isClosed.isOpen_compl)
      ⟨hy, fun h => hyO (hCO h)⟩ ?_ i
    intro z hz
    by_cases hzO : P.param k z ∈ P.O j
    · have h2 : P.param k z ∈ P.param j '' P.W j := by
        rw [P.image_eq j]; exact ⟨hzO, memS k z hz.1⟩
      obtain ⟨x', hx', hx'z⟩ := h2
      have hx'K : x' ∉ Kc j := fun h => hz.2 ⟨x', h, hx'z⟩
      show ρ j (P.param k z) = 0
      rw [← hx'z]
      exact hρK j x' hx' hx'K
    · exact hρO j _ hzO
  
  have s3 : ∀ k, ∀ y ∈ P.W k, ∀ i, ∑ j, pd2 i (fun y' => ρ j (P.param k y')) y = 0 := by
    intro k y hy i
    have hd : ∀ j ∈ (Finset.univ : Finset (Fin P.n)),
        DifferentiableAt ℝ (fun y' => ρ j (P.param k y')) y :=
      fun j _ => ((hρs j k).differentiableOn (by simp)).differentiableAt
        ((P.W_open k).mem_nhds hy)
    have hsum := fderiv_fun_sum (u := Finset.univ) (A := fun j y' => ρ j (P.param k y')) hd
    have h0 : fderiv ℝ (fun y' => ∑ j, ρ j (P.param k y')) y = 0 := by
      have hev : (fun y' => ∑ j, ρ j (P.param k y')) =ᶠ[𝓝 y] fun _ => (1 : ℝ) :=
        Filter.eventually_of_mem ((P.W_open k).mem_nhds hy) (fun z hz => hρ1 _ (memS k z hz))
      rw [hev.fderiv_eq]
      simp
    have he : ∑ j, pd2 i (fun y' => ρ j (P.param k y')) y =
        (∑ j, fderiv ℝ (fun y' => ρ j (P.param k y')) y) (e2 i) := by
      rw [ContinuousLinearMap.sum_apply]
      rfl
    rw [he, ← hsum, h0]
    simp
  
  have hexp : ∀ (L : E2 →L[ℝ] ℝ) (v : E2), L v = ∑ i : Fin 2, v i * L (e2 i) := by
    intro L v
    have hv : v = ∑ i : Fin 2, v i • e2 i := by
      ext m
      fin_cases m <;> simp [Fin.sum_univ_two, EuclideanSpace.single_apply]
    conv_lhs => rw [hv]
    rw [map_sum]
    simp [map_smul, smul_eq_mul]
  
  have s1 : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      ∑ e : Fin 2, pd2 e (fun x' => ρ j (P.param j x')) x * Wv j x e =
        ∑ i : Fin 2, pd2 i (fun y => ρ j (P.param k y)) (P.proj k (P.param j x)) *
          Wv k (P.proj k (P.param j x)) i := by
    intro j k x hx
    obtain ⟨h1, -⟩ := hH3 j k x hx
    have hev : (fun x' => ρ j (P.param j x')) =ᶠ[𝓝 x]
        (fun y => ρ j (P.param k y)) ∘ (fun x' => P.proj k (P.param j x')) :=
      Filter.eventually_of_mem ((hAopen j k).mem_nhds hx) (fun z hz => by
        show ρ j (P.param j z) = ρ j (P.param k (P.proj k (P.param j z)))
        rw [(hH3 j k z hz).2])
    have hφd : DifferentiableAt ℝ (fun y => ρ j (P.param k y)) (P.proj k (P.param j x)) :=
      ((hρs j k).differentiableOn (by simp)).differentiableAt ((P.W_open k).mem_nhds h1)
    have hτd : DifferentiableAt ℝ (fun x' => P.proj k (P.param j x')) x :=
      ((P.trans_smooth j k).differentiableOn (by simp)).differentiableAt
        ((hAopen j k).mem_nhds hx)
    have hfd : fderiv ℝ (fun x' => ρ j (P.param j x')) x =
        (fderiv ℝ (fun y => ρ j (P.param k y)) (P.proj k (P.param j x))).comp
          (fderiv ℝ (fun x' => P.proj k (P.param j x')) x) := by
      rw [hev.fderiv_eq]
      exact fderiv_comp x hφd hτd
    have hpd : ∀ e : Fin 2, pd2 e (fun x' => ρ j (P.param j x')) x =
        ∑ i : Fin 2, fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 e) i *
          pd2 i (fun y => ρ j (P.param k y)) (P.proj k (P.param j x)) := by
      intro e
      show fderiv ℝ (fun x' => ρ j (P.param j x')) x (e2 e) = _
      rw [hfd, ContinuousLinearMap.comp_apply,
        hexp (fderiv ℝ (fun y => ρ j (P.param k y)) (P.proj k (P.param j x)))]
      rfl
    simp only [hpd, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [← hWt j k x hx i, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun e _ => ?_)
    ring
  
  have s4 : ∀ j (g : E2 → ℝ), ContinuousOn g (P.W j) → (∀ x ∈ P.W j, x ∉ Kc j → g x = 0) →
      ∫ x in P.W j, g x = ∑ k, ∫ x in P.W j ∩ P.param j ⁻¹' P.O k, ρ k (P.param j x) * g x := by
    intro j g hg hg0
    have hI : ∀ k ∈ (Finset.univ : Finset (Fin P.n)),
        Integrable (fun x => ρ k (P.param j x) * g x) (volume.restrict (P.W j)) := by
      intro k _
      refine hint j _ ((hρs k j).continuousOn.mul hg) ?_
      intro x hx hxK
      rw [hg0 x hx hxK, mul_zero]
    calc ∫ x in P.W j, g x = ∫ x in P.W j, ∑ k, ρ k (P.param j x) * g x := by
          refine setIntegral_congr_fun (P.W_open j).measurableSet (fun x hx => ?_)
          show g x = ∑ k, ρ k (P.param j x) * g x
          rw [← Finset.sum_mul, hρ1 _ (memS j x hx), one_mul]
      _ = ∑ k, ∫ x in P.W j, ρ k (P.param j x) * g x := integral_finset_sum _ hI
      _ = _ := by
          refine Finset.sum_congr rfl (fun k _ => ?_)
          refine setIntegral_eq_of_subset_of_forall_diff_eq_zero (P.W_open j).measurableSet
            Set.inter_subset_left ?_
          intro x hx
          have hxO : P.param j x ∉ P.O k := fun h => hx.2 ⟨hx.1, h⟩
          show ρ k (P.param j x) * g x = 0
          rw [hρO k _ hxO, zero_mul]
  
  obtain ⟨G, hG⟩ : ∃ G : Fin P.n → Fin P.n → E2 → ℝ, ∀ j k y, G j k y =
      ρ k (P.param k y) * ∑ i : Fin 2, pd2 i (fun y' => ρ j (P.param k y')) y * Wv k y i :=
    ⟨fun j k y => ρ k (P.param k y) * ∑ i : Fin 2, pd2 i (fun y' => ρ j (P.param k y')) y *
      Wv k y i, fun _ _ _ => rfl⟩
  have hstep : ∀ j, ∑ e : Fin 2, ∫ x in P.W j, pd2 e (fun x' => ρ j (P.param j x')) x *
      (Real.sqrt (hm j x).det * Wv j x e) =
      ∑ k, ∫ y in P.W k, G j k y * Real.sqrt (hm k y).det := by
    intro j
    have hfc : ∀ e, ContinuousOn (fun x => pd2 e (fun x' => ρ j (P.param j x')) x *
        (Real.sqrt (hm j x).det * Wv j x e)) (P.W j) :=
      fun e => (pd_cont _ _ (P.W_open j) (hρs j j) e).mul ((hmc j).mul (hWc j e))
    have hf0 : ∀ e, ∀ x ∈ P.W j, x ∉ Kc j → pd2 e (fun x' => ρ j (P.param j x')) x *
        (Real.sqrt (hm j x).det * Wv j x e) = 0 := by
      intro e x hx hxK
      rw [s5 j x hx hxK e, zero_mul]
    rw [← integral_finset_sum _ (fun e _ => hint j _ (hfc e) (hf0 e))]
    rw [s4 j _ (continuousOn_finset_sum _ (fun e _ => hfc e))
      (fun x hx hxK => Finset.sum_eq_zero (fun e _ => hf0 e x hx hxK))]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    have hpt : ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
        ρ k (P.param j x) * ∑ e : Fin 2, pd2 e (fun x' => ρ j (P.param j x')) x *
          (Real.sqrt (hm j x).det * Wv j x e) =
        G j k (P.proj k (P.param j x)) * Real.sqrt (hm j x).det := by
      intro x hx
      have h3 := s1 j k x hx
      have h2 := (hH3 j k x hx).2
      rw [hG, h2]
      have hsplit : ∑ e : Fin 2, pd2 e (fun x' => ρ j (P.param j x')) x *
          (Real.sqrt (hm j x).det * Wv j x e) =
          Real.sqrt (hm j x).det * ∑ e : Fin 2, pd2 e (fun x' => ρ j (P.param j x')) x * Wv j x e := by
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl (fun e _ => by ring)
      rw [hsplit, h3]
      ring
    rw [setIntegral_congr_fun (hAopen j k).measurableSet hpt, hcov j k (G j k)]
    refine (setIntegral_eq_of_subset_of_forall_diff_eq_zero (P.W_open k).measurableSet
      Set.inter_subset_left ?_).symm
    intro y hy
    have hyO : P.param k y ∉ P.O j := fun h => hy.2 ⟨hy.1, h⟩
    show G j k y * Real.sqrt (hm k y).det = 0
    rw [hG, Finset.sum_eq_zero (fun i _ => by rw [s2 j k y hy.1 hyO i, zero_mul]), mul_zero,
      zero_mul]
  rw [Finset.sum_congr rfl (fun j _ => hstep j), Finset.sum_comm]
  refine Finset.sum_eq_zero (fun k _ => ?_)
  have hGc : ∀ j, IntegrableOn (fun y => G j k y * Real.sqrt (hm k y).det) (P.W k) := by
    intro j
    have hfun : (fun y => G j k y * Real.sqrt (hm k y).det) = fun y =>
        ρ k (P.param k y) * (∑ i : Fin 2, pd2 i (fun y' => ρ j (P.param k y')) y * Wv k y i) *
          Real.sqrt (hm k y).det := by
      funext y
      rw [hG]
    rw [hfun]
    refine hint k _ (((hρs k k).continuousOn.mul (continuousOn_finset_sum _ (fun i _ =>
      (pd_cont _ _ (P.W_open k) (hρs j k) i).mul (hWc k i)))).mul (hmc k)) ?_
    intro y hy hyK
    rw [hρK k y hy hyK, zero_mul, zero_mul]
  rw [← integral_finset_sum _ (fun j _ => hGc j)]
  refine setIntegral_eq_zero_of_forall_eq_zero (fun y hy => ?_)
  show ∑ j, G j k y * Real.sqrt (hm k y).det = 0
  simp only [hG]
  calc ∑ j, ρ k (P.param k y) * (∑ i : Fin 2, pd2 i (fun y' => ρ j (P.param k y')) y * Wv k y i) *
        Real.sqrt (hm k y).det
      = ∑ i : Fin 2, (ρ k (P.param k y) * Real.sqrt (hm k y).det * Wv k y i) *
          ∑ j, pd2 i (fun y' => ρ j (P.param k y')) y := by
        simp only [Finset.mul_sum, Finset.sum_mul]
        rw [Finset.sum_comm]
        refine Finset.sum_congr rfl (fun _ _ => Finset.sum_congr rfl (fun _ _ => by ring))
    _ = 0 := by
        simp only [s3 k y hy, mul_zero, Finset.sum_const_zero]

theorem patched_family_total_curvature_const {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hS : IsCompact S) (P : EigPatchedSurface X S)
    (ρ : Fin P.n → X → ℝ) (Kc : Fin P.n → Set E2)
    (hρnn : ∀ j q, 0 ≤ ρ j q)
    (hρs : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1)
    (hK : ∀ j, IsCompact (Kc j) ∧ Kc j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ Kc j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0)
    (a b : ℝ) (hfam : ℝ → Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ)
    (hs : ∀ j (c d : Fin 2), ContDiffOn ℝ ∞ (fun p : ℝ × E2 => hfam p.1 j p.2 c d)
      (Set.Ioo a b ×ˢ P.W j))
    (hpos : ∀ t ∈ Set.Ioo a b, ∀ j, ∀ x ∈ P.W j, (hfam t j x).PosDef)
    (hcompat : ∀ t ∈ Set.Ioo a b, ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, ∀ c d : Fin 2,
      hfam t j x c d = ∑ c' : Fin 2, ∑ d' : Fin 2,
        fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 c) c' *
          hfam t k (P.proj k (P.param j x)) c' d' *
          fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 d) d') :
    ∀ t₁ ∈ Set.Ioo a b, ∀ t₂ ∈ Set.Ioo a b,
      (∑ j, ∫ x in P.W j, ρ j (P.param j x) * gaussCurv2 (hfam t₁ j) x *
          Real.sqrt (hfam t₁ j x).det) =
      ∑ j, ∫ x in P.W j, ρ j (P.param j x) * gaussCurv2 (hfam t₂ j) x *
          Real.sqrt (hfam t₂ j x).det :=
by
  intro t₁ ht₁ t₂ ht₂
  
  have hsm : ∀ t ∈ Set.Ioo a b, ∀ j (c d : Fin 2),
      ContDiffOn ℝ ∞ (fun x => hfam t j x c d) (P.W j) := by
    intro t ht j c d
    have hm : Set.MapsTo (fun x : E2 => (t, x)) (P.W j) (Set.Ioo a b ×ˢ P.W j) :=
      fun x hx => ⟨ht, hx⟩
    exact (hs j c d).comp (contDiff_const.prodMk contDiff_id).contDiffOn hm
  
  have hΓ : ∀ j, ∀ k i l : Fin 2, ContDiffOn ℝ ∞
      (fun p : ℝ × E2 => christoffel2 ((fun s => hfam s j) p.1) k i l p.2)
      (Set.Ioo a b ×ˢ P.W j) := fun j =>
    christoffel2_family_smooth (P.W j) (P.W_open j) a b (fun s => hfam s j) (hs j)
      (fun t ht x hx => hpos t ht j x hx)
  have hR := fun j => gb_family_regular (P.W j) (P.W_open j) a b (fun s => hfam s j) (hs j)
      (fun t ht x hx => hpos t ht j x hx) (hΓ j)
  
  have hpt : ∀ j, ∀ t ∈ Set.Ioo a b, ∀ x ∈ P.W j,
      HasDerivAt (fun s => gaussCurv2 (hfam s j) x * Real.sqrt (hfam s j x).det)
        ((1 / 2 : ℝ) * ∑ e : Fin 2, pd2 e (fun y => Real.sqrt (hfam t j y).det *
          gbW (fun s => hfam s j) t y e) x) t := by
    intro j t ht x hx
    exact gb_variation_pointwise (P.W j) (P.W_open j) a b (fun s => hfam s j) (hs j)
      (fun t ht x hx => hpos t ht j x hx) (hΓ j) t ht x hx
      (fun c d => ricci2_two_dim (P.W j) (P.W_open j) (hfam t j) (hsm t ht j)
        (hpos t ht j) x hx c d)
  
  have hint : ∀ j (f : E2 → ℝ), ContinuousOn f (P.W j) →
      (∀ x ∈ P.W j, x ∉ Kc j → f x = 0) → MeasureTheory.IntegrableOn f (P.W j) := by
    intro j f hf hf0
    have h1 : MeasureTheory.IntegrableOn f (Kc j) :=
      (hf.mono (hK j).2).integrableOn_compact (hK j).1
    exact h1.of_forall_diff_eq_zero (P.W_open j).measurableSet
      (fun x hx => hf0 x hx.1 hx.2)
  
  have hibp : ∀ j (u : E2 → ℝ), ContDiffOn ℝ ∞ u (P.W j) → ∀ e : Fin 2,
      ∫ x in P.W j, ρ j (P.param j x) * pd2 e u x =
        -∫ x in P.W j, pd2 e (fun x' => ρ j (P.param j x')) x * u x := by
    intro j u hu e
    obtain ⟨ζ, hζdef⟩ : ∃ ζ : E2 → ℝ, ζ = (P.W j).indicator (fun x => ρ j (P.param j x)) :=
      ⟨_, rfl⟩
    have hWo : IsOpen (P.W j) := P.W_open j
    have hKcl : IsClosed (Kc j) := (hK j).1.isClosed
    have hζin : ∀ x ∈ P.W j, ζ x = ρ j (P.param j x) := by
      intro x hx; rw [hζdef, Set.indicator_of_mem hx]
    have hζout : ∀ x, x ∉ P.W j → ζ x = 0 := by
      intro x hx; rw [hζdef, Set.indicator_of_notMem hx]
    have hζ0 : ∀ x, x ∉ Kc j → ζ x = 0 := by
      intro x hx
      by_cases hxW : x ∈ P.W j
      · rw [hζin x hxW]; exact hρK j x hxW hx
      · exact hζout x hxW
    have hζeq : ∀ x ∈ P.W j, ζ =ᶠ[𝓝 x] (fun x' => ρ j (P.param j x')) := by
      intro x hx
      filter_upwards [hWo.mem_nhds hx] with y hy
      exact hζin y hy
    have hsupp : Function.support ζ ⊆ Kc j := by
      intro x hx
      by_contra h
      exact hx (hζ0 x h)
    have htsupp : tsupport ζ ⊆ Kc j := closure_minimal hsupp hKcl
    have hζs : ContDiff ℝ ∞ ζ := by
      rw [contDiff_iff_contDiffAt]
      intro x
      by_cases hxW : x ∈ P.W j
      · exact ((hρs j j).contDiffAt (hWo.mem_nhds hxW)).congr_of_eventuallyEq (hζeq x hxW)
      · have hxK : x ∉ Kc j := fun h => hxW ((hK j).2 h)
        have hev : ζ =ᶠ[𝓝 x] fun _ => (0 : ℝ) := by
          filter_upwards [hKcl.isOpen_compl.mem_nhds hxK] with y hy
          exact hζ0 y hy
        exact contDiffAt_const.congr_of_eventuallyEq hev
    have hζc : HasCompactSupport ζ := HasCompactSupport.intro (hK j).1 hζ0
    have hζW : tsupport ζ ⊆ P.W j := htsupp.trans (hK j).2
    have key := ibp_open_test (P.W j) hWo u hu ζ hζs hζc hζW e
    have hpdin : ∀ x ∈ P.W j, pd2 e ζ x = pd2 e (fun x' => ρ j (P.param j x')) x := by
      intro x hx
      unfold pd2
      rw [(hζeq x hx).fderiv_eq]
    have hpdout : ∀ x, x ∉ P.W j → pd2 e ζ x = 0 := by
      intro x hx
      have hx' : x ∉ tsupport ζ := fun h => hx (hζW h)
      have h0 : fderiv ℝ ζ x = 0 := by
        by_contra hne
        exact hx' (support_fderiv_subset ℝ hne)
      unfold pd2
      rw [h0]
      rfl
    have e1 : ∫ x in P.W j, u x * pd2 e ζ x = ∫ x, u x * pd2 e ζ x :=
      MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
        (fun x hx => by rw [hpdout x hx, mul_zero])
    have e2' : ∫ x in P.W j, pd2 e u x * ζ x = ∫ x, pd2 e u x * ζ x :=
      MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
        (fun x hx => by rw [hζout x hx, mul_zero])
    have e3 : ∫ x in P.W j, u x * pd2 e ζ x =
        ∫ x in P.W j, pd2 e (fun x' => ρ j (P.param j x')) x * u x := by
      refine MeasureTheory.setIntegral_congr_fun hWo.measurableSet ?_
      intro x hx
      simp only
      rw [hpdin x hx, mul_comm]
    have e4 : ∫ x in P.W j, pd2 e u x * ζ x =
        ∫ x in P.W j, ρ j (P.param j x) * pd2 e u x := by
      refine MeasureTheory.setIntegral_congr_fun hWo.measurableSet ?_
      intro x hx
      simp only
      rw [hζin x hx, mul_comm]
    rw [← e1, ← e2', e3, e4] at key
    linarith
  
  have hτmaps : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, P.proj k (P.param j x) ∈ P.W k := by
    intro j k x hx
    have h1 : P.param j x ∈ P.O j ∩ S := by
      rw [← P.image_eq j]; exact ⟨x, hx.1, rfl⟩
    have h2 : P.param j x ∈ P.param k '' P.W k := by
      rw [P.image_eq k]; exact ⟨hx.2, h1.2⟩
    obtain ⟨y, hy, hyx⟩ := h2
    rw [← hyx, P.proj_param k y hy]
    exact hy
  have hAopen : ∀ j k, IsOpen (P.W j ∩ P.param j ⁻¹' P.O k) := fun j k =>
    (P.param_cont j).isOpen_inter_preimage (P.W_open j) (P.O_open k)
  
  have hWt : ∀ t ∈ Set.Ioo a b, ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, ∀ i : Fin 2,
      ∑ e : Fin 2, fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 e) i *
        gbW (fun s => hfam s j) t x e =
        gbW (fun s => hfam s k) t (P.proj k (P.param j x)) i := by
    intro t ht j k x hx i
    have hy := hτmaps j k x hx
    exact gbW_transform a b t ht (fun s => hfam s j) (fun s => hfam s k) x
      (P.proj k (P.param j x))
      (Matrix.of fun p q => fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 q) p)
      (fun m p q => fderiv ℝ (fun y => fderiv ℝ (fun x' => P.proj k (P.param j x')) y (e2 q)) x
        (e2 p) m)
      (hpos t ht j x hx.1) (hpos t ht k _ hy)
      (fun s hs c d => hcompat s hs j k x hx c d)
      (fun s hs m p q => christoffel2_transform (P.W j ∩ P.param j ⁻¹' P.O k) (P.W k)
        (hAopen j k) (P.W_open k) (fun x' => P.proj k (P.param j x')) (P.trans_smooth j k)
        (hτmaps j k) (hfam s j) (hfam s k) (hsm s hs k) (hpos s hs k)
        (fun x hx => hpos s hs j x hx.1) (hcompat s hs j k) x hx m p q)
      (fun e p q => (hR j).1 e p q t ht x hx.1) (fun e p q => (hR k).1 e p q t ht _ hy) i
  
  have hderiv : ∀ t ∈ Set.Ioo a b, HasDerivAt
      (fun s => ∑ j, ∫ x in P.W j, ρ j (P.param j x) * gaussCurv2 (hfam s j) x *
          Real.sqrt (hfam s j x).det) 0 t := by
    intro t ht
    have hD : ∀ j, HasDerivAt
        (fun s => ∫ x in P.W j, ρ j (P.param j x) *
          (gaussCurv2 (hfam s j) x * Real.sqrt (hfam s j x).det))
        (∫ x in P.W j, ρ j (P.param j x) * ((1 / 2 : ℝ) * ∑ e : Fin 2,
          pd2 e (fun y => Real.sqrt (hfam t j y).det * gbW (fun s => hfam s j) t y e) x)) t := by
      intro j
      have hF' : ContinuousOn (fun p : ℝ × E2 => (1 / 2 : ℝ) * ∑ e : Fin 2,
          pd2 e (fun y => Real.sqrt (hfam p.1 j y).det * gbW (fun s => hfam s j) p.1 y e) p.2)
          (Set.Ioo a b ×ˢ P.W j) :=
        continuousOn_const.mul (continuousOn_finset_sum _ fun e _ => (hR j).2.2.1 e)
      exact integral_hasDerivAt_cutoff (P.W j) (Kc j) (P.W_open j) (hK j).1 (hK j).2 a b
        (fun x => ρ j (P.param j x)) (hρs j j).continuousOn (hρK j)
        (fun s x => gaussCurv2 (hfam s j) x * Real.sqrt (hfam s j x).det)
        (fun s x => (1 / 2 : ℝ) * ∑ e : Fin 2,
          pd2 e (fun y => Real.sqrt (hfam s j y).det * gbW (fun s => hfam s j) s y e) x)
        (hR j).2.1 hF' (fun t ht x hx => hpt j t ht x hx) t ht
    have hsum := HasDerivAt.sum (u := Finset.univ) (fun j _ => hD j)
    have hj : ∀ j, ∫ x in P.W j, ρ j (P.param j x) * ((1 / 2 : ℝ) * ∑ e : Fin 2,
          pd2 e (fun y => Real.sqrt (hfam t j y).det * gbW (fun s => hfam s j) t y e) x) =
        -(1 / 2 : ℝ) * ∑ e : Fin 2, ∫ x in P.W j, pd2 e (fun x' => ρ j (P.param j x')) x *
          (Real.sqrt (hfam t j x).det * gbW (fun s => hfam s j) t x e) := by
      intro j
      have hcongr : ∀ x, ρ j (P.param j x) * ((1 / 2 : ℝ) * ∑ e : Fin 2,
          pd2 e (fun y => Real.sqrt (hfam t j y).det * gbW (fun s => hfam s j) t y e) x) =
          (1 / 2 : ℝ) * ∑ e : Fin 2, ρ j (P.param j x) *
            pd2 e (fun y => Real.sqrt (hfam t j y).det * gbW (fun s => hfam s j) t y e) x := by
        intro x
        simp only [Finset.mul_sum]
        refine Finset.sum_congr rfl fun e _ => ?_
        ring
      have hcont : ∀ e : Fin 2, ContinuousOn (fun y =>
          pd2 e (fun y' => Real.sqrt (hfam t j y').det * gbW (fun s => hfam s j) t y' e) y)
          (P.W j) := by
        intro e
        have hcf := ((hR j).2.2.2.1 t ht e).continuousOn_fderiv_of_isOpen (P.W_open j)
          (by simp)
        exact hcf.clm_apply continuousOn_const
      have hI : ∀ e ∈ (Finset.univ : Finset (Fin 2)), MeasureTheory.Integrable (fun x =>
          ρ j (P.param j x) *
            pd2 e (fun y => Real.sqrt (hfam t j y).det * gbW (fun s => hfam s j) t y e) x)
          (MeasureTheory.volume.restrict (P.W j)) := by
        intro e _
        refine hint j _ ((hρs j j).continuousOn.mul (hcont e)) ?_
        intro x hx hxK
        rw [hρK j x hx hxK, zero_mul]
      simp only [hcongr]
      rw [MeasureTheory.integral_const_mul, MeasureTheory.integral_finset_sum _ hI]
      simp only [hibp j _ ((hR j).2.2.2.1 t ht _), Finset.sum_neg_distrib]
      ring
    have h8 := patched_divergence_sum_zero S P ρ Kc hρs hρ1 hK hρK hρO (fun j => hfam t j)
      (fun j => (hR j).2.2.2.2.2 t ht)
      (fun j k G => (eig_chart_cov S (P.withMetric (fun j => hfam t j) (hsm t ht) (hpos t ht)
        (hcompat t ht)) j k G).1)
      (fun j x e => gbW (fun s => hfam s j) t x e)
      (fun j e => (hR j).2.2.2.2.1 t ht e) (hWt t ht)
    have hval : ∑ j, ∫ x in P.W j, ρ j (P.param j x) * ((1 / 2 : ℝ) * ∑ e : Fin 2,
          pd2 e (fun y => Real.sqrt (hfam t j y).det * gbW (fun s => hfam s j) t y e) x) = 0 := by
      simp only [hj]
      rw [← Finset.mul_sum, h8, mul_zero]
    rw [hval] at hsum
    have hfun : (fun s => ∑ j, ∫ x in P.W j, ρ j (P.param j x) * gaussCurv2 (hfam s j) x *
          Real.sqrt (hfam s j x).det) = fun s => ∑ j, ∫ x in P.W j, ρ j (P.param j x) *
          (gaussCurv2 (hfam s j) x * Real.sqrt (hfam s j x).det) := by
      funext s
      simp only [mul_assoc]
    rw [hfun]
    convert hsum using 1
    funext s
    simp only [Finset.sum_apply]
  
  exact IsOpen.is_const_of_deriv_eq_zero isOpen_Ioo isPreconnected_Ioo
    (fun t ht => (hderiv t ht).differentiableAt.differentiableWithinAt)
    (fun t ht => (hderiv t ht).deriv) ht₁ ht₂

theorem patched_conformal_total_curvature_eq {X : Type*} [TopologicalSpace X] [T2Space X]
    (S : Set X) (hS : IsCompact S) (P : EigPatchedSurface X S)
    (ρ : Fin P.n → X → ℝ) (Kc : Fin P.n → Set E2)
    (hρnn : ∀ j q, 0 ≤ ρ j q)
    (hρs : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1)
    (hK : ∀ j, IsCompact (Kc j) ∧ Kc j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ Kc j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0)
    (v : Fin P.n → E2 → ℝ) (hv : ∀ j, ContDiffOn ℝ ∞ (v j) (P.W j))
    (hvpos : ∀ j, ∀ x ∈ P.W j, 0 < v j x)
    (hvc : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k, v j x = v k (P.proj k (P.param j x))) :
    eigWInt P ρ (fun j x => gaussCurv2 (fun y => (v j y) ^ 2 • P.h j y) x * (v j x) ^ 2) =
      eigWInt P ρ (fun j x => gaussCurv2 (P.h j) x) :=
by
  obtain ⟨hfam, hfam_def⟩ : ∃ f : ℝ → Fin P.n → E2 → Matrix (Fin 2) (Fin 2) ℝ,
      f = fun s j y => ((v j y) ^ s) ^ 2 • P.h j y := ⟨_, rfl⟩
  
  have s1 : ∀ (s : ℝ) (j : Fin P.n) (y : E2) (c d : Fin 2),
      hfam s j y c d = ((v j y) ^ s) ^ 2 * P.h j y c d := by
    intro s j y c d
    rw [hfam_def]
    simp only [Matrix.smul_apply, smul_eq_mul]
  
  have hs : ∀ j (c d : Fin 2), ContDiffOn ℝ ∞ (fun p : ℝ × E2 => hfam p.1 j p.2 c d)
      (Set.Ioo (-1 : ℝ) 2 ×ˢ P.W j) := by
    intro j c d
    have hf : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => v j p.2) (Set.Ioo (-1 : ℝ) 2 ×ˢ P.W j) :=
      (hv j).comp contDiffOn_snd (fun p hp => hp.2)
    have hg : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => p.1) (Set.Ioo (-1 : ℝ) 2 ×ˢ P.W j) :=
      contDiffOn_fst
    have hne : ∀ p ∈ Set.Ioo (-1 : ℝ) 2 ×ˢ P.W j, v j p.2 ≠ 0 :=
      fun p hp => (hvpos j p.2 hp.2).ne'
    have hh : ContDiffOn ℝ ∞ (fun p : ℝ × E2 => P.h j p.2 c d) (Set.Ioo (-1 : ℝ) 2 ×ˢ P.W j) :=
      (P.h_smooth j c d).comp contDiffOn_snd (fun p hp => hp.2)
    have hall := ((hf.rpow hg hne).pow 2).mul hh
    refine hall.congr ?_
    intro p _
    exact s1 p.1 j p.2 c d
  
  have hpos : ∀ t ∈ Set.Ioo (-1 : ℝ) 2, ∀ j, ∀ x ∈ P.W j, (hfam t j x).PosDef := by
    intro t _ j x hx
    rw [hfam_def]
    exact (P.h_posDef j x hx).smul (pow_pos (Real.rpow_pos_of_pos (hvpos j x hx) t) 2)
  
  have hcompat : ∀ t ∈ Set.Ioo (-1 : ℝ) 2, ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      ∀ c d : Fin 2,
      hfam t j x c d = ∑ c' : Fin 2, ∑ d' : Fin 2,
        fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 c) c' *
          hfam t k (P.proj k (P.param j x)) c' d' *
          fderiv ℝ (fun x' => P.proj k (P.param j x')) x (e2 d) d' := by
    intro t _ j k x hx c d
    simp only [s1]
    rw [← hvc j k x hx, P.h_compat j k x hx c d]
    simp only [Fin.sum_univ_two]
    ring
  
  have hTC := patched_family_total_curvature_const S hS P ρ Kc hρnn hρs hρ1 hK hρK hρO
    (-1) 2 hfam hs hpos hcompat 0 ⟨by norm_num, by norm_num⟩ 1 ⟨by norm_num, by norm_num⟩
  
  have h0 : ∀ j, hfam 0 j = P.h j := by
    intro j
    funext y
    rw [hfam_def]
    simp only [Real.rpow_zero, one_pow, one_smul]
  have h1 : ∀ j, hfam 1 j = fun y => (v j y) ^ 2 • P.h j y := by
    intro j
    funext y
    rw [hfam_def]
    simp only [Real.rpow_one]
  simp only [h0, h1] at hTC
  
  unfold eigWInt
  rw [hTC]
  refine Finset.sum_congr rfl (fun j _ => ?_)
  congr 1
  funext x
  have hdet : ((v j x) ^ 2 • P.h j x).det = ((v j x) ^ 2) ^ 2 * (P.h j x).det := by
    rw [Matrix.det_smul, Fintype.card_fin]
  have hsq : Real.sqrt (((v j x) ^ 2) ^ 2 * (P.h j x).det) =
      (v j x) ^ 2 * Real.sqrt (P.h j x).det := by
    rw [Real.sqrt_mul (by positivity), Real.sqrt_sq (by positivity)]
  rw [hdet, hsq]
  ring

theorem cmc_leaf_monotone [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hR : ∀ p : M, 0 ≤ g.scalarCurvature p)
    (S : Set M) (P : EigPatchedSurface M S) (ρ : Fin P.n → M → ℝ) (Kc : Fin P.n → Set E2)
    (hρnn : ∀ j q, 0 ≤ ρ j q)
    (hρs : ∀ j k, ContDiffOn ℝ ∞ (fun x => ρ j (P.param k x)) (P.W k))
    (hρ1 : ∀ q ∈ S, ∑ j, ρ j q = 1)
    (hK : ∀ j, IsCompact (Kc j) ∧ Kc j ⊆ P.W j)
    (hρK : ∀ j, ∀ x ∈ P.W j, x ∉ Kc j → ρ j (P.param j x) = 0)
    (hρO : ∀ j q, q ∉ P.O j → ρ j q = 0)
    (hne : ∃ j, ∃ x ∈ P.W j, 0 < ρ j (P.param j x))
    (z : Fin P.n → M) (F : Fin P.n → E2 → E3)
    (hFs : ∀ j, ContDiffOn ℝ ∞ (F j) (P.W j))
    (hFt : ∀ j, ∀ x ∈ P.W j, F j x ∈ (chartAt E3 (z j)).target ∧
      Function.Injective (fderiv ℝ (F j) x))
    (hh : ∀ j, P.h j = pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (F j))
    (hsame : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      (chartAt E3 (z j)).symm (F j x) = (chartAt E3 (z k)).symm (F k (P.proj k (P.param j x))))
    (Q : Set M) (hQ : IsOpen Q) (w : M → ℝ) (hw : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w Q)
    (hdw : ∀ x ∈ Q, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0)
    (hcm : ℝ → ℝ) (hH : ∀ x ∈ Q, g.levelMeanCurv w x = hcm (w x))
    (t : ℝ) (hleaf : ∀ j, ∀ x ∈ P.W j,
      (chartAt E3 (z j)).symm (F j x) ∈ Q ∧ w ((chartAt E3 (z j)).symm (F j x)) = t)
    (hd : DifferentiableAt ℝ hcm t)
    (htot : eigWInt P ρ (fun j x => gaussCurv2 (P.h j) x) ≤ 0) :
    deriv hcm t ≤ 0 :=
by
  
  have hS : IsCompact S := by
    have heq : S = ⋃ j, P.param j '' Kc j := by
      apply Set.Subset.antisymm
      · intro q hq
        have h1 : ∑ j, ρ j q ≠ 0 := by rw [hρ1 q hq]; exact one_ne_zero
        obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero h1
        have hqO : q ∈ P.O j := by
          by_contra hc
          exact hj (hρO j q hc)
        have hqim : q ∈ P.param j '' P.W j := by
          rw [P.image_eq j]
          exact ⟨hqO, hq⟩
        obtain ⟨x, hx, rfl⟩ := hqim
        have hxK : x ∈ Kc j := by
          by_contra hc
          exact hj (hρK j x hx hc)
        exact Set.mem_iUnion.2 ⟨j, x, hxK, rfl⟩
      · intro q hq
        obtain ⟨j, x, hx, rfl⟩ := Set.mem_iUnion.1 hq
        have hmem : P.param j x ∈ P.param j '' P.W j := ⟨x, (hK j).2 hx, rfl⟩
        rw [P.image_eq j] at hmem
        exact hmem.2
    rw [heq]
    exact isCompact_iUnion fun j =>
      (hK j).1.image_of_continuousOn ((P.param_cont j).mono (hK j).2)
  
  have hloc : ∀ (h₁ h₂ : E2 → Matrix (Fin 2) (Fin 2) ℝ) (x : E2), h₁ =ᶠ[𝓝 x] h₂ →
      gaussCurv2 h₁ x = gaussCurv2 h₂ x := by
    intro h₁ h₂ x hev
    have hchr : ∀ k i j : Fin 2, christoffel2 h₁ k i j =ᶠ[𝓝 x] christoffel2 h₂ k i j := by
      intro k i j
      filter_upwards [hev.eventuallyEq_nhds] with y hy
      have hpd : ∀ a b c : Fin 2,
          pd2 c (fun z' => h₁ z' a b) y = pd2 c (fun z' => h₂ z' a b) y := by
        intro a b c
        have he : (fun z' => h₁ z' a b) =ᶠ[𝓝 y] (fun z' => h₂ z' a b) :=
          hy.mono (fun z' hz => by simp only [hz])
        unfold pd2
        rw [he.fderiv_eq]
      have hyy : h₁ y = h₂ y := hy.eq_of_nhds
      simp only [christoffel2, hyy, hpd]
    have hx : h₁ x = h₂ x := hev.eq_of_nhds
    have hchrx : ∀ k i j : Fin 2, christoffel2 h₁ k i j x = christoffel2 h₂ k i j x :=
      fun k i j => (hchr k i j).eq_of_nhds
    have hpdc : ∀ c k i j : Fin 2,
        pd2 c (christoffel2 h₁ k i j) x = pd2 c (christoffel2 h₂ k i j) x := by
      intro c k i j
      unfold pd2
      rw [(hchr k i j).fderiv_eq]
    simp only [gaussCurv2, ricci2, hx, hpdc, hchrx]
  
  have hCD := fun j => cml_chart_data g (z j) Q hQ w hw hdw hcm hH t hd
  have hFU : ∀ j, ∀ x ∈ P.W j,
      F j x ∈ (chartAt E3 (z j)).target ∩ (chartAt E3 (z j)).symm ⁻¹' Q :=
    fun j x hx => ⟨(hFt j x hx).1, (hleaf j x hx).1⟩
  have hPW : ∀ j, ContDiffOn ℝ ∞ (fun y => ejpPsi (g.coeff (chartAt E3 (z j)).symm)
        (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j y)) (P.W j) ∧
      ∀ x ∈ P.W j, 0 < ejpPsi (g.coeff (chartAt E3 (z j)).symm)
          (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j x) ∧
        deriv hcm t * (ejpPsi (g.coeff (chartAt E3 (z j)).symm)
          (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j x))⁻¹ ≤
          gaussCurv2 (fun y => (ejpPsi (g.coeff (chartAt E3 (z j)).symm)
              (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j y)) ^ 2 •
              pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (F j) y) x *
            (ejpPsi (g.coeff (chartAt E3 (z j)).symm)
              (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j x)) ^ 2 := by
    intro j
    obtain ⟨hUo, hΦs, hdΦ, -, hJ⟩ := hCD j
    exact cml_leaf_conformal_pointwise g hR (z j)
      (fun y' => w ((chartAt E3 (z j)).symm y') - t)
      ((chartAt E3 (z j)).target ∩ (chartAt E3 (z j)).symm ⁻¹' Q) hUo
      Set.inter_subset_left hΦs hdΦ (P.W j) (P.W_open j) (F j) (hFs j)
      (fun x hx => ⟨hFU j x hx, sub_eq_zero.mpr (hleaf j x hx).2, (hFt j x hx).2⟩)
      (deriv hcm t) (fun x hx => hJ (F j x) (hFU j x hx) (hleaf j x hx).2)
  
  obtain ⟨ψ, hψdef⟩ : ∃ ψ : Fin P.n → E2 → ℝ, ψ = fun j x =>
      (Real.sqrt (g.gradInner w w ((chartAt E3 (z j)).symm (F j x))))⁻¹ := ⟨_, rfl⟩
  have hψeq : ∀ j, ∀ x ∈ P.W j, ejpPsi (g.coeff (chartAt E3 (z j)).symm)
      (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j x) = ψ j x := by
    intro j x hx
    obtain ⟨-, -, -, hSg, -⟩ := hCD j
    simp only [hψdef, ejpPsi]
    rw [hSg (F j x) (hFU j x hx)]
  have hψs : ∀ j, ContDiffOn ℝ ∞ (ψ j) (P.W j) := fun j =>
    (hPW j).1.congr (fun x hx => (hψeq j x hx).symm)
  have hψpos : ∀ j, ∀ x ∈ P.W j, 0 < ψ j x := by
    intro j x hx
    rw [← hψeq j x hx]
    exact ((hPW j).2 x hx).1
  have hineq : ∀ j, ∀ x ∈ P.W j, deriv hcm t * (ψ j x)⁻¹ ≤
      gaussCurv2 (fun y => (ψ j y) ^ 2 • P.h j y) x * (ψ j x) ^ 2 := by
    intro j x hx
    have h1 := ((hPW j).2 x hx).2
    have hev : (fun y => (ejpPsi (g.coeff (chartAt E3 (z j)).symm)
        (fun y' => w ((chartAt E3 (z j)).symm y') - t) (F j y)) ^ 2 •
          pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (F j) y) =ᶠ[𝓝 x]
        (fun y => (ψ j y) ^ 2 • P.h j y) := by
      filter_upwards [(P.W_open j).mem_nhds hx] with y hy
      rw [hψeq j y hy, hh j]
    rw [hloc _ _ x hev, hψeq j x hx] at h1
    exact h1
  have hvc : ∀ j k, ∀ x ∈ P.W j ∩ P.param j ⁻¹' P.O k,
      ψ j x = ψ k (P.proj k (P.param j x)) := by
    intro j k x hx
    simp only [hψdef]
    rw [hsame j k x hx]
  
  have hψc : ∀ j, ContinuousOn (ψ j) (P.W j) := fun j => (hψs j).continuousOn
  have hψinv : ∀ j, ContinuousOn (fun x => (ψ j x)⁻¹) (P.W j) := fun j =>
    (hψc j).inv₀ (fun x hx => (hψpos j x hx).ne')
  have hhat : ∀ j (a b : Fin 2),
      ContDiffOn ℝ ∞ (fun x => ((fun y => (ψ j y) ^ 2 • P.h j y) x) a b) (P.W j) := by
    intro j a b
    have h1 : ContDiffOn ℝ ∞ (fun x => (ψ j x) ^ 2 * P.h j x a b) (P.W j) :=
      ((hψs j).pow 2).mul (P.h_smooth j a b)
    refine h1.congr ?_
    intro x _
    simp only [Matrix.smul_apply, smul_eq_mul]
  have hKcont : ∀ j, ContinuousOn
      (fun x => gaussCurv2 (fun y => (ψ j y) ^ 2 • P.h j y) x * (ψ j x) ^ 2) (P.W j) :=
    fun j => (gaussCurv2_continuousOn _ (P.W j) (P.W_open j) (hhat j)
      (fun y hy => (P.h_posDef j y hy).smul (pow_pos (hψpos j y hy) 2))).mul ((hψc j).pow 2)
  obtain ⟨-, hscale, -, hmono, -, -, hposI⟩ := eig_wint_facts S P ρ Kc hρnn
    (fun j => (hρs j j).continuousOn) hK hρK
  have hA : 0 < eigWInt P ρ (fun j x => (ψ j x)⁻¹) :=
    hposI _ hψinv hne (fun j x hx => inv_pos.2 (hψpos j x hx))
  have h1 : eigWInt P ρ (fun j x => deriv hcm t * (ψ j x)⁻¹) ≤
      eigWInt P ρ (fun j x => gaussCurv2 (fun y => (ψ j y) ^ 2 • P.h j y) x * (ψ j x) ^ 2) :=
    hmono _ _ (fun j => continuousOn_const.mul (hψinv j)) hKcont
      (fun j x hx => hineq j x ((hK j).2 hx))
  have h2 : eigWInt P ρ (fun j x => deriv hcm t * (ψ j x)⁻¹) =
      deriv hcm t * eigWInt P ρ (fun j x => (ψ j x)⁻¹) :=
    hscale (fun j x => (ψ j x)⁻¹) (deriv hcm t)
  have h3 : eigWInt P ρ (fun j x => gaussCurv2 (fun y => (ψ j y) ^ 2 • P.h j y) x * (ψ j x) ^ 2) =
      eigWInt P ρ (fun j x => gaussCurv2 (P.h j) x) :=
    patched_conformal_total_curvature_eq S hS P ρ Kc hρnn hρs hρ1 hK hρK hρO ψ hψs hψpos hvc
  rw [h2, h3] at h1
  by_contra hc
  push_neg at hc
  have h4 := mul_pos hc hA
  linarith

theorem collar_side_cutoff_contradiction [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (U : Set M) (hUo : IsOpen U)
    (N : Set M) (ε : ℝ) (σ : M → ℝ) (hNo : IsOpen N) (hε : 0 < ε)
    (hσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ σ (U ∩ N))
    (hσb : ∀ x ∈ U ∩ N, 0 < σ x ∧ σ x < ε)
    (hσp : ∀ c d : ℝ, 0 < c → d < ε → IsCompact (U ∩ N ∩ σ ⁻¹' Set.Icc c d))
    (hWO : ∀ (x₀ : M) (a b : ℝ) (w : M → ℝ), x₀ ∈ U ∩ N → 0 < a → a < b → b < ε →
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (connectedComponentIn (U ∩ N) x₀) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, σ x ≤ a → w x < 0) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, b ≤ σ x → 0 < w x) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 →
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0) →
      ∃ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 ∧ 0 ≤ g.levelMeanCurv w x)
    (x₀ : M) (hx₀ : x₀ ∈ U ∩ N)
    (hthin : ∀ O : Set M, IsOpen O →
      closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U ⊆ O →
      ∃ δ : ℝ, 0 < δ ∧ δ < ε ∧ connectedComponentIn (U ∩ N) x₀ ∩ σ ⁻¹' Set.Iic δ ⊆ O)
    (O : Set M) (w : M → ℝ) (t₁ : ℝ) (hO : IsOpen O) (ht₁ : 0 < t₁)
    (hFCO : closure (connectedComponentIn (U ∩ N) x₀) ∩ frontier U ⊆ O)
    (hwc : ContinuousOn w (O ∩ closure (connectedComponentIn (U ∩ N) x₀)))
    (hw0 : ∀ x ∈ O ∩ closure (connectedComponentIn (U ∩ N) x₀), x ∈ frontier U → w x = 0)
    (hwpos : ∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, 0 < w x)
    (hws : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (O ∩ connectedComponentIn (U ∩ N) x₀))
    (hdw : ∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0)
    (hH : ∀ x ∈ O ∩ connectedComponentIn (U ∩ N) x₀, w x < t₁ → g.levelMeanCurv w x < 0) :
    False :=
by
  classical
  haveI : LocallyConnectedSpace M := ChartedSpace.locallyConnectedSpace E3 M
  
  have s1 : ∀ (W v : M → ℝ) (t : ℝ) (x : M), W =ᶠ[𝓝 x] (fun z => v z - t) →
      g.levelMeanCurv W x = g.levelMeanCurv v x := by
    intro W v t x h
    have hT : Tendsto (chartAt E3 x).symm (𝓝 (chartAt E3 x x)) (𝓝 x) := by
      have h1 := (chartAt E3 x).continuousAt_symm (mem_chart_target E3 x)
      rw [ContinuousAt, (chartAt E3 x).left_inv (mem_chart_source E3 x)] at h1
      exact h1
    have ha : (fun y => W ((chartAt E3 x).symm y)) =ᶠ[𝓝 (chartAt E3 x x)]
        (fun y => v ((chartAt E3 x).symm y) - t) := hT.eventually h
    have hb : ∀ j : Fin 3,
        partialDeriv j (fun y => W ((chartAt E3 x).symm y)) (chartAt E3 x x) =
          partialDeriv j (fun y => v ((chartAt E3 x).symm y)) (chartAt E3 x x) := by
      intro j
      unfold partialDeriv
      rw [ha.fderiv_eq, fderiv_sub_const]
    have hc : ∀ j : Fin 3, partialDeriv j (fun y => W ((chartAt E3 x).symm y)) =ᶠ[𝓝 (chartAt E3 x x)]
        partialDeriv j (fun y => v ((chartAt E3 x).symm y)) := by
      intro j
      filter_upwards [ha.fderiv (𝕜 := ℝ)] with y hy
      unfold partialDeriv
      rw [hy, fderiv_sub_const]
    have hd : ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j (fun y => W ((chartAt E3 x).symm y))) (chartAt E3 x x) =
          partialDeriv i (partialDeriv j (fun y => v ((chartAt E3 x).symm y))) (chartAt E3 x x) := by
      intro i j
      show fderiv ℝ _ _ (e i) = fderiv ℝ _ _ (e i)
      rw [(hc j).fderiv_eq]
    simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner, lapLoc, hessLoc,
      hb, hd]
  
  have s2 : ∀ (W v : M → ℝ) (t : ℝ) (x : M), W =ᶠ[𝓝 x] (fun z => v z - t) →
      MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) v x →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) W x = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) v x := by
    intro W v t x h hv
    rw [h.mfderiv_eq]
    have h2 := hv.hasMFDerivAt.sub (hasMFDerivAt_const (I := 𝓘(ℝ, E3)) (I' := 𝓘(ℝ, ℝ)) t x)
    rw [sub_zero] at h2
    exact h2.mfderiv
  
  have s3 : ∀ (X K : Set M), IsOpen X → IsCompact K → K ⊆ X → ∀ y₀ : M,
      IsCompact (connectedComponentIn X y₀ ∩ K) := by
    intro X K hX hK hKX y₀
    have hcl : closure (connectedComponentIn X y₀) ∩ X ⊆ connectedComponentIn X y₀ := by
      rintro y ⟨hy, hyX⟩
      obtain ⟨z, hzy, hzD⟩ := _root_.mem_closure_iff.1 hy _ hX.connectedComponentIn
        (mem_connectedComponentIn hyX)
      rw [connectedComponentIn_eq hzD, ← connectedComponentIn_eq hzy]
      exact mem_connectedComponentIn hyX
    have heq : connectedComponentIn X y₀ ∩ K = closure (connectedComponentIn X y₀) ∩ K := by
      apply Set.Subset.antisymm
      · exact Set.inter_subset_inter_left _ subset_closure
      · rintro y ⟨hy, hyK⟩
        exact ⟨hcl ⟨hy, hKX hyK⟩, hyK⟩
    rw [heq]
    exact hK.inter_left isClosed_closure
  
  have s4 : ∀ m : ℝ, 0 < m → ∃ ψ : ℝ → ℝ, ContDiff ℝ ∞ ψ ∧
      (∀ s : ℝ, s ≤ m / 2 → ψ s = s - m / 4) ∧
      (∀ s : ℝ, 3 * m / 4 ≤ s → ψ s = 1) ∧ (∀ s : ℝ, m / 2 < s → 0 < ψ s) := by
    intro m hm
    refine ⟨fun s => (1 - Real.smoothTransition ((s - m / 2) / (m / 4))) * (s - m / 4) +
      Real.smoothTransition ((s - m / 2) / (m / 4)), ?_, ?_, ?_, ?_⟩
    · have hρ : ContDiff ℝ ∞ (fun s : ℝ => Real.smoothTransition ((s - m / 2) / (m / 4))) :=
        Real.smoothTransition.contDiff.comp ((contDiff_id.sub contDiff_const).div_const _)
      exact ((contDiff_const.sub hρ).mul (contDiff_id.sub contDiff_const)).add hρ
    · intro s hs
      have h0 : (s - m / 2) / (m / 4) ≤ 0 :=
        div_nonpos_of_nonpos_of_nonneg (by linarith) (by linarith)
      simp only [Real.smoothTransition.zero_of_nonpos h0]
      ring
    · intro s hs
      have h1 : 1 ≤ (s - m / 2) / (m / 4) := by
        rw [le_div_iff₀ (by linarith)]
        linarith
      simp only [Real.smoothTransition.one_of_one_le h1]
      ring
    · intro s hs
      have hn := Real.smoothTransition.nonneg ((s - m / 2) / (m / 4))
      have hl := Real.smoothTransition.le_one ((s - m / 2) / (m / 4))
      have hA : 0 < s - m / 4 := by linarith
      dsimp only
      rcases lt_or_eq_of_le hl with h | h
      · have := mul_pos (sub_pos.2 h) hA
        linarith
      · rw [h]
        linarith
  
  set C := connectedComponentIn (U ∩ N) x₀ with hCdef
  have hCX : C ⊆ U ∩ N := connectedComponentIn_subset _ _
  have hX : IsOpen (U ∩ N) := hUo.inter hNo
  have hCo : IsOpen C := hX.connectedComponentIn
  have hσc : ContinuousOn σ (U ∩ N) := hσs.continuousOn
  
  obtain ⟨δ, hδ0, hδε, hδ⟩ := hthin O hO hFCO
  have hCO : ∀ x ∈ C, σ x < δ → x ∈ O ∩ C := fun x hx hσx =>
    ⟨hδ ⟨hx, (le_of_lt hσx : σ x ≤ δ)⟩, hx⟩
  
  obtain ⟨m, hm0, hm⟩ : ∃ m : ℝ, 0 < m ∧ ∀ x ∈ C, δ / 2 ≤ σ x → σ x ≤ δ → m ≤ w x := by
    have hK : IsCompact (U ∩ N ∩ σ ⁻¹' Set.Icc (δ / 2) δ) := hσp (δ / 2) δ (by linarith) hδε
    have hB := s3 (U ∩ N) _ hX hK Set.inter_subset_left x₀
    rcases (C ∩ (U ∩ N ∩ σ ⁻¹' Set.Icc (δ / 2) δ)).eq_empty_or_nonempty with hE | hne
    · refine ⟨1, one_pos, fun x hx h1 h2 => ?_⟩
      exfalso
      have hxB : x ∈ C ∩ (U ∩ N ∩ σ ⁻¹' Set.Icc (δ / 2) δ) := ⟨hx, hCX hx, h1, h2⟩
      rw [hE] at hxB
      exact hxB
    · have hBO : C ∩ (U ∩ N ∩ σ ⁻¹' Set.Icc (δ / 2) δ) ⊆ O := fun x hx =>
        hδ ⟨hx.1, (hx.2.2.2 : σ x ≤ δ)⟩
      have hBS : C ∩ (U ∩ N ∩ σ ⁻¹' Set.Icc (δ / 2) δ) ⊆ O ∩ closure C := fun x hx =>
        ⟨hBO hx, subset_closure hx.1⟩
      obtain ⟨x₁, hx₁, hmin⟩ := hB.exists_isMinOn hne (hwc.mono hBS)
      refine ⟨w x₁, hwpos x₁ ⟨hBO hx₁, hx₁.1⟩, fun x hx h1 h2 => ?_⟩
      exact (isMinOn_iff.1 hmin) x ⟨hx, hCX hx, h1, h2⟩
  obtain ⟨m', hm'def⟩ : ∃ m' : ℝ, m' = min m t₁ := ⟨_, rfl⟩
  have hm'0 : 0 < m' := by rw [hm'def]; exact lt_min hm0 ht₁
  have hm'm : m' ≤ m := by rw [hm'def]; exact min_le_left _ _
  have hm't : m' ≤ t₁ := by rw [hm'def]; exact min_le_right _ _
  
  obtain ⟨u, hu, hueq⟩ := (_root_.continuousOn_iff'.1 hwc) (Set.Iio (m' / 4)) isOpen_Iio
  obtain ⟨a₀, ha₀0, ha₀ε, ha₀⟩ := hthin (O ∩ u) (hO.inter hu) (by
    intro x hx
    have hxS : x ∈ O ∩ closure C := ⟨hFCO hx, hx.1⟩
    have hx2 : x ∈ w ⁻¹' Set.Iio (m' / 4) ∩ (O ∩ closure C) := by
      refine ⟨?_, hxS⟩
      show w x < m' / 4
      rw [hw0 x hxS hx.2]
      linarith
    rw [hueq] at hx2
    exact ⟨hFCO hx, hx2.1⟩)
  have hlow : ∀ x ∈ C, σ x ≤ a₀ → w x < m' / 4 := by
    intro x hx h
    have h1 := ha₀ ⟨hx, h⟩
    have h2 : x ∈ u ∩ (O ∩ closure C) := ⟨h1.2, h1.1, subset_closure hx⟩
    rw [← hueq] at h2
    exact h2.1
  obtain ⟨a, ha_def⟩ : ∃ a : ℝ, a = min a₀ (δ / 2) := ⟨_, rfl⟩
  have ha0 : 0 < a := by rw [ha_def]; exact lt_min ha₀0 (by linarith)
  have haa₀ : a ≤ a₀ := by rw [ha_def]; exact min_le_left _ _
  have haδ : a ≤ δ / 2 := by rw [ha_def]; exact min_le_right _ _
  
  obtain ⟨ψ, hψs, hψlin, hψone, hψpos⟩ := s4 m' hm'0
  obtain ⟨W, hW⟩ : ∃ W : M → ℝ, W = fun x => if σ x < δ then ψ (w x) else 1 := ⟨_, rfl⟩
  have hW1 : ∀ x, σ x < δ → W x = ψ (w x) := fun x h => by rw [hW]; exact if_pos h
  have hW2 : ∀ x, ¬ σ x < δ → W x = 1 := fun x h => by rw [hW]; exact if_neg h
  have hR2 : ∀ x ∈ C, δ / 2 < σ x → W x = 1 := by
    intro x hx h
    by_cases hlt : σ x < δ
    · rw [hW1 x hlt]
      apply hψone
      have := hm x hx h.le hlt.le
      linarith
    · exact hW2 x hlt
  
  have hWs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ W C := by
    apply contMDiffOn_of_locally_contMDiffOn
    intro x hx
    by_cases hlt : σ x < δ
    · refine ⟨U ∩ N ∩ σ ⁻¹' Set.Iio δ, hσc.isOpen_inter_preimage hX isOpen_Iio,
        ⟨hCX hx, hlt⟩, ?_⟩
      have hsub : C ∩ (U ∩ N ∩ σ ⁻¹' Set.Iio δ) ⊆ O ∩ C := fun z hz =>
        hCO z hz.1 hz.2.2
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun z => ψ (w z))
          (C ∩ (U ∩ N ∩ σ ⁻¹' Set.Iio δ)) :=
        hψs.contMDiff.comp_contMDiffOn (hws.mono hsub)
      exact h1.congr (fun z hz => hW1 z hz.2.2)
    · refine ⟨U ∩ N ∩ σ ⁻¹' Set.Ioi (δ / 2), hσc.isOpen_inter_preimage hX isOpen_Ioi,
        ⟨hCX hx, ?_⟩, ?_⟩
      · show δ / 2 < σ x
        push_neg at hlt
        linarith
      · exact contMDiffOn_const.congr (fun z hz => hR2 z hz.1 hz.2.2)
  
  have hneg : ∀ x ∈ C, σ x ≤ a → W x < 0 := by
    intro x hx h
    have h1' : w x < m' / 4 := hlow x hx (le_trans h haa₀)
    have hlt : σ x < δ := by linarith
    rw [hW1 x hlt, hψlin (w x) (by linarith)]
    linarith
  have hpos : ∀ x ∈ C, δ ≤ σ x → 0 < W x := by
    intro x hx h
    rw [hW2 x (not_lt.2 h)]
    exact one_pos
  
  have hzero : ∀ x ∈ C, W x = 0 →
      W =ᶠ[𝓝 x] (fun z => w z - m' / 4) ∧ x ∈ O ∩ C ∧ w x = m' / 4 := by
    intro x hx h0
    have hlt : σ x < δ := by
      by_contra hc
      rw [hW2 x hc] at h0
      exact one_ne_zero h0
    have hxO := hCO x hx hlt
    rw [hW1 x hlt] at h0
    have hle : w x ≤ m' / 2 := by
      by_contra hc
      push_neg at hc
      have := hψpos (w x) hc
      linarith
    have hwx : w x = m' / 4 := by
      rw [hψlin _ hle] at h0
      linarith
    refine ⟨?_, hxO, hwx⟩
    have hVo : IsOpen ((U ∩ N ∩ σ ⁻¹' Set.Iio δ) ∩ ((O ∩ C) ∩ w ⁻¹' Set.Iio (m' / 2))) :=
      (hσc.isOpen_inter_preimage hX isOpen_Iio).inter
        (hws.continuousOn.isOpen_inter_preimage (hO.inter hCo) isOpen_Iio)
    have hxV : x ∈ (U ∩ N ∩ σ ⁻¹' Set.Iio δ) ∩ ((O ∩ C) ∩ w ⁻¹' Set.Iio (m' / 2)) :=
      ⟨⟨hCX hx, hlt⟩, hxO, show w x < m' / 2 by linarith⟩
    filter_upwards [hVo.mem_nhds hxV] with z hz
    rw [hW1 z hz.1.2, hψlin _ (le_of_lt hz.2.2)]
  
  obtain ⟨x, hx, hWx, hHx⟩ := hWO x₀ a δ W hx₀ ha0 (by linarith) hδε hWs hneg hpos (by
    intro x hx h0
    obtain ⟨hev, hxO, -⟩ := hzero x hx h0
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x :=
      (hws.contMDiffAt ((hO.inter hCo).mem_nhds hxO)).mdifferentiableAt (by simp)
    rw [s2 W w (m' / 4) x hev hmd]
    exact hdw x hxO)
  obtain ⟨hev, hxO, hwx⟩ := hzero x hx hWx
  rw [s1 W w (m' / 4) x hev] at hHx
  have := hH x hxO (by rw [hwx]; linarith)
  linarith

theorem regular_level_isMinimalSurfaceSet [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Q : Set M) (hQ : IsOpen Q) (w : M → ℝ)
    (hw : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w Q) (c : ℝ) (S : Set M) (hSc : IsClosed S)
    (hSQ : S ⊆ Q) (hS : ∀ x ∈ Q, x ∈ S ↔ w x = c)
    (hdw : ∀ x ∈ S, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0)
    (hH : ∀ x ∈ S, g.levelMeanCurv w x = 0) :
    IsMinimalSurfaceSet g S :=
by
  
  have s1 : ∀ (h₁ h₂ : M → ℝ) (c' : ℝ) (x : M), h₁ =ᶠ[𝓝 x] (fun y => h₂ y - c') →
      g.levelMeanCurv h₁ x = g.levelMeanCurv h₂ x := by
    intro h₁ h₂ c' x hev
    have hT : Tendsto (chartAt E3 x).symm (𝓝 (chartAt E3 x x)) (𝓝 x) := by
      have h1 := (chartAt E3 x).continuousAt_symm (mem_chart_target E3 x)
      rw [ContinuousAt, (chartAt E3 x).left_inv (mem_chart_source E3 x)] at h1
      exact h1
    have hev2 : (fun z => h₁ ((chartAt E3 x).symm z)) =ᶠ[𝓝 (chartAt E3 x x)]
        (fun z => h₂ ((chartAt E3 x).symm z) - c') := hev.comp_tendsto hT
    have hpd : ∀ k : Fin 3, partialDeriv k (fun z => h₁ ((chartAt E3 x).symm z))
        =ᶠ[𝓝 (chartAt E3 x x)] partialDeriv k (fun z => h₂ ((chartAt E3 x).symm z)) := by
      intro k
      filter_upwards [hev2.eventuallyEq_nhds] with z hz
      unfold partialDeriv
      rw [hz.fderiv_eq, fderiv_sub_const]
    have hpd1 : ∀ k : Fin 3,
        partialDeriv k (fun z => h₁ ((chartAt E3 x).symm z)) (chartAt E3 x x) =
          partialDeriv k (fun z => h₂ ((chartAt E3 x).symm z)) (chartAt E3 x x) :=
      fun k => (hpd k).eq_of_nhds
    have hpd2 : ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j (fun z => h₁ ((chartAt E3 x).symm z))) (chartAt E3 x x) =
          partialDeriv i (partialDeriv j (fun z => h₂ ((chartAt E3 x).symm z)))
            (chartAt E3 x x) := by
      intro i j
      show fderiv ℝ (partialDeriv j (fun z => h₁ ((chartAt E3 x).symm z))) (chartAt E3 x x) (e i) =
        fderiv ℝ (partialDeriv j (fun z => h₂ ((chartAt E3 x).symm z))) (chartAt E3 x x) (e i)
      rw [(hpd j).fderiv_eq]
    simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner, lapLoc, hessLoc,
      hpd1, hpd2]
  
  have s2 : ∀ (f : M → ℝ) (p x : M), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f →
      x ∈ (extChartAt 𝓘(ℝ, E3) p).source →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x = 0 →
      fderiv ℝ (f ∘ (extChartAt 𝓘(ℝ, E3) p).symm) (extChartAt 𝓘(ℝ, E3) p x) = 0 := by
    intro f p x hf hx h0
    have hxt : extChartAt 𝓘(ℝ, E3) p x ∈ (extChartAt 𝓘(ℝ, E3) p).target :=
      (extChartAt 𝓘(ℝ, E3) p).map_source hx
    have hinv : (extChartAt 𝓘(ℝ, E3) p).symm (extChartAt 𝓘(ℝ, E3) p x) = x :=
      (extChartAt 𝓘(ℝ, E3) p).left_inv hx
    have hs : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (extChartAt 𝓘(ℝ, E3) p).symm
        (extChartAt 𝓘(ℝ, E3) p x) :=
      (mdifferentiableOn_extChartAt_symm (I := 𝓘(ℝ, E3)) (x := p)).mdifferentiableAt
        ((isOpen_extChartAt_target p).mem_nhds hxt)
    have hfd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x := (hf x).mdifferentiableAt (by simp)
    have hc := mfderiv_comp_of_eq hfd hs hinv
    have h0' : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f
        ((extChartAt 𝓘(ℝ, E3) p).symm (extChartAt 𝓘(ℝ, E3) p x)) = 0 := by
      rw [hinv]; exact h0
    rw [mfderiv_eq_fderiv, h0', ContinuousLinearMap.zero_comp] at hc
    exact hc
  
  have euclid : ∀ (W : Set E3) (F : E3 → ℝ) (x₀ : E3), IsOpen W → x₀ ∈ W →
      ContDiffOn ℝ ∞ F W → F x₀ = 0 → fderiv ℝ F x₀ ≠ 0 →
      ∃ B : Set E3, IsOpen B ∧ x₀ ∈ B ∧ B ⊆ W ∧ (∀ z ∈ B, fderiv ℝ F z ≠ 0) ∧
        IsPreconnected (B ∩ {z | 0 < F z}) ∧ IsPreconnected (B ∩ {z | F z < 0}) := by
    intro W f x₀ hW hx₀ hf hf0 hdf
    have hW'o : IsOpen (W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ) :=
      (hf.continuousOn_fderiv_of_isOpen hW (by simp)).isOpen_inter_preimage hW
        isOpen_compl_singleton
    have hx₀' : x₀ ∈ W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ := ⟨hx₀, hdf⟩
    have hfa : ContDiffAt ℝ ∞ f x₀ := hf.contDiffAt (hW.mem_nhds hx₀)
    obtain ⟨L, hLdef⟩ : ∃ L : E3 →L[ℝ] ℝ, L = fderiv ℝ f x₀ := ⟨_, rfl⟩
    have hL : HasStrictFDerivAt f L x₀ := by
      rw [hLdef]; exact hfa.hasStrictFDerivAt (by simp)
    have hL0 : L ≠ 0 := by rw [hLdef]; exact hdf
    obtain ⟨v, hv⟩ : ∃ v, L v ≠ 0 := by
      by_contra h
      push_neg at h
      exact hL0 (ContinuousLinearMap.ext h)
    obtain ⟨ν, hν⟩ : ∃ ν : E3, ν = (L v)⁻¹ • v := ⟨_, rfl⟩
    have hLν : L ν = 1 := by rw [hν, map_smul, smul_eq_mul, inv_mul_cancel₀ hv]
    obtain ⟨Ψ, hΨ⟩ : ∃ Ψ : E3 → E3, Ψ = fun z => (z - x₀) - L (z - x₀) • ν + f z • ν :=
      ⟨_, rfl⟩
    have hkey : ∀ z, L (Ψ z) = f z := by
      intro z
      rw [hΨ]
      simp only [map_add, map_sub, map_smul, smul_eq_mul, hLν]
      ring
    have hΨ0 : Ψ x₀ = 0 := by rw [hΨ]; simp [hf0]
    have hA : HasStrictFDerivAt (fun z : E3 => z - x₀) (ContinuousLinearMap.id ℝ E3) x₀ :=
      (hasStrictFDerivAt_id x₀).sub_const x₀
    have hB : HasStrictFDerivAt (fun z : E3 => L (z - x₀) • ν) (L.smulRight ν) x₀ := by
      have h1 : HasStrictFDerivAt (fun z : E3 => L (z - x₀)) L x₀ := by
        have := L.hasStrictFDerivAt.comp x₀ hA
        simpa using this
      exact h1.smul_const ν
    have hC : HasStrictFDerivAt (fun z : E3 => f z • ν) (L.smulRight ν) x₀ := hL.smul_const ν
    have hΨd : HasStrictFDerivAt Ψ
        ((ContinuousLinearEquiv.refl ℝ E3 : E3 ≃L[ℝ] E3) : E3 →L[ℝ] E3) x₀ := by
      have h2 := (hA.sub hB).add hC
      rw [hΨ]
      refine h2.congr_fderiv ?_
      ext u
      simp
    obtain ⟨Φ, hΦdef⟩ : ∃ Φ : OpenPartialHomeomorph E3 E3,
        Φ = hΨd.toOpenPartialHomeomorph Ψ := ⟨_, rfl⟩
    have hΦc : ∀ z, Φ z = Ψ z := fun z => by
      rw [hΦdef, HasStrictFDerivAt.toOpenPartialHomeomorph_coe]
    have hx₀s : x₀ ∈ Φ.source := by rw [hΦdef]; exact hΨd.mem_toOpenPartialHomeomorph_source
    have h0t : (0 : E3) ∈ Φ.target := by
      have := hΨd.image_mem_toOpenPartialHomeomorph_target
      rw [← hΦdef, hΨ0] at this
      exact this
    have hS' : IsOpen (Φ.target ∩ Φ.symm ⁻¹' (W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ)) :=
      Φ.isOpen_inter_preimage_symm hW'o
    have h0S : (0 : E3) ∈ Φ.target ∩ Φ.symm ⁻¹' (W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ) := by
      refine ⟨h0t, ?_⟩
      show Φ.symm 0 ∈ W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ
      have h3 : Φ.symm (Φ x₀) = x₀ := Φ.left_inv hx₀s
      rw [hΦc, hΨ0] at h3
      rw [h3]
      exact hx₀'
    obtain ⟨r, hr, hrS⟩ := Metric.isOpen_iff.mp hS' 0 h0S
    have hBW : Φ.source ∩ Φ ⁻¹' Metric.ball 0 r ⊆ W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ := by
      rintro z ⟨hzs, hzb⟩
      have h4 : Φ.symm (Φ z) ∈ W ∩ (fderiv ℝ f) ⁻¹' {0}ᶜ := (hrS hzb).2
      rw [Φ.left_inv hzs] at h4
      exact h4
    refine ⟨Φ.source ∩ Φ ⁻¹' Metric.ball 0 r, Φ.isOpen_inter_preimage Metric.isOpen_ball,
      ⟨hx₀s, ?_⟩, fun z hz => (hBW hz).1, fun z hz => (hBW hz).2, ?_, ?_⟩
    · show Φ x₀ ∈ Metric.ball (0 : E3) r
      rw [hΦc, hΨ0]
      exact Metric.mem_ball_self hr
    · have hH' : IsPreconnected (Metric.ball (0 : E3) r ∩ {u | 0 < L u}) := by
        refine (Convex.inter (convex_ball 0 r) ?_).isPreconnected
        exact (convex_Ioi (0 : ℝ)).linear_preimage (L : E3 →ₗ[ℝ] ℝ)
      have heq : (Φ.source ∩ Φ ⁻¹' Metric.ball 0 r) ∩ {z | 0 < f z} =
          Φ.symm '' (Metric.ball (0 : E3) r ∩ {u | 0 < L u}) := by
        ext z
        constructor
        · rintro ⟨⟨hzs, hzb⟩, hz⟩
          refine ⟨Φ z, ⟨hzb, ?_⟩, Φ.left_inv hzs⟩
          show 0 < L (Φ z)
          rw [hΦc, hkey]
          exact hz
        · rintro ⟨u, ⟨hub, hu⟩, rfl⟩
          have hut : u ∈ Φ.target := (hrS hub).1
          refine ⟨⟨Φ.map_target hut, ?_⟩, ?_⟩
          · show Φ (Φ.symm u) ∈ Metric.ball (0 : E3) r
            rw [Φ.right_inv hut]
            exact hub
          · show 0 < f (Φ.symm u)
            rw [← hkey, ← hΦc, Φ.right_inv hut]
            exact hu
      rw [heq]
      exact hH'.image _ (Φ.continuousOn_symm.mono (fun u hu => (hrS hu.1).1))
    · have hH' : IsPreconnected (Metric.ball (0 : E3) r ∩ {u | L u < 0}) := by
        refine (Convex.inter (convex_ball 0 r) ?_).isPreconnected
        exact (convex_Iio (0 : ℝ)).linear_preimage (L : E3 →ₗ[ℝ] ℝ)
      have heq : (Φ.source ∩ Φ ⁻¹' Metric.ball 0 r) ∩ {z | f z < 0} =
          Φ.symm '' (Metric.ball (0 : E3) r ∩ {u | L u < 0}) := by
        ext z
        constructor
        · rintro ⟨⟨hzs, hzb⟩, hz⟩
          refine ⟨Φ z, ⟨hzb, ?_⟩, Φ.left_inv hzs⟩
          show L (Φ z) < 0
          rw [hΦc, hkey]
          exact hz
        · rintro ⟨u, ⟨hub, hu⟩, rfl⟩
          have hut : u ∈ Φ.target := (hrS hub).1
          refine ⟨⟨Φ.map_target hut, ?_⟩, ?_⟩
          · show Φ (Φ.symm u) ∈ Metric.ball (0 : E3) r
            rw [Φ.right_inv hut]
            exact hub
          · show f (Φ.symm u) < 0
            rw [← hkey, ← hΦc, Φ.right_inv hut]
            exact hu
      rw [heq]
      exact hH'.image _ (Φ.continuousOn_symm.mono (fun u hu => (hrS hu.1).1))
  
  refine ⟨hSc, ?_⟩
  intro p hp O hO
  set φ := extChartAt 𝓘(ℝ, E3) p with hφ
  have hpQ : p ∈ Q := hSQ hp
  have hwp : w p = c := (hS p hpQ).1 hp
  have hpO : p ∈ interior O := mem_interior_iff_mem_nhds.mpr hO
  have hinv : φ.symm (φ p) = p := extChartAt_to_inv p
  have hpt : φ p ∈ φ.target := mem_extChartAt_target p
  have hps : p ∈ φ.source := mem_extChartAt_source p
  have hsymmc : ContinuousOn φ.symm φ.target := continuousOn_extChartAt_symm p
  have hto : IsOpen φ.target := isOpen_extChartAt_target p
  have hΩ₀o : IsOpen (φ.target ∩ φ.symm ⁻¹' Q) := hsymmc.isOpen_inter_preimage hto hQ
  have hfs : ContDiffOn ℝ ∞ (w ∘ φ.symm) (φ.target ∩ φ.symm ⁻¹' Q) := by
    have h5 := (contMDiffOn_iff.mp hw).2 p (w p)
    rw [hφ]
    simpa [extChartAt_model_space_eq_id] using h5
  have hF : ContDiffOn ℝ ∞ (fun z => w (φ.symm z) - c) (φ.target ∩ φ.symm ⁻¹' Q) :=
    hfs.sub contDiffOn_const
  have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w p := by
    by_contra h
    exact hdw p hp (mfderiv_zero_of_not_mdifferentiableAt h)
  have hmf : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w p = fderiv ℝ (w ∘ φ.symm) (φ p) := by
    have hw' : writtenInExtChartAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) p w = w ∘ φ.symm := by
      funext z
      simp [writtenInExtChartAt, hφ]
    rw [hmd.mfderiv, hw', ModelWithCorners.range_eq_univ, fderivWithin_univ]
  have hdF0 : fderiv ℝ (fun z => w (φ.symm z) - c) (φ p) ≠ 0 := by
    rw [fderiv_sub_const]
    intro h
    apply hdw p hp
    rw [hmf]
    exact h
  obtain ⟨ε, hε, hεsub⟩ := Metric.isOpen_iff.mp hΩ₀o (φ p)
    ⟨hpt, by show φ.symm (φ p) ∈ Q; rw [hinv]; exact hpQ⟩
  obtain ⟨R, hR, hcb⟩ : ∃ R : ℝ, 0 < R ∧
      Metric.closedBall (φ p) R ⊆ φ.target ∩ φ.symm ⁻¹' Q :=
    ⟨ε / 2, half_pos hε, (Metric.closedBall_subset_ball (half_lt_self hε)).trans hεsub⟩
  obtain ⟨b, hbIn, hbOut⟩ : ∃ b : SmoothBumpFunction 𝓘(ℝ, E3) p, b.rIn = R / 2 ∧ b.rOut = R :=
    ⟨⟨⟨R / 2, R, half_pos hR, half_lt_self hR⟩, fun z hz => (hcb hz.1).1⟩, rfl, rfl⟩
  have htsQ : ∀ x ∈ tsupport b, x ∈ Q := by
    intro x hx
    obtain ⟨z, hz, rfl⟩ := b.tsupport_subset_symm_image_closedBall hx
    have hz' : z ∈ Metric.closedBall (φ p) R := by
      have := hz.1
      rw [hbOut] at this
      exact this
    exact (hcb hz').2
  have hfsm : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => b x • (w x - c)) := by
    apply contMDiff_of_tsupport
    intro x hx
    have hxb : x ∈ tsupport b := tsupport_smul_subset_left _ _ hx
    exact (b.contMDiff x).smul
      ((hw.contMDiffAt (hQ.mem_nhds (htsQ x hxb))).sub contMDiffAt_const)
  obtain ⟨f, hfdef⟩ : ∃ f : M → ℝ, f = fun x => b x • (w x - c) := ⟨_, rfl⟩
  have hfsm' : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f := by rw [hfdef]; exact hfsm
  have hWo : IsOpen (φ.target ∩ φ.symm ⁻¹' (Q ∩ interior O) ∩ Metric.ball (φ p) (R / 2)) :=
    (hsymmc.isOpen_inter_preimage hto (hQ.inter isOpen_interior)).inter Metric.isOpen_ball
  have hpW : φ p ∈ φ.target ∩ φ.symm ⁻¹' (Q ∩ interior O) ∩ Metric.ball (φ p) (R / 2) :=
    ⟨⟨hpt, by show φ.symm (φ p) ∈ Q ∩ interior O; rw [hinv]; exact ⟨hpQ, hpO⟩⟩,
      Metric.mem_ball_self (half_pos hR)⟩
  have hFW : ContDiffOn ℝ ∞ (fun z => w (φ.symm z) - c)
      (φ.target ∩ φ.symm ⁻¹' (Q ∩ interior O) ∩ Metric.ball (φ p) (R / 2)) :=
    hF.mono (fun z hz => ⟨hz.1.1, hz.1.2.1⟩)
  have hF0 : (fun z => w (φ.symm z) - c) (φ p) = 0 := by
    show w (φ.symm (φ p)) - c = 0
    rw [hinv, hwp, sub_self]
  obtain ⟨B, hBo, hpB, hBW, hBd, hBpos, hBneg⟩ := euclid _ _ (φ p) hWo hpW hFW hF0 hdF0
  have hVo : IsOpen (φ.source ∩ φ ⁻¹' B) := isOpen_extChartAt_preimage' p hBo
  have hP1 : ∀ x ∈ φ.source ∩ φ ⁻¹' B, x ∈ Q ∧ x ∈ interior O ∧ f x = w x - c := by
    rintro x ⟨hxs, hxB⟩
    have h6 := hBW hxB
    have h7 : φ.symm (φ x) ∈ Q ∩ interior O := h6.1.2
    rw [φ.left_inv hxs] at h7
    refine ⟨h7.1, h7.2, ?_⟩
    have hxs' : x ∈ (chartAt E3 p).source := by
      rw [← extChartAt_source 𝓘(ℝ, E3)]
      exact hxs
    have hb : b x = 1 := b.one_of_dist_le hxs' (by rw [hbIn]; exact le_of_lt h6.2)
    rw [hfdef]
    simp [hb]
  have hP3 : ∀ u ∈ B, φ.symm u ∈ φ.source ∩ φ ⁻¹' B := by
    intro u hu
    have hut : u ∈ φ.target := (hBW hu).1.1
    exact ⟨φ.map_target hut, by show φ (φ.symm u) ∈ B; rw [φ.right_inv hut]; exact hu⟩
  have hP4 : ∀ u ∈ B, f (φ.symm u) = w (φ.symm u) - c := fun u hu => (hP1 _ (hP3 u hu)).2.2
  have hP5 : ∀ u ∈ B, (f ∘ φ.symm) =ᶠ[𝓝 u] (fun z => w (φ.symm z) - c) := by
    intro u hu
    filter_upwards [hBo.mem_nhds hu] with z hz
    exact hP4 z hz
  refine ⟨φ.source ∩ φ ⁻¹' B, f, fun x hx => interior_subset (hP1 x hx).2.1, hVo, ⟨hps, hpB⟩,
    hfsm', ?_, ?_, ?_, ?_, ?_⟩
  · rintro x ⟨hxs, hxB⟩ h0
    have h1 : fderiv ℝ (f ∘ φ.symm) (φ x) = 0 := s2 f p x hfsm' hxs h0
    rw [(hP5 _ hxB).fderiv_eq] at h1
    exact hBd _ hxB h1
  · ext x
    constructor
    · rintro ⟨hxV, hxS⟩
      refine ⟨hxV, ?_⟩
      show f x = 0
      obtain ⟨hxQ, -, hfx⟩ := hP1 x hxV
      rw [hfx, (hS x hxQ).1 hxS, sub_self]
    · rintro ⟨hxV, hx0⟩
      refine ⟨hxV, ?_⟩
      obtain ⟨hxQ, -, hfx⟩ := hP1 x hxV
      have hx0' : f x = 0 := hx0
      rw [hfx, sub_eq_zero] at hx0'
      exact (hS x hxQ).2 hx0'
  · intro x hxV hx0
    obtain ⟨hxQ, -, hfx⟩ := hP1 x hxV
    have hev : f =ᶠ[𝓝 x] (fun y => w y - c) := by
      filter_upwards [hVo.mem_nhds hxV] with y hy
      exact (hP1 y hy).2.2
    rw [s1 f w c x hev]
    rw [hfx, sub_eq_zero] at hx0
    exact hH x ((hS x hxQ).2 hx0)
  · have heq : (φ.source ∩ φ ⁻¹' B) ∩ {x | 0 < f x} =
        φ.symm '' (B ∩ {z | 0 < (fun z => w (φ.symm z) - c) z}) := by
      ext x
      constructor
      · rintro ⟨⟨hxs, hxB⟩, hx⟩
        refine ⟨φ x, ⟨hxB, ?_⟩, φ.left_inv hxs⟩
        show 0 < w (φ.symm (φ x)) - c
        rw [φ.left_inv hxs, ← (hP1 x ⟨hxs, hxB⟩).2.2]
        exact hx
      · rintro ⟨z, ⟨hzB, hz⟩, rfl⟩
        refine ⟨hP3 z hzB, ?_⟩
        show 0 < f (φ.symm z)
        rw [hP4 z hzB]
        exact hz
    rw [heq]
    exact hBpos.image _ (hsymmc.mono (fun z hz => (hBW hz.1).1.1))
  · have heq : (φ.source ∩ φ ⁻¹' B) ∩ {x | f x < 0} =
        φ.symm '' (B ∩ {z | (fun z => w (φ.symm z) - c) z < 0}) := by
      ext x
      constructor
      · rintro ⟨⟨hxs, hxB⟩, hx⟩
        refine ⟨φ x, ⟨hxB, ?_⟩, φ.left_inv hxs⟩
        show w (φ.symm (φ x)) - c < 0
        rw [φ.left_inv hxs, ← (hP1 x ⟨hxs, hxB⟩).2.2]
        exact hx
      · rintro ⟨z, ⟨hzB, hz⟩, rfl⟩
        refine ⟨hP3 z hzB, ?_⟩
        show f (φ.symm z) < 0
        rw [hP4 z hzB]
        exact hz
    rw [heq]
    exact hBneg.image _ (hsymmc.mono (fun z hz => (hBW hz.1).1.1))

theorem degenerate_frontier_rigidity [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (U : Set M)
    (hUo : IsOpen U) (hFc : IsCompact (frontier U)) (hfront : IsMinimalSurfaceSet g (frontier U))
    (hnone : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ U → S = ∅)
    (N : Set M) (ε : ℝ) (σ : M → ℝ) (hNo : IsOpen N) (hFN : frontier U ⊆ N)
    (hNc : IsCompact (closure N)) (hε : 0 < ε)
    (hσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ σ (U ∩ N))
    (hσr : ∀ x ∈ U ∩ N, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) σ x ≠ 0)
    (hσb : ∀ x ∈ U ∩ N, 0 < σ x ∧ σ x < ε)
    (hσp : ∀ c d : ℝ, 0 < c → d < ε → IsCompact (U ∩ N ∩ σ ⁻¹' Set.Icc c d))
    (hσi : ∀ δ : ℝ, 0 < δ → δ < ε → IsClosed (frontier U ∪ (U ∩ N ∩ σ ⁻¹' Set.Iic δ)))
    (hσ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N ∩ σ ⁻¹' Set.Iio δ)
    (hgood : ∀ p ∈ frontier U, ∃ (V : Set M) (f : M → ℝ), IsOpen V ∧ p ∈ V ∧
      ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧ (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
      V ∩ frontier U = V ∩ f ⁻¹' {0} ∧ ∀ x ∈ V ∩ U ∩ N, σ x = |f x|)
    (hWO : ∀ (x₀ : M) (a b : ℝ) (w : M → ℝ), x₀ ∈ U ∩ N → 0 < a → a < b → b < ε →
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (connectedComponentIn (U ∩ N) x₀) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, σ x ≤ a → w x < 0) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, b ≤ σ x → 0 < w x) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 →
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0) →
      ∃ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 ∧ 0 ≤ g.levelMeanCurv w x)
    (φ lam : M → ℝ)
    (hlam : ∀ p ∈ frontier U, ∃ V ∈ 𝓝 p, ∀ q ∈ V, q ∈ frontier U → lam q = lam p)
    (hdata : ∀ p ∈ frontier U, 0 < φ p ∧ ∃ (V : Set M) (f : M → ℝ), IsOpen V ∧ p ∈ V ∧
        ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧ (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
        V ∩ frontier U = V ∩ f ⁻¹' {0} ∧
        ∀ x ∈ V ∩ frontier U, Real.sqrt (g.gradInner f f x) * φ x = 1 ∧
          g.jacobiDeriv f x = lam x / φ x)
    (p₀ : M) (hp₀ : p₀ ∈ frontier U)
    (hdeg : ∀ q ∈ connectedComponentIn (frontier U) p₀, lam q = 0 ∧ g.scalarCurvature q = 0 ∧
      ∃ (z : M) (W : Set E2) (F : E2 → E3) (x : E2), eigSurfParam (frontier U) z W F ∧ x ∈ W ∧
        (chartAt E3 z).symm (F x) = q ∧ gsSffSq (g.coeff (chartAt E3 z).symm) F x = 0 ∧
        fderiv ℝ (fun y => φ ((chartAt E3 z).symm (F y))) x = 0) :
    False :=
by
  have hX : IsOpen (U ∩ N) := hUo.inter hNo
  have hFU : ∀ x ∈ frontier U, x ∉ U := by
    intro x hx
    rw [hUo.frontier_eq] at hx
    exact hx.2
  
  obtain ⟨V, f, hVN, hVo, hp₀V, -, -, hVS, -, hP, hNg⟩ :=
    hfront.2 p₀ hp₀ N (hNo.mem_nhds (hFN hp₀))
  have hf0 : ∀ x ∈ V, x ∈ U → f x ≠ 0 := by
    intro x hxV hxU hfx
    have h : x ∈ V ∩ frontier U := by
      rw [hVS]
      exact ⟨hxV, hfx⟩
    exact hFU x h.2 hxU
  have hside : ∀ S : Set M, S ⊆ V → (∀ x ∈ S, f x ≠ 0) → IsPreconnected S →
      ∀ x₁ ∈ S, x₁ ∈ U → S ⊆ connectedComponentIn (U ∩ N) x₁ := by
    intro S hSV hSf hSc x₁ hx₁S hx₁U
    have hcov : S ⊆ U ∪ (closure U)ᶜ := by
      intro x hx
      by_cases hxU : x ∈ U
      · exact Or.inl hxU
      · right
        intro hxc
        have hxF : x ∈ frontier U := by
          rw [hUo.frontier_eq]
          exact ⟨hxc, hxU⟩
        have h : x ∈ V ∩ f ⁻¹' {0} := by
          rw [← hVS]
          exact ⟨hSV hx, hxF⟩
        exact hSf x hx h.2
    have hdisj : Disjoint U (closure U)ᶜ :=
      Disjoint.mono_left subset_closure disjoint_compl_right
    have hSU : S ⊆ U :=
      IsPreconnected.subset_left_of_subset_union hUo isClosed_closure.isOpen_compl hdisj hcov
        ⟨x₁, hx₁S, hx₁U⟩ hSc
    exact hSc.subset_connectedComponentIn hx₁S (fun x hx => ⟨hSU hx, hVN (hSV hx)⟩)
  have hp₀cl : p₀ ∈ closure (V ∩ U) := by
    rw [_root_.mem_closure_iff]
    intro W hW hp₀W
    have h1 : p₀ ∈ closure U := frontier_subset_closure hp₀
    obtain ⟨y, hyWV, hyU⟩ := _root_.mem_closure_iff.1 h1 (W ∩ V) (hW.inter hVo) ⟨hp₀W, hp₀V⟩
    exact ⟨y, hyWV.1, hyWV.2, hyU⟩
  have hVU : V ∩ U = (V ∩ U ∩ {x | 0 < f x}) ∪ (V ∩ U ∩ {x | f x < 0}) := by
    ext x
    simp only [Set.mem_union, Set.mem_inter_iff, Set.mem_setOf_eq]
    constructor
    · rintro ⟨hxV, hxU⟩
      rcases lt_or_gt_of_ne (hf0 x hxV hxU) with h | h
      · exact Or.inr ⟨⟨hxV, hxU⟩, h⟩
      · exact Or.inl ⟨⟨hxV, hxU⟩, h⟩
    · rintro (⟨h, -⟩ | ⟨h, -⟩) <;> exact h
  obtain ⟨x₀, hx₀, hp₀C⟩ :
      ∃ x₀ ∈ U ∩ N, p₀ ∈ closure (connectedComponentIn (U ∩ N) x₀) := by
    rw [hVU, closure_union] at hp₀cl
    rcases hp₀cl with h | h
    · obtain ⟨x₀, hx₀⟩ : (V ∩ U ∩ {x | 0 < f x}).Nonempty := by
        by_contra hne
        rw [Set.not_nonempty_iff_eq_empty] at hne
        rw [hne, closure_empty] at h
        exact h
      refine ⟨x₀, ⟨hx₀.1.2, hVN hx₀.1.1⟩, closure_mono ?_ h⟩
      intro y hy
      exact hside (V ∩ {x | 0 < f x}) Set.inter_subset_left (fun x hx => ne_of_gt hx.2) hP
        x₀ ⟨hx₀.1.1, hx₀.2⟩ hx₀.1.2 ⟨hy.1.1, hy.2⟩
    · obtain ⟨x₀, hx₀⟩ : (V ∩ U ∩ {x | f x < 0}).Nonempty := by
        by_contra hne
        rw [Set.not_nonempty_iff_eq_empty] at hne
        rw [hne, closure_empty] at h
        exact h
      refine ⟨x₀, ⟨hx₀.1.2, hVN hx₀.1.1⟩, closure_mono ?_ h⟩
      intro y hy
      exact hside (V ∩ {x | f x < 0}) Set.inter_subset_left (fun x hx => ne_of_lt hx.2) hNg
        x₀ ⟨hx₀.1.1, hx₀.2⟩ hx₀.1.2 ⟨hy.1.1, hy.2⟩
  set C := connectedComponentIn (U ∩ N) x₀ with hCdef
  have hCX : C ⊆ U ∩ N := connectedComponentIn_subset _ _
  have hCN : C ⊆ N := fun x hx => (hCX hx).2
  have hσc : ContinuousOn σ (U ∩ N) := hσs.continuousOn
  obtain ⟨Θ, hΘX, hΘ0, hΘc⟩ := tau_flow_exists g (U ∩ N) hX σ 0 ε hσs hσr hσb hσp
  have hpc : ∀ δ : ℝ, 0 < δ → δ < ε → IsPreconnected (C ∩ σ ⁻¹' Set.Iio δ) := by
    intro δ _ hδ
    rcases (C ∩ σ ⁻¹' Set.Iio δ).eq_empty_or_nonempty with hS | ⟨y₀, hy₀C, hy₀δ⟩
    · rw [hS]
      exact isPreconnected_empty
    have hD : IsPreconnected (C ×ˢ Set.Ioo (0 : ℝ) δ) :=
      isPreconnected_connectedComponentIn.prod isPreconnected_Ioo
    have hιc : ContinuousOn (fun p : M × ℝ => (p.1, p.2 - σ p.1)) (C ×ˢ Set.Ioo (0 : ℝ) δ) := by
      refine continuousOn_fst.prodMk (continuousOn_snd.sub ?_)
      exact hσc.comp continuousOn_fst (fun p hp => hCX hp.1)
    have hmaps : Set.MapsTo (fun p : M × ℝ => (p.1, p.2 - σ p.1)) (C ×ˢ Set.Ioo (0 : ℝ) δ)
        {p : M × ℝ | p.1 ∈ U ∩ N ∧ 0 < σ p.1 + p.2 ∧ σ p.1 + p.2 < ε} := by
      intro p hp
      refine ⟨hCX hp.1, ?_, ?_⟩
      · show 0 < σ p.1 + (p.2 - σ p.1)
        linarith [hp.2.1]
      · show σ p.1 + (p.2 - σ p.1) < ε
        linarith [hp.2.2]
    have hψc : ContinuousOn (fun p : M × ℝ => Θ p.1 (p.2 - σ p.1)) (C ×ˢ Set.Ioo (0 : ℝ) δ) :=
      hΘc.comp hιc hmaps
    have himg := hD.image _ hψc
    have hψX : ∀ p ∈ C ×ˢ Set.Ioo (0 : ℝ) δ,
        Θ p.1 (p.2 - σ p.1) ∈ U ∩ N ∧ σ (Θ p.1 (p.2 - σ p.1)) = p.2 := by
      intro p hp
      have h := hΘX p.1 (hCX hp.1) (p.2 - σ p.1) (by linarith [hp.2.1]) (by linarith [hp.2.2])
      refine ⟨h.1, ?_⟩
      rw [h.2]
      ring
    have hback : ∀ y ∈ C, Θ y (σ y - σ y) = y := by
      intro y hy
      rw [sub_self]
      exact hΘ0 y (hCX hy)
    have hy₀img : y₀ ∈ (fun p : M × ℝ => Θ p.1 (p.2 - σ p.1)) '' (C ×ˢ Set.Ioo (0 : ℝ) δ) :=
      ⟨(y₀, σ y₀), ⟨hy₀C, (hσb y₀ (hCX hy₀C)).1, hy₀δ⟩, hback y₀ hy₀C⟩
    have himgC : (fun p : M × ℝ => Θ p.1 (p.2 - σ p.1)) '' (C ×ˢ Set.Ioo (0 : ℝ) δ) ⊆ C := by
      have h1 := himg.subset_connectedComponentIn hy₀img
        (by
          rintro _ ⟨p, hp, rfl⟩
          exact (hψX p hp).1)
      rw [← connectedComponentIn_eq hy₀C] at h1
      exact h1
    have heq : (fun p : M × ℝ => Θ p.1 (p.2 - σ p.1)) '' (C ×ˢ Set.Ioo (0 : ℝ) δ) =
        C ∩ σ ⁻¹' Set.Iio δ := by
      apply Set.Subset.antisymm
      · rintro _ ⟨p, hp, rfl⟩
        refine ⟨himgC ⟨p, hp, rfl⟩, ?_⟩
        show σ (Θ p.1 (p.2 - σ p.1)) < δ
        rw [(hψX p hp).2]
        exact hp.2.2
      · rintro y ⟨hyC, hyδ⟩
        exact ⟨(y, σ y), ⟨hyC, (hσb y (hCX hyC)).1, hyδ⟩, hback y hyC⟩
    rw [← heq]
    exact himg
  have hthin : ∀ O' : Set M, IsOpen O' → closure C ∩ frontier U ⊆ O' →
      ∃ δ : ℝ, 0 < δ ∧ δ < ε ∧ C ∩ σ ⁻¹' Set.Iic δ ⊆ O' := by
    intro O' hO' hFO'
    have hδpos : ∀ n : ℕ, 0 < ε / ((n : ℝ) + 2) := fun n => div_pos hε (by positivity)
    have hδlt : ∀ n : ℕ, ε / ((n : ℝ) + 2) < ε := by
      intro n
      rw [div_lt_iff₀ (by positivity)]
      have : (0 : ℝ) ≤ n := n.cast_nonneg
      nlinarith
    have hδanti : ∀ m n : ℕ, m ≤ n → ε / ((n : ℝ) + 2) ≤ ε / ((m : ℝ) + 2) := by
      intro m n hmn
      apply div_le_div_of_nonneg_left hε.le (by positivity)
      have : (m : ℝ) ≤ n := Nat.cast_le.mpr hmn
      linarith
    let T : ℕ → Set M := fun n => closure (C ∩ σ ⁻¹' Set.Iic (ε / ((n : ℝ) + 2))) \ O'
    have hTc : ∀ n, IsClosed (T n) := fun n => isClosed_closure.sdiff hO'
    have hTanti : Antitone T := by
      intro m n hmn
      apply Set.diff_subset_diff_left
      apply closure_mono
      intro x hx
      exact ⟨hx.1, le_trans hx.2 (hδanti m n hmn)⟩
    have hdir : Directed (· ⊇ ·) T := hTanti.directed_ge
    have hcl : ∀ n : ℕ, closure (C ∩ σ ⁻¹' Set.Iic (ε / ((n : ℝ) + 2))) ⊆
        frontier U ∪ (U ∩ N ∩ σ ⁻¹' Set.Iic (ε / ((n : ℝ) + 2))) := by
      intro n
      apply (hσi _ (hδpos n) (hδlt n)).closure_subset_iff.2
      intro x hx
      exact Or.inr ⟨hCX hx.1, hx.2⟩
    have hempty : closure N ∩ ⋂ n, T n = ∅ := by
      rw [Set.eq_empty_iff_forall_notMem]
      rintro x ⟨-, hx⟩
      rw [Set.mem_iInter] at hx
      have hxO : x ∉ O' := (hx 0).2
      have hxC : x ∈ closure C := closure_mono Set.inter_subset_left (hx 0).1
      by_cases hxF : x ∈ frontier U
      · exact hxO (hFO' ⟨hxC, hxF⟩)
      · have hall : ∀ n : ℕ, x ∈ U ∩ N ∧ σ x ≤ ε / ((n : ℝ) + 2) := by
          intro n
          rcases hcl n (hx n).1 with h | h
          · exact absurd h hxF
          · exact ⟨h.1, h.2⟩
        have hpos := (hσb x (hall 0).1).1
        obtain ⟨n, hn⟩ := exists_nat_gt (ε / σ x)
        have h1 := (hall n).2
        have h2 : ε / ((n : ℝ) + 2) < σ x := by
          rw [div_lt_iff₀ (by positivity)]
          rw [div_lt_iff₀ hpos] at hn
          nlinarith
        exact absurd h1 (not_le.2 h2)
    obtain ⟨n, hn⟩ := hNc.elim_directed_family_closed T hTc hempty hdir
    refine ⟨ε / ((n : ℝ) + 2), hδpos n, hδlt n, ?_⟩
    intro x hx
    by_contra hxO
    have hxT : x ∈ T n := ⟨subset_closure hx, hxO⟩
    have hxN : x ∈ closure N := subset_closure (hCN hx.1)
    have h : x ∈ closure N ∩ T n := ⟨hxN, hxT⟩
    rw [hn] at h
    exact h
  have hFCpc : IsPreconnected (closure C ∩ frontier U) := by
    intro u v hu hv hKuv hKu hKv
    by_contra hne
    rw [Set.not_nonempty_iff_eq_empty] at hne
    have hKc : IsCompact (closure C ∩ frontier U) := hFc.inter_left isClosed_closure
    have hnot : ∀ x ∈ closure C ∩ frontier U, x ∈ u → x ∈ v → False := by
      intro x hxK hxu hxv
      have h : x ∈ closure C ∩ frontier U ∩ (u ∩ v) := ⟨hxK, hxu, hxv⟩
      rw [hne] at h
      exact h
    have hdisj : Disjoint ((closure C ∩ frontier U) \ v) ((closure C ∩ frontier U) \ u) := by
      rw [Set.disjoint_left]
      rintro x ⟨hxK, hxv⟩ ⟨-, hxu⟩
      rcases hKuv hxK with h | h
      · exact hxu h
      · exact hxv h
    obtain ⟨A, B, hA, hB, hK1A, hK2B, hAB⟩ :=
      SeparatedNhds.of_isCompact_isCompact (hKc.diff hv) (hKc.diff hu) hdisj
    have hKAB : closure C ∩ frontier U ⊆ A ∪ B := by
      intro x hxK
      by_cases hxv : x ∈ v
      · by_cases hxu : x ∈ u
        · exact (hnot x hxK hxu hxv).elim
        · exact Or.inr (hK2B ⟨hxK, hxu⟩)
      · exact Or.inl (hK1A ⟨hxK, hxv⟩)
    obtain ⟨δ, hδ0, hδε, hδsub⟩ := hthin (A ∪ B) (hA.union hB) hKAB
    have hSsub : C ∩ σ ⁻¹' Set.Iio δ ⊆ A ∪ B := fun x hx =>
      hδsub ⟨hx.1, show σ x ≤ δ from le_of_lt hx.2⟩
    have hmeet : ∀ W : Set M, IsOpen W → (closure C ∩ frontier U ∩ W).Nonempty →
        (C ∩ σ ⁻¹' Set.Iio δ ∩ W).Nonempty := by
      rintro W hW ⟨p, hpK, hpW⟩
      obtain ⟨O', hO'o, hFO', hCO'⟩ := hσ0 δ hδ0
      obtain ⟨y, hyWO, hyC⟩ :=
        _root_.mem_closure_iff.1 hpK.1 (W ∩ O') (hW.inter hO'o) ⟨hpW, hFO' hpK.2⟩
      exact ⟨y, ⟨hyC, (hCO' ⟨(hCX hyC).1, hyWO.2⟩).2⟩, hyWO.1⟩
    obtain ⟨p, hpK, hpu⟩ := hKu
    have hpA : p ∈ A := hK1A ⟨hpK, fun hpv => hnot p hpK hpu hpv⟩
    obtain ⟨q, hqK, hqv⟩ := hKv
    have hqB : q ∈ B := hK2B ⟨hqK, fun hqu => hnot q hqK hqu hqv⟩
    obtain ⟨z, -, hzA, hzB⟩ :=
      hpc δ hδ0 hδε A B hA hB hSsub (hmeet A hA ⟨p, hpK, hpA⟩) (hmeet B hB ⟨q, hqK, hqB⟩)
    exact Set.disjoint_left.1 hAB hzA hzB
  
  haveI : LocallyConnectedSpace M := ChartedSpace.locallyConnectedSpace E3 M
  have hCo : IsOpen C := hX.connectedComponentIn
  have hx₀C : x₀ ∈ C := mem_connectedComponentIn hx₀
  have hFCS : closure C ∩ frontier U ⊆ connectedComponentIn (frontier U) p₀ :=
    hFCpc.subset_connectedComponentIn ⟨hp₀C, hp₀⟩ Set.inter_subset_right
  have hlamC : ∀ q ∈ closure C ∩ frontier U, lam q = 0 := fun q hq => (hdeg q (hFCS hq)).1
  have hCcl : ∀ y ∈ closure C, y ∈ U ∩ N → y ∈ C := by
    intro y hyc hyX
    have hpre : IsPreconnected (insert y C) :=
      isPreconnected_connectedComponentIn.subset_closure (Set.subset_insert y C)
        (Set.insert_subset hyc subset_closure)
    have hsub : insert y C ⊆ U ∩ N := Set.insert_subset hyX hCX
    exact hpre.subset_connectedComponentIn (Set.mem_insert_of_mem y hx₀C) hsub
      (Set.mem_insert y C)
  
  obtain ⟨O, w, hcm, t₀, S, P, z, Y, hO, hON, hFCO, ht₀, hwc, hw0, hwpos, hK, hws, hdw, hH,
    hsurj, hcm0, hcmc, hcmd, hSc, hSne, hYs, hhs, hYt, hY0, hYt', hcomp⟩ :=
    degenerate_cmc_foliation g U hUo hFc hfront N ε σ hNo hFN hNc hε hσs hσr hσb hσp hσi hσ0
      hgood φ lam hlam hdata x₀ p₀ hx₀ ⟨hp₀C, hp₀⟩ hthin hFCpc hlamC
  
  obtain ⟨ρ, Kc, hρnn, hρs, hρ1, hKc, hρK, hρO⟩ :=
    eig_partition_unity S hSc P (fun k ζ hζ hc hs => eig_lift_smooth S P k ζ hζ hc hs)
  
  have h0mem : (0 : ℝ) ∈ Set.Ioo (-t₀) t₀ := ⟨by linarith, ht₀⟩
  have hYts : ∀ j, ∀ t ∈ Set.Ioo (-t₀) t₀, ContDiffOn ℝ ∞ (Y j t) (P.W j) := by
    intro j t ht
    have hm : Set.MapsTo (fun x : E2 => (t, x)) (P.W j) (Set.Ioo (-t₀) t₀ ×ˢ P.W j) :=
      fun x hx => ⟨ht, hx⟩
    exact (hYs j).comp (contDiff_const.prodMk contDiff_id).contDiffOn hm
  have hpd : ∀ t ∈ Set.Ioo (-t₀) t₀, ∀ j, ∀ x ∈ P.W j,
      (pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t) x).PosDef := by
    intro t ht j x hx
    exact (gs_regularity (g.coeff (chartAt E3 (z j)).symm) (chartAt E3 (z j)).target
      (chartAt E3 (z j)).open_target (fun a b => g.smooth (z j) a b)
      (fun y a b => g.symm _ _ _) (fun y hy => coeff_chart_symm_posDef g (z j) y hy)
      (Y j t) (P.W j) (P.W_open j) (hYts j t ht) (fun x hx => (hYt j t ht x hx).1)
      (fun x hx => (hYt j t ht x hx).2)).2.2.1 x hx
  have hms : ∀ t ∈ Set.Ioo (-t₀) t₀, ∀ j (a b : Fin 2),
      ContDiffOn ℝ ∞ (fun x => pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t) x a b)
        (P.W j) := by
    intro t ht j a b
    have hm : Set.MapsTo (fun x : E2 => (t, x)) (P.W j) (Set.Ioo (-t₀) t₀ ×ˢ P.W j) :=
      fun x hx => ⟨ht, hx⟩
    exact (hhs j a b).comp (contDiff_const.prodMk contDiff_id).contDiffOn hm
  
  have hTC := patched_family_total_curvature_const S hSc P ρ Kc hρnn hρs hρ1 hKc hρK hρO
    (-t₀) t₀ (fun t j => pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t))
    (fun j c d => hhs j c d) hpd (fun t ht j k x hx c d => (hcomp t ht j k x hx).2 c d)
  have hflat : ∀ j, ∀ x ∈ P.W j,
      gaussCurv2 (pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j 0)) x = 0 := by
    intro j
    exact degenerate_component_flat g U hUo hfront φ lam hdata p₀ hp₀ hdeg (z j) (P.W j) (Y j 0)
      ⟨P.W_open j, hYts j 0 h0mem,
        fun x hx => ⟨(hYt j 0 h0mem x hx).1, (hY0 j x hx).2, (hYt j 0 h0mem x hx).2⟩⟩
      (fun x hx => hFCS (hY0 j x hx))
  have hTC0 : (∑ j, ∫ x in P.W j, ρ j (P.param j x) *
      gaussCurv2 (pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j 0)) x *
        Real.sqrt (pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j 0) x).det) = 0 := by
    apply Finset.sum_eq_zero
    intro j _
    apply MeasureTheory.setIntegral_eq_zero_of_forall_eq_zero
    intro x hx
    rw [hflat j x hx]
    ring
  
  have hQo : IsOpen (O ∩ C ∩ w ⁻¹' Set.Iio t₀) :=
    hws.continuousOn.isOpen_inter_preimage (hO.inter hCo) isOpen_Iio
  have hne : ∃ j, ∃ x ∈ P.W j, 0 < ρ j (P.param j x) := by
    obtain ⟨q, hqS⟩ := hSne
    have h1 := hρ1 q hqS
    obtain ⟨j, hj⟩ : ∃ j, 0 < ρ j q := by
      by_contra hcon
      push_neg at hcon
      have : ∑ j, ρ j q ≤ 0 := Finset.sum_nonpos (fun j _ => hcon j)
      linarith
    have hqO : q ∈ P.O j := by
      by_contra hq
      rw [hρO j q hq] at hj
      exact lt_irrefl _ hj
    have hqim : q ∈ P.param j '' P.W j := by
      rw [P.image_eq j]
      exact ⟨hqO, hqS⟩
    obtain ⟨x, hx, rfl⟩ := hqim
    exact ⟨j, x, hx, hj⟩
  have hderiv : ∀ t ∈ Set.Ioo 0 t₀, deriv hcm t ≤ 0 := by
    intro t ht
    have ht' : t ∈ Set.Ioo (-t₀) t₀ := ⟨by linarith [ht.1], ht.2⟩
    have htot : eigWInt (P.withMetric
        (fun j => pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t)) (hms t ht') (hpd t ht')
        (fun j k x hx a b => (hcomp t ht' j k x hx).2 a b)) ρ
        (fun j x => gaussCurv2 ((P.withMetric
          (fun j => pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t)) (hms t ht')
          (hpd t ht') (fun j k x hx a b => (hcomp t ht' j k x hx).2 a b)).h j) x) ≤ 0 :=
      le_of_eq ((hTC t ht' 0 h0mem).trans hTC0)
    exact cmc_leaf_monotone g hR S (P.withMetric
        (fun j => pullMetric2 (g.coeff (chartAt E3 (z j)).symm) (Y j t)) (hms t ht') (hpd t ht')
        (fun j k x hx a b => (hcomp t ht' j k x hx).2 a b))
      ρ Kc hρnn hρs hρ1 hKc hρK hρO hne z (fun j => Y j t)
      (fun j => hYts j t ht') (fun j x hx => hYt j t ht' x hx) (fun j => rfl)
      (fun j k x hx => (hcomp t ht' j k x hx).1) (O ∩ C ∩ w ⁻¹' Set.Iio t₀) hQo w
      (hws.mono Set.inter_subset_left) (fun x hx => hdw x hx.1) hcm
      (fun x hx => hH x hx.1 hx.2) t
      (fun j x hx => ⟨⟨(hYt' j t ht x hx).1,
        show w _ < t₀ by rw [(hYt' j t ht x hx).2]; exact ht.2⟩, (hYt' j t ht x hx).2⟩)
      (hcmd.differentiableAt (Ioo_mem_nhds ht.1 ht.2)) htot
  
  have hanti : AntitoneOn hcm (Set.Ico 0 t₀) := by
    apply antitoneOn_of_deriv_nonpos (convex_Ico 0 t₀) hcmc
    · rw [interior_Ico]
      exact hcmd
    · intro x hx
      rw [interior_Ico] at hx
      exact hderiv x hx
  have hle : ∀ t ∈ Set.Ioo 0 t₀, hcm t ≤ 0 := by
    intro t ht
    rw [← hcm0]
    exact hanti ⟨le_refl 0, ht₀⟩ ⟨ht.1.le, ht.2⟩ ht.1.le
  
  by_cases hz : ∃ t₁ ∈ Set.Ioo 0 t₀, hcm t₁ = 0
  · obtain ⟨t₁, ht₁, hcm1⟩ := hz
    have hKcl : IsClosed {x | x ∈ O ∩ closure C ∧ w x ≤ t₀} := hK.isClosed
    have hwK : ContinuousOn w {x | x ∈ O ∩ closure C ∧ w x ≤ t₀} :=
      hwc.mono (fun x hx => hx.1)
    have hS₁eq : {x | x ∈ O ∩ closure C ∧ w x = t₁} =
        {x | x ∈ O ∩ closure C ∧ w x ≤ t₀} ∩ w ⁻¹' {t₁} := by
      ext x
      simp only [Set.mem_setOf_eq, Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff]
      constructor
      · rintro ⟨hx, hwx⟩
        exact ⟨⟨hx, by rw [hwx]; exact ht₁.2.le⟩, hwx⟩
      · rintro ⟨⟨hx, -⟩, hwx⟩
        exact ⟨hx, hwx⟩
    have hS₁c : IsClosed {x | x ∈ O ∩ closure C ∧ w x = t₁} := by
      rw [hS₁eq]
      exact hwK.preimage_isClosed_of_isClosed hKcl isClosed_singleton
    have hS₁k : IsCompact {x | x ∈ O ∩ closure C ∧ w x = t₁} := by
      refine hK.of_isClosed_subset hS₁c ?_
      rintro x ⟨hx, hwx⟩
      exact ⟨hx, by rw [hwx]; exact ht₁.2.le⟩
    have hS₁Q : {x | x ∈ O ∩ closure C ∧ w x = t₁} ⊆ O ∩ C := by
      rintro x ⟨⟨hxO, hxc⟩, hwx⟩
      have hxF : x ∉ frontier U := by
        intro hxF
        have := hw0 x ⟨hxO, hxc⟩ hxF
        rw [hwx] at this
        exact (ne_of_gt ht₁.1) this
      have hxU : x ∈ U := by
        have hxcU : x ∈ closure U := closure_mono (fun y hy => (hCX hy).1) hxc
        by_contra hxU
        apply hxF
        rw [hUo.frontier_eq]
        exact ⟨hxcU, hxU⟩
      exact ⟨hxO, hCcl x hxc ⟨hxU, hON hxO⟩⟩
    have hmin : IsMinimalSurfaceSet g {x | x ∈ O ∩ closure C ∧ w x = t₁} := by
      refine regular_level_isMinimalSurfaceSet g (O ∩ C) (hO.inter hCo) w hws t₁ _ hS₁c hS₁Q
        ?_ ?_ ?_
      · intro x hx
        constructor
        · rintro ⟨-, hwx⟩
          exact hwx
        · intro hwx
          exact ⟨⟨hx.1, subset_closure hx.2⟩, hwx⟩
      · intro x hx
        exact hdw x (hS₁Q hx)
      · intro x hx
        rw [hH x (hS₁Q hx) (by rw [hx.2]; exact ht₁.2), hx.2, hcm1]
    have hempty := hnone _ hS₁k hmin (fun x hx => (hCX (hS₁Q hx).2).1)
    obtain ⟨x, hxOC, hwx⟩ := hsurj t₁ ht₁
    have hx : x ∈ {x | x ∈ O ∩ closure C ∧ w x = t₁} := ⟨⟨hxOC.1, subset_closure hxOC.2⟩, hwx⟩
    rw [hempty] at hx
    exact hx
  · push_neg at hz
    exact collar_side_cutoff_contradiction g U hUo N ε σ hNo hε hσs hσb hσp hWO x₀ hx₀ hthin
      O w t₀ hO ht₀ hFCO hwc hw0 hwpos hws hdw
      (fun x hx hlt => lt_of_le_of_ne (by rw [hH x hx hlt]; exact hle _ ⟨hwpos x hx, hlt⟩)
        (by rw [hH x hx hlt]; exact hz _ ⟨hwpos x hx, hlt⟩))

theorem good_collar_leaf_circleLiftable [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (U : Set M)
    (hUo : IsOpen U) (hFc : IsCompact (frontier U)) (hfront : IsMinimalSurfaceSet g (frontier U))
    (hnone : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ U → S = ∅)
    (N : Set M) (ε : ℝ) (σ : M → ℝ) (hNo : IsOpen N) (hFN : frontier U ⊆ N)
    (hNc : IsCompact (closure N)) (hε : 0 < ε)
    (hσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ σ (U ∩ N))
    (hσr : ∀ x ∈ U ∩ N, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) σ x ≠ 0)
    (hσb : ∀ x ∈ U ∩ N, 0 < σ x ∧ σ x < ε)
    (hσp : ∀ c d : ℝ, 0 < c → d < ε → IsCompact (U ∩ N ∩ σ ⁻¹' Set.Icc c d))
    (hσi : ∀ δ : ℝ, 0 < δ → δ < ε → IsClosed (frontier U ∪ (U ∩ N ∩ σ ⁻¹' Set.Iic δ)))
    (hσ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N ∩ σ ⁻¹' Set.Iio δ)
    (hgood : ∀ p ∈ frontier U, ∃ (V : Set M) (f : M → ℝ), IsOpen V ∧ p ∈ V ∧
      ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧ (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
      V ∩ frontier U = V ∩ f ⁻¹' {0} ∧ ∀ x ∈ V ∩ U ∩ N, σ x = |f x|)
    (hWO : ∀ (x₀ : M) (a b : ℝ) (w : M → ℝ), x₀ ∈ U ∩ N → 0 < a → a < b → b < ε →
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (connectedComponentIn (U ∩ N) x₀) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, σ x ≤ a → w x < 0) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, b ≤ σ x → 0 < w x) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 →
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0) →
      ∃ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 ∧ 0 ≤ g.levelMeanCurv w x) :
    CircleLiftable (U ∩ N ∩ σ ⁻¹' {ε / 2}) :=
by
  
  obtain ⟨φ, lam, hlam, hdata⟩ := jacobi_eigen_data g (frontier U) hFc hfront
  
  have hstab := collar_jacobi_nonneg g U hUo hFc hfront N ε σ hNo hFN hNc hε hσs hσr hσb
    hσp hσi hσ0 hWO φ lam hlam hdata
  
  obtain ⟨P, pr, hPpr, hcomp⟩ := good_collar_leaf_patched g U hUo hFc hfront N ε σ hNo hFN
    hNc hε hσs hσr hσb hσp hσi hσ0 hgood
  
  have hLc : IsCompact (U ∩ N ∩ σ ⁻¹' {ε / 2}) := by
    have h := hσp (ε / 2) (ε / 2) (by linarith) (by linarith)
    rwa [Set.Icc_self] at h
  
  have hloc : ∀ (h₁ h₂ : E2 → Matrix (Fin 2) (Fin 2) ℝ) (x : E2), h₁ =ᶠ[𝓝 x] h₂ →
      gaussCurv2 h₁ x = gaussCurv2 h₂ x := by
    intro h₁ h₂ x hev
    have hchr : ∀ k i j : Fin 2, christoffel2 h₁ k i j =ᶠ[𝓝 x] christoffel2 h₂ k i j := by
      intro k i j
      filter_upwards [hev.eventuallyEq_nhds] with y hy
      have hpd : ∀ a b c : Fin 2,
          pd2 c (fun z => h₁ z a b) y = pd2 c (fun z => h₂ z a b) y := by
        intro a b c
        have he : (fun z => h₁ z a b) =ᶠ[𝓝 y] (fun z => h₂ z a b) :=
          hy.mono (fun z hz => by simp only [hz])
        unfold pd2
        rw [he.fderiv_eq]
      have hyy : h₁ y = h₂ y := hy.eq_of_nhds
      simp only [christoffel2, hyy, hpd]
    have hx : h₁ x = h₂ x := hev.eq_of_nhds
    have hchrx : ∀ k i j : Fin 2, christoffel2 h₁ k i j x = christoffel2 h₂ k i j x :=
      fun k i j => (hchr k i j).eq_of_nhds
    have hpdc : ∀ c k i j : Fin 2,
        pd2 c (christoffel2 h₁ k i j) x = pd2 c (christoffel2 h₂ k i j) x := by
      intro c k i j
      unfold pd2
      rw [(hchr k i j).fderiv_eq]
    simp only [gaussCurv2, ricci2, hx, hpdc, hchrx]
  
  have hprF : ∀ q ∈ U ∩ N ∩ σ ⁻¹' {ε / 2}, pr q ∈ frontier U ∧ 0 < φ (pr q) := by
    intro q hq
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (P.cover hq)
    have hmem : q ∈ P.param j '' P.W j := by
      rw [P.image_eq j]
      exact ⟨hj, hq⟩
    obtain ⟨x, hx, rfl⟩ := hmem
    obtain ⟨z, F, hF, hpr, -⟩ := hPpr j
    rw [hpr x hx]
    have hS : (chartAt E3 z).symm (F x) ∈ frontier U := (hF.2.2 x hx).2.1
    exact ⟨hS, (hdata _ hS).1⟩
  
  have hKeq : ∀ j, ∀ x ∈ P.W j, ∃ (z : M) (F : E2 → E3), eigSurfParam (frontier U) z (P.W j) F ∧
      (chartAt E3 z).symm (F x) = pr (P.param j x) ∧
      ∃ T : ℝ, 0 ≤ T ∧ (T = 0 → fderiv ℝ (fun y => φ ((chartAt E3 z).symm (F y))) x = 0) ∧
        0 ≤ gsSffSq (g.coeff (chartAt E3 z).symm) F x ∧ 0 < φ (pr (P.param j x)) ∧
        gaussCurv2 (fun y => (φ (pr (P.param j y))) ^ 2 • P.h j y) x *
            (φ (pr (P.param j x))) ^ 2 =
          lam (pr (P.param j x)) + g.scalarCurvature (pr (P.param j x)) / 2 +
            gsSffSq (g.coeff (chartAt E3 z).symm) F x / 2 + T := by
    intro j x hx
    obtain ⟨z, F, hF, hpr, hh⟩ := hPpr j
    obtain ⟨-, hpos, hA, T, hT, hT0, hid⟩ :=
      jacobi_conformal_curvature g (frontier U) hfront φ lam hdata z (P.W j) F hF x hx
    have hev : (fun y => (φ (pr (P.param j y))) ^ 2 • P.h j y) =ᶠ[𝓝 x]
        (fun y => (φ ((chartAt E3 z).symm (F y))) ^ 2 •
          pullMetric2 (g.coeff (chartAt E3 z).symm) F y) := by
      filter_upwards [(P.W_open j).mem_nhds hx] with y hy
      rw [hpr y hy, hh]
    refine ⟨z, F, hF, (hpr x hx).symm, T, hT, hT0, hA, ?_, ?_⟩
    · rw [hpr x hx]
      exact hpos
    · rw [hloc _ _ x hev, hpr x hx]
      exact hid
  
  have hKnn : ∀ j, ∀ x ∈ P.W j,
      0 ≤ gaussCurv2 (fun y => (φ (pr (P.param j y))) ^ 2 • P.h j y) x := by
    intro j x hx
    obtain ⟨z, F, hF, hq, T, hT, -, hA, hpos, hid⟩ := hKeq j x hx
    have hS : pr (P.param j x) ∈ frontier U := by
      rw [← hq]
      exact (hF.2.2 x hx).2.1
    have h1 := hstab _ hS
    have h2 := hR (pr (P.param j x))
    have hsum : 0 ≤ gaussCurv2 (fun y => (φ (pr (P.param j y))) ^ 2 • P.h j y) x *
        (φ (pr (P.param j x))) ^ 2 := by
      rw [hid]
      linarith
    have hp2 : 0 < (φ (pr (P.param j x))) ^ 2 := by positivity
    by_contra hneg
    push_neg at hneg
    nlinarith
  
  refine patched_conformal_curvature_liftable _ hLc P (fun q => φ (pr q)) ?_ ?_ ?_ ?_
  · 
    intro j
    obtain ⟨z, F, hF, hpr, -⟩ := hPpr j
    rcases (P.W j).eq_empty_or_nonempty with hne | ⟨x, hx⟩
    · rw [hne]
      exact contDiffOn_empty
    · obtain ⟨hsm, -⟩ :=
        jacobi_conformal_curvature g (frontier U) hfront φ lam hdata z (P.W j) F hF x hx
      refine hsm.congr ?_
      intro y hy
      show φ (pr (P.param j y)) = φ ((chartAt E3 z).symm (F y))
      rw [hpr y hy]
  · 
    intro q hq
    exact (hprF q hq).2
  · 
    intro j x hx
    exact hKnn j x hx
  · 
    intro q hq
    show ∃ j, ∃ x ∈ P.W j, P.param j x ∈ connectedComponentIn (U ∩ N ∩ σ ⁻¹' {ε / 2}) q ∧
      0 < gaussCurv2 (fun y => (φ (pr (P.param j y))) ^ 2 • P.h j y) x
    by_contra hcon
    push_neg at hcon
    refine degenerate_frontier_rigidity g hR U hUo hFc hfront hnone N ε σ hNo hFN hNc hε hσs
      hσr hσb hσp hσi hσ0 hgood hWO φ lam hlam hdata (pr q) (hprF q hq).1 ?_
    intro q' hq'
    rw [← hcomp q hq] at hq'
    obtain ⟨q'', hq'', rfl⟩ := hq'
    have hq''L : q'' ∈ U ∩ N ∩ σ ⁻¹' {ε / 2} := connectedComponentIn_subset _ _ hq''
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 (P.cover hq''L)
    have hmem : q'' ∈ P.param j '' P.W j := by
      rw [P.image_eq j]
      exact ⟨hj, hq''L⟩
    obtain ⟨x, hx, rfl⟩ := hmem
    obtain ⟨z, F, hF, hqe, T, hT, hT0, hA, hpos, hid⟩ := hKeq j x hx
    have hK0 : gaussCurv2 (fun y => (φ (pr (P.param j y))) ^ 2 • P.h j y) x = 0 :=
      le_antisymm (hcon j x hx hq'') (hKnn j x hx)
    rw [hK0, zero_mul] at hid
    have hS : pr (P.param j x) ∈ frontier U := by
      rw [← hqe]
      exact (hF.2.2 x hx).2.1
    have h1 := hstab _ hS
    have h2 := hR (pr (P.param j x))
    refine ⟨by linarith, by linarith, z, P.W j, F, x, hF, hx, hqe, by linarith,
      hT0 (by linarith)⟩

theorem collar_leaf_transfer [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (U : Set M) (hUo : IsOpen U) (N : Set M) (ε : ℝ) (τ : M → ℝ) (hNo : IsOpen N)
    (hFN : frontier U ⊆ N) (hNc : IsCompact (closure N)) (hε : 0 < ε)
    (hτs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ τ (U ∩ N))
    (hτr : ∀ x ∈ U ∩ N, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) τ x ≠ 0)
    (hτb : ∀ x ∈ U ∩ N, 0 < τ x ∧ τ x < ε)
    (hτp : ∀ c d : ℝ, 0 < c → d < ε → IsCompact (U ∩ N ∩ τ ⁻¹' Set.Icc c d))
    (hτi : ∀ δ : ℝ, 0 < δ → δ < ε → IsClosed (frontier U ∪ (U ∩ N ∩ τ ⁻¹' Set.Iic δ)))
    (hτ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N ∩ τ ⁻¹' Set.Iio δ)
    (N' : Set M) (ε' : ℝ) (σ : M → ℝ) (hNo' : IsOpen N') (hFN' : frontier U ⊆ N')
    (hNc' : IsCompact (closure N')) (hε' : 0 < ε')
    (hσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ σ (U ∩ N'))
    (hσr : ∀ x ∈ U ∩ N', mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) σ x ≠ 0)
    (hσb : ∀ x ∈ U ∩ N', 0 < σ x ∧ σ x < ε')
    (hσp : ∀ c d : ℝ, 0 < c → d < ε' → IsCompact (U ∩ N' ∩ σ ⁻¹' Set.Icc c d))
    (hσi : ∀ δ : ℝ, 0 < δ → δ < ε' → IsClosed (frontier U ∪ (U ∩ N' ∩ σ ⁻¹' Set.Iic δ)))
    (hσ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N' ∩ σ ⁻¹' Set.Iio δ)
    (c : ℝ) (hc0 : 0 < c) (hcε : c < ε') (hL' : CircleLiftable (U ∩ N' ∩ σ ⁻¹' {c})) :
    CircleLiftable (U ∩ N ∩ τ ⁻¹' {ε / 2}) :=
by
  
  have hcompat : ∀ (X : Set M) (hX : IsOpen X) (f : M → ℝ) (a b m : ℝ) (ham : a < m)
      (hmb : m < b) (hfs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f X)
      (hfr : ∀ x ∈ X, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0)
      (hfb : ∀ x ∈ X, a < f x ∧ f x < b)
      (hfp : ∀ c d : ℝ, a < c → d < b → IsCompact (X ∩ f ⁻¹' Set.Icc c d)),
      ∃ e : ↥X ≃ₜ ↥(X ∩ f ⁻¹' {m}) × ↥(Set.Ioo a b), ∀ x : ↥X, ((e x).2 : ℝ) = f x := by
    intro X hX f a b m ham hmb hfs hfr hfb hfp
    obtain ⟨V, hVs, hVf⟩ := tau_gradient_field g X hX f hfs hfr
    have hloc : ∀ x₀ ∈ X, ∃ (N : Set M) (ε : ℝ) (ψ : M → ℝ → M), IsOpen N ∧ x₀ ∈ N ∧ N ⊆ X ∧
        0 < ε ∧ ContinuousOn (fun p : M × ℝ => ψ p.1 p.2) (N ×ˢ Set.Ioo (-ε) ε) ∧
        ∀ x ∈ N, ψ x 0 = x ∧ IsMIntegralCurveOn (ψ x) V (Set.Ioo (-ε) ε) ∧
          ∀ s ∈ Set.Ioo (-ε) ε, ψ x s ∈ X :=
      fun x₀ hx₀ => local_flow_of_contMDiffAt X hX V x₀ hx₀ (hVs x₀ hx₀)
    have huniq : ∀ (γ γ' : ℝ → M) (α β t₀ : ℝ), t₀ ∈ Set.Ioo α β →
        IsMIntegralCurveOn γ V (Set.Ioo α β) → IsMIntegralCurveOn γ' V (Set.Ioo α β) →
        (∀ t ∈ Set.Ioo α β, γ t ∈ X) → (∀ t ∈ Set.Ioo α β, γ' t ∈ X) → γ t₀ = γ' t₀ →
        Set.EqOn γ γ' (Set.Ioo α β) :=
      fun γ γ' α β t₀ ht₀ hγ hγ' hγX hγ'X h₀ =>
        integral_curve_eqOn_of_mem X V hVs γ γ' α β t₀ ht₀ hγ hγ' hγX hγ'X h₀
    have hflin : ∀ (γ : ℝ → M) (α β s₀ : ℝ), s₀ ∈ Set.Ioo α β →
        IsMIntegralCurveOn γ V (Set.Ioo α β) → (∀ t ∈ Set.Ioo α β, γ t ∈ X) →
        ∀ s ∈ Set.Ioo α β, f (γ s) = f (γ s₀) + (s - s₀) :=
      fun γ α β s₀ hs₀ hγ hγX =>
        tau_affine_along_integral_curve X hX f hfs V hVf γ α β s₀ hs₀ hγ hγX
    have hunif : ∀ c d : ℝ, a < c → d < b → ∃ (O : Set M) (ε : ℝ) (Ψ : M → ℝ → M),
        IsOpen O ∧ X ∩ f ⁻¹' Set.Icc c d ⊆ O ∧ O ⊆ X ∧ 0 < ε ∧
        ContinuousOn (fun p : M × ℝ => Ψ p.1 p.2) (O ×ˢ Set.Ioo (-ε) ε) ∧
        ∀ x ∈ O, Ψ x 0 = x ∧ IsMIntegralCurveOn (Ψ x) V (Set.Ioo (-ε) ε) ∧
          ∀ s ∈ Set.Ioo (-ε) ε, Ψ x s ∈ X :=
      fun c d hc hd => uniform_flow_on_compact X (X ∩ f ⁻¹' Set.Icc c d) Set.inter_subset_left
        (hfp c d hc hd) V hloc huniq
    have hunif' : ∀ c d : ℝ, a < c → d < b → ∃ (O : Set M) (ε : ℝ) (Ψ : M → ℝ → M),
        X ∩ f ⁻¹' Set.Icc c d ⊆ O ∧ O ⊆ X ∧ 0 < ε ∧
        ∀ x ∈ O, Ψ x 0 = x ∧ IsMIntegralCurveOn (Ψ x) V (Set.Ioo (-ε) ε) ∧
          ∀ s ∈ Set.Ioo (-ε) ε, Ψ x s ∈ X := by
      intro c d hc hd
      obtain ⟨O, ε, Ψ, _, h1, h2, h3, _, h5⟩ := hunif c d hc hd
      exact ⟨O, ε, Ψ, h1, h2, h3, h5⟩
    have hlong : ∀ x ∈ X, ∀ T₁ T₂ : ℝ, T₁ ≤ 0 → 0 ≤ T₂ → a < f x + T₁ → f x + T₂ < b →
        ∃ (γ : ℝ → M) (α β : ℝ), α < T₁ ∧ T₂ < β ∧ γ 0 = x ∧
          IsMIntegralCurveOn γ V (Set.Ioo α β) ∧ ∀ t ∈ Set.Ioo α β, γ t ∈ X :=
      fun x hx T₁ T₂ h1 h2 h3 h4 =>
        long_integral_curve_exists X f a b V hfb huniq hflin hunif' x hx T₁ T₂ h1 h2 h3 h4
    obtain ⟨Θ, hΘX, hΘ0, hΘadd, hΘc⟩ :=
      global_flow_assembly X hX f a b hfs.continuousOn hfb V huniq hflin hunif hlong
    have hF1 : ∀ x ∈ X, Θ x (m - f x) ∈ X ∧ f (Θ x (m - f x)) = m := by
      intro x hx
      have h := hΘX x hx (m - f x) (by linarith [(hfb x hx).1]) (by linarith [(hfb x hx).2])
      exact ⟨h.1, by rw [h.2]; ring⟩
    have hG1 : ∀ y ∈ X, f y = m → ∀ t : ℝ, a < t → t < b →
        Θ y (t - m) ∈ X ∧ f (Θ y (t - m)) = t := by
      intro y hy hym t ht1 ht2
      have h := hΘX y hy (t - m) (by rw [hym]; linarith) (by rw [hym]; linarith)
      exact ⟨h.1, by rw [h.2, hym]; ring⟩
    let F : ↥X → ↥(X ∩ f ⁻¹' {m}) × ↥(Set.Ioo a b) := fun x =>
      (⟨Θ x.1 (m - f x.1), (hF1 x.1 x.2).1, (hF1 x.1 x.2).2⟩, ⟨f x.1, hfb x.1 x.2⟩)
    let G : ↥(X ∩ f ⁻¹' {m}) × ↥(Set.Ioo a b) → ↥X := fun p =>
      ⟨Θ p.1.1 (p.2.1 - m), (hG1 p.1.1 p.1.2.1 p.1.2.2 p.2.1 p.2.2.1 p.2.2.2).1⟩
    have hleft : ∀ x : ↥X, G (F x) = x := by
      intro x
      apply Subtype.ext
      show Θ (Θ x.1 (m - f x.1)) (f x.1 - m) = x.1
      have hb := hfb x.1 x.2
      rw [hΘadd x.1 x.2 (m - f x.1) (f x.1 - m) (by linarith) (by linarith) (by linarith)
        (by linarith)]
      rw [show m - f x.1 + (f x.1 - m) = 0 by ring]
      exact hΘ0 x.1 x.2
    have hright : ∀ p : ↥(X ∩ f ⁻¹' {m}) × ↥(Set.Ioo a b), F (G p) = p := by
      rintro ⟨⟨y, hyX, hym⟩, ⟨t, ht1, ht2⟩⟩
      have hym' : f y = m := hym
      have hz := hG1 y hyX hym' t ht1 ht2
      apply Prod.ext
      · apply Subtype.ext
        show Θ (Θ y (t - m)) (m - f (Θ y (t - m))) = y
        rw [hz.2]
        rw [hΘadd y hyX (t - m) (m - t) (by linarith) (by linarith) (by linarith) (by linarith)]
        rw [show t - m + (m - t) = 0 by ring]
        exact hΘ0 y hyX
      · apply Subtype.ext
        show f (Θ y (t - m)) = t
        exact hz.2
    have hS : ∀ x : ↥X, (x.1, m - f x.1) ∈
        {p : M × ℝ | p.1 ∈ X ∧ a < f p.1 + p.2 ∧ f p.1 + p.2 < b} := by
      intro x
      refine ⟨x.2, ?_, ?_⟩
      · show a < f x.1 + (m - f x.1)
        linarith
      · show f x.1 + (m - f x.1) < b
        linarith
    have hS' : ∀ p : ↥(X ∩ f ⁻¹' {m}) × ↥(Set.Ioo a b), (p.1.1, p.2.1 - m) ∈
        {q : M × ℝ | q.1 ∈ X ∧ a < f q.1 + q.2 ∧ f q.1 + q.2 < b} := by
      intro p
      have h1 : f p.1.1 = m := p.1.2.2
      have h2 := p.2.2
      refine ⟨p.1.2.1, ?_, ?_⟩
      · show a < f p.1.1 + (p.2.1 - m)
        linarith [h2.1]
      · show f p.1.1 + (p.2.1 - m) < b
        linarith [h2.2]
    have hfr' : Continuous (fun x : ↥X => f x.1) := hfs.continuousOn.restrict
    have hFc : Continuous F := by
      refine Continuous.prodMk ?_ ?_
      · refine Continuous.subtype_mk ?_ _
        have hsel : Continuous (fun x : ↥X => (x.1, m - f x.1)) :=
          continuous_subtype_val.prodMk (continuous_const.sub hfr')
        exact hΘc.comp_continuous hsel hS
      · exact hfr'.subtype_mk _
    have hGc : Continuous G := by
      refine Continuous.subtype_mk ?_ _
      have hsel : Continuous
          (fun p : ↥(X ∩ f ⁻¹' {m}) × ↥(Set.Ioo a b) => (p.1.1, p.2.1 - m)) :=
        (continuous_subtype_val.comp continuous_fst).prodMk
          ((continuous_subtype_val.comp continuous_snd).sub continuous_const)
      exact hΘc.comp_continuous hsel hS'
    exact ⟨⟨⟨F, G, hleft, hright⟩, hFc, hGc⟩, fun x => rfl⟩
  
  have hthin : ∀ (N₀ : Set M) (ε₀ : ℝ) (f : M → ℝ), frontier U ⊆ N₀ → IsCompact (closure N₀) →
      0 < ε₀ → (∀ x ∈ U ∩ N₀, 0 < f x ∧ f x < ε₀) →
      (∀ δ : ℝ, 0 < δ → δ < ε₀ → IsClosed (frontier U ∪ (U ∩ N₀ ∩ f ⁻¹' Set.Iic δ))) →
      ∀ O : Set M, IsOpen O → frontier U ⊆ O →
      ∃ δ : ℝ, 0 < δ ∧ δ < ε₀ ∧ U ∩ N₀ ∩ f ⁻¹' Set.Iic δ ⊆ O := by
    intro N₀ ε₀ f hFN₀ hNc₀ hε₀ hfb hfi O hOo hFO
    by_contra hcon
    have hbad : ∀ δ : ℝ, 0 < δ → δ < ε₀ → ∃ x, x ∈ U ∩ N₀ ∩ f ⁻¹' Set.Iic δ ∧ x ∉ O := by
      intro δ h1 h2
      by_contra h3
      apply hcon
      refine ⟨δ, h1, h2, ?_⟩
      intro x hx
      by_contra hxO
      exact h3 ⟨x, hx, hxO⟩
    let d : ℕ → ℝ := fun n => ε₀ / ((n : ℝ) + 2)
    have hd0 : ∀ n, 0 < d n := fun n => div_pos hε₀ (by positivity)
    have hdlt : ∀ n, d n < ε₀ := fun n =>
      div_lt_self hε₀ (by have := Nat.cast_nonneg (α := ℝ) n; linarith)
    have hmono : ∀ n, d (n + 1) ≤ d n := by
      intro n
      apply div_le_div_of_nonneg_left hε₀.le (by positivity)
      push_cast
      linarith
    let t : ℕ → Set M := fun n => (frontier U ∪ (U ∩ N₀ ∩ f ⁻¹' Set.Iic (d n))) ∩ Oᶜ
    have htdec : ∀ n, t (n + 1) ⊆ t n := by
      intro n x hx
      refine ⟨?_, hx.2⟩
      rcases hx.1 with h | ⟨hxUN, hxle⟩
      · exact Or.inl h
      · right
        refine ⟨hxUN, ?_⟩
        show f x ≤ d n
        exact le_trans hxle (hmono n)
    have htne : ∀ n, (t n).Nonempty := by
      intro n
      obtain ⟨x, hx, hxO⟩ := hbad (d n) (hd0 n) (hdlt n)
      exact ⟨x, Or.inr hx, hxO⟩
    have htcl : ∀ n, IsClosed (t n) := fun n =>
      (hfi (d n) (hd0 n) (hdlt n)).inter hOo.isClosed_compl
    have htc : IsCompact (t 0) := by
      refine hNc₀.of_isClosed_subset (htcl 0) ?_
      intro x hx
      rcases hx.1 with h | h
      · exact subset_closure (hFN₀ h)
      · exact subset_closure h.1.2
    obtain ⟨x, hx⟩ :=
      IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed t htdec htne htc htcl
    rw [Set.mem_iInter] at hx
    have hxn : ∀ n, x ∈ U ∩ N₀ ∧ f x ≤ d n := by
      intro n
      have h := hx n
      rcases h.1 with h1 | h1
      · exact absurd (hFO h1) h.2
      · exact ⟨h1.1, h1.2⟩
    have hfx : 0 < f x := (hfb x (hxn 0).1).1
    obtain ⟨n, hn⟩ := exists_nat_gt (ε₀ / f x)
    have h1 : ε₀ < (n : ℝ) * f x := (div_lt_iff₀ hfx).mp hn
    have h2 : d n < f x := by
      show ε₀ / ((n : ℝ) + 2) < f x
      rw [div_lt_iff₀ (by positivity)]
      nlinarith
    have h3 := (hxn n).2
    linarith
  
  obtain ⟨O₁, hO₁o, hFO₁, hO₁⟩ := hτ0 ε hε
  obtain ⟨c₂, hc₂0, hc₂ε', hc₂⟩ := hthin N' ε' σ hFN' hNc' hε' hσb hσi O₁ hO₁o hFO₁
  have hA : ∀ y, y ∈ U ∩ N' → σ y ≤ c₂ → y ∈ U ∩ N := by
    intro y hy hσy
    have h1 : y ∈ O₁ := hc₂ ⟨hy, hσy⟩
    exact ⟨hy.1, (hO₁ ⟨hy.1, h1⟩).1⟩
  obtain ⟨O₂, hO₂o, hFO₂, hO₂⟩ := hσ0 c₂ hc₂0
  obtain ⟨δ, hδ0, hδε, hδ⟩ := hthin N ε τ hFN hNc hε hτb hτi O₂ hO₂o hFO₂
  have hB : ∀ x, x ∈ U ∩ N → τ x ≤ δ → x ∈ U ∩ N' ∧ σ x < c₂ := by
    intro x hx hτx
    have h1 : x ∈ O₂ := hδ ⟨hx, hτx⟩
    have h2 := hO₂ ⟨hx.1, h1⟩
    exact ⟨⟨hx.1, h2.1⟩, h2.2⟩
  
  obtain ⟨e, he⟩ := hcompat (U ∩ N) (hUo.inter hNo) τ 0 ε (ε / 2) (by linarith) (by linarith)
    hτs hτr hτb hτp
  obtain ⟨e', he'⟩ := hcompat (U ∩ N') (hUo.inter hNo') σ 0 ε' c hc0 hcε hσs hσr hσb hσp
  have hT1 : ∀ (l : ↥(U ∩ N ∩ τ ⁻¹' {ε / 2})) (t : ↥(Set.Ioo (0 : ℝ) ε)),
      τ (e.symm (l, t)).1 = t := by
    intro l t
    have h := he (e.symm (l, t))
    rw [e.apply_symm_apply] at h
    exact h.symm
  have hT2 : ∀ (l : ↥(U ∩ N' ∩ σ ⁻¹' {c})) (t : ↥(Set.Ioo (0 : ℝ) ε')),
      σ (e'.symm (l, t)).1 = t := by
    intro l t
    have h := he' (e'.symm (l, t))
    rw [e'.apply_symm_apply] at h
    exact h.symm
  
  let δ' : ↥(Set.Ioo (0 : ℝ) ε) := ⟨δ, hδ0, hδε⟩
  have hzB : ∀ l : ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}),
      (e.symm (l, δ')).1 ∈ U ∩ N' ∧ σ (e.symm (l, δ')).1 < c₂ := by
    intro l
    exact hB _ (e.symm (l, δ')).2 (hT1 l δ').le
  let k : ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) → ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂) :=
    fun l => ((e' ⟨(e.symm (l, δ')).1, (hzB l).1⟩).1,
      ⟨σ (e.symm (l, δ')).1, (hσb _ (hzB l).1).1, (hzB l).2⟩)
  have hk : Continuous k := by
    have hz : Continuous (fun l : ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) => e.symm (l, δ')) :=
      e.symm.continuous.comp (continuous_id.prodMk continuous_const)
    have hz' : Continuous (fun l : ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) =>
        (⟨(e.symm (l, δ')).1, (hzB l).1⟩ : ↥(U ∩ N'))) :=
      (continuous_subtype_val.comp hz).subtype_mk _
    refine Continuous.prodMk (continuous_fst.comp (e'.continuous.comp hz')) ?_
    refine Continuous.subtype_mk ?_ _
    exact (hσs.continuousOn.restrict).comp hz'
  let ι : ↥(Set.Ioo (0 : ℝ) c₂) → ↥(Set.Ioo (0 : ℝ) ε') := fun s =>
    ⟨s.1, s.2.1, s.2.2.trans hc₂ε'⟩
  have hι : Continuous ι := continuous_subtype_val.subtype_mk _
  have hyA : ∀ p : ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂),
      (e'.symm (p.1, ι p.2)).1 ∈ U ∩ N := by
    intro p
    refine hA _ (e'.symm (p.1, ι p.2)).2 ?_
    rw [hT2]
    exact p.2.2.2.le
  let j : ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂) → ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) :=
    fun p => (e ⟨(e'.symm (p.1, ι p.2)).1, hyA p⟩).1
  have hj : Continuous j := by
    have hy : Continuous (fun p : ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂) =>
        e'.symm (p.1, ι p.2)) :=
      e'.symm.continuous.comp (continuous_fst.prodMk (hι.comp continuous_snd))
    have hy' : Continuous (fun p : ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂) =>
        (⟨(e'.symm (p.1, ι p.2)).1, hyA p⟩ : ↥(U ∩ N))) :=
      (continuous_subtype_val.comp hy).subtype_mk _
    exact continuous_fst.comp (e.continuous.comp hy')
  have hjk : ∀ l, j (k l) = l := by
    intro l
    have h1 : ((k l).1, ι (k l).2) = e' ⟨(e.symm (l, δ')).1, (hzB l).1⟩ := by
      apply Prod.ext
      · rfl
      · apply Subtype.ext
        show σ (e.symm (l, δ')).1 = ((e' ⟨(e.symm (l, δ')).1, (hzB l).1⟩).2 : ℝ)
        exact (he' ⟨(e.symm (l, δ')).1, (hzB l).1⟩).symm
    have h2 : e'.symm ((k l).1, ι (k l).2) = ⟨(e.symm (l, δ')).1, (hzB l).1⟩ := by
      rw [h1, e'.symm_apply_apply]
    have h3 : (⟨(e'.symm ((k l).1, ι (k l).2)).1, hyA (k l)⟩ : ↥(U ∩ N)) = e.symm (l, δ') := by
      apply Subtype.ext
      show (e'.symm ((k l).1, ι (k l).2)).1 = (e.symm (l, δ')).1
      rw [h2]
    show (e ⟨(e'.symm ((k l).1, ι (k l).2)).1, hyA (k l)⟩).1 = l
    rw [h3, e.apply_symm_apply]
  
  have hP : ∀ θ : C(↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂), Circle),
      ∃ φ : C(↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂), ℝ),
        ∀ x, θ x = Circle.exp (φ x) := by
    intro θ
    let m : ↥(Set.Ioo (0 : ℝ) c₂) := ⟨c₂ / 2, by linarith, by linarith⟩
    let sl : C(↥(U ∩ N' ∩ σ ⁻¹' {c}), ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂)) :=
      ⟨fun l => (l, m), by fun_prop⟩
    obtain ⟨φ₀, hφ₀⟩ := hL' (θ.comp sl)
    have hmem : ∀ (s : unitInterval) (t : ↥(Set.Ioo (0 : ℝ) c₂)),
        (m : ℝ) + (s : ℝ) * ((t : ℝ) - m) ∈ Set.Ioo (0 : ℝ) c₂ := by
      intro s t
      have h := (convex_Ioo (0 : ℝ) c₂).add_smul_sub_mem m.2 t.2 ⟨s.2.1, s.2.2⟩
      simpa [smul_eq_mul] using h
    let gmap : C(unitInterval × (↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂)),
        ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂)) :=
      ⟨fun p => (p.2.1, ⟨(m : ℝ) + (p.1 : ℝ) * ((p.2.2 : ℝ) - m), hmem p.1 p.2.2⟩), by
        refine continuous_snd.fst.prodMk (Continuous.subtype_mk ?_ _)
        fun_prop⟩
    let ψ : C(↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂), Circle) :=
      ⟨fun x => θ x * (θ (x.1, m))⁻¹, by fun_prop⟩
    let H : C(unitInterval × (↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂)), Circle) :=
      ψ.comp gmap
    have H0 : ∀ x : ↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂),
        H (0, x) = Circle.exp
          ((0 : C(↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂), ℝ)) x) := by
      intro x
      have : (⟨(m : ℝ) + ((0 : unitInterval) : ℝ) * ((x.2 : ℝ) - m), hmem 0 x.2⟩ :
          ↥(Set.Ioo (0 : ℝ) c₂)) = m := by
        apply Subtype.ext
        simp
      simp only [H, ψ, gmap, ContinuousMap.comp_apply, ContinuousMap.coe_mk, this]
      simp
    let Ht := Circle.isCoveringMap_exp.liftHomotopy H 0 H0
    have hlift := Circle.isCoveringMap_exp.liftHomotopy_lifts H 0 H0
    let φ' : C(↥(U ∩ N' ∩ σ ⁻¹' {c}) × ↥(Set.Ioo (0 : ℝ) c₂), ℝ) :=
      ⟨fun x => φ₀ x.1 + Ht (1, x), by fun_prop⟩
    refine ⟨φ', fun x => ?_⟩
    have h1 : Circle.exp (Ht (1, x)) = H (1, x) := congrFun hlift (1, x)
    have h2 : (⟨(m : ℝ) + ((1 : unitInterval) : ℝ) * ((x.2 : ℝ) - m), hmem 1 x.2⟩ :
        ↥(Set.Ioo (0 : ℝ) c₂)) = x.2 := by
      apply Subtype.ext
      simp
    have h3 : H (1, x) = θ x * (θ (x.1, m))⁻¹ := by
      simp only [H, ψ, gmap, ContinuousMap.comp_apply, ContinuousMap.coe_mk, h2]
    have h4 : θ (x.1, m) = Circle.exp (φ₀ x.1) := hφ₀ x.1
    have hcomm : ∀ A B : Circle, B = A * (B * A⁻¹) := fun A B => by
      rw [mul_comm B, mul_inv_cancel_left]
    simp only [φ', ContinuousMap.coe_mk, Circle.exp_add, h1, h3, ← h4]
    exact hcomm _ _
  
  intro θ
  obtain ⟨φ, hφ⟩ := hP (θ.comp ⟨j, hj⟩)
  refine ⟨φ.comp ⟨k, hk⟩, fun l => ?_⟩
  have h := hφ (k l)
  calc θ l = θ (j (k l)) := by rw [hjk l]
    _ = Circle.exp (φ (k l)) := h

theorem collar_leaf_circleLiftable [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (k : Fin hAF.numEnds) (U : Set M) (ρ : ℝ)
    (hUo : IsOpen U) (hUc : IsConnected U) (hρ : 2 ≤ ρ)
    (hfar : ∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U)
    (hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}))
    (hfront : IsMinimalSurfaceSet g (frontier U))
    (hnone : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ U → S = ∅)
    (N : Set M) (ε : ℝ) (τ : M → ℝ) (hNo : IsOpen N) (hFN : frontier U ⊆ N)
    (hNc : IsCompact (closure N)) (hε : 0 < ε)
    (hτs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ τ (U ∩ N))
    (hτr : ∀ x ∈ U ∩ N, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) τ x ≠ 0)
    (hτb : ∀ x ∈ U ∩ N, 0 < τ x ∧ τ x < ε)
    (hτp : ∀ c d : ℝ, 0 < c → d < ε → IsCompact (U ∩ N ∩ τ ⁻¹' Set.Icc c d))
    (hτi : ∀ δ : ℝ, 0 < δ → δ < ε → IsClosed (frontier U ∪ (U ∩ N ∩ τ ⁻¹' Set.Iic δ)))
    (hτ0 : ∀ δ : ℝ, 0 < δ → ∃ O : Set M, IsOpen O ∧ frontier U ⊆ O ∧
      U ∩ O ⊆ N ∩ τ ⁻¹' Set.Iio δ)
    (hWO : ∀ (x₀ : M) (a b : ℝ) (w : M → ℝ), x₀ ∈ U ∩ N → 0 < a → a < b → b < ε →
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (connectedComponentIn (U ∩ N) x₀) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, τ x ≤ a → w x < 0) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, b ≤ τ x → 0 < w x) →
      (∀ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 →
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w x ≠ 0) →
      ∃ x ∈ connectedComponentIn (U ∩ N) x₀, w x = 0 ∧ 0 ≤ g.levelMeanCurv w x) :
    CircleLiftable (U ∩ N ∩ τ ⁻¹' {ε / 2}) :=
by
  
  have hFc : IsCompact (frontier U) := by
    refine hcpt.of_isClosed_subset isClosed_frontier ?_
    intro x hx
    refine ⟨frontier_subset_closure hx, ?_⟩
    rintro ⟨y, hy, rfl⟩
    rw [hUo.frontier_eq] at hx
    exact hx.2 (hfar y hy)
  
  obtain ⟨N', ε', σ, hNo', hFN', hNc', hε', hσs, hσr, hσb, hσp, hσi, hσ0, hgood⟩ :=
    good_collar_exists g U hUo hFc hfront
  
  have hWO' := collar_no_outer_trapped g hComplete hAF k U ρ hUo hUc hρ hfar hcpt hfront hnone
    N' ε' σ hNo' hFN' hNc' hε' hσs hσr hσb hσp hσi hσ0
  
  have hL' := good_collar_leaf_circleLiftable g hR U hUo hFc hfront hnone N' ε' σ hNo' hFN' hNc'
    hε' hσs hσr hσb hσp hσi hσ0 hgood hWO'
  
  exact collar_leaf_transfer g U hUo N ε τ hNo hFN hNc hε hτs hτr hτb hτp hτi hτ0
    N' ε' σ hNo' hFN' hNc' hε' hσs hσr hσb hσp hσi hσ0 (ε' / 2) (by linarith) (by linarith) hL'

theorem frontier_collar_liftable [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (k : Fin hAF.numEnds) (U : Set M) (ρ : ℝ)
    (hUo : IsOpen U) (hUc : IsConnected U) (hρ : 2 ≤ ρ)
    (hfar : ∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U)
    (hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}))
    (hfront : IsMinimalSurfaceSet g (frontier U))
    (hnone : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ U → S = ∅) :
    ∃ N : Set M, IsOpen N ∧ frontier U ⊆ N ∧ CircleLiftable (U ∩ N) :=
by
  
  have hFc : IsCompact (frontier U) := by
    refine hcpt.of_isClosed_subset isClosed_frontier ?_
    intro x hx
    refine ⟨frontier_subset_closure hx, ?_⟩
    rintro ⟨y, hy, rfl⟩
    rw [hUo.frontier_eq] at hx
    exact hx.2 (hfar y hy)
  
  obtain ⟨N, ε, τ, hNo, hFN, hNc, hε, hτs, hτr, hτb, hτp, hτi, hτ0⟩ :=
    frontier_collar_function g U hUo hFc hfront
  
  have hWO := collar_no_outer_trapped g hComplete hAF k U ρ hUo hUc hρ hfar hcpt hfront hnone
    N ε τ hNo hFN hNc hε hτs hτr hτb hτp hτi hτ0
  
  have hL : CircleLiftable (U ∩ N ∩ τ ⁻¹' {ε / 2}) :=
    collar_leaf_circleLiftable g hComplete hAF hR k U ρ hUo hUc hρ hfar hcpt hfront hnone
      N ε τ hNo hFN hNc hε hτs hτr hτb hτp hτi hτ0 hWO
  
  obtain ⟨e⟩ := proper_submersion_interval_trivial g (U ∩ N) (hUo.inter hNo) τ 0 ε (ε / 2)
    (by linarith) (by linarith) hτs hτr hτb (fun c d hc hd => hτp c d hc hd)
  refine ⟨N, hNo, hFN, ?_⟩
  
  intro θ
  rcases isEmpty_or_nonempty ↥(U ∩ N) with hX | ⟨⟨x₀⟩⟩
  · exact ⟨⟨fun x => (hX.false x).elim, continuous_of_discreteTopology⟩,
      fun x => (hX.false x).elim⟩
  set m : ↥(Set.Ioo (0 : ℝ) ε) := (e x₀).2 with hm
  let θ' : C(↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε), Circle) :=
    θ.comp ⟨e.symm, e.symm.continuous⟩
  let sl : C(↥(U ∩ N ∩ τ ⁻¹' {ε / 2}), ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε)) :=
    ⟨fun l => (l, m), by fun_prop⟩
  obtain ⟨φ₀, hφ₀⟩ := hL (θ'.comp sl)
  have hmem : ∀ (s : unitInterval) (t : ↥(Set.Ioo (0 : ℝ) ε)),
      (m : ℝ) + (s : ℝ) * ((t : ℝ) - m) ∈ Set.Ioo (0 : ℝ) ε := by
    intro s t
    have h := (convex_Ioo (0 : ℝ) ε).add_smul_sub_mem m.2 t.2 ⟨s.2.1, s.2.2⟩
    simpa [smul_eq_mul] using h
  let gmap : C(unitInterval × (↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε)),
      ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε)) :=
    ⟨fun p => (p.2.1, ⟨(m : ℝ) + (p.1 : ℝ) * ((p.2.2 : ℝ) - m), hmem p.1 p.2.2⟩), by
      refine continuous_snd.fst.prodMk (Continuous.subtype_mk ?_ _)
      fun_prop⟩
  let ψ : C(↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε), Circle) :=
    ⟨fun x => θ' x * (θ' (x.1, m))⁻¹, by fun_prop⟩
  let H : C(unitInterval × (↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε)), Circle) :=
    ψ.comp gmap
  have H0 : ∀ x : ↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε),
      H (0, x) = Circle.exp
        ((0 : C(↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε), ℝ)) x) := by
    intro x
    have : (⟨(m : ℝ) + ((0 : unitInterval) : ℝ) * ((x.2 : ℝ) - m), hmem 0 x.2⟩ :
        ↥(Set.Ioo (0 : ℝ) ε)) = m := by
      apply Subtype.ext
      simp
    simp only [H, ψ, gmap, ContinuousMap.comp_apply, ContinuousMap.coe_mk, this]
    simp
  let Ht := Circle.isCoveringMap_exp.liftHomotopy H 0 H0
  have hlift := Circle.isCoveringMap_exp.liftHomotopy_lifts H 0 H0
  let φ' : C(↥(U ∩ N ∩ τ ⁻¹' {ε / 2}) × ↥(Set.Ioo (0 : ℝ) ε), ℝ) :=
    ⟨fun x => φ₀ x.1 + Ht (1, x), by fun_prop⟩
  refine ⟨φ'.comp ⟨e, e.continuous⟩, fun x => ?_⟩
  have h1 : Circle.exp (Ht (1, e x)) = H (1, e x) := congrFun hlift (1, e x)
  have h2 : (⟨(m : ℝ) + ((1 : unitInterval) : ℝ) * (((e x).2 : ℝ) - m), hmem 1 (e x).2⟩ :
      ↥(Set.Ioo (0 : ℝ) ε)) = (e x).2 := by
    apply Subtype.ext
    simp
  have h3 : H (1, e x) = θ x * (θ' ((e x).1, m))⁻¹ := by
    simp only [H, ψ, gmap, ContinuousMap.comp_apply, ContinuousMap.coe_mk, h2, θ']
    simp
  have h4 : θ' ((e x).1, m) = Circle.exp (φ₀ (e x).1) := hφ₀ (e x).1
  have hcomm : ∀ A B : Circle, B = A * (B * A⁻¹) := fun A B => by
    rw [mul_comm B, mul_inv_cancel_left]
  simp only [φ', ContinuousMap.comp_apply, ContinuousMap.coe_mk, Circle.exp_add, h1, h3, ← h4]
  exact hcomm _ _

theorem circleLiftable_end_far [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (Φ : EndChart M) (r : ℝ)
    (hr : 1 ≤ r) : CircleLiftable (Φ.Φ '' {y : E3 | r < ‖y‖}) :=
by
  classical
  
  have hcontr : ∀ (S : Set E3) (x₀ : S) (K : C(unitInterval × S, S)),
      (∀ x : S, K (0, x) = x₀) → (∀ x : S, K (1, x) = x) →
      ∀ θ : C(S, Circle), ∃ φ : C(S, ℝ), ∀ x : S, θ x = Circle.exp (φ x) := by
    intro S x₀ K h0 h1 θ
    have H_0 : ∀ x : S, (θ.comp K) (0, x) =
        Circle.exp ((ContinuousMap.const S (Complex.arg (θ x₀ : ℂ))) x) := by
      intro x
      rw [ContinuousMap.comp_apply, h0, ContinuousMap.const_apply, Circle.exp_arg]
    have hF := Circle.isCoveringMap_exp.liftHomotopy_lifts (θ.comp K)
      (ContinuousMap.const S (Complex.arg (θ x₀ : ℂ))) H_0
    refine ⟨(Circle.isCoveringMap_exp.liftHomotopy (θ.comp K)
      (ContinuousMap.const S (Complex.arg (θ x₀ : ℂ))) H_0).comp
        ⟨fun x => ((1 : unitInterval), x), by fun_prop⟩, fun x => ?_⟩
    have h := congrFun hF ((1 : unitInterval), x)
    rw [Function.comp_apply] at h
    exact (h.trans (congrArg θ (h1 x))).symm
  
  have hglue : ∀ (A B : Set E3), IsOpen A → IsOpen B → IsPreconnected (A ∩ B) →
      (∀ θ : C(A, Circle), ∃ φ : C(A, ℝ), ∀ x : A, θ x = Circle.exp (φ x)) →
      (∀ θ : C(B, Circle), ∃ φ : C(B, ℝ), ∀ x : B, θ x = Circle.exp (φ x)) →
      ∀ θ : C((A ∪ B : Set E3), Circle), ∃ φ : C((A ∪ B : Set E3), ℝ),
        ∀ x : (A ∪ B : Set E3), θ x = Circle.exp (φ x) := by
    intro A B hA hB hAB hlA hlB θ
    have sA : A ⊆ A ∪ B := Set.subset_union_left
    have sB : B ⊆ A ∪ B := Set.subset_union_right
    obtain ⟨φA, hφA⟩ := hlA (θ.comp ⟨Set.inclusion sA, continuous_inclusion sA⟩)
    obtain ⟨φB, hφB⟩ := hlB (θ.comp ⟨Set.inclusion sB, continuous_inclusion sB⟩)
    obtain ⟨c, hc1, hcAB⟩ : ∃ c : ℝ, Circle.exp c = 1 ∧
        ∀ (x : E3) (hxA : x ∈ A) (hxB : x ∈ B), φA ⟨x, hxA⟩ = φB ⟨x, hxB⟩ + c := by
      by_cases hne : (A ∩ B).Nonempty
      · obtain ⟨x₀, hx₀A, hx₀B⟩ := hne
        have e0 : Circle.exp (φA ⟨x₀, hx₀A⟩) = Circle.exp (φB ⟨x₀, hx₀B⟩) := by
          rw [← hφA, ← hφB]; rfl
        obtain ⟨m, hm⟩ := Circle.exp_eq_exp.mp e0
        refine ⟨m * (2 * Real.pi), Circle.exp_int_mul_two_pi m, ?_⟩
        haveI : PreconnectedSpace (A ∩ B : Set E3) := Subtype.preconnectedSpace hAB
        have heq := Circle.isCoveringMap_exp.eq_of_comp_eq
          (g₁ := fun x : (A ∩ B : Set E3) => φA ⟨x.1, x.2.1⟩)
          (g₂ := fun x : (A ∩ B : Set E3) => φB ⟨x.1, x.2.2⟩ + m * (2 * Real.pi))
          (φA.continuous.comp (continuous_inclusion Set.inter_subset_left))
          ((φB.continuous.comp (continuous_inclusion Set.inter_subset_right)).add
            continuous_const)
          (by
            funext x
            show Circle.exp (φA ⟨x.1, x.2.1⟩) =
              Circle.exp (φB ⟨x.1, x.2.2⟩ + m * (2 * Real.pi))
            rw [Circle.exp_add, Circle.exp_int_mul_two_pi, mul_one, ← hφA ⟨x.1, x.2.1⟩,
              ← hφB ⟨x.1, x.2.2⟩]
            rfl)
          ⟨x₀, hx₀A, hx₀B⟩ hm
        intro x hxA hxB
        exact congrFun heq ⟨x, hxA, hxB⟩
      · refine ⟨0, Circle.exp_zero, fun x hxA hxB => ?_⟩
        exact absurd ⟨x, hxA, hxB⟩ hne
    obtain ⟨ψ, hψdef⟩ : ∃ ψ : E3 → ℝ, ψ = fun x =>
        if hx : x ∈ A then φA ⟨x, hx⟩ else if hx' : x ∈ B then φB ⟨x, hx'⟩ + c else 0 :=
      ⟨_, rfl⟩
    have hψA : ContinuousOn ψ A := by
      rw [continuousOn_iff_continuous_restrict]
      have : A.restrict ψ = φA := by
        funext x
        rw [Set.restrict_apply, hψdef]
        simp only
        rw [dif_pos x.2]
      rw [this]
      exact φA.continuous
    have hψB : ContinuousOn ψ B := by
      rw [continuousOn_iff_continuous_restrict]
      have : B.restrict ψ = fun x => φB x + c := by
        funext x
        rw [Set.restrict_apply, hψdef]
        simp only
        by_cases hxA : (x : E3) ∈ A
        · rw [dif_pos hxA]
          exact hcAB x.1 hxA x.2
        · rw [dif_neg hxA, dif_pos x.2]
      rw [this]
      exact φB.continuous.add continuous_const
    have hψ : ContinuousOn ψ (A ∪ B) := hψA.union_of_isOpen hψB hA hB
    refine ⟨⟨(A ∪ B).restrict ψ, continuousOn_iff_continuous_restrict.mp hψ⟩, fun x => ?_⟩
    show θ x = Circle.exp (ψ x.1)
    by_cases hxA : (x : E3) ∈ A
    · rw [hψdef]
      simp only
      rw [dif_pos hxA, ← hφA ⟨x.1, hxA⟩]
      rfl
    · have hxB : (x : E3) ∈ B := x.2.resolve_left hxA
      rw [hψdef]
      simp only
      rw [dif_neg hxA, dif_pos hxB, Circle.exp_add, hc1, mul_one, ← hφB ⟨x.1, hxB⟩]
      rfl
  
  have hcoord : ∀ (σ t : ℝ) (z : E3) (i : Fin 3),
      ((1 - t) • (σ • e 0) + t • z) i = (1 - t) * (σ * (if i = 0 then 1 else 0)) + t * z i := by
    intro σ t z i
    simp [e, EuclideanSpace.single_apply]
  
  have hpiece : ∀ σ : ℝ, σ ≠ 0 →
      ∀ θ : C({z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)}, Circle),
        ∃ φ : C({z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)}, ℝ),
          ∀ x, θ x = Circle.exp (φ x) := by
    intro σ hσ
    have hσσ : 0 < σ * σ := mul_self_pos.mpr hσ
    have hmem : ∀ (t : unitInterval) (z : {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)}),
        (1 - (t : ℝ)) • (σ • e 0) + (t : ℝ) • (z : E3) ∈
          {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} := by
      rintro ⟨t, ht0, ht1⟩ ⟨z, hz⟩
      simp only [Set.mem_setOf_eq] at hz ⊢
      rintro ⟨h1, h2, h0⟩
      have e1 : (if (1 : Fin 3) = 0 then (1 : ℝ) else 0) = 0 := if_neg (by decide)
      have e2 : (if (2 : Fin 3) = 0 then (1 : ℝ) else 0) = 0 := if_neg (by decide)
      rw [hcoord, e1, mul_zero, mul_zero, zero_add] at h1
      rw [hcoord, e2, mul_zero, mul_zero, zero_add] at h2
      rw [hcoord, if_pos rfl, mul_one] at h0
      rcases eq_or_lt_of_le ht0 with ht | ht
      · subst ht
        nlinarith
      · apply hz
        refine ⟨?_, ?_, ?_⟩
        · rcases mul_eq_zero.mp h1 with h | h
          · exact absurd h ht.ne'
          · exact h
        · rcases mul_eq_zero.mp h2 with h | h
          · exact absurd h ht.ne'
          · exact h
        · by_contra hpos
          push_neg at hpos
          nlinarith [mul_pos ht hpos, mul_nonneg (sub_nonneg.mpr ht1) hσσ.le]
    have hc : σ • e 0 ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} := by
      have := hcoord σ 0 0
      simp only [sub_zero, one_smul, zero_smul, add_zero, one_mul, zero_mul] at this
      simp only [Set.mem_setOf_eq]
      rintro ⟨-, -, h0⟩
      rw [this] at h0
      simp only [if_true, mul_one] at h0
      linarith
    refine hcontr _ ⟨σ • e 0, hc⟩
      ⟨fun p => ⟨(1 - (p.1 : ℝ)) • (σ • e 0) + (p.1 : ℝ) • (p.2 : E3), hmem p.1 p.2⟩,
        Continuous.subtype_mk (by fun_prop) _⟩ ?_ ?_
    · intro x
      apply Subtype.ext
      simp
    · intro x
      apply Subtype.ext
      simp
  
  have hD : IsPreconnected {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0)} := by
    have hC : IsConnected ({0}ᶜ : Set ℂ) :=
      isConnected_compl_singleton_of_one_lt_rank (by rw [Complex.rank_real_complex]; norm_num) 0
    have hT : IsPreconnected ((Set.univ : Set ℝ) ×ˢ ({0}ᶜ : Set ℂ)) :=
      isPreconnected_univ.prod hC.isPreconnected
    have himg : (fun p : ℝ × ℂ => p.1 • e 0 + p.2.re • e 1 + p.2.im • e 2) ''
        ((Set.univ : Set ℝ) ×ˢ ({0}ᶜ : Set ℂ)) = {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0)} := by
      ext z
      simp only [Set.mem_image, Set.mem_prod, Set.mem_univ, true_and,
        Set.mem_compl_singleton_iff, Set.mem_setOf_eq, Prod.exists]
      constructor
      · rintro ⟨a, ζ, hζ, rfl⟩ ⟨h1, h2⟩
        apply hζ
        simp [e, EuclideanSpace.single_apply] at h1 h2
        exact Complex.ext h1 h2
      · intro hz
        refine ⟨z 0, ⟨z 1, z 2⟩, ?_, ?_⟩
        · intro h
          apply hz
          exact ⟨congrArg Complex.re h, congrArg Complex.im h⟩
        · ext i
          fin_cases i <;> simp [e, EuclideanSpace.single_apply]
    rw [← himg]
    exact hT.image _ (Continuous.continuousOn (by fun_prop))
  
  have hopen : ∀ σ : ℝ, IsOpen {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} := by
    intro σ
    have hcl : IsClosed {z : E3 | z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0} := by
      refine (isClosed_eq (f := fun z : E3 => z 1) (by fun_prop) continuous_const).inter
        ((isClosed_eq (f := fun z : E3 => z 2) (by fun_prop) continuous_const).inter
          (isClosed_le (f := fun z : E3 => σ * z 0) (by fun_prop) continuous_const))
    exact hcl.isOpen_compl
  have hinter : {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∩
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)} = {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0)} := by
    ext z
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
    constructor
    · rintro ⟨h1, h2⟩ ⟨a, b⟩
      rcases le_total (z 0) 0 with h | h
      · exact h1 ⟨a, b, by linarith⟩
      · exact h2 ⟨a, b, by linarith⟩
    · intro h
      exact ⟨fun ⟨a, b, _⟩ => h ⟨a, b⟩, fun ⟨a, b, _⟩ => h ⟨a, b⟩⟩
  have hliftX := hglue _ _ (hopen 1) (hopen (-1)) (by rw [hinter]; exact hD)
    (hpiece 1 one_ne_zero) (hpiece (-1) (by norm_num))
  
  have hXne : ∀ z : E3, z ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∪
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)} → z ≠ 0 := by
    rintro z hz rfl
    rcases hz with h | h <;> exact h ⟨by simp, by simp, by simp⟩
  have hneX : ∀ z : E3, z ≠ 0 → z ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∪
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)} := by
    intro z hz
    by_contra hc
    simp only [Set.mem_union, Set.mem_setOf_eq, not_or, not_not] at hc
    obtain ⟨⟨h1, h2, h3⟩, ⟨-, -, h4⟩⟩ := hc
    apply hz
    ext i
    fin_cases i
    · simp only [Fin.zero_eta, Fin.isValue, PiLp.zero_apply]
      linarith
    · simpa using h1
    · simpa using h2
  
  have hr0 : 0 < r := by linarith
  have hnh : ∀ y : E3, r < ‖y‖ → ‖(1 - r / ‖y‖) • y‖ = ‖y‖ - r := by
    intro y hy
    have hy0 : 0 < ‖y‖ := by linarith
    have hpos : 0 < 1 - r / ‖y‖ := by rw [sub_pos, div_lt_one hy0]; exact hy
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos hpos, sub_mul, div_mul_cancel₀ _ hy0.ne', one_mul]
  have hng : ∀ z : E3, z ≠ 0 → ‖(1 + r / ‖z‖) • z‖ = ‖z‖ + r := by
    intro z hz
    have hz0 : 0 < ‖z‖ := norm_pos_iff.mpr hz
    have hpos : 0 < 1 + r / ‖z‖ := by positivity
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos hpos, add_mul, div_mul_cancel₀ _ hz0.ne', one_mul]
  have hgh : ∀ y : E3, r < ‖y‖ →
      (1 + r / ‖(1 - r / ‖y‖) • y‖) • ((1 - r / ‖y‖) • y) = y := by
    intro y hy
    rw [hnh y hy, smul_smul]
    have hy0 : ‖y‖ ≠ 0 := by linarith
    have h1 : ‖y‖ - r ≠ 0 := by linarith
    have : (1 + r / (‖y‖ - r)) * (1 - r / ‖y‖) = 1 := by
      field_simp
      ring
    rw [this, one_smul]
  
  have hsrc : ∀ y : E3, r < ‖y‖ → y ∈ Φ.Φ.toOpenPartialHomeomorph.source := by
    intro y hy
    show y ∈ Φ.Φ.source
    rw [Φ.source_eq]
    show (1 : ℝ) < ‖y‖
    linarith
  set X : Set E3 := {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∪
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)} with hXdef
  set Y : Set M := Φ.Φ '' {y : E3 | r < ‖y‖} with hYdef
  set Ψ := Φ.Φ.toOpenPartialHomeomorph with hΨ
  have hgsrc : ∀ z : X, r < ‖(1 + r / ‖(z : E3)‖) • (z : E3)‖ := by
    intro z
    rw [hng _ (hXne _ z.2)]
    have := norm_nonneg (z : E3)
    have := norm_pos_iff.mpr (hXne _ z.2)
    linarith
  have hgcont : Continuous fun z : X => (1 + r / ‖(z : E3)‖) • (z : E3) := by
    refine Continuous.smul (continuous_const.add (continuous_const.div
      (continuous_norm.comp continuous_subtype_val) ?_)) continuous_subtype_val
    intro z
    exact norm_ne_zero_iff.mpr (hXne _ z.2)
  have hΦcont : ContinuousOn (Ψ : E3 → M) Ψ.source := Ψ.continuousOn
  let a : C(X, Y) := ⟨fun z => ⟨Ψ ((1 + r / ‖(z : E3)‖) • (z : E3)),
      ⟨_, hgsrc z, rfl⟩⟩,
    Continuous.subtype_mk (hΦcont.comp_continuous hgcont (fun z => hsrc _ (hgsrc z))) _⟩
  have hYt : ∀ x : Y, (x : M) ∈ Ψ.target := by
    rintro ⟨_, y, hy, rfl⟩
    exact Ψ.map_source (hsrc y hy)
  have hYs : ∀ x : Y, r < ‖Ψ.symm (x : M)‖ := by
    rintro ⟨_, y, hy, rfl⟩
    show r < ‖Ψ.symm (Ψ y)‖
    rw [Ψ.left_inv (hsrc y hy)]
    exact hy
  have hscont : Continuous fun x : Y => Ψ.symm (x : M) :=
    Ψ.continuousOn_symm.comp_continuous continuous_subtype_val hYt
  have hbmem : ∀ x : Y, (1 - r / ‖Ψ.symm (x : M)‖) • Ψ.symm (x : M) ∈ X := by
    intro x
    apply hneX
    intro h0
    have := hnh _ (hYs x)
    rw [h0, norm_zero] at this
    linarith [hYs x]
  let b : C(Y, X) := ⟨fun x => ⟨(1 - r / ‖Ψ.symm (x : M)‖) • Ψ.symm (x : M), hbmem x⟩,
    Continuous.subtype_mk (Continuous.smul (continuous_const.sub (continuous_const.div
      (continuous_norm.comp hscont) (fun x => ne_of_gt (hr0.trans (hYs x))))) hscont) _⟩
  have hab : ∀ x : Y, a (b x) = x := by
    intro x
    apply Subtype.ext
    show Ψ ((1 + r / ‖(1 - r / ‖Ψ.symm (x : M)‖) • Ψ.symm (x : M)‖) •
      ((1 - r / ‖Ψ.symm (x : M)‖) • Ψ.symm (x : M))) = x
    rw [hgh _ (hYs x), Ψ.right_inv (hYt x)]
  intro θ
  obtain ⟨φX, hφX⟩ := hliftX (θ.comp a)
  refine ⟨φX.comp b, fun x => ?_⟩
  have h := hφX (b x)
  rw [ContinuousMap.comp_apply, hab x] at h
  exact h

theorem circle_normalize_off_compact {X : Type*} [TopologicalSpace X] [T2Space X]
    [LocallyCompactSpace X] (U O : Set X) (hU : IsOpen U) (hO : IsOpen O)
    (hfr : frontier U ⊆ O) (hC : IsCompact (closure U \ O)) (θ : C(U, Circle)) (φO : X → ℝ)
    (hφc : ContinuousOn φO (U ∩ O))
    (hφe : ∀ x : U, (x : X) ∈ O → θ x = Circle.exp (φO x)) :
    ∃ (K : Set X) (Θ : C(X, Circle)) (ψ : C(U, ℝ)), IsCompact K ∧ K ⊆ U ∧
      (∀ x : X, x ∉ K → Θ x = 1) ∧ ∀ x : U, θ x = Θ (x : X) * Circle.exp (ψ x) :=
by
  classical
  haveI : RegularSpace X := inferInstance
  
  have hCU : closure U \ O ⊆ U := by
    rintro x ⟨hxc, hxO⟩
    rw [closure_eq_self_union_frontier] at hxc
    rcases hxc with h | h
    · exact h
    · exact absurd (hfr h) hxO
  
  obtain ⟨W₀, hW₀o, hCW₀, hW₀U, hW₀c⟩ := exists_open_between_and_isCompact_closure hC hU hCU
  obtain ⟨W₁, hW₁o, hW₀W₁, hW₁U, hW₁c⟩ :=
    exists_open_between_and_isCompact_closure hW₀c hU hW₀U
  obtain ⟨χ, hχ0, hχ1, -⟩ := exists_continuous_zero_one_of_isCompact hW₀c hW₁o.isClosed_compl
    (Set.disjoint_compl_right_iff_subset.mpr hW₀W₁)
  have hχ0' : ∀ x ∈ W₀, χ x = 0 := by
    intro x hx
    have := hχ0 (subset_closure hx)
    simpa using this
  have hχ1' : ∀ x, x ∉ closure W₁ → χ x = 1 := by
    intro x hx
    have := hχ1 (show x ∈ W₁ᶜ from fun h => hx (subset_closure h))
    simpa using this
  
  obtain ⟨g, hg⟩ : ∃ g : X → ℝ, g = fun x => if x ∈ O then χ x * φO x else 0 := ⟨_, rfl⟩
  have hgU : ContinuousOn g U := by
    have h1 : ContinuousOn g (U ∩ O) :=
      (χ.continuous.continuousOn.mul hφc).congr (fun x hx => by simp [hg, hx.2])
    have h2 : ContinuousOn g (U ∩ W₀) :=
      (continuousOn_const (c := (0 : ℝ))).congr (fun x hx => by
        by_cases hxO : x ∈ O
        · simp [hg, hxO, hχ0' x hx.2]
        · simp [hg, hxO])
    refine (h1.union_of_isOpen h2 (hU.inter hO) (hU.inter hW₀o)).mono ?_
    intro x hxU
    by_cases hxO : x ∈ O
    · exact Or.inl ⟨hxU, hxO⟩
    · exact Or.inr ⟨hxU, hCW₀ ⟨subset_closure hxU, hxO⟩⟩
  let ψ : C(U, ℝ) := ⟨U.restrict g, continuousOn_iff_continuous_restrict.mp hgU⟩
  have hψ : ∀ x : U, ψ x = g x := fun x => rfl
  
  let F : C(U, Circle) := ⟨fun x => θ x * Circle.exp (-ψ x),
    (map_continuous θ).mul ((map_continuous Circle.exp).comp (map_continuous ψ).neg)⟩
  have hFx : ∀ x : U, F x = θ x * Circle.exp (-ψ x) := fun x => rfl
  have hF : ∀ x : U, (x : X) ∉ closure W₁ → F x = 1 := by
    intro x hx
    have h1 := hχ1' (x : X) hx
    have hxO : (x : X) ∈ O := by
      by_contra hxO
      have h0 := hχ0' x (hCW₀ ⟨subset_closure x.2, hxO⟩)
      rw [h1] at h0
      norm_num at h0
    have hψx : ψ x = φO x := by
      rw [hψ, hg]
      simp [hxO, h1]
    rw [hFx, hψx, hφe x hxO, ← Circle.exp_add, add_neg_cancel, Circle.exp_zero]
  
  obtain ⟨G, hG⟩ : ∃ G : X → Circle, G = fun x => if h : x ∈ U then F ⟨x, h⟩ else 1 :=
    ⟨_, rfl⟩
  have hG1 : ∀ x, x ∉ closure W₁ → G x = 1 := by
    intro x hx
    rw [hG]
    simp only
    split_ifs with h
    · exact hF ⟨x, h⟩ hx
    · rfl
  have hGU : ∀ x : U, G x = F x := by
    intro x
    rw [hG]
    simp only
    rw [dif_pos x.2]
  have hGc : Continuous G := by
    rw [continuous_iff_continuousAt]
    intro x
    by_cases hxU : x ∈ U
    · have hcU : ContinuousOn G U := by
        rw [continuousOn_iff_continuous_restrict]
        have hres : U.restrict G = F := by
          funext y
          exact hGU y
        rw [hres]
        exact F.continuous
      exact hcU.continuousAt (hU.mem_nhds hxU)
    · have hxL : x ∉ closure W₁ := fun h => hxU (hW₁U h)
      have hopen : IsOpen (closure W₁)ᶜ := isClosed_closure.isOpen_compl
      have hev : G =ᶠ[nhds x] fun _ => 1 :=
        Filter.eventually_of_mem (hopen.mem_nhds hxL) (fun y hy => hG1 y hy)
      exact (continuousAt_const).congr hev.symm
  refine ⟨closure W₁, ⟨G, hGc⟩, ψ, hW₁c, hW₁U, fun x hx => hG1 x hx, fun x => ?_⟩
  show θ x = G x * Circle.exp (ψ x)
  rw [hGU x, hFx, mul_assoc, ← Circle.exp_add, neg_add_cancel, Circle.exp_zero, mul_one]

theorem circle_smooth_approx [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] [SigmaCompactSpace M]
    (U K : Set M) (hU : IsOpen U) (hK : IsCompact K) (hKU : K ⊆ U) (Θ : C(M, Circle))
    (hΘ : ∀ x : M, x ∉ K → Θ x = 1) :
    ∃ (K' : Set M) (Ψ : C(M, Circle)) (ψ : C(M, ℝ)), IsCompact K' ∧ K' ⊆ U ∧
      (∀ x : M, x ∉ K' → Ψ x = 1) ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)) ∧
      ∀ x : M, Θ x = Ψ x * Circle.exp (ψ x) :=
by
  classical
  set θ : M → ℂ := fun x => (Θ x : ℂ) with hθdef
  have hθc : Continuous θ := continuous_subtype_val.comp Θ.continuous
  have hθ1 : ∀ x, x ∉ K → θ x = 1 := by
    intro x hx
    simp [θ, hΘ x hx]
  
  obtain ⟨Fm, hFm⟩ := exists_contMDiffMap_forall_mem_convex_of_local (I := 𝓘(ℝ, E3)) (n := ⊤)
    (t := fun x => if x ∈ K then Metric.ball (θ x) (1 / 2) else ({1} : Set ℂ))
    (fun x => by
      by_cases hx : x ∈ K
      · simp only [hx, if_true]; exact convex_ball _ _
      · simp only [hx, if_false]; exact convex_singleton _)
    (fun x => by
      by_cases hx : ‖θ x - 1‖ < 1 / 2
      · have hx' : θ x ∈ Metric.ball (1 : ℂ) (1 / 2) := by
          rw [Metric.mem_ball, dist_eq_norm]; exact hx
        refine ⟨θ ⁻¹' Metric.ball 1 (1 / 2),
          hθc.continuousAt.preimage_mem_nhds (Metric.isOpen_ball.mem_nhds hx'), fun _ => (1 : ℂ),
          contMDiffOn_const, ?_⟩
        · intro y hy
          by_cases hyK : y ∈ K
          · simp only [hyK, if_true, Metric.mem_ball]
            rw [dist_comm]; exact hy
          · simp only [hyK, if_false, Set.mem_singleton_iff]
      · push_neg at hx
        refine ⟨θ ⁻¹' Metric.ball (θ x) (1 / 4),
          hθc.continuousAt.preimage_mem_nhds (Metric.ball_mem_nhds _ (by norm_num)),
          fun _ => θ x, contMDiffOn_const, ?_⟩
        intro y hy
        have hy' : dist (θ y) (θ x) < 1 / 4 := hy
        have hyK : y ∈ K := by
          by_contra hyK
          have h1 := hθ1 y hyK
          rw [h1, dist_comm, dist_eq_norm] at hy'
          linarith
        simp only [hyK, if_true, Metric.mem_ball]
        rw [dist_comm]; linarith)
  set F : M → ℂ := fun x => Fm x with hFdef
  have hFs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ F := Fm.contMDiff
  have hFclose : ∀ x, ‖F x - θ x‖ < 1 / 2 := by
    intro x
    have h := hFm x
    by_cases hx : x ∈ K
    · simp only [hx, if_true, Metric.mem_ball, dist_eq_norm] at h
      exact h
    · simp only [hx, if_false, Set.mem_singleton_iff] at h
      show ‖Fm x - θ x‖ < 1 / 2
      rw [h, hθ1 x hx, sub_self, norm_zero]; norm_num
  have hF1 : ∀ x, x ∉ K → F x = 1 := by
    intro x hx
    have h := hFm x
    simp only [hx, if_false, Set.mem_singleton_iff] at h
    exact h
  have hθn : ∀ x, ‖θ x‖ = 1 := fun x => Circle.norm_coe (Θ x)
  
  have ha : ∀ x, |‖F x‖ - 1| < 1 / 2 := by
    intro x
    have h := abs_norm_sub_norm_le (F x) (θ x)
    rw [hθn x] at h
    exact lt_of_le_of_lt h (hFclose x)
  have hapos : ∀ x, 0 < ‖F x‖ := by
    intro x
    have h := ha x
    rw [abs_lt] at h
    linarith [h.1]
  have hF0 : ∀ x, F x ≠ 0 := fun x => norm_pos_iff.mp (hapos x)
  set N : M → ℂ := fun x => ((‖F x‖⁻¹ : ℝ) : ℂ) * F x with hNdef
  have hNn : ∀ x, ‖N x‖ = 1 := by
    intro x
    simp only [N, norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos (inv_pos.mpr (hapos x))]
    exact inv_mul_cancel₀ (hapos x).ne'
  have hNs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ N := by
    intro x
    have h1 : ContDiffAt ℝ ∞ (fun z : ℂ => ‖z‖⁻¹) (F x) :=
      (contDiffAt_norm ℝ (hF0 x)).inv (norm_ne_zero_iff.mpr (hF0 x))
    have h2 : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun p => ‖F p‖⁻¹) x :=
      h1.comp_contMDiffAt (hFs x)
    have h3 := h2.smul (hFs x)
    have heq : (fun p => ‖F p‖⁻¹ • F p) = N := by
      funext p
      simp only [N, Complex.real_smul]
    rw [heq] at h3
    exact h3
  have hNclose : ∀ x, ‖θ x - N x‖ < 1 := by
    intro x
    have hpos := hapos x
    have e1 : F x - N x = ((1 - ‖F x‖⁻¹ : ℝ) : ℂ) * F x := by
      simp only [N]; push_cast; ring
    have e2 : ‖F x - N x‖ = |‖F x‖ - 1| := by
      rw [e1, norm_mul, Complex.norm_real, Real.norm_eq_abs, ← abs_of_pos hpos, ← abs_mul,
        abs_of_pos hpos]
      congr 1
      field_simp
    have e3 : |‖F x‖ - 1| ≤ ‖F x - θ x‖ := by
      have h := abs_norm_sub_norm_le (F x) (θ x)
      rwa [hθn x] at h
    calc ‖θ x - N x‖ = ‖(θ x - F x) + (F x - N x)‖ := by ring_nf
      _ ≤ ‖θ x - F x‖ + ‖F x - N x‖ := norm_add_le _ _
      _ = ‖F x - θ x‖ + ‖F x - N x‖ := by rw [norm_sub_rev]
      _ < 1 := by rw [e2]; linarith [hFclose x]
  
  have hNmem : ∀ x, N x ∈ Submonoid.unitSphere ℂ := by
    intro x
    show N x ∈ Metric.sphere (0 : ℂ) 1
    rw [mem_sphere_zero_iff_norm]
    exact hNn x
  let Ψ : C(M, Circle) := ⟨fun x => ⟨N x, hNmem x⟩, hNs.continuous.subtype_mk hNmem⟩
  have hΨcoe : ∀ x, ((Ψ x : Circle) : ℂ) = N x := fun x => rfl
  have hΨ1 : ∀ x, x ∉ K → Ψ x = 1 := by
    intro x hx
    apply Circle.ext
    rw [hΨcoe, Circle.coe_one]
    simp only [N, hF1 x hx, norm_one, inv_one, Complex.ofReal_one, one_mul]
  
  let w : C(M, Circle) := ⟨fun x => Θ x * (Ψ x)⁻¹, Θ.continuous.mul Ψ.continuous.inv⟩
  have hwcoe : ∀ x, ((w x : Circle) : ℂ) = θ x * (N x)⁻¹ := by
    intro x
    show ((Θ x * (Ψ x)⁻¹ : Circle) : ℂ) = _
    rw [Circle.coe_mul, Circle.coe_inv, hΨcoe]
  have hwn : ∀ x, ‖((w x : Circle) : ℂ) - 1‖ < 1 := by
    intro x
    have hN0 : N x ≠ 0 := by
      intro h; have := hNn x; rw [h, norm_zero] at this; exact zero_ne_one this
    have e : θ x * (N x)⁻¹ - 1 = (θ x - N x) * (N x)⁻¹ := by
      field_simp
    rw [hwcoe, e, norm_mul, norm_inv, hNn x, inv_one, mul_one]
    exact hNclose x
  have hslit : ∀ x, ((w x : Circle) : ℂ) ∈ Complex.slitPlane := by
    intro x
    apply Complex.mem_slitPlane_iff.mpr
    left
    have h1 := Complex.abs_re_le_norm (((w x : Circle) : ℂ) - 1)
    have h2 := hwn x
    rw [Complex.sub_re, Complex.one_re] at h1
    have h4 : |(((w x : Circle) : ℂ)).re - 1| < 1 := lt_of_le_of_lt h1 h2
    rw [abs_lt] at h4
    linarith [h4.1]
  let ψ : C(M, ℝ) := ⟨fun x => Complex.arg ((w x : Circle) : ℂ),
    Complex.continuousOn_arg.comp_continuous (continuous_subtype_val.comp w.continuous) hslit⟩
  have hψ : ∀ x, Circle.exp (ψ x) = w x := fun x => Circle.exp_arg (w x)
  refine ⟨K, Ψ, ψ, hK, hKU, hΨ1, hNs, fun x => ?_⟩
  rw [hψ x]
  show Θ x = Ψ x * (Θ x * (Ψ x)⁻¹)
  rw [mul_comm (Θ x), ← mul_assoc, mul_inv_cancel, one_mul]

theorem radial_levelMeanCurv_pos [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) :
    ∃ R₀ : ℝ, 2 ≤ R₀ ∧ ∀ w : M → ℝ, (∀ z : E3, 1 < ‖z‖ → w ((hAF.ends k).Φ z) = ‖z‖) →
      ∀ y : E3, R₀ < ‖y‖ → 0 < g.levelMeanCurv w ((hAF.ends k).Φ y) :=
by
  
  have hu : ∀ u : E3, u = ∑ d : Fin 3, u d • e d := by
    intro u
    conv_lhs => rw [← (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr u]
    simp [EuclideanSpace.basisFun_apply]
  have hcompo : ∀ (ψ : E3 → E3) (z : E3), DifferentiableAt ℝ ψ z → ∀ l d : Fin 3,
      partialDeriv l (fun v => ψ v d) z = (fderiv ℝ ψ z (e l)) d := by
    intro ψ z hψ l d
    have hfun : (fun v => ψ v d) = (EuclideanSpace.proj d : E3 →L[ℝ] ℝ) ∘ ψ := by
      funext v; simp
    rw [partialDeriv, hfun, fderiv_comp z (EuclideanSpace.proj d).differentiableAt hψ,
      ContinuousLinearMap.fderiv]
    simp
  have pd_comp : ∀ (F : E3 → ℝ) (ψ : E3 → E3) (z : E3), DifferentiableAt ℝ ψ z →
      DifferentiableAt ℝ F (ψ z) → ∀ l : Fin 3,
      partialDeriv l (fun w => F (ψ w)) z
        = ∑ d : Fin 3, partialDeriv d F (ψ z) * partialDeriv l (fun v => ψ v d) z := by
    intro F ψ z hψ hF l
    have h1 : partialDeriv l (fun w => F (ψ w)) z = fderiv ℝ F (ψ z) (fderiv ℝ ψ z (e l)) := by
      show fderiv ℝ (F ∘ ψ) z (e l) = _
      rw [fderiv_comp z hF hψ]
      rfl
    rw [h1, hu (fderiv ℝ ψ z (e l)), map_sum]
    simp only [map_smul, smul_eq_mul, hcompo ψ z hψ]
    apply Finset.sum_congr rfl
    intro d _
    rw [mul_comm]
    rfl
  
  have hessLoc_congr : ∀ (G G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (u v : E3 → ℝ) (y : E3),
      G =ᶠ[𝓝 y] G' → u =ᶠ[𝓝 y] v → ∀ i j : Fin 3, hessLoc G u i j y = hessLoc G' v i j y := by
    intro G G' u v y hG huv i j
    have hy0 : G y = G' y := hG.eq_of_nhds
    have hent : ∀ a b l, partialDeriv l (fun z => G z a b) y
        = partialDeriv l (fun z => G' z a b) y := by
      intro a b l
      have : (fun z => G z a b) =ᶠ[𝓝 y] (fun z => G' z a b) :=
        hG.mono (fun z hz => by simp [hz])
      simp only [partialDeriv, this.fderiv_eq]
    have hchr : ∀ k i j, christoffel G k i j y = christoffel G' k i j y := by
      intro k i j
      simp only [christoffel, hy0, hent]
    have h1 : ∀ l : Fin 3, partialDeriv l u y = partialDeriv l v y := by
      intro l
      show fderiv ℝ u y (e l) = fderiv ℝ v y (e l)
      rw [huv.fderiv_eq]
    have h2 : partialDeriv i (partialDeriv j u) y = partialDeriv i (partialDeriv j v) y := by
      have hev : partialDeriv j u =ᶠ[𝓝 y] partialDeriv j v := by
        filter_upwards [huv.eventuallyEq_nhds] with z hz
        show fderiv ℝ u z (e j) = fderiv ℝ v z (e j)
        rw [hz.fderiv_eq]
      show fderiv ℝ (partialDeriv j u) y (e i) = fderiv ℝ (partialDeriv j v) y (e i)
      rw [hev.fderiv_eq]
    simp only [hessLoc, hchr, h1, h2]
  
  have alg : ∀ (A G' G : Matrix (Fin 3) (Fin 3) ℝ) (v' v : Fin 3 → ℝ)
      (H' H : Fin 3 → Fin 3 → ℝ),
      A.det ≠ 0 →
      (∀ i j : Fin 3, G i j = ∑ a : Fin 3, ∑ b : Fin 3, A a i * G' a b * A b j) →
      (∀ i : Fin 3, v i = ∑ a : Fin 3, A a i * v' a) →
      (∀ i j : Fin 3, H i j = ∑ a : Fin 3, ∑ b : Fin 3, A a i * A b j * H' a b) →
      (∑ i : Fin 3, ∑ j : Fin 3, G⁻¹ i j * v i * v j =
        ∑ i : Fin 3, ∑ j : Fin 3, G'⁻¹ i j * v' i * v' j) ∧
      (∑ i : Fin 3, ∑ j : Fin 3, G⁻¹ i j * H i j =
        ∑ i : Fin 3, ∑ j : Fin 3, G'⁻¹ i j * H' i j) ∧
      (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
          G⁻¹ i a * v a * (G⁻¹ j b * v b) * H i j =
        ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
          G'⁻¹ i a * v' a * (G'⁻¹ j b * v' b) * H' i j) := by
    intro A G' G v' v H' H hA hG hv hH
    have hAu : IsUnit A.det := isUnit_iff_ne_zero.mpr hA
    have hGt : G = Matrix.transpose A * G' * A := by
      ext i j
      rw [hG]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
    have hAB : A * A⁻¹ = 1 := Matrix.mul_nonsing_inv A hAu
    have hBA : Matrix.transpose A⁻¹ * Matrix.transpose A = 1 := by
      rw [← Matrix.transpose_mul, hAB, Matrix.transpose_one]
    have hGinv : G⁻¹ = A⁻¹ * G'⁻¹ * Matrix.transpose A⁻¹ := by
      rw [hGt, Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.transpose_nonsing_inv]
      exact (Matrix.mul_assoc _ _ _).symm
    have hKm : A * G⁻¹ * Matrix.transpose A = G'⁻¹ := by
      rw [hGinv]
      calc A * (A⁻¹ * G'⁻¹ * Matrix.transpose A⁻¹) * Matrix.transpose A
          = (A * A⁻¹) * G'⁻¹ * (Matrix.transpose A⁻¹ * Matrix.transpose A) := by
            simp only [Matrix.mul_assoc]
        _ = G'⁻¹ := by rw [hAB, hBA, Matrix.one_mul, Matrix.mul_one]
    have hK : ∀ a b : Fin 3,
        ∑ i : Fin 3, ∑ j : Fin 3, A a i * G⁻¹ i j * A b j = G'⁻¹ a b := by
      intro a b
      have h1 := congrFun (congrFun hKm a) b
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_three] at h1
      simp only [Fin.sum_univ_three]
      linear_combination h1
    simp only [Fin.sum_univ_three] at hK
    refine ⟨?_, ?_, ?_⟩
    · simp only [hv, Fin.sum_univ_three]
      linear_combination (v' 0 * v' 0) * hK 0 0 + (v' 0 * v' 1) * hK 0 1
        + (v' 0 * v' 2) * hK 0 2 + (v' 1 * v' 0) * hK 1 0 + (v' 1 * v' 1) * hK 1 1
        + (v' 1 * v' 2) * hK 1 2 + (v' 2 * v' 0) * hK 2 0 + (v' 2 * v' 1) * hK 2 1
        + (v' 2 * v' 2) * hK 2 2
    · simp only [hH, Fin.sum_univ_three]
      linear_combination H' 0 0 * hK 0 0 + H' 0 1 * hK 0 1 + H' 0 2 * hK 0 2
        + H' 1 0 * hK 1 0 + H' 1 1 * hK 1 1 + H' 1 2 * hK 1 2
        + H' 2 0 * hK 2 0 + H' 2 1 * hK 2 1 + H' 2 2 * hK 2 2
    · have regroup : ∀ (X : Matrix (Fin 3) (Fin 3) ℝ) (y : Fin 3 → ℝ) (Z : Fin 3 → Fin 3 → ℝ),
          ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
              X i a * y a * (X j b * y b) * Z i j =
            ∑ i : Fin 3, ∑ j : Fin 3,
              (∑ a : Fin 3, X i a * y a) * (∑ b : Fin 3, X j b * y b) * Z i j := by
        intro X y Z
        simp only [Fin.sum_univ_three]
        ring
      have regroup2 : ∀ (u : Fin 3 → ℝ) (B : Matrix (Fin 3) (Fin 3) ℝ)
          (Z : Fin 3 → Fin 3 → ℝ),
          ∑ i : Fin 3, ∑ j : Fin 3, u i * u j * (∑ a : Fin 3, ∑ b : Fin 3, B a i * B b j * Z a b) =
            ∑ a : Fin 3, ∑ b : Fin 3,
              (∑ i : Fin 3, B a i * u i) * (∑ j : Fin 3, B b j * u j) * Z a b := by
        intro u B Z
        simp only [Fin.sum_univ_three]
        ring
      have hu3 : ∀ d : Fin 3, ∑ i : Fin 3, A d i * (∑ a : Fin 3, G⁻¹ i a * v a) =
          ∑ c : Fin 3, G'⁻¹ d c * v' c := by
        intro d
        simp only [hv, Fin.sum_univ_three]
        linear_combination v' 0 * hK d 0 + v' 1 * hK d 1 + v' 2 * hK d 2
      rw [regroup G⁻¹ v H, regroup G'⁻¹ v' H']
      simp only [hH]
      have h5 := regroup2 (fun i => ∑ a : Fin 3, G⁻¹ i a * v a) A H'
      beta_reduce at h5
      rw [h5]
      simp only [hu3]
  
  have transfer : ∀ (Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (f : M → ℝ) (V : Set M),
      IsOpen V → ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f V → ∀ x : E3, x ∈ Φ.source → Φ x ∈ V →
      g.levelMeanCurv f (Φ x) = levelMeanCurvCoord (g.coeff Φ) (f ∘ Φ) x := by
    intro Φ f V hV hf x hx hxV
    obtain ⟨hdetJ, hHess⟩ := hessLoc_chart_invariant g Φ f V hV hf x hx hxV
    have h2 : IsOpen (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source) ∧
        ContDiffOn ℝ ∞ (fun w => chartAt E3 (Φ x) (Φ w))
          (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source) := by
      have hΦ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ Φ.source := Φ.contMDiffOn_toFun
      refine ⟨hΦ.continuousOn.isOpen_inter_preimage Φ.open_source
        (chartAt E3 (Φ x)).open_source, ?_⟩
      have hc : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 (Φ x))
          (chartAt E3 (Φ x)).source := contMDiffOn_chart
      have hcomp := hc.comp (hΦ.mono Set.inter_subset_left) (fun w hw => hw.2)
      exact contMDiffOn_iff_contDiffOn.mp hcomp
    have hxU : x ∈ Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source :=
      ⟨hx, mem_chart_source E3 (Φ x)⟩
    have hψd : ∀ z ∈ Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source,
        DifferentiableAt ℝ (fun w => chartAt E3 (Φ x) (Φ w)) z := fun z hz =>
      (h2.2.contDiffAt (h2.1.mem_nhds hz)).differentiableAt (by simp)
    have hM1 : ∀ z ∈ Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source,
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ z =
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z))).comp
            (fderiv ℝ (fun w => chartAt E3 (Φ x) (Φ w)) z) := by
      intro z hz
      have hev : (Φ : E3 → M) =ᶠ[𝓝 z]
          ((chartAt E3 (Φ x)).symm ∘ (fun w => chartAt E3 (Φ x) (Φ w))) := by
        filter_upwards [h2.1.mem_nhds hz] with w hw
        exact ((chartAt E3 (Φ x)).left_inv hw.2).symm
      rw [hev.mfderiv_eq, mfderiv_comp z
        (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 (Φ x))
          ((chartAt E3 (Φ x)).map_source hz.2)) (hψd z hz).mdifferentiableAt, mfderiv_eq_fderiv]
    have hM1' : ∀ z ∈ Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source, ∀ u : E3,
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ z u =
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z))
            (fderiv ℝ (fun w => chartAt E3 (Φ x) (Φ w)) z u) := by
      intro z hz u
      rw [hM1 z hz]
      rfl
    
    have s1 : ∀ z ∈ Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x)).source, ∀ i j : Fin 3,
        g.coeff Φ z i j = ∑ a : Fin 3, ∑ b : Fin 3,
          partialDeriv i (fun w => chartAt E3 (Φ x) (Φ w) a) z *
            g.coeff (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z)) a b *
              partialDeriv j (fun w => chartAt E3 (Φ x) (Φ w) b) z := by
      intro z hz i j
      have hq : (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z)) = Φ z :=
        (chartAt E3 (Φ x)).left_inv hz.2
      have hgq : g.g ((chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z))) = g.g (Φ z) :=
        congrArg g.g hq
      obtain ⟨D, hD⟩ : ∃ D : E3 →L[ℝ] E3,
          D = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z)) :=
        ⟨_, rfl⟩
      have hΦD : ∀ u : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ z u =
          D (fderiv ℝ (fun w => chartAt E3 (Φ x) (Φ w)) z u) := by
        intro u
        rw [hM1' z hz u, hD]
        rfl
      have hcD : ∀ a b : Fin 3, g.coeff (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z)) a b
          = g.g (Φ z) (D (e a)) (D (e b)) := by
        intro a b
        rw [← hgq, hD]
        rfl
      have hJ : ∀ k : Fin 3, fderiv ℝ (fun w => chartAt E3 (Φ x) (Φ w)) z (e k)
          = ∑ d : Fin 3, partialDeriv k (fun w => chartAt E3 (Φ x) (Φ w) d) z • e d := by
        intro k
        rw [hu (fderiv ℝ (fun w => chartAt E3 (Φ x) (Φ w)) z (e k))]
        simp only [hcompo _ z (hψd z hz)]
      simp only [hcD]
      show g.g (Φ z) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ z (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ z (e j)) = _
      rw [hΦD, hΦD, hJ i, hJ j]
      simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
        smul_eq_mul]
      simp only [Fin.sum_univ_three]
      ring
    
    have hUo : IsOpen (Φ.source ∩ Φ ⁻¹' ((chartAt E3 (Φ x)).source ∩ V)) :=
      Φ.contMDiffOn_toFun.continuousOn.isOpen_inter_preimage Φ.open_source
        ((chartAt E3 (Φ x)).open_source.inter hV)
    have hxU' : x ∈ Φ.source ∩ Φ ⁻¹' ((chartAt E3 (Φ x)).source ∩ V) :=
      ⟨hx, mem_chart_source E3 (Φ x), hxV⟩
    have hWo : IsOpen ((chartAt E3 (Φ x)).target ∩ (chartAt E3 (Φ x)).symm ⁻¹' V) :=
      (chartAt E3 (Φ x)).isOpen_inter_preimage_symm hV
    have hmapsW : ∀ z ∈ Φ.source ∩ Φ ⁻¹' ((chartAt E3 (Φ x)).source ∩ V),
        chartAt E3 (Φ x) (Φ z) ∈ (chartAt E3 (Φ x)).target ∩ (chartAt E3 (Φ x)).symm ⁻¹' V := by
      intro z hz
      refine ⟨(chartAt E3 (Φ x)).map_source hz.2.1, ?_⟩
      show (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z)) ∈ V
      rw [(chartAt E3 (Φ x)).left_inv hz.2.1]
      exact hz.2.2
    have huW : ContDiffOn ℝ ∞ (fun y => f ((chartAt E3 (Φ x)).symm y))
        ((chartAt E3 (Φ x)).target ∩ (chartAt E3 (Φ x)).symm ⁻¹' V) := by
      have : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (f ∘ (chartAt E3 (Φ x)).symm)
          ((chartAt E3 (Φ x)).target ∩ (chartAt E3 (Φ x)).symm ⁻¹' V) :=
        hf.comp (contMDiffOn_chart_symm.mono Set.inter_subset_left) (fun y hy => hy.2)
      exact contMDiffOn_iff_contDiffOn.mp this
    have hfd : DifferentiableAt ℝ (fun y => f ((chartAt E3 (Φ x)).symm y))
        (chartAt E3 (Φ x) (Φ x)) :=
      (huW.contDiffAt (hWo.mem_nhds (hmapsW x hxU'))).differentiableAt (by simp)
    have hequ : (f ∘ Φ) =ᶠ[𝓝 x]
        (fun w => f ((chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ w)))) := by
      filter_upwards [h2.1.mem_nhds hxU] with z hz
      show f (Φ z) = f ((chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ z)))
      rw [(chartAt E3 (Φ x)).left_inv hz.2]
    have s7 : ∀ i : Fin 3, partialDeriv i (f ∘ Φ) x = ∑ a : Fin 3,
        partialDeriv i (fun w => chartAt E3 (Φ x) (Φ w) a) x *
          partialDeriv a (fun y => f ((chartAt E3 (Φ x)).symm y)) (chartAt E3 (Φ x) (Φ x)) := by
      intro i
      have e0 : partialDeriv i (f ∘ Φ) x = partialDeriv i
          (fun w => f ((chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ w)))) x := by
        show fderiv ℝ (f ∘ Φ) x (e i) = fderiv ℝ _ x (e i)
        rw [hequ.fderiv_eq]
      rw [e0]
      exact (pd_comp (fun y => f ((chartAt E3 (Φ x)).symm y)) (fun w => chartAt E3 (Φ x) (Φ w))
        x (hψd x hxU) hfd i).trans (Finset.sum_congr rfl (fun a _ => mul_comm _ _))
    obtain ⟨e1, e2, e3⟩ := alg
      (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => chartAt E3 (Φ x) (Φ w) a) x)
      (g.coeff (chartAt E3 (Φ x)).symm (chartAt E3 (Φ x) (Φ x))) (g.coeff Φ x)
      (fun a => partialDeriv a (fun y => f ((chartAt E3 (Φ x)).symm y)) (chartAt E3 (Φ x) (Φ x)))
      (fun i => partialDeriv i (f ∘ Φ) x)
      (fun a b => hessLoc (g.coeff (chartAt E3 (Φ x)).symm)
        (fun y => f ((chartAt E3 (Φ x)).symm y)) a b (chartAt E3 (Φ x) (Φ x)))
      (fun i j => hessLoc (g.coeff Φ) (f ∘ Φ) i j x)
      hdetJ (fun i j => s1 x hxU i j) s7 hHess
    beta_reduce at e1 e2 e3
    show levelMeanCurvCoord (g.coeff (chartAt E3 (Φ x)).symm)
      (fun y => f ((chartAt E3 (Φ x)).symm y)) (chartAt E3 (Φ x) (Φ x)) = _
    unfold levelMeanCurvCoord lapLoc
    rw [e1, e2, e3]
  
  have hq0 : 0 < hAF.q := lt_trans (by norm_num) hAF.q_gt
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hsmooth : ∀ i j : Fin 3,
      ContDiffOn ℝ ∞ (fun x => g.coeff (hAF.ends k).Φ x i j) {x : E3 | 1 < ‖x‖} := by
    intro i j
    rw [← hsrc]
    exact coeff_contDiffOn_source g (hAF.ends k).Φ i j
  obtain ⟨R, C, hR1, hC0, hb⟩ :=
    metric_coeff_bounds (g.coeff (hAF.ends k).Φ) hAF.q hq0 hsmooth (hAF.decay k)
  have hdet : ∀ x : E3, R < ‖x‖ → (1 / 2 : ℝ) ≤ (g.coeff (hAF.ends k).Φ x).det :=
    fun x hx => (hb x hx).1
  have hDec : Dec1 (g.coeff (hAF.ends k).Φ) hAF.q R C := by
    intro x hx i j
    obtain ⟨_, hrest⟩ := hb x hx
    refine ⟨(hrest i j 0).1, fun l => ?_⟩
    have h1 := (hrest i j l).2.1
    calc |partialDeriv l (fun y => g.coeff (hAF.ends k).Φ y i j) x|
        = ‖fderiv ℝ (fun y => g.coeff (hAF.ends k).Φ y i j) x (e l)‖ := by
          rw [Real.norm_eq_abs]; rfl
      _ ≤ ‖fderiv ℝ (fun y => g.coeff (hAF.ends k).Φ y i j) x‖ * ‖e l‖ :=
          ContinuousLinearMap.le_opNorm _ _
      _ = ‖fderiv ℝ (fun y => g.coeff (hAF.ends k).Φ y i j) x‖ := by
          simp [EuclideanSpace.norm_single]
      _ ≤ _ := h1
  obtain ⟨Rb, _, hpos⟩ := coordSphere_levelMeanCurvCoord_pos (g.coeff (hAF.ends k).Φ) hAF.q R C
    hq0 hR1 hC0 hdet hDec
  refine ⟨max Rb 2, le_max_right _ _, ?_⟩
  intro w hw y hy
  have hyRb : Rb < ‖y‖ := lt_of_le_of_lt (le_max_left _ _) hy
  have hy2 : (2 : ℝ) < ‖y‖ := lt_of_le_of_lt (le_max_right _ _) hy
  have hysrc : y ∈ (hAF.ends k).Φ.source := by
    rw [hsrc]
    show (1 : ℝ) < ‖y‖
    linarith
  
  have hwsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w (hAF.ends k).Φ.target := by
    have hn : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun z : E3 => ‖z‖) {z : E3 | z ≠ 0} := by
      intro z hz
      exact (contDiffAt_norm ℝ hz).contMDiffAt.contMDiffWithinAt
    have hinv : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (hAF.ends k).Φ.invFun
        (hAF.ends k).Φ.target :=
      (hAF.ends k).Φ.contMDiffOn_invFun
    have hsrcp : ∀ p ∈ (hAF.ends k).Φ.target, 1 < ‖(hAF.ends k).Φ.invFun p‖ := by
      intro p hp
      have h1 : (hAF.ends k).Φ.invFun p ∈ (hAF.ends k).Φ.source :=
        (hAF.ends k).Φ.toPartialEquiv.map_target hp
      rw [hsrc] at h1
      exact h1
    have hcomp := hn.comp hinv (fun p hp => show (hAF.ends k).Φ.invFun p ≠ 0 from by
      intro h0
      have := hsrcp p hp
      rw [h0, norm_zero] at this
      linarith)
    refine hcomp.congr ?_
    intro p hp
    have hpq : (hAF.ends k).Φ ((hAF.ends k).Φ.invFun p) = p :=
      (hAF.ends k).Φ.toPartialEquiv.right_inv hp
    show w p = ‖(hAF.ends k).Φ.invFun p‖
    calc w p = w ((hAF.ends k).Φ ((hAF.ends k).Φ.invFun p)) := by rw [hpq]
      _ = ‖(hAF.ends k).Φ.invFun p‖ := hw _ (hsrcp p hp)
  have hyt : (hAF.ends k).Φ y ∈ (hAF.ends k).Φ.target :=
    (hAF.ends k).Φ.toPartialEquiv.map_source hysrc
  rw [transfer (hAF.ends k).Φ w (hAF.ends k).Φ.target (hAF.ends k).Φ.open_target hwsm y
    hysrc hyt]
  
  have hO : {z : E3 | 1 < ‖z‖} ∈ 𝓝 y :=
    (isOpen_lt continuous_const continuous_norm).mem_nhds (show (1 : ℝ) < ‖y‖ by linarith)
  have hloc : (w ∘ (hAF.ends k).Φ) =ᶠ[𝓝 y] (fun z : E3 => ‖z‖) :=
    Filter.eventually_of_mem hO (fun z hz => hw z hz)
  have hpd : ∀ i : Fin 3, partialDeriv i (w ∘ (hAF.ends k).Φ) y =
      partialDeriv i (fun z : E3 => ‖z‖) y := by
    intro i
    show fderiv ℝ _ y (e i) = fderiv ℝ _ y (e i)
    rw [hloc.fderiv_eq]
  have hhs : ∀ i j : Fin 3, hessLoc (g.coeff (hAF.ends k).Φ) (w ∘ (hAF.ends k).Φ) i j y =
      hessLoc (g.coeff (hAF.ends k).Φ) (fun z : E3 => ‖z‖) i j y :=
    hessLoc_congr _ _ _ _ y (Filter.EventuallyEq.refl _ _) hloc
  have heq : levelMeanCurvCoord (g.coeff (hAF.ends k).Φ) (w ∘ (hAF.ends k).Φ) y =
      levelMeanCurvCoord (g.coeff (hAF.ends k).Φ) (fun z : E3 => ‖z‖) y := by
    unfold levelMeanCurvCoord lapLoc
    simp only [hpd, hhs]
  rw [heq]
  exact hpos y hyRb

theorem dual_cube_cover [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (U : Set M) (hUo : IsOpen U) (Ψ : C(M, Circle))
    (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (K : Set M) (hK : IsCompact K) (hKU : K ⊆ U) :
    ∃ (N : ℕ) (x : Fin N → M) (r : Fin N → ℝ) (ℓ : Fin N → E3 → ℝ) (O : Fin N → Set E3),
      (∀ j, 0 < r j) ∧ (∀ j, IsOpen (O j)) ∧ (∀ j, O j ⊆ (chartAt E3 (x j)).target) ∧
      (∀ j, (chartAt E3 (x j)).symm '' O j ⊆ U) ∧
      (∀ j, {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} ⊆ O j) ∧
      (∀ j, ContDiffOn ℝ ∞ (ℓ j) (O j)) ∧
      (∀ j, ∀ y ∈ O j, Circle.exp (ℓ j y) = Ψ ((chartAt E3 (x j)).symm y)) ∧
      (∀ j y, |ℓ j y| ≤ 2 * Real.pi) ∧
      ∀ z ∈ K, ∃ j, z ∈ (chartAt E3 (x j)).source ∧
        ∀ i : Fin 3, |chartAt E3 (x j) z i - chartAt E3 (x j) (x j) i| < r j :=
by
  classical
  
  have hΨc : ∀ q : M, ContDiffOn ℝ ∞ (fun y => (Ψ ((chartAt E3 q).symm y) : ℂ))
      (chartAt E3 q).target := by
    intro q
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞
        ((fun x : M => (Ψ x : ℂ)) ∘ (chartAt E3 q).symm) (chartAt E3 q).target :=
      hΨs.comp_contMDiffOn contMDiffOn_chart_symm
    exact contMDiffOn_iff_contDiffOn.mp h1
  
  have hlocal : ∀ q : M, q ∈ U → ∃ ε : ℝ, 0 < ε ∧ ∃ ℓ : E3 → ℝ,
      Metric.ball (chartAt E3 q q) ε ⊆ (chartAt E3 q).target ∧
      (chartAt E3 q).symm '' Metric.ball (chartAt E3 q q) ε ⊆ U ∧
      ContDiffOn ℝ ∞ ℓ (Metric.ball (chartAt E3 q q) ε) ∧
      (∀ y ∈ Metric.ball (chartAt E3 q q) ε, Circle.exp (ℓ y) = Ψ ((chartAt E3 q).symm y)) ∧
      (∀ y, |ℓ y| ≤ 2 * Real.pi) := by
    intro q hq
    have hy₀t : chartAt E3 q q ∈ (chartAt E3 q).target :=
      (chartAt E3 q).map_source (mem_chart_source E3 q)
    have hsy₀ : (chartAt E3 q).symm (chartAt E3 q q) = q :=
      (chartAt E3 q).left_inv (mem_chart_source E3 q)
    have hW : (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' U ∈ 𝓝 (chartAt E3 q q) := by
      refine ((chartAt E3 q).isOpen_inter_preimage_symm hUo).mem_nhds ⟨hy₀t, ?_⟩
      show (chartAt E3 q).symm (chartAt E3 q q) ∈ U
      rw [hsy₀]
      exact hq
    let qf : E3 → ℂ := fun y => (((Ψ q)⁻¹ * Ψ ((chartAt E3 q).symm y) : Circle) : ℂ)
    have hqf_eq : qf = fun y => (((Ψ q)⁻¹ : Circle) : ℂ) * (Ψ ((chartAt E3 q).symm y) : ℂ) :=
      funext fun y => Circle.coe_mul _ _
    have hqf_c : ContDiffOn ℝ ∞ qf (chartAt E3 q).target := by
      rw [hqf_eq]
      exact contDiffOn_const.mul (hΨc q)
    have hqf0 : qf (chartAt E3 q q) = 1 := by
      simp [qf, hsy₀]
    have hcont : ContinuousAt qf (chartAt E3 q q) :=
      hqf_c.continuousOn.continuousAt ((chartAt E3 q).open_target.mem_nhds hy₀t)
    have hre : ∀ᶠ y in 𝓝 (chartAt E3 q q), 0 < (qf y).re := by
      have hc' : ContinuousAt (fun y => (qf y).re) (chartAt E3 q q) :=
        Complex.continuous_re.continuousAt.comp hcont
      have h2 : (0 : ℝ) < (qf (chartAt E3 q q)).re := by
        rw [hqf0]
        simp
      exact hc'.eventually (lt_mem_nhds h2)
    have hev : ∀ᶠ y in 𝓝 (chartAt E3 q q),
        y ∈ (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' U ∧ 0 < (qf y).re := by
      filter_upwards [hW, hre] with y h1 h3
      exact ⟨h1, h3⟩
    obtain ⟨ε, hε, hball⟩ := Metric.eventually_nhds_iff_ball.1 hev
    refine ⟨ε, hε, fun y => Complex.arg (Ψ q : ℂ) + (Complex.log (qf y)).im,
      fun y hy => (hball y hy).1.1, ?_, ?_, ?_, ?_⟩
    · rintro _ ⟨y, hy, rfl⟩
      exact (hball y hy).1.2
    · intro y hy
      have hyt := (hball y hy).1.1
      have hslit : qf y ∈ Complex.slitPlane :=
        Complex.mem_slitPlane_iff.2 (Or.inl (hball y hy).2)
      have h1 : ContDiffAt ℝ ∞ qf y := hqf_c.contDiffAt ((chartAt E3 q).open_target.mem_nhds hyt)
      have h2 : ContDiffAt ℝ ∞ Complex.log (qf y) :=
        (Complex.contDiffAt_log hslit).restrict_scalars ℝ
      have h3 : ContDiffAt ℝ ∞ (fun y => (Complex.log (qf y)).im) y :=
        Complex.imCLM.contDiff.contDiffAt.comp y (h2.comp y h1)
      exact (contDiffAt_const.add h3).contDiffWithinAt
    · intro y _
      show Circle.exp (Complex.arg (Ψ q : ℂ) + (Complex.log (qf y)).im) =
        Ψ ((chartAt E3 q).symm y)
      rw [Complex.log_im, Circle.exp_add, Circle.exp_arg]
      have hq' : Circle.exp (Complex.arg (qf y)) = (Ψ q)⁻¹ * Ψ ((chartAt E3 q).symm y) :=
        Circle.exp_arg _
      rw [hq', mul_inv_cancel_left]
    · intro y
      show |Complex.arg (Ψ q : ℂ) + (Complex.log (qf y)).im| ≤ 2 * Real.pi
      rw [Complex.log_im]
      have h1 := Complex.abs_arg_le_pi (Ψ q : ℂ)
      have h2 := Complex.abs_arg_le_pi (qf y)
      calc |Complex.arg (Ψ q : ℂ) + Complex.arg (qf y)|
          ≤ |Complex.arg (Ψ q : ℂ)| + |Complex.arg (qf y)| := abs_add_le _ _
        _ ≤ 2 * Real.pi := by linarith
  
  have hcube : ∀ (c : E3) (ε : ℝ), 0 < ε →
      {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ 3 * (ε / 6)} ⊆ Metric.ball c ε := by
    intro c ε hε y hy
    have a : ∀ i : Fin 3, (y i - c i) ^ 2 ≤ (3 * (ε / 6)) ^ 2 := fun i =>
      sq_le_sq' (abs_le.mp (hy i)).1 (abs_le.mp (hy i)).2
    rw [Metric.mem_ball, EuclideanSpace.dist_eq, Real.sqrt_lt' hε, Fin.sum_univ_three]
    simp only [Real.dist_eq, sq_abs]
    nlinarith [a 0, a 1, a 2, mul_pos hε hε]
  
  have hballcube : ∀ (c : E3) (ρ : ℝ) (y : E3), y ∈ Metric.ball c ρ →
      ∀ i : Fin 3, |y i - c i| < ρ := by
    intro c ρ y hy i
    rw [Metric.mem_ball] at hy
    have h := PiLp.dist_apply_le y c i
    rw [Real.dist_eq] at h
    exact lt_of_le_of_lt h hy
  choose! ε hε ℓ hBt hBU hℓs hℓΨ hℓB using hlocal
  have hV : ∀ z ∈ K, {w : M | w ∈ (chartAt E3 z).source ∧
      ∀ i : Fin 3, |chartAt E3 z w i - chartAt E3 z z i| < ε z / 6} ∈ 𝓝 z := by
    intro z hz
    have hεz := hε z (hKU hz)
    have h1 : (chartAt E3 z).source ∩
        chartAt E3 z ⁻¹' Metric.ball (chartAt E3 z z) (ε z / 6) ∈ 𝓝 z :=
      Filter.inter_mem (chart_source_mem_nhds E3 z)
        (((chartAt E3 z).continuousAt (mem_chart_source E3 z)).preimage_mem_nhds
          (Metric.ball_mem_nhds _ (by positivity)))
    refine Filter.mem_of_superset h1 ?_
    rintro w ⟨hws, hwb⟩
    exact ⟨hws, fun i => hballcube _ _ _ hwb i⟩
  obtain ⟨N, x, hxK, hcov'⟩ : ∃ (N : ℕ) (x : Fin N → M), (∀ j, x j ∈ K) ∧ ∀ z ∈ K, ∃ j,
      z ∈ (chartAt E3 (x j)).source ∧
        ∀ i : Fin 3, |chartAt E3 (x j) z i - chartAt E3 (x j) (x j) i| < ε (x j) / 6 := by
    obtain ⟨t, htK, hcov⟩ := hK.elim_nhds_subcover (fun z => {w : M | w ∈ (chartAt E3 z).source ∧
      ∀ i : Fin 3, |chartAt E3 z w i - chartAt E3 z z i| < ε z / 6}) hV
    refine ⟨t.card, fun j => ((t.equivFin.symm j : t) : M),
      fun j => htK _ (t.equivFin.symm j).2, ?_⟩
    intro z hz
    obtain ⟨w, hw, hzw⟩ := Set.mem_iUnion₂.1 (hcov hz)
    refine ⟨t.equivFin ⟨w, hw⟩, ?_⟩
    simp only [Equiv.symm_apply_apply]
    exact hzw
  have hxU : ∀ j, x j ∈ U := fun j => hKU (hxK j)
  refine ⟨N, x, fun j => ε (x j) / 6, fun j => ℓ (x j),
    fun j => Metric.ball (chartAt E3 (x j) (x j)) (ε (x j)),
    fun j => by have := hε _ (hxU j); positivity,
    fun j => Metric.isOpen_ball, fun j => hBt _ (hxU j), fun j => hBU _ (hxU j),
    fun j => hcube _ _ (hε _ (hxU j)), fun j => hℓs _ (hxU j), fun j => hℓΨ _ (hxU j),
    fun j => hℓB _ (hxU j), hcov'⟩

theorem plateau_cube_seq (c : E3) (s : ℝ) (hs : 0 < s) :
    ∃ (χ : ℕ → E3 → ℝ) (C : ℝ),
      (∀ m, ContDiff ℝ ∞ (χ m)) ∧
      (∀ m y, 0 ≤ χ m y ∧ χ m y ≤ 1) ∧
      (∀ m y, (∀ i : Fin 3, |y i - c i| ≤ 2 * s) → χ m y = 1) ∧
      (∀ m y, χ m y ≠ 0 → ∀ i : Fin 3, |y i - c i| ≤ 5 / 2 * s) ∧
      (∀ y, ¬ (∀ i : Fin 3, |y i - c i| ≤ 2 * s) → ∀ᶠ m in atTop, χ m y = 0) ∧
      (∀ t : ℝ, IsCompact {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ t}) ∧
      ∀ m, ∫ y in {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ 3 * s},
        ∑ i : Fin 3, |partialDeriv i (χ m) y| ≤ C :=
by
  
  have s1 : ∃ B : ℝ, (∀ x : ℝ, |deriv Real.smoothTransition x| ≤ B) ∧
      ∀ x : ℝ, (x < 0 ∨ 1 < x) → deriv Real.smoothTransition x = 0 := by
    have hv : ∀ x : ℝ, (x < 0 ∨ 1 < x) → deriv Real.smoothTransition x = 0 := by
      intro x hx
      rcases hx with hx | hx
      · have : Real.smoothTransition =ᶠ[𝓝 x] fun _ => (0:ℝ) := by
          filter_upwards [Iio_mem_nhds hx] with z hz
          exact Real.smoothTransition.zero_of_nonpos (le_of_lt hz)
        rw [this.deriv_eq, deriv_const]
      · have : Real.smoothTransition =ᶠ[𝓝 x] fun _ => (1:ℝ) := by
          filter_upwards [Ioi_mem_nhds hx] with z hz
          exact Real.smoothTransition.one_of_one_le (le_of_lt hz)
        rw [this.deriv_eq, deriv_const]
    have hc : Continuous (deriv Real.smoothTransition) :=
      (Real.smoothTransition.contDiff (n := 1)).continuous_deriv le_rfl
    obtain ⟨B₀, hB₀⟩ :=
      isCompact_Icc.exists_bound_of_continuousOn (hc.continuousOn (s := Set.Icc (0:ℝ) 1))
    refine ⟨max B₀ 0, fun x => ?_, hv⟩
    by_cases hx : x ∈ Set.Icc (0:ℝ) 1
    · have := hB₀ x hx
      rw [Real.norm_eq_abs] at this
      exact this.trans (le_max_left _ _)
    · have : x < 0 ∨ 1 < x := by
        simp only [Set.mem_Icc, not_and_or, not_le] at hx
        exact hx
      rw [hv x this, abs_zero]
      exact le_max_right _ _
  
  have s2 : ∀ (c : E3) (t : ℝ), IsCompact {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ t} := by
    intro c t
    have hset : {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ t} =
        (EuclideanSpace.equiv (Fin 3) ℝ).toHomeomorph ⁻¹'
          (Set.univ.pi fun i => Set.Icc (c i - t) (c i + t)) := by
      ext y
      simp only [Set.mem_setOf_eq, Set.mem_preimage, Set.mem_pi, Set.mem_univ, true_implies,
        Set.mem_Icc]
      refine forall_congr' fun i => ?_
      rw [abs_sub_le_iff]
      show _ ↔ c i - t ≤ y i ∧ y i ≤ c i + t
      constructor
      · rintro ⟨h1, h2⟩; constructor <;> linarith
      · rintro ⟨h1, h2⟩; constructor <;> linarith
    rw [hset, Homeomorph.isCompact_preimage]
    exact isCompact_univ_pi fun i => isCompact_Icc
  
  have s3 : ∀ (B a δ : ℝ) (hδ : 0 < δ)
      (hB : ∀ x : ℝ, |deriv Real.smoothTransition x| ≤ B)
      (hB0 : ∀ x : ℝ, (x < 0 ∨ 1 < x) → deriv Real.smoothTransition x = 0)
      (σ : ℝ → ℝ)
      (hσ : σ = fun t => Real.smoothTransition ((t + a + δ) / δ) *
                         Real.smoothTransition ((a + δ - t) / δ)),
      ContDiff ℝ ∞ σ ∧ (∀ t, 0 ≤ σ t ∧ σ t ≤ 1) ∧ (∀ t, |t| ≤ a → σ t = 1) ∧
      (∀ t, a + δ ≤ |t| → σ t = 0) ∧ (∀ t, |deriv σ t| ≤ 2 * B / δ) ∧
      (∀ t, deriv σ t ≠ 0 → a ≤ |t| ∧ |t| ≤ a + δ) := by
    intro B a δ hδ hB hB0 σ hσ
    subst hσ
    have hSTd : ∀ x, HasDerivAt Real.smoothTransition (deriv Real.smoothTransition x) x :=
      fun x =>
        ((Real.smoothTransition.contDiff (n := 1)).differentiable (by norm_num) x).hasDerivAt
    have hD : ∀ t, HasDerivAt (fun t => Real.smoothTransition ((t + a + δ) / δ) *
          Real.smoothTransition ((a + δ - t) / δ))
        (deriv Real.smoothTransition ((t + a + δ) / δ) * (1 / δ) *
            Real.smoothTransition ((a + δ - t) / δ) +
          Real.smoothTransition ((t + a + δ) / δ) *
            (deriv Real.smoothTransition ((a + δ - t) / δ) * (-1 / δ))) t := by
      intro t
      have hp : HasDerivAt (fun t : ℝ => (t + a + δ) / δ) (1 / δ) t := by
        have := (((hasDerivAt_id t).add_const a).add_const δ).div_const δ
        simpa using this
      have hq : HasDerivAt (fun t : ℝ => (a + δ - t) / δ) (-1 / δ) t := by
        have := ((hasDerivAt_id t).const_sub (a + δ)).div_const δ
        simpa using this
      exact ((hSTd _).comp t hp).mul ((hSTd _).comp t hq)
    have hderiv : ∀ t, deriv (fun t => Real.smoothTransition ((t + a + δ) / δ) *
          Real.smoothTransition ((a + δ - t) / δ)) t =
        deriv Real.smoothTransition ((t + a + δ) / δ) * (1 / δ) *
            Real.smoothTransition ((a + δ - t) / δ) +
          Real.smoothTransition ((t + a + δ) / δ) *
            (deriv Real.smoothTransition ((a + δ - t) / δ) * (-1 / δ)) :=
      fun t => (hD t).deriv
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
    · have h := Real.smoothTransition.contDiff (n := ⊤)
      exact (h.comp ((contDiff_id.add contDiff_const).add contDiff_const |>.div_const δ)).mul
        (h.comp ((contDiff_const.sub contDiff_id).div_const δ))
    · intro t
      exact ⟨mul_nonneg (Real.smoothTransition.nonneg _) (Real.smoothTransition.nonneg _),
        mul_le_one₀ (Real.smoothTransition.le_one _) (Real.smoothTransition.nonneg _)
          (Real.smoothTransition.le_one _)⟩
    · intro t ht
      obtain ⟨h1, h2⟩ := abs_le.mp ht
      have hp : 1 ≤ (t + a + δ) / δ := by rw [le_div_iff₀ hδ]; linarith
      have hq : 1 ≤ (a + δ - t) / δ := by rw [le_div_iff₀ hδ]; linarith
      show Real.smoothTransition ((t + a + δ) / δ) * Real.smoothTransition ((a + δ - t) / δ) = 1
      rw [Real.smoothTransition.one_of_one_le hp, Real.smoothTransition.one_of_one_le hq,
        mul_one]
    · intro t ht
      show Real.smoothTransition ((t + a + δ) / δ) * Real.smoothTransition ((a + δ - t) / δ) = 0
      rcases le_or_gt 0 t with h0 | h0
      · rw [abs_of_nonneg h0] at ht
        have hq : (a + δ - t) / δ ≤ 0 := div_nonpos_of_nonpos_of_nonneg (by linarith) hδ.le
        rw [Real.smoothTransition.zero_of_nonpos hq, mul_zero]
      · rw [abs_of_neg h0] at ht
        have hp : (t + a + δ) / δ ≤ 0 := div_nonpos_of_nonpos_of_nonneg (by linarith) hδ.le
        rw [Real.smoothTransition.zero_of_nonpos hp, zero_mul]
    · intro t
      rw [hderiv]
      have h1 := hB ((t + a + δ) / δ)
      have h2 := hB ((a + δ - t) / δ)
      have h3 := Real.smoothTransition.nonneg ((a + δ - t) / δ)
      have h4 := Real.smoothTransition.le_one ((a + δ - t) / δ)
      have h5 := Real.smoothTransition.nonneg ((t + a + δ) / δ)
      have h6 := Real.smoothTransition.le_one ((t + a + δ) / δ)
      have hi : 0 < 1 / δ := by positivity
      have hBnn : 0 ≤ B := (abs_nonneg _).trans (hB 0)
      have e1 : |deriv Real.smoothTransition ((t + a + δ) / δ) * (1 / δ) *
            Real.smoothTransition ((a + δ - t) / δ)| =
          |deriv Real.smoothTransition ((t + a + δ) / δ)| * (1 / δ) *
            Real.smoothTransition ((a + δ - t) / δ) := by
        rw [abs_mul, abs_mul, abs_of_pos hi, abs_of_nonneg h3]
      have e2 : |Real.smoothTransition ((t + a + δ) / δ) *
            (deriv Real.smoothTransition ((a + δ - t) / δ) * (-1 / δ))| =
          Real.smoothTransition ((t + a + δ) / δ) *
            (|deriv Real.smoothTransition ((a + δ - t) / δ)| * (1 / δ)) := by
        rw [abs_mul, abs_mul, abs_of_nonneg h5, neg_div, abs_neg, abs_of_pos hi]
      have a1 : |deriv Real.smoothTransition ((t + a + δ) / δ)| * (1 / δ) *
            Real.smoothTransition ((a + δ - t) / δ) ≤ B * (1 / δ) * 1 :=
        mul_le_mul (mul_le_mul_of_nonneg_right h1 hi.le) h4 h3 (by positivity)
      have a2 : Real.smoothTransition ((t + a + δ) / δ) *
            (|deriv Real.smoothTransition ((a + δ - t) / δ)| * (1 / δ)) ≤ 1 * (B * (1 / δ)) :=
        mul_le_mul h6 (mul_le_mul_of_nonneg_right h2 hi.le) (by positivity) zero_le_one
      have e3 : B * (1 / δ) * 1 + 1 * (B * (1 / δ)) = 2 * B / δ := by ring
      have := abs_add_le (deriv Real.smoothTransition ((t + a + δ) / δ) * (1 / δ) *
            Real.smoothTransition ((a + δ - t) / δ))
        (Real.smoothTransition ((t + a + δ) / δ) *
            (deriv Real.smoothTransition ((a + δ - t) / δ) * (-1 / δ)))
      rw [e1, e2] at this
      linarith
    · intro t ht
      by_contra hcon
      apply ht
      rw [hderiv]
      rcases (not_and_or.mp hcon) with h | h
      · push_neg at h
        obtain ⟨h1, h2⟩ := abs_lt.mp h
        have hp : 1 < (t + a + δ) / δ := by rw [lt_div_iff₀ hδ]; linarith
        have hq : 1 < (a + δ - t) / δ := by rw [lt_div_iff₀ hδ]; linarith
        rw [hB0 _ (Or.inr hp), hB0 _ (Or.inr hq)]; ring
      · push_neg at h
        rcases le_or_gt 0 t with h0 | h0
        · rw [abs_of_nonneg h0] at h
          have hq : (a + δ - t) / δ < 0 := div_neg_of_neg_of_pos (by linarith) hδ
          rw [hB0 _ (Or.inl hq), Real.smoothTransition.zero_of_nonpos hq.le]; ring
        · rw [abs_of_neg h0] at h
          have hp : (t + a + δ) / δ < 0 := div_neg_of_neg_of_pos (by linarith) hδ
          rw [hB0 _ (Or.inl hp), Real.smoothTransition.zero_of_nonpos hp.le]; ring
  
  have s4 : ∀ (f : Fin 3 → ℝ → ℝ) (hf : ∀ k, Differentiable ℝ (f k)) (c y : E3) (i : Fin 3),
      partialDeriv i (fun z : E3 => ∏ k : Fin 3, f k (z k - c k)) y =
        deriv (f i) (y i - c i) * ∏ k ∈ Finset.univ.erase i, f k (y k - c k) := by
    intro f hf c y i
    have hcoord : ∀ k : Fin 3, Differentiable ℝ (fun z : E3 => f k (z k - c k)) := by
      intro k
      have hk : Differentiable ℝ (fun z : E3 => z k) :=
        (PiLp.proj (𝕜 := ℝ) 2 (fun _ : Fin 3 => ℝ) k).differentiable
      have hl : Differentiable ℝ (fun z : E3 => z k - c k) := hk.sub_const _
      exact (hf k).comp hl
    have hdiff : DifferentiableAt ℝ (fun z : E3 => ∏ k : Fin 3, f k (z k - c k)) y := by
      have : (fun z : E3 => ∏ k : Fin 3, f k (z k - c k)) =
          fun z => f 0 (z 0 - c 0) * f 1 (z 1 - c 1) * f 2 (z 2 - c 2) := by
        funext z; rw [Fin.prod_univ_three]
      rw [this]
      exact (((hcoord 0) y).mul ((hcoord 1) y)).mul ((hcoord 2) y)
    have hline : ∀ t : ℝ, HasDerivAt (fun t : ℝ => y + t • e i) (e i) t := by
      intro t
      simpa using ((hasDerivAt_id t).smul_const (e i)).const_add y
    have h1 : HasDerivAt
        ((fun z : E3 => ∏ k : Fin 3, f k (z k - c k)) ∘ fun t : ℝ => y + t • e i)
        (fderiv ℝ (fun z : E3 => ∏ k : Fin 3, f k (z k - c k)) y (e i)) 0 := by
      have := hdiff.hasFDerivAt
      have h0 : y + (0:ℝ) • e i = y := by simp
      rw [← h0] at this
      exact this.comp_hasDerivAt 0 (hline 0) |>.congr_deriv (by rw [h0])
    have hcomp : ((fun z : E3 => ∏ k : Fin 3, f k (z k - c k)) ∘ fun t : ℝ => y + t • e i) =
        fun t => f i (y i - c i + t) * ∏ k ∈ Finset.univ.erase i, f k (y k - c k) := by
      funext t
      simp only [Function.comp]
      rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ i)]
      congr 1
      · congr 1
        simp [EuclideanSpace.single_apply]
        ring
      · refine Finset.prod_congr rfl fun k hk => ?_
        have hki : k ≠ i := Finset.ne_of_mem_erase hk
        simp [EuclideanSpace.single_apply, hki]
    have h2 : HasDerivAt
        (fun t => f i (y i - c i + t) * ∏ k ∈ Finset.univ.erase i, f k (y k - c k))
        (deriv (f i) (y i - c i) * ∏ k ∈ Finset.univ.erase i, f k (y k - c k)) 0 := by
      have hfi : HasDerivAt (f i) (deriv (f i) (y i - c i + 0)) (y i - c i + 0) :=
        ((hf i) _).hasDerivAt
      have := (hfi.comp_const_add (y i - c i) 0).mul_const
        (∏ k ∈ Finset.univ.erase i, f k (y k - c k))
      simpa using this
    rw [hcomp] at h1
    exact h1.unique h2
  
  have s5 : ∀ (c : E3) (R a δ : ℝ) (hR : 0 ≤ R) (hδ : 0 ≤ δ) (i : Fin 3),
      MeasureTheory.volume.real
          {y : E3 | (∀ k : Fin 3, |y k - c k| ≤ R) ∧ a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ} ≤
        2 * δ * (2 * R) ^ 2 := by
    intro c R a δ hR hδ i
    classical
    have hP := EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp (Fin 3)
    have hvol : ∀ lo hi : Fin 3 → ℝ, lo ≤ hi →
        (∀ k, hi k - lo k = if k = i then δ else 2 * R) →
        volume.real ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo hi) =
          δ * (2 * R) ^ 2 ∧
        volume ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo hi) ≠ ⊤ := by
      intro lo hi hle hlen
      have hm := hP.measure_preimage (s := Set.Icc lo hi) measurableSet_Icc.nullMeasurableSet
      refine ⟨?_, ?_⟩
      · rw [measureReal_def, hm, Real.volume_Icc_pi_toReal hle]
        simp only [hlen]
        fin_cases i <;> simp [Fin.prod_univ_three] <;> ring
      · rw [hm]
        exact measure_Icc_lt_top.ne
    set lo1 : Fin 3 → ℝ := fun k => if k = i then c i + a else c k - R with hlo1
    set hi1 : Fin 3 → ℝ := fun k => if k = i then c i + a + δ else c k + R with hhi1
    set lo2 : Fin 3 → ℝ := fun k => if k = i then c i - a - δ else c k - R with hlo2
    set hi2 : Fin 3 → ℝ := fun k => if k = i then c i - a else c k + R with hhi2
    have h1 := hvol lo1 hi1 (fun k => by simp only [lo1, hi1]; split_ifs <;> linarith)
      (fun k => by simp only [lo1, hi1]; split_ifs <;> ring)
    have h2 := hvol lo2 hi2 (fun k => by simp only [lo2, hi2]; split_ifs <;> linarith)
      (fun k => by simp only [lo2, hi2]; split_ifs <;> ring)
    have hcov :
        {y : E3 | (∀ k : Fin 3, |y k - c k| ≤ R) ∧ a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ} ⊆
        ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo1 hi1) ∪
        ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo2 hi2) := by
      rintro y ⟨hQ, hy1, hy2⟩
      rcases le_or_gt 0 (y i - c i) with h0 | h0
      · left
        rw [abs_of_nonneg h0] at hy1 hy2
        refine ⟨fun k => ?_, fun k => ?_⟩
        · change lo1 k ≤ y k
          simp only [lo1]
          split_ifs with hk
          · subst hk; linarith
          · have := abs_le.mp (hQ k); linarith
        · change y k ≤ hi1 k
          simp only [hi1]
          split_ifs with hk
          · subst hk; linarith
          · have := abs_le.mp (hQ k); linarith
      · right
        rw [abs_of_neg h0] at hy1 hy2
        refine ⟨fun k => ?_, fun k => ?_⟩
        · change lo2 k ≤ y k
          simp only [lo2]
          split_ifs with hk
          · subst hk; linarith
          · have := abs_le.mp (hQ k); linarith
        · change y k ≤ hi2 k
          simp only [hi2]
          split_ifs with hk
          · subst hk; linarith
          · have := abs_le.mp (hQ k); linarith
    have hfin : volume (((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo1 hi1) ∪
        ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo2 hi2)) ≠ ⊤ :=
      ((measure_union_le _ _).trans_lt (ENNReal.add_lt_top.2
        ⟨lt_top_iff_ne_top.2 h1.2, lt_top_iff_ne_top.2 h2.2⟩)).ne
    calc _ ≤ volume.real (((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo1 hi1) ∪
        ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo2 hi2)) :=
          measureReal_mono hcov hfin
      _ ≤ volume.real ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo1 hi1) +
          volume.real ((MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm ⁻¹' Set.Icc lo2 hi2) :=
          measureReal_union_le _ _
      _ = 2 * δ * (2 * R) ^ 2 := by rw [h1.1, h2.1]; ring
  
  have s6 : ∀ (c : E3) (R a δ K : ℝ) (i : Fin 3)
      (hQ : IsCompact {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R})
      (F : E3 → ℝ) (hF : Continuous F) (hFb : ∀ y, |F y| ≤ K)
      (hFs : ∀ y, F y ≠ 0 → a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ),
      ∫ y in {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R}, |F y| ≤
        K * MeasureTheory.volume.real
          {y : E3 | (∀ k : Fin 3, |y k - c k| ≤ R) ∧ a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ} := by
    intro c R a δ K i hQ F hF hFb hFs
    have hcont : Continuous fun y : E3 => |y i - c i| :=
      ((PiLp.continuous_apply 2 _ i).sub continuous_const).abs
    have hS : MeasurableSet {y : E3 | a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ} :=
      ((isClosed_le continuous_const hcont).inter
        (isClosed_le hcont continuous_const)).measurableSet
    have hQm : MeasurableSet {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R} :=
      hQ.isClosed.measurableSet
    have hpt : ∀ y, |F y| ≤ {y : E3 | a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ}.indicator
        (fun _ => K) y := by
      intro y
      by_cases hy : y ∈ {y : E3 | a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ}
      · rw [Set.indicator_of_mem hy]; exact hFb y
      · rw [Set.indicator_of_notMem hy]
        have : F y = 0 := by
          by_contra h
          exact hy (hFs y h)
        rw [this, abs_zero]
    have hint1 : IntegrableOn (fun y => |F y|) {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R} :=
      hF.abs.continuousOn.integrableOn_compact hQ
    have hint2 : IntegrableOn ({y : E3 | a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ}.indicator
        fun _ => K) {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R} :=
      (continuous_const.continuousOn.integrableOn_compact hQ).indicator hS
    calc ∫ y in {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R}, |F y|
        ≤ ∫ y in {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R},
            {y : E3 | a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ}.indicator (fun _ => K) y :=
          setIntegral_mono_on hint1 hint2 hQm (fun y _ => hpt y)
      _ = ∫ y in {y : E3 | ∀ k : Fin 3, |y k - c k| ≤ R} ∩
            {y : E3 | a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ}, K := by
          rw [setIntegral_indicator hS]
      _ = K * volume.real
          {y : E3 | (∀ k : Fin 3, |y k - c k| ≤ R) ∧ a ≤ |y i - c i| ∧ |y i - c i| ≤ a + δ} := by
          rw [setIntegral_const, smul_eq_mul, mul_comm]
          rfl
  
  obtain ⟨B, hB, hB0⟩ := s1
  have hBnn : 0 ≤ B := (abs_nonneg _).trans (hB 0)
  set δ : ℕ → ℝ := fun m => s / (2 * ((m : ℝ) + 1)) with hδdef
  have hδpos : ∀ m, 0 < δ m := fun m => by simp only [hδdef]; positivity
  have hδle : ∀ m, δ m ≤ s / 2 := by
    intro m
    simp only [hδdef]
    rw [div_le_div_iff₀ (by positivity) (by norm_num)]
    have : (0:ℝ) ≤ m := Nat.cast_nonneg m
    nlinarith
  set σ : ℕ → ℝ → ℝ := fun m t => Real.smoothTransition ((t + 2 * s + δ m) / δ m) *
      Real.smoothTransition ((2 * s + δ m - t) / δ m) with hσdef
  have H := fun m => s3 B (2 * s) (δ m) (hδpos m) hB hB0 (σ m) rfl
  have hχs : ∀ m, ContDiff ℝ ∞ (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) := by
    intro m
    refine contDiff_prod (fun k _ => ?_)
    have hk : ContDiff ℝ ∞ (fun z : E3 => z k) :=
      (PiLp.proj (𝕜 := ℝ) 2 (fun _ : Fin 3 => ℝ) k).contDiff
    exact (H m).1.comp (hk.sub contDiff_const)
  refine ⟨fun m y => ∏ k : Fin 3, σ m (y k - c k), 432 * B * s ^ 2, hχs, ?_, ?_, ?_, ?_,
    fun t => s2 c t, ?_⟩
  · intro m y
    exact ⟨Finset.prod_nonneg fun k _ => ((H m).2.1 _).1,
      Finset.prod_le_one (fun k _ => ((H m).2.1 _).1) (fun k _ => ((H m).2.1 _).2)⟩
  · intro m y hy
    exact Finset.prod_eq_one fun k _ => (H m).2.2.1 _ (hy k)
  · intro m y hy i
    have hne := Finset.prod_ne_zero_iff.mp hy i (Finset.mem_univ i)
    by_contra h
    push_neg at h
    apply hne
    apply (H m).2.2.2.1
    have := hδle m
    linarith
  · intro y hy
    push_neg at hy
    obtain ⟨i, hi⟩ := hy
    have hη : 0 < |y i - c i| - 2 * s := by linarith
    rw [Filter.eventually_atTop]
    refine ⟨⌈s / (2 * (|y i - c i| - 2 * s))⌉₊, fun m hm => ?_⟩
    have hlt : δ m < |y i - c i| - 2 * s := by
      simp only [hδdef]
      rw [div_lt_iff₀ (by positivity)]
      have h1 : s / (2 * (|y i - c i| - 2 * s)) ≤ m :=
        (Nat.le_ceil _).trans (by exact_mod_cast hm)
      rw [div_le_iff₀ (by positivity)] at h1
      nlinarith
    exact Finset.prod_eq_zero (Finset.mem_univ i) ((H m).2.2.2.1 _ (by linarith))
  · intro m
    show ∫ y in {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ 3 * s},
        ∑ i : Fin 3, |partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y| ≤
      432 * B * s ^ 2
    have hform : ∀ (i : Fin 3) (y : E3),
        partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y =
          deriv (σ m) (y i - c i) * ∏ k ∈ Finset.univ.erase i, σ m (y k - c k) :=
      fun i y => s4 (fun _ => σ m) (fun _ => (H m).1.differentiable (by simp)) c y i
    have hKnn : 0 ≤ 2 * B / δ m := div_nonneg (by linarith) (hδpos m).le
    have hbound : ∀ (i : Fin 3) (y : E3),
        |partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y| ≤ 2 * B / δ m := by
      intro i y
      rw [hform, abs_mul, Finset.abs_prod]
      have hp : ∏ k ∈ Finset.univ.erase i, |σ m (y k - c k)| ≤ 1 :=
        Finset.prod_le_one (fun _ _ => abs_nonneg _) (fun k _ => by
          rw [abs_of_nonneg ((H m).2.1 _).1]; exact ((H m).2.1 _).2)
      have hd := (H m).2.2.2.2.1 (y i - c i)
      calc |deriv (σ m) (y i - c i)| * ∏ k ∈ Finset.univ.erase i, |σ m (y k - c k)|
          ≤ 2 * B / δ m * 1 :=
            mul_le_mul hd hp (Finset.prod_nonneg fun _ _ => abs_nonneg _) hKnn
        _ = 2 * B / δ m := mul_one _
    have hsupp : ∀ (i : Fin 3) (y : E3),
        partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y ≠ 0 →
          2 * s ≤ |y i - c i| ∧ |y i - c i| ≤ 2 * s + δ m := by
      intro i y h
      rw [hform] at h
      exact (H m).2.2.2.2.2 _ (left_ne_zero_of_mul h)
    have hcont : ∀ i : Fin 3,
        Continuous fun y => partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y :=
      fun i => ((hχs m).continuous_fderiv (by simp)).clm_apply continuous_const
    have hi : ∀ i : Fin 3, ∫ y in {y : E3 | ∀ i : Fin 3, |y i - c i| ≤ 3 * s},
        |partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y| ≤ 144 * B * s ^ 2 := by
      intro i
      have h6 := s6 c (3 * s) (2 * s) (δ m) (2 * B / δ m) i (s2 c (3 * s))
        (fun y => partialDeriv i (fun z : E3 => ∏ k : Fin 3, σ m (z k - c k)) y) (hcont i)
        (hbound i) (hsupp i)
      have h5 := s5 c (3 * s) (2 * s) (δ m) (by linarith) (hδpos m).le i
      have hδne : δ m ≠ 0 := (hδpos m).ne'
      calc _ ≤ _ := h6
        _ ≤ 2 * B / δ m * (2 * δ m * (2 * (3 * s)) ^ 2) := mul_le_mul_of_nonneg_left h5 hKnn
        _ = 144 * B * s ^ 2 := by field_simp; ring
    rw [integral_finset_sum _ (fun i _ =>
      (hcont i).abs.continuousOn.integrableOn_compact (s2 c (3 * s)))]
    rw [Fin.sum_univ_three]
    linarith [hi 0, hi 1, hi 2]

theorem chart_extend_contMDiff [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (p : M) (f : E3 → ℝ)
    (hf : ContDiff ℝ ∞ f) (Q : Set E3) (hQ : IsCompact Q) (hQt : Q ⊆ (chartAt E3 p).target)
    (hfQ : ∀ y, y ∉ Q → f y = 0) :
    ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ((chartAt E3 p).source.indicator (fun x => f (chartAt E3 p x))) ∧
      ∀ x, (chartAt E3 p).source.indicator (fun x => f (chartAt E3 p x)) x ≠ 0 →
        x ∈ (chartAt E3 p).symm '' Q :=
by
  set e := chartAt E3 p with he
  have hCsub : e.symm '' Q ⊆ e.source := by
    rintro _ ⟨y, hy, rfl⟩
    exact e.map_target (hQt hy)
  have hCc : IsCompact (e.symm '' Q) :=
    hQ.image_of_continuousOn (e.continuousOn_symm.mono hQt)
  have hCcl : IsClosed (e.symm '' Q) := hCc.isClosed
  have hB : ∀ x, e.source.indicator (fun x => f (e x)) x ≠ 0 → x ∈ e.symm '' Q := by
    intro x hx
    by_cases hxs : x ∈ e.source
    · rw [Set.indicator_of_mem hxs] at hx
      have hxQ : e x ∈ Q := by
        by_contra hn
        exact hx (hfQ _ hn)
      exact ⟨e x, hxQ, e.left_inv hxs⟩
    · exact absurd (Set.indicator_of_notMem hxs _) hx
  have hs3 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (f ∘ e) e.source :=
    hf.contMDiff.comp_contMDiffOn contMDiffOn_chart
  refine ⟨fun x => ?_, hB⟩
  by_cases hxs : x ∈ e.source
  · have hn : e.source ∈ 𝓝 x := e.open_source.mem_nhds hxs
    refine (hs3.contMDiffAt hn).congr_of_eventuallyEq ?_
    filter_upwards [hn] with z hz
    rw [Set.indicator_of_mem hz]
    rfl
  · have hxC : x ∉ e.symm '' Q := fun h => hxs (hCsub h)
    have hn : (e.symm '' Q)ᶜ ∈ 𝓝 x := hCcl.isOpen_compl.mem_nhds hxC
    refine (contMDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
    filter_upwards [hn] with z hz
    by_contra h
    exact hz (hB z h)

theorem chart_bump_family_le [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (l : M) (Q : Set E3) (hQ : IsCompact Q) (hQt : Q ⊆ (chartAt E3 l).target) :
    ∃ c : ℝ, 0 ≤ c ∧ ∀ u : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u →
      (∀ x : M, x ∉ (chartAt E3 l).symm '' Q → u x = 0) →
      ∀ (n : ℕ) (pp : Fin n → M) (W : Fin n → Set M) (T : Fin n → Set E3),
        (∀ k, IsOpen (W k) ∧ W k ⊆ (chartAt E3 (pp k)).source) →
        Pairwise (fun k k' => Disjoint (W k) (W k')) →
        (∀ k, IsCompact (T k) ∧ T k ⊆ chartAt E3 (pp k) '' W k) →
        ∑ k, ∫ y in T k, Real.sqrt (g.coeff (chartAt E3 (pp k)).symm y).det *
            Real.sqrt (g.gradInner u u ((chartAt E3 (pp k)).symm y)) ≤
          c * ∫ y in Q, ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| :=
by
  classical
  
  have hGcont : ∀ a b : Fin 3,
      ContinuousOn (fun y => g.coeff (chartAt E3 l).symm y a b) (chartAt E3 l).target :=
    fun a b => (g.smooth l a b).continuousOn
  have hA : Continuous (fun y : (chartAt E3 l).target => g.coeff (chartAt E3 l).symm (y : E3)) :=
    continuous_matrix (fun a b => (hGcont a b).restrict)
  have hdet0 : ∀ y : (chartAt E3 l).target, (g.coeff (chartAt E3 l).symm (y : E3)).det ≠ 0 :=
    fun y => (coeff_chart_symm_posDef g l y y.2).det_pos.ne'
  have hinv : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ) (a b : Fin 3),
      A⁻¹ a b = A.det⁻¹ * A.adjugate a b := by
    intro A a b
    rw [Matrix.inv_def, Ring.inverse_eq_inv, Matrix.smul_apply, smul_eq_mul]
  have hInvC : Continuous (fun y : (chartAt E3 l).target =>
      ∑ a : Fin 3, ∑ b : Fin 3, |(g.coeff (chartAt E3 l).symm (y : E3))⁻¹ a b|) := by
    have h1 : Continuous (fun y : (chartAt E3 l).target =>
        ((g.coeff (chartAt E3 l).symm (y : E3)).det)⁻¹) := hA.matrix_det.inv₀ hdet0
    have h2 := hA.matrix_adjugate
    refine continuous_finset_sum _ (fun a _ => continuous_finset_sum _ (fun b _ => ?_))
    have heq : (fun y : (chartAt E3 l).target =>
        |(g.coeff (chartAt E3 l).symm (y : E3))⁻¹ a b|) = fun y : (chartAt E3 l).target =>
        |((g.coeff (chartAt E3 l).symm (y : E3)).det)⁻¹ *
          (g.coeff (chartAt E3 l).symm (y : E3)).adjugate a b| := by
      funext y; rw [hinv]
    rw [heq]
    exact (h1.mul (h2.matrix_elem a b)).abs
  have hInvCO : ContinuousOn (fun y =>
      ∑ a : Fin 3, ∑ b : Fin 3, |(g.coeff (chartAt E3 l).symm y)⁻¹ a b|) (chartAt E3 l).target :=
    continuousOn_iff_continuous_restrict.2 hInvC
  have hDetCO : ContinuousOn (fun y => Real.sqrt (g.coeff (chartAt E3 l).symm y).det)
      (chartAt E3 l).target :=
    (continuousOn_iff_continuous_restrict.2 hA.matrix_det).sqrt
  obtain ⟨C₁, hC₁⟩ := hQ.exists_bound_of_continuousOn (hDetCO.mono hQt)
  obtain ⟨C₂, hC₂⟩ := hQ.exists_bound_of_continuousOn (hInvCO.mono hQt)
  have hD : ∀ y ∈ Q, Real.sqrt (g.coeff (chartAt E3 l).symm y).det ≤ max C₁ 0 := by
    intro y hy
    have h := hC₁ y hy
    rw [Real.norm_eq_abs] at h
    exact (le_abs_self _).trans (h.trans (le_max_left _ _))
  have hΛ : ∀ y ∈ Q, ∑ a : Fin 3, ∑ b : Fin 3, |(g.coeff (chartAt E3 l).symm y)⁻¹ a b| ≤
      max C₂ 0 := by
    intro y hy
    have h := hC₂ y hy
    rw [Real.norm_eq_abs] at h
    exact (le_abs_self _).trans (h.trans (le_max_left _ _))
  have hΛ0 : (0 : ℝ) ≤ max C₂ 0 := le_max_right _ _
  have hD0 : (0 : ℝ) ≤ max C₁ 0 := le_max_right _ _
  
  have hquad : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ) (v : Fin 3 → ℝ) (L : ℝ),
      ∑ a : Fin 3, ∑ b : Fin 3, |A a b| ≤ L →
      ∑ a : Fin 3, ∑ b : Fin 3, A a b * v a * v b ≤ L * (∑ i : Fin 3, |v i|) ^ 2 := by
    intro A v L hL
    have hS : ∀ a, |v a| ≤ ∑ i : Fin 3, |v i| := fun a =>
      Finset.single_le_sum (f := fun i => |v i|) (fun i _ => abs_nonneg _) (Finset.mem_univ a)
    have hS0 : 0 ≤ ∑ i : Fin 3, |v i| := Finset.sum_nonneg (fun i _ => abs_nonneg _)
    calc ∑ a : Fin 3, ∑ b : Fin 3, A a b * v a * v b
        ≤ ∑ a : Fin 3, ∑ b : Fin 3, |A a b| * (∑ i : Fin 3, |v i|) ^ 2 := by
          refine Finset.sum_le_sum (fun a _ => Finset.sum_le_sum (fun b _ => ?_))
          calc A a b * v a * v b ≤ |A a b * v a * v b| := le_abs_self _
            _ = |A a b| * (|v a| * |v b|) := by rw [abs_mul, abs_mul, mul_assoc]
            _ ≤ |A a b| * ((∑ i : Fin 3, |v i|) * (∑ i : Fin 3, |v i|)) := by
                apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
                exact mul_le_mul (hS a) (hS b) (abs_nonneg _) hS0
            _ = |A a b| * (∑ i : Fin 3, |v i|) ^ 2 := by ring
      _ = (∑ a : Fin 3, ∑ b : Fin 3, |A a b|) * (∑ i : Fin 3, |v i|) ^ 2 := by
          rw [Finset.sum_mul]
          refine Finset.sum_congr rfl (fun a _ => ?_)
          rw [Finset.sum_mul]
      _ ≤ L * (∑ i : Fin 3, |v i|) ^ 2 := mul_le_mul_of_nonneg_right hL (sq_nonneg _)
  refine ⟨max C₁ 0 * Real.sqrt (max C₂ 0), mul_nonneg hD0 (Real.sqrt_nonneg _), ?_⟩
  intro u hu hvan n pp W T hW hWd hT
  
  obtain ⟨δ, hδ, hδt⟩ := hQ.exists_cthickening_subset_open (chartAt E3 l).open_target hQt
  obtain ⟨F, hF0, hF1, hF01⟩ := exists_contMDiffMap_zero_one_of_isClosed 𝓘(ℝ, E3) (n := ⊤)
    (isOpen_thickening (δ := δ) (E := Q)).isClosed_compl
    (isClosed_cthickening (δ := δ / 2) (E := Q))
    (by
      rw [Set.disjoint_compl_left_iff_subset]
      exact cthickening_subset_thickening' hδ (by linarith) Q)
  have hψs : ContDiff ℝ ∞ (F : E3 → ℝ) := contMDiff_iff_contDiff.mp F.contMDiff
  have hψ0 : ∀ y, y ∉ cthickening δ Q → (F : E3 → ℝ) y = 0 := by
    intro y hy
    have hy' : y ∈ (thickening δ Q)ᶜ := fun h => hy (thickening_subset_cthickening _ _ h)
    have := hF0 hy'
    simpa using this
  have hψ1 : ∀ y, y ∈ cthickening (δ / 2) Q → (F : E3 → ℝ) y = 1 := by
    intro y hy
    have := hF1 hy
    simpa using this
  
  have hζ := chart_extend_contMDiff l (F : E3 → ℝ) hψs (cthickening δ Q) hQ.cthickening hδt hψ0
  obtain ⟨ζ, hζdef⟩ : ∃ ζ : M → ℝ,
      ζ = (chartAt E3 l).source.indicator (fun x => (F : E3 → ℝ) (chartAt E3 l x)) := ⟨_, rfl⟩
  rw [← hζdef] at hζ
  have hK' : IsCompact ((chartAt E3 l).symm '' cthickening δ Q) :=
    hQ.cthickening.image_of_continuousOn ((chartAt E3 l).continuousOn_symm.mono hδt)
  have hK'src : (chartAt E3 l).symm '' cthickening δ Q ⊆ (chartAt E3 l).source := by
    rintro _ ⟨y, hy, rfl⟩
    exact (chartAt E3 l).map_target (hδt hy)
  have hζ01 : ∀ x, 0 ≤ ζ x ∧ ζ x ≤ 1 := by
    intro x
    rw [hζdef]
    by_cases hx : x ∈ (chartAt E3 l).source
    · rw [Set.indicator_of_mem hx]
      exact hF01 _
    · rw [Set.indicator_of_notMem hx]
      exact ⟨le_rfl, zero_le_one⟩
  have htsupp : tsupport ζ ⊆ (chartAt E3 l).symm '' cthickening δ Q :=
    closure_minimal (fun x hx => hζ.2 x hx) hK'.isClosed
  have hpart : calPartition ![l] ![ζ] Set.univ := by
    refine ⟨fun j => ?_, fun j x => ?_, fun x => ?_, fun j => ?_⟩
    · obtain rfl : j = 0 := Subsingleton.elim j 0
      exact hζ.1
    · obtain rfl : j = 0 := Subsingleton.elim j 0
      exact (hζ01 x).1
    · simp only [Fin.sum_univ_one, Matrix.cons_val_zero]
      exact (hζ01 x).2
    · obtain rfl : j = 0 := Subsingleton.elim j 0
      refine ⟨hK'.of_isClosed_subset (isClosed_tsupport _) htsupp, ?_⟩
      rw [Set.univ_inter]
      exact htsupp.trans hK'src
  have hE : sepChartMeas (Set.univ : Set M) := by
    intro p
    rw [Set.univ_inter, (chartAt E3 p).image_source_eq_target]
    exact (chartAt E3 p).open_target.measurableSet
  have hO'' : IsOpen ((chartAt E3 l).source ∩ chartAt E3 l ⁻¹' thickening (δ / 2) Q) :=
    (chartAt E3 l).isOpen_inter_preimage isOpen_thickening
  have h1 : ∀ x ∈ (chartAt E3 l).source ∩ chartAt E3 l ⁻¹' thickening (δ / 2) Q,
      ∑ j, (![ζ] : Fin 1 → M → ℝ) j x = 1 := by
    intro x hx
    simp only [Fin.sum_univ_one, Matrix.cons_val_zero]
    rw [hζdef, Set.indicator_of_mem hx.1]
    exact hψ1 _ (thickening_subset_cthickening _ _ hx.2)
  have hKf : IsCompact ((chartAt E3 l).symm '' Q) :=
    hQ.image_of_continuousOn ((chartAt E3 l).continuousOn_symm.mono hQt)
  have hKfO : (chartAt E3 l).symm '' Q ⊆
      (chartAt E3 l).source ∩ chartAt E3 l ⁻¹' thickening (δ / 2) Q := by
    rintro _ ⟨y, hy, rfl⟩
    refine ⟨(chartAt E3 l).map_target (hQt hy), ?_⟩
    rw [Set.mem_preimage, (chartAt E3 l).right_inv (hQt hy)]
    exact self_subset_thickening (by linarith) Q hy
  have hus : ∀ x, x ∉ (chartAt E3 l).symm '' Q → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u x = 0 := by
    intro x hx
    have hev : u =ᶠ[𝓝 x] fun _ => (0 : ℝ) := by
      filter_upwards [hKf.isClosed.isOpen_compl.mem_nhds hx] with z hz
      exact hvan z hz
    rw [hev.mfderiv_eq, mfderiv_const]
  
  have hvol := chart_volume_family_le g Set.univ _ Set.univ _ hE ![l] ![ζ] hpart hO'' h1 u hu
    hKf hKfO hus pp W T hW hWd hT
  have hset : ∀ k, chartAt E3 (pp k) '' (Set.univ ∩ (chartAt E3 (pp k)).source) ∩ T k = T k := by
    intro k
    rw [Set.univ_inter, (chartAt E3 (pp k)).image_source_eq_target]
    refine Set.inter_eq_right.mpr ((hT k).2.trans ?_)
    rw [← (chartAt E3 (pp k)).image_source_eq_target]
    exact Set.image_mono (hW k).2
  simp only [hset] at hvol
  
  have hcv : calVolSum g ![l] ![ζ] Set.univ (fun x => Real.sqrt (g.gradInner u u x)) =
      ∫ y in (chartAt E3 l).target, ζ ((chartAt E3 l).symm y) *
        Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
        Real.sqrt (g.coeff (chartAt E3 l).symm y).det := by
    simp only [calVolSum, Fin.sum_univ_one, Matrix.cons_val_zero]
    rw [Set.univ_inter, (chartAt E3 l).image_source_eq_target]
  have hpg := chart_pullback_gradInner g u hu l
  have hvanish : ∀ y ∈ (chartAt E3 l).target, y ∉ Q →
      g.gradInner u u ((chartAt E3 l).symm y) = 0 := by
    intro y hy hyQ
    have hV : (chartAt E3 l).target ∩ Qᶜ ∈ 𝓝 y :=
      ((chartAt E3 l).open_target.inter hQ.isClosed.isOpen_compl).mem_nhds ⟨hy, hyQ⟩
    have hev : (fun z => u ((chartAt E3 l).symm z)) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hV] with z hz
      apply hvan
      rintro ⟨y', hy', hy'eq⟩
      apply hz.2
      have hzy : z = y' := by
        calc z = chartAt E3 l ((chartAt E3 l).symm z) := ((chartAt E3 l).right_inv hz.1).symm
          _ = chartAt E3 l ((chartAt E3 l).symm y') := by rw [hy'eq]
          _ = y' := (chartAt E3 l).right_inv (hQt hy')
      rw [hzy]
      exact hy'
    have hpd : ∀ i, partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y = 0 := by
      intro i
      simp only [partialDeriv]
      rw [hev.fderiv_eq]
      simp
    rw [hpg.2.1 y hy]
    simp [hpd]
  have hrestr : ∫ y in (chartAt E3 l).target, ζ ((chartAt E3 l).symm y) *
        Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
        Real.sqrt (g.coeff (chartAt E3 l).symm y).det =
      ∫ y in Q, ζ ((chartAt E3 l).symm y) *
        Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
        Real.sqrt (g.coeff (chartAt E3 l).symm y).det := by
    refine setIntegral_eq_of_subset_of_forall_diff_eq_zero
      (chartAt E3 l).open_target.measurableSet hQt (fun y hy => ?_)
    rw [hvanish y hy.1 hy.2]
    simp
  
  have hH0 : ∀ y, 0 ≤ ζ ((chartAt E3 l).symm y) *
      Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
      Real.sqrt (g.coeff (chartAt E3 l).symm y).det :=
    fun y => mul_nonneg (mul_nonneg (hζ01 _).1 (Real.sqrt_nonneg _)) (Real.sqrt_nonneg _)
  have hpt : ∀ y ∈ Q, ζ ((chartAt E3 l).symm y) *
      Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
      Real.sqrt (g.coeff (chartAt E3 l).symm y).det ≤
      max C₁ 0 * Real.sqrt (max C₂ 0) *
        ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| := by
    intro y hy
    have hS0 : 0 ≤ ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| :=
      Finset.sum_nonneg (fun i _ => abs_nonneg _)
    have hg : g.gradInner u u ((chartAt E3 l).symm y) ≤ max C₂ 0 *
        (∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y|) ^ 2 := by
      rw [hpg.2.1 y (hQt hy)]
      exact hquad _ (fun i => partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y) _ (hΛ y hy)
    have hsq : Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) ≤ Real.sqrt (max C₂ 0) *
        ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| := by
      calc Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y))
          ≤ Real.sqrt (max C₂ 0 *
            (∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y|) ^ 2) :=
            Real.sqrt_le_sqrt hg
        _ = Real.sqrt (max C₂ 0) *
            ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| := by
            rw [Real.sqrt_mul hΛ0, Real.sqrt_sq hS0]
    have hz := hζ01 ((chartAt E3 l).symm y)
    calc ζ ((chartAt E3 l).symm y) * Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
          Real.sqrt (g.coeff (chartAt E3 l).symm y).det
        ≤ 1 * (Real.sqrt (max C₂ 0) *
            ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y|) * max C₁ 0 :=
          mul_le_mul (mul_le_mul hz.2 hsq (Real.sqrt_nonneg _) zero_le_one) (hD y hy)
            (Real.sqrt_nonneg _)
            (mul_nonneg zero_le_one (mul_nonneg (Real.sqrt_nonneg _) hS0))
      _ = max C₁ 0 * Real.sqrt (max C₂ 0) *
            ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| := by ring
  have hint : IntegrableOn (fun y => max C₁ 0 * Real.sqrt (max C₂ 0) *
      ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y|) Q := by
    have hfd := hpg.1.continuousOn_fderiv_of_isOpen (chartAt E3 l).open_target (by simp)
    refine ContinuousOn.integrableOn_compact hQ ?_
    refine (continuousOn_const.mul (continuousOn_finset_sum _ (fun i _ => ?_))).mono hQt
    exact (hfd.clm_apply continuousOn_const).abs
  have hmono : ∫ y in Q, ζ ((chartAt E3 l).symm y) *
        Real.sqrt (g.gradInner u u ((chartAt E3 l).symm y)) *
        Real.sqrt (g.coeff (chartAt E3 l).symm y).det ≤
      ∫ y in Q, max C₁ 0 * Real.sqrt (max C₂ 0) *
        ∑ i : Fin 3, |partialDeriv i (fun z => u ((chartAt E3 l).symm z)) y| :=
    integral_mono_of_nonneg
      (ae_restrict_of_forall_mem hQ.isClosed.measurableSet (fun y _ => hH0 y)) hint
      (ae_restrict_of_forall_mem hQ.isClosed.measurableSet hpt)
  calc _ ≤ _ := hvol
    _ = _ := hcv
    _ = _ := hrestr
    _ ≤ _ := hmono
    _ = _ := integral_const_mul _ _

theorem dual_weight_grad_bound [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (K : Set M) (hK : IsClosed K) (hΨK : ∀ x : M, x ∉ K → Ψ x = 1)
    {N : ℕ} (u : Fin N → M → ℝ) (Λ : Fin N → M → ℝ) (D : Fin N → Set M) (B : ℝ)
    (hu : ∀ j, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u j)) (hu01 : ∀ j x, 0 ≤ u j x ∧ u j x ≤ 1)
    (hD : ∀ j, IsOpen (D j)) (hΛ : ∀ j, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (Λ j) (D j))
    (huD : ∀ j, tsupport (u j) ⊆ D j) (hΛΨ : ∀ j, ∀ x ∈ D j, Circle.exp (Λ j x) = Ψ x)
    (hΛB : ∀ j x, |Λ j x| ≤ B) (hcov : ∀ x ∈ K, ∃ j, u j x = 1) :
    ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞
        (fun x => ∑ j, u j x * (∏ l ∈ Finset.Iio j, (1 - u l x)) * Λ j x) ∧
      ∀ (p : M) (y : E3), y ∈ (chartAt E3 p).target → ∀ X : E3,
        |∑ i : Fin 3, (dualOmega (fun x => (Ψ x : ℂ)) p y i -
            partialDeriv i (fun z => ∑ j, u j ((chartAt E3 p).symm z) *
              (∏ l ∈ Finset.Iio j, (1 - u l ((chartAt E3 p).symm z))) *
              Λ j ((chartAt E3 p).symm z)) y) * X i| ≤
          ((N : ℝ) * B) * ∑ j, Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y)) *
            Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3, g.coeff (chartAt E3 p).symm y i k * X i * X k) :=
by
  classical
  
  have hdir : ∀ (φ : E3 →L[ℝ] ℝ) (X : E3), ∑ i : Fin 3, φ (e i) * X i = φ X := by
    intro φ X
    conv_rhs => rw [← (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr X]
    simp [map_sum, map_smul, smul_eq_mul, mul_comm]
  
  have hlift : ∀ (p : M) (ℓ : E3 → ℝ) (y : E3), DifferentiableAt ℝ ℓ y →
      (∀ᶠ z in 𝓝 y, ((Ψ ((chartAt E3 p).symm z) : ℂ)) = Complex.exp ((ℓ z : ℂ) * Complex.I)) →
      ∀ i : Fin 3, dualOmega (fun x => (Ψ x : ℂ)) p y i = partialDeriv i ℓ y := by
    intro p ℓ y hℓ hev i
    have hre : (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).re) =ᶠ[𝓝 y]
        fun z => Real.cos (ℓ z) :=
      hev.mono fun z hz => by simp only []; rw [hz, Complex.exp_ofReal_mul_I_re]
    have him : (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).im) =ᶠ[𝓝 y]
        fun z => Real.sin (ℓ z) :=
      hev.mono fun z hz => by simp only []; rw [hz, Complex.exp_ofReal_mul_I_im]
    have hre0 : ((Ψ ((chartAt E3 p).symm y) : ℂ)).re = Real.cos (ℓ y) := hre.self_of_nhds
    have him0 : ((Ψ ((chartAt E3 p).symm y) : ℂ)).im = Real.sin (ℓ y) := him.self_of_nhds
    simp only [dualOmega, partialDeriv]
    rw [him.fderiv_eq, hre.fderiv_eq, (hℓ.hasFDerivAt.sin).fderiv, (hℓ.hasFDerivAt.cos).fderiv,
      hre0, him0]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
    linear_combination (fderiv ℝ ℓ y (e i)) * Real.cos_sq_add_sin_sq (ℓ y)
  
  have key : ∀ (U L : Fin N → E3 → ℝ) (om : Fin 3 → ℝ) (y X : E3),
      (∀ j, DifferentiableAt ℝ (U j) y) → (∀ j, 0 ≤ U j y ∧ U j y ≤ 1) →
      (∀ j, U j =ᶠ[𝓝 y] 0 ∨
        (DifferentiableAt ℝ (L j) y ∧ ∀ i, partialDeriv i (L j) y = om i)) →
      ((∃ l, U l y = 1) ∨ ∀ i, om i = 0) → (∀ j, |L j y| ≤ B) →
      |∑ i : Fin 3, (om i - partialDeriv i
          (fun z => ∑ j, U j z * (∏ l ∈ Finset.Iio j, (1 - U l z)) * L j z) y) * X i| ≤
        ((N : ℝ) * B) * ∑ l, |∑ i : Fin 3, partialDeriv i (U l) y * X i| := by
    intro U L om y X hU hU01 hcase hom hLB
    have hP0 : ∀ s : Finset (Fin N), 0 ≤ ∏ l ∈ s, (1 - U l y) :=
      fun s => Finset.prod_nonneg (fun l _ => by linarith [(hU01 l).2])
    have hP1 : ∀ s : Finset (Fin N), ∏ l ∈ s, (1 - U l y) ≤ 1 :=
      fun s => Finset.prod_le_one (fun l _ => by linarith [(hU01 l).2])
        (fun l _ => by linarith [(hU01 l).1])
    have hP : ∀ j, HasFDerivAt (fun z => ∏ l ∈ Finset.Iio j, (1 - U l z))
        (∑ l ∈ Finset.Iio j, (∏ l' ∈ (Finset.Iio j).erase l, (1 - U l' y)) •
          (-fderiv ℝ (U l) y)) y :=
      fun j => HasFDerivAt.finset_prod (fun l _ => (hU l).hasFDerivAt.const_sub 1)
    obtain ⟨W', hW'⟩ : ∃ W' : Fin N → (E3 →L[ℝ] ℝ), ∀ j,
        HasFDerivAt (fun z => U j z * ∏ l ∈ Finset.Iio j, (1 - U l z)) (W' j) y ∧
          |W' j X| ≤ ∑ l, |fderiv ℝ (U l) y X| := by
      refine ⟨fun j => U j y • (∑ l ∈ Finset.Iio j,
          (∏ l' ∈ (Finset.Iio j).erase l, (1 - U l' y)) • (-fderiv ℝ (U l) y)) +
          (∏ l ∈ Finset.Iio j, (1 - U l y)) • fderiv ℝ (U j) y,
        fun j => ⟨(hU j).hasFDerivAt.mul (hP j), ?_⟩⟩
      have hval : (U j y • (∑ l ∈ Finset.Iio j,
          (∏ l' ∈ (Finset.Iio j).erase l, (1 - U l' y)) • (-fderiv ℝ (U l) y)) +
          (∏ l ∈ Finset.Iio j, (1 - U l y)) • fderiv ℝ (U j) y) X =
          U j y * ∑ l ∈ Finset.Iio j,
            (∏ l' ∈ (Finset.Iio j).erase l, (1 - U l' y)) * -(fderiv ℝ (U l) y X) +
          (∏ l ∈ Finset.Iio j, (1 - U l y)) * fderiv ℝ (U j) y X := by
        simp [smul_eq_mul]
      show |(U j y • (∑ l ∈ Finset.Iio j,
          (∏ l' ∈ (Finset.Iio j).erase l, (1 - U l' y)) • (-fderiv ℝ (U l) y)) +
          (∏ l ∈ Finset.Iio j, (1 - U l y)) • fderiv ℝ (U j) y) X| ≤ _
      rw [hval]
      have t1 : |U j y * ∑ l ∈ Finset.Iio j,
          (∏ l' ∈ (Finset.Iio j).erase l, (1 - U l' y)) * -(fderiv ℝ (U l) y X)| ≤
          ∑ l ∈ Finset.Iio j, |fderiv ℝ (U l) y X| := by
        rw [abs_mul, abs_of_nonneg (hU01 j).1]
        refine (mul_le_of_le_one_left (abs_nonneg _) (hU01 j).2).trans ?_
        refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum (fun l _ => ?_))
        rw [abs_mul, abs_neg, abs_of_nonneg (hP0 _)]
        exact mul_le_of_le_one_left (abs_nonneg _) (hP1 _)
      have t2 : |(∏ l ∈ Finset.Iio j, (1 - U l y)) * fderiv ℝ (U j) y X| ≤
          |fderiv ℝ (U j) y X| := by
        rw [abs_mul, abs_of_nonneg (hP0 _)]
        exact mul_le_of_le_one_left (abs_nonneg _) (hP1 _)
      have t3 : ∑ l ∈ Finset.Iio j, |fderiv ℝ (U l) y X| + |fderiv ℝ (U j) y X| ≤
          ∑ l, |fderiv ℝ (U l) y X| := by
        rw [add_comm, ← Finset.sum_insert (f := fun l => |fderiv ℝ (U l) y X|)
          Finset.notMem_Iio_self]
        exact Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
          (fun l _ _ => abs_nonneg _)
      exact (abs_add_le _ _).trans (by linarith)
    have hS : ∀ j, ∃ S' : E3 →L[ℝ] ℝ,
        HasFDerivAt (fun z => U j z * (∏ l ∈ Finset.Iio j, (1 - U l z)) * L j z) S' y ∧
        S' X = L j y * W' j X +
          (U j y * ∏ l ∈ Finset.Iio j, (1 - U l y)) * ∑ i : Fin 3, om i * X i := by
      intro j
      rcases hcase j with h0 | ⟨hLd, hLom⟩
      · have hw0 : (fun z => U j z * ∏ l ∈ Finset.Iio j, (1 - U l z)) =ᶠ[𝓝 y]
            fun _ => (0 : ℝ) := by
          filter_upwards [h0] with z hz
          simp only [Pi.zero_apply] at hz
          rw [hz, zero_mul]
        have hW0 : W' j = 0 :=
          (hW' j).1.unique ((hasFDerivAt_const (0 : ℝ) y).congr_of_eventuallyEq hw0)
        have hUy : U j y = 0 := h0.self_of_nhds
        refine ⟨0, (hasFDerivAt_const (0 : ℝ) y).congr_of_eventuallyEq ?_, ?_⟩
        · filter_upwards [h0] with z hz
          simp only [Pi.zero_apply] at hz
          rw [hz, zero_mul, zero_mul]
        · rw [hW0, hUy]
          simp
      · refine ⟨_, (hW' j).1.mul hLd.hasFDerivAt, ?_⟩
        simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
        rw [← hdir (fderiv ℝ (L j) y) X]
        have hLe : ∀ i, fderiv ℝ (L j) y (e i) = om i := fun i => hLom i
        simp only [hLe]
        ring
    choose S' hS'd hS'X using hS
    have hF : HasFDerivAt
        (fun z => ∑ j, U j z * (∏ l ∈ Finset.Iio j, (1 - U l z)) * L j z) (∑ j, S' j) y :=
      HasFDerivAt.fun_sum (fun j _ => hS'd j)
    have hFX : ∑ i : Fin 3, (om i - partialDeriv i
          (fun z => ∑ j, U j z * (∏ l ∈ Finset.Iio j, (1 - U l z)) * L j z) y) * X i =
        (∑ i : Fin 3, om i * X i) - (∑ j, S' j) X := by
      simp only [partialDeriv, hF.fderiv, sub_mul, Finset.sum_sub_distrib]
      rw [hdir]
    have htel : ∑ j, U j y * ∏ l ∈ Finset.Iio j, (1 - U l y) = 1 - ∏ l, (1 - U l y) := by
      rw [Finset.prod_one_sub_ordered]
      simp only [Finset.filter_gt_eq_Iio]
      ring
    have hPc : (∏ l, (1 - U l y)) * ∑ i : Fin 3, om i * X i = 0 := by
      rcases hom with ⟨l, hl⟩ | h0
      · rw [Finset.prod_eq_zero (Finset.mem_univ l) (by rw [hl]; ring), zero_mul]
      · simp [h0]
    rw [hFX, ContinuousLinearMap.sum_apply]
    simp only [hS'X]
    rw [Finset.sum_add_distrib, ← Finset.sum_mul, htel]
    have heq : ∑ i : Fin 3, om i * X i - (∑ j, L j y * W' j X +
        (1 - ∏ l, (1 - U l y)) * ∑ i : Fin 3, om i * X i) = -(∑ j, L j y * W' j X) := by
      linear_combination hPc
    rw [heq, abs_neg]
    calc |∑ j, L j y * W' j X| ≤ ∑ j, |L j y| * |W' j X| :=
          (Finset.abs_sum_le_sum_abs _ _).trans
            (le_of_eq (Finset.sum_congr rfl fun j _ => abs_mul _ _))
      _ ≤ ∑ _j : Fin N, B * ∑ l, |∑ i : Fin 3, partialDeriv i (U l) y * X i| := by
          refine Finset.sum_le_sum (fun j _ => ?_)
          have hB : 0 ≤ B := (abs_nonneg _).trans (hLB j)
          refine mul_le_mul (hLB j) ?_ (abs_nonneg _) hB
          refine ((hW' j).2).trans (le_of_eq ?_)
          refine Finset.sum_congr rfl (fun l _ => ?_)
          rw [← hdir (fderiv ℝ (U l) y) X]
          rfl
      _ = ((N : ℝ) * B) * ∑ l, |∑ i : Fin 3, partialDeriv i (U l) y * X i| := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, mul_assoc]
  refine ⟨?_, ?_⟩
  · 
    intro x
    refine contMDiffAt_finset_sum (fun j _ => ?_)
    have hw : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞
        (fun x => u j x * ∏ l ∈ Finset.Iio j, (1 - u l x)) x :=
      (hu j).contMDiffAt.mul
        (contMDiffAt_finset_prod (fun l _ => contMDiffAt_const.sub (hu l).contMDiffAt))
    by_cases hx : x ∈ D j
    · exact hw.mul ((hΛ j).contMDiffAt ((hD j).mem_nhds hx))
    · have h0 : u j =ᶠ[𝓝 x] 0 := notMem_tsupport_iff_eventuallyEq.1 (fun h => hx (huD j h))
      refine (contMDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [h0] with z hz
      simp only [Pi.zero_apply] at hz
      rw [hz, zero_mul, zero_mul]
  · intro p y hy X
    have hNB : 0 ≤ (N : ℝ) * B := by
      rcases Nat.eq_zero_or_pos N with h | h
      · simp [h]
      · exact mul_nonneg (Nat.cast_nonneg _) ((abs_nonneg _).trans (hΛB ⟨0, h⟩ p))
    have hUd : ∀ j, DifferentiableAt ℝ (fun z => u j ((chartAt E3 p).symm z)) y := fun j =>
      ((chart_pullback_gradInner g (u j) (hu j) p).1.contDiffAt
        ((chartAt E3 p).open_target.mem_nhds hy)).differentiableAt (by simp)
    have hcase : ∀ j, (fun z => u j ((chartAt E3 p).symm z)) =ᶠ[𝓝 y] 0 ∨
        (DifferentiableAt ℝ (fun z => Λ j ((chartAt E3 p).symm z)) y ∧
          ∀ i, partialDeriv i (fun z => Λ j ((chartAt E3 p).symm z)) y =
            dualOmega (fun x => (Ψ x : ℂ)) p y i) := by
      intro j
      by_cases hx : (chartAt E3 p).symm y ∈ tsupport (u j)
      · right
        have hxD : (chartAt E3 p).symm y ∈ D j := huD j hx
        have hVo : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' D j) :=
          (chartAt E3 p).isOpen_inter_preimage_symm (hD j)
        have hyV : y ∈ (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' D j := ⟨hy, hxD⟩
        have hsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (Λ j ∘ (chartAt E3 p).symm)
            ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' D j) :=
          (hΛ j).comp (contMDiffOn_chart_symm.mono Set.inter_subset_left) (fun z hz => hz.2)
        have hdiff : DifferentiableAt ℝ (fun z => Λ j ((chartAt E3 p).symm z)) y :=
          ((contMDiffOn_iff_contDiffOn.mp hsm).contDiffAt (hVo.mem_nhds hyV)).differentiableAt
            (by simp)
        refine ⟨hdiff, fun i => (hlift p _ y hdiff ?_ i).symm⟩
        filter_upwards [hVo.mem_nhds hyV] with z hz
        rw [← hΛΨ j _ hz.2, Circle.coe_exp]
      · left
        have h0 : u j =ᶠ[𝓝 ((chartAt E3 p).symm y)] 0 := notMem_tsupport_iff_eventuallyEq.1 hx
        exact Filter.Tendsto.eventually ((chartAt E3 p).continuousAt_symm hy) h0
    have hom : (∃ l, u l ((chartAt E3 p).symm y) = 1) ∨
        ∀ i, dualOmega (fun x => (Ψ x : ℂ)) p y i = 0 := by
      by_cases hxK : (chartAt E3 p).symm y ∈ K
      · exact Or.inl (hcov _ hxK)
      · right
        intro i
        have hev : (chartAt E3 p).symm ⁻¹' Kᶜ ∈ 𝓝 y :=
          ((chartAt E3 p).continuousAt_symm hy).preimage_mem_nhds (hK.isOpen_compl.mem_nhds hxK)
        have hev2 : ∀ᶠ z in 𝓝 y, ((Ψ ((chartAt E3 p).symm z) : ℂ)) =
            Complex.exp ((((fun _ : E3 => (0 : ℝ)) z : ℝ) : ℂ) * Complex.I) := by
          filter_upwards [hev] with z hz
          rw [hΨK _ hz]
          simp
        rw [hlift p (fun _ => (0 : ℝ)) y (differentiableAt_const 0) hev2 i]
        simp [partialDeriv]
    have c4 : ∀ l, |∑ i : Fin 3, partialDeriv i (fun z => u l ((chartAt E3 p).symm z)) y * X i| ≤
        Real.sqrt (g.gradInner (u l) (u l) ((chartAt E3 p).symm y)) *
          Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3, g.coeff (chartAt E3 p).symm y i k * X i * X k) := by
      intro l
      have hA := coeff_chart_symm_posDef g p y hy
      have hcs := smth_quad_cauchySchwarz _ hA (fun i => X i)
        (fun i => partialDeriv i (fun z => u l ((chartAt E3 p).symm z)) y)
      have hS := (chart_pullback_gradInner g (u l) (hu l) p).2.1 y hy
      have hQ : 0 ≤ ∑ i : Fin 3, ∑ k : Fin 3, g.coeff (chartAt E3 p).symm y i k * X i * X k := by
        have h := hA.posSemidef.dotProduct_mulVec_nonneg (fun i => X i)
        simp only [dotProduct, Matrix.mulVec, star_trivial, Finset.mul_sum] at h
        refine h.trans_eq (Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl
          (fun k _ => by ring)))
      rw [← Real.sqrt_mul' _ hQ]
      apply Real.abs_le_sqrt
      have h1 : (∑ i : Fin 3, partialDeriv i (fun z => u l ((chartAt E3 p).symm z)) y * X i) =
          ∑ i : Fin 3, X i * partialDeriv i (fun z => u l ((chartAt E3 p).symm z)) y :=
        Finset.sum_congr rfl (fun i _ => mul_comm _ _)
      rw [h1, hS, mul_comm]
      exact hcs
    have hkey := key (fun j z => u j ((chartAt E3 p).symm z))
      (fun j z => Λ j ((chartAt E3 p).symm z))
      (fun i => dualOmega (fun x => (Ψ x : ℂ)) p y i) y X hUd (fun j => hu01 j _) hcase hom
      (fun j => hΛB j _)
    refine hkey.trans ?_
    refine mul_le_mul_of_nonneg_left ?_ hNB
    exact Finset.sum_le_sum (fun l _ => c4 l)

theorem sepDensDiv_ibp_of_vanishing (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (T : Set E3)
    (hT : IsOpen T) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) T)
    (hdet : ∀ y ∈ T, 0 < (G y).det) (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f T)
    (X : E3 → E3) (hXc : HasCompactSupport X) (hXT : tsupport X ⊆ T)
    (hXs : ∀ y, ContDiffAt ℝ ∞ X y ∨ f =ᶠ[𝓝 y] 0) (h : E3 → ℝ) :
    ∫ y, (f y * sepDensDiv G X y + h y) =
      ∫ y, (h y - Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * X y i) :=
by
  classical
  
  have hσ : ∀ y ∈ T, ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y := by
    intro y hy
    have hc : ∀ i j : Fin 3, ContDiffAt ℝ ∞ (fun z => G z i j) y :=
      fun i j => (hG i j).contDiffAt (hT.mem_nhds hy)
    have hdetf : (fun z => (G z).det) = fun z =>
        G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1 -
          G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0 +
          G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
      funext z
      exact Matrix.det_fin_three (G z)
    have a1 := ((hc 0 0).mul (hc 1 1)).mul (hc 2 2)
    have a2 := ((hc 0 0).mul (hc 1 2)).mul (hc 2 1)
    have a3 := ((hc 0 1).mul (hc 1 0)).mul (hc 2 2)
    have a4 := ((hc 0 1).mul (hc 1 2)).mul (hc 2 0)
    have a5 := ((hc 0 2).mul (hc 1 0)).mul (hc 2 1)
    have a6 := ((hc 0 2).mul (hc 1 1)).mul (hc 2 0)
    have hd : ContDiffAt ℝ ∞ (fun z => (G z).det) y := by
      rw [hdetf]
      exact ((((a1.sub a2).sub a3).add a4).add a5).sub a6
    exact hd.sqrt (ne_of_gt (hdet y hy))
  
  obtain ⟨F, hFdef⟩ : ∃ F : Fin 3 → E3 → ℝ,
      ∀ i z, F i z = Real.sqrt (G z).det * (f z • X z) i := ⟨_, fun _ _ => rfl⟩
  have hFs : ∀ i, ContDiff ℝ ∞ (F i) := by
    intro i
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ tsupport X
    · have hyT := hXT hy
      rcases hXs y with hX | hf0
      · have h1 : ContDiffAt ℝ ∞ (fun z => f z • X z) y :=
          (hf.contDiffAt (hT.mem_nhds hyT)).smul hX
        have h2 := (contDiffAt_piLp 2).1 h1 i
        have h3 := (hσ y hyT).mul h2
        refine h3.congr_of_eventuallyEq (Filter.Eventually.of_forall fun z => ?_)
        rw [hFdef]
      · refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
        filter_upwards [hf0] with z hz
        have hz' : f z = 0 := hz
        rw [hFdef, hz']
        simp
    · have hX0 : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hy
      refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [hX0] with z hz
      have hz' : X z = 0 := hz
      rw [hFdef, hz']
      simp
  have hFc : ∀ i, HasCompactSupport (F i) := by
    intro i
    refine hXc.mono' ?_
    intro z hz
    refine subset_tsupport _ ?_
    rw [Function.mem_support] at hz ⊢
    intro hX0
    apply hz
    rw [hFdef, hX0]
    simp
  have hI : ∀ i, Integrable (partialDeriv i (F i)) ∧ ∫ y, partialDeriv i (F i) y = 0 := by
    intro i
    have hcont : Continuous (partialDeriv i (F i)) :=
      ((hFs i).continuous_fderiv (by simp)).clm_apply continuous_const
    have hcs : HasCompactSupport (partialDeriv i (F i)) := (hFc i).fderiv_apply ℝ (e i)
    have hint : Integrable (partialDeriv i (F i)) := hcont.integrable_of_hasCompactSupport hcs
    refine ⟨hint, ?_⟩
    have key := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := volume)
      (f := fun _ : E3 => (1 : ℝ)) (g := F i) (v := e i) ?_ ?_ ?_ (differentiable_const 1)
      ((hFs i).differentiable (by simp))
    · simpa [partialDeriv] using key
    · simp
    · simpa [partialDeriv] using hint
    · simpa using (hFs i).continuous.integrable_of_hasCompactSupport (hFc i)
  
  have hpt : ∀ y, f y * sepDensDiv G X y = (∑ i, partialDeriv i (F i) y) -
      Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * X y i := by
    intro y
    by_cases hy : y ∈ tsupport X
    · have hyT := hXT hy
      rcases hXs y with hX | hf0
      · have hfd : DifferentiableAt ℝ f y :=
          (hf.contDiffAt (hT.mem_nhds hyT)).differentiableAt (by simp)
        have hgd : ∀ i : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * X z i) y :=
          fun i => ((hσ y hyT).mul ((contDiffAt_piLp 2).1 hX i)).differentiableAt (by simp)
        have hcomp : ∀ i : Fin 3, partialDeriv i (F i) y =
            f y * partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y +
              Real.sqrt (G y).det * X y i * partialDeriv i f y := by
          intro i
          have hfun : F i = fun z => f z * (Real.sqrt (G z).det * X z i) := by
            funext z
            rw [hFdef]
            simp only [PiLp.smul_apply, smul_eq_mul]
            ring
          rw [hfun]
          unfold partialDeriv
          have hm : HasFDerivAt (fun z => f z * (Real.sqrt (G z).det * X z i))
              (f y • fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y +
                (Real.sqrt (G y).det * X y i) • fderiv ℝ f y) y :=
            HasFDerivAt.mul hfd.hasFDerivAt (hgd i).hasFDerivAt
          rw [hm.fderiv]
          simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
          try ring
        simp only [hcomp, sepDensDiv, Fin.sum_univ_three]
        ring
      · have hfy : f y = 0 := hf0.eq_of_nhds
        have hdf : ∀ i, partialDeriv i f y = 0 := by
          intro i
          unfold partialDeriv
          rw [hf0.fderiv_eq]
          simp
        have hFz : ∀ i, partialDeriv i (F i) y = 0 := by
          intro i
          unfold partialDeriv
          have hev : F i =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
            filter_upwards [hf0] with z hz
            have hz' : f z = 0 := hz
            rw [hFdef, hz']
            simp
          rw [hev.fderiv_eq]
          simp
        simp [hfy, hdf, hFz]
    · have hX0 : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hy
      have hXy : X y = 0 := hX0.eq_of_nhds
      have hS : sepDensDiv G X y = 0 := by
        simp only [sepDensDiv]
        refine Finset.sum_eq_zero fun i _ => ?_
        unfold partialDeriv
        have hev : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
          filter_upwards [hX0] with z hz
          have hz' : X z = 0 := hz
          rw [hz']
          simp
        rw [hev.fderiv_eq]
        simp
      have hFz : ∀ i, partialDeriv i (F i) y = 0 := by
        intro i
        unfold partialDeriv
        have hev : F i =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
          filter_upwards [hX0] with z hz
          have hz' : X z = 0 := hz
          rw [hFdef, hz']
          simp
        rw [hev.fderiv_eq]
        simp
      simp [hS, hFz, hXy]
  
  have hDint : Integrable (fun y => ∑ i, partialDeriv i (F i) y) :=
    integrable_finset_sum _ (fun i _ => (hI i).1)
  have hD0 : ∫ y, ∑ i, partialDeriv i (F i) y = 0 := by
    rw [integral_finset_sum _ (fun i _ => (hI i).1)]
    exact Finset.sum_eq_zero (fun i _ => (hI i).2)
  have hLHS : (fun y => f y * sepDensDiv G X y + h y) = fun y =>
      (∑ i, partialDeriv i (F i) y) +
        (h y - Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * X y i) := by
    funext y
    rw [hpt y]
    ring
  rw [hLHS]
  by_cases hR : Integrable
      (fun y => h y - Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * X y i)
  · rw [integral_add hDint hR, hD0, zero_add]
  · rw [integral_undef hR, integral_undef]
    intro hsum
    apply hR
    refine (hsum.sub hDint).congr (Filter.Eventually.of_forall fun y => ?_)
    simp

theorem integral_mul_add_tendsto_of_bdd (D b : E3 → ℝ) (hD : MeasureTheory.Integrable D)
    (ψ : ℕ → E3 → ℝ) (ψ₀ : E3 → ℝ) (B : ℝ)
    (hψm : ∀ m, MeasureTheory.AEStronglyMeasurable (ψ m) MeasureTheory.volume)
    (hψB : ∀ m y, |ψ m y| ≤ B)
    (hlim : ∀ y, Tendsto (fun m => ψ m y) atTop (𝓝 (ψ₀ y))) :
    Tendsto (fun m => ∫ y, (ψ m y * D y + b y)) atTop (𝓝 (∫ y, (ψ₀ y * D y + b y))) :=
by
  have hψ₀m : MeasureTheory.AEStronglyMeasurable ψ₀ MeasureTheory.volume :=
    aestronglyMeasurable_of_tendsto_ae atTop hψm (MeasureTheory.ae_of_all _ hlim)
  have hψ₀B : ∀ y, |ψ₀ y| ≤ B := fun y => le_of_tendsto' ((hlim y).abs) (fun m => hψB m y)
  have hIm : ∀ m, MeasureTheory.Integrable (fun y => ψ m y * D y) := by
    intro m
    exact hD.bdd_mul (hψm m) (MeasureTheory.ae_of_all _ fun y => by
      rw [Real.norm_eq_abs]; exact hψB m y)
  have hI0 : MeasureTheory.Integrable (fun y => ψ₀ y * D y) :=
    hD.bdd_mul hψ₀m (MeasureTheory.ae_of_all _ fun y => by
      rw [Real.norm_eq_abs]; exact hψ₀B y)
  by_cases hb : MeasureTheory.Integrable b
  · have hDCT : Tendsto (fun m => ∫ y, ψ m y * D y) atTop (𝓝 (∫ y, ψ₀ y * D y)) := by
      refine MeasureTheory.tendsto_integral_of_dominated_convergence (fun y => B * ‖D y‖)
        (fun n => (hIm n).aestronglyMeasurable) (hD.norm.const_mul B) ?_ ?_
      · intro n
        refine MeasureTheory.ae_of_all _ fun y => ?_
        rw [norm_mul, Real.norm_eq_abs]
        exact mul_le_mul_of_nonneg_right (hψB n y) (norm_nonneg _)
      · exact MeasureTheory.ae_of_all _ fun y => (hlim y).mul_const (D y)
    have h1 : ∀ m, ∫ y, (ψ m y * D y + b y) = (∫ y, ψ m y * D y) + ∫ y, b y :=
      fun m => MeasureTheory.integral_add (hIm m) hb
    have h2 : ∫ y, (ψ₀ y * D y + b y) = (∫ y, ψ₀ y * D y) + ∫ y, b y :=
      MeasureTheory.integral_add hI0 hb
    simp_rw [h1, h2]
    exact hDCT.add_const _
  · have hn : ∀ (f : E3 → ℝ), MeasureTheory.Integrable (fun y => f y * D y) →
        ∫ y, (f y * D y + b y) = 0 := by
      intro f hf
      apply MeasureTheory.integral_undef
      intro hF
      apply hb
      have := hF.sub hf
      refine this.congr (MeasureTheory.ae_of_all _ fun y => ?_)
      simp
    have h1 : ∀ m, ∫ y, (ψ m y * D y + b y) = 0 := fun m => hn (ψ m) (hIm m)
    simp_rw [h1, hn ψ₀ hI0]
    exact tendsto_const_nhds

theorem ennreal_sum_iSup_le_of_choice {α : Type*} {n : ℕ} (P : Fin n → α → Prop)
    (hP : ∀ k, ∃ x, P k x) (F : Fin n → α → ENNReal) (a : ENNReal)
    (h : ∀ X : Fin n → α, (∀ k, P k (X k)) → ∑ k, F k (X k) ≤ a) :
    ∑ k, ⨆ (x : α) (_ : P k x), F k x ≤ a :=
by
  classical
  have key : ∀ (m : ℕ) (Q : Fin m → α → Prop), (∀ k, ∃ x, Q k x) →
      ∀ (G : Fin m → α → ENNReal) (c : ENNReal),
      (∀ X : Fin m → α, (∀ k, Q k (X k)) → c + ∑ k, G k (X k) ≤ a) →
      c + ∑ k, ⨆ (x : α) (_ : Q k x), G k x ≤ a := by
    intro m
    induction m with
    | zero =>
      intro Q hQ G c hc
      simpa using hc (fun k => Fin.elim0 k) (fun k => Fin.elim0 k)
    | succ m ih =>
      intro Q hQ G c hc
      rw [Fin.sum_univ_succ, ← add_assoc]
      have hsub : (⨆ (x : α) (_ : Q 0 x), G 0 x) = ⨆ y : {x // Q 0 x}, G 0 y.1 :=
        iSup_subtype'
      rw [hsub]
      haveI : Nonempty {x // Q 0 x} := by
        obtain ⟨x, hx⟩ := hQ 0
        exact ⟨⟨x, hx⟩⟩
      rw [ENNReal.add_iSup, ENNReal.iSup_add]
      refine iSup_le fun y => ?_
      refine ih (fun k => Q k.succ) (fun k => hQ k.succ) (fun k => G k.succ) (c + G 0 y.1) ?_
      intro X hX
      have hadm : ∀ k, Q k ((Fin.cons y.1 X : Fin (m + 1) → α) k) := by
        intro k
        refine Fin.cases ?_ (fun j => ?_) k
        · simpa using y.2
        · simpa using hX j
      have := hc (Fin.cons y.1 X) hadm
      rw [Fin.sum_univ_succ] at this
      simpa [add_assoc] using this
  simpa using key n P hP F 0 (fun X hX => by simpa using h X hX)

theorem dual_chart_grad_integral_le [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψc : M → ℂ) (p : M) (ψ : M → ℝ) {N : ℕ} (u : Fin N → M → ℝ)
    (hu : ∀ j, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u j)) (B' : ℝ) (hB' : 0 ≤ B')
    (hgrad : ∀ y ∈ (chartAt E3 p).target, ∀ X : E3,
      |∑ i : Fin 3, (dualOmega Ψc p y i -
          partialDeriv i (fun z => ψ ((chartAt E3 p).symm z)) y) * X i| ≤
        B' * ∑ j, Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y)) *
          Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3, g.coeff (chartAt E3 p).symm y i k * X i * X k))
    (X : E3 → E3) (hXc : HasCompactSupport X) (hXt : tsupport X ⊆ (chartAt E3 p).target)
    (hXn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, g.coeff (chartAt E3 p).symm y i j * X y i * X y j ≤ 1) :
    |∫ y, Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
        ∑ i : Fin 3, (dualOmega Ψc p y i -
          partialDeriv i (fun z => ψ ((chartAt E3 p).symm z)) y) * X y i| ≤
      B' * ∑ j, ∫ y in tsupport X, Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
        Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y)) :=
by
  classical
  set T := tsupport X with hTdef
  have hTc : IsCompact T := hXc.isCompact
  have hTm : MeasurableSet T := (isClosed_tsupport X).measurableSet
  set f : Fin N → E3 → ℝ := fun j y => Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
    Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y)) with hfdef
  have hfi : ∀ j, MeasureTheory.IntegrableOn (f j) T := by
    intro j
    exact ((chart_pullback_gradInner g (u j) (hu j) p).2.2.mono hXt).integrableOn_compact hTc
  set H : E3 → ℝ := fun y => B' * ∑ j, f j y with hHdef
  have hHi : MeasureTheory.IntegrableOn H T := by
    have : MeasureTheory.IntegrableOn (fun y => ∑ j, f j y) T :=
      MeasureTheory.integrable_finset_sum _ (fun j _ => hfi j)
    exact this.const_mul B'
  have hhi : MeasureTheory.Integrable (T.indicator H) := hHi.integrable_indicator hTm
  have hpt : ∀ y, ‖Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
        ∑ i : Fin 3, (dualOmega Ψc p y i -
          partialDeriv i (fun z => ψ ((chartAt E3 p).symm z)) y) * X y i‖ ≤ T.indicator H y := by
    intro y
    by_cases hy : y ∈ T
    · rw [Set.indicator_of_mem hy, Real.norm_eq_abs, abs_mul,
        abs_of_nonneg (Real.sqrt_nonneg _)]
      have hyU : y ∈ (chartAt E3 p).target := hXt hy
      have h1 := hgrad y hyU (X y)
      have hq : Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3,
          g.coeff (chartAt E3 p).symm y i k * X y i * X y k) ≤ 1 :=
        Real.sqrt_le_one.mpr (hXn y)
      have h2 : B' * ∑ j, Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y)) *
          Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3,
            g.coeff (chartAt E3 p).symm y i k * X y i * X y k) ≤
          B' * ∑ j, Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y)) := by
        apply mul_le_mul_of_nonneg_left _ hB'
        apply Finset.sum_le_sum
        intro j _
        exact mul_le_of_le_one_right (Real.sqrt_nonneg _) hq
      have h3 := le_trans h1 h2
      calc Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            |∑ i : Fin 3, (dualOmega Ψc p y i -
              partialDeriv i (fun z => ψ ((chartAt E3 p).symm z)) y) * X y i|
          ≤ Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            (B' * ∑ j, Real.sqrt (g.gradInner (u j) (u j) ((chartAt E3 p).symm y))) :=
            mul_le_mul_of_nonneg_left h3 (Real.sqrt_nonneg _)
        _ = H y := by
            simp only [hHdef, hfdef, Finset.mul_sum]
            refine Finset.sum_congr rfl fun j _ => ?_
            ring
    · rw [Set.indicator_of_notMem hy]
      have hX0 : X y = 0 := image_eq_zero_of_notMem_tsupport hy
      simp [hX0]
  have hmain := MeasureTheory.norm_integral_le_of_norm_le hhi
    (Filter.Eventually.of_forall hpt)
  rw [Real.norm_eq_abs] at hmain
  refine le_trans hmain (le_of_eq ?_)
  rw [MeasureTheory.integral_indicator hTm]
  simp only [hHdef]
  rw [MeasureTheory.integral_const_mul, MeasureTheory.integral_finset_sum _ (fun j _ => hfi j)]

theorem chart_indicator_limit_props (p : M) (φ₀ : M → ℝ) (φ : ℕ → M → ℝ) (B : ℝ)
    (hφc : ∀ m, Continuous (φ m)) (hφB : ∀ m x, |φ m x| ≤ B)
    (hlim : ∀ x, Tendsto (fun m => φ m x) atTop (𝓝 (φ₀ x))) :
    (∀ m, Measurable ((chartAt E3 p).target.indicator
        (fun z => φ m ((chartAt E3 p).symm z)))) ∧
    (∀ m y, |(chartAt E3 p).target.indicator (fun z => φ m ((chartAt E3 p).symm z)) y| ≤ B) ∧
    (∀ y, Tendsto (fun m => (chartAt E3 p).target.indicator
        (fun z => φ m ((chartAt E3 p).symm z)) y) atTop
      (𝓝 ((chartAt E3 p).target.indicator (fun z => φ₀ ((chartAt E3 p).symm z)) y))) ∧
    (∀ U : Set E3, IsOpen U → U ⊆ (chartAt E3 p).target →
      MeasureTheory.LocallyIntegrableOn (fun z => φ₀ ((chartAt E3 p).symm z)) U) :=
by
  classical
  have hB : 0 ≤ B := le_trans (abs_nonneg _) (hφB 0 p)
  have h1 : ∀ m, Measurable ((chartAt E3 p).target.indicator
      (fun z => φ m ((chartAt E3 p).symm z))) := by
    intro m
    rw [← Set.piecewise_eq_indicator]
    exact ContinuousOn.measurable_piecewise
      ((hφc m).comp_continuousOn (chartAt E3 p).continuousOn_symm)
      continuousOn_const (chartAt E3 p).open_target.measurableSet
  have h2 : ∀ m y,
      |(chartAt E3 p).target.indicator (fun z => φ m ((chartAt E3 p).symm z)) y| ≤ B := by
    intro m y
    by_cases hy : y ∈ (chartAt E3 p).target
    · rw [Set.indicator_of_mem hy]
      exact hφB m _
    · rw [Set.indicator_of_notMem hy, abs_zero]
      exact hB
  have h3 : ∀ y, Tendsto (fun m => (chartAt E3 p).target.indicator
        (fun z => φ m ((chartAt E3 p).symm z)) y) atTop
      (𝓝 ((chartAt E3 p).target.indicator (fun z => φ₀ ((chartAt E3 p).symm z)) y)) := by
    intro y
    by_cases hy : y ∈ (chartAt E3 p).target
    · simp only [Set.indicator_of_mem hy]
      exact hlim _
    · simp only [Set.indicator_of_notMem hy]
      exact tendsto_const_nhds
  have h5 : Measurable ((chartAt E3 p).target.indicator
      (fun z => φ₀ ((chartAt E3 p).symm z))) :=
    measurable_of_tendsto_metrizable h1 (tendsto_pi_nhds.2 h3)
  have h6 : ∀ y,
      |(chartAt E3 p).target.indicator (fun z => φ₀ ((chartAt E3 p).symm z)) y| ≤ B :=
    fun y => le_of_tendsto' (h3 y).abs (fun m => h2 m y)
  refine ⟨h1, h2, h3, ?_⟩
  intro U hU hUT
  rw [MeasureTheory.locallyIntegrableOn_iff hU.isLocallyClosed]
  intro K hKU hK
  have h8 : MeasureTheory.IntegrableOn ((chartAt E3 p).target.indicator
      (fun z => φ₀ ((chartAt E3 p).symm z))) K :=
    MeasureTheory.Measure.integrableOn_of_bounded (M := B) hK.measure_lt_top.ne
      h5.aestronglyMeasurable
      (Filter.Eventually.of_forall (fun y => by rw [Real.norm_eq_abs]; exact h6 y))
  exact h8.congr_fun (fun y hy => Set.indicator_of_mem (hUT (hKU hy)) _)
    hK.isClosed.measurableSet

theorem dual_var_lt_top_of_smooth_approx [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Ψc : M → ℂ) (Ω Kc L : Set M) (hKc : IsClosed Kc)
    (hL : IsClosed L) (hLKc : Disjoint L Kc)
    (φ₀ : M → ℝ) (φ : ℕ → M → ℝ) (B B' C : ℝ) (hB' : 0 ≤ B')
    (hφs : ∀ m, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (φ m))
    (hφL : ∀ m x, x ∉ L → φ m x = 0)
    (hφB : ∀ m x, |φ m x| ≤ B)
    (hlim : ∀ x, Tendsto (fun m => φ m x) atTop (𝓝 (φ₀ x)))
    {N : ℕ} (u : ℕ → Fin N → M → ℝ)
    (hus : ∀ m j, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u m j))
    (hgrad : ∀ (m : ℕ) (p : M) (y : E3), y ∈ (chartAt E3 p).target → ∀ X : E3,
      |∑ i : Fin 3, (dualOmega Ψc p y i -
          partialDeriv i (fun z => φ m ((chartAt E3 p).symm z)) y) * X i| ≤
        B' * ∑ j, Real.sqrt (g.gradInner (u m j) (u m j) ((chartAt E3 p).symm y)) *
          Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3, g.coeff (chartAt E3 p).symm y i k * X i * X k))
    (hfam : ∀ (m : ℕ) (j : Fin N) (n : ℕ) (pp : Fin n → M) (W : Fin n → Set M)
      (T : Fin n → Set E3),
      (∀ k, IsOpen (W k) ∧ W k ⊆ (chartAt E3 (pp k)).source) →
      Pairwise (fun k k' => Disjoint (W k) (W k')) →
      (∀ k, IsCompact (T k) ∧ T k ⊆ chartAt E3 (pp k) '' W k) →
      ∑ k, ∫ y in T k, Real.sqrt (g.coeff (chartAt E3 (pp k)).symm y).det *
          Real.sqrt (g.gradInner (u m j) (u m j) ((chartAt E3 (pp k)).symm y)) ≤ C) :
    dualRiemVar g Ψc φ₀ Ω Kc < ⊤ :=
by
  classical
  
  suffices hle : dualRiemVar g Ψc φ₀ Ω Kc ≤ ENNReal.ofReal (B' * (N : ℝ) * C) from
    lt_of_le_of_lt hle ENNReal.ofReal_lt_top
  unfold dualRiemVar
  refine iSup_le fun n => iSup_le fun p => iSup_le fun W => iSup_le fun hcond => ?_
  have hUo : ∀ k, IsOpen (chartAt E3 (p k) '' W k) := fun k =>
    (chartAt E3 (p k)).isOpen_image_of_subset_source (hcond.1 k).1
      ((hcond.1 k).2.trans Set.inter_subset_right)
  have hUt : ∀ k, chartAt E3 (p k) '' W k ⊆ (chartAt E3 (p k)).target := by
    rintro k _ ⟨x, hx, rfl⟩
    exact (chartAt E3 (p k)).map_source ((hcond.1 k).2 hx).2
  have hS5 := fun k => chart_indicator_limit_props (p k) φ₀ φ B
    (fun m => (hφs m).continuous) hφB hlim
  
  have hloc : ∀ k, MeasureTheory.LocallyIntegrableOn
      (fun y => φ₀ ((chartAt E3 (p k)).symm y)) (chartAt E3 (p k) '' W k) :=
    fun k => (hS5 k).2.2.2 _ (hUo k) (hUt k)
  have h1 : ∀ k, IsOpen (W k) ∧ W k ⊆ (chartAt E3 (p k)).source := fun k =>
    ⟨(hcond.1 k).1, (hcond.1 k).2.trans Set.inter_subset_right⟩
  
  refine le_trans (Finset.sum_le_sum fun k _ => ?_)
    (ennreal_sum_iSup_le_of_choice
      (fun k (X : E3 → E3) =>
        (∀ y, y ∉ chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source) →
          ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
        tsupport X ⊆ chartAt E3 (p k) '' W k ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
          g.coeff (chartAt E3 (p k)).symm y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 (p k)).symm) X y| ≤ C)
      ?_
      (fun k (X : E3 → E3) => ENNReal.ofReal (∫ y,
        (φ₀ ((chartAt E3 (p k)).symm y) * sepDensDiv (g.coeff (chartAt E3 (p k)).symm) X y +
          Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψc (p k) y i * X y i)))
      (ENNReal.ofReal (B' * (N : ℝ) * C)) ?_)
  · 
    unfold dualVarG
    rw [iSup_neg (not_not.2 (hloc k)), bot_sup_eq]
  · 
    intro k
    refine ⟨0, fun _ _ => contDiffAt_const, HasCompactSupport.zero, ?_, fun y => by simp, 0,
      fun y => ?_⟩
    · simp [tsupport_zero]
    · rw [(sepDensDiv_support_integrable _ _).1 y (by simp [tsupport_zero])]
      simp
  · intro X hX
    have hXt : ∀ k, tsupport (X k) ⊆ (chartAt E3 (p k)).target := fun k =>
      (hX k).2.2.1.trans (hUt k)
    obtain ⟨J, hJ⟩ : ∃ J : Fin n → ℕ → ℝ, ∀ k m, J k m = ∫ y,
        (φ m ((chartAt E3 (p k)).symm y) * sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k) y +
          Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i) := ⟨_, fun _ _ => rfl⟩
    obtain ⟨I, hI⟩ : ∃ I : Fin n → ℝ, ∀ k, I k = ∫ y,
        (φ₀ ((chartAt E3 (p k)).symm y) * sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k) y +
          Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i) := ⟨_, fun _ => rfl⟩
    
    have hIBP : ∀ k m, J k m = ∫ y, Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
        ∑ i : Fin 3, (dualOmega Ψc (p k) y i -
          partialDeriv i (fun z => φ m ((chartAt E3 (p k)).symm z)) y) * X k y i := by
      intro k m
      have hXs : ∀ y, ContDiffAt ℝ ∞ (X k) y ∨
          (fun z => φ m ((chartAt E3 (p k)).symm z)) =ᶠ[𝓝 y] 0 := by
        intro y
        by_cases hy : y ∈ chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source)
        · right
          obtain ⟨x, ⟨hxK, hxs⟩, rfl⟩ := hy
          have hxL : x ∈ Lᶜ := fun hxL => Set.disjoint_left.1 hLKc hxL hxK
          have hyt : chartAt E3 (p k) x ∈ (chartAt E3 (p k)).target :=
            (chartAt E3 (p k)).map_source hxs
          have hmem : (chartAt E3 (p k)).symm ⁻¹' Lᶜ ∈ 𝓝 (chartAt E3 (p k) x) := by
            apply ((chartAt E3 (p k)).continuousAt_symm hyt).preimage_mem_nhds
            rw [(chartAt E3 (p k)).left_inv hxs]
            exact hL.isOpen_compl.mem_nhds hxL
          filter_upwards [hmem] with z hz
          exact hφL m _ hz
        · left
          exact (hX k).1 y hy
      rw [hJ]
      refine (sepDensDiv_ibp_of_vanishing (g.coeff (chartAt E3 (p k)).symm)
        (chartAt E3 (p k)).target (chartAt E3 (p k)).open_target (g.smooth (p k))
        (fun y hy => (coeff_chart_symm_posDef g (p k) y hy).det_pos)
        (fun z => φ m ((chartAt E3 (p k)).symm z))
        (chart_pullback_gradInner g (φ m) (hφs m) (p k)).1 (X k) (hX k).2.1 (hXt k) hXs
        (fun y => Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i)).trans ?_
      refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
      simp only [Finset.mul_sum, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      ring
    
    have hJk : ∀ m k, |J k m| ≤ B' * ∑ j, ∫ y in tsupport (X k),
        Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
          Real.sqrt (g.gradInner (u m j) (u m j) ((chartAt E3 (p k)).symm y)) := by
      intro m k
      rw [hIBP k m]
      exact dual_chart_grad_integral_le g Ψc (p k) (φ m) (u m) (hus m) B' hB' (hgrad m (p k))
        (X k) (hX k).2.1 (hXt k) (hX k).2.2.2.1
    have h3 : ∀ k, IsCompact (tsupport (X k)) ∧ tsupport (X k) ⊆ chartAt E3 (p k) '' W k :=
      fun k => ⟨(hX k).2.1.isCompact, (hX k).2.2.1⟩
    have hJbound : ∀ m, ∑ k, |J k m| ≤ B' * ((N : ℝ) * C) := by
      intro m
      calc ∑ k, |J k m| ≤ ∑ k, B' * ∑ j, ∫ y in tsupport (X k),
            Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
              Real.sqrt (g.gradInner (u m j) (u m j) ((chartAt E3 (p k)).symm y)) :=
            Finset.sum_le_sum fun k _ => hJk m k
        _ = B' * ∑ j, ∑ k, ∫ y in tsupport (X k),
            Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
              Real.sqrt (g.gradInner (u m j) (u m j) ((chartAt E3 (p k)).symm y)) := by
            rw [← Finset.mul_sum, Finset.sum_comm]
        _ ≤ B' * ∑ _j : Fin N, C :=
            mul_le_mul_of_nonneg_left (Finset.sum_le_sum fun j _ =>
              hfam m j n p W (fun k => tsupport (X k)) h1 hcond.2 h3) hB'
        _ = B' * ((N : ℝ) * C) := by simp
    
    have hlimk : ∀ k, Tendsto (fun m => J k m) atTop (𝓝 (I k)) := by
      intro k
      obtain ⟨hm, hb, hc, -⟩ := hS5 k
      have hDint : MeasureTheory.Integrable
          (sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k)) := by
        obtain ⟨C₀, hC₀⟩ := (hX k).2.2.2.2
        exact (sepDensDiv_support_integrable _ _).2 (hX k).2.1 C₀ hC₀
      have hconv : ∀ h : M → ℝ, ∫ y, ((chartAt E3 (p k)).target.indicator
            (fun z => h ((chartAt E3 (p k)).symm z)) y *
              sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k) y +
            Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
              ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i) =
          ∫ y, (h ((chartAt E3 (p k)).symm y) *
              sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k) y +
            Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
              ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i) := by
        intro h
        refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
        by_cases hy : y ∈ (chartAt E3 (p k)).target
        · simp only [Set.indicator_of_mem hy]
        · have h0 : sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k) y = 0 :=
            (sepDensDiv_support_integrable _ _).1 y (fun h' => hy (hXt k h'))
          simp only [h0, mul_zero]
      have h2 := integral_mul_add_tendsto_of_bdd
        (sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k))
        (fun y => Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i)
        hDint (fun m => (chartAt E3 (p k)).target.indicator
          (fun z => φ m ((chartAt E3 (p k)).symm z)))
        ((chartAt E3 (p k)).target.indicator (fun z => φ₀ ((chartAt E3 (p k)).symm z))) B
        (fun m => (hm m).aestronglyMeasurable) hb hc
      rw [hI k, ← hconv φ₀]
      refine h2.congr fun m => ?_
      rw [hJ]
      exact hconv (φ m)
    have hsumlim : Tendsto (fun m => ∑ k, |J k m|) atTop (𝓝 (∑ k, |I k|)) :=
      tendsto_finset_sum _ fun k _ => (hlimk k).abs
    have hIbound : ∑ k, |I k| ≤ B' * ((N : ℝ) * C) := le_of_tendsto' hsumlim hJbound
    
    calc ∑ k, ENNReal.ofReal (∫ y,
          (φ₀ ((chartAt E3 (p k)).symm y) * sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (X k) y +
            Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
              ∑ i : Fin 3, dualOmega Ψc (p k) y i * X k y i))
        = ∑ k, ENNReal.ofReal (I k) := Finset.sum_congr rfl fun k _ => by rw [hI k]
      _ ≤ ∑ k, ENNReal.ofReal |I k| :=
          Finset.sum_le_sum fun k _ => ENNReal.ofReal_le_ofReal (le_abs_self _)
      _ = ENNReal.ofReal (∑ k, |I k|) :=
          (ENNReal.ofReal_sum_of_nonneg fun k _ => abs_nonneg _).symm
      _ ≤ ENNReal.ofReal (B' * (N : ℝ) * C) :=
          ENNReal.ofReal_le_ofReal (by rw [mul_assoc]; exact hIbound)

theorem dualChartMeas_of_tendsto (φ₀ : M → ℝ) (φ : ℕ → M → ℝ)
    (hφ : ∀ m, Continuous (φ m)) (hlim : ∀ x, Tendsto (fun m => φ m x) atTop (𝓝 (φ₀ x))) :
    dualChartMeas φ₀ :=
by
  classical
  intro p
  have hT : MeasurableSet (chartAt E3 p).target := (chartAt E3 p).open_target.measurableSet
  have hmeas : ∀ m : ℕ, Measurable ((chartAt E3 p).target.indicator
      (fun y => φ m ((chartAt E3 p).symm y))) := by
    intro m
    have hcm : ContinuousOn (fun y => φ m ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
      (hφ m).comp_continuousOn (chartAt E3 p).continuousOn_symm
    have h := ContinuousOn.measurable_piecewise hcm
      (continuousOn_const (c := (0 : ℝ)) (s := ((chartAt E3 p).target)ᶜ)) hT
    convert h using 1
  have hconv : Tendsto (fun m => (chartAt E3 p).target.indicator
      (fun y => φ m ((chartAt E3 p).symm y))) atTop
      (𝓝 ((chartAt E3 p).target.indicator (fun y => φ₀ ((chartAt E3 p).symm y)))) := by
    rw [tendsto_pi_nhds]
    intro y
    by_cases hy : y ∈ (chartAt E3 p).target
    · simp only [Set.indicator_of_mem hy]
      exact hlim _
    · simp only [Set.indicator_of_notMem hy]
      exact tendsto_const_nhds
  exact measurable_of_tendsto_metrizable hmeas hconv

theorem dual_anchor_exists [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (U : Set M) (hUo : IsOpen U) (Ψ : C(M, Circle))
    (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (K : Set M) (hK : IsCompact K) (hKU : K ⊆ U) (hΨK : ∀ x : M, x ∉ K → Ψ x = 1) :
    ∃ (K' : Set M) (φ₀ : M → ℝ), IsCompact K' ∧ K ⊆ K' ∧ K' ⊆ U ∧
      (∀ x : M, Circle.exp (φ₀ x) = Ψ x) ∧ (∀ x : M, x ∉ K' → φ₀ x = 0) ∧
      dualChartMeas φ₀ ∧
      ∀ Ω Kc : Set M, IsOpen Ω → IsClosed Kc → Disjoint Kc K' →
        dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤ :=
by
  classical
  
  have first_hit : ∀ {n : ℕ} (a b : Fin n → ℝ), (∀ j, a j = 0 ∨ a j = 1) →
      ((∀ j, a j = 0) ∧ ∑ j, a j * (∏ l ∈ Finset.Iio j, (1 - a l)) * b j = 0) ∨
        ∃ j, a j = 1 ∧ ∑ j', a j' * (∏ l ∈ Finset.Iio j', (1 - a l)) * b j' = b j := by
    intro n a b ha
    by_cases h : ∀ j, a j = 0
    · left
      refine ⟨h, Finset.sum_eq_zero (fun j _ => ?_)⟩
      rw [h j]; ring
    · right
      push_neg at h
      have hne : (Finset.univ.filter (fun j => a j = 1)).Nonempty := by
        obtain ⟨j, hj⟩ := h
        refine ⟨j, Finset.mem_filter.2 ⟨Finset.mem_univ _, ?_⟩⟩
        rcases ha j with h0 | h1
        · exact absurd h0 hj
        · exact h1
      have hj₀ : a ((Finset.univ.filter (fun j => a j = 1)).min' hne) = 1 :=
        (Finset.mem_filter.1 (Finset.min'_mem _ hne)).2
      have hlt : ∀ l, l < (Finset.univ.filter (fun j => a j = 1)).min' hne → a l = 0 := by
        intro l hl
        rcases ha l with h0 | h1
        · exact h0
        · exact absurd (Finset.min'_le _ l (Finset.mem_filter.2 ⟨Finset.mem_univ _, h1⟩))
            (not_le.2 hl)
      refine ⟨(Finset.univ.filter (fun j => a j = 1)).min' hne, hj₀, ?_⟩
      rw [Finset.sum_eq_single ((Finset.univ.filter (fun j => a j = 1)).min' hne)]
      · have hP : ∏ l ∈ Finset.Iio ((Finset.univ.filter (fun j => a j = 1)).min' hne),
            (1 - a l) = 1 :=
          Finset.prod_eq_one (fun l hl => by rw [hlt l (Finset.mem_Iio.1 hl)]; ring)
        rw [hP, hj₀]; ring
      · intro j' _ hj'
        rcases lt_or_gt_of_ne hj' with hl | hg
        · rw [hlt j' hl]; ring
        · rw [Finset.prod_eq_zero (Finset.mem_Iio.2 hg) (by rw [hj₀]; ring)]; ring
      · intro h'
        exact absurd (Finset.mem_univ _) h'
  
  obtain ⟨N, x, r, ℓ, O, hr, hO, hOt, hOU, hQO, hℓs, hℓΨ, hℓB, hcovK⟩ :=
    dual_cube_cover U hUo Ψ hΨs K hK hKU
  have hs2 := fun j : Fin N => plateau_cube_seq (chartAt E3 (x j) (x j)) (r j) (hr j)
  choose χ Cχ hχs hχ01 hχ1 hχsupp hχev hcube hχint using hs2
  have hQ3c : ∀ j : Fin N,
      IsCompact {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} :=
    fun j => hcube j (3 * r j)
  have hQ3t : ∀ j : Fin N,
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} ⊆
        (chartAt E3 (x j)).target := fun j => (hQO j).trans (hOt j)
  have hQ23 : ∀ j : Fin N,
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} ⊆
        {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} := by
    intro j y hy
    have hy' : ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j := hy
    show ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j
    intro i
    have h1 := hy' i
    have h2 := hr j
    linarith
  have hs3 := fun j : Fin N => chart_bump_family_le g (x j) _ (hQ3c j) (hQ3t j)
  choose c' hc'0 hfam' using hs3
  have hK3c : ∀ j : Fin N, IsCompact ((chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j}) :=
    fun j => (hQ3c j).image_of_continuousOn
      ((chartAt E3 (x j)).continuousOn_symm.mono (hQ3t j))
  
  obtain ⟨u, hu⟩ : ∃ u : ℕ → Fin N → M → ℝ, u = fun m j =>
      (chartAt E3 (x j)).source.indicator (fun z => χ j m (chartAt E3 (x j) z)) := ⟨_, rfl⟩
  obtain ⟨Λ, hΛ⟩ : ∃ Λ : Fin N → M → ℝ, Λ = fun j =>
      (chartAt E3 (x j)).source.indicator (fun z => ℓ j (chartAt E3 (x j) z)) := ⟨_, rfl⟩
  obtain ⟨a, ha⟩ : ∃ a : Fin N → M → ℝ, a = fun j =>
      ((chartAt E3 (x j)).symm ''
        {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j}).indicator
        (fun _ => (1 : ℝ)) := ⟨_, rfl⟩
  obtain ⟨K', hK'⟩ : ∃ K' : Set M, K' = ⋃ j, (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} := ⟨_, rfl⟩
  obtain ⟨φ, hφ⟩ : ∃ φ : ℕ → M → ℝ, φ = fun m z =>
      ∑ j, u m j z * (∏ l ∈ Finset.Iio j, (1 - u m l z)) * Λ j z := ⟨_, rfl⟩
  obtain ⟨φ₀, hφ₀⟩ : ∃ φ₀ : M → ℝ, φ₀ = fun z =>
      ∑ j, a j z * (∏ l ∈ Finset.Iio j, (1 - a l z)) * Λ j z := ⟨_, rfl⟩
  
  have hu_src : ∀ m j z, z ∈ (chartAt E3 (x j)).source →
      u m j z = χ j m (chartAt E3 (x j) z) := by
    intro m j z hz; rw [hu]; exact Set.indicator_of_mem hz _
  have hu_nsrc : ∀ m j z, z ∉ (chartAt E3 (x j)).source → u m j z = 0 := by
    intro m j z hz; rw [hu]; exact Set.indicator_of_notMem hz _
  have hΛ_src : ∀ j z, z ∈ (chartAt E3 (x j)).source → Λ j z = ℓ j (chartAt E3 (x j) z) := by
    intro j z hz; rw [hΛ]; exact Set.indicator_of_mem hz _
  have hΛ_nsrc : ∀ j z, z ∉ (chartAt E3 (x j)).source → Λ j z = 0 := by
    intro j z hz; rw [hΛ]; exact Set.indicator_of_notMem hz _
  have hfQ : ∀ j m, ∀ y, y ∉ {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} →
      χ j m y = 0 := by
    intro j m y hy
    by_contra hne
    apply hy
    show ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j
    intro i
    have h1 := hχsupp j m y hne i
    have h2 := hr j
    linarith
  have h7 : ∀ m j, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u m j) ∧ ∀ z, u m j z ≠ 0 →
      z ∈ (chartAt E3 (x j)).symm ''
        {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} := by
    intro m j
    rw [hu]
    exact chart_extend_contMDiff (x j) (χ j m) (hχs j m) _ (hQ3c j) (hQ3t j) (hfQ j m)
  have hu01 : ∀ m j z, 0 ≤ u m j z ∧ u m j z ≤ 1 := by
    intro m j z
    by_cases hz : z ∈ (chartAt E3 (x j)).source
    · rw [hu_src m j z hz]; exact hχ01 j m _
    · rw [hu_nsrc m j z hz]; exact ⟨le_rfl, zero_le_one⟩
  have hutsupp : ∀ m j, tsupport (u m j) ⊆ (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} := fun m j =>
    closure_minimal (fun z hz => (h7 m j).2 z (Function.mem_support.1 hz)) (hK3c j).isClosed
  have hK3D : ∀ j : Fin N, (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} ⊆
        (chartAt E3 (x j)).source ∩ chartAt E3 (x j) ⁻¹' O j := by
    rintro j _ ⟨y, hy, rfl⟩
    refine ⟨(chartAt E3 (x j)).map_target (hQ3t j hy), ?_⟩
    rw [Set.mem_preimage, (chartAt E3 (x j)).right_inv (hQ3t j hy)]
    exact hQO j hy
  have hDo : ∀ j : Fin N, IsOpen ((chartAt E3 (x j)).source ∩ chartAt E3 (x j) ⁻¹' O j) :=
    fun j => (chartAt E3 (x j)).isOpen_inter_preimage (hO j)
  have hΛs : ∀ j : Fin N, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (Λ j)
      ((chartAt E3 (x j)).source ∩ chartAt E3 (x j) ⁻¹' O j) := by
    intro j
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun z => ℓ j (chartAt E3 (x j) z))
        ((chartAt E3 (x j)).source ∩ chartAt E3 (x j) ⁻¹' O j) :=
      (hℓs j).contMDiffOn.comp (contMDiffOn_chart.mono Set.inter_subset_left)
        (fun z hz => hz.2)
    exact h1.congr (fun z hz => hΛ_src j z hz.1)
  have hΛΨ : ∀ j : Fin N, ∀ z ∈ (chartAt E3 (x j)).source ∩ chartAt E3 (x j) ⁻¹' O j,
      Circle.exp (Λ j z) = Ψ z := by
    intro j z hz
    rw [hΛ_src j z hz.1, hℓΨ j _ hz.2, (chartAt E3 (x j)).left_inv hz.1]
  have hΛB : ∀ j z, |Λ j z| ≤ 2 * Real.pi := by
    intro j z
    by_cases hz : z ∈ (chartAt E3 (x j)).source
    · rw [hΛ_src j z hz]; exact hℓB _ _
    · rw [hΛ_nsrc j z hz, abs_zero]; positivity
  have hcovQ : ∀ z ∈ K, ∃ j, z ∈ (chartAt E3 (x j)).source ∧ chartAt E3 (x j) z ∈
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} := by
    intro z hz
    obtain ⟨j, hzs, hzc⟩ := hcovK z hz
    refine ⟨j, hzs, ?_⟩
    show ∀ i : Fin 3, |chartAt E3 (x j) z i - chartAt E3 (x j) (x j) i| ≤ 2 * r j
    intro i
    have h1 := hzc i
    have h2 := hr j
    linarith
  have hcov : ∀ m, ∀ z ∈ K, ∃ j, u m j z = 1 := by
    intro m z hz
    obtain ⟨j, hzs, hzQ⟩ := hcovQ z hz
    exact ⟨j, by rw [hu_src m j z hzs]; exact hχ1 j m _ hzQ⟩
  have hA_src : ∀ j z, z ∈ (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} →
      z ∈ (chartAt E3 (x j)).source ∧ chartAt E3 (x j) z ∈
        {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} := by
    rintro j _ ⟨y, hy, rfl⟩
    refine ⟨(chartAt E3 (x j)).map_target (hQ3t j (hQ23 j hy)), ?_⟩
    rw [(chartAt E3 (x j)).right_inv (hQ3t j (hQ23 j hy))]
    exact hy
  have ha1 : ∀ j z, z ∈ (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} → a j z = 1 := by
    intro j z hz; rw [ha]; exact Set.indicator_of_mem hz _
  have ha0 : ∀ j z, z ∉ (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} → a j z = 0 := by
    intro j z hz; rw [ha]; exact Set.indicator_of_notMem hz _
  
  have hK'c : IsCompact K' := by rw [hK']; exact isCompact_iUnion hK3c
  have hK'U : K' ⊆ U := by
    rw [hK']
    refine Set.iUnion_subset (fun j => ?_)
    rintro _ ⟨y, hy, rfl⟩
    exact hOU j ⟨y, hQO j hy, rfl⟩
  have hAK' : ∀ j z, z ∈ (chartAt E3 (x j)).symm ''
      {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} → z ∈ K' := by
    rintro j _ ⟨y, hy, rfl⟩
    rw [hK']
    exact Set.mem_iUnion.2 ⟨j, y, hQ23 j hy, rfl⟩
  have hKK' : K ⊆ K' := by
    intro z hz
    obtain ⟨j, hzs, hzQ⟩ := hcovQ z hz
    exact hAK' j z ⟨_, hzQ, (chartAt E3 (x j)).left_inv hzs⟩
  
  have hconv : ∀ j z, Tendsto (fun m => u m j z) atTop (𝓝 (a j z)) := by
    intro j z
    by_cases hzs : z ∈ (chartAt E3 (x j)).source
    · by_cases hzQ : chartAt E3 (x j) z ∈
          {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j}
      · rw [ha1 j z ⟨_, hzQ, (chartAt E3 (x j)).left_inv hzs⟩]
        refine tendsto_const_nhds.congr (fun m => ?_)
        rw [hu_src m j z hzs, hχ1 j m _ hzQ]
      · rw [ha0 j z (fun hzA => hzQ (hA_src j z hzA).2)]
        refine tendsto_const_nhds.congr' ?_
        filter_upwards [hχev j _ hzQ] with m hm
        rw [hu_src m j z hzs, hm]
    · rw [ha0 j z (fun hzA => hzs (hA_src j z hzA).1)]
      exact tendsto_const_nhds.congr (fun m => (hu_nsrc m j z hzs).symm)
  have hlim : ∀ z, Tendsto (fun m => φ m z) atTop (𝓝 (φ₀ z)) := by
    intro z
    rw [hφ, hφ₀]
    refine tendsto_finset_sum _ (fun j _ => ?_)
    exact ((hconv j z).mul (tendsto_finset_prod _
      (fun l _ => tendsto_const_nhds.sub (hconv l z)))).mul tendsto_const_nhds
  have hφB : ∀ m z, |φ m z| ≤ N * (2 * Real.pi) := by
    intro m z
    rw [hφ]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    have hterm : ∀ j ∈ (Finset.univ : Finset (Fin N)),
        |u m j z * (∏ l ∈ Finset.Iio j, (1 - u m l z)) * Λ j z| ≤ 2 * Real.pi := by
      intro j _
      have hP0 : 0 ≤ ∏ l ∈ Finset.Iio j, (1 - u m l z) :=
        Finset.prod_nonneg (fun l _ => by linarith [(hu01 m l z).2])
      have hP1 : ∏ l ∈ Finset.Iio j, (1 - u m l z) ≤ 1 :=
        Finset.prod_le_one (fun l _ => by linarith [(hu01 m l z).2])
          (fun l _ => by linarith [(hu01 m l z).1])
      rw [abs_mul, abs_mul, abs_of_nonneg (hu01 m j z).1, abs_of_nonneg hP0]
      calc u m j z * (∏ l ∈ Finset.Iio j, (1 - u m l z)) * |Λ j z|
          ≤ 1 * 1 * (2 * Real.pi) :=
            mul_le_mul (mul_le_mul (hu01 m j z).2 hP1 hP0 zero_le_one) (hΛB j z)
              (abs_nonneg _) (by norm_num)
        _ = 2 * Real.pi := by ring
    refine (Finset.sum_le_sum hterm).trans ?_
    simp
  have hφL : ∀ m z, z ∉ K' → φ m z = 0 := by
    intro m z hz
    rw [hφ]
    refine Finset.sum_eq_zero (fun j _ => ?_)
    have h0 : u m j z = 0 := by
      by_contra hne
      apply hz
      rw [hK']
      exact Set.mem_iUnion.2 ⟨j, (h7 m j).2 z hne⟩
    rw [h0]; ring
  
  have h4 := fun m => dual_weight_grad_bound g Ψ K hK.isClosed hΨK (u m) Λ
    (fun j => (chartAt E3 (x j)).source ∩ chartAt E3 (x j) ⁻¹' O j) (2 * Real.pi)
    (fun j => (h7 m j).1) (hu01 m) hDo hΛs
    (fun j => (hutsupp m j).trans (hK3D j)) hΛΨ hΛB (hcov m)
  have hφs : ∀ m, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (φ m) := by
    intro m; rw [hφ]; exact (h4 m).1
  have hgrad : ∀ (m : ℕ) (p : M) (y : E3), y ∈ (chartAt E3 p).target → ∀ X : E3,
      |∑ i : Fin 3, (dualOmega (fun x => (Ψ x : ℂ)) p y i -
          partialDeriv i (fun z => φ m ((chartAt E3 p).symm z)) y) * X i| ≤
        ((N : ℝ) * (2 * Real.pi)) * ∑ j, Real.sqrt (g.gradInner (u m j) (u m j)
          ((chartAt E3 p).symm y)) *
          Real.sqrt (∑ i : Fin 3, ∑ k : Fin 3, g.coeff (chartAt E3 p).symm y i k * X i * X k) := by
    intro m p y hy X
    rw [hφ]
    exact (h4 m).2 p y hy X
  
  have hfam : ∀ (m : ℕ) (j : Fin N) (n : ℕ) (pp : Fin n → M) (W : Fin n → Set M)
      (T : Fin n → Set E3),
      (∀ k, IsOpen (W k) ∧ W k ⊆ (chartAt E3 (pp k)).source) →
      Pairwise (fun k k' => Disjoint (W k) (W k')) →
      (∀ k, IsCompact (T k) ∧ T k ⊆ chartAt E3 (pp k) '' W k) →
      ∑ k, ∫ y in T k, Real.sqrt (g.coeff (chartAt E3 (pp k)).symm y).det *
          Real.sqrt (g.gradInner (u m j) (u m j) ((chartAt E3 (pp k)).symm y)) ≤
        ∑ j', c' j' * max (Cχ j') 0 := by
    intro m j n pp W T hW hWd hT
    have hvan : ∀ z, z ∉ (chartAt E3 (x j)).symm ''
        {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j} → u m j z = 0 := by
      intro z hz
      by_contra hne
      exact hz ((h7 m j).2 z hne)
    refine (hfam' j (u m j) (h7 m j).1 hvan n pp W T hW hWd hT).trans ?_
    have heq : ∫ y in {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j},
        ∑ i : Fin 3, |partialDeriv i (fun z => u m j ((chartAt E3 (x j)).symm z)) y| =
        ∫ y in {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j},
        ∑ i : Fin 3, |partialDeriv i (χ j m) y| := by
      refine setIntegral_congr_fun (hQ3c j).isClosed.measurableSet (fun y hy => ?_)
      have hev : (fun z => u m j ((chartAt E3 (x j)).symm z)) =ᶠ[𝓝 y] χ j m := by
        filter_upwards [(chartAt E3 (x j)).open_target.mem_nhds (hQ3t j hy)] with z hz
        rw [hu_src m j _ ((chartAt E3 (x j)).map_target hz), (chartAt E3 (x j)).right_inv hz]
      simp only [partialDeriv]
      rw [hev.fderiv_eq]
    rw [heq]
    calc c' j * ∫ y in {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 3 * r j},
          ∑ i : Fin 3, |partialDeriv i (χ j m) y|
        ≤ c' j * max (Cχ j) 0 :=
          mul_le_mul_of_nonneg_left ((hχint j m).trans (le_max_left _ _)) (hc'0 j)
      _ ≤ ∑ j', c' j' * max (Cχ j') 0 :=
          Finset.single_le_sum (f := fun j' => c' j' * max (Cχ j') 0)
            (fun j' _ => mul_nonneg (hc'0 j') (le_max_right _ _)) (Finset.mem_univ j)
  
  have ha01 : ∀ z j, a j z = 0 ∨ a j z = 1 := by
    intro z j
    by_cases hz : z ∈ (chartAt E3 (x j)).symm ''
        {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j}
    · exact Or.inr (ha1 j z hz)
    · exact Or.inl (ha0 j z hz)
  have hlift : ∀ z : M, Circle.exp (φ₀ z) = Ψ z := by
    intro z
    rcases first_hit (fun j => a j z) (fun j => Λ j z) (ha01 z) with ⟨hall, hsum⟩ | ⟨j, hj, hsum⟩
    · have hφz : φ₀ z = 0 := by rw [hφ₀]; exact hsum
      have hzK : z ∉ K := by
        intro hzK
        obtain ⟨j, hzs, hzQ⟩ := hcovQ z hzK
        have h1 := ha1 j z ⟨_, hzQ, (chartAt E3 (x j)).left_inv hzs⟩
        have h0 : a j z = 0 := hall j
        rw [h0] at h1
        exact zero_ne_one h1
      rw [hφz, Circle.exp_zero, hΨK z hzK]
    · have hφz : φ₀ z = Λ j z := by rw [hφ₀]; exact hsum
      have hzA : z ∈ (chartAt E3 (x j)).symm ''
          {y : E3 | ∀ i : Fin 3, |y i - chartAt E3 (x j) (x j) i| ≤ 2 * r j} := by
        by_contra hn
        have h0 := ha0 j z hn
        have hj' : a j z = 1 := hj
        rw [h0] at hj'
        exact zero_ne_one hj'
      obtain ⟨hzs, hzQ⟩ := hA_src j z hzA
      rw [hφz]
      exact hΛΨ j z (hK3D j ⟨_, hQ23 j hzQ, (chartAt E3 (x j)).left_inv hzs⟩)
  have hφ₀0 : ∀ z : M, z ∉ K' → φ₀ z = 0 := by
    intro z hz
    rw [hφ₀]
    refine Finset.sum_eq_zero (fun j _ => ?_)
    have h0 : a j z = 0 := ha0 j z (fun hzA => hz (hAK' j z hzA))
    rw [h0]; ring
  have hmeas : dualChartMeas φ₀ :=
    dualChartMeas_of_tendsto φ₀ φ (fun m => (hφs m).continuous) hlim
  
  refine ⟨K', φ₀, hK'c, hKK', hK'U, hlift, hφ₀0, hmeas, ?_⟩
  intro Ω Kc hΩ hKc hdisj
  exact dual_var_lt_top_of_smooth_approx g (fun x => (Ψ x : ℂ)) Ω Kc K' hKc hK'c.isClosed
    hdisj.symm φ₀ φ (N * (2 * Real.pi)) (N * (2 * Real.pi)) (∑ j', c' j' * max (Cχ j') 0)
    (by positivity) hφs hφL hφB hlim u (fun m j => (h7 m j).1) hgrad hfam

theorem dual_chart_tv_bound [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kc : Set M) (hΩ : IsOpen Ω) (φ₀ : M → ℝ)
    (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤)
    (p : M) (z : E3) (R : ℝ) (hR : 0 < R)
    (hB : Metric.closedBall z R ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source)) :
    ∃ A : ℝ, 0 ≤ A ∧ ∀ n : M → ℤ,
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc < ⊤ →
      MeasureTheory.IntegrableOn (fun y => (n ((chartAt E3 p).symm y) : ℝ))
        (Metric.closedBall z R) ∧
      ∀ Y : E3 → E3, ContDiff ℝ ∞ Y → HasCompactSupport Y → tsupport Y ⊆ Metric.ball z R →
        (∀ y, ‖Y y‖ ≤ 1) →
        ∫ y, (n ((chartAt E3 p).symm y) : ℝ) * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y ≤
          A * ((dualRiemVar g (fun x => (Ψ x : ℂ))
                (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc).toReal +
            (dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc).toReal) :=
by
  classical
  
  have hpd : ∀ y ∈ (chartAt E3 p).target, (g.coeff (chartAt E3 p).symm y).PosDef := by
    intro y hy
    have hq : (chartAt E3 p).symm y ∈ (chartAt E3 p).source := (chartAt E3 p).map_target hy
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 p) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm) y =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y) := mfderiv_comp y hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm) y =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id y := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 p).eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    have hDinj : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y w = 0 → w = 0 := by
      intro w hw
      rw [← hinv w, hw, map_zero]
    apply Matrix.PosDef.of_dotProduct_mulVec_pos
    · apply Matrix.IsHermitian.ext
      intro i j
      simp only [RiemannianMetric3.coeff, coeffMatrix, star_trivial]
      exact g.symm _ _ _
    · intro x hx
      have hvx : (∑ i, x i • e i : E3) ≠ 0 := by
        intro h0
        apply hx
        funext j
        have h1 := congrArg (fun u : E3 => u j) h0
        fin_cases j <;> simpa [e, Fin.sum_univ_three, EuclideanSpace.single_apply] using h1
      have hDv := fun h => hvx (hDinj _ h)
      have hpos := g.posDef ((chartAt E3 p).symm y) _ hDv
      have key : star x ⬝ᵥ (g.coeff (chartAt E3 p).symm y).mulVec x =
          g.g ((chartAt E3 p).symm y)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y (∑ i, x i • e i : E3))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y (∑ i, x i • e i : E3)) := by
        simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
          ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
          RiemannianMetric3.coeff, coeffMatrix]
        ring
      rw [key]
      exact hpos
  
  have hdiv0 : ∀ (Y : E3 → E3) (y : E3), y ∉ tsupport Y →
      ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y = 0 := by
    intro Y y hy
    have hev := (notMem_tsupport_iff_eventuallyEq).1 hy
    apply Finset.sum_eq_zero
    intro k _
    have hevk : (fun w => Y w k) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) :=
      hev.mono (fun w hw => by simp [hw])
    unfold partialDeriv
    rw [hevk.fderiv_eq, fderiv_const_apply]
    simp
  have hcomp : ∀ (Y : E3 → E3), ContDiff ℝ ∞ Y → ∀ i : Fin 3, ContDiff ℝ ∞ (fun w => Y w i) :=
    fun Y hY i => (EuclideanSpace.proj i : E3 →L[ℝ] ℝ).contDiff.comp hY
  have hdivc : ∀ (Y : E3 → E3), ContDiff ℝ ∞ Y →
      Continuous (fun y => ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y) := by
    intro Y hY
    exact continuous_finset_sum _ fun i _ =>
      ((hcomp Y hY i).continuous_fderiv (by simp)).clm_apply continuous_const
  set κ := chartAt E3 p with hκ
  set G := g.coeff κ.symm with hGdef
  set Ψc : M → ℂ := fun x => (Ψ x : ℂ) with hΨc
  set om := dualOmega Ψc p with homdef
  set U := κ '' (Ω ∩ κ.source) with hUdef
  have hUo : IsOpen U := by
    rw [hUdef, Set.inter_comm]; exact κ.isOpen_image_source_inter hΩ
  have hUt : U ⊆ κ.target := by
    rintro _ ⟨x, hx, rfl⟩; exact κ.map_source hx.2
  have hKU : Metric.closedBall z R ⊆ U := hB
  have hballU : Metric.ball z R ⊆ U := Metric.ball_subset_closedBall.trans hKU
  have hdet : ∀ y ∈ κ.target, 0 < (G y).det := fun y hy => (hpd y hy).det_pos
  have hGs : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) κ.target := fun i j => g.smooth p i j
  have hdetCD : ∀ y ∈ κ.target, ContDiffAt ℝ ∞ (fun y => (G y).det) y := by
    intro y hy
    have hE : ∀ i j : Fin 3, ContDiffAt ℝ ∞ (fun y => G y i j) y :=
      fun i j => (hGs i j).contDiffAt (κ.open_target.mem_nhds hy)
    have hexp : (fun y => (G y).det) = fun y =>
        G y 0 0 * G y 1 1 * G y 2 2 - G y 0 0 * G y 1 2 * G y 2 1 - G y 0 1 * G y 1 0 * G y 2 2 +
          G y 0 1 * G y 1 2 * G y 2 0 + G y 0 2 * G y 1 0 * G y 2 1 -
            G y 0 2 * G y 1 1 * G y 2 0 := by
      funext y; exact Matrix.det_fin_three _
    rw [hexp]
    have m3 : ∀ a b c d e f : Fin 3,
        ContDiffAt ℝ ∞ (fun y => G y a b * G y c d * G y e f) y :=
      fun a b c d e f => ((hE a b).mul (hE c d)).mul (hE e f)
    exact (((((m3 0 0 1 1 2 2).sub (m3 0 0 1 2 2 1)).sub (m3 0 1 1 0 2 2)).add
      (m3 0 1 1 2 2 0)).add (m3 0 2 1 0 2 1)).sub (m3 0 2 1 1 2 0)
  have hdetc : ContinuousOn (fun y => (G y).det) κ.target :=
    fun y hy => (hdetCD y hy).continuousAt.continuousWithinAt
  
  have hKt : Metric.closedBall z R ⊆ κ.target := hKU.trans hUt
  have hnum : ContinuousOn (fun y => ∑ i : Fin 3, ∑ j : Fin 3, |G y i j|) (Metric.closedBall z R) :=
    continuousOn_finset_sum _ fun i _ => continuousOn_finset_sum _ fun j _ =>
      ((hGs i j).continuousOn.mono hKt).abs
  have hqc : ContinuousOn (fun y => (∑ i : Fin 3, ∑ j : Fin 3, |G y i j|) / (G y).det)
      (Metric.closedBall z R) :=
    hnum.div (hdetc.mono hKt) (fun y hy => (hdet y (hKt hy)).ne')
  obtain ⟨Q, hQ⟩ := (isCompact_closedBall z R).exists_bound_of_continuousOn hqc
  obtain ⟨s, hsdef⟩ : ∃ s : ℝ, s = 1 + |Q| := ⟨_, rfl⟩
  have hs1 : 1 ≤ s := by have := abs_nonneg Q; linarith
  have hs : 0 < s := by linarith
  have hGbd : ∀ y ∈ Metric.closedBall z R,
      ∑ i : Fin 3, ∑ j : Fin 3, |G y i j| ≤ s * (G y).det := by
    intro y hy
    have hd := hdet y (hKt hy)
    have h1 := hQ y hy
    rw [Real.norm_eq_abs] at h1
    have h2 : (∑ i : Fin 3, ∑ j : Fin 3, |G y i j|) / (G y).det ≤ s := by
      have := le_abs_self ((∑ i : Fin 3, ∑ j : Fin 3, |G y i j|) / (G y).det)
      have := le_abs_self Q
      linarith
    rwa [div_le_iff₀ hd] at h2
  
  have hfield : ∀ t : ℝ, t ^ 2 = 1 → ∀ Y : E3 → E3, ContDiff ℝ ∞ Y → HasCompactSupport Y →
      tsupport Y ⊆ Metric.ball z R → (∀ y, ‖Y y‖ ≤ 1) →
      ∃ X : E3 → E3, ContDiff ℝ ∞ X ∧ HasCompactSupport X ∧ tsupport X ⊆ Metric.ball z R ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        (∀ (y : E3) (i : Fin 3), Real.sqrt (G y).det * X y i = t * s⁻¹ * Y y i) ∧
        (∀ y, sepDensDiv G X y = t * s⁻¹ * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C := by
    intro t ht Y hY hYc hYs hY1
    have hYt : tsupport Y ⊆ κ.target := hYs.trans (hballU.trans hUt)
    obtain ⟨X, hXdef⟩ : ∃ X : E3 → E3,
        X = fun y => (t * (s * Real.sqrt (G y).det)⁻¹) • Y y := ⟨_, rfl⟩
    have hXapp : ∀ (y : E3) (i : Fin 3), X y i = t * (s * Real.sqrt (G y).det)⁻¹ * Y y i := by
      intro y i; rw [hXdef]; simp
    have hkey : ∀ (y : E3) (i : Fin 3), Real.sqrt (G y).det * X y i = t * s⁻¹ * Y y i := by
      intro y i
      rw [hXapp]
      by_cases hy : y ∈ tsupport Y
      · have hd := hdet y (hYt hy)
        have hr : Real.sqrt (G y).det ≠ 0 := Real.sqrt_ne_zero'.2 hd
        calc Real.sqrt (G y).det * (t * (s * Real.sqrt (G y).det)⁻¹ * Y y i)
            = t * s⁻¹ * Y y i * (Real.sqrt (G y).det * (Real.sqrt (G y).det)⁻¹) := by
              rw [mul_inv]; ring
          _ = t * s⁻¹ * Y y i := by rw [mul_inv_cancel₀ hr, mul_one]
      · rw [image_eq_zero_of_notMem_tsupport hy]; simp
    have hXs : ContDiff ℝ ∞ X := by
      rw [contDiff_iff_contDiffAt]
      intro y
      by_cases hy : y ∈ tsupport Y
      · have hyt := hYt hy
        have hd := hdet y hyt
        have h1 : ContDiffAt ℝ ∞ (fun y => Real.sqrt (G y).det) y := (hdetCD y hyt).sqrt hd.ne'
        have h2 : ContDiffAt ℝ ∞ (fun y => t * (s * Real.sqrt (G y).det)⁻¹) y :=
          contDiffAt_const.mul ((contDiffAt_const.mul h1).inv
            (mul_ne_zero hs.ne' (Real.sqrt_ne_zero'.2 hd)))
        rw [hXdef]
        exact h2.smul hY.contDiffAt
      · have hev := (notMem_tsupport_iff_eventuallyEq).1 hy
        have hev' : X =ᶠ[𝓝 y] fun _ => (0 : E3) := hev.mono (fun w hw => by simp [hXdef, hw])
        exact contDiffAt_const.congr_of_eventuallyEq hev'
    have hXsupp : Function.support X ⊆ Function.support Y := by
      intro y hy
      rw [Function.mem_support] at hy ⊢
      intro h0; apply hy; rw [hXdef]; simp [h0]
    have hXts : tsupport X ⊆ tsupport Y := closure_mono hXsupp
    have hXc : HasCompactSupport X := hYc.mono' (hXsupp.trans (subset_tsupport Y))
    have hXn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1 := by
      intro y
      by_cases hy : y ∈ tsupport Y
      · have hyK : y ∈ Metric.closedBall z R := Metric.ball_subset_closedBall (hYs hy)
        have hd := hdet y (hYt hy)
        obtain ⟨c, hc⟩ : ∃ c : ℝ, c = t * (s * Real.sqrt (G y).det)⁻¹ := ⟨_, rfl⟩
        have hXc' : ∀ i, X y i = c * Y y i := fun i => by rw [hXapp, hc]
        have hYb : ∀ i, |Y y i| ≤ 1 := fun i =>
          le_trans (by simpa [Real.norm_eq_abs] using PiLp.norm_apply_le (Y y) i : |Y y i| ≤ ‖Y y‖)
            (hY1 y)
        have e1 : ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j =
            c ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j := by
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [hXc', hXc']
          ring
        have e2 : ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤
            ∑ i : Fin 3, ∑ j : Fin 3, |G y i j| := by
          refine Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => ?_
          calc G y i j * Y y i * Y y j ≤ |G y i j * Y y i * Y y j| := le_abs_self _
            _ = |G y i j| * (|Y y i| * |Y y j|) := by rw [abs_mul, abs_mul]; ring
            _ ≤ |G y i j| * (1 * 1) :=
                mul_le_mul_of_nonneg_left
                  (mul_le_mul (hYb i) (hYb j) (abs_nonneg _) zero_le_one) (abs_nonneg _)
            _ = |G y i j| := by ring
        have hr2 : Real.sqrt (G y).det ^ 2 = (G y).det := Real.sq_sqrt hd.le
        have hrpos : 0 < Real.sqrt (G y).det := Real.sqrt_pos.2 hd
        have hc2 : c ^ 2 * (s ^ 2 * (G y).det) = 1 := by
          rw [← hr2, hc]
          generalize Real.sqrt (G y).det = r at hrpos ⊢
          have h1 : (s * r)⁻¹ * (s * r) = 1 := inv_mul_cancel₀ (mul_ne_zero hs.ne' hrpos.ne')
          calc (t * (s * r)⁻¹) ^ 2 * (s ^ 2 * r ^ 2) = t ^ 2 * ((s * r)⁻¹ * (s * r)) ^ 2 := by
                ring
            _ = 1 := by rw [h1, ht]; ring
        have hsd : s * (G y).det ≤ s ^ 2 * (G y).det := by
          have hss : s ≤ s ^ 2 := by nlinarith
          exact mul_le_mul_of_nonneg_right hss hd.le
        have hc2n : 0 ≤ c ^ 2 := sq_nonneg c
        rw [e1]
        calc c ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j
            ≤ c ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, |G y i j| := mul_le_mul_of_nonneg_left e2 hc2n
          _ ≤ c ^ 2 * (s * (G y).det) := mul_le_mul_of_nonneg_left (hGbd y hyK) hc2n
          _ ≤ c ^ 2 * (s ^ 2 * (G y).det) := mul_le_mul_of_nonneg_left hsd hc2n
          _ = 1 := hc2
      · have h0 : ∀ i, X y i = 0 := by
          intro i; rw [hXapp, image_eq_zero_of_notMem_tsupport hy]; simp
        simp [h0]
    have hsep : ∀ y, sepDensDiv G X y =
        t * s⁻¹ * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y := by
      intro y
      unfold sepDensDiv
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      have hfun : (fun z => Real.sqrt (G z).det * X z i) = fun z => t * s⁻¹ * Y z i :=
        funext fun z => hkey z i
      rw [hfun]
      unfold partialDeriv
      rw [fderiv_const_mul ((hcomp Y hY i).differentiable (by simp) y)]
      rfl
    have hdivcs : HasCompactSupport (fun y => ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y) := by
      refine hYc.mono' ?_
      intro y hy
      by_contra h
      exact hy (hdiv0 Y y h)
    obtain ⟨C', hC'⟩ := (hdivc Y hY).bounded_above_of_compact_support hdivcs
    refine ⟨X, hXs, hXc, hXts.trans hYs, hXn, hkey, hsep, |t * s⁻¹| * C', fun y => ?_⟩
    rw [hsep y, abs_mul]
    exact mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using hC' y) (abs_nonneg _)
  
  have hS1 : ∀ φ : M → ℝ, dualVarG G om (fun y => φ (κ.symm y)) U (κ '' (Kc ∩ κ.source)) ≤
      dualRiemVar g Ψc φ Ω Kc := by
    intro φ
    unfold dualRiemVar
    refine le_iSup_of_le (1 : ℕ) (le_iSup_of_le (fun _ : Fin 1 => p)
      (le_iSup_of_le (fun _ : Fin 1 => Ω ∩ κ.source)
        (le_iSup_of_le ⟨fun _ => ⟨hΩ.inter κ.open_source, subset_rfl⟩, Subsingleton.pairwise⟩ ?_)))
    rw [Fin.sum_univ_one]
  have hS1a : ∀ φ : M → ℝ, dualRiemVar g Ψc φ Ω Kc < ⊤ →
      MeasureTheory.LocallyIntegrableOn (fun y => φ (κ.symm y)) U := by
    intro φ hφ
    by_contra hni
    have h1 := hS1 φ
    unfold dualVarG at h1
    rw [iSup_pos hni] at h1
    exact lt_irrefl _ ((le_sup_left.trans h1).trans_lt hφ)
  have hS1b : ∀ φ : M → ℝ, dualRiemVar g Ψc φ Ω Kc < ⊤ → ∀ X : E3 → E3,
      (∀ y, y ∉ κ '' (Kc ∩ κ.source) → ContDiffAt ℝ ∞ X y) → HasCompactSupport X →
      tsupport X ⊆ U → (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) →
      (∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
      ∫ y, (φ (κ.symm y) * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) ≤
        (dualRiemVar g Ψc φ Ω Kc).toReal := by
    intro φ hφ X h1 h2 h3 h4 h5
    have hle := hS1 φ
    unfold dualVarG at hle
    have h6 : ENNReal.ofReal (∫ y, (φ (κ.symm y) * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) ≤ dualRiemVar g Ψc φ Ω Kc := by
      refine le_trans ?_ hle
      refine le_trans ?_ le_sup_right
      exact le_iSup₂_of_le X ⟨h1, h2, h3, h4, h5⟩ le_rfl
    exact (ENNReal.ofReal_le_iff_le_toReal hφ.ne).1 h6
  
  have hF : ContDiffOn ℝ ∞ (fun y => (Ψ (κ.symm y) : ℂ)) κ.target :=
    contMDiffOn_iff_contDiffOn.1 (hΨs.comp_contMDiffOn (contMDiffOn_chart_symm (x := p)))
  have hre : ContDiffOn ℝ ∞ (fun y => ((Ψ (κ.symm y) : ℂ)).re) κ.target :=
    Complex.reCLM.contDiff.comp_contDiffOn hF
  have him : ContDiffOn ℝ ∞ (fun y => ((Ψ (κ.symm y) : ℂ)).im) κ.target :=
    Complex.imCLM.contDiff.comp_contDiffOn hF
  have hpdre : ∀ i : Fin 3, ContinuousOn
      (fun y => partialDeriv i (fun z => ((Ψ (κ.symm z) : ℂ)).re) y) κ.target := fun i =>
    (hre.continuousOn_fderiv_of_isOpen κ.open_target (by simp)).clm_apply continuousOn_const
  have hpdim : ∀ i : Fin 3, ContinuousOn
      (fun y => partialDeriv i (fun z => ((Ψ (κ.symm z) : ℂ)).im) y) κ.target := fun i =>
    (him.continuousOn_fderiv_of_isOpen κ.open_target (by simp)).clm_apply continuousOn_const
  have hω : ∀ i : Fin 3, ContinuousOn (fun y => om y i) κ.target := fun i =>
    (hre.continuousOn.mul (hpdim i)).sub (him.continuousOn.mul (hpdre i))
  refine ⟨s / (2 * Real.pi), div_nonneg hs.le Real.two_pi_pos.le, fun n hfin => ?_⟩
  have hvn := (hS1a _ hfin).integrableOn_compact_subset hKU (isCompact_closedBall z R)
  have hv0 := (hS1a _ hfin₀).integrableOn_compact_subset hKU (isCompact_closedBall z R)
  have hπ : (2 * Real.pi) ≠ 0 := by positivity
  have hnint : MeasureTheory.IntegrableOn (fun y => (n (κ.symm y) : ℝ)) (Metric.closedBall z R) := by
    have h := (Integrable.sub hvn hv0).const_mul (2 * Real.pi)⁻¹
    refine IntegrableOn.congr_fun h (fun y _ => ?_) measurableSet_closedBall
    have hab : ∀ a b : ℝ, (2 * Real.pi)⁻¹ * ((a + 2 * Real.pi * b) - a) = b := fun a b => by
      rw [add_sub_cancel_left, ← mul_assoc, inv_mul_cancel₀ hπ, one_mul]
    exact hab _ _
  refine ⟨hnint, fun Y hY hYc hYs hY1 => ?_⟩
  obtain ⟨Xp, hXp, hXpc, hXps, hXpn, hXpk, hXpd, hXpb⟩ :=
    hfield 1 (by norm_num) Y hY hYc hYs hY1
  obtain ⟨Xm, hXm, hXmc, hXms, hXmn, hXmk, hXmd, hXmb⟩ :=
    hfield (-1) (by norm_num) Y hY hYc hYs hY1
  have hYt : tsupport Y ⊆ κ.target := hYs.trans (hballU.trans hUt)
  
  have hτc : Continuous (fun y => ∑ i : Fin 3, om y i * Y y i) := by
    rw [continuous_iff_continuousAt]
    intro y
    by_cases hy : y ∈ κ.target
    · have hon : ContinuousOn (fun y => ∑ i : Fin 3, om y i * Y y i) κ.target :=
        continuousOn_finset_sum _ fun i _ => (hω i).mul ((hcomp Y hY i).continuous.continuousOn)
      exact hon.continuousAt (κ.open_target.mem_nhds hy)
    · have hyY : y ∉ tsupport Y := fun h => hy (hYt h)
      have hev := (notMem_tsupport_iff_eventuallyEq).1 hyY
      have hev' : (fun _ => (0 : ℝ)) =ᶠ[𝓝 y] (fun y => ∑ i : Fin 3, om y i * Y y i) :=
        hev.mono fun w hw => by simp [hw]
      exact continuousAt_const.congr hev'
  have hτcs : HasCompactSupport (fun y => ∑ i : Fin 3, om y i * Y y i) := by
    refine hYc.mono' ?_
    intro y hy
    by_contra h
    apply hy
    simp [image_eq_zero_of_notMem_tsupport h]
  have hτ : Integrable (fun y => ∑ i : Fin 3, om y i * Y y i) :=
    hτc.integrable_of_hasCompactSupport hτcs
  have hmul : ∀ v : E3 → ℝ, MeasureTheory.IntegrableOn v (Metric.closedBall z R) →
      Integrable (fun y => v y * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y) := by
    intro v hv
    refine IntegrableOn.integrable_of_forall_notMem_eq_zero
      (hv.mul_continuousOn (hdivc Y hY).continuousOn (isCompact_closedBall z R)) ?_
    intro y hy
    rw [hdiv0 Y y (fun h => hy (Metric.ball_subset_closedBall (hYs h))), mul_zero]
  
  have hrw : ∀ (v : E3 → ℝ) (X : E3 → E3) (t : ℝ),
      (∀ (y : E3) (i : Fin 3), Real.sqrt (G y).det * X y i = t * s⁻¹ * Y y i) →
      (∀ y, sepDensDiv G X y = t * s⁻¹ * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y) →
      ∫ y, (v y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
        t * s⁻¹ * ∫ y, (v y * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y +
          ∑ i : Fin 3, om y i * Y y i) := by
    intro v X t hk hd
    rw [← integral_const_mul]
    congr 1
    funext y
    have hsum : Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i =
        t * s⁻¹ * ∑ i : Fin 3, om y i * Y y i := by
      rw [Finset.mul_sum, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      calc Real.sqrt (G y).det * (om y i * X y i) = om y i * (Real.sqrt (G y).det * X y i) := by
            ring
        _ = om y i * (t * s⁻¹ * Y y i) := by rw [hk y i]
        _ = t * s⁻¹ * (om y i * Y y i) := by ring
    rw [hd y, hsum]
    ring
  have h1 : 1 * s⁻¹ * ∫ y, ((φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ)) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i) ≤
      (dualRiemVar g Ψc (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc).toReal :=
    (hrw (fun y => φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ)) Xp 1 hXpk hXpd).symm.le.trans
      (hS1b _ hfin Xp (fun y _ => hXp.contDiffAt) hXpc (hXps.trans hballU) hXpn hXpb)
  have h2 : -1 * s⁻¹ * ∫ y, (φ₀ (κ.symm y) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i) ≤
      (dualRiemVar g Ψc φ₀ Ω Kc).toReal :=
    (hrw (fun y => φ₀ (κ.symm y)) Xm (-1) hXmk hXmd).symm.le.trans
      (hS1b _ hfin₀ Xm (fun y _ => hXm.contDiffAt) hXmc (hXms.trans hballU) hXmn hXmb)
  have hIn : Integrable (fun y => (φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ)) *
      ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i) :=
    (hmul _ hvn).add hτ
  have hI0 : Integrable (fun y => φ₀ (κ.symm y) *
      ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i) :=
    (hmul _ hv0).add hτ
  have hdiff : (∫ y, ((φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ)) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i)) -
      (∫ y, (φ₀ (κ.symm y) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i)) =
      2 * Real.pi * ∫ y, (n (κ.symm y) : ℝ) * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y := by
    rw [← integral_sub hIn hI0, ← integral_const_mul]
    congr 1
    funext y
    ring
  simp only [one_mul, neg_one_mul, neg_mul] at h1 h2
  have key : s⁻¹ * ((∫ y, ((φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ)) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i)) -
      (∫ y, (φ₀ (κ.symm y) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y + ∑ i : Fin 3, om y i * Y y i))) ≤
      (dualRiemVar g Ψc (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc).toReal +
        (dualRiemVar g Ψc φ₀ Ω Kc).toReal := by
    rw [mul_sub]
    linarith
  have hI : 2 * Real.pi * ∫ y, (n (κ.symm y) : ℝ) *
        ∑ i : Fin 3, partialDeriv i (fun w => Y w i) y ≤
      s * ((dualRiemVar g Ψc (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc).toReal +
        (dualRiemVar g Ψc φ₀ Ω Kc).toReal) := by
    have h3 := mul_le_mul_of_nonneg_left key hs.le
    rw [← mul_assoc, mul_inv_cancel₀ hs.ne', one_mul, hdiff] at h3
    exact h3
  rw [div_mul_eq_mul_div, le_div_iff₀ Real.two_pi_pos]
  exact (mul_comm _ _).trans_le hI

theorem int_translate_le (u : E3 → ℝ) (y : E3) (r Λ : ℝ) (hr : 0 < r)
    (hu : MeasureTheory.IntegrableOn u (Metric.ball y (3 * r)))
    (hTV : ∀ Y : E3 → E3, ContDiff ℝ ∞ Y → HasCompactSupport Y →
      tsupport Y ⊆ Metric.ball y (3 * r) → (∀ z, ‖Y z‖ ≤ 1) →
      ∫ z, u z * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z ≤ Λ)
    (h : E3) (hh : ‖h‖ ≤ r) :
    ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| ≤ ENNReal.ofReal (2 * ‖h‖ * Λ) :=
by
  classical
  
  have sepTransAvg_contDiff : ∀ (φ : E3 → ℝ) (h : E3) (hφ : ContDiff ℝ ∞ φ)
      (hφc : HasCompactSupport φ),
      ContDiff ℝ ∞ (fun z : E3 => ∫ t in (0:ℝ)..1, φ (z - t • h)) := by
    intro φ h hφ hφc
    set ν : Measure ℝ := (volume : Measure ℝ).restrict (Set.Icc 0 1) with hν
    set μ : Measure E3 := Measure.map (fun t : ℝ => t • h) ν with hμ
    have hc := hφc.contDiff_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ) (μ := μ)
      (f := fun _ : E3 => (1:ℝ)) (n := ⊤) (locallyIntegrable_const 1) hφ
    have heq : convolution (fun _ : E3 => (1:ℝ)) φ (ContinuousLinearMap.lsmul ℝ ℝ) μ =
        fun z => ∫ t in (0:ℝ)..1, φ (z - t • h) := by
      funext z
      rw [convolution_def]
      simp only [ContinuousLinearMap.lsmul_apply, one_smul]
      have hcz : Continuous (fun t : E3 => φ (z - t)) :=
        hφ.continuous.comp (continuous_const.sub continuous_id)
      rw [hμ, integral_map (f := fun t : E3 => φ (z - t))
        (by fun_prop : AEMeasurable (fun t : ℝ => t • h) ν) hcz.aestronglyMeasurable]
      rw [intervalIntegral.integral_of_le zero_le_one, hν, integral_Icc_eq_integral_Ioc]
    rw [← heq]
    exact hc
  
  have sepTransAvg_fderiv_apply : ∀ (φ : E3 → ℝ) (h z : E3) (hφ : Continuous φ)
      (hd : DifferentiableAt ℝ (fun w : E3 => ∫ t in (0:ℝ)..1, φ (w - t • h)) z),
      fderiv ℝ (fun w : E3 => ∫ t in (0:ℝ)..1, φ (w - t • h)) z h = φ z - φ (z - h) := by
    intro φ h z hφ hd
    set Ψ := fun w : E3 => ∫ t in (0:ℝ)..1, φ (w - t • h) with hΨ
    set F : ℝ → ℝ := fun u => φ (z - u • h) with hF
    have hFc : Continuous F := hφ.comp (continuous_const.sub (continuous_id.smul continuous_const))
    set G : ℝ → ℝ := fun v => ∫ u in (0:ℝ)..v, F u with hG
    have hGd : ∀ v, HasDerivAt G (F v) v := fun v =>
      (hFc.integral_hasStrictDerivAt 0 v).hasDerivAt
    have hγ : HasDerivAt (fun s : ℝ => z + s • h) ((1:ℝ) • h) 0 :=
      ((hasDerivAt_id (0:ℝ)).smul_const h).const_add z
    have h1 : HasDerivAt (Ψ ∘ fun s : ℝ => z + s • h) (fderiv ℝ Ψ z ((1:ℝ) • h)) 0 :=
      hd.hasFDerivAt.comp_hasDerivAt_of_eq 0 hγ (by simp)
    have hid : (Ψ ∘ fun s : ℝ => z + s • h) = fun s => G (1 - s) - G (0 - s) := by
      funext s
      have e1 : (fun t : ℝ => φ (z + s • h - t • h)) = fun t => F (t - s) := by
        funext t
        show φ (z + s • h - t • h) = φ (z - (t - s) • h)
        congr 1
        rw [sub_smul]
        abel
      show (∫ t in (0:ℝ)..1, φ (z + s • h - t • h)) =
        (∫ u in (0:ℝ)..(1 - s), F u) - ∫ u in (0:ℝ)..(0 - s), F u
      rw [e1, intervalIntegral.integral_comp_sub_right (fun t => F t) s,
        intervalIntegral.integral_interval_sub_left (hFc.intervalIntegrable _ _)
          (hFc.intervalIntegrable _ _)]
    have h2 : HasDerivAt (fun s => G (1 - s) - G (0 - s)) (-F (1 - 0) - -F (0 - 0)) 0 :=
      ((hGd (1 - 0)).comp_const_sub 1 0).sub ((hGd (0 - 0)).comp_const_sub 0 0)
    rw [hid] at h1
    have h3 := h1.unique h2
    rw [one_smul] at h3
    rw [h3]
    simp only [F, sub_zero, one_smul, zero_smul]
    ring
  
  have sepTransAvg_support : ∀ (φ : E3 → ℝ) (h y : E3) (r : ℝ) (hφc : HasCompactSupport φ)
      (hsupp : tsupport φ ⊆ ball y r) (hb : ∀ x, |φ x| ≤ 1) (hh : ‖h‖ ≤ r),
      HasCompactSupport (fun z : E3 => ∫ t in (0:ℝ)..1, φ (z - t • h)) ∧
        tsupport (fun z : E3 => ∫ t in (0:ℝ)..1, φ (z - t • h)) ⊆ ball y (2 * r) ∧
        ∀ z : E3, |∫ t in (0:ℝ)..1, φ (z - t • h)| ≤ 1 := by
    intro φ h y r hφc hsupp hb hh
    set C : Set E3 := (fun p : E3 × ℝ => p.1 + p.2 • h) '' (tsupport φ ×ˢ Set.Icc (0:ℝ) 1)
      with hC
    have hCc : IsCompact C := (hφc.prod isCompact_Icc).image (by fun_prop)
    have hvan : ∀ z, z ∉ C → (∫ t in (0:ℝ)..1, φ (z - t • h)) = 0 := by
      intro z hz
      rw [intervalIntegral.integral_congr (g := fun _ => (0:ℝ)) ?_, intervalIntegral.integral_zero]
      intro t ht
      rw [Set.uIcc_of_le zero_le_one] at ht
      by_contra hne
      exact hz ⟨(z - t • h, t), ⟨subset_tsupport _ hne, ht⟩, by simp⟩
    have hsuppC : Function.support (fun z => ∫ t in (0:ℝ)..1, φ (z - t • h)) ⊆ C := by
      intro z hz
      by_contra h'
      exact hz (hvan z h')
    refine ⟨HasCompactSupport.intro hCc hvan, ?_, ?_⟩
    · refine (closure_minimal hsuppC hCc.isClosed).trans ?_
      rintro _ ⟨⟨k, t⟩, ⟨hk, ht⟩, rfl⟩
      have hk' := hsupp hk
      rw [mem_ball] at hk' ⊢
      have htn : ‖t • h‖ ≤ r := by
        rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg ht.1]
        nlinarith [ht.2, ht.1, norm_nonneg h]
      calc dist (k + t • h) y = ‖(k - y) + t • h‖ := by
            rw [dist_eq_norm]; congr 1; abel
        _ ≤ ‖k - y‖ + ‖t • h‖ := norm_add_le _ _
        _ < r + r := by rw [← dist_eq_norm]; linarith
        _ = 2 * r := by ring
    · intro z
      have := intervalIntegral.norm_integral_le_of_norm_le_const (a := 0) (b := 1) (C := 1)
        (f := fun t => φ (z - t • h)) (fun t _ => by rw [Real.norm_eq_abs]; exact hb _)
      simpa [Real.norm_eq_abs] using this
  
  have hdiv0 : ∀ (Y : E3 → E3) (z : E3), z ∉ tsupport Y →
      ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z = 0 := by
    intro Y z hz
    have hev := (notMem_tsupport_iff_eventuallyEq).1 hz
    apply Finset.sum_eq_zero
    intro k _
    have hevk : (fun w => Y w k) =ᶠ[𝓝 z] (fun _ => (0 : ℝ)) :=
      hev.mono (fun w hw => by simp [hw])
    unfold partialDeriv
    rw [hevk.fderiv_eq, fderiv_const_apply]
    simp
  
  have hΛ : 0 ≤ Λ := by
    have h0 := hTV (fun _ => 0) contDiff_const HasCompactSupport.zero (by simp) (by simp)
    have e0 : (fun z => u z * ∑ i : Fin 3,
        partialDeriv i (fun w => (fun _ : E3 => (0:E3)) w i) z) = fun _ => 0 := by
      funext z
      rw [hdiv0 _ z (by simp), mul_zero]
    rw [e0, integral_zero] at h0
    exact h0
  
  by_cases h0 : h = 0
  · subst h0
    simp
  have hnh : 0 < ‖h‖ := norm_pos_iff.mpr h0
  have hn : ‖h‖ ≠ 0 := hnh.ne'
  
  have hw : Integrable ((Metric.ball y (3 * r)).indicator u) :=
    hu.integrable_indicator measurableSet_ball
  obtain ⟨v, hvm, hvw⟩ : ∃ v : E3 → ℝ, Measurable v ∧
      (Metric.ball y (3 * r)).indicator u =ᵐ[volume] v :=
    ⟨hw.aestronglyMeasurable.mk _, hw.aestronglyMeasurable.stronglyMeasurable_mk.measurable,
      hw.aestronglyMeasurable.ae_eq_mk⟩
  have hvi : Integrable v := hw.congr hvw
  have hvY : ∀ Y : E3 → E3, tsupport Y ⊆ Metric.ball y (3 * r) →
      ∫ z, v z * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z =
        ∫ z, u z * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z := by
    intro Y hY
    have e1 : (fun z => u z * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z) =
        fun z => (Metric.ball y (3 * r)).indicator u z *
          ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z := by
      funext z
      by_cases hz : z ∈ Metric.ball y (3 * r)
      · rw [Set.indicator_of_mem hz]
      · rw [hdiv0 Y z (fun h' => hz (hY h')), mul_zero, mul_zero]
    rw [e1]
    refine integral_congr_ae ?_
    filter_upwards [hvw] with z hz
    rw [hz]
  have hvL : ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| =
      ∫⁻ x in Metric.ball y r, ENNReal.ofReal |v (x + h) - v x| := by
    have h1 : ∀ᵐ x ∂(volume : Measure E3),
        (Metric.ball y (3 * r)).indicator u (x + h) = v (x + h) := by
      have := (measurePreserving_add_right volume h).quasiMeasurePreserving.ae_eq_comp hvw
      filter_upwards [this] with x hx
      simpa [Function.comp] using hx
    apply lintegral_congr_ae
    rw [Filter.EventuallyEq, ae_restrict_iff' measurableSet_ball]
    filter_upwards [hvw, h1] with x hx1 hx2 hxB
    have hxB' : dist x y < r := hxB
    have hxB3 : x ∈ Metric.ball y (3 * r) := by
      show dist x y < 3 * r
      linarith
    have hxhB3 : x + h ∈ Metric.ball y (3 * r) := by
      show dist (x + h) y < 3 * r
      have : dist (x + h) y ≤ dist x y + ‖h‖ := by
        rw [dist_eq_norm, dist_eq_norm]
        calc ‖x + h - y‖ = ‖(x - y) + h‖ := by congr 1; abel
          _ ≤ ‖x - y‖ + ‖h‖ := norm_add_le _ _
      linarith
    rw [← hx1, ← hx2, Set.indicator_of_mem hxB3, Set.indicator_of_mem hxhB3]
  rw [hvL]
  obtain ⟨f, hfdef⟩ : ∃ f : E3 → ℝ, f = fun x => v (x + h) - v x := ⟨_, rfl⟩
  have hfm : Measurable f := by
    rw [hfdef]; exact (hvm.comp (measurable_add_const h)).sub hvm
  have hfi : Integrable f := by
    rw [hfdef]; exact (hvi.comp_add_right h).sub hvi
  
  have key : ∀ (E : Set E3), MeasurableSet E → E ⊆ Metric.ball y r → ∀ σ : ℝ, |σ| = 1 →
      (∀ x ∈ E, |f x| = σ * f x) →
      ∫⁻ x in E, ENNReal.ofReal |f x| ≤ ENNReal.ofReal (‖h‖ * Λ) := by
    intro E hE hEB σ hσ hEσ
    obtain ⟨g, hgdef⟩ : ∃ g : E3 → ℝ, g = fun x => σ * f x := ⟨_, rfl⟩
    have hgi : Integrable g := by rw [hgdef]; exact hfi.const_mul σ
    have e1 : ∫⁻ x in E, ENNReal.ofReal |f x| = ∫⁻ x in E, ENNReal.ofReal (g x) :=
      setLIntegral_congr_fun hE (fun x hx => by rw [hgdef, hEσ x hx])
    have e2 : ENNReal.ofReal (∫ x in E, g x) = ∫⁻ x in E, ENNReal.ofReal (g x) := by
      refine ofReal_integral_eq_lintegral_ofReal hgi.integrableOn ?_
      rw [Filter.EventuallyLE, ae_restrict_iff' hE]
      refine Filter.Eventually.of_forall (fun x hx => ?_)
      have := hEσ x hx
      rw [Pi.zero_apply, hgdef]
      show 0 ≤ σ * f x
      rw [← this]
      exact abs_nonneg _
    rw [e1, ← e2]
    apply ENNReal.ofReal_le_ofReal
    refine le_of_forall_pos_le_add (fun ε hε => ?_)
    
    have hgl : ∫⁻ x, ENNReal.ofReal |g x| ≠ ⊤ := hgi.abs.lintegral_lt_top.ne
    have hε2 : ENNReal.ofReal (ε / 2) ≠ 0 := by
      rw [Ne, ENNReal.ofReal_eq_zero, not_le]; linarith
    obtain ⟨δ, hδ, hδs⟩ := exists_pos_setLIntegral_lt_of_measure_lt hgl hε2
    have hEfin : volume E ≠ ⊤ := ((measure_mono hEB).trans_lt measure_ball_lt_top).ne
    have hδ2 : δ / 2 ≠ 0 := (ENNReal.half_pos hδ.ne').ne'
    obtain ⟨K, hKE, hKc, hKd⟩ := hE.exists_isCompact_diff_lt hEfin hδ2
    obtain ⟨O', hEO', hO'o, -, hO'd⟩ := hE.exists_isOpen_diff_lt hEfin hδ2
    have hOo : IsOpen (O' ∩ Metric.ball y r) := hO'o.inter isOpen_ball
    have hEO : E ⊆ O' ∩ Metric.ball y r := Set.subset_inter hEO' hEB
    have hKO : K ⊆ O' ∩ Metric.ball y r := hKE.trans hEO
    obtain ⟨V, hVo, hKV, hVO, hVc⟩ := exists_open_between_and_isCompact_closure hKc hOo hKO
    obtain ⟨φ, hφs, hφr, hφsupp, hφ1⟩ :=
      exists_contMDiff_support_eq_eq_one_iff 𝓘(ℝ, E3) (n := ⊤) hVo hKc.isClosed hKV
    have hφ : ContDiff ℝ ∞ φ := contMDiff_iff_contDiff.mp hφs
    have hts : tsupport φ = closure V := by
      show closure (Function.support φ) = closure V
      rw [hφsupp]
    have hφc : HasCompactSupport φ := by
      show IsCompact (tsupport φ)
      rw [hts]
      exact hVc
    have hφ01 : ∀ x, φ x ∈ Set.Icc (0:ℝ) 1 := fun x => hφr ⟨x, rfl⟩
    have hφB : tsupport φ ⊆ Metric.ball y r := by
      rw [hts]; exact hVO.trans Set.inter_subset_right
    have hKm : MeasurableSet K := hKc.isClosed.measurableSet
    have hOKm : MeasurableSet ((O' ∩ Metric.ball y r) \ K) := hOo.measurableSet.diff hKm
    have hOKδ : volume ((O' ∩ Metric.ball y r) \ K) < δ := by
      calc volume ((O' ∩ Metric.ball y r) \ K) ≤ volume ((O' \ E) ∪ (E \ K)) := by
            apply measure_mono
            rintro x ⟨⟨hxO', -⟩, hxK⟩
            by_cases hxE : x ∈ E
            · exact Or.inr ⟨hxE, hxK⟩
            · exact Or.inl ⟨hxO', hxE⟩
        _ ≤ volume (O' \ E) + volume (E \ K) := measure_union_le _ _
        _ < δ / 2 + δ / 2 := ENNReal.add_lt_add hO'd hKd
        _ = δ := ENNReal.add_halves δ
    have hOKε := hδs _ hOKδ
    have hOKr : ∫ x in (O' ∩ Metric.ball y r) \ K, |g x| < ε / 2 := by
      rw [← ofReal_integral_eq_lintegral_ofReal hgi.abs.integrableOn
        (Filter.Eventually.of_forall (fun x => abs_nonneg _))] at hOKε
      exact (ENNReal.ofReal_lt_ofReal_iff (by linarith)).1 hOKε
    have hφg_int : Integrable (fun x => φ x * g x) :=
      hgi.bdd_mul (c := 1) hφ.continuous.aestronglyMeasurable
        (Filter.Eventually.of_forall (fun x => by
          rw [Real.norm_eq_abs, abs_of_nonneg (hφ01 x).1]; exact (hφ01 x).2))
    have hpt : ∀ x, E.indicator g x - φ x * g x ≤
        ((O' ∩ Metric.ball y r) \ K).indicator (fun x => |g x|) x := by
      intro x
      by_cases hxK : x ∈ K
      · have h1 : φ x = 1 := (hφ1 x).1 hxK
        have hxO : x ∉ (O' ∩ Metric.ball y r) \ K := fun h' => h'.2 hxK
        rw [Set.indicator_of_mem (hKE hxK), h1, Set.indicator_of_notMem hxO]
        simp
      · by_cases hxO : x ∈ O' ∩ Metric.ball y r
        · have hxOK : x ∈ (O' ∩ Metric.ball y r) \ K := ⟨hxO, hxK⟩
          rw [Set.indicator_of_mem hxOK]
          have hb := hφ01 x
          by_cases hxE : x ∈ E
          · rw [Set.indicator_of_mem hxE]
            have e3 : g x - φ x * g x = (1 - φ x) * g x := by ring
            rw [e3]
            calc (1 - φ x) * g x ≤ |(1 - φ x) * g x| := le_abs_self _
              _ = (1 - φ x) * |g x| := by
                  rw [abs_mul, abs_of_nonneg (by linarith [hb.2] : (0:ℝ) ≤ 1 - φ x)]
              _ ≤ |g x| := by nlinarith [abs_nonneg (g x), hb.1]
          · rw [Set.indicator_of_notMem hxE]
            calc 0 - φ x * g x ≤ |φ x * g x| := by rw [zero_sub]; exact neg_le_abs _
              _ = φ x * |g x| := by rw [abs_mul, abs_of_nonneg hb.1]
              _ ≤ |g x| := by nlinarith [abs_nonneg (g x), hb.2]
        · have hφ0 : φ x = 0 := by
            by_contra hne
            have hx : x ∈ Function.support φ := hne
            rw [hφsupp] at hx
            exact hxO (hVO (subset_closure hx))
          have hxE : x ∉ E := fun h' => hxO (hEO h')
          rw [Set.indicator_of_notMem hxE, hφ0, Set.indicator_of_notMem (fun h' => hxO h'.1)]
          simp
    have hint : ∫ x, (E.indicator g x - φ x * g x) ≤
        ∫ x, ((O' ∩ Metric.ball y r) \ K).indicator (fun x => |g x|) x :=
      integral_mono ((hgi.indicator hE).sub hφg_int) (hgi.abs.indicator hOKm) hpt
    rw [integral_sub (hgi.indicator hE) hφg_int, integral_indicator hE,
      integral_indicator hOKm] at hint
    
    obtain ⟨ψ, hψdef⟩ : ∃ ψ : E3 → ℝ, ψ = fun x => σ * φ x := ⟨_, rfl⟩
    have hψ : ContDiff ℝ ∞ ψ := by rw [hψdef]; exact contDiff_const.mul hφ
    have hψc : HasCompactSupport ψ := by rw [hψdef]; exact hφc.mul_left
    have hψs : tsupport ψ ⊆ Metric.ball y r := by
      rw [hψdef]; exact (closure_mono (Function.support_mul_subset_right _ _)).trans hφB
    have hψb : ∀ x, |ψ x| ≤ 1 := by
      intro x
      rw [hψdef]
      simp only [abs_mul, hσ, one_mul]
      rw [abs_of_nonneg (hφ01 x).1]
      exact (hφ01 x).2
    have hΨ : ContDiff ℝ ∞ (fun z : E3 => ∫ t in (0:ℝ)..1, ψ (z - t • h)) :=
      sepTransAvg_contDiff ψ h hψ hψc
    obtain ⟨hΨc, hΨs, hΨb⟩ := sepTransAvg_support ψ h y r hψc hψs hψb hh
    have hΨd : ∀ z, fderiv ℝ (fun z : E3 => ∫ t in (0:ℝ)..1, ψ (z - t • h)) z h =
        ψ z - ψ (z - h) := fun z =>
      sepTransAvg_fderiv_apply ψ h z hψ.continuous (hΨ.differentiable (by simp) z)
    set Ψ : E3 → ℝ := fun z => ∫ t in (0:ℝ)..1, ψ (z - t • h) with hΨdef
    
    set Y : E3 → E3 := fun z => (-‖h‖⁻¹ * Ψ z) • h with hYdef
    have hYsupp : Function.support Y ⊆ Function.support Ψ := by
      intro z hz
      rw [Function.mem_support] at hz ⊢
      intro h0'
      apply hz
      simp [Y, h0']
    have hYcd : ContDiff ℝ ∞ Y := (contDiff_const.mul hΨ).smul contDiff_const
    have hYc : HasCompactSupport Y := hΨc.mono' (hYsupp.trans (subset_tsupport _))
    have hYs3 : tsupport Y ⊆ Metric.ball y (3 * r) :=
      (closure_mono hYsupp).trans (hΨs.trans (Metric.ball_subset_ball (by linarith)))
    have hYn : ∀ z, ‖Y z‖ ≤ 1 := by
      intro z
      simp only [Y]
      rw [norm_smul, Real.norm_eq_abs, abs_mul, abs_neg, abs_inv, abs_norm]
      calc ‖h‖⁻¹ * |Ψ z| * ‖h‖ = |Ψ z| := by field_simp
        _ ≤ 1 := hΨb z
    have hdiv : ∀ z, ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z =
        ‖h‖⁻¹ * (ψ (z - h) - ψ z) := by
      intro z
      have hfun : ∀ i : Fin 3, (fun w => Y w i) = fun w => (-‖h‖⁻¹ * h i) * Ψ w := by
        intro i
        funext w
        simp only [Y, PiLp.smul_apply, smul_eq_mul]
        ring
      have hdiff : DifferentiableAt ℝ Ψ z := hΨ.differentiable (by simp) z
      have hhe : h = h 0 • e 0 + h 1 • e 1 + h 2 • e 2 := by
        ext j
        fin_cases j <;> simp [e]
      unfold partialDeriv
      simp only [hfun, fderiv_const_mul hdiff, ContinuousLinearMap.smul_apply, smul_eq_mul,
        Fin.sum_univ_three]
      have hfd : fderiv ℝ Ψ z h = h 0 * fderiv ℝ Ψ z (e 0) + h 1 * fderiv ℝ Ψ z (e 1) +
          h 2 * fderiv ℝ Ψ z (e 2) := by
        conv_lhs => rw [hhe]
        simp only [map_add, map_smul, smul_eq_mul]
      rw [hΨd z] at hfd
      linear_combination ‖h‖⁻¹ * hfd
    
    have hbψ : ∀ x, ‖ψ x‖ ≤ 1 := fun x => by rw [Real.norm_eq_abs]; exact hψb x
    have hψh_cont : Continuous (fun x => ψ (x - h)) :=
      hψ.continuous.comp (continuous_id.sub continuous_const)
    have hI1 : Integrable (fun x => ψ x * v (x + h)) :=
      (hvi.comp_add_right h).bdd_mul hψ.continuous.aestronglyMeasurable
        (Filter.Eventually.of_forall hbψ)
    have hI2 : Integrable (fun x => ψ x * v x) :=
      hvi.bdd_mul hψ.continuous.aestronglyMeasurable (Filter.Eventually.of_forall hbψ)
    have hI3 : Integrable (fun x => ψ (x - h) * v x) :=
      hvi.bdd_mul hψh_cont.aestronglyMeasurable (Filter.Eventually.of_forall (fun x => hbψ _))
    have htr : ∫ x, ψ x * v (x + h) = ∫ x, ψ (x - h) * v x := by
      have := integral_add_right_eq_self (μ := (volume : Measure E3))
        (fun x => ψ (x - h) * v x) h
      simp only [add_sub_cancel_right] at this
      exact this
    have hpair : ∫ x, φ x * g x =
        ‖h‖ * ∫ z, v z * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z := by
      have e4 : (fun x => φ x * g x) = fun x => ψ x * v (x + h) - ψ x * v x := by
        funext x
        rw [hgdef, hψdef, hfdef]
        ring
      have e5 : (fun z => v z * ∑ i : Fin 3, partialDeriv i (fun w => Y w i) z) =
          fun z => ‖h‖⁻¹ * (ψ (z - h) * v z - ψ z * v z) := by
        funext z
        rw [hdiv z]
        ring
      rw [e4, e5, integral_sub hI1 hI2, integral_const_mul, integral_sub hI3 hI2, htr,
        ← mul_assoc, mul_inv_cancel₀ hn, one_mul]
    have hTVY := hTV Y hYcd hYc hYs3 hYn
    rw [← hvY Y hYs3] at hTVY
    have hfin : ∫ x, φ x * g x ≤ ‖h‖ * Λ := by
      rw [hpair]
      exact mul_le_mul_of_nonneg_left hTVY (norm_nonneg _)
    linarith [hint, hOKr]
  
  have hAp := key (Metric.ball y r ∩ {x | 0 < f x})
    (measurableSet_ball.inter (measurableSet_lt measurable_const hfm)) Set.inter_subset_left
    1 (by simp) (fun x hx => by rw [one_mul]; exact abs_of_pos hx.2)
  have hAm := key (Metric.ball y r ∩ {x | f x ≤ 0})
    (measurableSet_ball.inter (measurableSet_le hfm measurable_const)) Set.inter_subset_left
    (-1) (by simp) (fun x hx => by rw [neg_one_mul]; exact abs_of_nonpos hx.2)
  have hsplit : (Metric.ball y r ∩ {x | 0 < f x}) ∪ (Metric.ball y r ∩ {x | f x ≤ 0}) =
      Metric.ball y r := by
    rw [← Set.inter_union_distrib_left]
    have hu' : {x | 0 < f x} ∪ {x | f x ≤ 0} = Set.univ := by
      ext x
      simp only [Set.mem_union, Set.mem_setOf_eq, Set.mem_univ, iff_true]
      exact lt_or_ge 0 (f x)
    rw [hu', Set.inter_univ]
  have hΛh : 0 ≤ ‖h‖ * Λ := mul_nonneg (norm_nonneg _) hΛ
  calc ∫⁻ x in Metric.ball y r, ENNReal.ofReal |v (x + h) - v x|
      = ∫⁻ x in (Metric.ball y r ∩ {x | 0 < f x}) ∪ (Metric.ball y r ∩ {x | f x ≤ 0}),
          ENNReal.ofReal |f x| := by rw [hsplit, hfdef]
    _ ≤ _ := lintegral_union_le _ _ _
    _ ≤ ENNReal.ofReal (‖h‖ * Λ) + ENNReal.ofReal (‖h‖ * Λ) := add_le_add hAp hAm
    _ = ENNReal.ofReal (2 * ‖h‖ * Λ) := by
        rw [← ENNReal.ofReal_add hΛh hΛh]
        congr 1
        ring

theorem int_poincare_offset (u : E3 → ℝ) (y : E3) (r C : ℝ) (hr : 0 < r) (hu : Measurable u)
    (hZ : ∀ x ∈ Metric.ball y r, ∃ m : ℤ, u x = m)
    (hmod : ∀ h : E3, ‖h‖ ≤ r →
      ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| ≤ ENNReal.ofReal (C * ‖h‖)) :
    ∃ m : ℤ, ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u x - m| ≤ ENNReal.ofReal (8 * C * r) :=
by
  
  obtain ⟨C', hC'0, hmod', hRHS⟩ : ∃ C' : ℝ, 0 ≤ C' ∧
      (∀ h : E3, ‖h‖ ≤ r →
        ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| ≤ ENNReal.ofReal (C' * ‖h‖)) ∧
      ENNReal.ofReal (8 * C' * r) = ENNReal.ofReal (8 * C * r) := by
    refine ⟨max C 0, le_max_right _ _, fun h hh => ?_, ?_⟩
    · refine (hmod h hh).trans (ENNReal.ofReal_le_ofReal ?_)
      exact mul_le_mul_of_nonneg_right (le_max_left _ _) (norm_nonneg h)
    · rcases le_or_gt 0 C with hC | hC
      · rw [max_eq_left hC]
      · rw [max_eq_right hC.le, mul_zero, zero_mul, ENNReal.ofReal_zero,
          ENNReal.ofReal_of_nonpos (by nlinarith : 8 * C * r ≤ 0)]
  rw [← hRHS]
  clear hmod hRHS
  
  have hGm : Measurable (Function.uncurry fun (x h : E3) => ENNReal.ofReal |u (x + h) - u x|) := by
    apply ENNReal.measurable_ofReal.comp
    apply continuous_abs.measurable.comp
    exact (hu.comp (measurable_fst.add measurable_snd)).sub (hu.comp measurable_fst)
  have hHm : Measurable (Function.uncurry fun (x x' : E3) => ENNReal.ofReal |u x' - u x|) := by
    apply ENNReal.measurable_ofReal.comp
    apply continuous_abs.measurable.comp
    exact (hu.comp measurable_snd).sub (hu.comp measurable_fst)
  
  have hstep_a : ∀ x ∈ Metric.ball y (r / 2),
      ∫⁻ x' in Metric.ball y (r / 2), ENNReal.ofReal |u x' - u x| ≤
        ∫⁻ h in Metric.ball (0 : E3) r, ENNReal.ofReal |u (x + h) - u x| := by
    intro x hx
    rw [← lintegral_indicator measurableSet_ball, ← lintegral_indicator measurableSet_ball,
      ← lintegral_add_left_eq_self _ x]
    apply lintegral_mono
    intro h
    by_cases hxh : x + h ∈ Metric.ball y (r / 2)
    · have hhD : h ∈ Metric.ball (0 : E3) r := by
        rw [mem_ball_zero_iff]
        have h1 : dist (x + h) x < r := by
          calc dist (x + h) x ≤ dist (x + h) y + dist y x := dist_triangle _ _ _
            _ < r / 2 + r / 2 :=
                add_lt_add (mem_ball.mp hxh) (by rw [dist_comm]; exact mem_ball.mp hx)
            _ = r := by ring
        rwa [dist_eq_norm, add_sub_cancel_left] at h1
      simp only [Set.indicator_of_mem hxh, Set.indicator_of_mem hhD, le_refl]
    · simp only [Set.indicator_of_notMem hxh]
      exact zero_le _
  
  have hF_le : ∫⁻ x in Metric.ball y (r / 2), ∫⁻ x' in Metric.ball y (r / 2),
      ENNReal.ofReal |u x' - u x| ≤
        ENNReal.ofReal (C' * r) * volume (Metric.ball (0 : E3) r) := by
    calc ∫⁻ x in Metric.ball y (r / 2), ∫⁻ x' in Metric.ball y (r / 2),
          ENNReal.ofReal |u x' - u x|
        ≤ ∫⁻ x in Metric.ball y (r / 2), ∫⁻ h in Metric.ball (0 : E3) r,
            ENNReal.ofReal |u (x + h) - u x| := setLIntegral_mono' measurableSet_ball hstep_a
      _ = ∫⁻ h in Metric.ball (0 : E3) r, ∫⁻ x in Metric.ball y (r / 2),
            ENNReal.ofReal |u (x + h) - u x| := lintegral_lintegral_swap hGm.aemeasurable
      _ ≤ ∫⁻ h in Metric.ball (0 : E3) r, ENNReal.ofReal (C' * r) := by
          apply setLIntegral_mono' measurableSet_ball
          intro h hh
          have hh' : ‖h‖ < r := mem_ball_zero_iff.mp hh
          calc ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u (x + h) - u x|
              ≤ ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| :=
                lintegral_mono_set (Metric.ball_subset_ball (by linarith))
            _ ≤ ENNReal.ofReal (C' * ‖h‖) := hmod' h hh'.le
            _ ≤ ENNReal.ofReal (C' * r) :=
                ENNReal.ofReal_le_ofReal (mul_le_mul_of_nonneg_left hh'.le hC'0)
      _ = ENNReal.ofReal (C' * r) * volume (Metric.ball (0 : E3) r) := setLIntegral_const _ _
  
  have hvol : volume (Metric.ball (0 : E3) r) = 8 * volume (Metric.ball y (r / 2)) := by
    rw [Measure.addHaar_ball _ _ hr.le, Measure.addHaar_ball _ _ (by linarith : (0 : ℝ) ≤ r / 2),
      finrank_euclideanSpace, Fintype.card_fin]
    have h8 : ENNReal.ofReal (r ^ 3) = 8 * ENNReal.ofReal ((r / 2) ^ 3) := by
      rw [show r ^ 3 = 8 * (r / 2) ^ 3 by ring, ENNReal.ofReal_mul (by norm_num),
        ENNReal.ofReal_ofNat]
    rw [h8, mul_assoc]
  
  have hFm : Measurable (fun x => ∫⁻ x' in Metric.ball y (r / 2), ENNReal.ofReal |u x' - u x|) :=
    hHm.lintegral_prod_right
  have hB'0 : volume (Metric.ball y (r / 2)) ≠ 0 := (measure_ball_pos volume y (half_pos hr)).ne'
  have hB'top : volume (Metric.ball y (r / 2)) ≠ ⊤ := measure_ball_lt_top.ne
  obtain ⟨x0, hx0, hFx0⟩ := exists_le_setLAverage hB'0 hB'top hFm.aemeasurable
  rw [setLAverage_eq] at hFx0
  have hx0B : x0 ∈ Metric.ball y r := Metric.ball_subset_ball (by linarith) hx0
  obtain ⟨m, hm⟩ := hZ x0 hx0B
  refine ⟨m, ?_⟩
  rw [← hm]
  refine hFx0.trans (ENNReal.div_le_of_le_mul ?_)
  calc ∫⁻ x in Metric.ball y (r / 2), ∫⁻ x' in Metric.ball y (r / 2), ENNReal.ofReal |u x' - u x|
      ≤ ENNReal.ofReal (C' * r) * volume (Metric.ball (0 : E3) r) := hF_le
    _ = ENNReal.ofReal (8 * C' * r) * volume (Metric.ball y (r / 2)) := by
      rw [hvol, show 8 * C' * r = 8 * (C' * r) by ring,
        ENNReal.ofReal_mul (by norm_num : (0 : ℝ) ≤ 8), ENNReal.ofReal_ofNat]
      ring

theorem dual_ball_offset [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kc : Set M) (hΩ : IsOpen Ω) (φ₀ : M → ℝ)
    (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤) (B : ENNReal) (hB : B < ⊤)
    (p : M) (z : E3) (R : ℝ) (hR : 0 < R)
    (hball : Metric.closedBall z R ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source)) :
    ∃ Λ : ℝ, 0 ≤ Λ ∧ ∀ n : M → ℤ, (∀ j : ℤ, sepChartMeas {x | n x = j}) →
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc ≤ B →
      Measurable (fun y => (((chartAt E3 p).target.indicator
        (fun y => n ((chartAt E3 p).symm y)) y : ℤ) : ℝ)) ∧
      (∀ h : E3, ‖h‖ ≤ R / 3 →
        ∫⁻ x in Metric.ball z (R / 3), ENNReal.ofReal
          |(((chartAt E3 p).target.indicator (fun y => n ((chartAt E3 p).symm y)) (x + h) : ℤ) : ℝ) -
            (((chartAt E3 p).target.indicator (fun y => n ((chartAt E3 p).symm y)) x : ℤ) : ℝ)| ≤
          ENNReal.ofReal (Λ * ‖h‖)) ∧
      ∃ a : ℤ, ∫⁻ x in Metric.ball z (R / 6), ENNReal.ofReal
          |(((chartAt E3 p).target.indicator (fun y => n ((chartAt E3 p).symm y)) x : ℤ) : ℝ) - (a : ℝ)| ≤
        ENNReal.ofReal (Λ * R) :=
by
  classical
  obtain ⟨A, hA, hTVall⟩ := dual_chart_tv_bound g Ψ hΨs Ω Kc hΩ φ₀ hfin₀ p z R hR hball
  set E0 := dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc with hE0
  set Λ₀ : ℝ := A * (B.toReal + E0.toReal) with hΛ₀
  have hΛ₀0 : 0 ≤ Λ₀ := mul_nonneg hA (add_nonneg ENNReal.toReal_nonneg ENNReal.toReal_nonneg)
  refine ⟨6 * Λ₀, by positivity, ?_⟩
  intro n hn hnB
  
  have hUt : chartAt E3 p '' (Ω ∩ (chartAt E3 p).source) ⊆ (chartAt E3 p).target := by
    rintro _ ⟨x, hx, rfl⟩
    exact (chartAt E3 p).map_source hx.2
  have hBt : Metric.ball z R ⊆ (chartAt E3 p).target :=
    (Metric.ball_subset_closedBall.trans hball).trans hUt
  set uZ : E3 → ℤ := (chartAt E3 p).target.indicator (fun y => n ((chartAt E3 p).symm y))
    with huZ
  set u : E3 → ℝ := fun y => ((uZ y : ℤ) : ℝ) with hu
  have hueq : ∀ y ∈ (chartAt E3 p).target, u y = (n ((chartAt E3 p).symm y) : ℝ) := by
    intro y hy
    simp only [hu, huZ, Set.indicator_of_mem hy]
  
  have hmeas : Measurable u := by
    have hf' : Measurable uZ := by
      apply measurable_to_countable'
      intro j
      have h1 : uZ ⁻¹' {j} =
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x | n x = j}) ∪
            ((chartAt E3 p).target)ᶜ ∩ {_y : E3 | (0 : ℤ) = j} := by
        ext y
        by_cases hy : y ∈ (chartAt E3 p).target <;>
          simp [huZ, Set.indicator, hy]
      rw [h1]
      have h2 : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x | n x = j} =
          chartAt E3 p '' ({x | n x = j} ∩ (chartAt E3 p).source) := by
        rw [Set.inter_comm _ (chartAt E3 p).source]
        exact ((chartAt E3 p).image_source_inter_eq' _).symm
      rw [h2]
      exact (hn j p).union
        ((chartAt E3 p).open_target.measurableSet.compl.inter (MeasurableSet.const _))
    exact (measurable_of_countable _).comp hf'
  
  have hnlt : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      < ⊤ := lt_of_le_of_lt hnB hB
  have hle : A * ((dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc).toReal + E0.toReal) ≤ Λ₀ := by
    apply mul_le_mul_of_nonneg_left _ hA
    have := ENNReal.toReal_mono hB.ne hnB
    linarith
  obtain ⟨hint, hTV⟩ := hTVall n hnlt
  have hr3 : 0 < R / 3 := by positivity
  have h3r : 3 * (R / 3) = R := by ring
  have huint : MeasureTheory.IntegrableOn u (Metric.ball z (3 * (R / 3))) := by
    rw [h3r]
    refine (hint.mono_set Metric.ball_subset_closedBall).congr_fun ?_ measurableSet_ball
    intro y hy
    exact (hueq y (hBt hy)).symm
  have huTV : ∀ Y : E3 → E3, ContDiff ℝ ∞ Y → HasCompactSupport Y →
      tsupport Y ⊆ Metric.ball z (3 * (R / 3)) → (∀ w, ‖Y w‖ ≤ 1) →
      ∫ w, u w * ∑ i : Fin 3, partialDeriv i (fun v => Y v i) w ≤ Λ₀ := by
    intro Y hY hYc hYs hY1
    rw [h3r] at hYs
    have hpt : (fun w => u w * ∑ i : Fin 3, partialDeriv i (fun v => Y v i) w) =
        (fun w => (n ((chartAt E3 p).symm w) : ℝ) *
          ∑ i : Fin 3, partialDeriv i (fun v => Y v i) w) := by
      funext w
      by_cases hw : w ∈ (chartAt E3 p).target
      · rw [hueq w hw]
      · have hwY : w ∉ tsupport Y := fun h => hw (hBt (hYs h))
        have hev : Y =ᶠ[𝓝 w] 0 := (notMem_tsupport_iff_eventuallyEq).1 hwY
        have hdiv : ∑ i : Fin 3, partialDeriv i (fun v => Y v i) w = 0 := by
          apply Finset.sum_eq_zero
          intro i _
          have hevi : (fun v => Y v i) =ᶠ[𝓝 w] (fun _ => (0 : ℝ)) := by
            filter_upwards [hev] with v hv
            rw [hv]
            rfl
          simp only [partialDeriv]
          rw [Filter.EventuallyEq.fderiv_eq hevi]
          simp
        rw [hdiv, mul_zero, mul_zero]
    rw [hpt]
    exact (hTV Y hY hYc hYs hY1).trans hle
  have hmod₀ : ∀ h : E3, ‖h‖ ≤ R / 3 →
      ∫⁻ x in Metric.ball z (R / 3), ENNReal.ofReal |u (x + h) - u x| ≤
        ENNReal.ofReal (2 * ‖h‖ * Λ₀) :=
    fun h hh => int_translate_le u z (R / 3) Λ₀ hr3 huint huTV h hh
  refine ⟨hmeas, ?_, ?_⟩
  · intro h hh
    refine (hmod₀ h hh).trans (ENNReal.ofReal_le_ofReal ?_)
    have := mul_nonneg hΛ₀0 (norm_nonneg h)
    nlinarith
  · obtain ⟨a, ha⟩ := int_poincare_offset u z (R / 3) (2 * Λ₀) hr3 hmeas
      (fun x _ => ⟨uZ x, rfl⟩)
      (fun h hh => by
        have := hmod₀ h hh
        rwa [show 2 * ‖h‖ * Λ₀ = 2 * Λ₀ * ‖h‖ by ring] at this)
    refine ⟨a, ?_⟩
    rw [show R / 6 = R / 3 / 2 by ring]
    refine ha.trans (ENNReal.ofReal_le_ofReal ?_)
    have := mul_nonneg hΛ₀0 hR.le
    nlinarith

theorem int_ae_subseq_of_bdd (N : ℕ) (y : Fin N → E3) (r : Fin N → ℝ) (hr : ∀ k, 0 < r k)
    (C D : ℝ) (u : Fin N → ℕ → E3 → ℝ) (hmeas : ∀ k i, Measurable (u k i))
    (hZ : ∀ k i, ∀ x ∈ Metric.ball (y k) (2 * r k), ∃ m : ℤ, u k i x = m)
    (hbdd : ∀ k i, ∫⁻ x in Metric.ball (y k) (r k), ENNReal.ofReal |u k i x| ≤ ENNReal.ofReal D)
    (hmod : ∀ k i (h : E3), ‖h‖ ≤ r k →
      ∫⁻ x in Metric.ball (y k) (r k), ENNReal.ofReal |u k i (x + h) - u k i x| ≤
        ENNReal.ofReal (C * ‖h‖)) :
    ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ k, ∀ᵐ x ∂(MeasureTheory.volume.restrict
      (Metric.ball (y k) (r k / 2))), ∃ j : ℤ, ∀ᶠ i in Filter.atTop, u k (φ i) x = j :=
by
  
  have L1 : ∀ (u : E3 → ℝ) (y : E3) (r C : ℝ), Measurable u →
      (∀ x ∈ Metric.ball y (2 * r), ∃ m : ℤ, u x = m) →
      (∀ h : E3, ‖h‖ ≤ r →
        ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| ≤ ENNReal.ofReal (C * ‖h‖)) →
      ∀ (j : ℤ) (h : E3), ‖h‖ ≤ r →
      volume (symmDiff {x | (j : ℝ) ≤ u x} ((fun x => x + h) ⁻¹' {x | (j : ℝ) ≤ u x}) ∩
        Metric.ball y r) ≤ ENNReal.ofReal (C * ‖h‖) := by
    intro u y r C hmeas hZ hmod j h hh
    have hF : AEMeasurable (fun x => ENNReal.ofReal |u (x + h) - u x|)
        (volume.restrict (Metric.ball y r)) :=
      ((hmeas.comp (measurable_add_const h)).sub hmeas).abs.ennreal_ofReal.aemeasurable
    have hsub : symmDiff {x | (j : ℝ) ≤ u x} ((fun x => x + h) ⁻¹' {x | (j : ℝ) ≤ u x}) ∩
        Metric.ball y r ⊆ {x | 1 ≤ ENNReal.ofReal |u (x + h) - u x|} ∩ Metric.ball y r := by
      rintro x ⟨hx, hxb⟩
      refine ⟨?_, hxb⟩
      have hd : dist x y < r := hxb
      have hx2 : x ∈ Metric.ball y (2 * r) := by
        show dist x y < 2 * r
        linarith [dist_nonneg (x := x) (y := y)]
      have hxh2 : x + h ∈ Metric.ball y (2 * r) := by
        show dist (x + h) y < 2 * r
        have h1 : dist (x + h) y ≤ dist (x + h) x + dist x y := dist_triangle _ _ _
        have h2 : dist (x + h) x = ‖h‖ := by rw [dist_eq_norm, add_sub_cancel_left]
        linarith
      obtain ⟨a, ha⟩ := hZ x hx2
      obtain ⟨b, hb⟩ := hZ (x + h) hxh2
      have hab : a ≠ b := by
        rintro rfl
        rcases Set.mem_symmDiff.1 hx with ⟨h1, h2⟩ | ⟨h1, h2⟩
        · apply h2
          show (j : ℝ) ≤ u (x + h)
          rw [hb, ← ha]
          exact h1
        · apply h2
          show (j : ℝ) ≤ u x
          rw [ha, ← hb]
          exact h1
      have h1 : (1 : ℤ) ≤ |b - a| := Int.one_le_abs (sub_ne_zero.2 (Ne.symm hab))
      have h2 : (1 : ℝ) ≤ |u (x + h) - u x| := by
        rw [ha, hb]
        exact_mod_cast h1
      show 1 ≤ ENNReal.ofReal |u (x + h) - u x|
      rw [← ENNReal.ofReal_one]
      exact ENNReal.ofReal_le_ofReal h2
    calc _ ≤ volume ({x | 1 ≤ ENNReal.ofReal |u (x + h) - u x|} ∩ Metric.ball y r) :=
          measure_mono hsub
      _ = volume.restrict (Metric.ball y r) {x | 1 ≤ ENNReal.ofReal |u (x + h) - u x|} :=
          (Measure.restrict_apply' measurableSet_ball).symm
      _ = 1 * volume.restrict (Metric.ball y r) {x | 1 ≤ ENNReal.ofReal |u (x + h) - u x|} :=
          (one_mul _).symm
      _ ≤ ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u (x + h) - u x| :=
          mul_meas_ge_le_lintegral₀ hF 1
      _ ≤ _ := hmod h hh
  
  have L5 : ∀ (u : E3 → ℝ) (y : E3) (r D : ℝ), Measurable u →
      ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u x| ≤ ENNReal.ofReal D →
      ∀ (t : ℝ), 0 < t →
      volume {x | x ∈ Metric.ball y (r / 2) ∧ t ≤ |u x|} ≤ ENNReal.ofReal (D / t) := by
    intro u y r D hmeas hbdd t ht
    have hF : AEMeasurable (fun x => ENNReal.ofReal |u x|) (volume.restrict (Metric.ball y r)) :=
      hmeas.abs.ennreal_ofReal.aemeasurable
    have hsub : {x | x ∈ Metric.ball y (r / 2) ∧ t ≤ |u x|} ⊆
        {x | ENNReal.ofReal t ≤ ENNReal.ofReal |u x|} ∩ Metric.ball y r := by
      rintro x ⟨hxb, hxt⟩
      refine ⟨ENNReal.ofReal_le_ofReal hxt, ?_⟩
      have hd : dist x y < r / 2 := hxb
      show dist x y < r
      linarith [dist_nonneg (x := x) (y := y)]
    have hM := mul_meas_ge_le_lintegral₀ hF (ENNReal.ofReal t)
    have hμ : volume.restrict (Metric.ball y r) {x | ENNReal.ofReal t ≤ ENNReal.ofReal |u x|} ≤
        ENNReal.ofReal D / ENNReal.ofReal t := by
      rw [ENNReal.le_div_iff_mul_le (Or.inl (ENNReal.ofReal_pos.2 ht).ne')
        (Or.inl ENNReal.ofReal_ne_top), mul_comm]
      exact hM.trans hbdd
    calc _ ≤ volume ({x | ENNReal.ofReal t ≤ ENNReal.ofReal |u x|} ∩ Metric.ball y r) :=
          measure_mono hsub
      _ = _ := (Measure.restrict_apply' measurableSet_ball).symm
      _ ≤ _ := hμ
      _ = _ := (ENNReal.ofReal_div_of_pos ht).symm
  
  have L7 : ∀ (f g : E3 → ℝ) (S : Set E3) (K : ℝ) (i : ℕ),
      (∀ x ∈ S, ∃ m : ℤ, f x = m) → (∀ x ∈ S, ∃ m : ℤ, g x = m) →
      (∀ j ∈ Finset.Icc (-(2 : ℤ) ^ i) ((2 : ℤ) ^ i),
        volume (symmDiff {x | (j : ℝ) ≤ f x} {x | (j : ℝ) ≤ g x} ∩ S) ≤
          ENNReal.ofReal ((1 / 2 : ℝ) ^ i / (2 * 2 ^ i + 1))) →
      volume {x | x ∈ S ∧ (2 : ℝ) ^ i ≤ |f x|} ≤ ENNReal.ofReal (K / 2 ^ i) →
      volume {x | x ∈ S ∧ (2 : ℝ) ^ i ≤ |g x|} ≤ ENNReal.ofReal (K / 2 ^ i) →
      volume {x | x ∈ S ∧ f x ≠ g x} ≤ ENNReal.ofReal ((1 + 2 * |K|) * (1 / 2 : ℝ) ^ i) := by
    intro f g S K i hf hg hsd htf htg
    set I := Finset.Icc (-(2 : ℤ) ^ i) ((2 : ℤ) ^ i) with hI
    set A := ⋃ j ∈ I, symmDiff {x | (j : ℝ) ≤ f x} {x | (j : ℝ) ≤ g x} ∩ S with hA
    set Tf := {x | x ∈ S ∧ (2 : ℝ) ^ i ≤ |f x|} with hTf
    set Tg := {x | x ∈ S ∧ (2 : ℝ) ^ i ≤ |g x|} with hTg
    have hcont : {x | x ∈ S ∧ f x ≠ g x} ⊆ A ∪ Tf ∪ Tg := by
      rintro x ⟨hxS, hne⟩
      obtain ⟨a, ha⟩ := hf x hxS
      obtain ⟨b, hb⟩ := hg x hxS
      by_cases hfa : (2 : ℝ) ^ i ≤ |f x|
      · exact Or.inl (Or.inr ⟨hxS, hfa⟩)
      by_cases hgb : (2 : ℝ) ^ i ≤ |g x|
      · exact Or.inr ⟨hxS, hgb⟩
      push_neg at hfa hgb
      rw [ha] at hfa hne
      rw [hb] at hgb hne
      have hfa' : |a| < (2 : ℤ) ^ i := by exact_mod_cast hfa
      have hgb' : |b| < (2 : ℤ) ^ i := by exact_mod_cast hgb
      have hab : a ≠ b := fun h => hne (by rw [h])
      obtain ⟨ha1, ha2⟩ := abs_lt.1 hfa'
      obtain ⟨hb1, hb2⟩ := abs_lt.1 hgb'
      left; left
      rw [hA, Set.mem_iUnion₂]
      rcases lt_or_gt_of_ne hab with h | h
      · refine ⟨b, ?_, ?_, hxS⟩
        · rw [Finset.mem_Icc]; exact ⟨by linarith, by linarith⟩
        · rw [Set.mem_symmDiff]
          right
          refine ⟨?_, ?_⟩
          · show (b : ℝ) ≤ g x
            rw [hb]
          · show ¬ (b : ℝ) ≤ f x
            rw [ha]
            push_neg
            exact_mod_cast h
      · refine ⟨a, ?_, ?_, hxS⟩
        · rw [Finset.mem_Icc]; exact ⟨by linarith, by linarith⟩
        · rw [Set.mem_symmDiff]
          left
          refine ⟨?_, ?_⟩
          · show (a : ℝ) ≤ f x
            rw [ha]
          · show ¬ (a : ℝ) ≤ g x
            rw [hb]
            push_neg
            exact_mod_cast h
    have hsum : ∑ j ∈ I, volume (symmDiff {x | (j : ℝ) ≤ f x} {x | (j : ℝ) ≤ g x} ∩ S) ≤
        ENNReal.ofReal ((1 / 2 : ℝ) ^ i) := by
      calc _ ≤ I.card • ENNReal.ofReal ((1 / 2 : ℝ) ^ i / (2 * 2 ^ i + 1)) :=
            Finset.sum_le_card_nsmul _ _ _ hsd
        _ = ENNReal.ofReal ((1 / 2 : ℝ) ^ i) := by
          have hc : I.card = 2 * 2 ^ i + 1 := by
            rw [hI, Int.card_Icc]
            have h' : ((2 : ℤ) ^ i + 1 - -(2 : ℤ) ^ i) = ((2 * 2 ^ i + 1 : ℕ) : ℤ) := by
              push_cast; ring
            rw [h', Int.toNat_natCast]
          rw [hc, nsmul_eq_mul, ← ENNReal.ofReal_natCast, ← ENNReal.ofReal_mul (by positivity)]
          congr 1
          push_cast
          field_simp
    have hK : ENNReal.ofReal (K / 2 ^ i) ≤ ENNReal.ofReal (|K| * (1 / 2 : ℝ) ^ i) := by
      apply ENNReal.ofReal_le_ofReal
      rw [one_div_pow, ← div_eq_mul_one_div]
      gcongr
      exact le_abs_self K
    calc volume {x | x ∈ S ∧ f x ≠ g x} ≤ volume (A ∪ Tf ∪ Tg) := measure_mono hcont
      _ ≤ volume A + volume Tf + volume Tg :=
          (measure_union_le _ _).trans (by gcongr; exact measure_union_le _ _)
      _ ≤ ENNReal.ofReal ((1 / 2 : ℝ) ^ i) + ENNReal.ofReal (|K| * (1 / 2 : ℝ) ^ i) +
            ENNReal.ofReal (|K| * (1 / 2 : ℝ) ^ i) := by
          gcongr
          · exact (measure_biUnion_finset_le _ _).trans hsum
          · exact htf.trans hK
          · exact htg.trans hK
      _ = _ := by
          rw [← ENNReal.ofReal_add (by positivity) (by positivity),
            ← ENNReal.ofReal_add (by positivity) (by positivity)]
          congr 1
          ring
  
  have L4 : ∀ (f : ℕ → E3 → ℝ) (S : Set E3) (c : ℝ), MeasurableSet S →
      (∀ i, ∀ x ∈ S, ∃ m : ℤ, f i x = m) →
      (∀ i, volume {x | x ∈ S ∧ f i x ≠ f (i + 1) x} ≤ ENNReal.ofReal (c * (1 / 2 : ℝ) ^ i)) →
      ∀ᵐ x ∂(volume.restrict S), ∃ j : ℤ, ∀ᶠ i in Filter.atTop, f i x = j := by
    intro f S c hS hZ hA
    have hA' : ∀ i, volume {x | x ∈ S ∧ f i x ≠ f (i + 1) x} ≤
        ENNReal.ofReal (max c 0 * (1 / 2 : ℝ) ^ i) := fun i =>
      (hA i).trans (ENNReal.ofReal_le_ofReal
        (mul_le_mul_of_nonneg_right (le_max_left _ _) (by positivity)))
    have hsum : ∑' i, volume {x | x ∈ S ∧ f i x ≠ f (i + 1) x} ≠ ⊤ := by
      refine ne_top_of_le_ne_top (ENNReal.ofReal_ne_top
        (r := ∑' i, max c 0 * (1 / 2 : ℝ) ^ i)) ?_
      rw [ENNReal.ofReal_tsum_of_nonneg (fun n => mul_nonneg (le_max_right _ _) (by positivity))
        (summable_geometric_two.mul_left _)]
      exact ENNReal.tsum_le_tsum hA'
    have hBC := ae_eventually_notMem hsum
    rw [ae_restrict_iff' hS]
    filter_upwards [hBC] with x hx hxS
    obtain ⟨i₀, hi₀⟩ := Filter.eventually_atTop.1 hx
    have hstep : ∀ i, i₀ ≤ i → f i x = f i₀ x := by
      intro i hi
      induction i, hi using Nat.le_induction with
      | base => rfl
      | succ n hn ih =>
        have h1 := hi₀ n hn
        have h2 : f n x = f (n + 1) x := by
          by_contra hc
          exact h1 ⟨hxS, hc⟩
        rw [← h2, ih]
    obtain ⟨m, hm⟩ := hZ i₀ x hxS
    exact ⟨m, Filter.eventually_atTop.2 ⟨i₀, fun i hi => (hstep i hi).trans hm⟩⟩
  
  have L6 : ∀ (Q : ℕ → ℕ → ℕ → Prop),
      (∀ i, ∃ T : ℕ, ∀ n n' : ℕ, T ≤ n → T ≤ n' → Q i n n') →
      ∃ ψ : ℕ → ℕ, StrictMono ψ ∧ ∀ i, Q i (ψ i) (ψ (i + 1)) := by
    intro Q hQ
    choose T hT using hQ
    refine ⟨fun i => (∑ l ∈ Finset.range (i + 1), T l) + i, ?_, ?_⟩
    · refine strictMono_nat_of_lt_succ fun i => ?_
      show (∑ l ∈ Finset.range (i + 1), T l) + i <
        (∑ l ∈ Finset.range (i + 1 + 1), T l) + (i + 1)
      rw [Finset.sum_range_succ _ (i + 1)]
      omega
    · intro i
      have h1 : T i ≤ ∑ l ∈ Finset.range (i + 1), T l :=
        Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.self_mem_range_succ i)
      have h2 : ∑ l ∈ Finset.range (i + 1 + 1), T l =
          ∑ l ∈ Finset.range (i + 1), T l + T (i + 1) :=
        Finset.sum_range_succ _ _
      show Q i ((∑ l ∈ Finset.range (i + 1), T l) + i)
        ((∑ l ∈ Finset.range (i + 1 + 1), T l) + (i + 1))
      exact hT i _ _ (by omega) (by rw [h2]; omega)
  
  have L2 : ∀ (d : ℕ → ℕ → ℕ → ENNReal),
      (∀ (m : ℕ) (θ : ℕ → ℕ), StrictMono θ → ∃ σ : ℕ → ℕ, StrictMono σ ∧
        ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n n' : ℕ, N ≤ n → N ≤ n' →
          d m (θ (σ n)) (θ (σ n')) < ENNReal.ofReal ε) →
      ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ (m : ℕ) (ε : ℝ), 0 < ε → ∃ N : ℕ,
        ∀ n n' : ℕ, N ≤ n → N ≤ n' → d m (φ n) (φ n') < ENNReal.ofReal ε := by
    intro d h
    choose σ hσ hσc using h
    let Θ : ℕ → {θ : ℕ → ℕ // StrictMono θ} := fun m =>
      Nat.rec (motive := fun _ => {θ : ℕ → ℕ // StrictMono θ})
        ⟨σ 0 id strictMono_id, hσ _ _ _⟩
        (fun m Θm => ⟨Θm.1 ∘ σ (m + 1) Θm.1 Θm.2, Θm.2.comp (hσ _ _ _)⟩) m
    have hΘs : ∀ m, (Θ (m + 1)).1 = (Θ m).1 ∘ σ (m + 1) (Θ m).1 (Θ m).2 := fun m => rfl
    have P1 : ∀ m (ε : ℝ), 0 < ε → ∃ N : ℕ, ∀ n n' : ℕ, N ≤ n → N ≤ n' →
        d m ((Θ m).1 n) ((Θ m).1 n') < ENNReal.ofReal ε := by
      intro m
      cases m with
      | zero => intro ε hε; exact hσc 0 id strictMono_id ε hε
      | succ m => intro ε hε; exact hσc (m + 1) (Θ m).1 (Θ m).2 ε hε
    have P2 : ∀ m n, m ≤ n → ∀ s, ∃ t, s ≤ t ∧ (Θ n).1 s = (Θ m).1 t := by
      intro m n hmn
      induction n, hmn using Nat.le_induction with
      | base => intro s; exact ⟨s, le_rfl, rfl⟩
      | succ n hmn ih =>
        intro s
        obtain ⟨t, ht, he⟩ := ih (σ (n + 1) (Θ n).1 (Θ n).2 s)
        refine ⟨t, ((hσ _ _ _).id_le s).trans ht, ?_⟩
        rw [hΘs]
        exact he
    refine ⟨fun n => (Θ n).1 n, ?_, ?_⟩
    · refine strictMono_nat_of_lt_succ fun n => ?_
      show (Θ n).1 n < (Θ (n + 1)).1 (n + 1)
      rw [hΘs]
      exact (Θ n).2 (lt_of_lt_of_le (Nat.lt_succ_self n) ((hσ _ _ _).id_le _))
    · intro m ε hε
      obtain ⟨N₀, hN₀⟩ := P1 m ε hε
      refine ⟨max N₀ m, fun n n' hn hn' => ?_⟩
      obtain ⟨t, ht, he⟩ := P2 m n (le_of_max_le_right hn) n
      obtain ⟨t', ht', he'⟩ := P2 m n' (le_of_max_le_right hn') n'
      show d m ((Θ n).1 n) ((Θ n').1 n') < _
      rw [he, he']
      exact hN₀ t t' (le_trans (le_of_max_le_left hn) ht) (le_trans (le_of_max_le_left hn') ht')
  
  rcases Nat.eq_zero_or_pos N with hN | hN
  · subst hN
    exact ⟨id, strictMono_id, fun k => k.elim0⟩
  haveI : Nonempty (Fin N × ℤ) := ⟨(⟨0, hN⟩, 0)⟩
  obtain ⟨e, he⟩ := exists_surjective_nat (Fin N × ℤ)
  
  let d : ℕ → ℕ → ℕ → ENNReal := fun m a b =>
    volume (symmDiff {x | ((e m).2 : ℝ) ≤ u (e m).1 a x} {x | ((e m).2 : ℝ) ≤ u (e m).1 b x} ∩
      Metric.ball (y (e m).1) (r (e m).1 / 2))
  have hd : ∀ (m : ℕ) (θ : ℕ → ℕ), StrictMono θ → ∃ σ : ℕ → ℕ, StrictMono σ ∧
      ∀ ε : ℝ, 0 < ε → ∃ N : ℕ, ∀ n n' : ℕ, N ≤ n → N ≤ n' →
        d m (θ (σ n)) (θ (σ n')) < ENNReal.ofReal ε := by
    intro m θ _
    exact sepSets_cauchy_subseq (y (e m).1) (r (e m).1) C (hr _)
      (fun n => {x | ((e m).2 : ℝ) ≤ u (e m).1 (θ n) x})
      (fun n => measurableSet_le measurable_const (hmeas _ _))
      (fun n h hh => L1 (u (e m).1 (θ n)) (y (e m).1) (r (e m).1) C (hmeas _ _) (hZ _ _)
        (hmod _ _) (e m).2 h hh)
  obtain ⟨φ₁, hφ₁, hcau⟩ := L2 d hd
  have hstar : ∀ (p : Fin N × ℤ) (ε : ℝ), 0 < ε → ∃ N₀ : ℕ, ∀ n n' : ℕ, N₀ ≤ n → N₀ ≤ n' →
      volume (symmDiff {x | (p.2 : ℝ) ≤ u p.1 (φ₁ n) x} {x | (p.2 : ℝ) ≤ u p.1 (φ₁ n') x} ∩
        Metric.ball (y p.1) (r p.1 / 2)) < ENNReal.ofReal ε := by
    intro p ε hε
    obtain ⟨m, rfl⟩ := he p
    exact hcau m ε hε
  
  let Q : ℕ → ℕ → ℕ → Prop := fun i n n' => ∀ k : Fin N,
    ∀ j ∈ Finset.Icc (-(2 : ℤ) ^ i) ((2 : ℤ) ^ i),
      volume (symmDiff {x | (j : ℝ) ≤ u k (φ₁ n) x} {x | (j : ℝ) ≤ u k (φ₁ n') x} ∩
        Metric.ball (y k) (r k / 2)) ≤ ENNReal.ofReal ((1 / 2 : ℝ) ^ i / (2 * 2 ^ i + 1))
  have hQ : ∀ i, ∃ T : ℕ, ∀ n n' : ℕ, T ≤ n → T ≤ n' → Q i n n' := by
    intro i
    have hδ : (0 : ℝ) < (1 / 2 : ℝ) ^ i / (2 * 2 ^ i + 1) := by positivity
    choose Nf hNf using fun p : Fin N × ℤ => hstar p _ hδ
    refine ⟨(Finset.univ ×ˢ Finset.Icc (-(2 : ℤ) ^ i) ((2 : ℤ) ^ i)).sup Nf,
      fun n n' hn hn' k j hj => ?_⟩
    have hle : Nf (k, j) ≤ (Finset.univ ×ˢ Finset.Icc (-(2 : ℤ) ^ i) ((2 : ℤ) ^ i)).sup Nf :=
      Finset.le_sup (Finset.mem_product.2 ⟨Finset.mem_univ _, hj⟩)
    exact le_of_lt (hNf (k, j) n n' (hle.trans hn) (hle.trans hn'))
  obtain ⟨ψ, hψ, hψQ⟩ := L6 Q hQ
  
  refine ⟨φ₁ ∘ ψ, hφ₁.comp hψ, fun k => ?_⟩
  have hsubB : Metric.ball (y k) (r k / 2) ⊆ Metric.ball (y k) (2 * r k) :=
    Metric.ball_subset_ball (by linarith [hr k])
  exact L4 (fun i => u k (φ₁ (ψ i))) (Metric.ball (y k) (r k / 2)) (1 + 2 * |D|)
    measurableSet_ball (fun i x hx => hZ k _ x (hsubB hx)) (fun i =>
      L7 (u k (φ₁ (ψ i))) (u k (φ₁ (ψ (i + 1)))) (Metric.ball (y k) (r k / 2)) D i
        (fun x hx => hZ k _ x (hsubB hx)) (fun x hx => hZ k _ x (hsubB hx)) (hψQ i k)
        (L5 _ (y k) (r k) D (hmeas _ _) (hbdd k _) _ (by positivity))
        (L5 _ (y k) (r k) D (hmeas _ _) (hbdd k _) _ (by positivity)))

theorem dual_local_offsets [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kv Kc : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (φ₀ : M → ℝ) (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤)
    (ns : ℕ → M → ℤ) (hns : ∀ i (j : ℤ), sepChartMeas {x | ns i x = j})
    (B : ENNReal) (hB : B < ⊤)
    (hbd : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (ns i x : ℝ)) Ω Kc ≤ B) :
    ∃ (N : ℕ) (H : Fin N → Set M) (ψ : ℕ → ℕ) (m : Fin N → ℕ → ℤ) (Z : Set M),
      StrictMono ψ ∧ (∀ k, IsOpen (H k)) ∧ Kv ⊆ ⋃ k, H k ∧ sepChartNull Z ∧
      (∀ k, (∃ c : ℤ, ∀ᶠ i in Filter.atTop, m k i = c) ∨
        Filter.Tendsto (fun i => |m k i|) Filter.atTop Filter.atTop) ∧
      ∀ k, ∀ x ∈ H k, x ∉ Z → ∃ j : ℤ, ∀ᶠ i in Filter.atTop, ns (ψ i) x - m k i = j :=
by
  classical
  
  have hrad : ∀ x : M, ∃ R : ℝ, 0 < R ∧ (x ∈ Ω →
      Metric.closedBall (chartAt E3 x x) R ⊆ chartAt E3 x '' (Ω ∩ (chartAt E3 x).source)) := by
    intro x
    by_cases hx : x ∈ Ω
    · have hU : IsOpen (chartAt E3 x '' (Ω ∩ (chartAt E3 x).source)) := by
        rw [Set.inter_comm]
        exact (chartAt E3 x).isOpen_image_source_inter hΩ
      have hmem : chartAt E3 x x ∈ chartAt E3 x '' (Ω ∩ (chartAt E3 x).source) :=
        ⟨x, ⟨hx, mem_chart_source E3 x⟩, rfl⟩
      obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.1 hU _ hmem
      refine ⟨ε / 2, half_pos hε, fun _ => ?_⟩
      exact (Metric.closedBall_subset_ball (half_lt_self hε)).trans hball
    · exact ⟨1, one_pos, fun h => absurd h hx⟩
  choose R hR0 hRball using hrad
  
  let H' : M → Set M := fun x =>
    (chartAt E3 x).source ∩ chartAt E3 x ⁻¹' Metric.ball (chartAt E3 x x) (R x / 6 / 2)
  have hH'o : ∀ x, IsOpen (H' x) := fun x =>
    (chartAt E3 x).isOpen_inter_preimage Metric.isOpen_ball
  have hH'x : ∀ x, x ∈ H' x := by
    intro x
    have h0 : 0 < R x / 6 / 2 := by have := hR0 x; linarith
    exact ⟨mem_chart_source E3 x, Metric.mem_ball_self h0⟩
  obtain ⟨t, ht, hcov'⟩ := hKv.elim_nhds_subcover H' (fun x _ => (hH'o x).mem_nhds (hH'x x))
  let xk : Fin t.card → M := fun k => ((t.equivFin).symm k : M)
  have hxkt : ∀ k, xk k ∈ t := fun k => (t.equivFin.symm k).2
  have hxkΩ : ∀ k, xk k ∈ Ω := fun k => hKvΩ (ht _ (hxkt k))
  let c : Fin t.card → E3 := fun k => chartAt E3 (xk k) (xk k)
  let Rk : Fin t.card → ℝ := fun k => R (xk k)
  have hRk : ∀ k, 0 < Rk k := fun k => hR0 (xk k)
  let H : Fin t.card → Set M := fun k => H' (xk k)
  have hcov : Kv ⊆ ⋃ k, H k := by
    intro y hy
    have hy' := hcov' hy
    simp only [Set.mem_iUnion] at hy'
    obtain ⟨x, hx, hyx⟩ := hy'
    refine Set.mem_iUnion.2 ⟨t.equivFin ⟨x, hx⟩, ?_⟩
    have hxe : ((t.equivFin.symm (t.equivFin ⟨x, hx⟩)) : M) = x := by
      rw [Equiv.symm_apply_apply]
    show y ∈ H' ((t.equivFin.symm (t.equivFin ⟨x, hx⟩)) : M)
    rw [hxe]
    exact hyx
  
  have hL8 := fun k : Fin t.card => dual_ball_offset g Ψ hΨs Ω Kc hΩ φ₀ hfin₀ B hB (xk k) (c k)
    (Rk k) (hRk k) (hRball (xk k) (hxkΩ k))
  choose Λ hΛ0 hΛ using hL8
  have h2 : ∀ (k : Fin t.card) (i : ℕ), ∃ a : ℤ, ∫⁻ x in Metric.ball (c k) (Rk k / 6),
      ENNReal.ofReal |(((chartAt E3 (xk k)).target.indicator
        (fun y => ns i ((chartAt E3 (xk k)).symm y)) x : ℤ) : ℝ) - (a : ℝ)| ≤
        ENNReal.ofReal (Λ k * Rk k) := fun k i => (hΛ k (ns i) (hns i) (hbd i)).2.2
  choose a ha using h2
  let û : Fin t.card → ℕ → E3 → ℝ := fun k i y =>
    (((chartAt E3 (xk k)).target.indicator (fun y => ns i ((chartAt E3 (xk k)).symm y)) y : ℤ) : ℝ)
  let v : Fin t.card → ℕ → E3 → ℝ := fun k i y => û k i y - (a k i : ℝ)
  have hΛle : ∀ k, Λ k ≤ ∑ l, Λ l := fun k =>
    Finset.single_le_sum (fun l _ => hΛ0 l) (Finset.mem_univ k)
  have hDle : ∀ k, Λ k * Rk k ≤ ∑ l, Λ l * Rk l := fun k =>
    Finset.single_le_sum (fun l _ => mul_nonneg (hΛ0 l) (hRk l).le) (Finset.mem_univ k)
  
  have hmeasv : ∀ k i, Measurable (v k i) := fun k i =>
    (hΛ k (ns i) (hns i) (hbd i)).1.sub_const _
  have hZv : ∀ k i, ∀ x ∈ Metric.ball (c k) (2 * (Rk k / 6)), ∃ m : ℤ, v k i x = m :=
    fun k i x _ => ⟨(chartAt E3 (xk k)).target.indicator
      (fun y => ns i ((chartAt E3 (xk k)).symm y)) x - a k i, (Int.cast_sub _ _).symm⟩
  have hbddv : ∀ k i, ∫⁻ x in Metric.ball (c k) (Rk k / 6), ENNReal.ofReal |v k i x| ≤
      ENNReal.ofReal (∑ l, Λ l * Rk l) := fun k i =>
    (ha k i).trans (ENNReal.ofReal_le_ofReal (hDle k))
  have hmodv : ∀ k i (h : E3), ‖h‖ ≤ Rk k / 6 →
      ∫⁻ x in Metric.ball (c k) (Rk k / 6), ENNReal.ofReal |v k i (x + h) - v k i x| ≤
        ENNReal.ofReal ((∑ l, Λ l) * ‖h‖) := by
    intro k i h hh
    have hR := hRk k
    have hh3 : ‖h‖ ≤ Rk k / 3 := by linarith
    have heq : ∀ x, v k i (x + h) - v k i x = û k i (x + h) - û k i x := fun x =>
      sub_sub_sub_cancel_right _ _ _
    calc ∫⁻ x in Metric.ball (c k) (Rk k / 6), ENNReal.ofReal |v k i (x + h) - v k i x|
        = ∫⁻ x in Metric.ball (c k) (Rk k / 6), ENNReal.ofReal |û k i (x + h) - û k i x| := by
          simp only [heq]
      _ ≤ ∫⁻ x in Metric.ball (c k) (Rk k / 3), ENNReal.ofReal |û k i (x + h) - û k i x| :=
          lintegral_mono_set (Metric.ball_subset_ball (by linarith))
      _ ≤ ENNReal.ofReal (Λ k * ‖h‖) := (hΛ k (ns i) (hns i) (hbd i)).2.1 h hh3
      _ ≤ ENNReal.ofReal ((∑ l, Λ l) * ‖h‖) :=
          ENNReal.ofReal_le_ofReal (mul_le_mul_of_nonneg_right (hΛle k) (norm_nonneg h))
  obtain ⟨φ₁, hφ₁, hae₁⟩ := int_ae_subseq_of_bdd t.card c (fun k => Rk k / 6)
    (fun k => by have := hRk k; linarith) (∑ l, Λ l) (∑ l, Λ l * Rk l) v hmeasv hZv hbddv hmodv
  
  have htameLem : ∀ (s : Fin t.card → ℕ → ℤ), ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ a : Fin t.card,
      (∃ c : ℤ, ∀ᶠ i in Filter.atTop, s a (φ i) = c) ∨
        Filter.Tendsto (fun i => |s a (φ i)|) Filter.atTop Filter.atTop := by
    intro s
    obtain ⟨l, φ, hφ, hl⟩ := CompactSpace.tendsto_subseq (fun i a => (((s a i : ℤ) : ℝ) : EReal))
    refine ⟨φ, hφ, fun a => ?_⟩
    have ha : Tendsto (fun i => (((s a (φ i) : ℤ) : ℝ) : EReal)) atTop (𝓝 (l a)) :=
      tendsto_pi_nhds.1 hl a
    generalize l a = L at ha
    induction L using EReal.rec with
    | bot =>
      right
      refine tendsto_atTop.2 fun K => ?_
      filter_upwards [EReal.tendsto_nhds_bot_iff_real.1 ha (((-K : ℤ) : ℝ))] with i hi
      have h1 : ((s a (φ i) : ℤ) : ℝ) < ((-K : ℤ) : ℝ) := EReal.coe_lt_coe_iff.1 hi
      have h2 : s a (φ i) < -K := by exact_mod_cast h1
      exact le_abs.2 (Or.inr (by omega))
    | top =>
      right
      refine tendsto_atTop.2 fun K => ?_
      filter_upwards [EReal.tendsto_nhds_top_iff_real.1 ha ((K : ℤ) : ℝ)] with i hi
      have h1 : ((K : ℤ) : ℝ) < ((s a (φ i) : ℤ) : ℝ) := EReal.coe_lt_coe_iff.1 hi
      have h2 : K < s a (φ i) := by exact_mod_cast h1
      exact le_abs.2 (Or.inl (by omega))
    | coe t =>
      left
      have hr : Tendsto (fun i => ((s a (φ i) : ℤ) : ℝ)) atTop (𝓝 t) := EReal.tendsto_coe.1 ha
      have hev : ∀ᶠ i in atTop, |((s a (φ i) : ℤ) : ℝ) - t| < 1 / 2 := by
        have := Metric.tendsto_nhds.1 hr (1 / 2) (by norm_num)
        filter_upwards [this] with i hi
        rwa [Real.dist_eq] at hi
      obtain ⟨i₀, hi₀⟩ := eventually_atTop.1 hev
      refine ⟨s a (φ i₀), eventually_atTop.2 ⟨i₀, fun i hi => ?_⟩⟩
      have h1 := abs_lt.1 (hi₀ i hi)
      have h2 := abs_lt.1 (hi₀ i₀ le_rfl)
      have h3 : ((s a (φ i) : ℤ) : ℝ) - ((s a (φ i₀) : ℤ) : ℝ) < 1 := by linarith
      have h4 : -1 < ((s a (φ i) : ℤ) : ℝ) - ((s a (φ i₀) : ℤ) : ℝ) := by linarith
      have h5 : s a (φ i) - s a (φ i₀) < 1 := by exact_mod_cast h3
      have h6 : -1 < s a (φ i) - s a (φ i₀) := by exact_mod_cast h4
      omega
  obtain ⟨φ₂, hφ₂, htame₂⟩ := htameLem (fun k i => a k (φ₁ i))
  
  let Bad : Fin t.card → Set E3 := fun k => {y | ¬ (y ∈ Metric.ball (c k) (Rk k / 6 / 2) →
    ∃ j : ℤ, ∀ᶠ i in Filter.atTop, v k (φ₁ i) y = j)}
  have hBad : ∀ k, volume (Bad k) = 0 := by
    intro k
    have h := hae₁ k
    rw [ae_restrict_iff' measurableSet_ball] at h
    exact ae_iff.1 h
  let Zk : Fin t.card → Set M := fun k =>
    (chartAt E3 (xk k)).source ∩ chartAt E3 (xk k) ⁻¹' Bad k
  have hZk : ∀ k, sepChartNull (Zk k) := by
    intro k
    refine sepChartNull_of_image_null (xk k) (Zk k) Set.inter_subset_left ?_
    refine measure_mono_null ?_ (hBad k)
    rintro _ ⟨x, hx, rfl⟩
    exact hx.2
  refine ⟨t.card, H, φ₁ ∘ φ₂, fun k i => a k (φ₁ (φ₂ i)), ⋃ k, Zk k, hφ₁.comp hφ₂,
    fun k => hH'o _, hcov, ?_, htame₂, ?_⟩
  · intro p
    rw [Set.iUnion_inter, Set.image_iUnion]
    exact measure_iUnion_null fun k => hZk k p
  
  · intro k x hxH hxZ
    have hxs : x ∈ (chartAt E3 (xk k)).source := hxH.1
    have hxb : chartAt E3 (xk k) x ∈ Metric.ball (c k) (Rk k / 6 / 2) := hxH.2
    have hnb : chartAt E3 (xk k) x ∉ Bad k := fun hb => hxZ (Set.mem_iUnion.2 ⟨k, hxs, hb⟩)
    have hgood : ∃ j : ℤ, ∀ᶠ i in Filter.atTop, v k (φ₁ i) (chartAt E3 (xk k) x) = j := by
      by_contra hc
      exact hnb (fun himp => hc (himp hxb))
    obtain ⟨j, hj⟩ := hgood
    refine ⟨j, (hφ₂.tendsto_atTop.eventually hj).mono fun i hi => ?_⟩
    have hval : v k (φ₁ (φ₂ i)) (chartAt E3 (xk k) x) =
        ((ns (φ₁ (φ₂ i)) x - a k (φ₁ (φ₂ i)) : ℤ) : ℝ) := by
      show (((chartAt E3 (xk k)).target.indicator
          (fun y => ns (φ₁ (φ₂ i)) ((chartAt E3 (xk k)).symm y)) (chartAt E3 (xk k) x) : ℤ) : ℝ) -
          (a k (φ₁ (φ₂ i)) : ℝ) = _
      rw [Set.indicator_of_mem ((chartAt E3 (xk k)).map_source hxs),
        (chartAt E3 (xk k)).left_inv hxs]
      push_cast
      ring
    have hfin : ((ns (φ₁ (φ₂ i)) x - a k (φ₁ (φ₂ i)) : ℤ) : ℝ) = (j : ℝ) := hval.symm.trans hi
    show ns (φ₁ (φ₂ i)) x - a k (φ₁ (φ₂ i)) = j
    exact_mod_cast hfin

-- SOURCE_END: lines 140635..160083 from answer (1).lean

end PositiveMass
end
