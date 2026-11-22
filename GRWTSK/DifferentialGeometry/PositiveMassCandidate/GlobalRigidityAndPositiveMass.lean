/- Copyright (c) 2026 grwtsk contributors. MIT. -/
/-!
# Positive mass proof candidate: GlobalRigidityAndPositiveMass (15/15)

This is one ordered slice of the **unverified** user-supplied Lean source.
All original source lines inside the SOURCE_START/SOURCE_END delimiters
are preserved byte-for-byte, including source comments; see issue #1829.
Publication is not elaboration, kernel replay, axiom auditing, independent
review, or a positive mass theorem. Checks: NOT_RUN.
The opening comment of the supplied source calls the file a sorry-only
statement, although the uploaded text contains a long by-proof; it is stale.
-/
import GRWTSK.DifferentialGeometry.PositiveMassCandidate.ADMFluxMassAndRigidity
set_option maxHeartbeats 4000000
noncomputable section
open Manifold Filter Topology MeasureTheory Metric
open scoped ContDiff
namespace PositiveMass
variable {M : Type*} [TopologicalSpace M] [ChartedSpace E3 M]

-- SOURCE_START: lines 280134..288039 from answer (1).lean
theorem shell_cutoff_densDiv (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (c : ℝ) (y : E3) (hy : y ≠ 0) (hX : ∀ a : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * X z a) y) : sepDensDiv G (fun z => (1 - Real.smoothTransition (‖z‖ - c)) • X z) y = (1 - Real.smoothTransition (‖y‖ - c)) * sepDensDiv G X y - deriv Real.smoothTransition (‖y‖ - c) * ∑ a : Fin 3, Real.sqrt (G y).det * X y a * (y a / ‖y‖) :=
by
  have hn : 0 < ‖y‖ := norm_pos_iff.2 hy
  have hsq : HasFDerivAt (fun z : E3 => ‖z‖ ^ 2) (2 • innerSL ℝ y) y :=
    (hasStrictFDerivAt_norm_sq y).hasFDerivAt
  have hsq' : HasFDerivAt (fun z : E3 => Real.sqrt (‖z‖ ^ 2))
      ((1 / (2 * Real.sqrt (‖y‖ ^ 2))) • (2 • innerSL ℝ y)) y :=
    hsq.sqrt (by positivity)
  have hnorm : HasFDerivAt (fun z : E3 => ‖z‖)
      ((1 / (2 * Real.sqrt (‖y‖ ^ 2))) • (2 • innerSL ℝ y)) y := by
    have hf : (fun z : E3 => Real.sqrt (‖z‖ ^ 2)) = fun z => ‖z‖ := by
      funext z; exact Real.sqrt_sq (norm_nonneg z)
    rwa [hf] at hsq'
  have hT : HasDerivAt Real.smoothTransition (deriv Real.smoothTransition (‖y‖ - c)) (‖y‖ - c) :=
    ((Real.smoothTransition.contDiff (n := 1)).differentiable one_ne_zero _).hasDerivAt
  have hs : HasFDerivAt (fun z : E3 => 1 - Real.smoothTransition (‖z‖ - c))
      (-(deriv Real.smoothTransition (‖y‖ - c) •
        ((1 / (2 * Real.sqrt (‖y‖ ^ 2))) • (2 • innerSL ℝ y)))) y :=
    by
      have hc : HasFDerivAt (Real.smoothTransition ∘ fun z : E3 => ‖z‖ - c)
          (deriv Real.smoothTransition (‖y‖ - c) •
            ((1 / (2 * Real.sqrt (‖y‖ ^ 2))) • (2 • innerSL ℝ y))) y :=
        hT.comp_hasFDerivAt y (hnorm.sub_const c)
      exact hc.const_sub 1
  have hsa : ∀ a : Fin 3, fderiv ℝ (fun z : E3 => 1 - Real.smoothTransition (‖z‖ - c)) y (e a) =
      -(deriv Real.smoothTransition (‖y‖ - c) * (y a / ‖y‖)) := by
    intro a
    rw [hs.fderiv]
    simp only [ContinuousLinearMap.neg_apply, ContinuousLinearMap.smul_apply, innerSL_apply_apply,
      e, EuclideanSpace.inner_single_right, Real.sqrt_sq (norm_nonneg y)]
    simp only [smul_eq_mul, nsmul_eq_mul, Nat.cast_ofNat, one_mul, conj_trivial]
    field_simp
  have hfun : ∀ a : Fin 3,
      (fun z => Real.sqrt (G z).det * ((1 - Real.smoothTransition (‖z‖ - c)) • X z) a) =
        fun z => (1 - Real.smoothTransition (‖z‖ - c)) * (Real.sqrt (G z).det * X z a) := by
    intro a; funext z; simp only [PiLp.smul_apply, smul_eq_mul]; ring
  have hprod : ∀ a : Fin 3,
      partialDeriv a (fun z => (1 - Real.smoothTransition (‖z‖ - c)) *
        (Real.sqrt (G z).det * X z a)) y =
      (1 - Real.smoothTransition (‖y‖ - c)) * partialDeriv a (fun z => Real.sqrt (G z).det * X z a) y +
        Real.sqrt (G y).det * X y a *
          fderiv ℝ (fun z : E3 => 1 - Real.smoothTransition (‖z‖ - c)) y (e a) := by
    intro a
    unfold partialDeriv
    rw [fderiv_fun_mul hs.differentiableAt (hX a)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
  have key : ∀ a : Fin 3,
      partialDeriv a (fun z => Real.sqrt (G z).det * ((1 - Real.smoothTransition (‖z‖ - c)) • X z) a) y =
      (1 - Real.smoothTransition (‖y‖ - c)) * partialDeriv a (fun z => Real.sqrt (G z).det * X z a) y -
        deriv Real.smoothTransition (‖y‖ - c) * (Real.sqrt (G y).det * X y a * (y a / ‖y‖)) := by
    intro a
    rw [hfun a, hprod a, hsa a]
    ring
  have h1 : sepDensDiv G (fun z => (1 - Real.smoothTransition (‖z‖ - c)) • X z) y =
      ∑ a : Fin 3, partialDeriv a
        (fun z => Real.sqrt (G z).det * ((1 - Real.smoothTransition (‖z‖ - c)) • X z) a) y := rfl
  have h2 : sepDensDiv G X y =
      ∑ a : Fin 3, partialDeriv a (fun z => Real.sqrt (G z).det * X z a) y := rfl
  rw [h1, h2]
  simp only [Fin.sum_univ_three]
  rw [key 0, key 1, key 2]
  ring

theorem manifold_div_chart_sum [T2Space M] [SigmaCompactSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Y : M → E3) (hY : calSmoothField Y) (C : Set M) (hC : IsCompact C)
    (hYC : ∀ p : M, p ∉ C → Y p = 0)
    (P₀ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (K₀ : Set E3) (hK₀ : IsCompact K₀)
    (hK₀P : K₀ ⊆ P₀.source) (Yt₀ : E3 → E3) (hYt₀s : ContDiffOn ℝ ∞ Yt₀ P₀.source)
    (hYt₀ : ∀ x ∈ P₀.source, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P₀ x (Yt₀ x) = Y (P₀ x))
    {m : ℕ} (P : Fin m → PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (Kp : Fin m → Set E3)
    (hKp : ∀ k, IsCompact (Kp k)) (hKpP : ∀ k, Kp k ⊆ (P k).source)
    (hdisj₀ : ∀ k, Disjoint (P₀ '' K₀) ((P k) '' Kp k))
    (hdisj : Pairwise fun k l => Disjoint ((P k) '' Kp k) ((P l) '' Kp l))
    (Yt : Fin m → E3 → E3) (hYts : ∀ k, ContDiffOn ℝ ∞ (Yt k) (P k).source)
    (hYt : ∀ k, ∀ x ∈ (P k).source, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (P k) x (Yt k x) = Y (P k x))
    (hdiv : ∀ p : M, p ∉ P₀ '' K₀ → (∀ k, p ∉ (P k) '' Kp k) →
      sepDensDiv (g.coeff (chartAt E3 p).symm)
        (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
          (Y ((chartAt E3 p).symm y)) : E3)) (chartAt E3 p p) = 0) :
    (∫ y in K₀, sepDensDiv (g.coeff P₀) Yt₀ y) +
      ∑ k, ∫ y in Kp k, sepDensDiv (g.coeff (P k)) (Yt k) y = 0 :=
by
  classical
  
  have germ : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X X' : E3 → E3) (y : E3),
      X =ᶠ[𝓝 y] X' → sepDensDiv G X y = sepDensDiv G X' y := by
    intro G X X' y h
    unfold sepDensDiv partialDeriv
    refine Finset.sum_congr rfl fun i _ => ?_
    have hev : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (G z).det * X' z i) := by
      filter_upwards [h] with z hz
      rw [hz]
    rw [hev.fderiv_eq]
  
  have hlin : ∀ (L : E3 →L[ℝ] ℝ) (v : E3), ∑ i : Fin 3, L (e i) * v i = L v := by
    intro L v
    conv_rhs => rw [← (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v]
    simp [e, map_sum, map_smul, mul_comm]
  
  have hRepd : ∀ (p : M) (y : E3), y ∈ (chartAt E3 p).target → ∀ i : Fin 3,
      DifferentiableAt ℝ (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det *
        (show E3 from mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm z)
          (Y ((chartAt E3 p).symm z))) i) y := by
    intro p y hy i
    have hsq : ContDiffOn ℝ ∞ (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det)
        (chartAt E3 p).target :=
      ccs_sqrtdet_smooth _ _ (g.smooth p) (fun z hz => (coeff_chart_symm_posDef g p z hz).det_pos)
    have h2 : ContDiffOn ℝ ∞ (fun z => (show E3 from mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
        ((chartAt E3 p).symm z) (Y ((chartAt E3 p).symm z))) i) (chartAt E3 p).target := by
      have := (EuclideanSpace.proj (𝕜 := ℝ) (ι := Fin 3) i).contDiff.comp_contDiffOn (hY p)
      exact this
    exact ((hsq.mul h2).contDiffAt ((chartAt E3 p).open_target.mem_nhds hy)).differentiableAt
      (by simp)
  
  have htr : ∀ q₀ x : M, x ∈ (chartAt E3 q₀).source →
      sepDensDiv (g.coeff (chartAt E3 x).symm)
        (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x) ((chartAt E3 x).symm y)
          (Y ((chartAt E3 x).symm y)) : E3)) (chartAt E3 x x) = 0 →
      sepDensDiv (g.coeff (chartAt E3 q₀).symm)
        (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) ((chartAt E3 q₀).symm y)
          (Y ((chartAt E3 q₀).symm y)) : E3)) (chartAt E3 q₀ x) = 0 := by
    intro q₀ x hx h0
    have hUo : IsOpen ((chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source) :=
      (chartAt E3 q₀).isOpen_inter_preimage_symm (chartAt E3 x).open_source
    have hyU : chartAt E3 q₀ x ∈
        (chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source := by
      refine ⟨(chartAt E3 q₀).map_source hx, ?_⟩
      show (chartAt E3 q₀).symm (chartAt E3 q₀ x) ∈ (chartAt E3 x).source
      rw [(chartAt E3 q₀).left_inv hx]
      exact mem_chart_source E3 x
    have hτs : ContDiffOn ℝ ∞ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z))
        ((chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source) := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞
          ((chartAt E3 x : M → E3) ∘ ((chartAt E3 q₀).symm : E3 → M))
          ((chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source) :=
        (contMDiffOn_chart (x := x)).comp
          ((contMDiffOn_chart_symm (x := q₀)).mono Set.inter_subset_left) (fun z hz => hz.2)
      exact contMDiffOn_iff_contDiffOn.mp h1
    have hlaw : ∀ z ∈ (chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source,
        ∀ i j : Fin 3, g.coeff (chartAt E3 q₀).symm z i j = ∑ a : Fin 3, ∑ b : Fin 3,
          fderiv ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z)) z (e i) a *
            g.coeff (chartAt E3 x).symm (chartAt E3 x ((chartAt E3 q₀).symm z)) a b *
            fderiv ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z)) z (e j) b :=
      fun z hz => (sep_chart_transition g q₀ x z hz.1 hz.2).2.1
    have hpos : ∀ z ∈ (chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source,
        0 ≤ (g.coeff (chartAt E3 x).symm (chartAt E3 x ((chartAt E3 q₀).symm z))).det :=
      fun z hz => (coeff_chart_symm_posDef g x _ ((chartAt E3 x).map_source hz.2)).det_pos.le
    have hvec : ∀ z ∈ (chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' (chartAt E3 x).source,
        fderiv ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z)) z
          ((fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) ((chartAt E3 q₀).symm y)
            (Y ((chartAt E3 q₀).symm y)) : E3)) z) =
        (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x) ((chartAt E3 x).symm y)
          (Y ((chartAt E3 x).symm y)) : E3)) (chartAt E3 x ((chartAt E3 q₀).symm z)) := by
      intro z hz
      have hfd : fderiv ℝ (fun w => chartAt E3 x ((chartAt E3 q₀).symm w)) z =
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x) ((chartAt E3 q₀).symm z)).comp
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀).symm z) := by
        rw [← mfderiv_eq_fderiv]
        exact mfderiv_comp z (mdifferentiableAt_atlas (chart_mem_atlas E3 x) hz.2)
          (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q₀) hz.1)
      have hY1 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀).symm z
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) ((chartAt E3 q₀).symm z)
            (Y ((chartAt E3 q₀).symm z))) = Y ((chartAt E3 q₀).symm z) := by
        have hw : (chartAt E3 q₀).symm z ∈ (chartAt E3 q₀).source :=
          (chartAt E3 q₀).map_target hz.1
        have hid := (mdifferentiable_chart (I := 𝓘(ℝ, E3)) q₀).symm_comp_deriv hw
        rw [(chartAt E3 q₀).right_inv hz.1] at hid
        exact congrArg (fun L => L (Y ((chartAt E3 q₀).symm z))) hid
      have hl : (chartAt E3 x).symm (chartAt E3 x ((chartAt E3 q₀).symm z)) =
          (chartAt E3 q₀).symm z := (chartAt E3 x).left_inv hz.2
      show fderiv ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z)) z
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) ((chartAt E3 q₀).symm z)
            (Y ((chartAt E3 q₀).symm z))) =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x)
          ((chartAt E3 x).symm (chartAt E3 x ((chartAt E3 q₀).symm z)))
          (Y ((chartAt E3 x).symm (chartAt E3 x ((chartAt E3 q₀).symm z))))
      rw [hfd]
      exact (congrArg (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x) ((chartAt E3 q₀).symm z)) hY1).trans
        (congrArg (fun p : M => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x) p (Y p) : E3)) hl.symm)
    have hτx : chartAt E3 x ((chartAt E3 q₀).symm (chartAt E3 q₀ x)) ∈ (chartAt E3 x).target :=
      (chartAt E3 x).map_source hyU.2
    have hdet : (fderiv ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z))
        (chartAt E3 q₀ x)).det ≠ 0 := by
      have hτd : DifferentiableAt ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z))
          (chartAt E3 q₀ x) := (sep_chart_transition g q₀ x _ hyU.1 hyU.2).1
      have hσm : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3)
          (fun w => chartAt E3 q₀ ((chartAt E3 x).symm w))
          (chartAt E3 x ((chartAt E3 q₀).symm (chartAt E3 q₀ x))) := by
        have h1 : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀)
            ((chartAt E3 x).symm (chartAt E3 x ((chartAt E3 q₀).symm (chartAt E3 q₀ x)))) := by
          rw [(chartAt E3 x).left_inv hyU.2]
          exact mdifferentiableAt_atlas (chart_mem_atlas E3 q₀) ((chartAt E3 q₀).map_target hyU.1)
        exact h1.comp _ (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 x) hτx)
      have hσ := mdifferentiableAt_iff_differentiableAt.mp hσm
      have hev : (fun w => chartAt E3 q₀ ((chartAt E3 x).symm w)) ∘
          (fun z => chartAt E3 x ((chartAt E3 q₀).symm z)) =ᶠ[𝓝 (chartAt E3 q₀ x)] id := by
        filter_upwards [hUo.mem_nhds hyU] with z hz
        simp only [Function.comp_apply, id, (chartAt E3 x).left_inv hz.2]
        exact (chartAt E3 q₀).right_inv hz.1
      have hcomp : (fderiv ℝ (fun w => chartAt E3 q₀ ((chartAt E3 x).symm w))
          (chartAt E3 x ((chartAt E3 q₀).symm (chartAt E3 q₀ x)))).comp
          (fderiv ℝ (fun z => chartAt E3 x ((chartAt E3 q₀).symm z)) (chartAt E3 q₀ x)) =
            ContinuousLinearMap.id ℝ E3 := by
        rw [← fderiv_comp (chartAt E3 q₀ x) hσ hτd, hev.fderiv_eq, fderiv_id]
      have hd := congrArg (fun L : E3 →L[ℝ] E3 => LinearMap.det (L : E3 →ₗ[ℝ] E3)) hcomp
      simp only [ContinuousLinearMap.coe_comp, LinearMap.det_comp, ContinuousLinearMap.coe_id,
        LinearMap.det_id] at hd
      exact right_ne_zero_of_mul_eq_one hd
    have key := sepDensDiv_transition_pointwise _ hUo _ hτs (g.coeff (chartAt E3 q₀).symm)
      (g.coeff (chartAt E3 x).symm)
      (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) ((chartAt E3 q₀).symm y)
        (Y ((chartAt E3 q₀).symm y)) : E3))
      (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x) ((chartAt E3 x).symm y)
        (Y ((chartAt E3 x).symm y)) : E3))
      hlaw hpos hvec (chartAt E3 q₀ x) hyU hdet (hRepd x _ hτx)
    have hτy : chartAt E3 x ((chartAt E3 q₀).symm (chartAt E3 q₀ x)) = chartAt E3 x x := by
      rw [(chartAt E3 q₀).left_inv hx]
    rw [key, hτy, h0, mul_zero]
  
  have hS₀c : IsCompact (P₀ '' K₀) :=
    hK₀.image_of_continuousOn (P₀.contMDiffOn.continuousOn.mono hK₀P)
  have hSkc : ∀ k, IsCompact ((P k) '' Kp k) := fun k =>
    (hKp k).image_of_continuousOn ((P k).contMDiffOn.continuousOn.mono (hKpP k))
  obtain ⟨S, hSdef⟩ : ∃ S : Set M, S = P₀ '' K₀ ∪ ⋃ k, (P k) '' Kp k := ⟨_, rfl⟩
  have hS0S : P₀ '' K₀ ⊆ S := by
    intro x hx; rw [hSdef]; exact Or.inl hx
  have hSkS : ∀ k, (P k) '' Kp k ⊆ S := by
    intro k x hx; rw [hSdef]; exact Or.inr (Set.mem_iUnion.2 ⟨k, hx⟩)
  have hSc : IsCompact S := by rw [hSdef]; exact hS₀c.union (isCompact_iUnion hSkc)
  have hScl : IsClosed S := hSc.isClosed
  
  have hP0 : calPartition (Fin.elim0 : Fin 0 → M) (Fin.elim0 : Fin 0 → M → ℝ) Set.univ := by
    unfold calPartition
    exact ⟨fun j => j.elim0, fun j => j.elim0, fun x => by simp, fun j => j.elim0⟩
  obtain ⟨n, q, φ, O, hφ, hO, hCSO, h1, -⟩ := calPartition_extend g Set.univ isOpen_univ
    (Fin.elim0 : Fin 0 → M) (Fin.elim0 : Fin 0 → M → ℝ) hP0 ∅ isOpen_empty
    (fun x hx => by simp at hx) (C ∪ S) (hC.union hSc) (Set.subset_univ _)
  have hCO : C ⊆ O := fun x hx => hCSO (Or.inl (Or.inl hx))
  have hSO : S ⊆ O := fun x hx => hCSO (Or.inl (Or.inr hx))
  have hφ' := hφ
  obtain ⟨hφsm, -, -, hφt⟩ := hφ'
  have hφc : ∀ j, IsCompact (tsupport (φ j)) := fun j => (hφt j).1
  have hφsrc : ∀ j, tsupport (φ j) ⊆ (chartAt E3 (q j)).source :=
    fun j x hx => ((hφt j).2 hx).2
  
  have hZfr : ∀ x ∈ frontier O, ∀ᶠ x' in 𝓝 x, Y x' = 0 := by
    intro x hx
    rw [hO.frontier_eq] at hx
    have hxC : x ∉ C := fun h => hx.2 (hCO h)
    filter_upwards [hC.isClosed.isOpen_compl.mem_nhds hxC] with x' hx'
    exact hYC x' hx'
  have hOzero : calDivSum g q φ O Y = 0 := by
    unfold calDivSum
    exact Finset.sum_eq_zero fun j _ =>
      (chart_flux_zero_of_vanishing g O hO Y hY hZfr (q j) (φ j) (hφsm j) (hφc j) (hφsrc j)).1
  
  have hmeasO : ∀ U : Set M, IsOpen U → sepChartMeas U := by
    intro U hU p
    have h : chartAt E3 p '' (U ∩ (chartAt E3 p).source) =
        (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' U := by
      rw [Set.inter_comm]; exact (chartAt E3 p).image_source_inter_eq' U
    rw [h]
    exact ((chartAt E3 p).isOpen_inter_preimage_symm hU).measurableSet
  have hmeasC : ∀ F : Set M, IsClosed F → sepChartMeas F := by
    intro F hF p
    have h : chartAt E3 p '' (F ∩ (chartAt E3 p).source) =
        (chartAt E3 p).target \ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Fᶜ) := by
      rw [Set.inter_comm, (chartAt E3 p).image_source_inter_eq']
      ext y
      simp only [Set.mem_inter_iff, Set.mem_diff, Set.mem_preimage, Set.mem_compl_iff]
      tauto
    rw [h]
    exact (chartAt E3 p).open_target.measurableSet.diff
      ((chartAt E3 p).isOpen_inter_preimage_symm hF.isOpen_compl).measurableSet
  
  have hadd : ∀ {ι : Type} [Fintype ι] (E : ι → Set M), (∀ i, sepChartMeas (E i)) →
      Pairwise (fun i k => Disjoint (E i) (E k)) →
      calDivSum g q φ (⋃ i, E i) Y = ∑ i, calDivSum g q φ (E i) Y := by
    intro ι _ E hE hd
    unfold calDivSum
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [Set.iUnion_inter, Set.image_iUnion]
    refine MeasureTheory.integral_iUnion_fintype (fun i => hE i (q j)) ?_
      (fun i => (calPiece_regular g (q j) (φ j) (hφsm j) (hφc j) (hφsrc j) Y hY).2.integrableOn)
    intro i k hik
    rw [Function.onFun, Set.disjoint_left]
    rintro _ ⟨a, ⟨haE, has⟩, rfl⟩ ⟨b, ⟨hbE, hbs⟩, hab⟩
    have hba : b = a := (chartAt E3 (q j)).injOn hbs has hab
    subst hba
    exact Set.disjoint_left.mp (hd hik) haE hbE
  
  have hpt : ∀ j x, x ∉ S → x ∈ (chartAt E3 (q j)).source →
      sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) (chartAt E3 (q j) x) =
        Real.sqrt (g.coeff (chartAt E3 (q j)).symm (chartAt E3 (q j) x)).det *
          fderiv ℝ (fun z => φ j ((chartAt E3 (q j)).symm z)) (chartAt E3 (q j) x)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (q j))
              ((chartAt E3 (q j)).symm (chartAt E3 (q j) x))
              (Y ((chartAt E3 (q j)).symm (chartAt E3 (q j) x))) : E3) := by
    intro j x hxS hxs
    have hyt : chartAt E3 (q j) x ∈ (chartAt E3 (q j)).target := (chartAt E3 (q j)).map_source hxs
    have hloc : calPiece (q j) (φ j) Y =ᶠ[𝓝 (chartAt E3 (q j) x)]
        fun z => φ j ((chartAt E3 (q j)).symm z) •
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (q j)) ((chartAt E3 (q j)).symm z)
            (Y ((chartAt E3 (q j)).symm z)) : E3) := by
      filter_upwards [(chartAt E3 (q j)).open_target.mem_nhds hyt] with z hz
      unfold calPiece
      rw [Set.indicator_of_mem hz]
    have hs : DifferentiableAt ℝ (fun z => φ j ((chartAt E3 (q j)).symm z)) (chartAt E3 (q j) x) := by
      have h1 : ContDiffOn ℝ ∞ (fun z => φ j ((chartAt E3 (q j)).symm z)) (chartAt E3 (q j)).target :=
        contMDiffOn_iff_contDiffOn.mp ((hφsm j).comp_contMDiffOn contMDiffOn_chart_symm)
      exact (h1.contDiffAt ((chartAt E3 (q j)).open_target.mem_nhds hyt)).differentiableAt
        (by simp)
    have h0 := htr (q j) x hxs (hdiv x (fun h => hxS (hS0S h)) (fun k h => hxS (hSkS k h)))
    rw [germ _ _ _ _ hloc, sepDensDiv_smul_eq _ _ _ _ hs (hRepd (q j) _ hyt), h0, mul_zero,
      zero_add]
    congr 1
    simp only [partialDeriv]
    exact hlin _ _
  
  have hRm : sepChartMeas (O \ S) := hmeasO _ (hO.sdiff hScl)
  have hrem : calDivSum g q φ (O \ S) Y = 0 := by
    have hcanc := cal_partition_div_cancel g Set.univ q φ hφ O hO h1 Y hY (O \ S) hRm
      Set.diff_subset
    unfold calDivSum
    refine (Finset.sum_congr rfl fun j _ => ?_).trans hcanc
    refine MeasureTheory.setIntegral_congr_fun (hRm (q j)) ?_
    rintro _ ⟨x, ⟨hxR, hxs⟩, rfl⟩
    exact hpt j x hxR.2 hxs
  
  have hpiece0 : calDivSum g q φ (P₀ '' K₀) Y = ∫ y in K₀, sepDensDiv (g.coeff P₀) Yt₀ y :=
    calDivSum_chart_transfer g Set.univ q φ hφ O hO h1 Y hY (P₀ '' K₀) (hmeasC _ hS₀c.isClosed)
      P₀ K₀ hK₀ hK₀P (Set.Subset.refl _) (hS0S.trans hSO) (fun x hx hx' => absurd hx hx')
      Yt₀ hYt₀s hYt₀
  have hpiecek : ∀ k, calDivSum g q φ ((P k) '' Kp k) Y =
      ∫ y in Kp k, sepDensDiv (g.coeff (P k)) (Yt k) y := fun k =>
    calDivSum_chart_transfer g Set.univ q φ hφ O hO h1 Y hY _ (hmeasC _ (hSkc k).isClosed)
      (P k) (Kp k) (hKp k) (hKpP k) (Set.Subset.refl _) ((hSkS k).trans hSO)
      (fun x hx hx' => absurd hx hx') (Yt k) (hYts k) (hYt k)
  
  obtain ⟨Ef, hEf⟩ : ∃ Ef : Option (Option (Fin m)) → Set M, Ef = fun i =>
      Option.elim i (O \ S) (fun o => Option.elim o (P₀ '' K₀) (fun k => (P k) '' Kp k)) :=
    ⟨_, rfl⟩
  have hE0 : Ef none = O \ S := by subst hEf; rfl
  have hE1 : Ef (some none) = P₀ '' K₀ := by subst hEf; rfl
  have hE2 : ∀ k, Ef (some (some k)) = (P k) '' Kp k := by intro k; subst hEf; rfl
  have hUnion : (⋃ i, Ef i) = O := by
    ext x
    simp only [Set.mem_iUnion]
    constructor
    · rintro ⟨i, hi⟩
      rcases i with _ | _ | k
      · rw [hE0] at hi; exact hi.1
      · rw [hE1] at hi; exact hSO (hS0S hi)
      · rw [hE2] at hi; exact hSO (hSkS k hi)
    · intro hx
      by_cases hxS : x ∈ S
      · have hxS' := hxS
        rw [hSdef] at hxS'
        rcases hxS' with h | h
        · exact ⟨some none, by rw [hE1]; exact h⟩
        · obtain ⟨k, hk⟩ := Set.mem_iUnion.1 h
          exact ⟨some (some k), by rw [hE2]; exact hk⟩
      · exact ⟨none, by rw [hE0]; exact ⟨hx, hxS⟩⟩
  have hEm : ∀ i, sepChartMeas (Ef i) := by
    intro i
    rcases i with _ | _ | k
    · rw [hE0]; exact hRm
    · rw [hE1]; exact hmeasC _ hS₀c.isClosed
    · rw [hE2]; exact hmeasC _ (hSkc k).isClosed
  have hEd : Pairwise (fun i k => Disjoint (Ef i) (Ef k)) := by
    intro i k hik
    rcases i with _ | _ | i
    · rcases k with _ | _ | k
      · exact absurd rfl hik
      · rw [hE0, hE1]; exact Set.disjoint_sdiff_left.mono_right hS0S
      · rw [hE0, hE2]; exact Set.disjoint_sdiff_left.mono_right (hSkS k)
    · rcases k with _ | _ | k
      · rw [hE0, hE1]; exact (Set.disjoint_sdiff_left.mono_right hS0S).symm
      · exact absurd rfl hik
      · rw [hE1, hE2]; exact hdisj₀ k
    · rcases k with _ | _ | k
      · rw [hE0, hE2]; exact (Set.disjoint_sdiff_left.mono_right (hSkS i)).symm
      · rw [hE1, hE2]; exact (hdisj₀ i).symm
      · rw [hE2, hE2]
        exact hdisj (fun h => hik (by rw [h]))
  have hsplit := hadd Ef hEm hEd
  rw [hUnion, hOzero, Fintype.sum_option, Fintype.sum_option, hE0, hE1, hrem, hpiece0] at hsplit
  simp only [hE2, hpiecek] at hsplit
  linarith

theorem green_field_pieces [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g h : RiemannianMetric3 M)
    (hAF : AsymptoticallyFlat g) (φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (K : Set E3)
    (hK : IsCompact K) (hKφ : K ⊆ φ.source) (hh : ∀ p : M, p ∉ φ '' K → h.g p = g.g p)
    (ψ v : M → ℝ) (hψ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ) (hv : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ v) :
    ∃ ρ₀ : ℝ, 2 ≤ ρ₀ ∧ ∀ c : ℝ, ρ₀ ≤ c →
      ∃ (Y : M → E3) (C : Set M) (Yt₀ : E3 → E3) (Yt : Fin hAF.numEnds → E3 → E3),
        calSmoothField Y ∧ IsCompact C ∧ (∀ p : M, p ∉ C → Y p = 0) ∧
        ContDiffOn ℝ ∞ Yt₀ φ.source ∧
        (∀ x ∈ φ.source, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ x (Yt₀ x) = Y (φ x)) ∧
        (∀ j : Fin hAF.numEnds, ContDiffOn ℝ ∞ (Yt j) (hAF.ends j).Φ.source) ∧
        (∀ j : Fin hAF.numEnds, ∀ x ∈ (hAF.ends j).Φ.source,
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (hAF.ends j).Φ x (Yt j x) = Y ((hAF.ends j).Φ x)) ∧
        (∀ y ∈ K, Yt₀ =ᶠ[𝓝 y]
          gfiVec (g.coeff φ) (h.coeff φ) (fun z => ψ (φ z)) (fun z => v (φ z))) ∧
        (∀ (j : Fin hAF.numEnds) (y : E3), c ≤ ‖y‖ → Yt j =ᶠ[𝓝 y] fun z =>
          (1 - Real.smoothTransition (‖z‖ - c)) •
            gfiVec (g.coeff (hAF.ends j).Φ) (g.coeff (hAF.ends j).Φ)
              (fun w => ψ ((hAF.ends j).Φ w)) (fun w => v ((hAF.ends j).Φ w)) z) ∧
        (∀ j : Fin hAF.numEnds,
          Disjoint (φ '' K) ((hAF.ends j).Φ '' {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1})) ∧
        (Pairwise fun j l : Fin hAF.numEnds =>
          Disjoint ((hAF.ends j).Φ '' {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1})
            ((hAF.ends l).Φ '' {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1})) ∧
        (∀ p : M, p ∉ φ '' K →
          (∀ j : Fin hAF.numEnds, p ∉ (hAF.ends j).Φ '' {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1}) →
          ((fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
              (Y ((chartAt E3 p).symm y)) : E3)) =ᶠ[𝓝 (chartAt E3 p p)]
            gfiVec (g.coeff (chartAt E3 p).symm) (h.coeff (chartAt E3 p).symm)
              (fun z => ψ ((chartAt E3 p).symm z)) (fun z => v ((chartAt E3 p).symm z)) ∨
          (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
              (Y ((chartAt E3 p).symm y)) : E3)) =ᶠ[𝓝 (chartAt E3 p p)] fun _ => 0)) :=
by
  classical
  have smP : ∀ (w : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      ∀ P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞,
        ContDiffOn ℝ ∞ (fun z => w (P z)) P.source :=
    fun w hw P => contMDiffOn_iff_contDiffOn.mp (hw.comp_contMDiffOn P.contMDiffOn_toFun)
  have smC : ∀ (w : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w → ∀ p : M,
      ContDiffOn ℝ ∞ (fun z => w ((chartAt E3 p).symm z)) (chartAt E3 p).target :=
    fun w hw p => contMDiffOn_iff_contDiffOn.mp (hw.comp_contMDiffOn contMDiffOn_chart_symm)
  have hcoeq : ∀ (Q : E3 → M) (z : E3), h.g (Q z) = g.g (Q z) → h.coeff Q z = g.coeff Q z := by
    intro Q z hz
    ext a b
    show h.g (Q z) _ _ = g.g (Q z) _ _
    rw [hz]
  have hgfi : ∀ (G H : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f u : E3 → ℝ) (y : E3) (i : Fin 3),
      gfiVec G H f u y i = Real.sqrt (H y).det / Real.sqrt (G y).det *
        (f y * ∑ e : Fin 3, (H y)⁻¹ i e * partialDeriv e u y) -
          u y * ∑ e : Fin 3, (G y)⁻¹ i e * partialDeriv e f y :=
    fun G H f u y i => rfl
  have hsrc : ∀ j : Fin hAF.numEnds, (hAF.ends j).Φ.source = {x : E3 | 1 < ‖x‖} :=
    fun j => (hAF.ends j).source_eq
  have hS : IsCompact (φ '' K) :=
    hK.image_of_continuousOn (φ.contMDiffOn_toFun.continuousOn.mono hKφ)
  have hSc : IsClosed (φ '' K) := hS.isClosed
  
  have hfar : ∀ j : Fin hAF.numEnds, ∃ ρ : ℝ, 2 ≤ ρ ∧
      ∀ y : E3, ρ < ‖y‖ → (hAF.ends j).Φ y ∉ φ '' K := by
    intro j
    have key : ∃ ρ : ℝ, ∀ y : E3, ρ < ‖y‖ → (hAF.ends j).Φ y ∉ φ '' K := by
      refine hS.induction_on
        (p := fun s => ∃ ρ : ℝ, ∀ y : E3, ρ < ‖y‖ → (hAF.ends j).Φ y ∉ s) ?_ ?_ ?_ ?_
      · exact ⟨0, fun y _ hy' => by simp at hy'⟩
      · rintro s t hst ⟨ρ, hρ⟩
        exact ⟨ρ, fun y hy hs => hρ y hy (hst hs)⟩
      · rintro s t ⟨ρ₁, h₁⟩ ⟨ρ₂, h₂⟩
        refine ⟨max ρ₁ ρ₂, fun y hy hst => ?_⟩
        rcases hst with hs | ht
        · exact h₁ y (lt_of_le_of_lt (le_max_left _ _) hy) hs
        · exact h₂ y (lt_of_le_of_lt (le_max_right _ _) hy) ht
      · intro x _
        obtain ⟨ρ, N, hN, hρ⟩ := end_chart_escape g hAF j x
        exact ⟨N, mem_nhdsWithin_of_mem_nhds hN, ρ, hρ⟩
    obtain ⟨ρ, hρ⟩ := key
    exact ⟨max ρ 2, le_max_right _ _, fun y hy => hρ y (lt_of_le_of_lt (le_max_left _ _) hy)⟩
  choose R hR2 hR using hfar
  have hclo : ∀ j : Fin hAF.numEnds, ∃ ρ₀ : ℝ, 2 ≤ ρ₀ ∧
      ∀ ρ : ℝ, ρ₀ ≤ ρ → IsClosed ((hAF.ends j).Φ '' {x : E3 | ρ ≤ ‖x‖}) :=
    fun j => endChart_far_isClosed g hAF j
  choose ρc hρc2 hρc using hclo
  
  obtain ⟨F, hF⟩ : ∃ F : E3 → ℝ,
      F = fun x => Real.sqrt (h.coeff φ x).det / Real.sqrt (g.coeff φ x).det := ⟨_, rfl⟩
  have hFx : ∀ x, F x = Real.sqrt (h.coeff φ x).det / Real.sqrt (g.coeff φ x).det :=
    fun x => by rw [hF]
  have hFs : ContDiffOn ℝ ∞ F φ.source := by
    have h1 := ccs_sqrtdet_smooth (h.coeff φ) φ.source (coeff_contDiffOn_source h φ)
      (fun z hz => (coeff_posDef h φ z hz).det_pos)
    have h2 := ccs_sqrtdet_smooth (g.coeff φ) φ.source (coeff_contDiffOn_source g φ)
      (fun z hz => (coeff_posDef g φ z hz).det_pos)
    rw [hF]
    exact h1.div h2 (fun z hz => (Real.sqrt_pos.2 (coeff_posDef g φ z hz).det_pos).ne')
  obtain ⟨dr, hdr⟩ : ∃ dr : M → ℝ,
      dr = fun p => if p ∈ φ.target then F (φ.toPartialEquiv.symm p) else 1 := ⟨_, rfl⟩
  have hdrφ : ∀ x ∈ φ.source, dr (φ x) = F x := by
    intro x hx
    simp only [hdr, if_pos (φ.map_source hx), φ.left_inv hx]
  have hdr1 : ∀ p : M, p ∉ φ '' K → dr p = 1 := by
    intro p hp
    by_cases ht : p ∈ φ.target
    · simp only [hdr, if_pos ht]
      have hx := φ.map_target ht
      have e1 : φ (φ.toPartialEquiv.symm p) = p := φ.right_inv ht
      have hHG : h.coeff φ (φ.toPartialEquiv.symm p) = g.coeff φ (φ.toPartialEquiv.symm p) :=
        hcoeq φ _ (by rw [e1]; exact hh p hp)
      have hpos : 0 < Real.sqrt (g.coeff φ (φ.toPartialEquiv.symm p)).det :=
        Real.sqrt_pos.2 (coeff_posDef g φ _ hx).det_pos
      rw [hFx, hHG, div_self hpos.ne']
    · simp only [hdr, if_neg ht]
  have hdrs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ dr := by
    apply contMDiff_of_locally_contMDiffOn
    intro p
    by_cases hp : p ∈ φ.target
    · refine ⟨φ.target, φ.open_target, hp, ?_⟩
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (F ∘ φ.toPartialEquiv.symm) φ.target :=
        (contMDiffOn_iff_contDiffOn.mpr hFs).comp φ.contMDiffOn_invFun
          (fun q hq => φ.map_target hq)
      refine h1.congr (fun q hq => ?_)
      simp only [hdr, Function.comp_apply, if_pos hq]
    · refine ⟨(φ '' K)ᶜ, hSc.isOpen_compl, ?_, ?_⟩
      · rintro ⟨x, hx, rfl⟩
        exact hp (φ.map_source (hKφ hx))
      · exact contMDiffOn_const.congr (fun q hq => hdr1 q hq)
  
  obtain ⟨W₁, -, -, hW₁c, hW₁P⟩ :=
    weighted_gradient_field h (fun p => ψ p * dr p) v (hψ.mul hdrs) hv
  obtain ⟨W₂, -, -, hW₂c, hW₂P⟩ := weighted_gradient_field g v ψ hv hψ
  
  obtain ⟨rv, hrv⟩ : ∃ rv : (E3 → M) → E3 → E3, rv = fun P x =>
      (EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
        ψ (P x) * dr (P x) * ∑ k : Fin 3, (h.coeff P x)⁻¹ i k * partialDeriv k (fun z => v (P z)) x -
          v (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k * partialDeriv k (fun z => ψ (P z)) x) :=
    ⟨_, rfl⟩
  have hrvi : ∀ (P : E3 → M) (x : E3) (i : Fin 3), rv P x i =
      ψ (P x) * dr (P x) * ∑ k : Fin 3, (h.coeff P x)⁻¹ i k * partialDeriv k (fun z => v (P z)) x -
        v (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k * partialDeriv k (fun z => ψ (P z)) x := by
    intro P x i; rw [hrv]; rfl
  obtain ⟨ρ₀, hρ₀⟩ : ∃ ρ₀ : ℝ, ρ₀ = max 2 (max (∑ j, ρc j) (∑ j, R j + 1)) := ⟨_, rfl⟩
  refine ⟨ρ₀, by rw [hρ₀]; exact le_max_left _ _, ?_⟩
  intro c hc
  have hc2 : 2 ≤ c := le_trans (by rw [hρ₀]; exact le_max_left _ _) hc
  have hcρ : ∀ j, ρc j ≤ c := by
    intro j
    have h1 : ρc j ≤ ∑ i, ρc i :=
      Finset.single_le_sum (f := ρc) (fun i _ => by linarith [hρc2 i]) (Finset.mem_univ j)
    have h2 : ∑ i, ρc i ≤ ρ₀ := by
      rw [hρ₀]; exact (le_max_left _ _).trans (le_max_right _ _)
    linarith
  have hcR : ∀ j, R j < c := by
    intro j
    have h1 : R j ≤ ∑ i, R i :=
      Finset.single_le_sum (f := R) (fun i _ => by linarith [hR2 i]) (Finset.mem_univ j)
    have h2 : ∑ i, R i + 1 ≤ ρ₀ := by
      rw [hρ₀]; exact (le_max_right _ _).trans (le_max_right _ _)
    linarith
  have hSj : ∀ j, IsClosed ((hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖}) :=
    fun j => hρc j c (hcρ j)
  
  obtain ⟨τ, hτ⟩ : ∃ τ : Fin hAF.numEnds → M → ℝ, τ = fun j p =>
      if p ∈ (hAF.ends j).Φ.target then
        Real.smoothTransition (‖(hAF.ends j).Φ.toPartialEquiv.symm p‖ - c) else 0 := ⟨_, rfl⟩
  have hτΦ : ∀ j (y : E3), 1 < ‖y‖ →
      τ j ((hAF.ends j).Φ y) = Real.smoothTransition (‖y‖ - c) := by
    intro j y hy
    have hys : y ∈ (hAF.ends j).Φ.source := by rw [hsrc j]; exact hy
    simp only [hτ, if_pos ((hAF.ends j).Φ.map_source hys), (hAF.ends j).Φ.left_inv hys]
  have hτoff : ∀ j (q : M), q ∉ (hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖} → τ j q = 0 := by
    intro j q hq
    by_cases ht : q ∈ (hAF.ends j).Φ.target
    · simp only [hτ, if_pos ht]
      apply Real.smoothTransition.zero_of_nonpos
      have : ‖(hAF.ends j).Φ.toPartialEquiv.symm q‖ < c := by
        by_contra hcon
        push_neg at hcon
        exact hq ⟨_, hcon, (hAF.ends j).Φ.right_inv ht⟩
      linarith
    · simp only [hτ, if_neg ht]
  have hτother : ∀ j l (y : E3), 1 < ‖y‖ → j ≠ l → τ l ((hAF.ends j).Φ y) = 0 := by
    intro j l y hy hjl
    have hys : y ∈ (hAF.ends j).Φ.source := by rw [hsrc j]; exact hy
    have hnot : (hAF.ends j).Φ y ∉ (hAF.ends l).Φ.target := fun hmem =>
      Set.disjoint_left.1 (hAF.disjoint hjl) ((hAF.ends j).Φ.map_source hys) hmem
    simp only [hτ, if_neg hnot]
  have hτs : ∀ j, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (τ j) := by
    intro j
    apply contMDiff_of_locally_contMDiffOn
    intro p
    by_cases hp : p ∈ (hAF.ends j).Φ.target
    · refine ⟨(hAF.ends j).Φ.target, (hAF.ends j).Φ.open_target, hp, ?_⟩
      have hst : ContDiffOn ℝ ∞ (fun y : E3 => Real.smoothTransition (‖y‖ - c))
          {x : E3 | 1 < ‖x‖} := by
        intro y hy
        have hy' : (1 : ℝ) < ‖y‖ := hy
        have hy0 : y ≠ 0 := by
          intro h0
          rw [h0, norm_zero] at hy'
          linarith
        exact ((Real.smoothTransition.contDiff.contDiffAt).comp y
          ((contDiffAt_norm ℝ hy0).sub contDiffAt_const)).contDiffWithinAt
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞
          ((fun y : E3 => Real.smoothTransition (‖y‖ - c)) ∘ (hAF.ends j).Φ.toPartialEquiv.symm)
          (hAF.ends j).Φ.target :=
        (contMDiffOn_iff_contDiffOn.mpr hst).comp (hAF.ends j).Φ.contMDiffOn_invFun
          (fun q hq => by rw [← hsrc j]; exact (hAF.ends j).Φ.map_target hq)
      refine h1.congr (fun q hq => ?_)
      simp only [hτ, Function.comp_apply, if_pos hq]
    · refine ⟨((hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖})ᶜ, (hSj j).isOpen_compl, ?_, ?_⟩
      · rintro ⟨x, hx, rfl⟩
        apply hp
        apply (hAF.ends j).Φ.map_source
        rw [hsrc j]
        have hx' : c ≤ ‖x‖ := hx
        show (1 : ℝ) < ‖x‖
        linarith
      · exact contMDiffOn_const.congr (fun q hq => hτoff j q hq)
  obtain ⟨χ, hχ⟩ : ∃ χ : M → ℝ, χ = fun p => 1 - ∑ j, τ j p := ⟨_, rfl⟩
  have hχs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ χ := by
    rw [hχ]
    exact contMDiff_const.sub (contMDiff_finset_sum (fun j _ => hτs j))
  have hχΦ : ∀ j (y : E3), 1 < ‖y‖ →
      χ ((hAF.ends j).Φ y) = 1 - Real.smoothTransition (‖y‖ - c) := by
    intro j y hy
    simp only [hχ]
    rw [Finset.sum_eq_single j (fun l _ hlj => hτother j l y hy (Ne.symm hlj))
      (fun hj => absurd (Finset.mem_univ j) hj), hτΦ j y hy]
  have hχone : ∀ p : M, (∀ j, p ∉ (hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖}) →
      ∀ᶠ q in 𝓝 p, χ q = 1 := by
    intro p hp
    have hO : IsOpen (⋂ j, ((hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖})ᶜ) :=
      isOpen_iInter_of_finite (fun j => (hSj j).isOpen_compl)
    filter_upwards [hO.mem_nhds (Set.mem_iInter.2 hp)] with q hq
    simp only [hχ]
    rw [Finset.sum_eq_zero (fun j _ => hτoff j q (Set.mem_iInter.1 hq j)), sub_zero]
  
  obtain ⟨Y, hY⟩ : ∃ Y : M → E3, Y = fun p => χ p • (W₁ p - W₂ p) := ⟨_, rfl⟩
  have hrvS : ∀ (P : E3 → M) (U : Set E3), IsOpen U →
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => g.coeff P x i j) U) →
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => h.coeff P x i j) U) →
      (∀ x ∈ U, (g.coeff P x).PosDef) → (∀ x ∈ U, (h.coeff P x).PosDef) →
      (∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w → ContDiffOn ℝ ∞ (fun z => w (P z)) U) →
      ContDiffOn ℝ ∞ (fun x => χ (P x) • rv P x) U := by
    intro P U hU hG hH hGp hHp hw
    obtain ⟨hpdH, hinvH, -, -, -⟩ :=
      ejp_coord_smooth (h.coeff P) (fun z => v (P z)) U hU hH hHp (hw v hv)
    obtain ⟨hpdG, hinvG, -, -, -⟩ :=
      ejp_coord_smooth (g.coeff P) (fun z => ψ (P z)) U hU hG hGp (hw ψ hψ)
    have hvec : ContDiffOn ℝ ∞ (rv P) U := by
      rw [contDiffOn_piLp]
      intro i
      have hc : ContDiffOn ℝ ∞ (fun x => ψ (P x) * dr (P x) * ∑ k : Fin 3, (h.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => v (P z)) x - v (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => ψ (P z)) x) U :=
        (((hw ψ hψ).mul (hw dr hdrs)).mul
          (ContDiffOn.sum fun k _ => (hinvH i k).mul (hpdH _ (hw v hv) k))).sub
          ((hw v hv).mul (ContDiffOn.sum fun k _ => (hinvG i k).mul (hpdG _ (hw ψ hψ) k)))
      exact hc.congr (fun x _ => hrvi P x i)
    exact (hw χ hχs).smul hvec
  have hrepP : ∀ (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (x : E3), x ∈ P.source →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x (χ (P x) • rv P x) = Y (P x) := by
    intro P x hx
    have e1 := hW₁P P x hx ((EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
        ψ (P x) * dr (P x) * ∑ k : Fin 3, (h.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => v (P z)) x)) (fun i => rfl)
    have e2 := hW₂P P x hx ((EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
        v (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => ψ (P z)) x)) (fun i => rfl)
    have hw : rv P x = (EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
        ψ (P x) * dr (P x) * ∑ k : Fin 3, (h.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => v (P z)) x) - (EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
        v (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => ψ (P z)) x) := by
      refine PiLp.ext (fun i => ?_)
      rw [hrvi]
      rfl
    rw [hw, map_smul, map_sub, e1, e2, hY]
  have hrepC : ∀ (p : M) (y : E3), y ∈ (chartAt E3 p).target →
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
        (Y ((chartAt E3 p).symm y)) : E3) =
        χ ((chartAt E3 p).symm y) • rv (chartAt E3 p).symm y := by
    intro p y hy
    have h1 : (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
        (W₁ ((chartAt E3 p).symm y)) : E3) = (EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
          ψ ((chartAt E3 p).symm y) * dr ((chartAt E3 p).symm y) *
            ∑ k : Fin 3, (h.coeff (chartAt E3 p).symm y)⁻¹ i k *
              partialDeriv k (fun z => v ((chartAt E3 p).symm z)) y) := by
      refine PiLp.ext (fun i => ?_)
      exact hW₁c p y hy i
    have h2 : (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
        (W₂ ((chartAt E3 p).symm y)) : E3) = (EuclideanSpace.equiv (Fin 3) ℝ).symm (fun i =>
          v ((chartAt E3 p).symm y) *
            ∑ k : Fin 3, (g.coeff (chartAt E3 p).symm y)⁻¹ i k *
              partialDeriv k (fun z => ψ ((chartAt E3 p).symm z)) y) := by
      refine PiLp.ext (fun i => ?_)
      exact hW₂c p y hy i
    simp only [hY]
    rw [map_smul, map_sub, h1, h2]
    congr 1
    refine PiLp.ext (fun i => ?_)
    rw [hrvi]
    rfl
  have hYs : calSmoothField Y := by
    intro q
    exact (hrvS (chartAt E3 q).symm _ (chartAt E3 q).open_target (g.smooth q) (h.smooth q)
      (fun y hy => coeff_chart_symm_posDef g q y hy) (fun y hy => coeff_chart_symm_posDef h q y hy)
      (fun w hw => smC w hw q)).congr (fun y hy => hrepC q y hy)
  
  obtain ⟨C, hCdef⟩ : ∃ C : Set M, C = (⋃ j, (hAF.ends j).Φ '' {x : E3 | 2 < ‖x‖})ᶜ ∪
      ⋃ j, (hAF.ends j).Φ '' ({x : E3 | 2 ≤ ‖x‖} ∩ {x : E3 | ‖x‖ ≤ c + 1}) := ⟨_, rfl⟩
  have hC : IsCompact C := by
    rw [hCdef]
    refine hAF.isCompact_core.union (isCompact_iUnion fun j => ?_)
    have hcl : IsClosed ({x : E3 | 2 ≤ ‖x‖} ∩ {x : E3 | ‖x‖ ≤ c + 1}) :=
      (isClosed_le continuous_const continuous_norm).inter
        (isClosed_le continuous_norm continuous_const)
    have hA : IsCompact ({x : E3 | 2 ≤ ‖x‖} ∩ {x : E3 | ‖x‖ ≤ c + 1}) := by
      refine (isCompact_closedBall (0 : E3) (c + 1)).of_isClosed_subset hcl ?_
      intro x hx
      exact mem_closedBall_zero_iff.2 hx.2
    refine hA.image_of_continuousOn ((hAF.ends j).Φ.contMDiffOn_toFun.continuousOn.mono ?_)
    intro x hx
    rw [(hAF.ends j).source_eq]
    have hx1 : (2 : ℝ) ≤ ‖x‖ := hx.1
    show (1 : ℝ) < ‖x‖
    linarith
  have hYC : ∀ p : M, p ∉ C → Y p = 0 := by
    intro p hp
    rw [hCdef] at hp
    have h1 : p ∈ ⋃ j, (hAF.ends j).Φ '' {x : E3 | 2 < ‖x‖} := by
      by_contra hc'
      exact hp (Or.inl hc')
    obtain ⟨j, hj⟩ := Set.mem_iUnion.1 h1
    obtain ⟨x, hx, rfl⟩ := hj
    have hx2 : (2 : ℝ) < ‖x‖ := hx
    have hxc : c + 1 < ‖x‖ := by
      by_contra hc'
      push_neg at hc'
      exact hp (Or.inr (Set.mem_iUnion.2 ⟨j, x, ⟨hx2.le, hc'⟩, rfl⟩))
    have hχ0 : χ ((hAF.ends j).Φ x) = 0 := by
      rw [hχΦ j x (by linarith),
        Real.smoothTransition.one_of_one_le (show (1 : ℝ) ≤ ‖x‖ - c by linarith), sub_self]
    simp only [hY, hχ0, zero_smul]
  
  refine ⟨Y, C, fun x => χ (φ x) • rv φ x, fun j x => χ ((hAF.ends j).Φ x) • rv (hAF.ends j).Φ x,
    hYs, hC, hYC,
    hrvS φ φ.source φ.open_source (coeff_contDiffOn_source g φ) (coeff_contDiffOn_source h φ)
      (coeff_posDef g φ) (coeff_posDef h φ) (fun w hw => smP w hw φ),
    fun x hx => hrepP φ x hx,
    fun j => hrvS (hAF.ends j).Φ (hAF.ends j).Φ.source (hAF.ends j).Φ.open_source
      (coeff_contDiffOn_source g _) (coeff_contDiffOn_source h _)
      (coeff_posDef g _) (coeff_posDef h _) (fun w hw => smP w hw _),
    fun j x hx => hrepP _ x hx, ?_, ?_, ?_, ?_, ?_⟩
  · 
    intro y hy
    have hys := hKφ hy
    have hnS : ∀ j, φ y ∉ (hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖} := by
      rintro j ⟨y', hy', he⟩
      have hy'' : c ≤ ‖y'‖ := hy'
      exact hR j y' (lt_of_lt_of_le (hcR j) hy'') ⟨y, hy, he.symm⟩
    have hcont : ContinuousAt φ y :=
      φ.contMDiffOn_toFun.continuousOn.continuousAt (φ.open_source.mem_nhds hys)
    have hev2 : ∀ᶠ z in 𝓝 y, χ (φ z) = 1 := Filter.Tendsto.eventually hcont (hχone (φ y) hnS)
    filter_upwards [hev2, φ.open_source.mem_nhds hys] with z hz hzs
    rw [hz, one_smul]
    refine PiLp.ext (fun i => ?_)
    rw [hrvi, hgfi, hdrφ z hzs, hFx]
    ring
  · 
    intro j y hy
    have hO : {z : E3 | R j < ‖z‖} ∈ 𝓝 y :=
      (isOpen_lt continuous_const continuous_norm).mem_nhds (lt_of_lt_of_le (hcR j) hy)
    filter_upwards [hO] with z hz
    have hz' : R j < ‖z‖ := hz
    have hz1 : 1 < ‖z‖ := by linarith [hR2 j]
    have hzs : z ∈ (hAF.ends j).Φ.source := by rw [hsrc j]; exact hz1
    have hnK := hR j z hz'
    have hHG : h.coeff (hAF.ends j).Φ z = g.coeff (hAF.ends j).Φ z := hcoeq _ z (hh _ hnK)
    have hd1 : dr ((hAF.ends j).Φ z) = 1 := hdr1 _ hnK
    have hpos : 0 < Real.sqrt (g.coeff (hAF.ends j).Φ z).det :=
      Real.sqrt_pos.2 (coeff_posDef g _ z hzs).det_pos
    rw [hχΦ j z hz1]
    congr 1
    refine PiLp.ext (fun i => ?_)
    rw [hrvi, hgfi, hd1, hHG, div_self hpos.ne']
    ring
  · 
    intro j
    rw [Set.disjoint_left]
    rintro p ⟨x, hx, rfl⟩ ⟨y', hy', he⟩
    exact hR j y' (lt_of_lt_of_le (hcR j) hy'.1) ⟨x, hx, he.symm⟩
  · 
    intro j l hjl
    have hA : ∀ k, (hAF.ends k).Φ '' {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1} ⊆
        (hAF.ends k).Φ.target := by
      rintro k _ ⟨y, hy, rfl⟩
      apply (hAF.ends k).Φ.map_source
      rw [hsrc k]
      have hy1 : c ≤ ‖y‖ := hy.1
      show (1 : ℝ) < ‖y‖
      linarith
    exact (hAF.disjoint hjl).mono (hA j) (hA l)
  · 
    intro p hp0 hpk
    have hmem : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
    have hlinv : (chartAt E3 p).symm (chartAt E3 p p) = p :=
      (chartAt E3 p).left_inv (mem_chart_source E3 p)
    have hT : Tendsto (chartAt E3 p).symm (𝓝 (chartAt E3 p p)) (𝓝 p) := by
      have := ((chartAt E3 p).continuousAt_symm hmem).tendsto
      rwa [hlinv] at this
    have htg : (chartAt E3 p).target ∈ 𝓝 (chartAt E3 p p) :=
      (chartAt E3 p).open_target.mem_nhds hmem
    by_cases hA : ∀ j, p ∉ (hAF.ends j).Φ '' {x : E3 | c ≤ ‖x‖}
    · left
      have h0 : ∀ᶠ q in 𝓝 p, q ∉ φ '' K := hSc.isOpen_compl.mem_nhds hp0
      have h1 : ∀ᶠ q in 𝓝 p, χ q = 1 ∧ q ∉ φ '' K := (hχone p hA).and h0
      have h2 : ∀ᶠ y in 𝓝 (chartAt E3 p p),
          χ ((chartAt E3 p).symm y) = 1 ∧ (chartAt E3 p).symm y ∉ φ '' K :=
        hT.eventually h1
      filter_upwards [h2, htg] with y hy hyt
      rw [hrepC p y hyt, hy.1, one_smul]
      have hHG : h.coeff (chartAt E3 p).symm y = g.coeff (chartAt E3 p).symm y :=
        hcoeq _ y (hh _ hy.2)
      have hpos : 0 < Real.sqrt (g.coeff (chartAt E3 p).symm y).det :=
        Real.sqrt_pos.2 (coeff_chart_symm_posDef g p y hyt).det_pos
      refine PiLp.ext (fun i => ?_)
      rw [hrvi, hgfi, hdr1 _ hy.2, hHG, div_self hpos.ne']
      ring
    · right
      push_neg at hA
      obtain ⟨j, y₀, hy₀, he⟩ := hA
      have hy₀c : c ≤ ‖y₀‖ := hy₀
      have hy₀' : c + 1 < ‖y₀‖ := by
        by_contra hcon
        push_neg at hcon
        exact hpk j ⟨y₀, ⟨hy₀c, hcon⟩, he⟩
      have hy₀s : y₀ ∈ (hAF.ends j).Φ.source := by
        rw [hsrc j]; show (1 : ℝ) < ‖y₀‖; linarith
      have hNo : IsOpen ((hAF.ends j).Φ.target ∩
          (hAF.ends j).Φ.toPartialEquiv.symm ⁻¹' {z : E3 | c + 1 < ‖z‖}) :=
        (hAF.ends j).Φ.contMDiffOn_invFun.continuousOn.isOpen_inter_preimage
          (hAF.ends j).Φ.open_target (isOpen_lt continuous_const continuous_norm)
      have hpN : p ∈ (hAF.ends j).Φ.target ∩
          (hAF.ends j).Φ.toPartialEquiv.symm ⁻¹' {z : E3 | c + 1 < ‖z‖} := by
        rw [← he]
        refine ⟨(hAF.ends j).Φ.map_source hy₀s, ?_⟩
        show c + 1 < ‖(hAF.ends j).Φ.toPartialEquiv.symm ((hAF.ends j).Φ y₀)‖
        rw [(hAF.ends j).Φ.left_inv hy₀s]
        exact hy₀'
      have hY0 : ∀ q ∈ (hAF.ends j).Φ.target ∩
          (hAF.ends j).Φ.toPartialEquiv.symm ⁻¹' {z : E3 | c + 1 < ‖z‖}, Y q = 0 := by
        rintro q ⟨hqt, hq⟩
        have hq' : c + 1 < ‖(hAF.ends j).Φ.toPartialEquiv.symm q‖ := hq
        have e1 : (hAF.ends j).Φ ((hAF.ends j).Φ.toPartialEquiv.symm q) = q :=
          (hAF.ends j).Φ.right_inv hqt
        have hχ0 : χ q = 0 := by
          rw [← e1, hχΦ j ((hAF.ends j).Φ.toPartialEquiv.symm q) (by linarith),
            Real.smoothTransition.one_of_one_le
              (show (1 : ℝ) ≤ ‖(hAF.ends j).Φ.toPartialEquiv.symm q‖ - c by linarith), sub_self]
        simp only [hY, hχ0, zero_smul]
      filter_upwards [hT (hNo.mem_nhds hpN)] with y hy
      rw [hY0 ((chartAt E3 p).symm y) hy, map_zero]

theorem green_flux_identity [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g h : RiemannianMetric3 M)
    (hAF : AsymptoticallyFlat g) (φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (K : Set E3)
    (hK : IsCompact K) (hKφ : K ⊆ φ.source) (hh : ∀ p : M, p ∉ φ '' K → h.g p = g.g p)
    (ψ v : M → ℝ) (hψ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ) (hv : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ v)
    (hψharm : ∀ p : M, g.lapM ψ p = 0) (hvloc : ∀ p : M, p ∉ φ '' K → h.lapM v p = 0) :
    ∃ ρ₀ : ℝ, 2 ≤ ρ₀ ∧ ∀ c : ℝ, ρ₀ ≤ c →
      ∑ j : Fin hAF.numEnds, ∫ y : E3, (∑ a : Fin 3, (Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
        ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
          (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
            v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y)) *
          (y a / ‖y‖)) * deriv Real.smoothTransition (‖y‖ - c) =
      ∫ y in K, (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
        ∑ i : Fin 3, ∑ j : Fin 3,
          ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
            (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
            partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y) :=
by
  
  
  have smP : ∀ (w : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      ∀ P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞,
        ContDiffOn ℝ ∞ (fun z => w (P z)) P.source :=
    fun w hw P => contMDiffOn_iff_contDiffOn.mp (hw.comp_contMDiffOn P.contMDiffOn_toFun)
  have hlapId : ∀ (gg : RiemannianMetric3 M) (w : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      ∀ (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (y : E3), y ∈ P.source →
        lapLoc (gg.coeff P) (fun z => w (P z)) y = gg.lapM w (P y) := by
    intro gg w hw P y hy
    exact lapLocal_chart_invariant gg P w Set.univ isOpen_univ hw.contMDiffOn y hy trivial
  have sdd_congr : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X X' : E3 → E3) (y : E3),
      X =ᶠ[𝓝 y] X' → sepDensDiv G X y = sepDensDiv G X' y := by
    intro G X X' y hXX
    unfold sepDensDiv
    refine Finset.sum_congr rfl fun i _ => ?_
    have h1 : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (G z).det * X' z i) := by
      filter_upwards [hXX] with z hz
      rw [hz]
    exact congrArg (fun L : E3 →L[ℝ] ℝ => L (e i)) h1.fderiv_eq
  
  have key : ∀ (U : Set E3), IsOpen U → ∀ (G H : E3 → Matrix (Fin 3) (Fin 3) ℝ),
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => G x i j) U) →
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => H x i j) U) →
      (∀ (x : E3) (i j : Fin 3), G x i j = G x j i) →
      (∀ (x : E3) (i j : Fin 3), H x i j = H x j i) →
      (∀ x ∈ U, (G x).PosDef) → (∀ x ∈ U, (H x).PosDef) →
      ∀ f u : E3 → ℝ, ContDiffOn ℝ ∞ f U → ContDiffOn ℝ ∞ u U → ∀ y ∈ U,
      (∀ a : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * gfiVec G H f u z a) y) ∧
      sepDensDiv G (gfiVec G H f u) y =
        f y * lapLoc H u y * Real.sqrt (H y).det - u y * lapLoc G f y * Real.sqrt (G y).det +
        ∑ i : Fin 3, ∑ j : Fin 3, ((H y)⁻¹ i j * Real.sqrt (H y).det -
          (G y)⁻¹ i j * Real.sqrt (G y).det) * partialDeriv i f y * partialDeriv j u y := by
    intro U hU G H hG hH hGs hHs hGpd hHpd f u hf hu y hy
    have hloc : ∀ a : Fin 3, (fun z => Real.sqrt (G z).det * gfiVec G H f u z a) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (H z).det * (f z * ∑ e : Fin 3, (H z)⁻¹ a e * partialDeriv e u z) -
          Real.sqrt (G z).det * (u z * ∑ e : Fin 3, (G z)⁻¹ a e * partialDeriv e f z)) := by
      intro a
      filter_upwards [hU.mem_nhds hy] with z hz
      have hpos : 0 < Real.sqrt (G z).det := Real.sqrt_pos.2 (hGpd z hz).det_pos
      have hne := hpos.ne'
      have e1 : Real.sqrt (G z).det * (Real.sqrt (H z).det / Real.sqrt (G z).det) =
          Real.sqrt (H z).det := by
        field_simp
      show Real.sqrt (G z).det * (Real.sqrt (H z).det / Real.sqrt (G z).det *
          (f z * ∑ e : Fin 3, (H z)⁻¹ a e * partialDeriv e u z) -
          u z * ∑ e : Fin 3, (G z)⁻¹ a e * partialDeriv e f z) = _
      linear_combination (f z * ∑ e : Fin 3, (H z)⁻¹ a e * partialDeriv e u z) * e1
    obtain ⟨hpdH, hinvH, -, -, -⟩ := ejp_coord_smooth H f U hU hH hHpd hf
    obtain ⟨hpdG, hinvG, -, -, -⟩ := ejp_coord_smooth G f U hU hG hGpd hf
    have hsqH := ccs_sqrtdet_smooth H U hH (fun z hz => (hHpd z hz).det_pos)
    have hsqG := ccs_sqrtdet_smooth G U hG (fun z hz => (hGpd z hz).det_pos)
    have hbr : ∀ a : Fin 3, ContDiffOn ℝ ∞ (fun z =>
        Real.sqrt (H z).det * (f z * ∑ e : Fin 3, (H z)⁻¹ a e * partialDeriv e u z) -
          Real.sqrt (G z).det * (u z * ∑ e : Fin 3, (G z)⁻¹ a e * partialDeriv e f z)) U := by
      intro a
      exact (hsqH.mul (hf.mul (ContDiffOn.sum fun e _ => (hinvH a e).mul (hpdH u hu e)))).sub
        (hsqG.mul (hu.mul (ContDiffOn.sum fun e _ => (hinvG a e).mul (hpdG f hf e))))
    refine ⟨fun a => (((hbr a).contDiffAt (hU.mem_nhds hy)).differentiableAt (by simp)).congr_of_eventuallyEq
      (hloc a), ?_⟩
    have hsum : sepDensDiv G (gfiVec G H f u) y = ∑ a : Fin 3, partialDeriv a (fun z =>
        Real.sqrt (H z).det * (f z * ∑ e : Fin 3, (H z)⁻¹ a e * partialDeriv e u z) -
          Real.sqrt (G z).det * (u z * ∑ e : Fin 3, (G z)⁻¹ a e * partialDeriv e f z)) y := by
      unfold sepDensDiv
      refine Finset.sum_congr rfl fun a _ => ?_
      exact congrArg (fun L : E3 →L[ℝ] ℝ => L (e a)) (hloc a).fderiv_eq
    rw [hsum]
    exact green_div_pointwise U hU G H hG hH hGs hHs hGpd hHpd f u hf hu y hy
  
  
  have hS : IsCompact (φ '' K) :=
    hK.image_of_continuousOn (φ.contMDiffOn_toFun.continuousOn.mono hKφ)
  have hfar : ∀ j : Fin hAF.numEnds, ∃ R : ℝ, 1 ≤ R ∧ ∀ x : E3, R < ‖x‖ →
      lapLoc (g.coeff (hAF.ends j).Φ) (fun y => v ((hAF.ends j).Φ y)) x = 0 := by
    intro j
    refine cls_far_harmonic g h hAF (φ '' K) hS hh (fun _ => 0) (fun p => -8 * h.lapM v p) v hv
      ?_ ?_ j
    · intro p hp
      refine ⟨rfl, ?_⟩
      show -8 * h.lapM v p = 0
      rw [hvloc p hp, mul_zero]
    · intro p
      show -8 * h.lapM v p + 0 * v p = -8 * h.lapM v p
      ring
  choose R hR1 hR using hfar
  obtain ⟨ρ₀, hρ₀2, hgfp⟩ := green_field_pieces g h hAF φ K hK hKφ hh ψ v hψ hv
  haveI : SigmaCompactSpace M := af_sigmaCompactSpace g hAF
  refine ⟨max ρ₀ (∑ j, R j + 1), le_trans hρ₀2 (le_max_left _ _), fun c hc => ?_⟩
  have hcρ : ρ₀ ≤ c := le_trans (le_max_left _ _) hc
  have hc2 : 2 ≤ c := le_trans hρ₀2 hcρ
  have hcR : ∀ j, R j < c := by
    intro j
    have h1 : R j ≤ ∑ i, R i :=
      Finset.single_le_sum (f := R) (fun i _ => le_trans zero_le_one (hR1 i)) (Finset.mem_univ j)
    have h2 := le_trans (le_max_right ρ₀ (∑ i, R i + 1)) hc
    linarith
  obtain ⟨Y, C, Yt₀, Yt, hY, hC, hYC, hYt₀s, hYt₀, hYts, hYt, hYK, hYE, hdisj₀, hdisj, hoff⟩ :=
    hgfp c hcρ
  
  
  have hAc : IsClosed {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1} :=
    (isClosed_le continuous_const continuous_norm).inter (isClosed_le continuous_norm continuous_const)
  have hAcpt : IsCompact {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1} :=
    (isCompact_closedBall (0 : E3) (c + 1)).of_isClosed_subset hAc
      (fun x hx => mem_closedBall_zero_iff.2 hx.2)
  have hAsrc : ∀ j : Fin hAF.numEnds,
      {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1} ⊆ (hAF.ends j).Φ.source := by
    intro j x hx
    rw [(hAF.ends j).source_eq]
    show (1 : ℝ) < ‖x‖
    linarith [hx.1]
  have hst' : ∀ y : E3, y ∉ {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1} →
      deriv Real.smoothTransition (‖y‖ - c) = 0 := by
    intro y hyA
    simp only [Set.mem_setOf_eq, not_and_or, not_le] at hyA
    rcases hyA with h1 | h1
    · have h3 : Real.smoothTransition =ᶠ[𝓝 (‖y‖ - c)] fun _ => (0 : ℝ) := by
        filter_upwards [Iio_mem_nhds (show ‖y‖ - c < 0 by linarith)] with t ht
        exact Real.smoothTransition.zero_of_nonpos (le_of_lt ht)
      rw [h3.deriv_eq]; simp
    · have h3 : Real.smoothTransition =ᶠ[𝓝 (‖y‖ - c)] fun _ => (1 : ℝ) := by
        filter_upwards [Ioi_mem_nhds (show (1 : ℝ) < ‖y‖ - c by linarith)] with t ht
        exact Real.smoothTransition.one_of_one_le (le_of_lt ht)
      rw [h3.deriv_eq]; simp
  
  
  have hdiv : ∀ p : M, p ∉ φ '' K →
      (∀ k : Fin hAF.numEnds, p ∉ (hAF.ends k).Φ '' {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1}) →
      sepDensDiv (g.coeff (chartAt E3 p).symm)
        (fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
          (Y ((chartAt E3 p).symm y)) : E3)) (chartAt E3 p p) = 0 := by
    intro p hp0 hpk
    have hmem : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
    rcases hoff p hp0 hpk with hrep | hrep
    · rw [sdd_congr _ _ _ _ hrep]
      have kC := (key (chartAt E3 p).target (chartAt E3 p).open_target
        (g.coeff (chartAt E3 p).symm) (h.coeff (chartAt E3 p).symm) (g.smooth p) (h.smooth p)
        (fun x i k => g.symm _ _ _) (fun x i k => h.symm _ _ _)
        (fun x hx => coeff_chart_symm_posDef g p x hx) (fun x hx => coeff_chart_symm_posDef h p x hx)
        (fun z => ψ ((chartAt E3 p).symm z)) (fun z => v ((chartAt E3 p).symm z))
        (contMDiffOn_iff_contDiffOn.mp (hψ.comp_contMDiffOn contMDiffOn_chart_symm))
        (contMDiffOn_iff_contDiffOn.mp (hv.comp_contMDiffOn contMDiffOn_chart_symm))
        _ hmem).2
      have hl1 : lapLoc (h.coeff (chartAt E3 p).symm) (fun z => v ((chartAt E3 p).symm z))
          (chartAt E3 p p) = 0 := hvloc p hp0
      have hl2 : lapLoc (g.coeff (chartAt E3 p).symm) (fun z => ψ ((chartAt E3 p).symm z))
          (chartAt E3 p p) = 0 := hψharm p
      have hHG : h.coeff (chartAt E3 p).symm (chartAt E3 p p) =
          g.coeff (chartAt E3 p).symm (chartAt E3 p p) := by
        have e1 : (chartAt E3 p).symm (chartAt E3 p p) = p :=
          (chartAt E3 p).left_inv (mem_chart_source E3 p)
        have e2 : h.g ((chartAt E3 p).symm (chartAt E3 p p)) =
            g.g ((chartAt E3 p).symm (chartAt E3 p p)) := by
          rw [e1]; exact hh p hp0
        ext a b
        show h.g ((chartAt E3 p).symm (chartAt E3 p p)) _ _ =
          g.g ((chartAt E3 p).symm (chartAt E3 p p)) _ _
        rw [e2]
      rw [kC, hl1, hl2, hHG]
      simp
    · rw [sdd_congr _ _ _ _ hrep]
      simp [sepDensDiv, partialDeriv]
  
  
  have main : (∫ y in K, sepDensDiv (g.coeff φ) Yt₀ y) +
      ∑ j : Fin hAF.numEnds, ∫ y in {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1},
        sepDensDiv (g.coeff (hAF.ends j).Φ) (Yt j) y = 0 :=
    manifold_div_chart_sum g Y hY C hC hYC φ K hK hKφ Yt₀ hYt₀s hYt₀
      (fun j => (hAF.ends j).Φ) (fun _ => {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1}) (fun _ => hAcpt)
      hAsrc hdisj₀ hdisj Yt hYts hYt hdiv
  
  
  have hIK : (∫ y in K, sepDensDiv (g.coeff φ) Yt₀ y) =
      ∫ y in K, (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
        ∑ i : Fin 3, ∑ j : Fin 3,
          ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
            (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
            partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y) := by
    refine setIntegral_congr_fun hK.isClosed.measurableSet fun y hy => ?_
    have hys : y ∈ φ.source := hKφ hy
    have kK := (key φ.source φ.open_source (g.coeff φ) (h.coeff φ) (coeff_contDiffOn_source g φ)
      (coeff_contDiffOn_source h φ) (fun x i k => g.symm _ _ _) (fun x i k => h.symm _ _ _)
      (fun x hx => coeff_posDef g φ x hx) (fun x hx => coeff_posDef h φ x hx)
      (fun z => ψ (φ z)) (fun z => v (φ z)) (smP ψ hψ φ) (smP v hv φ) y hys).2
    rw [hlapId g ψ hψ φ y hys, hψharm, hlapId h v hv φ y hys] at kK
    beta_reduce at kK
    beta_reduce
    rw [sdd_congr _ _ _ y (hYK y hy), kK]
    ring
  
  
  have hEj : ∀ j : Fin hAF.numEnds,
      ∫ y in {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1}, sepDensDiv (g.coeff (hAF.ends j).Φ) (Yt j) y =
      -∫ y : E3, (∑ a : Fin 3, (Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
        ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
          (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
            v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y)) *
          (y a / ‖y‖)) * deriv Real.smoothTransition (‖y‖ - c) := by
    intro j
    have hpt : ∀ y ∈ {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1},
        sepDensDiv (g.coeff (hAF.ends j).Φ) (Yt j) y =
        -((∑ a : Fin 3, (Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
          ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
            (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
              v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y)) *
            (y a / ‖y‖)) * deriv Real.smoothTransition (‖y‖ - c)) := by
      intro y hy
      have hy1 : c ≤ ‖y‖ := hy.1
      have hy0 : y ≠ 0 := by
        intro h0
        rw [h0, norm_zero] at hy1
        linarith
      have hys : y ∈ (hAF.ends j).Φ.source := hAsrc j hy
      have kE := key (hAF.ends j).Φ.source (hAF.ends j).Φ.open_source (g.coeff (hAF.ends j).Φ)
        (g.coeff (hAF.ends j).Φ) (coeff_contDiffOn_source g _) (coeff_contDiffOn_source g _)
        (fun x i k => g.symm _ _ _) (fun x i k => g.symm _ _ _)
        (fun x hx => coeff_posDef g _ x hx) (fun x hx => coeff_posDef g _ x hx)
        (fun z => ψ ((hAF.ends j).Φ z)) (fun z => v ((hAF.ends j).Φ z)) (smP ψ hψ _) (smP v hv _)
        y hys
      have hX0 : sepDensDiv (g.coeff (hAF.ends j).Φ) (gfiVec (g.coeff (hAF.ends j).Φ)
          (g.coeff (hAF.ends j).Φ) (fun z => ψ ((hAF.ends j).Φ z))
          (fun z => v ((hAF.ends j).Φ z))) y = 0 := by
        rw [kE.2, hR j y (lt_of_lt_of_le (hcR j) hy1), hlapId g ψ hψ _ y hys, hψharm]
        simp
      have hpos : 0 < Real.sqrt (g.coeff (hAF.ends j).Φ y).det :=
        Real.sqrt_pos.2 (coeff_posDef g _ y hys).det_pos
      have hXa : ∀ a : Fin 3, Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
          gfiVec (g.coeff (hAF.ends j).Φ) (g.coeff (hAF.ends j).Φ)
            (fun z => ψ ((hAF.ends j).Φ z)) (fun z => v ((hAF.ends j).Φ z)) y a =
          Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
            ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
              (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
                v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y) := by
        intro a
        show Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
            (Real.sqrt (g.coeff (hAF.ends j).Φ y).det / Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
              (ψ ((hAF.ends j).Φ y) * ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
                partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y) -
              v ((hAF.ends j).Φ y) * ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
                partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y) = _
        rw [div_self hpos.ne', one_mul]
        simp only [Fin.sum_univ_three]
        ring
      have hsumX : ∑ a : Fin 3, Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
          gfiVec (g.coeff (hAF.ends j).Φ) (g.coeff (hAF.ends j).Φ)
            (fun z => ψ ((hAF.ends j).Φ z)) (fun z => v ((hAF.ends j).Φ z)) y a * (y a / ‖y‖) =
          ∑ a : Fin 3, (Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
            ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
              (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
                v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y)) *
            (y a / ‖y‖) :=
        Finset.sum_congr rfl fun a _ => by rw [hXa a]
      rw [sdd_congr _ _ _ y (hYE j y hy1), shell_cutoff_densDiv _ _ c y hy0 kE.1, hX0, hsumX]
      ring
    have hoff' : ∀ y ∉ {y : E3 | c ≤ ‖y‖ ∧ ‖y‖ ≤ c + 1},
        -((∑ a : Fin 3, (Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
          ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
            (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
              v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y)) *
            (y a / ‖y‖)) * deriv Real.smoothTransition (‖y‖ - c)) = 0 := by
      intro y hy
      rw [hst' y hy, mul_zero, neg_zero]
    rw [setIntegral_congr_fun hAc.measurableSet hpt,
      setIntegral_eq_integral_of_forall_compl_eq_zero hoff', integral_neg]
  
  rw [hIK] at main
  simp only [hEj, Finset.sum_neg_distrib] at main
  linarith

theorem end_shell_asymptotics (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f u : E3 → ℝ)
    (b q q₁ q' R C : ℝ) (hq : 1 / 2 < q) (hq₁ : 1 / 2 < q₁) (hq' : 1 / 2 < q')
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => G x i j) {x : E3 | 1 < ‖x‖})
    (hf : ContDiffOn ℝ ∞ f {x : E3 | 1 < ‖x‖}) (hu : ContDiffOn ℝ ∞ u {x : E3 | 1 < ‖x‖})
    (hdecay : ∀ i j : Fin 3, ∀ l : ℕ, l ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ l (fun y => G y i j - if i = j then (1 : ℝ) else 0) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-q - (l : ℝ)))
    (hfb : ∀ x : E3, R < ‖x‖ →
      |f x - b| ≤ C * ‖x‖ ^ (-q₁) ∧ ‖fderiv ℝ f x‖ ≤ C * ‖x‖ ^ (-q₁ - 1))
    (hudec : ∀ l : ℕ, l ≤ 2 → (fun x : E3 => ‖iteratedFDeriv ℝ l u x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-q' - (l : ℝ))) :
    Tendsto (fun c : ℝ =>
      (∫ y : E3, (∑ a : Fin 3, (Real.sqrt (G y).det * ∑ e : Fin 3, (G y)⁻¹ a e *
        (f y * partialDeriv e u y - u y * partialDeriv e f y)) * (y a / ‖y‖)) *
          deriv Real.smoothTransition (‖y‖ - c)) -
      b * ∫ y : E3, (∑ a : Fin 3, partialDeriv a u y * (y a / ‖y‖)) *
          deriv Real.smoothTransition (‖y‖ - c)) atTop (𝓝 0) :=
by
  
  have bigO : ∀ (φ : E3 → ℝ) (a : ℝ), (φ =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ a) →
      ∃ R₁ C₁ : ℝ, 0 ≤ C₁ ∧ ∀ x : E3, R₁ < ‖x‖ → |φ x| ≤ C₁ * ‖x‖ ^ a := by
    intro φ a hφ
    obtain ⟨c₀, hc⟩ := hφ.bound
    rw [← comap_norm_atTop, Filter.eventually_comap, Filter.eventually_atTop] at hc
    obtain ⟨R₁, hR₁⟩ := hc
    refine ⟨R₁, max c₀ 0, le_max_right _ _, fun x hx => ?_⟩
    have h1 := hR₁ _ hx.le x rfl
    rw [Real.norm_eq_abs, Real.norm_eq_abs,
      abs_of_nonneg (Real.rpow_nonneg (norm_nonneg _) _)] at h1
    exact h1.trans (mul_le_mul_of_nonneg_right (le_max_left _ _)
      (Real.rpow_nonneg (norm_nonneg _) _))
  
  have hGb : ∀ i j : Fin 3, ∃ R₁ C₁ : ℝ, 0 ≤ C₁ ∧ ∀ x : E3, R₁ < ‖x‖ →
      |G x i j - (if i = j then (1 : ℝ) else 0)| ≤ C₁ * ‖x‖ ^ (-q) := by
    intro i j
    obtain ⟨R₁, C₁, hC₁, h₁⟩ := bigO _ _ (hdecay i j 0 (by norm_num))
    refine ⟨R₁, C₁, hC₁, fun x hx => ?_⟩
    have h2 := h₁ x hx
    simpa only [abs_norm, norm_iteratedFDeriv_zero, Real.norm_eq_abs, Nat.cast_zero,
      sub_zero, abs_abs] using h2
  choose RG CG hCG hRG using hGb
  obtain ⟨RGs, hRGs⟩ : ∃ t : ℝ, t = ∑ i : Fin 3, ∑ j : Fin 3, |RG i j| := ⟨_, rfl⟩
  obtain ⟨CGs, hCGs⟩ : ∃ t : ℝ, t = ∑ i : Fin 3, ∑ j : Fin 3, CG i j := ⟨_, rfl⟩
  have hCGs0 : 0 ≤ CGs := by
    rw [hCGs]; exact Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun j _ => hCG i j
  have hRGle : ∀ i j, RG i j ≤ RGs := by
    intro i j
    rw [hRGs]
    calc RG i j ≤ |RG i j| := le_abs_self _
      _ ≤ ∑ j' : Fin 3, |RG i j'| :=
        Finset.single_le_sum (f := fun j' => |RG i j'|) (fun _ _ => abs_nonneg _)
          (Finset.mem_univ j)
      _ ≤ ∑ i' : Fin 3, ∑ j' : Fin 3, |RG i' j'| :=
        Finset.single_le_sum (f := fun i' => ∑ j' : Fin 3, |RG i' j'|)
          (fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (Finset.mem_univ i)
  have hCGle : ∀ i j, CG i j ≤ CGs := by
    intro i j
    rw [hCGs]
    calc CG i j ≤ ∑ j' : Fin 3, CG i j' :=
        Finset.single_le_sum (f := fun j' => CG i j') (fun j' _ => hCG i j')
          (Finset.mem_univ j)
      _ ≤ ∑ i' : Fin 3, ∑ j' : Fin 3, CG i' j' :=
        Finset.single_le_sum (f := fun i' => ∑ j' : Fin 3, CG i' j')
          (fun i' _ => Finset.sum_nonneg fun j' _ => hCG i' j') (Finset.mem_univ i)
  have hGs : ∀ x : E3, RGs < ‖x‖ → ∀ i j : Fin 3,
      |G x i j - (if i = j then (1 : ℝ) else 0)| ≤ CGs * ‖x‖ ^ (-q) := by
    intro x hx i j
    exact (hRG i j x (lt_of_le_of_lt (hRGle i j) hx)).trans
      (mul_le_mul_of_nonneg_right (hCGle i j) (Real.rpow_nonneg (norm_nonneg _) _))
  
  obtain ⟨Ru0, Cu0, hCu0, hu0⟩ := bigO _ _ (hudec 0 (by norm_num))
  obtain ⟨Ru1, Cu1, hCu1, hu1⟩ := bigO _ _ (hudec 1 (by norm_num))
  have hu0' : ∀ x : E3, Ru0 < ‖x‖ → |u x| ≤ Cu0 * ‖x‖ ^ (-q') := by
    intro x hx
    have h2 := hu0 x hx
    simpa only [abs_norm, norm_iteratedFDeriv_zero, Real.norm_eq_abs, Nat.cast_zero,
      sub_zero, abs_abs] using h2
  have hu1' : ∀ x : E3, Ru1 < ‖x‖ → ‖fderiv ℝ u x‖ ≤ Cu1 * ‖x‖ ^ (-q' - 1) := by
    intro x hx
    have h2 := hu1 x hx
    simpa only [abs_norm, norm_iteratedFDeriv_one, Nat.cast_one] using h2
  
  obtain ⟨Cs, hCs⟩ : ∃ t : ℝ, t = max (max (max C 0) Cu0) Cu1 := ⟨_, rfl⟩
  have hCs0 : 0 ≤ Cs := by
    rw [hCs]; exact le_trans (le_max_right C 0) (le_trans (le_max_left _ _) (le_max_left _ _))
  have hCCs : C ≤ Cs := by
    rw [hCs]; exact le_trans (le_max_left C 0) (le_trans (le_max_left _ _) (le_max_left _ _))
  have hCu0s : Cu0 ≤ Cs := by rw [hCs]; exact le_trans (le_max_right _ _) (le_max_left _ _)
  have hCu1s : Cu1 ≤ Cs := by rw [hCs]; exact le_max_right _ _
  have hev : ∀ᶠ r : ℝ in atTop, CGs * r ^ (-q) ≤ 1 / 30 := by
    have ht : Tendsto (fun r : ℝ => CGs * r ^ (-q)) atTop (𝓝 0) := by
      have := (tendsto_rpow_neg_atTop (by linarith : (0:ℝ) < q)).const_mul CGs
      rwa [mul_zero] at this
    exact Filter.Tendsto.eventually_le_const (by norm_num : (0:ℝ) < 1 / 30) ht
  obtain ⟨Re, hRe⟩ := Filter.eventually_atTop.1 hev
  obtain ⟨Rs, hRs⟩ : ∃ t : ℝ, t = max (max (max R RGs) (max Ru0 Ru1)) (max Re 1) := ⟨_, rfl⟩
  have hRsR : R ≤ Rs := by
    rw [hRs]; exact le_trans (le_max_left _ _) (le_trans (le_max_left _ _) (le_max_left _ _))
  have hRsG : RGs ≤ Rs := by
    rw [hRs]; exact le_trans (le_max_right _ _) (le_trans (le_max_left _ _) (le_max_left _ _))
  have hRs0 : Ru0 ≤ Rs := by
    rw [hRs]; exact le_trans (le_max_left _ _) (le_trans (le_max_right _ _) (le_max_left _ _))
  have hRs1 : Ru1 ≤ Rs := by
    rw [hRs]; exact le_trans (le_max_right _ _) (le_trans (le_max_right _ _) (le_max_left _ _))
  have hRse : Re ≤ Rs := by
    rw [hRs]; exact le_trans (le_max_left _ _) (le_max_right _ _)
  have hRs1' : 1 ≤ Rs := by
    rw [hRs]; exact le_trans (le_max_right _ _) (le_max_right _ _)
  
  have hmat : ∀ (M : Matrix (Fin 3) (Fin 3) ℝ) (ε : ℝ), 0 ≤ ε → ε ≤ 1 / 30 →
      (∀ i j : Fin 3, |M i j - (if i = j then (1 : ℝ) else 0)| ≤ ε) →
      0 < M.det ∧ ∀ a e : Fin 3,
        |Real.sqrt M.det * M⁻¹ a e - (if a = e then (1 : ℝ) else 0)| ≤ 20 * ε := by
    intro M ε hε0 hε1 hM
    have hε2 : ε * ε ≤ ε / 30 := by
      have := mul_le_mul_of_nonneg_left hε1 hε0
      linarith
    have hε3 : ε * ε * ε ≤ ε / 30 := by
      have h1 := mul_le_mul_of_nonneg_right hε2 hε0
      have h2 := mul_le_mul_of_nonneg_left hε1 (by linarith : (0:ℝ) ≤ ε / 30)
      linarith
    have P2 : ∀ x y : ℝ, |x| ≤ ε → |y| ≤ ε → -(ε * ε) ≤ x * y ∧ x * y ≤ ε * ε := by
      intro x y hx hy
      exact abs_le.mp (by rw [abs_mul]; exact mul_le_mul hx hy (abs_nonneg _) hε0)
    have P3 : ∀ x y z : ℝ, |x| ≤ ε → |y| ≤ ε → |z| ≤ ε →
        -(ε * ε * ε) ≤ x * y * z ∧ x * y * z ≤ ε * ε * ε := by
      intro x y z hx hy hz
      refine abs_le.mp ?_
      rw [abs_mul, abs_mul]
      exact mul_le_mul (mul_le_mul hx hy (abs_nonneg _) hε0) hz (abs_nonneg _)
        (mul_nonneg hε0 hε0)
    have h00 : |M 0 0 - 1| ≤ ε := by simpa using hM 0 0
    have h11 : |M 1 1 - 1| ≤ ε := by simpa using hM 1 1
    have h22 : |M 2 2 - 1| ≤ ε := by simpa using hM 2 2
    have h01 : |M 0 1| ≤ ε := by simpa using hM 0 1
    have h02 : |M 0 2| ≤ ε := by simpa using hM 0 2
    have h10 : |M 1 0| ≤ ε := by simpa using hM 1 0
    have h12 : |M 1 2| ≤ ε := by simpa using hM 1 2
    have h20 : |M 2 0| ≤ ε := by simpa using hM 2 0
    have h21 : |M 2 1| ≤ ε := by simpa using hM 2 1
    obtain ⟨l1, l2⟩ := abs_le.mp h00
    obtain ⟨l3, l4⟩ := abs_le.mp h11
    obtain ⟨l5, l6⟩ := abs_le.mp h22
    obtain ⟨l7, l8⟩ := abs_le.mp h01
    obtain ⟨l9, l10⟩ := abs_le.mp h02
    obtain ⟨l11, l12⟩ := abs_le.mp h10
    obtain ⟨l13, l14⟩ := abs_le.mp h12
    obtain ⟨l15, l16⟩ := abs_le.mp h20
    obtain ⟨l17, l18⟩ := abs_le.mp h21
    obtain ⟨p1, p1'⟩ := P2 _ _ h00 h11
    obtain ⟨p2, p2'⟩ := P2 _ _ h00 h12
    obtain ⟨p3, p3'⟩ := P2 _ _ h01 h10
    obtain ⟨p4, p4'⟩ := P2 _ _ h01 h12
    obtain ⟨p5, p5'⟩ := P2 _ _ h02 h10
    obtain ⟨p6, p6'⟩ := P2 _ _ h02 h11
    obtain ⟨p7, p7'⟩ := P2 _ _ h00 h21
    obtain ⟨p8, p8'⟩ := P2 _ _ h00 h22
    obtain ⟨p9, p9'⟩ := P2 _ _ h01 h20
    obtain ⟨p10, p10'⟩ := P2 _ _ h01 h22
    obtain ⟨p11, p11'⟩ := P2 _ _ h02 h20
    obtain ⟨p12, p12'⟩ := P2 _ _ h02 h21
    obtain ⟨p13, p13'⟩ := P2 _ _ h10 h21
    obtain ⟨p14, p14'⟩ := P2 _ _ h10 h22
    obtain ⟨p15, p15'⟩ := P2 _ _ h11 h20
    obtain ⟨p16, p16'⟩ := P2 _ _ h11 h22
    obtain ⟨p17, p17'⟩ := P2 _ _ h12 h20
    obtain ⟨p18, p18'⟩ := P2 _ _ h12 h21
    obtain ⟨c1, c1'⟩ := P3 _ _ _ h00 h11 h22
    obtain ⟨c2, c2'⟩ := P3 _ _ _ h00 h12 h21
    obtain ⟨c3, c3'⟩ := P3 _ _ _ h01 h10 h22
    obtain ⟨c4, c4'⟩ := P3 _ _ _ h01 h12 h20
    obtain ⟨c5, c5'⟩ := P3 _ _ _ h02 h10 h21
    obtain ⟨c6, c6'⟩ := P3 _ _ _ h02 h11 h20
    have hdet : |M.det - 1| ≤ 4 * ε := by
      rw [Matrix.det_fin_three, abs_le]
      constructor <;> linarith
    have hadj : ∀ a e : Fin 3,
        |M.adjugate a e - (if a = e then (1 : ℝ) else 0)| ≤ 3 * ε := by
      intro a e
      fin_cases a <;> fin_cases e <;> simp [Matrix.adjugate_fin_three] <;> rw [abs_le] <;>
        constructor <;> linarith
    have hdetpos : 0 < M.det := by have := (abs_le.mp hdet).1; linarith
    obtain ⟨s, hs⟩ : ∃ s : ℝ, s = Real.sqrt M.det := ⟨_, rfl⟩
    rw [← hs]
    have hs0 : 0 < s := by rw [hs]; exact Real.sqrt_pos.2 hdetpos
    have hss : s * s = M.det := by rw [hs]; exact Real.mul_self_sqrt hdetpos.le
    have hs1 : |s - 1| ≤ 4 * ε := by
      have h1 : |s - 1| * (s + 1) = |M.det - 1| := by
        rw [← hss, show s * s - 1 = (s - 1) * (s + 1) by ring, abs_mul,
          abs_of_pos (by linarith : 0 < s + 1)]
      have h2 : |s - 1| ≤ |s - 1| * (s + 1) :=
        le_mul_of_one_le_right (abs_nonneg _) (by linarith)
      linarith
    have hshalf : 1 / 2 ≤ s := by have := (abs_le.mp hs1).1; linarith
    have h20s := mul_le_mul_of_nonneg_left hshalf (by linarith : (0:ℝ) ≤ 20 * ε)
    refine ⟨hdetpos, fun a e => ?_⟩
    have hsne : s ≠ 0 := hs0.ne'
    have hinv : s * M⁻¹ a e = M.adjugate a e / s := by
      rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul, ← hss]
      field_simp
    rw [hinv]
    have hA := hadj a e
    split_ifs at hA ⊢ with hae
    · rw [div_sub_one hsne, abs_div, abs_of_pos hs0, div_le_iff₀ hs0]
      have h3 : |M.adjugate a e - s| ≤ |M.adjugate a e - 1| + |1 - s| := abs_sub_le _ _ _
      rw [abs_sub_comm 1 s] at h3
      linarith
    · rw [sub_zero, abs_div, abs_of_pos hs0, div_le_iff₀ hs0]
      rw [sub_zero] at hA
      linarith
  
  have hpd : ∀ (h : E3 → ℝ) (i : Fin 3) (y : E3), |partialDeriv i h y| ≤ ‖fderiv ℝ h y‖ := by
    intro h i y
    have h1 := (fderiv ℝ h y).le_opNorm (e i)
    have h2 : ‖e i‖ = 1 := by simp [e]
    rw [h2, mul_one] at h1
    simpa [partialDeriv, Real.norm_eq_abs] using h1
  have hn : ∀ (y : E3) (a : Fin 3), 0 < ‖y‖ → |y a / ‖y‖| ≤ 1 := by
    intro y a hy
    rw [abs_div, abs_norm, div_le_one hy]
    have := PiLp.norm_apply_le y a
    simpa using this
  have h9 : ∀ (F : Fin 3 → Fin 3 → ℝ) (Bd : ℝ), (∀ a e, |F a e| ≤ Bd) →
      |∑ a, ∑ e, F a e| ≤ 9 * Bd := by
    intro F Bd h
    calc |∑ a, ∑ e, F a e| ≤ ∑ a, |∑ e, F a e| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ a, ∑ e, |F a e| := Finset.sum_le_sum fun a _ => Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ a : Fin 3, ∑ e : Fin 3, Bd :=
        Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun e _ => h a e
      _ = 9 * Bd := by
        simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
        ring
  have h3 : ∀ (F : Fin 3 → ℝ) (Bd : ℝ), (∀ a, |F a| ≤ Bd) → |∑ a, F a| ≤ 3 * Bd := by
    intro F Bd h
    calc |∑ a, F a| ≤ ∑ a, |F a| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ a : Fin 3, Bd := Finset.sum_le_sum fun a _ => h a
      _ = 3 * Bd := by
        simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
        ring
  have hm3 : ∀ x1 x2 x3 B1 B2 B3 : ℝ, |x1| ≤ B1 → |x2| ≤ B2 → |x3| ≤ B3 →
      |x1 * x2 * x3| ≤ B1 * B2 * B3 := by
    intro x1 x2 x3 B1 B2 B3 h1 h2 h3
    have hB1 : 0 ≤ B1 := (abs_nonneg _).trans h1
    have hB2 : 0 ≤ B2 := (abs_nonneg _).trans h2
    rw [abs_mul, abs_mul]
    exact mul_le_mul (mul_le_mul h1 h2 (abs_nonneg _) hB1) h3 (abs_nonneg _) (mul_nonneg hB1 hB2)
  have hm4 : ∀ x1 x2 x3 x4 B1 B2 B3 B4 : ℝ, |x1| ≤ B1 → |x2| ≤ B2 → |x3| ≤ B3 → |x4| ≤ B4 →
      |x1 * x2 * x3 * x4| ≤ B1 * B2 * B3 * B4 := by
    intro x1 x2 x3 x4 B1 B2 B3 B4 h1 h2 h3 h4
    have hB3 : 0 ≤ B3 := (abs_nonneg _).trans h3
    rw [abs_mul]
    exact mul_le_mul (hm3 _ _ _ _ _ _ h1 h2 h3) h4 (abs_nonneg _)
      (mul_nonneg (mul_nonneg ((abs_nonneg _).trans h1) ((abs_nonneg _).trans h2)) hB3)
  
  obtain ⟨F1, hF1⟩ : ∃ F1 : E3 → ℝ, F1 = fun y => ∑ a : Fin 3, (Real.sqrt (G y).det *
      ∑ e : Fin 3, (G y)⁻¹ a e * (f y * partialDeriv e u y - u y * partialDeriv e f y)) *
        (y a / ‖y‖) := ⟨_, rfl⟩
  obtain ⟨F2, hF2⟩ : ∃ F2 : E3 → ℝ, F2 = fun y => ∑ a : Fin 3, partialDeriv a u y * (y a / ‖y‖) :=
    ⟨_, rfl⟩
  obtain ⟨σ, hσ⟩ : ∃ σ : ℝ, σ = min q q₁ := ⟨_, rfl⟩
  have hσq : σ ≤ q := by rw [hσ]; exact min_le_left _ _
  have hσq₁ : σ ≤ q₁ := by rw [hσ]; exact min_le_right _ _
  have hσh : 1 / 2 < σ := by rw [hσ]; exact lt_min hq hq₁
  obtain ⟨K0, hK0⟩ : ∃ t : ℝ, t = 9 * (20 * CGs) * (|b| + Cs) * Cs + 21 * Cs ^ 2 := ⟨_, rfl⟩
  have hK00 : 0 ≤ K0 := by rw [hK0]; positivity
  
  have hpt : ∀ y : E3, Rs < ‖y‖ → 0 < (G y).det ∧
      |F1 y - b * F2 y| ≤ K0 * ‖y‖ ^ (-σ - q' - 1) := by
    intro y hy
    have hr1 : 1 ≤ ‖y‖ := le_trans hRs1' hy.le
    have hr0 : 0 < ‖y‖ := by linarith
    have hε0 : 0 ≤ CGs * ‖y‖ ^ (-q) := mul_nonneg hCGs0 (Real.rpow_nonneg (norm_nonneg _) _)
    have hε1 : CGs * ‖y‖ ^ (-q) ≤ 1 / 30 := hRe _ (le_trans hRse hy.le)
    obtain ⟨hdetpos, hP⟩ := hmat (G y) _ hε0 hε1 (hGs y (lt_of_le_of_lt hRsG hy))
    refine ⟨hdetpos, ?_⟩
    have hid : F1 y - b * F2 y =
        (∑ a : Fin 3, ∑ e : Fin 3, (Real.sqrt (G y).det * (G y)⁻¹ a e -
            (if a = e then (1 : ℝ) else 0)) * f y * partialDeriv e u y * (y a / ‖y‖)) +
          (f y - b) * (∑ a : Fin 3, partialDeriv a u y * (y a / ‖y‖)) -
          u y * (∑ a : Fin 3, ∑ e : Fin 3,
            Real.sqrt (G y).det * (G y)⁻¹ a e * partialDeriv e f y * (y a / ‖y‖)) := by
      simp only [hF1, hF2, Fin.sum_univ_three, Fin.isValue, ↓reduceIte, Fin.reduceEq]
      ring
    rw [hid]
    have hfy := hfb y (lt_of_le_of_lt hRsR hy)
    have hf0 : |f y - b| ≤ Cs * ‖y‖ ^ (-q₁) :=
      hfy.1.trans (mul_le_mul_of_nonneg_right hCCs (Real.rpow_nonneg (norm_nonneg _) _))
    have hf1 : ‖fderiv ℝ f y‖ ≤ Cs * ‖y‖ ^ (-q₁ - 1) :=
      hfy.2.trans (mul_le_mul_of_nonneg_right hCCs (Real.rpow_nonneg (norm_nonneg _) _))
    have hu0y : |u y| ≤ Cs * ‖y‖ ^ (-q') :=
      (hu0' y (lt_of_le_of_lt hRs0 hy)).trans
        (mul_le_mul_of_nonneg_right hCu0s (Real.rpow_nonneg (norm_nonneg _) _))
    have hu1y : ‖fderiv ℝ u y‖ ≤ Cs * ‖y‖ ^ (-q' - 1) :=
      (hu1' y (lt_of_le_of_lt hRs1 hy)).trans
        (mul_le_mul_of_nonneg_right hCu1s (Real.rpow_nonneg (norm_nonneg _) _))
    have hZ1 : ‖y‖ ^ (-q₁) ≤ 1 := Real.rpow_le_one_of_one_le_of_nonpos hr1 (by linarith)
    have hfabs : |f y| ≤ |b| + Cs := by
      have h1 : |f y| ≤ |f y - b| + |b| := by
        have := abs_add_le (f y - b) b
        rwa [sub_add_cancel] at this
      have h2 : Cs * ‖y‖ ^ (-q₁) ≤ Cs := mul_le_of_le_one_right hCs0 hZ1
      linarith
    have hPa : ∀ a e : Fin 3, |Real.sqrt (G y).det * (G y)⁻¹ a e| ≤ 2 := by
      intro a e
      have h1 := hP a e
      have h2 : |(if a = e then (1 : ℝ) else 0)| ≤ 1 := by split_ifs <;> simp
      have h3 := abs_add_le (Real.sqrt (G y).det * (G y)⁻¹ a e - (if a = e then (1 : ℝ) else 0))
        (if a = e then (1 : ℝ) else 0)
      rw [sub_add_cancel] at h3
      linarith
    have hpu : ∀ e : Fin 3, |partialDeriv e u y| ≤ Cs * ‖y‖ ^ (-q' - 1) :=
      fun e => (hpd u e y).trans hu1y
    have hpf : ∀ e : Fin 3, |partialDeriv e f y| ≤ Cs * ‖y‖ ^ (-q₁ - 1) :=
      fun e => (hpd f e y).trans hf1
    have hT1 := h9 (fun a e => (Real.sqrt (G y).det * (G y)⁻¹ a e -
        (if a = e then (1 : ℝ) else 0)) * f y * partialDeriv e u y * (y a / ‖y‖))
      (20 * (CGs * ‖y‖ ^ (-q)) * (|b| + Cs) * (Cs * ‖y‖ ^ (-q' - 1)) * 1)
      (fun a e => hm4 _ _ _ _ _ _ _ _ (hP a e) hfabs (hpu e) (hn y a hr0))
    have hS2 := h3 (fun a => partialDeriv a u y * (y a / ‖y‖))
      (Cs * ‖y‖ ^ (-q' - 1) * 1)
      (fun a => by
        rw [abs_mul]
        exact mul_le_mul (hpu a) (hn y a hr0) (abs_nonneg _)
          (mul_nonneg hCs0 (Real.rpow_nonneg (norm_nonneg _) _)))
    have hS3 := h9 (fun a e => Real.sqrt (G y).det * (G y)⁻¹ a e * partialDeriv e f y *
        (y a / ‖y‖))
      (2 * (Cs * ‖y‖ ^ (-q₁ - 1)) * 1)
      (fun a e => hm3 _ _ _ _ _ _ (hPa a e) (hpf e) (hn y a hr0))
    have hT2 : |(f y - b) * (∑ a : Fin 3, partialDeriv a u y * (y a / ‖y‖))| ≤
        Cs * ‖y‖ ^ (-q₁) * (3 * (Cs * ‖y‖ ^ (-q' - 1) * 1)) := by
      rw [abs_mul]
      exact mul_le_mul hf0 hS2 (abs_nonneg _)
        (mul_nonneg hCs0 (Real.rpow_nonneg (norm_nonneg _) _))
    have hT3 : |u y * (∑ a : Fin 3, ∑ e : Fin 3,
            Real.sqrt (G y).det * (G y)⁻¹ a e * partialDeriv e f y * (y a / ‖y‖))| ≤
        Cs * ‖y‖ ^ (-q') * (9 * (2 * (Cs * ‖y‖ ^ (-q₁ - 1)) * 1)) := by
      rw [abs_mul]
      exact mul_le_mul hu0y hS3 (abs_nonneg _)
        (mul_nonneg hCs0 (Real.rpow_nonneg (norm_nonneg _) _))
    have hXY : ‖y‖ ^ (-q) * ‖y‖ ^ (-q' - 1) ≤ ‖y‖ ^ (-σ - q' - 1) := by
      rw [← Real.rpow_add hr0]
      exact Real.rpow_le_rpow_of_exponent_le hr1 (by linarith)
    have hZY : ‖y‖ ^ (-q₁) * ‖y‖ ^ (-q' - 1) ≤ ‖y‖ ^ (-σ - q' - 1) := by
      rw [← Real.rpow_add hr0]
      exact Real.rpow_le_rpow_of_exponent_le hr1 (by linarith)
    have hWV : ‖y‖ ^ (-q') * ‖y‖ ^ (-q₁ - 1) ≤ ‖y‖ ^ (-σ - q' - 1) := by
      rw [← Real.rpow_add hr0]
      exact Real.rpow_le_rpow_of_exponent_le hr1 (by linarith)
    have hk1 : 0 ≤ 9 * (20 * CGs) * (|b| + Cs) * Cs := by positivity
    have e1 := mul_le_mul_of_nonneg_left hXY hk1
    have e2 := mul_le_mul_of_nonneg_left hZY (by positivity : (0:ℝ) ≤ 3 * Cs ^ 2)
    have e3 := mul_le_mul_of_nonneg_left hWV (by positivity : (0:ℝ) ≤ 18 * Cs ^ 2)
    have htri := abs_add_le (∑ a : Fin 3, ∑ e : Fin 3, (Real.sqrt (G y).det * (G y)⁻¹ a e -
            (if a = e then (1 : ℝ) else 0)) * f y * partialDeriv e u y * (y a / ‖y‖))
          ((f y - b) * (∑ a : Fin 3, partialDeriv a u y * (y a / ‖y‖)))
    have htri2 := abs_sub ((∑ a : Fin 3, ∑ e : Fin 3, (Real.sqrt (G y).det * (G y)⁻¹ a e -
            (if a = e then (1 : ℝ) else 0)) * f y * partialDeriv e u y * (y a / ‖y‖)) +
          (f y - b) * (∑ a : Fin 3, partialDeriv a u y * (y a / ‖y‖)))
          (u y * (∑ a : Fin 3, ∑ e : Fin 3,
            Real.sqrt (G y).det * (G y)⁻¹ a e * partialDeriv e f y * (y a / ‖y‖)))
    rw [hK0]
    linarith
  
  have hwc : Continuous (deriv Real.smoothTransition) :=
    (Real.smoothTransition.contDiff (n := 1)).continuous_deriv le_rfl
  have hw0 : ∀ t : ℝ, t < 0 → deriv Real.smoothTransition t = 0 := by
    intro t ht
    have h : Real.smoothTransition =ᶠ[𝓝 t] fun _ => (0 : ℝ) := by
      filter_upwards [Iio_mem_nhds ht] with s hs
      exact Real.smoothTransition.zero_of_nonpos (le_of_lt hs)
    rw [h.deriv_eq, deriv_const]
  have hw1 : ∀ t : ℝ, 1 < t → deriv Real.smoothTransition t = 0 := by
    intro t ht
    have h : Real.smoothTransition =ᶠ[𝓝 t] fun _ => (1 : ℝ) := by
      filter_upwards [Ioi_mem_nhds ht] with s hs
      exact Real.smoothTransition.one_of_one_le (le_of_lt hs)
    rw [h.deriv_eq, deriv_const]
  obtain ⟨B, hB⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hwc.continuousOn (s := Set.Icc (0:ℝ) 1))
  have hwB : ∀ t : ℝ, |deriv Real.smoothTransition t| ≤ max B 0 := by
    intro t
    by_cases ht0 : t < 0
    · rw [hw0 t ht0, abs_zero]; exact le_max_right _ _
    by_cases ht1 : 1 < t
    · rw [hw1 t ht1, abs_zero]; exact le_max_right _ _
    · have := hB t ⟨not_lt.1 ht0, not_lt.1 ht1⟩
      rw [Real.norm_eq_abs] at this
      exact this.trans (le_max_left _ _)
  have hB0 : 0 ≤ max B 0 := le_max_right _ _
  
  have hUo : IsOpen {y : E3 | Rs < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hU1 : IsOpen {x : E3 | 1 < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hsubU : {y : E3 | Rs < ‖y‖} ⊆ {x : E3 | 1 < ‖x‖} := fun y hy =>
    lt_of_le_of_lt hRs1' hy
  have hGc : ContinuousOn G {y : E3 | Rs < ‖y‖} :=
    continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => ((hG i j).continuousOn).mono hsubU
  have hdetc : ContinuousOn (fun y => (G y).det) {y : E3 | Rs < ‖y‖} :=
    (continuous_id.matrix_det).comp_continuousOn hGc
  have hadjc : ∀ a e : Fin 3, ContinuousOn (fun y => (G y).adjugate a e) {y : E3 | Rs < ‖y‖} :=
    fun a e => ((continuous_id.matrix_adjugate).matrix_elem a e).comp_continuousOn hGc
  have hinvc : ∀ a e : Fin 3, ContinuousOn (fun y => (G y)⁻¹ a e) {y : E3 | Rs < ‖y‖} := by
    intro a e
    refine ((hdetc.inv₀ fun y hy => (hpt y hy).1.ne').mul (hadjc a e)).congr fun y _ => ?_
    simp only [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
  have hsqc : ContinuousOn (fun y => Real.sqrt (G y).det) {y : E3 | Rs < ‖y‖} :=
    Real.continuous_sqrt.comp_continuousOn hdetc
  have hfc : ContinuousOn f {y : E3 | Rs < ‖y‖} := hf.continuousOn.mono hsubU
  have huc : ContinuousOn u {y : E3 | Rs < ‖y‖} := hu.continuousOn.mono hsubU
  have hpdc : ∀ (h : E3 → ℝ), ContDiffOn ℝ ∞ h {x : E3 | 1 < ‖x‖} → ∀ i : Fin 3,
      ContinuousOn (partialDeriv i h) {y : E3 | Rs < ‖y‖} :=
    fun h hh i => ((hh.continuousOn_fderiv_of_isOpen hU1 (by simp)).clm_apply
      continuousOn_const).mono hsubU
  have hcoord : ∀ a : Fin 3, ContinuousOn (fun y : E3 => y a / ‖y‖) {y : E3 | Rs < ‖y‖} := by
    intro a
    apply ContinuousOn.div (EuclideanSpace.proj a).continuous.continuousOn
      continuous_norm.continuousOn
    intro y hy
    exact (lt_of_le_of_lt (by linarith : (0:ℝ) ≤ Rs) hy).ne'
  have hF1c : ContinuousOn F1 {y : E3 | Rs < ‖y‖} := by
    rw [hF1]
    exact continuousOn_finset_sum _ fun a _ => (hsqc.mul (continuousOn_finset_sum _ fun e _ =>
      (hinvc a e).mul ((hfc.mul (hpdc u hu e)).sub (huc.mul (hpdc f hf e))))).mul (hcoord a)
  have hF2c : ContinuousOn F2 {y : E3 | Rs < ‖y‖} := by
    rw [hF2]
    exact continuousOn_finset_sum _ fun a _ => (hpdc u hu a).mul (hcoord a)
  have hint : ∀ (Φ : E3 → ℝ) (c : ℝ), Rs < c → ContinuousOn Φ {y : E3 | Rs < ‖y‖} →
      Integrable (fun y : E3 => Φ y * deriv Real.smoothTransition (‖y‖ - c)) := by
    intro Φ c hc hΦ
    have hz : ∀ y : E3, (‖y‖ < c ∨ c + 1 < ‖y‖) →
        Φ y * deriv Real.smoothTransition (‖y‖ - c) = 0 := by
      intro y hy
      rcases hy with hy | hy
      · rw [hw0 _ (by linarith), mul_zero]
      · rw [hw1 _ (by linarith), mul_zero]
    have hcs : HasCompactSupport (fun y : E3 => Φ y * deriv Real.smoothTransition (‖y‖ - c)) := by
      apply HasCompactSupport.intro (isCompact_closedBall (0:E3) (c + 1))
      intro x hx
      rw [mem_closedBall_zero_iff, not_le] at hx
      exact hz x (Or.inr hx)
    have hcont : Continuous (fun y : E3 => Φ y * deriv Real.smoothTransition (‖y‖ - c)) := by
      rw [continuous_iff_continuousAt]
      intro x
      by_cases hx : Rs < ‖x‖
      · exact (hΦ.mul (hwc.comp (continuous_norm.sub continuous_const)).continuousOn).continuousAt
          (hUo.mem_nhds hx)
      · have hxc : ‖x‖ < c := by linarith [not_lt.mp hx]
        have hev : (fun _ => (0:ℝ)) =ᶠ[𝓝 x]
            (fun y : E3 => Φ y * deriv Real.smoothTransition (‖y‖ - c)) := by
          filter_upwards [(isOpen_lt continuous_norm continuous_const).mem_nhds hxc] with y hy
          exact (hz y (Or.inl hy)).symm
        exact continuousAt_const.congr hev
    exact hcont.integrable_of_hasCompactSupport hcs
  
  obtain ⟨V1, hV1⟩ : ∃ t : ℝ, t = (volume : Measure E3).real (Metric.ball (0 : E3) 1) :=
    ⟨_, rfl⟩
  have hV10 : 0 ≤ V1 := by rw [hV1]; exact measureReal_nonneg
  have hshell : ∀ (h : E3 → ℝ) (c K : ℝ), 1 ≤ c → 0 ≤ K → (∀ y, |h y| ≤ K) →
      (∀ y : E3, (‖y‖ < c ∨ c + 1 < ‖y‖) → h y = 0) → |∫ y, h y| ≤ 7 * K * c ^ 2 * V1 := by
    intro h c K hc hK hbd hvan
    have hSm : MeasurableSet (Metric.closedBall (0:E3) (c + 1) \ Metric.ball 0 c) :=
      measurableSet_closedBall.diff measurableSet_ball
    have hfin : (volume : Measure E3) (Metric.closedBall (0:E3) (c + 1)) ≠ ⊤ :=
      measure_closedBall_lt_top.ne
    have hSfin : (volume : Measure E3) (Metric.closedBall (0:E3) (c + 1) \ Metric.ball 0 c) ≠ ⊤ :=
      ne_top_of_le_ne_top hfin (measure_mono Set.diff_subset)
    have hgi : Integrable ((Metric.closedBall (0:E3) (c + 1) \ Metric.ball 0 c).indicator
        fun _ : E3 => K) := (integrableOn_const hSfin).integrable_indicator hSm
    have hle : ∀ y, ‖h y‖ ≤ (Metric.closedBall (0:E3) (c + 1) \ Metric.ball 0 c).indicator
        (fun _ : E3 => K) y := by
      intro y
      by_cases hy : y ∈ Metric.closedBall (0:E3) (c + 1) \ Metric.ball 0 c
      · rw [Set.indicator_of_mem hy, Real.norm_eq_abs]; exact hbd y
      · rw [Set.indicator_of_notMem hy]
        have hor : ‖y‖ < c ∨ c + 1 < ‖y‖ := by
          rcases le_or_gt ‖y‖ (c + 1) with h1 | h1
          · left
            by_contra h2
            push_neg at h2
            exact hy ⟨mem_closedBall_zero_iff.2 h1, fun hb => absurd (mem_ball_zero_iff.1 hb)
              (not_lt.2 h2)⟩
          · right; exact h1
        rw [hvan y hor, norm_zero]
    have h1 := norm_integral_le_of_norm_le hgi (ae_of_all _ hle)
    rw [integral_indicator_const _ hSm, smul_eq_mul, Real.norm_eq_abs,
      measureReal_diff (Metric.ball_subset_closedBall.trans
        (Metric.closedBall_subset_closedBall (by linarith))) measurableSet_ball hfin] at h1
    have hcb : (volume : Measure E3).real (Metric.closedBall (0:E3) (c + 1)) = (c + 1) ^ 3 * V1 := by
      rw [measureReal_def, Measure.addHaar_closedBall (volume : Measure E3) (0:E3)
        (by linarith : (0:ℝ) ≤ c + 1), finrank_euclideanSpace_fin, ENNReal.toReal_mul,
        ENNReal.toReal_ofReal (by positivity), hV1, measureReal_def]
    have hb : (volume : Measure E3).real (Metric.ball (0:E3) c) = c ^ 3 * V1 := by
      rw [measureReal_def, Measure.addHaar_ball (volume : Measure E3) (0:E3)
        (by linarith : (0:ℝ) ≤ c), finrank_euclideanSpace_fin, ENNReal.toReal_mul,
        ENNReal.toReal_ofReal (by positivity), hV1, measureReal_def]
    rw [hcb, hb] at h1
    have hpoly : (c + 1) ^ 3 - c ^ 3 ≤ 7 * c ^ 2 := by nlinarith
    have := mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hpoly hV10) hK
    nlinarith
  
  have hγ : 0 < σ + q' - 1 := by linarith
  have key : Tendsto (fun c : ℝ => (∫ y : E3, F1 y * deriv Real.smoothTransition (‖y‖ - c)) -
      b * ∫ y : E3, F2 y * deriv Real.smoothTransition (‖y‖ - c)) atTop (𝓝 0) := by
    refine squeeze_zero_norm' (a := fun c : ℝ => 7 * V1 * max B 0 * K0 * c ^ (-(σ + q' - 1)))
      ?_ ?_
    · filter_upwards [Filter.eventually_ge_atTop (Rs + 1)] with c hc
      have hcR : Rs < c := by linarith
      have hc1 : 1 ≤ c := by linarith
      have hc0 : 0 < c := by linarith
      have I1 := hint F1 c hcR hF1c
      have I2 := hint F2 c hcR hF2c
      have heq : (∫ y : E3, F1 y * deriv Real.smoothTransition (‖y‖ - c)) -
          b * ∫ y : E3, F2 y * deriv Real.smoothTransition (‖y‖ - c) =
          ∫ y : E3, (F1 y * deriv Real.smoothTransition (‖y‖ - c) -
            b * (F2 y * deriv Real.smoothTransition (‖y‖ - c))) := by
        rw [integral_sub I1 (I2.const_mul b), integral_const_mul]
      rw [Real.norm_eq_abs, heq]
      have hKn : 0 ≤ max B 0 * K0 * c ^ (-σ - q' - 1) :=
        mul_nonneg (mul_nonneg hB0 hK00) (Real.rpow_nonneg hc0.le _)
      have hbound := hshell (fun y => F1 y * deriv Real.smoothTransition (‖y‖ - c) -
          b * (F2 y * deriv Real.smoothTransition (‖y‖ - c))) c
        (max B 0 * K0 * c ^ (-σ - q' - 1)) hc1 hKn ?_ ?_
      · have hpow : c ^ (-σ - q' - 1) * c ^ 2 = c ^ (-(σ + q' - 1)) := by
          rw [show c ^ 2 = c ^ ((2:ℕ):ℝ) by rw [Real.rpow_natCast], ← Real.rpow_add hc0]
          congr 1
          push_cast
          ring
        calc _ ≤ 7 * (max B 0 * K0 * c ^ (-σ - q' - 1)) * c ^ 2 * V1 := hbound
          _ = 7 * V1 * max B 0 * K0 * (c ^ (-σ - q' - 1) * c ^ 2) := by ring
          _ = 7 * V1 * max B 0 * K0 * c ^ (-(σ + q' - 1)) := by rw [hpow]
      · intro y
        have hfac : F1 y * deriv Real.smoothTransition (‖y‖ - c) -
            b * (F2 y * deriv Real.smoothTransition (‖y‖ - c)) =
            (F1 y - b * F2 y) * deriv Real.smoothTransition (‖y‖ - c) := by ring
        show |F1 y * deriv Real.smoothTransition (‖y‖ - c) -
            b * (F2 y * deriv Real.smoothTransition (‖y‖ - c))| ≤ _
        rw [hfac, abs_mul]
        by_cases hyc : ‖y‖ < c
        · rw [hw0 _ (by linarith), abs_zero, mul_zero]; exact hKn
        · have hcy : c ≤ ‖y‖ := not_lt.1 hyc
          have hyR : Rs < ‖y‖ := by linarith
          have hD := (hpt y hyR).2
          have hρ : ‖y‖ ^ (-σ - q' - 1) ≤ c ^ (-σ - q' - 1) :=
            Real.rpow_le_rpow_of_nonpos hc0 hcy (by linarith)
          calc |F1 y - b * F2 y| * |deriv Real.smoothTransition (‖y‖ - c)|
              ≤ (K0 * c ^ (-σ - q' - 1)) * max B 0 :=
                mul_le_mul (hD.trans (mul_le_mul_of_nonneg_left hρ hK00)) (hwB _) (abs_nonneg _)
                  (mul_nonneg hK00 (Real.rpow_nonneg hc0.le _))
            _ = max B 0 * K0 * c ^ (-σ - q' - 1) := by ring
      · intro y hy
        rcases hy with hy | hy
        · simp only [hw0 _ (by linarith : ‖y‖ - c < 0), mul_zero, sub_zero]
        · simp only [hw1 _ (by linarith : 1 < ‖y‖ - c), mul_zero, sub_zero]
    · have := (tendsto_rpow_neg_atTop hγ).const_mul (7 * V1 * max B 0 * K0)
      rwa [mul_zero] at this
  subst hF1 hF2
  exact key

theorem conformal_correction_mass [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR0 : ∀ p : M, g.scalarCurvature p = 0)
    (k : Fin hAF.numEnds) (m : ℝ)
    (hm : Tendsto (fun r : ℝ => admFlux g (hAF.ends k) r) atTop (𝓝 m))
    (φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (K : Set E3) (hK : IsCompact K)
    (hKφ : K ⊆ φ.source) (h : RiemannianMetric3 M) (hh : ∀ p : M, p ∉ φ '' K → h.g p = g.g p)
    (hheq : ∀ (p : M) (ξ : E3),
      (1 / 2 : ℝ) * g.g p ξ ξ ≤ h.g p ξ ξ ∧ h.g p ξ ξ ≤ 2 * g.g p ξ ξ)
    (ψ : M → ℝ) (hψ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ) (hψharm : ∀ p : M, g.lapM ψ p = 0)
    (q₁ R₁ C₁ : ℝ) (hq₁ : 1 / 2 < q₁)
    (hψdec : ∀ (j : Fin hAF.numEnds) (x : E3), R₁ < ‖x‖ →
      |ψ ((hAF.ends j).Φ x) - (if j = k then (1 : ℝ) else 0)| ≤ C₁ * ‖x‖ ^ (-q₁) ∧
      ‖fderiv ℝ (fun y => ψ ((hAF.ends j).Φ y)) x‖ ≤ C₁ * ‖x‖ ^ (-q₁ - 1))
    (v : M → ℝ) (hv : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ v) (hvpos : ∀ p : M, 0 < 1 + v p)
    (hveq : ∀ p : M, -8 * h.lapM v p + h.scalarCurvature p * (1 + v p) = 0)
    (q' : ℝ) (hq' : 1 / 2 < q')
    (hvdec : ∀ (j : Fin hAF.numEnds) (l : ℕ), l ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ l (fun y => v ((hAF.ends j).Φ y)) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-q' - (l : ℝ))) :
    ∃ (g' : RiemannianMetric3 M) (_ : g'.IsCompleteRiemannian) (hAF' : AsymptoticallyFlat g')
      (k' : Fin hAF'.numEnds),
      (∀ p : M, 0 ≤ g'.scalarCurvature p) ∧
      Tendsto (fun r : ℝ => admFlux g' (hAF'.ends k') r) atTop
        (𝓝 (m - 1 / (2 * Real.pi) * ∫ y in K,
          (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
            ∑ i : Fin 3, ∑ j : Fin 3,
              ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
                (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
                partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y))) :=
by
  
  have hw : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun p => 1 + v p) := contMDiff_const.add hv
  have hwc : Continuous (fun p => 1 + v p) := hw.continuous
  obtain ⟨g', hg'⟩ := conformal_metric_exists h (fun p => 1 + v p) hw hvpos
  have hg'' : ∀ x, g'.g x = ((1 + v x) ^ 4) • h.g x := hg'
  have hcoeffg' : ∀ (P : E3 → M) (y : E3), g'.coeff P y = ((1 + v (P y)) ^ 4) • h.coeff P y := by
    intro P y
    ext i j
    show g'.g (P y) _ _ = (1 + v (P y)) ^ 4 * h.g (P y) _ _
    rw [hg'' (P y), ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
  
  have hSK : IsCompact (φ '' K) :=
    hK.image_of_continuousOn (φ.contMDiffOn_toFun.continuousOn.mono hKφ)
  have hfar : ∀ j : Fin hAF.numEnds, ∃ ρ : ℝ, 2 ≤ ρ ∧
      ∀ y : E3, ρ < ‖y‖ → (hAF.ends j).Φ y ∉ φ '' K := by
    intro j
    have key : ∃ ρ : ℝ, ∀ y : E3, ρ < ‖y‖ → (hAF.ends j).Φ y ∉ φ '' K := by
      refine hSK.induction_on
        (p := fun s => ∃ ρ : ℝ, ∀ y : E3, ρ < ‖y‖ → (hAF.ends j).Φ y ∉ s) ?_ ?_ ?_ ?_
      · exact ⟨0, fun y _ hy' => by simp at hy'⟩
      · rintro s t hst ⟨ρ, hρ⟩
        exact ⟨ρ, fun y hy hs => hρ y hy (hst hs)⟩
      · rintro s t ⟨ρ₁, h₁⟩ ⟨ρ₂, h₂⟩
        refine ⟨max ρ₁ ρ₂, fun y hy hst => ?_⟩
        rcases hst with hs | ht
        · exact h₁ y (lt_of_le_of_lt (le_max_left _ _) hy) hs
        · exact h₂ y (lt_of_le_of_lt (le_max_right _ _) hy) ht
      · intro x _
        obtain ⟨ρ, N, hN, hρ⟩ := end_chart_escape g hAF j x
        exact ⟨N, mem_nhdsWithin_of_mem_nhds hN, ρ, hρ⟩
    obtain ⟨ρ, hρ⟩ := key
    exact ⟨max ρ 2, le_max_right _ _, fun y hy => hρ y (lt_of_le_of_lt (le_max_left _ _) hy)⟩
  choose ρe hρe2 hρe using hfar
  have hhfar : ∀ (j : Fin hAF.numEnds) (y : E3), ρe j < ‖y‖ →
      h.coeff (hAF.ends j).Φ y = g.coeff (hAF.ends j).Φ y := by
    intro j y hy
    have e1 : h.g ((hAF.ends j).Φ y) = g.g ((hAF.ends j).Φ y) := hh _ (hρe j y hy)
    ext a c
    show h.g ((hAF.ends j).Φ y) _ _ = g.g ((hAF.ends j).Φ y) _ _
    rw [e1]
  have hG'far : ∀ (j : Fin hAF.numEnds) (x : E3), ρe j < ‖x‖ →
      g'.coeff (hAF.ends j).Φ x = ((1 + v ((hAF.ends j).Φ x)) ^ 4) • g.coeff (hAF.ends j).Φ x := by
    intro j x hx
    rw [hcoeffg', hhfar j x hx]
  
  have hloc := scalarCurvature_of_local_deformation g h φ K hK hKφ
    (fun y => h.coeff φ y - g.coeff φ y) 1 hh (fun y _ => by simp)
  have hRh : ∀ p : M, p ∉ φ '' K → h.scalarCurvature p = 0 :=
    fun p hp => (hloc.2.1 p hp).trans (hR0 p)
  have hvloc : ∀ p : M, p ∉ φ '' K → h.lapM v p = 0 := by
    intro p hp
    have e1 := hveq p
    rw [hRh p hp, zero_mul, add_zero] at e1
    linarith
  have hRg' : ∀ p : M, g'.scalarCurvature p = 0 := conformal_scalar_flat h g' v hv hvpos hg'' hveq
  
  have hsmall : ∀ j : Fin hAF.numEnds, ∃ R : ℝ, ∀ x : E3, R < ‖x‖ →
      |v ((hAF.ends j).Φ x)| ≤ 1 / 2 := by
    intro j
    have h0 := hvdec j 0 (by norm_num)
    have ht : Tendsto (fun x : E3 => ‖x‖ ^ (-q' - ((0 : ℕ) : ℝ))) (Bornology.cobounded E3) (𝓝 0) := by
      have e : (-q' - ((0 : ℕ) : ℝ)) = -q' := by simp
      rw [e]
      exact (tendsto_rpow_neg_atTop (by linarith : (0 : ℝ) < q')).comp tendsto_norm_cobounded_atTop
    have hev := (h0.trans_tendsto ht).eventually (Iio_mem_nhds (by norm_num : (0 : ℝ) < 1 / 2))
    rw [← comap_norm_atTop, Filter.eventually_comap, Filter.eventually_atTop] at hev
    obtain ⟨R, hR⟩ := hev
    refine ⟨R, fun x hx => ?_⟩
    have h1 := hR _ hx.le x rfl
    simp only [Set.mem_Iio, norm_iteratedFDeriv_zero, Real.norm_eq_abs] at h1
    exact h1.le
  choose Rs hRs using hsmall
  obtain ⟨Kc, hKcdef⟩ : ∃ Kc : Set M, Kc = (⋃ j, (hAF.ends j).Φ '' {x : E3 | 2 < ‖x‖})ᶜ ∪
      ⋃ j, (hAF.ends j).Φ '' ({x : E3 | 2 ≤ ‖x‖} ∩ {x : E3 | ‖x‖ ≤ max 2 (Rs j)}) := ⟨_, rfl⟩
  have hKc : IsCompact Kc := by
    rw [hKcdef]
    refine hAF.isCompact_core.union (isCompact_iUnion fun j => ?_)
    have hcl : IsClosed ({x : E3 | 2 ≤ ‖x‖} ∩ {x : E3 | ‖x‖ ≤ max 2 (Rs j)}) :=
      (isClosed_le continuous_const continuous_norm).inter
        (isClosed_le continuous_norm continuous_const)
    have hA : IsCompact ({x : E3 | 2 ≤ ‖x‖} ∩ {x : E3 | ‖x‖ ≤ max 2 (Rs j)}) := by
      refine (isCompact_closedBall (0 : E3) (max 2 (Rs j))).of_isClosed_subset hcl ?_
      intro x hx
      exact mem_closedBall_zero_iff.2 hx.2
    refine hA.image_of_continuousOn ((hAF.ends j).Φ.contMDiffOn_toFun.continuousOn.mono ?_)
    intro x hx
    rw [(hAF.ends j).source_eq]
    have hx1 : (2 : ℝ) ≤ ‖x‖ := hx.1
    show (1 : ℝ) < ‖x‖
    linarith
  have hout : ∀ p : M, p ∉ Kc → (1 / 2 : ℝ) ≤ 1 + v p ∧ 1 + v p ≤ 3 / 2 := by
    intro p hp
    rw [hKcdef] at hp
    have h1 : p ∈ ⋃ j, (hAF.ends j).Φ '' {x : E3 | 2 < ‖x‖} := by
      by_contra hc
      exact hp (Or.inl hc)
    obtain ⟨j, x, hx, rfl⟩ : ∃ j x, x ∈ {x : E3 | 2 < ‖x‖} ∧ (hAF.ends j).Φ x = p := by
      obtain ⟨j, hj⟩ := Set.mem_iUnion.1 h1
      obtain ⟨x, hx, hxp⟩ := hj
      exact ⟨j, x, hx, hxp⟩
    have hx2 : (2 : ℝ) < ‖x‖ := hx
    have hxR : max 2 (Rs j) < ‖x‖ := by
      by_contra hc
      push_neg at hc
      exact hp (Or.inr (Set.mem_iUnion.2 ⟨j, x, ⟨hx2.le, hc⟩, rfl⟩))
    have h3 := hRs j x (lt_of_le_of_lt (le_max_right _ _) hxR)
    obtain ⟨h4, h5⟩ := abs_le.1 h3
    constructor <;> linarith
  obtain ⟨a, b, ha, hab⟩ : ∃ a b : ℝ, 0 < a ∧ ∀ p : M, a ≤ 1 + v p ∧ 1 + v p ≤ b := by
    rcases Set.eq_empty_or_nonempty Kc with hE | hNE
    · exact ⟨1 / 2, 3 / 2, by norm_num, fun p => hout p (by simp [hE])⟩
    · obtain ⟨p₁, hp₁, hmin⟩ := hKc.exists_isMinOn hNE hwc.continuousOn
      obtain ⟨p₂, hp₂, hmax⟩ := hKc.exists_isMaxOn hNE hwc.continuousOn
      refine ⟨min (1 / 2) (1 + v p₁), max (3 / 2) (1 + v p₂),
        lt_min (by norm_num) (hvpos p₁), fun p => ?_⟩
      by_cases hp : p ∈ Kc
      · have hm1 : 1 + v p₁ ≤ 1 + v p := isMinOn_iff.1 hmin p hp
        have hm2 : 1 + v p ≤ 1 + v p₂ := isMaxOn_iff.1 hmax p hp
        exact ⟨(min_le_right _ _).trans hm1, hm2.trans (le_max_right _ _)⟩
      · obtain ⟨h1, h2⟩ := hout p hp
        exact ⟨(min_le_left _ _).trans h1, h2.trans (le_max_left _ _)⟩
  
  have hgnn : ∀ (p : M) (ξ : E3), 0 ≤ g.g p ξ ξ := by
    intro p ξ
    by_cases hξ : ξ = 0
    · subst hξ; simp
    · exact (g.posDef p ξ hξ).le
  have hC' : g'.IsCompleteRiemannian := by
    refine isCompleteRiemannian_of_equiv g g' (a ^ 4 / 2) (2 * b ^ 4)
      (div_pos (pow_pos ha 4) two_pos) ?_ ?_ hComplete
    · intro p ξ
      rw [hg'' p, ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      have h1 := (hheq p ξ).1
      have h2 : a ^ 4 ≤ (1 + v p) ^ 4 := pow_le_pow_left₀ ha.le (hab p).1 4
      have h3 := hgnn p ξ
      have hw4 : 0 ≤ (1 + v p) ^ 4 := by positivity
      nlinarith [mul_le_mul_of_nonneg_right h2 h3, mul_le_mul_of_nonneg_left h1 hw4]
    · intro p ξ
      rw [hg'' p, ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      have h1 := (hheq p ξ).2
      have h2 : (1 + v p) ^ 4 ≤ b ^ 4 := pow_le_pow_left₀ (hvpos p).le (hab p).2 4
      have h4 : 0 ≤ h.g p ξ ξ := by linarith [(hheq p ξ).1, hgnn p ξ]
      have hb0 : 0 ≤ b ^ 4 := by positivity
      nlinarith [mul_le_mul_of_nonneg_right h2 h4, mul_le_mul_of_nonneg_left h1 hb0]
  
  have hsrc : ∀ j : Fin hAF.numEnds, (hAF.ends j).Φ.source = {x : E3 | 1 < ‖x‖} :=
    fun j => (hAF.ends j).source_eq
  have hGsm : ∀ (j : Fin hAF.numEnds) (i l : Fin 3),
      ContDiffOn ℝ ∞ (fun x => g.coeff (hAF.ends j).Φ x i l) {x : E3 | 1 < ‖x‖} := by
    intro j i l
    rw [← hsrc j]
    exact coeff_contDiffOn_source g _ i l
  have hvsm : ∀ j : Fin hAF.numEnds,
      ContDiffOn ℝ ∞ (fun y => v ((hAF.ends j).Φ y)) {x : E3 | 1 < ‖x‖} := by
    intro j
    rw [← hsrc j]
    exact contMDiffOn_iff_contDiffOn.mp (hv.comp_contMDiffOn (hAF.ends j).Φ.contMDiffOn_toFun)
  have hψsm : ∀ j : Fin hAF.numEnds,
      ContDiffOn ℝ ∞ (fun y => ψ ((hAF.ends j).Φ y)) {x : E3 | 1 < ‖x‖} := by
    intro j
    rw [← hsrc j]
    exact contMDiffOn_iff_contDiffOn.mp (hψ.comp_contMDiffOn (hAF.ends j).Φ.contMDiffOn_toFun)
  have hdec' : ∀ (j : Fin hAF.numEnds) (i l : Fin 3) (n : ℕ), n ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ n
        (fun y => g'.coeff (hAF.ends j).Φ y i l - if i = l then (1 : ℝ) else 0) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-(min hAF.q q') - (n : ℝ)) := by
    intro j
    exact conformal_factor_decay (g.coeff (hAF.ends j).Φ) (g'.coeff (hAF.ends j).Φ)
      (fun y => v ((hAF.ends j).Φ y)) hAF.q q' (ρe j) (by linarith [hAF.q_gt]) (by linarith)
      (by linarith [hρe2 j]) (hGsm j) (hvsm j) (hAF.decay j) (hvdec j) (hG'far j)
  have hint' : ∀ j : Fin hAF.numEnds, MeasureTheory.IntegrableOn
      (fun x : E3 => g'.scalarCurvature ((hAF.ends j).Φ x) *
        Real.sqrt (g'.coeff (hAF.ends j).Φ x).det) {x : E3 | 2 < ‖x‖} := by
    intro j
    simp only [hRg', zero_mul]
    exact MeasureTheory.integrableOn_zero
  
  have hm' : Tendsto (fun r : ℝ => fluxLocal (g.coeff (hAF.ends k).Φ) r) atTop (𝓝 m) := hm
  have hD : Tendsto (fun r : ℝ => fluxLocal (g'.coeff (hAF.ends k).Φ) r -
      fluxLocal (g.coeff (hAF.ends k).Φ) r -
      4 * fluxLocal (fun x => (1 + v ((hAF.ends k).Φ x)) • (1 : Matrix (Fin 3) (Fin 3) ℝ)) r)
      atTop (𝓝 0) :=
    conformal_flux_difference (g.coeff (hAF.ends k).Φ) (g'.coeff (hAF.ends k).Φ)
      (fun y => v ((hAF.ends k).Φ y)) hAF.q q' (ρe k) hAF.q_gt hq' (by linarith [hρe2 k])
      (hGsm k) (hvsm k) (hAF.decay k) (hvdec k) (hG'far k)
  
  obtain ⟨I, hI⟩ : ∃ I : ℝ, I = ∫ y in K, (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
      ∑ i : Fin 3, ∑ j : Fin 3,
        ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
          (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
          partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y) := ⟨_, rfl⟩
  obtain ⟨T, hT⟩ : ∃ T : Fin hAF.numEnds → ℝ → ℝ, T = fun j c =>
      ∫ y : E3, (∑ a : Fin 3, (Real.sqrt (g.coeff (hAF.ends j).Φ y).det *
        ∑ e : Fin 3, (g.coeff (hAF.ends j).Φ y)⁻¹ a e *
          (ψ ((hAF.ends j).Φ y) * partialDeriv e (fun z => v ((hAF.ends j).Φ z)) y -
            v ((hAF.ends j).Φ y) * partialDeriv e (fun z => ψ ((hAF.ends j).Φ z)) y)) *
          (y a / ‖y‖)) * deriv Real.smoothTransition (‖y‖ - c) := ⟨_, rfl⟩
  obtain ⟨S, hS⟩ : ∃ S : Fin hAF.numEnds → ℝ → ℝ, S = fun j c =>
      ∫ y : E3, (∑ a : Fin 3, partialDeriv a (fun z => v ((hAF.ends j).Φ z)) y * (y a / ‖y‖)) *
        deriv Real.smoothTransition (‖y‖ - c) := ⟨_, rfl⟩
  obtain ⟨ρ₀, _hρ₀2, hsumT⟩ := green_flux_identity g h hAF φ K hK hKφ hh ψ v hψ hv hψharm hvloc
  have hsumT' : ∀ c : ℝ, ρ₀ ≤ c → ∑ j : Fin hAF.numEnds, T j c = I := by
    intro c hc
    rw [hT, hI]
    exact hsumT c hc
  have hshell : ∀ j : Fin hAF.numEnds,
      Tendsto (fun c => T j c - (if j = k then (1 : ℝ) else 0) * S j c) atTop (𝓝 0) := by
    intro j
    rw [hT, hS]
    exact end_shell_asymptotics (g.coeff (hAF.ends j).Φ) (fun y => ψ ((hAF.ends j).Φ y))
      (fun y => v ((hAF.ends j).Φ y)) (if j = k then (1 : ℝ) else 0) hAF.q q₁ q' R₁ C₁
      hAF.q_gt hq₁ hq' (hGsm j) (hψsm j) (hvsm j) (hAF.decay j) (hψdec j) (hvdec j)
  have hsum0 := tendsto_finset_sum (Finset.univ : Finset (Fin hAF.numEnds)) (fun j _ => hshell j)
  rw [Finset.sum_const_zero] at hsum0
  have hSk : Tendsto (fun c => S k c) atTop (𝓝 I) := by
    have h1 := (tendsto_const_nhds : Tendsto (fun _ : ℝ => I) atTop (𝓝 I)).sub hsum0
    rw [sub_zero] at h1
    refine h1.congr' ?_
    filter_upwards [Filter.eventually_ge_atTop ρ₀] with c hc
    rw [Finset.sum_sub_distrib, hsumT' c hc]
    have e2 : ∑ j : Fin hAF.numEnds, (if j = k then (1 : ℝ) else 0) * S j c = S k c := by
      simp [ite_mul]
    rw [e2]
    ring
  
  obtain ⟨Gu, hGu⟩ : ∃ Gu : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      Gu = fun x => (1 + v ((hAF.ends k).Φ x)) • (1 : Matrix (Fin 3) (Fin 3) ℝ) := ⟨_, rfl⟩
  have hpdGu : ∀ (i a c : Fin 3) (y : E3), partialDeriv i (fun z => Gu z a c) y =
      if a = c then partialDeriv i (fun z => v ((hAF.ends k).Φ z)) y else 0 := by
    intro i a c y
    by_cases hac : a = c
    · have hfun : (fun z => Gu z a c) = fun z => 1 + v ((hAF.ends k).Φ z) := by
        funext z
        subst hac
        simp [hGu]
      rw [hfun, if_pos hac]
      simp only [partialDeriv, fderiv_const_add]
    · have hfun : (fun z => Gu z a c) = fun _ => (0 : ℝ) := by
        funext z
        simp [hGu, Matrix.one_apply, hac]
      rw [hfun, if_neg hac]
      simp [partialDeriv]
  have hGusm : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => Gu x i j) {x : E3 | 1 < ‖x‖} := by
    intro i j
    by_cases hij : i = j
    · have hfun : (fun z => Gu z i j) = fun z => 1 + v ((hAF.ends k).Φ z) := by
        funext z
        subst hij
        simp [hGu]
      rw [hfun]
      exact contDiffOn_const.add (hvsm k)
    · have hfun : (fun z => Gu z i j) = fun _ => (0 : ℝ) := by
        funext z
        simp [hGu, Matrix.one_apply, hij]
      rw [hfun]
      exact contDiffOn_const
  have hadm : ∀ (y : E3) (j : Fin 3),
      admVec Gu y j = -2 * partialDeriv j (fun z => v ((hAF.ends k).Φ z)) y := by
    intro y j
    simp [admVec, hpdGu, Finset.sum_sub_distrib] <;> ring
  have hLHS : ∀ c : ℝ, ∫ y : E3, (∑ j : Fin 3, admVec Gu y j * (y j / ‖y‖)) *
      deriv Real.smoothTransition (‖y‖ - c) = -2 * S k c := by
    intro c
    simp only [hS]
    rw [← MeasureTheory.integral_const_mul]
    refine MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    simp only [hadm, Fin.sum_univ_three]
    ring
  have hA : Tendsto (fun c : ℝ => ∫ s in (0 : ℝ)..1,
      deriv Real.smoothTransition s * fluxLocal Gu (c + s)) atTop
      (𝓝 ((16 * Real.pi)⁻¹ * (-2 * I))) := by
    have h1 := (hSk.const_mul (-2)).const_mul (16 * Real.pi)⁻¹
    refine h1.congr' ?_
    filter_upwards [Filter.eventually_ge_atTop (2 : ℝ)] with c hc
    have hr := radial_cutoff_flux_integral Gu hGusm c hc
    rw [hLHS c] at hr
    rw [hr, ← mul_assoc, inv_mul_cancel₀ (by positivity : (16 * Real.pi) ≠ 0), one_mul]
  have hdecGu : ∀ i j : Fin 3, ∀ n : ℕ, n ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ n
        (fun y => Gu y i j - if i = j then (1 : ℝ) else 0) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-q' - (n : ℝ)) := by
    intro i j n hn
    by_cases hij : i = j
    · have hfun : (fun y => Gu y i j - if i = j then (1 : ℝ) else 0) =
          fun y => v ((hAF.ends k).Φ y) := by
        funext y
        subst hij
        simp [hGu]
      rw [hfun]
      exact hvdec k n hn
    · have hfun : (fun y => Gu y i j - if i = j then (1 : ℝ) else 0) = fun _ => (0 : ℝ) := by
        funext y
        simp [hGu, Matrix.one_apply, hij]
      rw [hfun]
      simp only [iteratedFDeriv_zero_fun, Pi.zero_apply, norm_zero]
      exact Asymptotics.isBigO_zero _ _
  obtain ⟨Rb, Cb, hRb, hCb, hb⟩ := metric_coeff_bounds Gu q' (by linarith) hGusm hdecGu
  obtain ⟨R₀, C₀, hosc⟩ := flux_increment_bound Gu q' (by linarith) hGusm Rb Cb hRb hCb hb
  have hGuflux := tendsto_of_smoothed_tendsto (fluxLocal Gu) q' (by linarith) R₀ C₀ hosc _ hA
  rw [hGu] at hGuflux
  
  have hfin : Tendsto (fun r : ℝ => admFlux g' (hAF.ends k) r) atTop
      (𝓝 (0 + m + 4 * ((16 * Real.pi)⁻¹ * (-2 * I)))) := by
    have h1 := (hD.add hm').add (hGuflux.const_mul 4)
    refine h1.congr (fun r => ?_)
    show _ = fluxLocal (g'.coeff (hAF.ends k).Φ) r
    ring
  refine ⟨g', hC', ⟨hAF.numEnds, hAF.ends, min hAF.q q', lt_min hAF.q_gt hq', hAF.disjoint,
    hAF.isCompact_core, hdec', hint'⟩, k, fun p => (hRg' p).ge, ?_⟩
  rw [← hI]
  have e : (0 + m + 4 * ((16 * Real.pi)⁻¹ * (-2 * I))) = m - 1 / (2 * Real.pi) * I := by
    ring
  rw [← e]
  exact hfin

theorem ricci_mass_drop_of_scalar_flat [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR0 : ∀ p : M, g.scalarCurvature p = 0) (k : Fin hAF.numEnds) (m : ℝ)
    (hm : Tendsto (fun r : ℝ => admFlux g (hAF.ends k) r) atTop (𝓝 m))
    (p₀ : M) (j l : Fin 3)
    (hne : ricci (g.coeff (chartAt E3 p₀).symm) j l (chartAt E3 p₀ p₀) ≠ 0) :
    ∃ (g' : RiemannianMetric3 M) (_ : g'.IsCompleteRiemannian) (hAF' : AsymptoticallyFlat g')
      (k' : Fin hAF'.numEnds) (m' : ℝ),
      (∀ p : M, 0 ≤ g'.scalarCurvature p) ∧
      Tendsto (fun r : ℝ => admFlux g' (hAF'.ends k') r) atTop (𝓝 m') ∧ m' < m :=
by
  classical
  
  obtain ⟨φ, y₁, ψ, q₁, R₁, C₁, i₁, j₁, hy₁, hψ, hψharm, hq₁, hψdec, hS₁⟩ :=
    static_deformation_site g hComplete hAF hR0 k p₀ j l hne
  have hGsm : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff φ y i j) φ.source :=
    fun i j => coeff_contDiffOn_source g φ i j
  have hGs : ∀ (y : E3) (i j : Fin 3), g.coeff φ y i j = g.coeff φ y j i :=
    fun y i j => g.symm _ _ _
  have hGpos : ∀ y ∈ φ.source, 0 < (g.coeff φ y).det :=
    fun y hy => (coeff_posDef g φ y hy).det_pos
  have hGdet : ∀ y ∈ φ.source, (g.coeff φ y).det ≠ 0 := fun y hy => (hGpos y hy).ne'
  have hRG : ∀ y ∈ φ.source, scalarCurvatureLocal (g.coeff φ) y = 0 := by
    intro y hy
    rw [← scalarCurvature_eq_scalarCurvatureLocal_coeff g φ y hy]
    exact hR0 _
  have hfsm : ContDiffOn ℝ ∞ (fun z => ψ (φ z)) φ.source :=
    contMDiffOn_iff_contDiffOn.mp (hψ.comp_contMDiffOn φ.contMDiffOn_toFun)
  have hSsm : ∀ a b : Fin 3,
      ContDiffOn ℝ ∞ (staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b) φ.source :=
    (local_geometry_contDiffOn (g.coeff φ) (fun z => ψ (φ z)) φ.source φ.open_source hGsm hGdet
      hfsm).2.2.2
  
  obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.1 φ.open_source y₁ hy₁
  obtain ⟨K, hKdef⟩ : ∃ K : Set E3, K = closedBall y₁ (ε / 2) := ⟨_, rfl⟩
  have hK : IsCompact K := by rw [hKdef]; exact isCompact_closedBall y₁ (ε / 2)
  have hKφ : K ⊆ φ.source := by
    rw [hKdef]; exact (closedBall_subset_ball (half_lt_self hε)).trans hball
  have hKmeas : MeasurableSet K := by rw [hKdef]; exact measurableSet_closedBall
  have hKnhds : K ∈ 𝓝 y₁ := by rw [hKdef]; exact closedBall_mem_nhds y₁ (half_pos hε)
  let χ : ContDiffBump y₁ := ⟨ε / 4, ε / 2, by positivity, by linarith⟩
  have hχsm : ContDiff ℝ ∞ χ := χ.contDiff
  have hχ0 : ∀ y, y ∉ K → χ y = 0 := by
    intro y hy
    apply Function.notMem_support.1
    rw [χ.support_eq]
    intro hb
    apply hy
    rw [hKdef]
    exact ball_subset_closedBall hb
  have hχ1 : χ y₁ = 1 := χ.one_of_mem_closedBall (mem_closedBall_self (by positivity))
  have hχnn : ∀ y, 0 ≤ χ y := fun y => χ.nonneg
  
  obtain ⟨S, hS⟩ : ∃ S : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      S = fun y => Matrix.of fun a b => staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b y :=
    ⟨_, rfl⟩
  have hSa : ∀ y a b, S y a b = staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b y := by
    intro y a b; rw [hS]; rfl
  obtain ⟨H, hH⟩ : ∃ H : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      H = fun y => (-χ y) • (g.coeff φ y * S y * g.coeff φ y) := ⟨_, rfl⟩
  have hHy : ∀ y, H y = (-χ y) • (g.coeff φ y * S y * g.coeff φ y) := by intro y; rw [hH]
  have hHa : ∀ y i j, H y i j = -χ y *
      ∑ n : Fin 3, (∑ m : Fin 3, g.coeff φ y i m * S y m n) * g.coeff φ y n j := by
    intro y i j
    rw [hHy]
    simp only [Matrix.smul_apply, smul_eq_mul, Matrix.mul_apply]
  have hHK : ∀ y, y ∉ K → H y = 0 := by
    intro y hy; rw [hHy, hχ0 y hy]; simp
  have hHsm : ∀ i j : Fin 3, ContDiff ℝ ∞ (fun y => H y i j) := by
    intro i j
    have hU : ContDiffOn ℝ ∞ (fun y => H y i j) φ.source := by
      have : ContDiffOn ℝ ∞ (fun y => -χ y *
          ∑ n : Fin 3, (∑ m : Fin 3, g.coeff φ y i m * S y m n) * g.coeff φ y n j) φ.source := by
        refine (hχsm.contDiffOn.neg).mul ?_
        refine ContDiffOn.sum fun n _ => ?_
        refine (ContDiffOn.sum fun m _ => ?_).mul (hGsm n j)
        exact (hGsm i m).mul ((hSsm m n).congr fun y _ => hSa y m n)
      exact this.congr fun y _ => hHa y i j
    have hV : ContDiffOn ℝ ∞ (fun y => H y i j) Kᶜ := by
      refine (contDiffOn_const (c := (0 : ℝ))).congr fun y hy => ?_
      rw [hHK y hy]; rfl
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ φ.source
    · exact hU.contDiffAt (φ.open_source.mem_nhds hy)
    · exact hV.contDiffAt (hK.isClosed.isOpen_compl.mem_nhds fun h => hy (hKφ h))
  have hGT : ∀ y, Matrix.transpose (g.coeff φ y) = g.coeff φ y := by
    intro y; ext a b; rw [Matrix.transpose_apply]; exact g.symm _ _ _
  have hST : ∀ y, Matrix.transpose (S y) = S y := by
    intro y; ext a b; rw [Matrix.transpose_apply, hSa, hSa]; unfold staticSymLoc; ring
  have hHs : ∀ y i j, H y i j = H y j i := by
    intro y i j
    have hT : Matrix.transpose (H y) = H y := by
      rw [hHy, Matrix.transpose_smul, Matrix.transpose_mul, Matrix.transpose_mul, hGT, hST,
        Matrix.mul_assoc]
    rw [← Matrix.transpose_apply (H y) j i, hT]
  
  have hkey : ∀ y ∈ φ.source,
      (∑ a : Fin 3, ∑ b : Fin 3, ∑ c : Fin 3, ∑ d : Fin 3,
        (g.coeff φ y)⁻¹ a c * (g.coeff φ y)⁻¹ b d * H y a b *
          staticLoc (g.coeff φ) (fun z => ψ (φ z)) c d y)
        = -(χ y * ∑ a : Fin 3, ∑ b : Fin 3,
            staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b y ^ 2) := by
    intro y hy
    have hdet : IsUnit (g.coeff φ y).det := (hGdet y hy).isUnit
    have hB : Matrix.transpose ((g.coeff φ y)⁻¹) * H y * (g.coeff φ y)⁻¹ = (-χ y) • S y := by
      rw [Matrix.transpose_nonsing_inv, hGT, hHy, Matrix.mul_smul, Matrix.smul_mul]
      congr 1
      rw [show (g.coeff φ y)⁻¹ * (g.coeff φ y * S y * g.coeff φ y) * (g.coeff φ y)⁻¹
          = ((g.coeff φ y)⁻¹ * g.coeff φ y) * S y * (g.coeff φ y * (g.coeff φ y)⁻¹) by
            simp only [Matrix.mul_assoc]]
      rw [Matrix.nonsing_inv_mul _ hdet, Matrix.mul_nonsing_inv _ hdet, Matrix.one_mul,
        Matrix.mul_one]
    have hA : (∑ a : Fin 3, ∑ b : Fin 3, ∑ c : Fin 3, ∑ d : Fin 3,
        (g.coeff φ y)⁻¹ a c * (g.coeff φ y)⁻¹ b d * H y a b *
          staticLoc (g.coeff φ) (fun z => ψ (φ z)) c d y)
        = ∑ c : Fin 3, ∑ d : Fin 3,
          (Matrix.transpose ((g.coeff φ y)⁻¹) * H y * (g.coeff φ y)⁻¹) c d *
          staticLoc (g.coeff φ) (fun z => ψ (φ z)) c d y := by
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_three]
      ring
    rw [hA, hB]
    simp only [Matrix.smul_apply, smul_eq_mul, hSa, staticSymLoc, Fin.sum_univ_three]
    ring
  
  obtain ⟨F, hF⟩ : ∃ F : E3 → ℝ, F = fun y => χ y *
      (∑ a : Fin 3, ∑ b : Fin 3, staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b y ^ 2) *
      Real.sqrt (g.coeff φ y).det := ⟨_, rfl⟩
  have hFnn : ∀ y, 0 ≤ F y := by
    intro y; rw [hF]
    exact mul_nonneg (mul_nonneg (hχnn y)
      (Finset.sum_nonneg fun a _ => Finset.sum_nonneg fun b _ => sq_nonneg _)) (Real.sqrt_nonneg _)
  have hGc : ContinuousOn (g.coeff φ) φ.source :=
    continuousOn_pi.2 fun a => continuousOn_pi.2 fun b => (hGsm a b).continuousOn
  have hdetc : ContinuousOn (fun y => (g.coeff φ y).det) φ.source :=
    (continuous_id.matrix_det).comp_continuousOn hGc
  have hFc : ContinuousOn F φ.source := by
    rw [hF]
    refine (hχsm.continuous.continuousOn.mul ?_).mul
      (Real.continuous_sqrt.comp_continuousOn hdetc)
    exact continuousOn_finset_sum _ fun a _ => continuousOn_finset_sum _ fun b _ =>
      (hSsm a b).continuousOn.pow 2
  have hFy₁ : 0 < F y₁ := by
    rw [hF]
    simp only
    rw [hχ1, one_mul]
    apply mul_pos
    · have h1 : 0 < staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) i₁ j₁ y₁ ^ 2 :=
        lt_of_le_of_ne (sq_nonneg _) (Ne.symm (pow_ne_zero 2 hS₁))
      calc (0 : ℝ) < staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) i₁ j₁ y₁ ^ 2 := h1
        _ ≤ ∑ b : Fin 3, staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) i₁ b y₁ ^ 2 :=
          Finset.single_le_sum
            (f := fun b => staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) i₁ b y₁ ^ 2)
            (fun b _ => sq_nonneg _) (Finset.mem_univ j₁)
        _ ≤ ∑ a : Fin 3, ∑ b : Fin 3,
            staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b y₁ ^ 2 :=
          Finset.single_le_sum
            (f := fun a => ∑ b : Fin 3, staticSymLoc (g.coeff φ) (fun z => ψ (φ z)) a b y₁ ^ 2)
            (fun a _ => Finset.sum_nonneg fun b _ => sq_nonneg _) (Finset.mem_univ i₁)
    · exact Real.sqrt_pos.2 (hGpos y₁ hy₁)
  have hFint : IntegrableOn F K := (hFc.mono hKφ).integrableOn_compact hK
  have hApos : 0 < ∫ y in K, F y := by
    rw [integral_pos_iff_support_of_nonneg_ae (Filter.Eventually.of_forall hFnn) hFint,
      Measure.restrict_apply' hKmeas]
    have hev : {y | 0 < F y} ∩ K ∈ 𝓝 y₁ := by
      refine Filter.inter_mem ?_ hKnhds
      exact continuousAt_const.eventually_lt (hFc.continuousAt (φ.open_source.mem_nhds hy₁)) hFy₁
    refine lt_of_lt_of_le (Measure.measure_pos_of_mem_nhds _ hev) (measure_mono ?_)
    intro y hy
    exact ⟨hy.1.ne', hy.2⟩
  have hA'eq : (-∫ y in K, (∑ a : Fin 3, ∑ b : Fin 3, ∑ c : Fin 3, ∑ d : Fin 3,
        (g.coeff φ y)⁻¹ a c * (g.coeff φ y)⁻¹ b d * H y a b *
          staticLoc (g.coeff φ) (fun z => ψ (φ z)) c d y) * Real.sqrt (g.coeff φ y).det)
      = ∫ y in K, F y := by
    rw [← integral_neg]
    refine setIntegral_congr_fun hKmeas fun y hy => ?_
    simp only [hkey y (hKφ hy), hF]
    ring
  
  obtain ⟨t₀, ht₀, hdef⟩ := deform_metric_in_chart g φ K hK hKφ H hHsm hHs hHK
  obtain ⟨t₂, C₃, ht₂, hC₃, hcl1, hcl2⟩ :=
    flux_first_order_expansion (g.coeff φ) H (fun z => ψ (φ z)) φ.source K φ.open_source hK hKφ
      hGsm hGs hGpos hRG hHsm hHs hHK hfsm
  have hS₀ : IsCompact (φ '' K) :=
    hK.image_of_continuousOn (φ.contMDiffOn_toFun.continuousOn.mono hKφ)
  obtain ⟨ε₀, CE, q', hε₀, hCE, hq', hsolve⟩ :=
    conformal_linear_solve g hComplete hAF k (φ '' K) hS₀ φ K hK hKφ
  obtain ⟨C₄, hC₄, hbound⟩ := hcl2 (CE * C₃) (mul_nonneg hCE hC₃)
  obtain ⟨A, hAdef⟩ : ∃ A : ℝ, A = ∫ y in K, F y := ⟨_, rfl⟩
  have hApos' : 0 < A := by rw [hAdef]; exact hApos
  obtain ⟨t, htdef⟩ : ∃ t : ℝ,
      t = min (min (t₀ / 2) t₂) (min (ε₀ / (C₃ + 1)) (A / (16 * C₄ + 1))) := ⟨_, rfl⟩
  have ht : 0 < t := by
    rw [htdef]
    exact lt_min (lt_min (half_pos ht₀) ht₂)
      (lt_min (div_pos hε₀ (by linarith)) (div_pos hApos' (by linarith)))
  have ht_t₀ : |t| < t₀ := by
    rw [abs_of_pos ht, htdef]
    exact lt_of_le_of_lt ((min_le_left _ _).trans (min_le_left _ _)) (half_lt_self ht₀)
  have ht_t₂ : t ≤ t₂ := by rw [htdef]; exact (min_le_left _ _).trans (min_le_right _ _)
  have ht_ε : t ≤ ε₀ / (C₃ + 1) := by
    rw [htdef]; exact (min_le_right _ _).trans (min_le_left _ _)
  have ht_A : t ≤ A / (16 * C₄ + 1) := by
    rw [htdef]; exact (min_le_right _ _).trans (min_le_right _ _)
  have hC₃t : C₃ * t ≤ ε₀ := by
    have h1 := (le_div_iff₀ (by linarith : (0 : ℝ) < C₃ + 1)).1 ht_ε
    nlinarith
  have hAt : t * (16 * C₄ + 1) ≤ A := (le_div_iff₀ (by linarith)).1 ht_A
  
  obtain ⟨h, hh, hcoeff, hheq⟩ := hdef t ht_t₀
  obtain ⟨hVsm, hVoff, hVon⟩ :=
    scalarCurvature_of_local_deformation g h φ K hK hKφ H t hh hcoeff
  have hVb : ∀ p : M, |h.scalarCurvature p| ≤ C₃ * t := by
    intro p
    by_cases hp : p ∈ φ '' K
    · obtain ⟨y, hyK, rfl⟩ := hp
      rw [hVon y (hKφ hyK)]
      have h1 := hcl1 t (by rw [abs_of_pos ht]; exact ht_t₂) y hyK
      rwa [abs_of_pos ht] at h1
    · rw [hVoff p hp, hR0 p, abs_zero]
      exact mul_nonneg hC₃ ht.le
  
  obtain ⟨v, hv, hveq0, hvdec, hvE, hvpos⟩ :=
    hsolve h hh hheq (fun p => h.scalarCurvature p) (fun p => -h.scalarCurvature p) hVsm hVsm.neg
      (fun p hp => ⟨by show h.scalarCurvature p = 0; rw [hVoff p hp, hR0 p],
        by show -h.scalarCurvature p = 0; rw [hVoff p hp, hR0 p, neg_zero]⟩)
      (fun p => (hVb p).trans hC₃t)
  have hvpos' : ∀ p : M, 0 < 1 + v p := hvpos (fun p => rfl)
  have hveq : ∀ p : M, -8 * h.lapM v p + h.scalarCurvature p * (1 + v p) = 0 := by
    intro p
    have h1 := hveq0 p
    linarith
  have hlap : ∀ y ∈ φ.source, h.lapM v (φ y) =
      scalarCurvatureLocal (fun z => g.coeff φ z + t • H z) y * (1 + v (φ y)) / 8 := by
    intro y hy
    have h1 := hveq (φ y)
    rw [hVon y hy] at h1
    linarith
  have hE : ∫ y in K, (|v (φ y)| + ‖fderiv ℝ (fun z => v (φ z)) y‖) ≤ CE * C₃ * t := by
    have h1 := hvE (C₃ * t) (fun p => by rw [abs_neg]; exact hVb p)
    linarith
  have hu : ContDiffOn ℝ 1 (fun z => v (φ z)) φ.source :=
    (contMDiffOn_iff_contDiffOn.mp (hv.comp_contMDiffOn φ.contMDiffOn_toFun)).of_le
      (by exact_mod_cast le_top)
  
  have hI : (∫ y in K, (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
        ∑ i : Fin 3, ∑ j : Fin 3,
          ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
            (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
            partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y))
      = ∫ y in K, (ψ (φ y) *
          (scalarCurvatureLocal (fun z => g.coeff φ z + t • H z) y * (1 + v (φ y)) / 8) *
            Real.sqrt (g.coeff φ y + t • H y).det +
          ∑ i : Fin 3, ∑ j : Fin 3,
            ((g.coeff φ y + t • H y)⁻¹ i j * Real.sqrt (g.coeff φ y + t • H y).det -
              (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
              partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y) := by
    refine setIntegral_congr_fun hKmeas fun y hy => ?_
    simp only
    rw [hcoeff y (hKφ hy), hlap y (hKφ hy)]
  have hb : |(∫ y in K, (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
        ∑ i : Fin 3, ∑ j : Fin 3,
          ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
            (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
            partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y))
      - t / 8 * A| ≤ C₄ * t ^ 2 := by
    rw [hI, hAdef, ← hA'eq]
    exact hbound t ht ht_t₂ (fun z => v (φ z)) hu hE
  have hIpos : 0 < ∫ y in K, (ψ (φ y) * h.lapM v (φ y) * Real.sqrt (h.coeff φ y).det +
        ∑ i : Fin 3, ∑ j : Fin 3,
          ((h.coeff φ y)⁻¹ i j * Real.sqrt (h.coeff φ y).det -
            (g.coeff φ y)⁻¹ i j * Real.sqrt (g.coeff φ y).det) *
            partialDeriv i (fun z => ψ (φ z)) y * partialDeriv j (fun z => v (φ z)) y) := by
    have h1 := (abs_le.1 hb).1
    have h2 : t * (t * (16 * C₄ + 1)) ≤ t * A := mul_le_mul_of_nonneg_left hAt ht.le
    nlinarith [mul_pos ht hApos', sq_nonneg t]
  obtain ⟨g', hC', hAF', k', hR', hflux⟩ :=
    conformal_correction_mass g hComplete hAF hR0 k m hm φ K hK hKφ h hh hheq ψ hψ hψharm q₁ R₁
      C₁ hq₁ hψdec v hv hvpos' hveq q' hq' hvdec
  exact ⟨g', hC', hAF', k', _, hR', hflux, sub_lt_self m (mul_pos (by positivity) hIpos)⟩

theorem mass_zero_ricci_flat [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (k : Fin hAF.numEnds)
    (hm : Tendsto (fun r : ℝ => admFlux g (hAF.ends k) r) atTop (𝓝 0)) :
    ∀ (p : M) (j l : Fin 3), ricci (g.coeff (chartAt E3 p).symm) j l (chartAt E3 p p) = 0 :=
by
  have hflat : ∀ p : M, g.scalarCurvature p = 0 := by
    intro p₀
    rcases lt_or_eq_of_le (hR p₀) with hpos | heq
    · exfalso
      obtain ⟨g', hC', hAF', k', m', hR', hm', hlt⟩ :=
        conformal_mass_drop_of_scalar_pos g hComplete hAF hR p₀ hpos k 0 hm
      have h0 := mass_nonneg g' hC' hAF' hR' k' m' hm'
      linarith
    · exact heq.symm
  intro p j l
  by_contra hne
  obtain ⟨g', hC', hAF', k', m', hR', hm', hlt⟩ :=
    ricci_mass_drop_of_scalar_flat g hComplete hAF hflat k 0 hm p j l hne
  have h0 := mass_nonneg g' hC' hAF' hR' k' m' hm'
  linarith

theorem riemannLocal_coeff_eq_zero [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hRic : ∀ (p : M) (j l : Fin 3),
      ricci (g.coeff (chartAt E3 p).symm) j l (chartAt E3 p p) = 0)
    (φ : E3 → M) (U : Set E3) (hU : IsOpen U)
    (hφ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ φ U)
    (hinj : ∀ y ∈ U, Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ y)) :
    ∀ y ∈ U, ∀ l i j k : Fin 3, riemannLocal (g.coeff φ) l i j k y = 0 :=
by
  classical
  have hu : ∀ u : E3, u = ∑ d : Fin 3, u d • e d := by
    intro u
    conv_lhs => rw [← (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr u]
    simp [EuclideanSpace.basisFun_apply]
  have hcomp_e : ∀ v : Fin 3 → ℝ, ∀ a : Fin 3, (∑ i : Fin 3, v i • e i) a = v a := by
    intro v a
    simp [Pi.single_apply]
  have hcompo : ∀ (ψ : E3 → E3) (z : E3), DifferentiableAt ℝ ψ z → ∀ l d : Fin 3,
      partialDeriv l (fun v => ψ v d) z = (fderiv ℝ ψ z (e l)) d := by
    intro ψ z hψ l d
    have hfun : (fun v => ψ v d) = (EuclideanSpace.proj d : E3 →L[ℝ] ℝ) ∘ ψ := by
      funext v; simp
    rw [partialDeriv, hfun, fderiv_comp z (EuclideanSpace.proj d).differentiableAt hψ,
      ContinuousLinearMap.fderiv]
    simp
  have dmul : ∀ (f g : E3 → ℝ) (z : E3), DifferentiableAt ℝ f z → DifferentiableAt ℝ g z →
      DifferentiableAt ℝ (fun w => f w * g w) z := fun f g z hf hg => hf.mul hg
  have pd_add : ∀ (f g : E3 → ℝ) (z : E3) (l : Fin 3), DifferentiableAt ℝ f z →
      DifferentiableAt ℝ g z →
      partialDeriv l (fun w => f w + g w) z = partialDeriv l f z + partialDeriv l g z := by
    intro f g z l hf hg
    simp only [partialDeriv, fderiv_fun_add hf hg, ContinuousLinearMap.add_apply]
  have pd_mul : ∀ (f g : E3 → ℝ) (z : E3) (l : Fin 3), DifferentiableAt ℝ f z →
      DifferentiableAt ℝ g z →
      partialDeriv l (fun w => f w * g w) z = partialDeriv l f z * g z + f z * partialDeriv l g z := by
    intro f g z l hf hg
    simp only [partialDeriv, fderiv_fun_mul hf hg, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have pd_sum : ∀ (f : Fin 3 → E3 → ℝ) (z : E3) (l : Fin 3), (∀ a, DifferentiableAt ℝ (f a) z) →
      partialDeriv l (fun w => ∑ a : Fin 3, f a w) z = ∑ a : Fin 3, partialDeriv l (f a) z := by
    intro f z l hf
    simp only [partialDeriv, fderiv_fun_sum (fun a _ => hf a), ContinuousLinearMap.sum_apply]
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
  have hpdU : ∀ (U : Set E3), IsOpen U → ∀ f : E3 → ℝ, ContDiffOn ℝ ∞ f U → ∀ i,
      ContDiffOn ℝ ∞ (partialDeriv i f) U := by
    intro U hU f hf i
    have h1 : ContDiffOn ℝ ∞ (fun y => fderiv ℝ f y) U := hf.fderiv_of_isOpen hU (by simp)
    exact h1.clm_apply contDiffOn_const
  have christoffel_contDiffOn : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3), IsOpen V →
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V) → (∀ y ∈ V, (G y).det ≠ 0) →
      ∀ k i j : Fin 3, ContDiffOn ℝ ∞ (christoffel G k i j) V := by
    intro G V hV hG hdet k i j
    have hdetS : ContDiffOn ℝ ∞ (fun y => (G y).det) V := by
      simp only [Matrix.det_fin_three]
      repeat (first | apply ContDiffOn.sub | apply ContDiffOn.add | apply ContDiffOn.mul | exact hG _ _)
    have hadj : ∀ a b, ContDiffOn ℝ ∞ (fun y => (G y).adjugate a b) V := by
      intro a b
      fin_cases a <;> fin_cases b <;>
        simp only [Matrix.adjugate_fin_three, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero,
          Matrix.cons_val_one, Matrix.cons_val_two, Matrix.empty_val', Matrix.cons_val_fin_one,
          Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Fin.isValue] <;>
        repeat (first | apply ContDiffOn.sub | apply ContDiffOn.add | apply ContDiffOn.mul | apply ContDiffOn.neg | exact hG _ _)
    have hinv : ∀ a b, ContDiffOn ℝ ∞ (fun y => (G y)⁻¹ a b) V := by
      intro a b
      have : (fun y => (G y)⁻¹ a b) = fun y => ((G y).det)⁻¹ * (G y).adjugate a b := by
        funext y
        rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
      rw [this]
      exact (hdetS.inv hdet).mul (hadj a b)
    show ContDiffOn ℝ ∞ (fun y => (1 / 2 : ℝ) * ∑ l : Fin 3, (G y)⁻¹ k l *
      (partialDeriv i (fun z => G z j l) y + partialDeriv j (fun z => G z i l) y
        - partialDeriv l (fun z => G z i j) y)) V
    apply ContDiffOn.mul contDiffOn_const
    apply ContDiffOn.sum
    intro l _
    exact (hinv k l).mul
      (((hpdU V hV _ (hG j l) i).add (hpdU V hV _ (hG i l) j)).sub (hpdU V hV _ (hG i j) l))
  have pullback_partialDeriv : ∀ (ψ : E3 → E3) (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U V : Set E3),
      IsOpen U → IsOpen V → ContDiffOn ℝ ∞ ψ U → (∀ z ∈ U, ψ z ∈ V) →
      (∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b) V) → ∀ z ∈ U, ∀ l i j : Fin 3,
      partialDeriv l (fun w => ∑ a : Fin 3, ∑ b : Fin 3,
          partialDeriv i (fun v => ψ v a) w * G (ψ w) a b * partialDeriv j (fun v => ψ v b) w) z =
        ∑ a : Fin 3, ∑ b : Fin 3,
          (partialDeriv l (partialDeriv i (fun v => ψ v a)) z * G (ψ z) a b *
              partialDeriv j (fun v => ψ v b) z +
            partialDeriv i (fun v => ψ v a) z *
              (∑ d : Fin 3, partialDeriv d (fun y => G y a b) (ψ z) *
                partialDeriv l (fun v => ψ v d) z) * partialDeriv j (fun v => ψ v b) z +
            partialDeriv i (fun v => ψ v a) z * G (ψ z) a b *
              partialDeriv l (partialDeriv j (fun v => ψ v b)) z) := by
    intro ψ G U V hU hV hψ hmaps hG z hz l i j
    have hψd : DifferentiableAt ℝ ψ z :=
      (hψ.contDiffAt (hU.mem_nhds hz)).differentiableAt (by simp)
    have hJd : ∀ a k : Fin 3, DifferentiableAt ℝ (partialDeriv k (fun v => ψ v a)) z := by
      intro a k
      exact ((hpdU U hU _ (contDiffOn_euclidean.mp hψ a) k).contDiffAt
        (hU.mem_nhds hz)).differentiableAt (by simp)
    have hGd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun y => G y a b) (ψ z) := fun a b =>
      ((hG a b).contDiffAt (hV.mem_nhds (hmaps z hz))).differentiableAt (by simp)
    have hGψd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun w => G (ψ w) a b) z :=
      fun a b => (hGd a b).comp z hψd
    have htd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun w => partialDeriv i (fun v => ψ v a) w *
        G (ψ w) a b * partialDeriv j (fun v => ψ v b) w) z :=
      fun a b => dmul _ _ _ (dmul _ _ _ (hJd a i) (hGψd a b)) (hJd b j)
    rw [pd_sum _ _ _ (fun a => DifferentiableAt.fun_sum (fun b _ => htd a b))]
    apply Finset.sum_congr rfl
    intro a _
    rw [pd_sum _ _ _ (fun b => htd a b)]
    apply Finset.sum_congr rfl
    intro b _
    rw [pd_mul _ _ _ _ (dmul _ _ _ (hJd a i) (hGψd a b)) (hJd b j),
      pd_mul _ _ _ _ (hJd a i) (hGψd a b), pd_comp (fun y => G y a b) ψ z hψd (hGd a b) l]
    ring
  have christoffel_pullback_algebra : ∀ (A G Gt : Matrix (Fin 3) (Fin 3) ℝ)
      (dG H dGt : Fin 3 → Fin 3 → Fin 3 → ℝ),
      A.det ≠ 0 → G.det ≠ 0 → (∀ a b, G a b = G b a) → (∀ c i j, H c i j = H c j i) →
      (∀ i j, Gt i j = ∑ a : Fin 3, ∑ b : Fin 3, A a i * G a b * A b j) →
      (∀ l i j, dGt l i j = ∑ a : Fin 3, ∑ b : Fin 3,
        (H a l i * G a b * A b j + A a i * (∑ d : Fin 3, dG d a b * A d l) * A b j
          + A a i * G a b * H b l j)) →
      ∀ c i j : Fin 3, ∑ k : Fin 3, A c k * ((1 / 2 : ℝ) * ∑ l : Fin 3, Gt⁻¹ k l *
          (dGt i j l + dGt j i l - dGt l i j)) =
        ∑ a : Fin 3, ∑ b : Fin 3, ((1 / 2 : ℝ) * ∑ l : Fin 3, G⁻¹ c l *
          (dG a b l + dG b a l - dG l a b)) * A a i * A b j + H c i j := by
    intro A G Gt dG H dGt hA hG hGs hH hGt hdGt c i j
    have hAu : IsUnit A.det := isUnit_iff_ne_zero.mpr hA
    have hGu : IsUnit G.det := isUnit_iff_ne_zero.mpr hG
    have hGt' : Gt = Matrix.transpose A * G * A := by
      ext i j
      rw [hGt]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
    have hAB : A * A⁻¹ = 1 := Matrix.mul_nonsing_inv A hAu
    have hGiG : G⁻¹ * G = 1 := Matrix.nonsing_inv_mul G hGu
    have hGtinv : Gt⁻¹ = A⁻¹ * G⁻¹ * Matrix.transpose A⁻¹ := by
      rw [hGt', Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.transpose_nonsing_inv]
      exact (mul_assoc _ _ _).symm
    have hα : A * Gt⁻¹ = G⁻¹ * Matrix.transpose A⁻¹ := by
      rw [hGtinv, ← Matrix.mul_assoc, ← Matrix.mul_assoc, hAB, Matrix.one_mul]
    have hα' : ∀ l, ∑ k : Fin 3, A c k * Gt⁻¹ k l = ∑ b : Fin 3, G⁻¹ c b * A⁻¹ l b := by
      intro l
      have h1 := congrFun (congrFun hα c) l
      simp only [Matrix.mul_apply, Matrix.transpose_apply] at h1
      exact h1
    have hβ : ∀ l, dGt i j l + dGt j i l - dGt l i j = ∑ γ : Fin 3, A γ l *
        (∑ α : Fin 3, ∑ β : Fin 3, A α i * A β j * (dG α β γ + dG β α γ - dG γ α β)
          + 2 * ∑ a : Fin 3, G a γ * H a i j) := by
      intro l
      rw [hdGt, hdGt, hdGt]
      simp only [Fin.sum_univ_three, hH _ j i, hH _ l i, hH _ l j]
      simp only [hGs 1 0, hGs 2 0, hGs 2 1]
      ring
    have eAB : ∀ γ b : Fin 3, A γ 0 * A⁻¹ 0 b + A γ 1 * A⁻¹ 1 b + A γ 2 * A⁻¹ 2 b
        = if γ = b then 1 else 0 := by
      intro γ b
      rw [← Matrix.one_apply, ← hAB, Matrix.mul_apply, Fin.sum_univ_three]
    have hcontr : ∀ (u W : Fin 3 → ℝ), ∑ l : Fin 3, (∑ b : Fin 3, u b * A⁻¹ l b) *
        (∑ γ : Fin 3, A γ l * W γ) = ∑ b : Fin 3, u b * W b := by
      intro u W
      simp only [Fin.sum_univ_three]
      linear_combination
        (u 0 * W 0) * (eAB 0 0).trans (if_pos rfl)
        + (u 1 * W 0) * (eAB 0 1).trans (if_neg (by decide))
        + (u 2 * W 0) * (eAB 0 2).trans (if_neg (by decide))
        + (u 0 * W 1) * (eAB 1 0).trans (if_neg (by decide))
        + (u 1 * W 1) * (eAB 1 1).trans (if_pos rfl)
        + (u 2 * W 1) * (eAB 1 2).trans (if_neg (by decide))
        + (u 0 * W 2) * (eAB 2 0).trans (if_neg (by decide))
        + (u 1 * W 2) * (eAB 2 1).trans (if_neg (by decide))
        + (u 2 * W 2) * (eAB 2 2).trans (if_pos rfl)
    have hGG : ∑ a : Fin 3, (∑ b : Fin 3, G⁻¹ c b * G a b) * H a i j = H c i j := by
      have h2 : ∀ a, ∑ b : Fin 3, G⁻¹ c b * G a b = (1 : Matrix (Fin 3) (Fin 3) ℝ) c a := by
        intro a
        rw [← hGiG, Matrix.mul_apply]
        exact Finset.sum_congr rfl (fun b _ => by rw [hGs a b])
      simp only [h2, Matrix.one_apply, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq,
        Finset.mem_univ, if_true]
    calc ∑ k : Fin 3, A c k * ((1 / 2 : ℝ) * ∑ l : Fin 3, Gt⁻¹ k l *
            (dGt i j l + dGt j i l - dGt l i j))
        = (1 / 2 : ℝ) * ∑ l : Fin 3, (∑ k : Fin 3, A c k * Gt⁻¹ k l) *
            (dGt i j l + dGt j i l - dGt l i j) := by
          simp only [Fin.sum_univ_three]
          ring
      _ = (1 / 2 : ℝ) * ∑ l : Fin 3, (∑ b : Fin 3, G⁻¹ c b * A⁻¹ l b) * (∑ γ : Fin 3, A γ l *
            (∑ α : Fin 3, ∑ β : Fin 3, A α i * A β j * (dG α β γ + dG β α γ - dG γ α β)
              + 2 * ∑ a : Fin 3, G a γ * H a i j)) := by
          simp only [hα', hβ]
      _ = (1 / 2 : ℝ) * ∑ b : Fin 3, G⁻¹ c b *
            (∑ α : Fin 3, ∑ β : Fin 3, A α i * A β j * (dG α β b + dG β α b - dG b α β)
              + 2 * ∑ a : Fin 3, G a b * H a i j) := by
          rw [hcontr (fun b => G⁻¹ c b) (fun γ => ∑ α : Fin 3, ∑ β : Fin 3,
            A α i * A β j * (dG α β γ + dG β α γ - dG γ α β) + 2 * ∑ a : Fin 3, G a γ * H a i j)]
      _ = _ := by
          rw [← hGG]
          simp only [Fin.sum_univ_three]
          ring
  have christoffel_law_differentiate : ∀ (ψ : E3 → E3) (U : Set E3), IsOpen U →
      ContDiffOn ℝ ∞ ψ U → ∀ z₀ ∈ U, ∀ (Γt Γ : Fin 3 → Fin 3 → Fin 3 → E3 → ℝ),
      (∀ k i j, DifferentiableAt ℝ (Γt k i j) z₀) →
      (∀ c a b, DifferentiableAt ℝ (Γ c a b) (ψ z₀)) →
      (∀ z ∈ U, ∀ c i j : Fin 3, ∑ k : Fin 3, partialDeriv k (fun v => ψ v c) z * Γt k i j z =
        ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b (ψ z) * partialDeriv i (fun v => ψ v a) z *
          partialDeriv j (fun v => ψ v b) z + partialDeriv i (partialDeriv j (fun v => ψ v c)) z) →
      ∀ c l i j : Fin 3, ∑ k : Fin 3,
          (partialDeriv l (partialDeriv k (fun v => ψ v c)) z₀ * Γt k i j z₀ +
            partialDeriv k (fun v => ψ v c) z₀ * partialDeriv l (Γt k i j) z₀) =
        ∑ a : Fin 3, ∑ b : Fin 3,
            (∑ d : Fin 3, partialDeriv d (Γ c a b) (ψ z₀) * partialDeriv l (fun v => ψ v d) z₀) *
              partialDeriv i (fun v => ψ v a) z₀ * partialDeriv j (fun v => ψ v b) z₀ +
          ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b (ψ z₀) *
            (partialDeriv l (partialDeriv i (fun v => ψ v a)) z₀ * partialDeriv j (fun v => ψ v b) z₀ +
              partialDeriv i (fun v => ψ v a) z₀ * partialDeriv l (partialDeriv j (fun v => ψ v b)) z₀) +
          partialDeriv l (partialDeriv i (partialDeriv j (fun v => ψ v c))) z₀ := by
    intro ψ U hU hψ z₀ hz₀ Γt Γ hΓt hΓ hlaw c l i j
    have hψd : DifferentiableAt ℝ ψ z₀ :=
      (hψ.contDiffAt (hU.mem_nhds hz₀)).differentiableAt (by simp)
    have hJ : ∀ a k : Fin 3, ContDiffOn ℝ ∞ (partialDeriv k (fun v => ψ v a)) U :=
      fun a k => hpdU U hU _ (contDiffOn_euclidean.mp hψ a) k
    have hJd : ∀ a k : Fin 3, DifferentiableAt ℝ (partialDeriv k (fun v => ψ v a)) z₀ :=
      fun a k => ((hJ a k).contDiffAt (hU.mem_nhds hz₀)).differentiableAt (by simp)
    have hHd : ∀ a k m : Fin 3,
        DifferentiableAt ℝ (partialDeriv k (partialDeriv m (fun v => ψ v a))) z₀ :=
      fun a k m => ((hpdU U hU _ (hJ a m) k).contDiffAt (hU.mem_nhds hz₀)).differentiableAt
        (by simp)
    have hΓψd : ∀ c a b : Fin 3, DifferentiableAt ℝ (fun w => Γ c a b (ψ w)) z₀ :=
      fun c a b => (hΓ c a b).comp z₀ hψd
    have hev : (fun w => ∑ k : Fin 3, partialDeriv k (fun v => ψ v c) w * Γt k i j w) =ᶠ[𝓝 z₀]
        (fun w => ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b (ψ w) * partialDeriv i (fun v => ψ v a) w *
          partialDeriv j (fun v => ψ v b) w + partialDeriv i (partialDeriv j (fun v => ψ v c)) w) := by
      filter_upwards [hU.mem_nhds hz₀] with w hw
      exact hlaw w hw c i j
    have hEq : partialDeriv l (fun w => ∑ k : Fin 3, partialDeriv k (fun v => ψ v c) w * Γt k i j w) z₀
        = partialDeriv l (fun w => ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b (ψ w) *
          partialDeriv i (fun v => ψ v a) w * partialDeriv j (fun v => ψ v b) w +
            partialDeriv i (partialDeriv j (fun v => ψ v c)) w) z₀ := by
      exact congrArg (fun L : E3 →L[ℝ] ℝ => L (e l)) hev.fderiv_eq
    have hterm : ∀ a b : Fin 3, partialDeriv l (fun w => Γ c a b (ψ w) *
        partialDeriv i (fun v => ψ v a) w * partialDeriv j (fun v => ψ v b) w) z₀ =
        (∑ d : Fin 3, partialDeriv d (Γ c a b) (ψ z₀) * partialDeriv l (fun v => ψ v d) z₀) *
          partialDeriv i (fun v => ψ v a) z₀ * partialDeriv j (fun v => ψ v b) z₀ +
        Γ c a b (ψ z₀) *
          (partialDeriv l (partialDeriv i (fun v => ψ v a)) z₀ * partialDeriv j (fun v => ψ v b) z₀ +
            partialDeriv i (fun v => ψ v a) z₀ * partialDeriv l (partialDeriv j (fun v => ψ v b)) z₀) := by
      intro a b
      rw [pd_mul _ _ _ _ (dmul _ _ _ (hΓψd c a b) (hJd a i)) (hJd b j),
        pd_mul _ _ _ _ (hΓψd c a b) (hJd a i), pd_comp (Γ c a b) ψ z₀ hψd (hΓ c a b) l]
      ring
    have htd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun w => Γ c a b (ψ w) *
        partialDeriv i (fun v => ψ v a) w * partialDeriv j (fun v => ψ v b) w) z₀ :=
      fun a b => dmul _ _ _ (dmul _ _ _ (hΓψd c a b) (hJd a i)) (hJd b j)
    have hR : partialDeriv l (fun w => ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b (ψ w) *
          partialDeriv i (fun v => ψ v a) w * partialDeriv j (fun v => ψ v b) w +
            partialDeriv i (partialDeriv j (fun v => ψ v c)) w) z₀ =
        ∑ a : Fin 3, ∑ b : Fin 3,
            (∑ d : Fin 3, partialDeriv d (Γ c a b) (ψ z₀) * partialDeriv l (fun v => ψ v d) z₀) *
              partialDeriv i (fun v => ψ v a) z₀ * partialDeriv j (fun v => ψ v b) z₀ +
          ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b (ψ z₀) *
            (partialDeriv l (partialDeriv i (fun v => ψ v a)) z₀ * partialDeriv j (fun v => ψ v b) z₀ +
              partialDeriv i (fun v => ψ v a) z₀ * partialDeriv l (partialDeriv j (fun v => ψ v b)) z₀) +
          partialDeriv l (partialDeriv i (partialDeriv j (fun v => ψ v c))) z₀ := by
      rw [pd_add _ _ _ _ (DifferentiableAt.fun_sum (fun a _ =>
          DifferentiableAt.fun_sum (fun b _ => htd a b))) (hHd c i j),
        pd_sum _ _ _ (fun a => DifferentiableAt.fun_sum (fun b _ => htd a b))]
      rw [Finset.sum_congr rfl (fun a _ => pd_sum _ z₀ l (fun b => htd a b))]
      simp only [hterm, Finset.sum_add_distrib]
    have hL : partialDeriv l (fun w => ∑ k : Fin 3, partialDeriv k (fun v => ψ v c) w * Γt k i j w) z₀
        = ∑ k : Fin 3,
          (partialDeriv l (partialDeriv k (fun v => ψ v c)) z₀ * Γt k i j z₀ +
            partialDeriv k (fun v => ψ v c) z₀ * partialDeriv l (Γt k i j) z₀) := by
      rw [pd_sum _ _ _ (fun k => dmul _ _ _ (hJd c k) (hΓt k i j))]
      apply Finset.sum_congr rfl
      intro k _
      rw [pd_mul _ _ _ _ (hJd c k) (hΓt k i j)]
    rw [← hL, hEq, hR]
  have partialDeriv_comm : ∀ (f : E3 → ℝ) (U : Set E3), IsOpen U → ContDiffOn ℝ ∞ f U →
      ∀ z ∈ U, ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j f) z = partialDeriv j (partialDeriv i f) z := by
    intro f U hU hf z hz i j
    have hfz : ContDiffAt ℝ ∞ f z := hf.contDiffAt (hU.mem_nhds hz)
    have hsymm : IsSymmSndFDerivAt ℝ f z :=
      hfz.isSymmSndFDerivAt (by simpa using (WithTop.coe_le_coe.mpr le_top : (2 : WithTop ℕ∞) ≤ ∞))
    have hd : DifferentiableAt ℝ (fderiv ℝ f) z :=
      (hfz.fderiv_right (m := 1) (by
        rw [one_add_one_eq_two]; exact WithTop.coe_le_coe.mpr le_top)).differentiableAt one_ne_zero
    have key2 : ∀ a b : Fin 3,
        partialDeriv a (partialDeriv b f) z = fderiv ℝ (fderiv ℝ f) z (e a) (e b) := by
      intro a b
      show fderiv ℝ (fun y => fderiv ℝ f y (e b)) z (e a) = _
      rw [fderiv_clm_apply hd (differentiableAt_const _)]
      simp
    rw [key2, key2, hsymm]
  have riemannLocal_congr : ∀ (G G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (y : E3),
      G =ᶠ[𝓝 y] G' → ∀ l i j k : Fin 3, riemannLocal G l i j k y = riemannLocal G' l i j k y := by
    intro G G' y h
    have hchr : ∀ k i j, christoffel G k i j =ᶠ[𝓝 y] christoffel G' k i j := by
      intro k i j
      filter_upwards [h.eventuallyEq_nhds] with w hw
      have hw0 : G w = G' w := hw.eq_of_nhds
      have hent : ∀ a b i, partialDeriv i (fun z => G z a b) w
          = partialDeriv i (fun z => G' z a b) w := by
        intro a b i
        have : (fun z => G z a b) =ᶠ[𝓝 w] (fun z => G' z a b) :=
          hw.mono (fun z hz => by simp [hz])
        simp only [partialDeriv, this.fderiv_eq]
      simp only [christoffel, hw0, hent]
    have hval : ∀ k i j, christoffel G k i j y = christoffel G' k i j y :=
      fun k i j => (hchr k i j).eq_of_nhds
    have hder : ∀ l k i j, partialDeriv l (christoffel G k i j) y
        = partialDeriv l (christoffel G' k i j) y := by
      intro l k i j
      simp only [partialDeriv, (hchr k i j).fderiv_eq]
    intro l i j k
    simp only [riemannLocal, hval, hder]
  have riemann_law_algebra : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ)
      (Γt Γ H : Fin 3 → Fin 3 → Fin 3 → ℝ) (dΓt dΓ H3 : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ),
      (∀ c i j, H c i j = H c j i) → (∀ l c i j, H3 l c i j = H3 i c l j) →
      (∀ c i j, ∑ k : Fin 3, A c k * Γt k i j =
        ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b * A a i * A b j + H c i j) →
      (∀ c l i j, ∑ k : Fin 3, (H c l k * Γt k i j + A c k * dΓt l k i j) =
        ∑ a : Fin 3, ∑ b : Fin 3, (∑ d : Fin 3, dΓ d c a b * A d l) * A a i * A b j +
          ∑ a : Fin 3, ∑ b : Fin 3, Γ c a b * (H a l i * A b j + A a i * H b l j) + H3 l c i j) →
      ∀ c j l i, ∑ k : Fin 3, A c k * (dΓt l k i j - dΓt i k l j +
          ∑ p : Fin 3, (Γt k l p * Γt p i j - Γt k i p * Γt p l j)) =
        ∑ b : Fin 3, ∑ d : Fin 3, ∑ a : Fin 3, (dΓ d c a b - dΓ a c d b +
          ∑ p : Fin 3, (Γ c d p * Γ p a b - Γ c a p * Γ p d b)) * A b j * A d l * A a i := by
    intro A Γt Γ H dΓt dΓ H3 hH hH3 hT1 hD c j l i
    simp only [Fin.sum_univ_three] at hT1 hD ⊢
    linear_combination hD c l i j - hD c i l j
      + Γt 0 i j * hT1 c l 0 + Γt 1 i j * hT1 c l 1 + Γt 2 i j * hT1 c l 2
      - Γt 0 l j * hT1 c i 0 - Γt 1 l j * hT1 c i 1 - Γt 2 l j * hT1 c i 2
      + Γ c 0 0 * A 0 l * hT1 0 i j + Γ c 0 1 * A 0 l * hT1 1 i j + Γ c 0 2 * A 0 l * hT1 2 i j
      + Γ c 1 0 * A 1 l * hT1 0 i j + Γ c 1 1 * A 1 l * hT1 1 i j + Γ c 1 2 * A 1 l * hT1 2 i j
      + Γ c 2 0 * A 2 l * hT1 0 i j + Γ c 2 1 * A 2 l * hT1 1 i j + Γ c 2 2 * A 2 l * hT1 2 i j
      - Γ c 0 0 * A 0 i * hT1 0 l j - Γ c 0 1 * A 0 i * hT1 1 l j - Γ c 0 2 * A 0 i * hT1 2 l j
      - Γ c 1 0 * A 1 i * hT1 0 l j - Γ c 1 1 * A 1 i * hT1 1 l j - Γ c 1 2 * A 1 i * hT1 2 l j
      - Γ c 2 0 * A 2 i * hT1 0 l j - Γ c 2 1 * A 2 i * hT1 1 l j - Γ c 2 2 * A 2 i * hT1 2 l j
      + Γ c 0 0 * A 0 j * hH 0 l i + Γ c 0 1 * A 1 j * hH 0 l i + Γ c 0 2 * A 2 j * hH 0 l i
      + Γ c 1 0 * A 0 j * hH 1 l i + Γ c 1 1 * A 1 j * hH 1 l i + Γ c 1 2 * A 2 j * hH 1 l i
      + Γ c 2 0 * A 0 j * hH 2 l i + Γ c 2 1 * A 1 j * hH 2 l i + Γ c 2 2 * A 2 j * hH 2 l i
      + hH3 l c i j
  have law : ∀ (ψ : E3 → E3) (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U V : Set E3),
      IsOpen U → IsOpen V → ContDiffOn ℝ ∞ ψ U → (∀ z ∈ U, ψ z ∈ V) →
      (∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => G y a b) V) →
      (∀ y a b, G y a b = G y b a) →
      (∀ y ∈ V, (G y).det ≠ 0) →
      (∀ z ∈ U, (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => ψ w a) z).det ≠ 0) →
      ∀ x ∈ U, ∀ c j l i : Fin 3,
        ∑ k : Fin 3, partialDeriv k (fun w => ψ w c) x *
          riemannLocal (fun w => Matrix.of fun i j : Fin 3 => ∑ a : Fin 3, ∑ b : Fin 3,
            partialDeriv i (fun v => ψ v a) w * G (ψ w) a b * partialDeriv j (fun v => ψ v b) w)
            k l i j x =
        ∑ b : Fin 3, ∑ d : Fin 3, ∑ a : Fin 3,
          riemannLocal G c d a b (ψ x) * partialDeriv j (fun w => ψ w b) x *
            partialDeriv l (fun w => ψ w d) x * partialDeriv i (fun w => ψ w a) x := by
    intro ψ G U V hUo hVo hψ hmaps hG hGsym hdetG hdetJ x hxU
    have hpd : ∀ f : E3 → ℝ, ContDiffOn ℝ ∞ f U → ∀ i, ContDiffOn ℝ ∞ (partialDeriv i f) U := by
      intro f hf i
      have h1 : ContDiffOn ℝ ∞ (fun y => fderiv ℝ f y) U := hf.fderiv_of_isOpen hUo (by simp)
      exact h1.clm_apply contDiffOn_const
    have hψc : ∀ a : Fin 3, ContDiffOn ℝ ∞ (fun v => ψ v a) U := by
      intro a
      exact contDiffOn_euclidean.mp hψ a
    have hJ : ∀ a i : Fin 3, ContDiffOn ℝ ∞ (partialDeriv i (fun v => ψ v a)) U :=
      fun a i => hpd _ (hψc a) i
    have hGψ : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun w => G (ψ w) a b) U :=
      fun a b => (hG a b).comp hψ hmaps
    set Gt : E3 → Matrix (Fin 3) (Fin 3) ℝ := fun w => Matrix.of fun i j : Fin 3 =>
      ∑ a : Fin 3, ∑ b : Fin 3,
        partialDeriv i (fun v => ψ v a) w * G (ψ w) a b * partialDeriv j (fun v => ψ v b) w
      with hGt
    have hGt_smooth : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun w => Gt w i j) U := by
      intro i j
      show ContDiffOn ℝ ∞ (fun w => ∑ a : Fin 3, ∑ b : Fin 3,
          partialDeriv i (fun v => ψ v a) w * G (ψ w) a b * partialDeriv j (fun v => ψ v b) w) U
      apply ContDiffOn.sum
      intro a _
      apply ContDiffOn.sum
      intro b _
      exact ((hJ a i).mul (hGψ a b)).mul (hJ b j)
    have hGt_det : ∀ z ∈ U, (Gt z).det ≠ 0 := by
      intro z hz
      have hm : Gt z = Matrix.transpose (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => ψ w a) z) *
          G (ψ z) * (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => ψ w a) z) := by
        ext i j
        simp only [hGt, Matrix.of_apply, Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
        rw [Finset.sum_comm]
      rw [hm, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
      exact mul_ne_zero (mul_ne_zero (hdetJ z hz) (hdetG _ (hmaps z hz))) (hdetJ z hz)
    have hH : ∀ z ∈ U, ∀ c i j : Fin 3, partialDeriv i (partialDeriv j (fun v => ψ v c)) z
        = partialDeriv j (partialDeriv i (fun v => ψ v c)) z :=
      fun z hz c i j => partialDeriv_comm _ U hUo (hψc c) z hz i j
    have hT1 : ∀ z ∈ U, ∀ c i j : Fin 3,
        ∑ k : Fin 3, partialDeriv k (fun v => ψ v c) z * christoffel Gt k i j z
          = ∑ a : Fin 3, ∑ b : Fin 3, christoffel G c a b (ψ z) * partialDeriv i (fun v => ψ v a) z *
            partialDeriv j (fun v => ψ v b) z + partialDeriv i (partialDeriv j (fun v => ψ v c)) z := by
      intro z hz c i j
      have h8 := pullback_partialDeriv ψ G U V hUo hVo hψ hmaps hG z hz
      have h9 := christoffel_pullback_algebra
        (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => ψ w a) z) (G (ψ z)) (Gt z)
        (fun d a b => partialDeriv d (fun y => G y a b) (ψ z))
        (fun c i j => partialDeriv i (partialDeriv j (fun v => ψ v c)) z)
        (fun l i j => partialDeriv l (fun w => Gt w i j) z)
        (hdetJ z hz) (hdetG _ (hmaps z hz)) (fun a b => hGsym _ a b)
        (fun c i j => hH z hz c i j) (fun i j => rfl) (fun l i j => h8 l i j) c i j
      exact h9
    have hΓt : ∀ k i j : Fin 3, DifferentiableAt ℝ (christoffel Gt k i j) x := fun k i j =>
      ((christoffel_contDiffOn Gt U hUo hGt_smooth hGt_det k i j).contDiffAt
        (hUo.mem_nhds hxU)).differentiableAt (by simp)
    have hΓ : ∀ c a b : Fin 3, DifferentiableAt ℝ (christoffel G c a b) (ψ x) := fun c a b =>
      ((christoffel_contDiffOn G V hVo hG hdetG c a b).contDiffAt
        (hVo.mem_nhds (hmaps x hxU))).differentiableAt (by simp)
    have hD := christoffel_law_differentiate ψ U hUo hψ x hxU (christoffel Gt) (christoffel G)
      hΓt hΓ hT1
    have hH3 : ∀ l c i j : Fin 3,
        partialDeriv l (partialDeriv i (partialDeriv j (fun v => ψ v c))) x
          = partialDeriv i (partialDeriv l (partialDeriv j (fun v => ψ v c))) x :=
      fun l c i j => partialDeriv_comm _ U hUo (hJ c j) x hxU l i
    have hT2 := riemann_law_algebra
      (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => ψ w a) x)
      (fun k i j => christoffel Gt k i j x) (fun c a b => christoffel G c a b (ψ x))
      (fun c i j => partialDeriv i (partialDeriv j (fun v => ψ v c)) x)
      (fun l k i j => partialDeriv l (christoffel Gt k i j) x)
      (fun d c a b => partialDeriv d (christoffel G c a b) (ψ x))
      (fun l c i j => partialDeriv l (partialDeriv i (partialDeriv j (fun v => ψ v c))) x)
      (fun c i j => hH x hxU c i j) hH3 (fun c i j => hT1 x hxU c i j) hD
    intro c j l i
    have h := hT2 c j l i
    simp only [Matrix.of_apply] at h
    simp only [riemannLocal]
    exact h
  have amb : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U : Set E3), IsOpen U →
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) U) →
      (∀ (y : E3) (i j : Fin 3), G y i j = G y j i) → (∀ y ∈ U, (G y).PosDef) →
      (∀ k i j : Fin 3, ContDiffOn ℝ ∞ (christoffel G k i j) U) →
      ∀ y ∈ U, ∀ i j k m : Fin 3, ∑ l : Fin 3, G y m l * riemannLocal G l i j k y =
        -∑ l : Fin 3, G y k l * riemannLocal G l i j m y := by
    intro G U hU hG hGsymm hGpos hΓ
    have lower : ∀ (g gi : Matrix (Fin 3) (Fin 3) ℝ) (T : Fin 3 → ℝ), g * gi = 1 →
        ∀ m : Fin 3, ∑ l : Fin 3, g m l * (1 / 2 * ∑ q : Fin 3, gi l q * T q) = 1 / 2 * T m := by
      intro g gi T h1 m
      have hδ : ∀ q : Fin 3, ∑ l : Fin 3, g m l * gi l q = if m = q then 1 else 0 := by
        intro q
        have := congrFun (congrFun h1 m) q
        rwa [Matrix.mul_apply, Matrix.one_apply] at this
      have e : ∑ l : Fin 3, g m l * (1 / 2 * ∑ q : Fin 3, gi l q * T q) =
          1 / 2 * ∑ q : Fin 3, (∑ l : Fin 3, g m l * gi l q) * T q := by
        simp only [Fin.sum_univ_three]; ring
      rw [e]
      simp only [hδ, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, ↓reduceIte]
    have core : ∀ (g gi : Matrix (Fin 3) (Fin 3) ℝ) (Γ dg : Fin 3 → Fin 3 → Fin 3 → ℝ)
        (ddg dΓ : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ),
        g * gi = 1 → (∀ a b : Fin 3, g a b = g b a) → (∀ c a b : Fin 3, dg c a b = dg c b a) →
        (∀ c d a b : Fin 3, ddg c d a b = ddg d c a b) →
        (∀ l j k : Fin 3, Γ l j k = 1 / 2 * ∑ q : Fin 3, gi l q * (dg j k q + dg k j q - dg q j k)) →
        (∀ i m j k : Fin 3, ∑ l : Fin 3, (dg i m l * Γ l j k + g m l * dΓ i l j k) =
            1 / 2 * (ddg i j k m + ddg i k j m - ddg i m j k)) →
        ∀ i j k m : Fin 3, ∑ l : Fin 3, g m l * (dΓ i l j k - dΓ j l i k +
            ∑ p : Fin 3, (Γ l i p * Γ p j k - Γ l j p * Γ p i k)) =
          -∑ l : Fin 3, g k l * (dΓ i l j m - dΓ j l i m +
            ∑ p : Fin 3, (Γ l i p * Γ p j m - Γ l j p * Γ p i m)) := by
      intro g gi Γ dg ddg dΓ h1 hg h3 h4 h5 h6 i j k m
      have ha : ∀ m j k : Fin 3, ∑ l : Fin 3, g m l * Γ l j k =
          1 / 2 * (dg j k m + dg k j m - dg m j k) := by
        intro m j k
        simp only [h5]
        exact lower g gi (fun q => dg j k q + dg k j q - dg q j k) h1 m
      have hD : ∀ i m j k : Fin 3, ∑ l : Fin 3, g m l * dΓ i l j k =
          1 / 2 * (ddg i j k m + ddg i k j m - ddg i m j k) - ∑ l : Fin 3, dg i m l * Γ l j k := by
        intro i m j k
        have := h6 i m j k
        rw [Finset.sum_add_distrib] at this
        linarith
      have hQ : ∀ m a b c : Fin 3, ∑ l : Fin 3, g m l * ∑ p : Fin 3, Γ l a p * Γ p b c =
          ∑ p : Fin 3, 1 / 2 * (dg a p m + dg p a m - dg m a p) * Γ p b c := by
        intro m a b c
        have e : ∑ l : Fin 3, g m l * ∑ p : Fin 3, Γ l a p * Γ p b c =
            ∑ p : Fin 3, (∑ l : Fin 3, g m l * Γ l a p) * Γ p b c := by
          simp only [Fin.sum_univ_three]; ring
        rw [e]
        simp only [ha]
      have hMC : ∀ i m j k : Fin 3, ∑ l : Fin 3, dg i m l * Γ l j k =
          ∑ p : Fin 3, 1 / 2 * (dg i p m + dg p i m - dg m i p) * Γ p j k +
          ∑ l : Fin 3, 1 / 2 * (dg i m l + dg m i l - dg l i m) * Γ l j k := by
        intro i m j k
        rw [← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl fun l _ => ?_
        rw [h3 i l m]
        ring
      have hS0 : ∀ a b c d : Fin 3, ∑ l : Fin 3, (∑ q : Fin 3, g l q * Γ q a b) * Γ l c d =
          ∑ l : Fin 3, (∑ q : Fin 3, g l q * Γ q c d) * Γ l a b := by
        intro a b c d
        simp only [Fin.sum_univ_three]
        rw [hg 1 0, hg 2 0, hg 2 1]
        ring
      have hS : ∀ a b c d : Fin 3, ∑ l : Fin 3, 1 / 2 * (dg a b l + dg b a l - dg l a b) * Γ l c d =
          ∑ l : Fin 3, 1 / 2 * (dg c d l + dg d c l - dg l c d) * Γ l a b := by
        intro a b c d
        have := hS0 a b c d
        simp only [ha] at this
        exact this
      have hE : ∀ i j k m : Fin 3, ∑ l : Fin 3, g m l * (dΓ i l j k - dΓ j l i k +
            ∑ p : Fin 3, (Γ l i p * Γ p j k - Γ l j p * Γ p i k)) =
          ∑ l : Fin 3, g m l * dΓ i l j k - ∑ l : Fin 3, g m l * dΓ j l i k +
            ∑ l : Fin 3, g m l * ∑ p : Fin 3, Γ l i p * Γ p j k -
            ∑ l : Fin 3, g m l * ∑ p : Fin 3, Γ l j p * Γ p i k := by
        intro i j k m
        simp only [Fin.sum_univ_three]; ring
      have e1 := hE i j k m
      have e2 := hE i j m k
      have d1 := hD i m j k
      have d2 := hD j m i k
      have d3 := hD i k j m
      have d4 := hD j k i m
      have q1 := hQ m i j k
      have q2 := hQ m j i k
      have q3 := hQ k i j m
      have q4 := hQ k j i m
      have c1 := hMC i m j k
      have c2 := hMC j m i k
      have c3 := hMC i k j m
      have c4 := hMC j k i m
      have s1 := hS j m i k
      have s2 := hS j k i m
      have w1 := h4 i j k m
      have w2 := h4 i j m k
      linarith
    have hinv : ∀ z ∈ U, G z * (G z)⁻¹ = 1 := fun z hz =>
      Matrix.mul_nonsing_inv (G z) (isUnit_iff_ne_zero.mpr (hGpos z hz).det_pos.ne')
    have hlow : ∀ z ∈ U, ∀ m j k : Fin 3, ∑ l : Fin 3, G z m l * christoffel G l j k z =
        1 / 2 * (partialDeriv j (fun w => G w k m) z + partialDeriv k (fun w => G w j m) z -
          partialDeriv m (fun w => G w j k) z) := by
      intro z hz m j k
      exact lower (G z) (G z)⁻¹ (fun q => partialDeriv j (fun w => G w k q) z +
        partialDeriv k (fun w => G w j q) z - partialDeriv q (fun w => G w j k) z) (hinv z hz) m
    have pd_add : ∀ (c : Fin 3) (f h : E3 → ℝ) (y : E3), DifferentiableAt ℝ f y →
        DifferentiableAt ℝ h y →
        partialDeriv c (fun z => f z + h z) y = partialDeriv c f y + partialDeriv c h y := by
      intro c f h y hf hh
      simp only [partialDeriv]
      rw [fderiv_fun_add hf hh]
      rfl
    have pd_sub : ∀ (c : Fin 3) (f h : E3 → ℝ) (y : E3), DifferentiableAt ℝ f y →
        DifferentiableAt ℝ h y →
        partialDeriv c (fun z => f z - h z) y = partialDeriv c f y - partialDeriv c h y := by
      intro c f h y hf hh
      simp only [partialDeriv]
      rw [fderiv_fun_sub hf hh]
      rfl
    have pd_mul : ∀ (c : Fin 3) (f h : E3 → ℝ) (y : E3), DifferentiableAt ℝ f y →
        DifferentiableAt ℝ h y →
        partialDeriv c (fun z => f z * h z) y = partialDeriv c f y * h y + f y * partialDeriv c h y := by
      intro c f h y hf hh
      simp only [partialDeriv]
      rw [fderiv_fun_mul hf hh]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    have pd_cmul : ∀ (c : Fin 3) (a : ℝ) (f : E3 → ℝ) (y : E3), DifferentiableAt ℝ f y →
        partialDeriv c (fun z => a * f z) y = a * partialDeriv c f y := by
      intro c a f y hf
      simp only [partialDeriv]
      rw [fderiv_const_mul hf a]
      rfl
    have pd_sum : ∀ (c : Fin 3) (F : Fin 3 → E3 → ℝ) (y : E3), (∀ l, DifferentiableAt ℝ (F l) y) →
        partialDeriv c (fun z => ∑ l : Fin 3, F l z) y = ∑ l : Fin 3, partialDeriv c (F l) y := by
      intro c F y hF
      simp only [partialDeriv]
      rw [fderiv_fun_sum (fun l _ => hF l)]
      simp only [ContinuousLinearMap.sum_apply]
    have hpd : ∀ c a b : Fin 3, ContDiffOn ℝ ∞ (partialDeriv c (fun z => G z a b)) U := by
      intro c a b
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (fun z => G z a b) y (e c)) U
      exact ((contDiffOn_infty_iff_fderiv_of_isOpen hU).1 (hG a b)).2.clm_apply contDiffOn_const
    have h6all : ∀ y ∈ U, ∀ i m j k : Fin 3, ∑ l : Fin 3,
        (partialDeriv i (fun z => G z m l) y * christoffel G l j k y +
          G y m l * partialDeriv i (christoffel G l j k) y) =
        1 / 2 * (partialDeriv i (fun z => partialDeriv j (fun w => G w k m) z) y +
          partialDeriv i (fun z => partialDeriv k (fun w => G w j m) z) y -
          partialDeriv i (fun z => partialDeriv m (fun w => G w j k) z) y) := by
      intro y hy i m j k
      have hy' : U ∈ 𝓝 y := hU.mem_nhds hy
      have dG : ∀ a b : Fin 3, DifferentiableAt ℝ (fun z => G z a b) y := fun a b =>
        ((hG a b).contDiffAt hy').differentiableAt (by simp)
      have dC : ∀ l : Fin 3, DifferentiableAt ℝ (christoffel G l j k) y := fun l =>
        ((hΓ l j k).contDiffAt hy').differentiableAt (by simp)
      have dP : ∀ c a b : Fin 3, DifferentiableAt ℝ (partialDeriv c (fun z => G z a b)) y :=
        fun c a b => ((hpd c a b).contDiffAt hy').differentiableAt (by simp)
      have hev : (fun z => ∑ l : Fin 3, G z m l * christoffel G l j k z) =ᶠ[𝓝 y]
          (fun z => 1 / 2 * (partialDeriv j (fun w => G w k m) z +
            partialDeriv k (fun w => G w j m) z - partialDeriv m (fun w => G w j k) z)) :=
        Filter.eventuallyEq_of_mem hy' (fun z hz => hlow z hz m j k)
      have key : partialDeriv i (fun z => ∑ l : Fin 3, G z m l * christoffel G l j k z) y =
          partialDeriv i (fun z => 1 / 2 * (partialDeriv j (fun w => G w k m) z +
            partialDeriv k (fun w => G w j m) z - partialDeriv m (fun w => G w j k) z)) y :=
        congrArg (fun L : E3 →L[ℝ] ℝ => L (e i)) hev.fderiv_eq
      have hL : partialDeriv i (fun z => ∑ l : Fin 3, G z m l * christoffel G l j k z) y =
          ∑ l : Fin 3, (partialDeriv i (fun z => G z m l) y * christoffel G l j k y +
            G y m l * partialDeriv i (christoffel G l j k) y) := by
        rw [pd_sum i (fun l z => G z m l * christoffel G l j k z) y
          (fun l => (dG m l).mul (dC l))]
        refine Finset.sum_congr rfl fun l _ => ?_
        exact pd_mul i (fun z => G z m l) (christoffel G l j k) y (dG m l) (dC l)
      have hR : partialDeriv i (fun z => 1 / 2 * (partialDeriv j (fun w => G w k m) z +
            partialDeriv k (fun w => G w j m) z - partialDeriv m (fun w => G w j k) z)) y =
          1 / 2 * (partialDeriv i (fun z => partialDeriv j (fun w => G w k m) z) y +
            partialDeriv i (fun z => partialDeriv k (fun w => G w j m) z) y -
            partialDeriv i (fun z => partialDeriv m (fun w => G w j k) z) y) := by
        rw [pd_cmul i (1 / 2) (fun z => partialDeriv j (fun w => G w k m) z +
            partialDeriv k (fun w => G w j m) z - partialDeriv m (fun w => G w j k) z) y
            (((dP j k m).add (dP k j m)).sub (dP m j k))]
        rw [pd_sub i (fun z => partialDeriv j (fun w => G w k m) z +
            partialDeriv k (fun w => G w j m) z) (partialDeriv m (fun w => G w j k)) y
            ((dP j k m).add (dP k j m)) (dP m j k)]
        rw [pd_add i (partialDeriv j (fun w => G w k m)) (partialDeriv k (fun w => G w j m)) y
            (dP j k m) (dP k j m)]
      rw [← hL, key, hR]
    have hschwarz : ∀ y ∈ U, ∀ c d a b : Fin 3,
        partialDeriv c (fun z => partialDeriv d (fun w => G w a b) z) y =
        partialDeriv d (fun z => partialDeriv c (fun w => G w a b) z) y := by
      intro y hy c d a b
      exact partialDeriv_comm (fun w => G w a b) U hU (hG a b) y hy c d
    intro y hy i j k m
    have hc := core (G y) ((G y)⁻¹) (fun l j k => christoffel G l j k y)
      (fun c a b => partialDeriv c (fun z => G z a b) y)
      (fun c d a b => partialDeriv c (fun z => partialDeriv d (fun w => G w a b) z) y)
      (fun i l j k => partialDeriv i (christoffel G l j k) y)
      (hinv y hy) (hGsymm y)
      (fun c a b => by
        show partialDeriv c (fun z => G z a b) y = partialDeriv c (fun z => G z b a) y
        rw [show (fun z => G z a b) = (fun z => G z b a) from funext fun z => hGsymm z a b])
      (fun c d a b => hschwarz y hy c d a b)
      (fun l j k => rfl)
      (fun i m j k => h6all y hy i m j k) i j k m
    simpa only [riemannLocal] using hc
  have f3 : ∀ s : Fin 3, s = 0 ∨ s = 1 ∨ s = 2 := by decide
  have alg : ∀ S : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ,
      (∀ m i j k, S m j i k = -S m i j k) → (∀ m i j k, S k i j m = -S m i j k) →
      (∀ j k, ∑ i : Fin 3, S i i j k = 0) → ∀ m i j k, S m i j k = 0 := by
    intro S h1 h2 h3
    have z1 : ∀ m i k, S m i i k = 0 := fun m i k => by linarith [h1 m i i k]
    have z2 : ∀ m i j, S m i j m = 0 := fun m i j => by linarith [h2 m i j m]
    have T : ∀ j k, S 0 0 j k + S 1 1 j k + S 2 2 j k = 0 := fun j k => by
      have h := h3 j k
      rw [Fin.sum_univ_three] at h
      exact h
    have Q : ∀ s a b, S s s a b = 0 := by
      have r1 := h1 1 1 0 0
      have r2 := h2 1 0 1 0
      have r3 := h1 2 2 0 0
      have r4 := h2 2 0 2 0
      have r5 := h1 2 2 1 1
      have r6 := h2 2 1 2 1
      have t00 := T 0 0
      have t01 := T 0 1
      have t02 := T 0 2
      have t10 := T 1 0
      have t11 := T 1 1
      have t12 := T 1 2
      have t20 := T 2 0
      have t21 := T 2 1
      have t22 := T 2 2
      have u00 := z1 0 0 0
      have u01 := z1 0 0 1
      have u02 := z1 0 0 2
      have u10 := z1 1 1 0
      have u11 := z1 1 1 1
      have u12 := z1 1 1 2
      have u20 := z1 2 2 0
      have u21 := z1 2 2 1
      have u22 := z1 2 2 2
      have v00 := z2 0 0 0
      have v01 := z2 0 0 1
      have v02 := z2 0 0 2
      have v10 := z2 1 1 0
      have v11 := z2 1 1 1
      have v12 := z2 1 1 2
      have v20 := z2 2 2 0
      have v21 := z2 2 2 1
      have v22 := z2 2 2 2
      intro s a b
      rcases f3 s with rfl | rfl | rfl <;> rcases f3 a with rfl | rfl | rfl <;>
        rcases f3 b with rfl | rfl | rfl <;> linarith
    intro m i j k
    have a1 := h1 m i j k
    have a2 := h2 m i j k
    have a4 := h1 k i j m
    have q1 := Q m j k
    have q2 := Q k j m
    have q3 := Q m i k
    have q4 := Q k i m
    have w1 := z1 m i k
    have w2 := z2 m i j
    rcases f3 m with rfl | rfl | rfl <;> rcases f3 i with rfl | rfl | rfl <;>
      rcases f3 j with rfl | rfl | rfl <;> rcases f3 k with rfl | rfl | rfl <;> linarith
  have weyl : ∀ (G0 : Matrix (Fin 3) (Fin 3) ℝ), G0.PosDef →
      ∀ R : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ,
      (∀ l i j k, R l i j k = -R l j i k) →
      (∀ i j k m, ∑ l : Fin 3, G0 m l * R l i j k = -∑ l : Fin 3, G0 k l * R l i j m) →
      (∀ j k, ∑ i : Fin 3, R i i j k = 0) → ∀ l i j k, R l i j k = 0 := by
    intro G0 hG0 R h1 h2 h3
    obtain ⟨C, hC⟩ := Matrix.posSemidef_iff_eq_conjTranspose_mul_self.mp hG0.posSemidef
    rw [Matrix.conjTranspose_eq_transpose_of_trivial] at hC
    have hdetC : C.det ≠ 0 := by
      intro h0
      have hp := hG0.det_pos
      rw [hC, Matrix.det_mul, Matrix.det_transpose, h0, mul_zero] at hp
      exact lt_irrefl _ hp
    have hCu : IsUnit C.det := isUnit_iff_ne_zero.mpr hdetC
    have hCD : C * C⁻¹ = 1 := Matrix.mul_nonsing_inv C hCu
    have hDC : C⁻¹ * C = 1 := Matrix.nonsing_inv_mul C hCu
    obtain ⟨D, hD⟩ : ∃ D : Matrix (Fin 3) (Fin 3) ℝ, D = C⁻¹ := ⟨_, rfl⟩
    rw [← hD] at hCD hDC
    have hH : D * D.transpose * G0 = 1 := by
      rw [hC, Matrix.mul_assoc, ← Matrix.mul_assoc D.transpose, ← Matrix.transpose_mul, hCD,
        Matrix.transpose_one, Matrix.one_mul, hDC]
    have hdetD : D.det ≠ 0 := by
      intro h0
      have h := congrArg Matrix.det hDC
      rw [Matrix.det_mul, Matrix.det_one, h0, zero_mul] at h
      exact zero_ne_one h
    have hpeel : ∀ v : Fin 3 → ℝ, (∀ m, ∑ a : Fin 3, D a m * v a = 0) → ∀ a, v a = 0 := by
      intro v hv a
      have hdT : D.transpose.det ≠ 0 := by rw [Matrix.det_transpose]; exact hdetD
      have hz := Matrix.eq_zero_of_mulVec_eq_zero hdT (v := v) (by
        funext m
        simp only [Matrix.mulVec, dotProduct, Matrix.transpose_apply, Pi.zero_apply]
        exact hv m)
      exact congrFun hz a
    obtain ⟨W, hW⟩ : ∃ W : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ,
        ∀ m i j k, W m i j k = ∑ l : Fin 3, G0 m l * R l i j k := ⟨_, fun _ _ _ _ => rfl⟩
    have hW1 : ∀ m i j k, W m j i k = -W m i j k := by
      intro m i j k
      rw [hW, hW, ← Finset.sum_neg_distrib]
      exact Finset.sum_congr rfl fun l _ => by rw [h1 l j i k]; ring
    have hW2 : ∀ m i j k, W k i j m = -W m i j k := by
      intro m i j k
      rw [hW, hW]
      exact h2 i j m k
    have hRW : ∀ l i j k, R l i j k = ∑ a : Fin 3, (D * D.transpose) l a * W a i j k := by
      intro l i j k
      have e1 : R l i j k = ∑ n : Fin 3, (D * D.transpose * G0) l n * R n i j k := by
        rw [hH]; simp [Matrix.one_apply]
      rw [e1]
      simp only [hW, Matrix.mul_apply, Fin.sum_univ_three]
      ring
    have hTr : ∀ c d, ∑ a : Fin 3, ∑ b : Fin 3, (∑ i : Fin 3, D a i * D b i) * W a b c d = 0 := by
      intro c d
      have h := h3 c d
      rw [Fin.sum_univ_three, hRW 0 0 c d, hRW 1 1 c d, hRW 2 2 c d] at h
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_three] at h ⊢
      linear_combination h
    obtain ⟨S, hS⟩ : ∃ S : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ, ∀ m i j k,
        S m i j k = ∑ a : Fin 3, D a m * ∑ d : Fin 3, D d k * ∑ b : Fin 3, D b i *
          ∑ c : Fin 3, D c j * W a b c d := ⟨_, fun _ _ _ _ => rfl⟩
    have hS1 : ∀ m i j k, S m j i k = -S m i j k := by
      intro m i j k
      rw [hS, hS]
      simp only [Finset.mul_sum, ← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun d _ => ?_
      refine Finset.sum_comm.trans ?_
      refine Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun c _ => ?_
      simp only [hW1 a b c d]
      ring
    have hS2 : ∀ m i j k, S k i j m = -S m i j k := by
      intro m i j k
      rw [hS, hS]
      simp only [Finset.mul_sum, ← Finset.sum_neg_distrib]
      refine Finset.sum_comm.trans ?_
      refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun d _ =>
        Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun c _ => ?_
      simp only [hW2 a b c d]
      ring
    have hS3 : ∀ j k, ∑ i : Fin 3, S i i j k = 0 := by
      intro j k
      have e := hTr
      simp only [Fin.sum_univ_three] at e
      rw [Fin.sum_univ_three, hS, hS, hS]
      simp only [Fin.sum_univ_three]
      linear_combination D 0 j * D 0 k * e 0 0 + D 0 j * D 1 k * e 0 1 + D 0 j * D 2 k * e 0 2
        + D 1 j * D 0 k * e 1 0 + D 1 j * D 1 k * e 1 1 + D 1 j * D 2 k * e 1 2
        + D 2 j * D 0 k * e 2 0 + D 2 j * D 1 k * e 2 1 + D 2 j * D 2 k * e 2 2
    have hSz := alg S hS1 hS2 hS3
    have X : ∀ a i j k,
        (∑ d : Fin 3, D d k * ∑ b : Fin 3, D b i * ∑ c : Fin 3, D c j * W a b c d) = 0 :=
      fun a i j k => hpeel
        (fun a => ∑ d : Fin 3, D d k * ∑ b : Fin 3, D b i * ∑ c : Fin 3, D c j * W a b c d)
        (fun m => (hS m i j k).symm.trans (hSz m i j k)) a
    have Y : ∀ a d i j, (∑ b : Fin 3, D b i * ∑ c : Fin 3, D c j * W a b c d) = 0 :=
      fun a d i j => hpeel (fun d => ∑ b : Fin 3, D b i * ∑ c : Fin 3, D c j * W a b c d)
        (fun k => X a i j k) d
    have Z : ∀ a d b j, (∑ c : Fin 3, D c j * W a b c d) = 0 :=
      fun a d b j => hpeel (fun b => ∑ c : Fin 3, D c j * W a b c d) (fun i => Y a d i j) b
    have W0 : ∀ a b c d, W a b c d = 0 :=
      fun a b c d => hpeel (fun c => W a b c d) (fun j => Z a d b j) c
    intro l i j k
    rw [hRW]
    simp [W0]
  
  intro y hy l i j k
  have hposD : ∀ z ∈ (chartAt E3 (φ y)).target,
      (g.coeff (chartAt E3 (φ y)).symm z).PosDef := by
    intro z hz
    have hq : (chartAt E3 (φ y)).symm z ∈ (chartAt E3 (φ y)).source :=
      (chartAt E3 (φ y)).map_target hz
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm z :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 (φ y)) hz
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y))
        ((chartAt E3 (φ y)).symm z) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 (φ y)) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 (φ y)) ∘ (chartAt E3 (φ y)).symm) z =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)) ((chartAt E3 (φ y)).symm z)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm z) := mfderiv_comp z hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 (φ y)) ∘ (chartAt E3 (φ y)).symm) z =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id z := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 (φ y)).eventually_right_inverse hz] with w hw
      exact hw
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)) ((chartAt E3 (φ y)).symm z)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm z w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    have hDinj : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm z w = 0 → w = 0 := by
      intro w hw
      rw [← hinv w, hw, map_zero]
    apply Matrix.PosDef.of_dotProduct_mulVec_pos
    · apply Matrix.IsHermitian.ext
      intro a b
      simp only [RiemannianMetric3.coeff, coeffMatrix, star_trivial]
      exact g.symm _ _ _
    · intro x hx
      have hvx : (∑ a, x a • e a : E3) ≠ 0 := by
        intro h0
        apply hx
        funext b
        have h1 := congrArg (fun u : E3 => u b) h0
        fin_cases b <;> simpa [e, Fin.sum_univ_three, EuclideanSpace.single_apply] using h1
      have hDv := fun h => hvx (hDinj _ h)
      have hpos := g.posDef ((chartAt E3 (φ y)).symm z) _ hDv
      have key : star x ⬝ᵥ (g.coeff (chartAt E3 (φ y)).symm z).mulVec x =
          g.g ((chartAt E3 (φ y)).symm z)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm z (∑ a, x a • e a : E3))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm z (∑ a, x a • e a : E3)) := by
        simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
          ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
          RiemannianMetric3.coeff, coeffMatrix]
        ring
      rw [key]
      exact hpos
  have hdetG : ∀ z ∈ (chartAt E3 (φ y)).target, (g.coeff (chartAt E3 (φ y)).symm z).det ≠ 0 :=
    fun z hz => (hposD z hz).det_pos.ne'
  have hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun z => g.coeff (chartAt E3 (φ y)).symm z a b)
      (chartAt E3 (φ y)).target := fun a b => g.smooth (φ y) a b
  have hΓ := christoffel_contDiffOn _ _ (chartAt E3 (φ y)).open_target hGs hdetG
  have hamb := amb _ _ (chartAt E3 (φ y)).open_target hGs (fun _ _ _ => g.symm _ _ _) hposD hΓ
  have hz₀ : chartAt E3 (φ y) (φ y) ∈ (chartAt E3 (φ y)).target := mem_chart_target E3 (φ y)
  have hR0 : ∀ l i j k : Fin 3,
      riemannLocal (g.coeff (chartAt E3 (φ y)).symm) l i j k (chartAt E3 (φ y) (φ y)) = 0 :=
    weyl _ (hposD _ hz₀) (fun l i j k =>
        riemannLocal (g.coeff (chartAt E3 (φ y)).symm) l i j k (chartAt E3 (φ y) (φ y)))
      (by intro l i j k; simp only [riemannLocal, Fin.sum_univ_three]; ring)
      (hamb _ hz₀)
      (by
        intro j k
        calc ∑ i : Fin 3, riemannLocal (g.coeff (chartAt E3 (φ y)).symm) i i j k
              (chartAt E3 (φ y) (φ y))
            = ricci (g.coeff (chartAt E3 (φ y)).symm) j k (chartAt E3 (φ y) (φ y)) := by
              simp only [ricci, riemannLocal, Fin.sum_univ_three]; ring
          _ = 0 := hRic (φ y) j k)
  
  have h2 : IsOpen (U ∩ φ ⁻¹' (chartAt E3 (φ y)).source) ∧
      ContDiffOn ℝ ∞ (fun w => chartAt E3 (φ y) (φ w))
        (U ∩ φ ⁻¹' (chartAt E3 (φ y)).source) := by
    refine ⟨hφ.continuousOn.isOpen_inter_preimage hU (chartAt E3 (φ y)).open_source, ?_⟩
    have hc : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 (φ y))
        (chartAt E3 (φ y)).source := contMDiffOn_chart
    have hcomp := hc.comp (hφ.mono Set.inter_subset_left) (fun w hw => hw.2)
    exact contMDiffOn_iff_contDiffOn.mp hcomp
  have hyU : y ∈ U ∩ φ ⁻¹' (chartAt E3 (φ y)).source := ⟨hy, mem_chart_source E3 (φ y)⟩
  have hψd : ∀ z ∈ U ∩ φ ⁻¹' (chartAt E3 (φ y)).source,
      DifferentiableAt ℝ (fun w => chartAt E3 (φ y) (φ w)) z := fun z hz =>
    (h2.2.contDiffAt (h2.1.mem_nhds hz)).differentiableAt (by simp)
  have hM1 : ∀ z ∈ U ∩ φ ⁻¹' (chartAt E3 (φ y)).source,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ z =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z))).comp
          (fderiv ℝ (fun w => chartAt E3 (φ y) (φ w)) z) := by
    intro z hz
    have hev : (φ : E3 → M) =ᶠ[𝓝 z]
        ((chartAt E3 (φ y)).symm ∘ (fun w => chartAt E3 (φ y) (φ w))) := by
      filter_upwards [h2.1.mem_nhds hz] with w hw
      exact ((chartAt E3 (φ y)).left_inv hw.2).symm
    rw [hev.mfderiv_eq, mfderiv_comp z
      (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 (φ y))
        ((chartAt E3 (φ y)).map_source hz.2)) (hψd z hz).mdifferentiableAt, mfderiv_eq_fderiv]
  have hM1' : ∀ z ∈ U ∩ φ ⁻¹' (chartAt E3 (φ y)).source, ∀ u : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ z u =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z))
          (fderiv ℝ (fun w => chartAt E3 (φ y) (φ w)) z u) := by
    intro z hz u
    rw [hM1 z hz]
    rfl
  have s1 : ∀ z ∈ U ∩ φ ⁻¹' (chartAt E3 (φ y)).source, ∀ i j : Fin 3,
      g.coeff φ z i j = ∑ a : Fin 3, ∑ b : Fin 3,
        partialDeriv i (fun w => chartAt E3 (φ y) (φ w) a) z *
          g.coeff (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z)) a b *
            partialDeriv j (fun w => chartAt E3 (φ y) (φ w) b) z := by
    intro z hz i j
    have hq : (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z)) = φ z :=
      (chartAt E3 (φ y)).left_inv hz.2
    have hgq : g.g ((chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z))) = g.g (φ z) :=
      congrArg g.g hq
    obtain ⟨D, hD⟩ : ∃ D : E3 →L[ℝ] E3,
        D = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z)) :=
      ⟨_, rfl⟩
    have hΦD : ∀ u : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ z u =
        D (fderiv ℝ (fun w => chartAt E3 (φ y) (φ w)) z u) := by
      intro u
      rw [hM1' z hz u, hD]
      rfl
    have hcD : ∀ a b : Fin 3, g.coeff (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ z)) a b
        = g.g (φ z) (D (e a)) (D (e b)) := by
      intro a b
      rw [← hgq, hD]
      rfl
    have hJ : ∀ k : Fin 3, fderiv ℝ (fun w => chartAt E3 (φ y) (φ w)) z (e k)
        = ∑ d : Fin 3, partialDeriv k (fun w => chartAt E3 (φ y) (φ w) d) z • e d := by
      intro k
      rw [hu (fderiv ℝ (fun w => chartAt E3 (φ y) (φ w)) z (e k))]
      simp only [hcompo _ z (hψd z hz)]
    simp only [hcD]
    show g.g (φ z) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ z (e i))
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ z (e j)) = _
    rw [hΦD, hΦD, hJ i, hJ j]
    simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
      smul_eq_mul]
    simp only [Fin.sum_univ_three]
    ring
  have s3 : ∀ z ∈ U ∩ φ ⁻¹' (chartAt E3 (φ y)).source,
      (Matrix.of fun a i : Fin 3 => partialDeriv i (fun w => chartAt E3 (φ y) (φ w) a) z).det
        ≠ 0 := by
    intro z hz hdet
    obtain ⟨v, hv0, hJv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hdet
    have hinj' : ∀ u : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ z u = 0 → u = 0 := by
      intro u hu0
      exact hinj z hz.1 (hu0.trans (map_zero _).symm)
    have hw : fderiv ℝ (fun w => chartAt E3 (φ y) (φ w)) z (∑ i : Fin 3, v i • e i) = 0 := by
      ext a
      rw [map_sum]
      simp only [map_smul]
      have := congrFun hJv a
      simp only [Matrix.mulVec, dotProduct, Matrix.of_apply, Pi.zero_apply,
        hcompo _ z (hψd z hz)] at this
      simp only [WithLp.ofLp_sum, WithLp.ofLp_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul,
        WithLp.ofLp_zero, Pi.zero_apply]
      rw [← this]
      apply Finset.sum_congr rfl
      intro i _
      ring
    have h0 : (∑ i : Fin 3, v i • e i) = 0 := by
      apply hinj'
      rw [hM1' z hz, hw]
      exact ContinuousLinearMap.map_zero _
    apply hv0
    funext a
    rw [← hcomp_e v a, h0]
    rfl
  
  have hJR : ∀ c' i' j' k' : Fin 3, ∑ m : Fin 3,
      partialDeriv m (fun w => chartAt E3 (φ y) (φ w) c') y *
        riemannLocal (fun w => Matrix.of fun i j : Fin 3 => ∑ a : Fin 3, ∑ b : Fin 3,
          partialDeriv i (fun v => chartAt E3 (φ y) (φ v) a) w *
            g.coeff (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ w)) a b *
              partialDeriv j (fun v => chartAt E3 (φ y) (φ v) b) w) m i' j' k' y = 0 := by
    intro c' i' j' k'
    have h := law (fun w => chartAt E3 (φ y) (φ w)) (g.coeff (chartAt E3 (φ y)).symm)
      (U ∩ φ ⁻¹' (chartAt E3 (φ y)).source) (chartAt E3 (φ y)).target
      h2.1 (chartAt E3 (φ y)).open_target h2.2
      (fun z hz => (chartAt E3 (φ y)).map_source hz.2) hGs (fun _ _ _ => g.symm _ _ _)
      hdetG s3 y hyU c' k' i' j'
    simp only [hR0, zero_mul, Finset.sum_const_zero] at h
    exact h
  have hvec : ∀ i' j' k' : Fin 3, ∀ m : Fin 3,
      riemannLocal (fun w => Matrix.of fun i j : Fin 3 => ∑ a : Fin 3, ∑ b : Fin 3,
          partialDeriv i (fun v => chartAt E3 (φ y) (φ v) a) w *
            g.coeff (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ w)) a b *
              partialDeriv j (fun v => chartAt E3 (φ y) (φ v) b) w) m i' j' k' y = 0 := by
    intro i' j' k' m
    have hz := Matrix.eq_zero_of_mulVec_eq_zero (s3 y hyU)
      (v := fun m => riemannLocal (fun w => Matrix.of fun i j : Fin 3 => ∑ a : Fin 3, ∑ b : Fin 3,
          partialDeriv i (fun v => chartAt E3 (φ y) (φ v) a) w *
            g.coeff (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ w)) a b *
              partialDeriv j (fun v => chartAt E3 (φ y) (φ v) b) w) m i' j' k' y) (by
        funext c'
        simp only [Matrix.mulVec, dotProduct, Matrix.of_apply, Pi.zero_apply]
        exact hJR c' i' j' k')
    exact congrFun hz m
  have heq : g.coeff φ =ᶠ[𝓝 y] (fun w => Matrix.of fun i j : Fin 3 => ∑ a : Fin 3, ∑ b : Fin 3,
      partialDeriv i (fun v => chartAt E3 (φ y) (φ v) a) w *
        g.coeff (chartAt E3 (φ y)).symm (chartAt E3 (φ y) (φ w)) a b *
          partialDeriv j (fun v => chartAt E3 (φ y) (φ v) b) w) := by
    filter_upwards [h2.1.mem_nhds hyU] with z hz
    ext a b
    exact s1 z hz a b
  rw [riemannLocal_congr _ _ y heq l i j k]
  exact hvec i j k l

theorem christoffel_contDiffOn (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U : Set E3) (hU : IsOpen U)
    (hG : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun z => G z a b) U)
    (hdet : ∀ z ∈ U, (G z).det ≠ 0) :
    ∀ k i j : Fin 3, ContDiffOn ℝ ∞ (christoffel G k i j) U :=
by
  classical
  have hdetgen : ∀ F : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => F z i j) U) →
      ContDiffOn ℝ ∞ (fun z => (F z).det) U := by
    intro F hF
    simp only [Matrix.det_apply]
    refine ContDiffOn.sum (fun σ _ => ?_)
    simp only [Units.smul_def, zsmul_eq_mul]
    refine contDiffOn_const.mul ?_
    have hp := contDiffOn_prod' (t := (Finset.univ : Finset (Fin 3)))
      (f := fun i z => F z (σ i) i) (s := U) (n := ∞) (fun i _ => hF _ _)
    refine hp.congr (fun z _ => ?_)
    simp [Finset.prod_apply]
  have hadj : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => (G z).adjugate i j) U := by
    intro i j
    simp only [Matrix.adjugate_apply]
    refine hdetgen (fun z => (G z).updateRow j (Pi.single i 1)) ?_
    intro a b
    by_cases hab : a = j
    · subst hab
      simp only [Matrix.updateRow_self]
      exact contDiffOn_const
    · simp only [Matrix.updateRow_ne hab]
      exact hG a b
  have hinv : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => (G z)⁻¹ i j) U := by
    intro i j
    have heq : (fun z => (G z)⁻¹ i j) =
        fun z => ((G z).det)⁻¹ * (G z).adjugate i j := by
      funext z
      rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
    rw [heq]
    exact ((hdetgen _ hG).inv (fun z hz => hdet z hz)).mul (hadj i j)
  have hpar : ∀ a b c : Fin 3,
      ContDiffOn ℝ ∞ (fun y => partialDeriv c (fun z => G z a b) y) U := by
    intro a b c
    have hD := ((contDiffOn_infty_iff_fderiv_of_isOpen hU).mp (hG a b)).2
    exact hD.clm_apply contDiffOn_const
  intro k i j
  show ContDiffOn ℝ ∞ (fun y => christoffel G k i j y) U
  unfold christoffel
  exact contDiffOn_const.mul (ContDiffOn.sum (fun l _ =>
    (hinv k l).mul (((hpar j l i).add (hpar i l j)).sub (hpar i j l))))

theorem christoffel_symm_compat (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U : Set E3) (hU : IsOpen U)
    (hsymm : ∀ z ∈ U, ∀ a b : Fin 3, G z a b = G z b a)
    (hdet : ∀ z ∈ U, (G z).det ≠ 0) :
    ∀ z ∈ U, (∀ m k i : Fin 3, christoffel G m k i z = christoffel G m i k z) ∧
      ∀ k i j : Fin 3, partialDeriv k (fun w => G w i j) z =
        ∑ m : Fin 3, (christoffel G m k i z * G z m j + christoffel G m k j z * G z i m) :=
by
  intro z hz
  have hUz : U ∈ 𝓝 z := hU.mem_nhds hz
  
  have s1 : ∀ k i j : Fin 3, partialDeriv k (fun w => G w i j) z =
      partialDeriv k (fun w => G w j i) z := by
    intro k i j
    have hev : (fun w => G w i j) =ᶠ[𝓝 z] (fun w => G w j i) :=
      Filter.eventually_of_mem hUz (fun w hw => hsymm w hw i j)
    unfold partialDeriv
    rw [hev.fderiv_eq]
  
  have s3 : ∀ j l : Fin 3, ∑ m : Fin 3, (G z)⁻¹ m l * G z m j = if j = l then 1 else 0 := by
    intro j l
    have hu : IsUnit (G z).det := (hdet z hz).isUnit
    have h1 := Matrix.mul_nonsing_inv (G z) hu
    have h2 := congrFun (congrFun h1 j) l
    rw [Matrix.mul_apply, Matrix.one_apply] at h2
    rw [← h2]
    refine Finset.sum_congr rfl (fun m _ => ?_)
    rw [hsymm z hz m j]
    ring
  
  have key : ∀ (j : Fin 3) (c : Fin 3 → ℝ),
      ∑ m : Fin 3, ((1 / 2 : ℝ) * ∑ l : Fin 3, (G z)⁻¹ m l * c l) * G z m j = (1 / 2) * c j := by
    intro j c
    calc ∑ m : Fin 3, ((1 / 2 : ℝ) * ∑ l : Fin 3, (G z)⁻¹ m l * c l) * G z m j
        = (1 / 2 : ℝ) * ∑ l : Fin 3, (∑ m : Fin 3, (G z)⁻¹ m l * G z m j) * c l := by
          simp only [Fin.sum_univ_three]
          ring
      _ = (1 / 2) * c j := by
          simp_rw [s3 j]
          simp
  have s4 : ∀ k i j : Fin 3, ∑ m : Fin 3, christoffel G m k i z * G z m j =
      (1 / 2 : ℝ) * (partialDeriv k (fun w => G w i j) z + partialDeriv i (fun w => G w k j) z
        - partialDeriv j (fun w => G w k i) z) := by
    intro k i j
    have := key j (fun l => partialDeriv k (fun w => G w i l) z +
      partialDeriv i (fun w => G w k l) z - partialDeriv l (fun w => G w k i) z)
    unfold christoffel
    exact this
  refine ⟨fun m k i => ?_, fun k i j => ?_⟩
  · unfold christoffel
    congr 1
    refine Finset.sum_congr rfl (fun l _ => ?_)
    rw [s1 l k i]
    ring
  · rw [Finset.sum_add_distrib]
    have h2 : ∑ m : Fin 3, christoffel G m k j z * G z i m =
        ∑ m : Fin 3, christoffel G m k j z * G z m i :=
      Finset.sum_congr rfl (fun m _ => by rw [hsymm z hz i m])
    rw [h2, s4 k i j, s4 k j i, s1 k j i]
    ring

theorem exists_gram_frame (S : Matrix (Fin 3) (Fin 3) ℝ) (hS : ∀ a b : Fin 3, S a b = S b a)
    (hpos : ∀ v : E3, v ≠ 0 → 0 < ∑ a : Fin 3, ∑ b : Fin 3, v a * S a b * v b) :
    ∃ f0 : Fin 3 → E3, ∀ i j : Fin 3, @inner ℝ E3 _ (f0 i) (f0 j) = S i j :=
by
  classical
  have hpsd : S.PosSemidef := by
    rw [Matrix.posSemidef_iff_dotProduct_mulVec]
    refine ⟨Matrix.IsHermitian.ext fun i j => by simp [hS j i], fun x => ?_⟩
    have hx : star x ⬝ᵥ S.mulVec x = ∑ a : Fin 3, ∑ b : Fin 3, x a * S a b * x b := by
      simp only [star_trivial, dotProduct, Matrix.mulVec, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro b _
      ring
    rw [hx]
    by_cases h0 : x = 0
    · subst h0
      simp
    · have hv : (WithLp.toLp 2 x : E3) ≠ 0 := by
        intro h
        apply h0
        simpa using congrArg WithLp.ofLp h
      exact le_of_lt (hpos _ hv)
  obtain ⟨B, hB⟩ := Matrix.posSemidef_iff_eq_conjTranspose_mul_self.mp hpsd
  refine ⟨fun i => WithLp.toLp 2 (fun k => B k i), fun i j => ?_⟩
  rw [EuclideanSpace.inner_toLp_toLp, hB, Matrix.mul_apply]
  simp only [dotProduct, Matrix.conjTranspose_apply, star_trivial, Pi.star_apply]
  exact Finset.sum_congr rfl fun k _ => mul_comm _ _

theorem radial_frame_exists (U : Set E3) (hU : IsOpen U) (hUc : Convex ℝ U) (y0 : E3) (hy0 : y0 ∈ U)
    (Γ : Fin 3 → Fin 3 → Fin 3 → E3 → ℝ) (hΓ : ∀ m k i : Fin 3, ContDiffOn ℝ ∞ (Γ m k i) U)
    (f0 : Fin 3 → E3) :
    ∃ (f : Fin 3 → E3 → E3) (ψ : E3 → E3),
      (∀ i : Fin 3, ContDiffOn ℝ ∞ (f i) U) ∧ ContDiffOn ℝ ∞ ψ U ∧
      (∀ i : Fin 3, f i y0 = f0 i) ∧
      (∀ z ∈ U, ∀ i : Fin 3, fderiv ℝ (f i) z (z - y0) =
        ∑ m : Fin 3, (∑ k : Fin 3, (z - y0) k * Γ m k i z) • f m z) ∧
      (∀ z ∈ U, fderiv ℝ ψ z (z - y0) = ∑ k : Fin 3, (z - y0) k • f k z) :=
by
  classical
  
  have s1 : ∀ (A : ℝ → (E3 × (Fin 3 → E3)) →L[ℝ] (E3 × (Fin 3 → E3))),
      ContinuousOn A (Set.Icc 0 1) → ∀ (v w : ℝ → E3 × (Fin 3 → E3)),
      (∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivWithinAt v (A t (v t)) (Set.Icc 0 1) t) →
      (∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivWithinAt w (A t (w t)) (Set.Icc 0 1) t) →
      v 0 = w 0 → ∀ t ∈ Set.Icc (0:ℝ) 1, v t = w t := by
    intro A hA v w hv hw h0
    obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn hA
    have hL : ∀ t ∈ Set.Ico (0:ℝ) 1,
        LipschitzOnWith (Real.toNNReal C) (fun x => A t x) Set.univ := by
      intro t ht
      refine ((A t).lipschitz.weaken ?_).lipschitzOnWith
      rw [← NNReal.coe_le_coe, coe_nnnorm, Real.coe_toNNReal']
      exact le_max_of_le_left (hC t (Set.Ico_subset_Icc_self ht))
    have hvc : ContinuousOn v (Set.Icc 0 1) := fun t ht => (hv t ht).continuousWithinAt
    have hwc : ContinuousOn w (Set.Icc 0 1) := fun t ht => (hw t ht).continuousWithinAt
    have key := ODE_solution_unique_of_mem_Icc_right (v := fun t x => A t x)
      (s := fun _ => Set.univ) hL hvc
      (fun t ht => (hv t (Set.Ico_subset_Icc_self ht)).mono_of_mem_nhdsWithin
        (Icc_mem_nhdsGE_of_mem ht))
      (fun _ _ => Set.mem_univ _) hwc
      (fun t ht => (hw t (Set.Ico_subset_Icc_self ht)).mono_of_mem_nhdsWithin
        (Icc_mem_nhdsGE_of_mem ht))
      (fun _ _ => Set.mem_univ _) h0
    exact fun t ht => key ht
  
  have s2 : ∀ (O : Set (ℝ × E3)), IsOpen O →
      ∀ (A : ℝ × E3 → (E3 × (Fin 3 → E3)) →L[ℝ] (E3 × (Fin 3 → E3))), ContDiffOn ℝ ∞ A O →
      ∀ (y1 : E3), (∀ t ∈ Set.Icc (0:ℝ) 1, (t, y1) ∈ O) →
      ∃ r M : ℝ, 0 < r ∧ 0 ≤ M ∧ ∀ R : ℝ, 0 < R →
        ∃ X : ℝ × E3 × (E3 × (Fin 3 → E3)) → ℝ × E3 × (E3 × (Fin 3 → E3)),
          ContDiff ℝ ∞ X ∧ HasCompactSupport X ∧
          (∀ p, (X p).2.1 = 0) ∧
          (∀ p, 0 ≤ (X p).1 ∧ (X p).1 ≤ 1) ∧
          (∀ p, ‖(X p).2.2‖ ≤ M * ‖p.2.2‖) ∧
          (∀ s y v, s ∈ Set.Icc (0:ℝ) 1 → y ∈ Metric.closedBall y1 r → ‖v‖ ≤ R →
            X (s, y, v) = (1, 0, A (s, y) v)) := by
    intro O hO A hA y1 hy1
    have hK0 : IsCompact (Set.Icc (0:ℝ) 1 ×ˢ ({y1} : Set E3)) :=
      isCompact_Icc.prod isCompact_singleton
    have hK0O : Set.Icc (0:ℝ) 1 ×ˢ ({y1} : Set E3) ⊆ O := by
      rintro ⟨t, y⟩ ⟨ht, hy⟩
      rw [Set.mem_singleton_iff] at hy
      subst hy
      exact hy1 t ht
    obtain ⟨δ, hδ, hδO⟩ := hK0.exists_cthickening_subset_open hO hK0O
    have hBx : closedBall (1/2 : ℝ) (1/2 + δ) ×ˢ closedBall y1 δ ⊆ O := by
      rintro ⟨s, y⟩ ⟨hs, hy⟩
      apply hδO
      rw [mem_closedBall, Real.dist_eq, abs_le] at hs
      have hex : ∃ t ∈ Set.Icc (0:ℝ) 1, |s - t| ≤ δ := by
        rcases le_or_gt s 0 with h | h
        · exact ⟨0, ⟨le_rfl, zero_le_one⟩, by rw [abs_le]; constructor <;> linarith⟩
        rcases le_or_gt s 1 with h' | h'
        · exact ⟨s, ⟨h.le, h'⟩, by rw [sub_self, abs_zero]; exact hδ.le⟩
        · exact ⟨1, ⟨zero_le_one, le_rfl⟩, by rw [abs_le]; constructor <;> linarith⟩
      obtain ⟨t, ht, hst⟩ := hex
      refine mem_cthickening_of_dist_le (s, y) (t, y1) δ _ ⟨ht, rfl⟩ ?_
      rw [Prod.dist_eq, Real.dist_eq]
      exact max_le hst hy
    have hBxc : IsCompact (closedBall (1/2 : ℝ) (1/2 + δ) ×ˢ closedBall y1 δ) :=
      (isCompact_closedBall _ _).prod (isCompact_closedBall _ _)
    obtain ⟨C, hC⟩ := hBxc.exists_bound_of_continuousOn (hA.continuousOn.mono hBx)
    refine ⟨δ / 2, max C 0, by positivity, le_max_right _ _, ?_⟩
    intro R hR
    let χ1 : ContDiffBump (1/2 : ℝ) := ⟨1/2 + δ/2, 1/2 + δ, by positivity, by linarith⟩
    let χ2 : ContDiffBump y1 := ⟨δ/2, δ, by positivity, by linarith⟩
    let χ3 : ContDiffBump (0 : E3 × (Fin 3 → E3)) := ⟨R, 2 * R, hR, by linarith⟩
    let χ : ℝ × E3 × (E3 × (Fin 3 → E3)) → ℝ := fun p => χ1 p.1 * χ2 p.2.1 * χ3 p.2.2
    let X : ℝ × E3 × (E3 × (Fin 3 → E3)) → ℝ × E3 × (E3 × (Fin 3 → E3)) :=
      fun p => χ p • ((1:ℝ), (0:E3), A (p.1, p.2.1) p.2.2)
    have hχs : ContDiff ℝ ∞ χ :=
      ((χ1.contDiff.comp contDiff_fst).mul (χ2.contDiff.comp contDiff_snd.fst)).mul
        (χ3.contDiff.comp contDiff_snd.snd)
    have hsupp : ∀ q, χ q ≠ 0 → q.1 ∈ ball (1/2 : ℝ) (1/2 + δ) ∧ q.2.1 ∈ ball y1 δ ∧
        q.2.2 ∈ ball (0 : E3 × (Fin 3 → E3)) (2 * R) := by
      intro q hq
      simp only [χ, ne_eq, mul_eq_zero, not_or] at hq
      obtain ⟨⟨h1, h2⟩, h3⟩ := hq
      refine ⟨?_, ?_, ?_⟩
      · have := Function.mem_support.mpr h1
        rwa [χ1.support_eq] at this
      · have := Function.mem_support.mpr h2
        rwa [χ2.support_eq] at this
      · have := Function.mem_support.mpr h3
        rwa [χ3.support_eq] at this
    have hχ0 : ∀ q, 0 ≤ χ q := fun q => mul_nonneg (mul_nonneg χ1.nonneg χ2.nonneg) χ3.nonneg
    have hχ1 : ∀ q, χ q ≤ 1 := fun q =>
      mul_le_one₀ (mul_le_one₀ χ1.le_one χ2.nonneg χ2.le_one) χ3.nonneg χ3.le_one
    refine ⟨X, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · rw [contDiff_iff_contDiffAt]
      intro p
      by_cases hp : (p.1, p.2.1) ∈ O
      · have hAp : ContDiffAt ℝ ∞ A (p.1, p.2.1) := hA.contDiffAt (hO.mem_nhds hp)
        have hg : ContDiffAt ℝ ∞ (fun q : ℝ × E3 × (E3 × (Fin 3 → E3)) =>
            ((1:ℝ), (0:E3), A (q.1, q.2.1) q.2.2)) p :=
          contDiffAt_const.prodMk (contDiffAt_const.prodMk
            ((hAp.comp p (contDiff_fst.prodMk contDiff_snd.fst).contDiffAt).clm_apply
              contDiff_snd.snd.contDiffAt))
        exact hχs.contDiffAt.smul hg
      · have hnot : p.1 ∉ closedBall (1/2 : ℝ) (1/2 + δ) ∨ p.2.1 ∉ closedBall y1 δ := by
          by_contra h
          push_neg at h
          exact hp (hBx ⟨h.1, h.2⟩)
        have hev : X =ᶠ[𝓝 p] fun _ => 0 := by
          rcases hnot with h | h
          · have hop : IsOpen {q : ℝ × E3 × (E3 × (Fin 3 → E3)) |
                q.1 ∉ closedBall (1/2 : ℝ) (1/2 + δ)} :=
              isClosed_closedBall.isOpen_compl.preimage continuous_fst
            filter_upwards [hop.mem_nhds h] with q hq
            have hχq : χ q = 0 := by
              by_contra hc
              exact hq (ball_subset_closedBall (hsupp q hc).1)
            simp only [X, hχq, zero_smul]
          · have hop : IsOpen {q : ℝ × E3 × (E3 × (Fin 3 → E3)) |
                q.2.1 ∉ closedBall y1 δ} :=
              isClosed_closedBall.isOpen_compl.preimage continuous_snd.fst
            filter_upwards [hop.mem_nhds h] with q hq
            have hχq : χ q = 0 := by
              by_contra hc
              exact hq (ball_subset_closedBall (hsupp q hc).2.1)
            simp only [X, hχq, zero_smul]
        exact contDiffAt_const.congr_of_eventuallyEq hev
    · refine HasCompactSupport.intro ((isCompact_closedBall (1/2 : ℝ) (1/2 + δ)).prod
        ((isCompact_closedBall y1 δ).prod
          (isCompact_closedBall (0 : E3 × (Fin 3 → E3)) (2 * R)))) ?_
      intro q hq
      by_cases hc : χ q = 0
      · simp only [X, hc, zero_smul]
      · exfalso
        obtain ⟨h1, h2, h3⟩ := hsupp q hc
        exact hq ⟨ball_subset_closedBall h1, ball_subset_closedBall h2,
          ball_subset_closedBall h3⟩
    · intro p
      simp only [X, Prod.smul_snd, Prod.smul_fst, smul_zero]
    · intro p
      simp only [X, Prod.smul_fst, smul_eq_mul, mul_one]
      exact ⟨hχ0 p, hχ1 p⟩
    · intro p
      simp only [X, Prod.smul_snd]
      by_cases hc : χ p = 0
      · rw [hc, zero_smul, norm_zero]
        exact mul_nonneg (le_max_right _ _) (norm_nonneg _)
      · obtain ⟨h1, h2, -⟩ := hsupp p hc
        have hmem : (p.1, p.2.1) ∈ closedBall (1/2 : ℝ) (1/2 + δ) ×ˢ closedBall y1 δ :=
          ⟨ball_subset_closedBall h1, ball_subset_closedBall h2⟩
        have hAb : ‖A (p.1, p.2.1)‖ ≤ max C 0 := (hC _ hmem).trans (le_max_left _ _)
        rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (hχ0 p)]
        calc χ p * ‖A (p.1, p.2.1) p.2.2‖ ≤ 1 * (max C 0 * ‖p.2.2‖) := by
              apply mul_le_mul (hχ1 p) _ (norm_nonneg _) zero_le_one
              exact ((A (p.1, p.2.1)).le_opNorm p.2.2).trans
                (mul_le_mul_of_nonneg_right hAb (norm_nonneg _))
          _ = max C 0 * ‖p.2.2‖ := one_mul _
    · intro s y v hs hy hv
      have h1 : χ1 s = 1 := by
        apply χ1.one_of_mem_closedBall
        show s ∈ closedBall (1/2 : ℝ) (1/2 + δ/2)
        rw [mem_closedBall, Real.dist_eq, abs_le]
        constructor <;> linarith [hs.1, hs.2]
      have h2 : χ2 y = 1 := χ2.one_of_mem_closedBall hy
      have h3 : χ3 v = 1 := χ3.one_of_mem_closedBall (mem_closedBall_zero_iff.mpr hv)
      simp only [X, χ, h1, h2, h3, mul_one, one_smul]
  
  have s3 : ∀ (A : ℝ × E3 → (E3 × (Fin 3 → E3)) →L[ℝ] (E3 × (Fin 3 → E3)))
      (X : ℝ × E3 × (E3 × (Fin 3 → E3)) → ℝ × E3 × (E3 × (Fin 3 → E3)))
      (M R : ℝ) (y : E3) (u0 : E3 × (Fin 3 → E3)), 0 ≤ M → ‖u0‖ * Real.exp M ≤ R →
      (∀ p, (X p).2.1 = 0) → (∀ p, 0 ≤ (X p).1 ∧ (X p).1 ≤ 1) →
      (∀ p, ‖(X p).2.2‖ ≤ M * ‖p.2.2‖) →
      (∀ s v, s ∈ Set.Icc (0:ℝ) 1 → ‖v‖ ≤ R → X (s, y, v) = (1, 0, A (s, y) v)) →
      ∀ (γ : ℝ → ℝ × E3 × (E3 × (Fin 3 → E3))), γ 0 = (0, y, u0) →
      (∀ t, HasDerivAt γ (X (γ t)) t) →
      ∀ t ∈ Set.Icc (0:ℝ) 1,
        HasDerivWithinAt (fun s => (γ s).2.2) (A (t, y) ((γ t).2.2)) (Set.Icc 0 1) t := by
    intro A X M R y u0 hM hR hX1 hX2 hX3 hX4 γ hγ0 hγ
    have hσ : ∀ t, HasDerivAt (fun s => (γ s).1) ((X (γ t)).1) t := fun t =>
      (ContinuousLinearMap.fst ℝ ℝ (E3 × (E3 × (Fin 3 → E3)))).hasFDerivAt.comp_hasDerivAt t
        (hγ t)
    have hη : ∀ t, HasDerivAt (fun s => (γ s).2.1) ((X (γ t)).2.1) t := fun t =>
      ((ContinuousLinearMap.fst ℝ E3 (E3 × (Fin 3 → E3))).comp
        (ContinuousLinearMap.snd ℝ ℝ (E3 × (E3 × (Fin 3 → E3))))).hasFDerivAt.comp_hasDerivAt t
          (hγ t)
    have hv : ∀ t, HasDerivAt (fun s => (γ s).2.2) ((X (γ t)).2.2) t := fun t =>
      ((ContinuousLinearMap.snd ℝ E3 (E3 × (Fin 3 → E3))).comp
        (ContinuousLinearMap.snd ℝ ℝ (E3 × (E3 × (Fin 3 → E3))))).hasFDerivAt.comp_hasDerivAt t
          (hγ t)
    have hηc : ∀ t, (γ t).2.1 = y := by
      intro t
      have := is_const_of_deriv_eq_zero (fun t => (hη t).differentiableAt)
        (fun t => by rw [(hη t).deriv, hX1]) t 0
      rw [this, hγ0]
    have hgr : ∀ t ∈ Set.Icc (0:ℝ) 1, ‖(γ t).2.2‖ ≤ R := by
      intro t ht
      have h := norm_le_gronwallBound_of_norm_deriv_right_le (f := fun s => (γ s).2.2)
        (f' := fun s => (X (γ s)).2.2) (δ := ‖u0‖) (K := M) (ε := 0) (a := 0) (b := 1)
        (fun s _ => (hv s).continuousAt.continuousWithinAt)
        (fun s _ => (hv s).hasDerivWithinAt)
        (le_of_eq (by simp only [hγ0]))
        (fun s _ => by rw [add_zero]; exact hX3 _) t ht
      rw [gronwallBound_ε0, sub_zero] at h
      refine h.trans (le_trans ?_ hR)
      exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (mul_le_of_le_one_right hM ht.2))
        (norm_nonneg _)
    have hmono : Monotone (fun s => (γ s).1) :=
      monotone_of_deriv_nonneg (fun t => (hσ t).differentiableAt)
        (fun t => by rw [(hσ t).deriv]; exact (hX2 _).1)
    have hanti : Antitone (fun s => (γ s).1 - s) := by
      have hd : ∀ t, HasDerivAt (fun s => (γ s).1 - s) ((X (γ t)).1 - 1) t :=
        fun t => (hσ t).sub (hasDerivAt_id' t)
      exact antitone_of_deriv_nonpos (fun t => (hd t).differentiableAt)
        (fun t => by rw [(hd t).deriv]; linarith [(hX2 (γ t)).2])
    have hγ00 : (γ 0).1 = 0 := by rw [hγ0]
    have hXγ : ∀ t ∈ Set.Icc (0:ℝ) 1, X (γ t) = (1, 0, A ((γ t).1, y) ((γ t).2.2)) := by
      intro t ht
      have h1 : 0 ≤ (γ t).1 := by have := hmono ht.1; simp only at this; linarith
      have h2 : (γ t).1 - t ≤ 0 := by
        have := hanti ht.1; simp only at this; linarith
      have hγt : γ t = ((γ t).1, y, (γ t).2.2) := by
        ext <;> simp [hηc t]
      rw [hγt]
      exact hX4 _ _ ⟨h1, by linarith [ht.2]⟩ (hgr t ht)
    have hσt : ∀ t ∈ Set.Icc (0:ℝ) 1, (γ t).1 = t := by
      intro t ht
      have hd : ∀ s ∈ Set.Icc (0:ℝ) 1,
          HasDerivWithinAt (fun s => (γ s).1 - s) (0:ℝ) (Set.Icc 0 1) s := by
        intro s hs
        have := ((hσ s).sub (hasDerivAt_id' s)).hasDerivWithinAt (s := Set.Icc 0 1)
        rw [hXγ s hs] at this
        simpa using this
      have := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le hd
        (fun _ _ => (le_of_eq norm_zero : ‖(0:ℝ)‖ ≤ 0))
        (convex_Icc 0 1) ⟨le_refl 0, zero_le_one⟩ ht
      simp only [zero_mul, hγ00, sub_zero, norm_le_zero_iff] at this
      linarith
    intro t ht
    have := (hv t).hasDerivWithinAt (s := Set.Icc 0 1)
    rw [hXγ t ht, hσt t ht] at this
    exact this
  
  have s6 : ∀ (B : Fin 3 → E3 → (E3 × (Fin 3 → E3)) →L[ℝ] (E3 × (Fin 3 → E3))),
      (∀ k : Fin 3, ContinuousOn (B k) U) →
      ∀ (u0 : E3 × (Fin 3 → E3)) (u : ℝ → E3 → E3 × (Fin 3 → E3)), (∀ y ∈ U, u 0 y = u0) →
      (∀ y ∈ U, ∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivWithinAt (fun s => u s y)
        ((∑ k : Fin 3, (y - y0) k • B k (y0 + t • (y - y0))) (u t y)) (Set.Icc 0 1) t) →
      DifferentiableOn ℝ (fun y => u 1 y) U →
      ∀ z ∈ U, fderiv ℝ (fun y => u 1 y) z (z - y0) =
        (∑ k : Fin 3, (z - y0) k • B k z) (u 1 z) := by
    intro B hB u0 u hu0 hu hu1 z hz
    have hray : ∀ τ ∈ Set.Icc (0:ℝ) 1, y0 + τ • (z - y0) ∈ U :=
      fun τ hτ => hUc.add_smul_sub_mem hy0 hz hτ
    have hrep : ∀ t ∈ Set.Icc (0:ℝ) 1, u t z = u 1 (y0 + t • (z - y0)) := by
      intro t ht
      have hyt : y0 + t • (z - y0) ∈ U := hray t ht
      have hsub : y0 + t • (z - y0) - y0 = t • (z - y0) := by abel
      have hmaps : Set.MapsTo (fun x : ℝ => x * t) (Set.Icc 0 1) (Set.Icc 0 1) :=
        fun s hs => ⟨mul_nonneg hs.1 ht.1, mul_le_one₀ hs.2 ht.1 ht.2⟩
      have hv : ∀ s ∈ Set.Icc (0:ℝ) 1, HasDerivWithinAt (fun s => u (s * t) z)
          ((∑ k : Fin 3, (y0 + t • (z - y0) - y0) k •
            B k (y0 + s • (y0 + t • (z - y0) - y0))) (u (s * t) z)) (Set.Icc 0 1) s := by
        intro s hs
        have h := (hu z hz (s * t) (hmaps hs)).scomp s
          (hasDerivAt_mul_const t).hasDerivWithinAt hmaps
        convert h using 1
        rw [hsub, ← ContinuousLinearMap.smul_apply, Finset.smul_sum]
        congr 1
        refine Finset.sum_congr rfl (fun k _ => ?_)
        rw [smul_smul, smul_smul, PiLp.smul_apply, smul_eq_mul]
      have hcont : ContinuousOn (fun s : ℝ => ∑ k : Fin 3, (y0 + t • (z - y0) - y0) k •
          B k (y0 + s • (y0 + t • (z - y0) - y0))) (Set.Icc 0 1) := by
        refine continuousOn_finset_sum _ (fun k _ => continuousOn_const.smul ?_)
        exact (hB k).comp (by fun_prop) (fun s hs => hUc.add_smul_sub_mem hy0 hyt hs)
      have h := s1 _ hcont (fun s => u (s * t) z) (fun s => u s (y0 + t • (z - y0))) hv
        (hu _ hyt) (by simp only [zero_mul]; rw [hu0 z hz, hu0 _ hyt]) 1
        ⟨zero_le_one, le_rfl⟩
      simpa using h
    have h1 := hu z hz 1 ⟨zero_le_one, le_rfl⟩
    have hd : DifferentiableAt ℝ (fun y => u 1 y) z := hu1.differentiableAt (hU.mem_nhds hz)
    have hc1 : y0 + (1:ℝ) • (z - y0) = z := by simp
    have hF : HasFDerivAt (fun y => u 1 y) (fderiv ℝ (fun y => u 1 y) z)
        (y0 + (1:ℝ) • (z - y0)) := by
      rw [hc1]; exact hd.hasFDerivAt
    have hc : HasDerivWithinAt (fun t : ℝ => y0 + t • (z - y0)) (z - y0) (Set.Icc 0 1) 1 :=
      (((hasDerivAt_id' (1:ℝ)).smul_const (z - y0)).const_add y0).hasDerivWithinAt.congr_deriv
        (one_smul _ _)
    have h2 := (hF.comp_hasDerivWithinAt 1 hc).congr_of_mem (fun t ht => hrep t ht)
      ⟨zero_le_one, le_rfl⟩
    have := (uniqueDiffOn_Icc zero_lt_one 1 ⟨zero_le_one, le_rfl⟩).eq_deriv _ h2 h1
    rw [this, hc1]
  
  obtain ⟨B, hBs, hBf⟩ : ∃ B : Fin 3 → E3 → (E3 × (Fin 3 → E3)) →L[ℝ] (E3 × (Fin 3 → E3)),
      (∀ k : Fin 3, ContDiffOn ℝ ∞ (B k) U) ∧
      ∀ (k : Fin 3) (w p : E3) (g : Fin 3 → E3),
        B k w (p, g) = (g k, fun i => ∑ m : Fin 3, Γ m k i w • g m) := by
    let pr : Fin 3 → (E3 × (Fin 3 → E3)) →L[ℝ] E3 := fun m =>
      (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 3 => E3) m).comp
        (ContinuousLinearMap.snd ℝ E3 (Fin 3 → E3))
    let io : Fin 3 → E3 →L[ℝ] (E3 × (Fin 3 → E3)) := fun i =>
      (ContinuousLinearMap.inr ℝ E3 (Fin 3 → E3)).comp
        (ContinuousLinearMap.single ℝ (fun _ : Fin 3 => E3) i)
    refine ⟨fun k w => (ContinuousLinearMap.inl ℝ E3 (Fin 3 → E3)).comp (pr k) +
        ∑ i : Fin 3, ∑ m : Fin 3, Γ m k i w • (io i).comp (pr m), ?_, ?_⟩
    · intro k
      exact contDiffOn_const.add (ContDiffOn.sum fun i _ => ContDiffOn.sum fun m _ =>
        (hΓ m k i).smul contDiffOn_const)
    · intro k w p g
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.sum_apply,
        ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply,
        ContinuousLinearMap.inl_apply, pr, io, ContinuousLinearMap.coe_snd',
        ContinuousLinearMap.proj_apply, ContinuousLinearMap.inr_apply]
      refine Prod.ext ?_ ?_
      · simp [Prod.fst_sum]
      · funext i
        simp only [Prod.snd_add, Prod.snd_sum, Prod.smul_snd, Finset.sum_apply, Pi.add_apply,
          Pi.smul_apply, Pi.zero_apply, zero_add]
        rw [Finset.sum_eq_single i]
        · refine Finset.sum_congr rfl (fun m _ => ?_)
          simp
        · intro b _ hb
          refine Finset.sum_eq_zero (fun m _ => ?_)
          simp [Ne.symm hb]
        · simp
  
  let O : Set (ℝ × E3) := {p | y0 + p.1 • (p.2 - y0) ∈ U}
  have hO : IsOpen O := hU.preimage (by fun_prop)
  let A : ℝ × E3 → (E3 × (Fin 3 → E3)) →L[ℝ] (E3 × (Fin 3 → E3)) :=
    fun p => ∑ k : Fin 3, (p.2 - y0) k • B k (y0 + p.1 • (p.2 - y0))
  have hA : ContDiffOn ℝ ∞ A O := by
    refine ContDiffOn.sum (fun k _ => ?_)
    have hc : ContDiff ℝ ∞ (fun p : ℝ × E3 => (p.2 - y0) k) :=
      (EuclideanSpace.proj k : E3 →L[ℝ] ℝ).contDiff.comp (contDiff_snd.sub contDiff_const)
    have hb : ContDiffOn ℝ ∞ (fun p : ℝ × E3 => B k (y0 + p.1 • (p.2 - y0))) O :=
      (hBs k).comp
        (by fun_prop : ContDiff ℝ ∞ (fun p : ℝ × E3 => y0 + p.1 • (p.2 - y0))).contDiffOn
        (fun p hp => hp)
    exact hc.contDiffOn.smul hb
  have hOP : ∀ y ∈ U, ∀ t ∈ Set.Icc (0:ℝ) 1, (t, y) ∈ O :=
    fun y hy t ht => hUc.add_smul_sub_mem hy0 hy ht
  let u0 : E3 × (Fin 3 → E3) := (0, f0)
  let Sol : E3 → (ℝ → E3 × (Fin 3 → E3)) → Prop := fun y v =>
    v 0 = u0 ∧ ∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivWithinAt v (A (t, y) (v t)) (Set.Icc 0 1) t
  
  have huniq : ∀ y ∈ U, ∀ v w : ℝ → E3 × (Fin 3 → E3), Sol y v → Sol y w → v 1 = w 1 := by
    intro y hy v w hv hw
    have hcA : ContinuousOn (fun t : ℝ => A (t, y)) (Set.Icc 0 1) :=
      hA.continuousOn.comp (Continuous.continuousOn (by fun_prop))
        (fun t ht => hOP y hy t ht)
    exact s1 _ hcA v w hv.2 hw.2 (hv.1.trans hw.1.symm) 1 ⟨zero_le_one, le_rfl⟩
  
  have hloc : ∀ y1 ∈ U, ∃ r : ℝ, 0 < r ∧ ∃ W : E3 → ℝ → E3 × (Fin 3 → E3),
      ContDiff ℝ ∞ (fun y => W y 1) ∧ ∀ y ∈ ball y1 r, Sol y (W y) := by
    intro y1 hy1
    obtain ⟨r, M, hr, hM, hX⟩ := s2 O hO A hA y1 (hOP y1 hy1)
    obtain ⟨X, hXs, hXc, hX1, hX2, hX3, hX4⟩ := hX (‖u0‖ * Real.exp M + 1) (by positivity)
    obtain ⟨Fl, hFl, hFl0, hFlD⟩ := ode_flow_contDiff X hXs hXc
    refine ⟨r, hr, fun y t => (Fl t ((0:ℝ), y, u0)).2.2, ?_, ?_⟩
    · exact (hFl.comp (contDiff_const.prodMk
        (contDiff_const.prodMk (contDiff_id.prodMk contDiff_const)))).snd.snd
    · intro y hy
      refine ⟨?_, ?_⟩
      · show (Fl 0 ((0:ℝ), y, u0)).2.2 = u0
        rw [hFl0]
      · exact s3 A X M (‖u0‖ * Real.exp M + 1) y u0 hM (by linarith) hX1 hX2 hX3
          (fun s v hs hv => hX4 s y v hs (ball_subset_closedBall hy) hv)
          (fun s => Fl s ((0:ℝ), y, u0)) (hFl0 _) (fun t => hFlD t _)
  
  have hex : ∀ y ∈ U, ∃ v : ℝ → E3 × (Fin 3 → E3), Sol y v := by
    intro y hy
    obtain ⟨r, hr, W, -, hW⟩ := hloc y hy
    exact ⟨W y, hW y (mem_ball_self hr)⟩
  choose! uu huu using hex
  have hWs : ContDiffOn ℝ ∞ (fun y => uu y 1) U := by
    intro y1 hy1
    obtain ⟨r, hr, W, hW1, hW⟩ := hloc y1 hy1
    refine (hW1.contDiffAt.congr_of_eventuallyEq ?_).contDiffWithinAt
    filter_upwards [Filter.inter_mem (ball_mem_nhds y1 hr) (hU.mem_nhds hy1)] with y hy
    exact huniq y hy.2 _ _ (huu y hy.2) (hW y hy.1)
  
  have hrad := s6 B (fun k => (hBs k).continuousOn) u0 (fun t y => uu y t)
    (fun y hy => (huu y hy).1) (fun y hy t ht => (huu y hy).2 t ht)
    (hWs.differentiableOn (by simp))
  
  have key : ∀ (z p : E3) (g : Fin 3 → E3), (∑ k : Fin 3, (z - y0) k • B k z) (p, g) =
      (∑ k : Fin 3, (z - y0) k • g k,
        fun i => ∑ m : Fin 3, (∑ k : Fin 3, (z - y0) k * Γ m k i z) • g m) := by
    intro z p g
    simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply, hBf]
    refine Prod.ext ?_ ?_
    · simp only [Prod.fst_sum, Prod.smul_fst]
    · funext i
      rw [Prod.snd_sum, Finset.sum_apply]
      simp only [Prod.smul_snd, Pi.smul_apply, Finset.smul_sum, smul_smul, Finset.sum_smul]
      exact Finset.sum_comm
  have hu1y0 : uu y0 1 = u0 := by
    have hc : Sol y0 (fun _ => u0) := by
      refine ⟨rfl, fun t _ => (hasDerivWithinAt_const t _ u0).congr_deriv ?_⟩
      simp [A]
    exact huniq y0 hy0 (uu y0) (fun _ => u0) (huu y0 hy0) hc
  refine ⟨fun i y => (uu y 1).2 i, fun y => (uu y 1).1, ?_, ?_, ?_, ?_, ?_⟩
  · intro i
    exact (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 3 => E3) i).contDiff.comp_contDiffOn
      hWs.snd
  · exact hWs.fst
  · intro i
    show (uu y0 1).2 i = f0 i
    rw [hu1y0]
  · intro z hz i
    have hd : DifferentiableAt ℝ (fun y => uu y 1) z :=
      (hWs.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hz)
    have hfd : HasFDerivAt (fun y => (uu y 1).2 i)
        ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 3 => E3) i).comp
          ((ContinuousLinearMap.snd ℝ E3 (Fin 3 → E3)).comp (fderiv ℝ (fun y => uu y 1) z))) z :=
      (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 3 => E3) i).hasFDerivAt.comp z
        hd.hasFDerivAt.snd
    rw [hfd.fderiv]
    simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.coe_snd',
      ContinuousLinearMap.proj_apply]
    rw [hrad z hz]
    have := key z (uu z 1).1 (uu z 1).2
    rw [Prod.mk.eta] at this
    rw [this]
  · intro z hz
    have hd : DifferentiableAt ℝ (fun y => uu y 1) z :=
      (hWs.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hz)
    rw [hd.hasFDerivAt.fst.fderiv]
    simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.coe_fst']
    rw [hrad z hz]
    have := key z (uu z 1).1 (uu z 1).2
    rw [Prod.mk.eta] at this
    rw [this]

theorem frame_eq_of_radial (U : Set E3) (hU : IsOpen U) (hUc : Convex ℝ U) (y0 : E3) (hy0 : y0 ∈ U)
    (Γ : Fin 3 → Fin 3 → Fin 3 → E3 → ℝ) (hΓ : ∀ m k i : Fin 3, ContDiffOn ℝ ∞ (Γ m k i) U)
    (hRm : ∀ z ∈ U, ∀ p k j i : Fin 3,
      partialDeriv k (Γ p j i) z - partialDeriv j (Γ p k i) z +
        ∑ m : Fin 3, (Γ p k m z * Γ m j i z - Γ p j m z * Γ m k i z) = 0)
    (f : Fin 3 → E3 → E3) (hf : ∀ i : Fin 3, ContDiffOn ℝ ∞ (f i) U)
    (hrad : ∀ z ∈ U, ∀ i : Fin 3, fderiv ℝ (f i) z (z - y0) =
      ∑ m : Fin 3, (∑ k : Fin 3, (z - y0) k * Γ m k i z) • f m z) :
    ∀ z ∈ U, ∀ k i : Fin 3, fderiv ℝ (f i) z (e k) = ∑ m : Fin 3, Γ m k i z • f m z :=
by
  classical
  
  have hfd : ∀ i, ∀ w ∈ U, DifferentiableAt ℝ (f i) w := fun i w hw =>
    ((hf i).contDiffAt (hU.mem_nhds hw)).differentiableAt (by simp)
  have hΓd : ∀ m j i, ∀ w ∈ U, DifferentiableAt ℝ (Γ m j i) w := fun m j i w hw =>
    ((hΓ m j i).contDiffAt (hU.mem_nhds hw)).differentiableAt (by simp)
  have h2inf : (2 : WithTop ℕ∞) ≤ ∞ := WithTop.coe_le_coe.2 le_top
  have h11 : (1 : WithTop ℕ∞) + 1 ≤ ∞ := by
    norm_num
    exact h2inf
  have hDfd : ∀ i, ∀ w ∈ U, DifferentiableAt ℝ (fderiv ℝ (f i)) w := fun i w hw =>
    (((hf i).fderiv_of_isOpen hU h11).contDiffAt
      (hU.mem_nhds hw)).differentiableAt one_ne_zero
  have hsym : ∀ i, ∀ w ∈ U, ∀ v u : E3,
      fderiv ℝ (fderiv ℝ (f i)) w v u = fderiv ℝ (fderiv ℝ (f i)) w u v :=
    fun i w hw v u => ((hf i).contDiffAt (hU.mem_nhds hw)).isSymmSndFDerivAt
      (by rw [minSmoothness_of_isRCLikeNormedField]; exact h2inf) v u
  have hexp : ∀ (L : E3 →L[ℝ] ℝ) (v : E3), L v = ∑ j : Fin 3, v j * L (e j) := by
    intro L v
    conv_lhs => rw [← (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v]
    simp [map_sum, map_smul]
  
  have alg : ∀ (k i : Fin 3) (r : Fin 3 → ℝ) (G : Fin 3 → Fin 3 → Fin 3 → ℝ)
      (dG : Fin 3 → Fin 3 → Fin 3 → Fin 3 → ℝ) (F K Dr : Fin 3 → E3) (S : E3),
      S + K i = ∑ m : Fin 3, ((G m k i + ∑ j : Fin 3, r j * dG k m j i) • F m
          + (∑ j : Fin 3, r j * G m j i) • K m) →
      (∀ m : Fin 3, Dr m = ∑ p : Fin 3, (∑ j : Fin 3, r j * G p j m) • F p) →
      (∀ p j : Fin 3, dG k p j i - dG j p k i +
          ∑ m : Fin 3, (G p k m * G m j i - G p j m * G m k i) = 0) →
      S - ∑ m : Fin 3, ((∑ j : Fin 3, r j * dG j m k i) • F m + G m k i • Dr m) =
        -(K i - ∑ m : Fin 3, G m k i • F m) +
          ∑ m : Fin 3, (∑ j : Fin 3, r j * G m j i) • (K m - ∑ p : Fin 3, G p k m • F p) := by
    intro k i r G dG F K Dr S h1 h2 h3
    have h20 := h2 0
    have h21 := h2 1
    have h22 := h2 2
    have h300 := h3 0 0
    have h301 := h3 0 1
    have h302 := h3 0 2
    have h310 := h3 1 0
    have h311 := h3 1 1
    have h312 := h3 1 2
    have h320 := h3 2 0
    have h321 := h3 2 1
    have h322 := h3 2 2
    simp only [Fin.sum_univ_three] at h1 h20 h21 h22 h300 h301 h302 h310 h311 h312 h320 h321 h322 ⊢
    linear_combination (norm := module) h1 - G 0 k i • h20 - G 1 k i • h21 - G 2 k i • h22
      + h300 • (r 0 • F 0) + h301 • (r 1 • F 0) + h302 • (r 2 • F 0)
      + h310 • (r 0 • F 1) + h311 • (r 1 • F 1) + h312 • (r 2 • F 1)
      + h320 • (r 0 • F 2) + h321 • (r 1 • F 2) + h322 • (r 2 • F 2)
  intro z hz k
  obtain ⟨E, hE⟩ : ∃ E : Fin 3 → E3 → E3,
      E = fun i w => fderiv ℝ (f i) w (e k) - ∑ m : Fin 3, Γ m k i w • f m w := ⟨_, rfl⟩
  have hEw : ∀ i w, E i w = fderiv ℝ (f i) w (e k) - ∑ m : Fin 3, Γ m k i w • f m w := by
    intro i w; rw [hE]
  
  have hode : ∀ w ∈ U, ∀ i, ∃ L : E3 →L[ℝ] E3, HasFDerivAt (E i) L w ∧
      L (w - y0) = -E i w + ∑ m : Fin 3, (∑ j : Fin 3, (w - y0) j * Γ m j i w) • E m w := by
    intro w hw i
    have hfun : E i = fun x => fderiv ℝ (f i) x (e k) - ∑ m : Fin 3, Γ m k i x • f m x := by
      rw [hE]
    have hA1 := (hDfd i w hw).hasFDerivAt.clm_apply (hasFDerivAt_const (e k) w)
    have hA2 := HasFDerivAt.sum (u := Finset.univ)
      (fun m _ => (hΓd m k i w hw).hasFDerivAt.smul (hfd m w hw).hasFDerivAt)
    obtain ⟨L, hL, hLv⟩ : ∃ L : E3 →L[ℝ] E3, HasFDerivAt (E i) L w ∧ ∀ v, L v =
        fderiv ℝ (fderiv ℝ (f i)) w v (e k) -
          ∑ m : Fin 3, (Γ m k i w • fderiv ℝ (f m) w v + fderiv ℝ (Γ m k i) w v • f m w) :=
      ⟨_, by rw [hfun]; exact hA1.sub hA2, fun v => by simp⟩
    refine ⟨L, hL, ?_⟩
    have hΦ : fderiv ℝ (f i) w (e k) + fderiv ℝ (fderiv ℝ (f i)) w (e k) (w - y0) =
        ∑ m : Fin 3, ((Γ m k i w + ∑ j : Fin 3, (w - y0) j * fderiv ℝ (Γ m j i) w (e k)) • f m w
          + (∑ j : Fin 3, (w - y0) j * Γ m j i w) • fderiv ℝ (f m) w (e k)) := by
      have hp : ∀ j : Fin 3, HasFDerivAt (fun x : E3 => (x - y0) j)
          (EuclideanSpace.proj j : E3 →L[ℝ] ℝ) w := by
        intro j
        have := ((EuclideanSpace.proj j : E3 →L[ℝ] ℝ).hasFDerivAt (x := w)).sub_const (y0 j)
        convert this using 1
      have hB1 := (hDfd i w hw).hasFDerivAt.clm_apply ((hasFDerivAt_id w).sub_const y0)
      have hB2 := HasFDerivAt.sum (u := Finset.univ) (fun m _ =>
        (HasFDerivAt.sum (u := Finset.univ)
          (fun j _ => (hp j).mul (hΓd m j i w hw).hasFDerivAt)).smul (hfd m w hw).hasFDerivAt)
      have hB0 : HasFDerivAt (fun x => fderiv ℝ (f i) x (x - y0) -
          ∑ m : Fin 3, (∑ j : Fin 3, (x - y0) j * Γ m j i x) • f m x) (0 : E3 →L[ℝ] E3) w := by
        apply (hasFDerivAt_const (0 : E3) w).congr_of_eventuallyEq
        filter_upwards [hU.mem_nhds hw] with x hx
        rw [hrad x hx i, sub_self]
      have hB := congrArg (fun L : E3 →L[ℝ] E3 => L (e k)) ((hB1.sub hB2).unique hB0)
      simp at hB
      simp only [Finset.sum_add_distrib, Finset.sum_ite_eq', Finset.mem_univ,
        ↓reduceIte] at hB
      rw [map_sub]
      simp only [PiLp.sub_apply]
      simp only [Fin.sum_univ_three] at hB ⊢
      linear_combination (norm := module) hB
    have h2 : ∀ m : Fin 3, fderiv ℝ (f m) w (w - y0) =
        ∑ p : Fin 3, (∑ j : Fin 3, (w - y0) j * Γ p j m w) • f p w := fun m => hrad w hw m
    have h3 : ∀ p j : Fin 3, partialDeriv k (Γ p j i) w - partialDeriv j (Γ p k i) w +
        ∑ m : Fin 3, (Γ p k m w * Γ m j i w - Γ p j m w * Γ m k i w) = 0 :=
      fun p j => hRm w hw p k j i
    have h1 : fderiv ℝ (fderiv ℝ (f i)) w (w - y0) (e k) + fderiv ℝ (f i) w (e k) =
        ∑ m : Fin 3, ((Γ m k i w + ∑ j : Fin 3, (w - y0) j * partialDeriv k (Γ m j i) w) • f m w
          + (∑ j : Fin 3, (w - y0) j * Γ m j i w) • fderiv ℝ (f m) w (e k)) := by
      rw [hsym i w hw (w - y0) (e k)]
      exact (add_comm _ _).trans hΦ
    have key := alg k i (fun j => (w - y0) j) (fun m j i => Γ m j i w)
      (fun l m j i => partialDeriv l (Γ m j i) w) (fun m => f m w)
      (fun m => fderiv ℝ (f m) w (e k)) (fun m => fderiv ℝ (f m) w (w - y0))
      (fderiv ℝ (fderiv ℝ (f i)) w (w - y0) (e k)) h1 h2 h3
    have hcoord : ∀ m, fderiv ℝ (Γ m k i) w (w - y0) =
        ∑ j : Fin 3, (w - y0) j * partialDeriv j (Γ m k i) w := fun m => hexp _ _
    rw [hLv]
    simp only [hEw, hcoord]
    rw [Finset.sum_congr rfl (fun m _ => add_comm (Γ m k i w • fderiv ℝ (f m) w (w - y0)) _)]
    exact key
  
  have hzero : ∀ i, E i z = 0 := by
    obtain ⟨c, hc⟩ : ∃ c : ℝ → E3, c = fun t => y0 + t • (z - y0) := ⟨_, rfl⟩
    have hcU : ∀ t ∈ Set.Icc (0:ℝ) 1, c t ∈ U := by
      intro t ht
      rw [hc]
      exact hUc.add_smul_sub_mem hy0 hz ht
    have hcd : ∀ t, HasDerivAt c (z - y0) t := by
      intro t
      rw [hc]
      convert ((hasDerivAt_id' t).smul_const (z - y0)).const_add y0 using 1
      simp
    have hcsub : ∀ t, c t - y0 = t • (z - y0) := fun t => by simp [hc]
    have hccont : ContinuousOn c (Set.Icc (0:ℝ) 1) :=
      fun t _ => (hcd t).continuousAt.continuousWithinAt
    obtain ⟨B, hB⟩ : ∃ B : ℝ → Fin 3 → Fin 3 → ℝ,
        B = fun t m i => ∑ j : Fin 3, (z - y0) j * Γ m j i (c t) := ⟨_, rfl⟩
    obtain ⟨ε, hε⟩ : ∃ ε : ℝ → Fin 3 → E3, ε = fun t i => t • E i (c t) := ⟨_, rfl⟩
    obtain ⟨ε', hε'⟩ : ∃ ε' : ℝ → Fin 3 → E3,
        ε' = fun t i => ∑ m : Fin 3, B t m i • ε t m := ⟨_, rfl⟩
    have hder : ∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivAt ε (ε' t) t := by
      intro t ht
      rw [hasDerivAt_pi]
      intro i
      obtain ⟨L, hL, hLode⟩ := hode (c t) (hcU t ht) i
      have h1 := (hasDerivAt_id' t).smul (hL.comp_hasDerivAt t (hcd t))
      have heq : t • L (z - y0) + (1:ℝ) • E i (c t) = ε' t i := by
        have h' : t • L (z - y0) = L (c t - y0) := by rw [hcsub, map_smul]
        rw [h', hLode, hε', hε, hB]
        simp only [hcsub, PiLp.smul_apply, smul_eq_mul, one_smul, Fin.sum_univ_three]
        module
      rw [hε]
      exact h1.congr_deriv heq
    have hεc : ContinuousOn ε (Set.Icc (0:ℝ) 1) :=
      fun t ht => (hder t ht).continuousAt.continuousWithinAt
    have hBc : ContinuousOn B (Set.Icc (0:ℝ) 1) := by
      rw [hB]
      apply continuousOn_pi.2
      intro m
      apply continuousOn_pi.2
      intro i
      apply continuousOn_finset_sum
      intro j _
      exact ContinuousOn.mul continuousOn_const
        ((hΓ m j i).continuousOn.comp hccont (fun t ht => hcU t ht))
    obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn hBc
    have hbound : ∀ t ∈ Set.Ico (0:ℝ) 1, ‖ε' t‖ ≤ (3 * C) * ‖ε t‖ + 0 := by
      intro t ht
      have ht' : t ∈ Set.Icc (0:ℝ) 1 := Set.Ico_subset_Icc_self ht
      have hCt := hC t ht'
      have hC0 : 0 ≤ C := le_trans (norm_nonneg _) hCt
      rw [add_zero]
      refine (pi_norm_le_iff_of_nonneg (by positivity)).2 (fun i => ?_)
      rw [hε']
      calc ‖∑ m : Fin 3, B t m i • ε t m‖ ≤ ∑ m : Fin 3, ‖B t m i • ε t m‖ := norm_sum_le _ _
        _ ≤ ∑ m : Fin 3, C * ‖ε t‖ := by
            apply Finset.sum_le_sum
            intro m _
            rw [norm_smul]
            apply mul_le_mul _ (norm_le_pi_norm _ m) (norm_nonneg _) hC0
            exact le_trans (norm_le_pi_norm (B t m) i) (le_trans (norm_le_pi_norm (B t) m) hCt)
        _ = 3 * C * ‖ε t‖ := by simp; ring
    have hε0 : ε 0 = 0 := by
      funext i
      simp [hε]
    have hg := norm_le_gronwallBound_of_norm_deriv_right_le (f := ε) (f' := ε') (δ := 0)
      (K := 3 * C) (ε := 0) (a := 0) (b := 1) hεc
      (fun t ht => (hder t (Set.Ico_subset_Icc_self ht)).hasDerivWithinAt)
      (by simp [hε0]) hbound 1 (by simp)
    rw [gronwallBound_ε0_δ0] at hg
    have hε1 : ε 1 = 0 := norm_le_zero_iff.mp hg
    intro i
    have := congrFun hε1 i
    simpa [hε, hc] using this
  intro i
  have := hzero i
  rw [hEw] at this
  exact sub_eq_zero.mp this

theorem potential_of_radial (U : Set E3) (hU : IsOpen U) (hUc : Convex ℝ U) (y0 : E3) (hy0 : y0 ∈ U)
    (f : Fin 3 → E3 → E3) (hf : ∀ i : Fin 3, ContDiffOn ℝ ∞ (f i) U)
    (hclosed : ∀ z ∈ U, ∀ j k : Fin 3, fderiv ℝ (f j) z (e k) = fderiv ℝ (f k) z (e j))
    (ψ : E3 → E3) (hψ : ContDiffOn ℝ ∞ ψ U)
    (hrad : ∀ z ∈ U, fderiv ℝ ψ z (z - y0) = ∑ k : Fin 3, (z - y0) k • f k z) :
    ∀ z ∈ U, ∀ k : Fin 3, fderiv ℝ ψ z (e k) = f k z :=
by
  intro z hz k
  have hψd : ∀ w ∈ U, DifferentiableAt ℝ (fderiv ℝ ψ) w := by
    intro w hw
    have h1 : ContDiffAt ℝ ∞ ψ w := hψ.contDiffAt (hU.mem_nhds hw)
    have h2 : ContDiffAt ℝ 1 (fderiv ℝ ψ) w := h1.fderiv_right (m := 1)
      (WithTop.coe_le_coe.mpr le_top)
    exact h2.differentiableAt (by norm_num)
  have hfd : ∀ j, ∀ w ∈ U, DifferentiableAt ℝ (f j) w := fun j w hw =>
    ((hf j).contDiffAt (hU.mem_nhds hw)).differentiableAt (by simp)
  set H : E3 → E3 := fun x => fderiv ℝ ψ x (e k) - f k x with hHdef
  have hHder : ∀ w ∈ U, HasFDerivAt H
      ((fderiv ℝ (fderiv ℝ ψ) w).flip (e k) - fderiv ℝ (f k) w) w := by
    intro w hw
    have h1 : HasFDerivAt (fun x => fderiv ℝ ψ x (e k))
        ((fderiv ℝ (fderiv ℝ ψ) w).flip (e k)) w := by
      have := (hψd w hw).hasFDerivAt.clm_apply (hasFDerivAt_const (e k) w)
      convert this using 1
      ext v
      simp
    exact h1.sub (hfd k w hw).hasFDerivAt
  have heul : ∀ w ∈ U,
      ((fderiv ℝ (fderiv ℝ ψ) w).flip (e k) - fderiv ℝ (f k) w) (w - y0) = - H w := by
    intro w hw
    set T := fderiv ℝ (fderiv ℝ ψ) w with hT
    set r := w - y0 with hr
    set S : E3 := ∑ j : Fin 3, r j • fderiv ℝ (f j) w (e k) with hS
    
    have hA : HasFDerivAt (fun x => fderiv ℝ ψ x (x - y0))
        ((fderiv ℝ ψ w).comp (ContinuousLinearMap.id ℝ E3) + T.flip (w - y0)) w :=
      (hψd w hw).hasFDerivAt.clm_apply ((hasFDerivAt_id w).sub_const y0)
    have hc : ∀ j : Fin 3, HasFDerivAt (fun x : E3 => (x - y0) j)
        (EuclideanSpace.proj j : E3 →L[ℝ] ℝ) w := by
      intro j
      have := ((EuclideanSpace.proj j : E3 →L[ℝ] ℝ).hasFDerivAt (x := w - y0)).comp w
        ((hasFDerivAt_id w).sub_const y0)
      convert this using 1
    have hB : HasFDerivAt (fun x => ∑ j : Fin 3, (x - y0) j • f j x)
        (∑ j : Fin 3, ((w - y0) j • fderiv ℝ (f j) w +
          (EuclideanSpace.proj j : E3 →L[ℝ] ℝ).smulRight (f j w))) w := by
      apply HasFDerivAt.fun_sum
      intro j _
      exact (hc j).smul (hfd j w hw).hasFDerivAt
    have hB' : HasFDerivAt (fun x => fderiv ℝ ψ x (x - y0))
        (∑ j : Fin 3, ((w - y0) j • fderiv ℝ (f j) w +
          (EuclideanSpace.proj j : E3 →L[ℝ] ℝ).smulRight (f j w))) w := by
      apply hB.congr_of_eventuallyEq
      filter_upwards [hU.mem_nhds hw] with x hx
      exact hrad x hx
    have huniq := hA.unique hB'
    have hkey : fderiv ℝ ψ w (e k) + T (e k) r = S + f k w := by
      have := congrArg (fun L : E3 →L[ℝ] E3 => L (e k)) huniq
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.comp_apply,
        ContinuousLinearMap.id_apply, ContinuousLinearMap.flip_apply,
        ContinuousLinearMap.coe_sum', Finset.sum_apply, ContinuousLinearMap.smul_apply,
        ContinuousLinearMap.smulRight_apply, Finset.sum_add_distrib] at this
      rw [this, hS]
      congr 1
      simp [EuclideanSpace.single_apply]
    have hsym : T r (e k) = T (e k) r := by
      have hsy := (hψ.contDiffAt (hU.mem_nhds hw)).isSymmSndFDerivAt
        (by simp only [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.mpr le_top)
      exact hsy r (e k)
    have hrexp : r = ∑ j : Fin 3, r j • e j := by
      ext i
      simp [Pi.single_apply]
    have hclo : fderiv ℝ (f k) w r = S := by
      calc fderiv ℝ (f k) w r = fderiv ℝ (f k) w (∑ j : Fin 3, r j • e j) := by rw [← hrexp]
        _ = ∑ j : Fin 3, r j • fderiv ℝ (f k) w (e j) := by simp [map_sum, map_smul]
        _ = S := by
          rw [hS]
          refine Finset.sum_congr rfl (fun j _ => ?_)
          rw [hclosed w hw j k]
    have hX : T (e k) r = S + f k w - fderiv ℝ ψ w (e k) := by
      rw [← hkey]; abel
    simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.flip_apply, hHdef]
    rw [hsym, hX, hclo]
    abel
  
  have hray : H z = 0 := by
    set c : ℝ → E3 := fun t => y0 + t • (z - y0) with hcdef
    have hcU : ∀ t ∈ Set.Icc (0:ℝ) 1, c t ∈ U := fun t ht => hUc.add_smul_sub_mem hy0 hz ht
    have hcd : ∀ t, HasDerivAt c (z - y0) t := by
      intro t
      have := ((hasDerivAt_id' t).smul_const (z - y0)).const_add y0
      rw [one_smul] at this
      exact this
    have hhd : ∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivAt (fun t : ℝ => t • H (c t)) 0 t := by
      intro t ht
      have h1 : HasDerivAt (fun t => H (c t))
          (((fderiv ℝ (fderiv ℝ ψ) (c t)).flip (e k) - fderiv ℝ (f k) (c t)) (z - y0)) t :=
        (hHder (c t) (hcU t ht)).comp_hasDerivAt t (hcd t)
      have h2 := (hasDerivAt_id' t).smul h1
      convert h2 using 1
      have he := heul (c t) (hcU t ht)
      have hct : c t - y0 = t • (z - y0) := by simp [hcdef]
      rw [hct, map_smul] at he
      rw [he, one_smul, neg_add_cancel]
    have hcont : ContinuousOn (fun t : ℝ => t • H (c t)) (Set.Icc 0 1) :=
      fun t ht => (hhd t ht).continuousAt.continuousWithinAt
    have hder : ∀ t ∈ Set.Ico (0:ℝ) 1, HasDerivWithinAt (fun t : ℝ => t • H (c t)) 0 (Set.Ici t) t :=
      fun t ht => (hhd t (Set.Ico_subset_Icc_self ht)).hasDerivWithinAt
    have := constant_of_has_deriv_right_zero hcont hder 1 ⟨zero_le_one, le_rfl⟩
    simpa [hcdef] using this
  exact sub_eq_zero.mp hray

theorem gram_of_frame_eq (U : Set E3) (hU : IsOpen U) (hUc : Convex ℝ U) (y0 : E3) (hy0 : y0 ∈ U)
    (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (hG : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun z => G z a b) U)
    (Γ : Fin 3 → Fin 3 → Fin 3 → E3 → ℝ) (hΓ : ∀ m k i : Fin 3, ContinuousOn (Γ m k i) U)
    (hcompat : ∀ z ∈ U, ∀ k i j : Fin 3, partialDeriv k (fun w => G w i j) z =
      ∑ m : Fin 3, (Γ m k i z * G z m j + Γ m k j z * G z i m))
    (f : Fin 3 → E3 → E3) (hf : ∀ i : Fin 3, ContDiffOn ℝ ∞ (f i) U)
    (hframe : ∀ z ∈ U, ∀ k i : Fin 3, fderiv ℝ (f i) z (e k) = ∑ m : Fin 3, Γ m k i z • f m z)
    (hinit : ∀ i j : Fin 3, @inner ℝ E3 _ (f i y0) (f j y0) = G y0 i j) :
    ∀ z ∈ U, ∀ i j : Fin 3, @inner ℝ E3 _ (f i z) (f j z) = G z i j :=
by
  classical
  intro z hz i j
  obtain ⟨v, hv⟩ : ∃ v : E3, v = z - y0 := ⟨_, rfl⟩
  have hmem : ∀ t ∈ Set.Icc (0:ℝ) 1, y0 + t • v ∈ U := by
    intro t ht
    rw [hv]
    exact hUc.add_smul_sub_mem hy0 hz ht
  have hvsum : v = ∑ k : Fin 3, v k • e k := by
    have h := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v
    simp only [EuclideanSpace.basisFun_apply, EuclideanSpace.basisFun_repr] at h
    exact h.symm
  
  have hderiv : ∀ t ∈ Set.Icc (0:ℝ) 1, ∀ a b : Fin 3,
      HasDerivAt (fun s : ℝ => @inner ℝ E3 _ (f a (y0 + s • v)) (f b (y0 + s • v))
          - G (y0 + s • v) a b)
        (∑ m : Fin 3, ((∑ k : Fin 3, v k * Γ m k a (y0 + t • v)) *
            (@inner ℝ E3 _ (f m (y0 + t • v)) (f b (y0 + t • v)) - G (y0 + t • v) m b)
          + (∑ k : Fin 3, v k * Γ m k b (y0 + t • v)) *
            (@inner ℝ E3 _ (f a (y0 + t • v)) (f m (y0 + t • v)) - G (y0 + t • v) a m))) t := by
    intro t ht a b
    have hwU : y0 + t • v ∈ U := hmem t ht
    have hp : HasDerivAt (fun s : ℝ => y0 + s • v) v t := by
      have h := ((hasDerivAt_id t).smul_const v).const_add y0
      simpa using h
    have hnhds : U ∈ 𝓝 (y0 + t • v) := hU.mem_nhds hwU
    have hdf : ∀ c : Fin 3, HasFDerivAt (f c) (fderiv ℝ (f c) (y0 + t • v)) (y0 + t • v) :=
      fun c => (((hf c).contDiffAt hnhds).differentiableAt (by simp)).hasFDerivAt
    have hdG : HasFDerivAt (fun z => G z a b) (fderiv ℝ (fun z => G z a b) (y0 + t • v))
        (y0 + t • v) :=
      (((hG a b).contDiffAt hnhds).differentiableAt (by simp)).hasFDerivAt
    have hfa := HasFDerivAt.comp_hasDerivAt t (hdf a) hp
    have hfb := HasFDerivAt.comp_hasDerivAt t (hdf b) hp
    have hGc := HasFDerivAt.comp_hasDerivAt t hdG hp
    have htot := (hfa.inner ℝ hfb).sub hGc
    have hLv : ∀ L : E3 →L[ℝ] E3, L v = ∑ k : Fin 3, v k • L (e k) := by
      intro L
      conv_lhs => rw [hvsum]
      rw [map_sum]
      refine Finset.sum_congr rfl (fun k _ => ?_)
      rw [map_smul]
    have hLr : ∀ L : E3 →L[ℝ] ℝ, L v = ∑ k : Fin 3, v k * L (e k) := by
      intro L
      conv_lhs => rw [hvsum]
      rw [map_sum]
      refine Finset.sum_congr rfl (fun k _ => ?_)
      rw [map_smul, smul_eq_mul]
    have hDf : ∀ c : Fin 3, fderiv ℝ (f c) (y0 + t • v) v =
        ∑ k : Fin 3, v k • ∑ m : Fin 3, Γ m k c (y0 + t • v) • f m (y0 + t • v) := by
      intro c
      rw [hLv]
      refine Finset.sum_congr rfl (fun k _ => ?_)
      rw [hframe _ hwU k c]
    have hDG : fderiv ℝ (fun z => G z a b) (y0 + t • v) v = ∑ k : Fin 3, v k *
        ∑ m : Fin 3, (Γ m k a (y0 + t • v) * G (y0 + t • v) m b
          + Γ m k b (y0 + t • v) * G (y0 + t • v) a m) := by
      rw [hLr]
      refine Finset.sum_congr rfl (fun k _ => ?_)
      rw [← hcompat _ hwU k a b]
      rfl
    refine htot.congr_deriv ?_
    rw [hDf a, hDf b, hDG]
    simp only [Function.comp_apply, inner_sum, sum_inner, real_inner_smul_left,
      real_inner_smul_right]
    simp only [Fin.sum_univ_three]
    ring
  
  let β : Fin 3 → Fin 3 → ℝ → ℝ := fun m a t => ∑ k : Fin 3, v k * Γ m k a (y0 + t • v)
  let x : ℝ → Fin 3 → Fin 3 → ℝ := fun s a b =>
    @inner ℝ E3 _ (f a (y0 + s • v)) (f b (y0 + s • v)) - G (y0 + s • v) a b
  let x' : ℝ → Fin 3 → Fin 3 → ℝ := fun t a b =>
    ∑ m : Fin 3, (β m a t * x t m b + β m b t * x t a m)
  have hxd : ∀ t ∈ Set.Icc (0:ℝ) 1, HasDerivAt x (x' t) t := by
    intro t ht
    exact hasDerivAt_pi.2 (fun a => hasDerivAt_pi.2 (fun b => hderiv t ht a b))
  have hcont_c : ContinuousOn (fun t : ℝ => y0 + t • v) (Set.Icc 0 1) :=
    (continuous_const.add (continuous_id.smul continuous_const)).continuousOn
  have hmaps : Set.MapsTo (fun t : ℝ => y0 + t • v) (Set.Icc 0 1) U := fun t ht => hmem t ht
  have hβc : ∀ m a, ContinuousOn (β m a) (Set.Icc 0 1) := by
    intro m a
    apply continuousOn_finset_sum
    intro k _
    exact continuousOn_const.mul ((hΓ m k a).comp hcont_c hmaps)
  obtain ⟨C, hC⟩ : ∃ C : ℝ, ∀ t ∈ Set.Icc (0:ℝ) 1, ∀ m a, |β m a t| ≤ C := by
    have hc : ContinuousOn (fun t => fun m a => β m a t) (Set.Icc (0:ℝ) 1) :=
      continuousOn_pi.2 (fun m => continuousOn_pi.2 (fun a => hβc m a))
    obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn hc
    refine ⟨C, fun t ht m a => ?_⟩
    have h1 := hC t ht
    have h2 : ‖β m a t‖ ≤ ‖fun m a => β m a t‖ :=
      (norm_le_pi_norm (fun a => β m a t) a).trans (norm_le_pi_norm (fun m a => β m a t) m)
    rw [Real.norm_eq_abs] at h2
    linarith
  have hB0 : 0 ≤ max C 0 := le_max_right _ _
  have hBb : ∀ t ∈ Set.Icc (0:ℝ) 1, ∀ m a, |β m a t| ≤ max C 0 :=
    fun t ht m a => (hC t ht m a).trans (le_max_left _ _)
  have hent : ∀ (t : ℝ) a b, |x t a b| ≤ ‖x t‖ := by
    intro t a b
    have h := (norm_le_pi_norm (x t a) b).trans (norm_le_pi_norm (x t) a)
    rwa [Real.norm_eq_abs] at h
  have hbound : ∀ t ∈ Set.Ico (0:ℝ) 1, ‖x' t‖ ≤ (6 * max C 0) * ‖x t‖ + 0 := by
    intro t ht
    have ht' : t ∈ Set.Icc (0:ℝ) 1 := Set.Ico_subset_Icc_self ht
    rw [add_zero]
    refine (pi_norm_le_iff_of_nonneg (by positivity)).2
      (fun a => (pi_norm_le_iff_of_nonneg (by positivity)).2 (fun b => ?_))
    rw [Real.norm_eq_abs]
    show |∑ m : Fin 3, (β m a t * x t m b + β m b t * x t a m)| ≤ 6 * max C 0 * ‖x t‖
    have hterm : ∀ m : Fin 3, |β m a t * x t m b + β m b t * x t a m| ≤
        2 * max C 0 * ‖x t‖ := by
      intro m
      have e1 : |β m a t * x t m b| ≤ max C 0 * ‖x t‖ := by
        rw [abs_mul]; exact mul_le_mul (hBb t ht' m a) (hent t m b) (abs_nonneg _) hB0
      have e2 : |β m b t * x t a m| ≤ max C 0 * ‖x t‖ := by
        rw [abs_mul]; exact mul_le_mul (hBb t ht' m b) (hent t a m) (abs_nonneg _) hB0
      have e3 := abs_add_le (β m a t * x t m b) (β m b t * x t a m)
      linarith
    calc |∑ m : Fin 3, (β m a t * x t m b + β m b t * x t a m)|
        ≤ ∑ m : Fin 3, |β m a t * x t m b + β m b t * x t a m| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _m : Fin 3, 2 * max C 0 * ‖x t‖ := Finset.sum_le_sum (fun m _ => hterm m)
      _ = 6 * max C 0 * ‖x t‖ := by simp only [Fin.sum_univ_three]; ring
  have hx0 : ‖x 0‖ ≤ 0 := by
    have h0 : x 0 = 0 := by
      funext a b
      show @inner ℝ E3 _ (f a (y0 + (0:ℝ) • v)) (f b (y0 + (0:ℝ) • v))
        - G (y0 + (0:ℝ) • v) a b = 0
      rw [zero_smul, add_zero, hinit a b, sub_self]
    rw [h0, norm_zero]
  have hgr := norm_le_gronwallBound_of_norm_deriv_right_le (HasDerivAt.continuousOn hxd)
    (fun t ht => (hxd t (Set.Ico_subset_Icc_self ht)).hasDerivWithinAt) hx0 hbound
  have h1 := hgr 1 (by simp)
  rw [gronwallBound_ε0_δ0] at h1
  have hx1 : x 1 = 0 := norm_le_zero_iff.mp h1
  have hfin := congrFun (congrFun hx1 i) j
  have hz' : y0 + (1:ℝ) • v = z := by rw [one_smul, hv, add_sub_cancel]
  change @inner ℝ E3 _ (f i (y0 + (1:ℝ) • v)) (f j (y0 + (1:ℝ) • v))
    - G (y0 + (1:ℝ) • v) i j = 0 at hfin
  rw [hz'] at hfin
  exact sub_eq_zero.mp hfin

theorem flat_developing_convex (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U : Set E3)
    (hU : IsOpen U) (hUc : Convex ℝ U)
    (hG : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun z => G z a b) U)
    (hsymm : ∀ z ∈ U, ∀ a b : Fin 3, G z a b = G z b a)
    (hpos : ∀ z ∈ U, ∀ v : E3, v ≠ 0 → 0 < ∑ a : Fin 3, ∑ b : Fin 3, v a * G z a b * v b)
    (hflat : ∀ z ∈ U, ∀ l i j k : Fin 3, riemannLocal G l i j k z = 0) :
    ∃ ψ : E3 → E3, ContDiffOn ℝ ∞ ψ U ∧ ∀ z ∈ U, ∀ i j : Fin 3,
      @inner ℝ E3 _ (fderiv ℝ ψ z (e i)) (fderiv ℝ ψ z (e j)) = G z i j :=
by
  classical
  rcases U.eq_empty_or_nonempty with hUe | ⟨y0, hy0⟩
  · subst hUe
    exact ⟨0, contDiffOn_empty, fun z hz => by simp at hz⟩
  
  have hdet : ∀ z ∈ U, (G z).det ≠ 0 := by
    intro z hz h0
    obtain ⟨v, hv, hGv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr h0
    have hw : (WithLp.toLp 2 v : E3) ≠ 0 := by
      intro h; apply hv; simpa using congrArg WithLp.ofLp h
    have h1 := hpos z hz (WithLp.toLp 2 v) hw
    have hrow : ∀ a : Fin 3, ∑ b : Fin 3, (WithLp.toLp 2 v : E3) a * G z a b *
        (WithLp.toLp 2 v : E3) b = v a * ((G z).mulVec v) a := by
      intro a
      simp only [Matrix.mulVec, dotProduct, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro b _
      show v a * G z a b * v b = v a * (G z a b * v b)
      ring
    have h2 : ∑ a : Fin 3, ∑ b : Fin 3, (WithLp.toLp 2 v : E3) a * G z a b *
        (WithLp.toLp 2 v : E3) b = 0 := by
      rw [Finset.sum_congr rfl (fun a _ => hrow a), hGv]
      simp
    linarith
  
  have hΓs := christoffel_contDiffOn G U hU hG hdet
  have hSC := christoffel_symm_compat G U hU hsymm hdet
  obtain ⟨f0, hf0⟩ := exists_gram_frame (G y0) (hsymm y0 hy0) (hpos y0 hy0)
  obtain ⟨f, ψ, hf, hψ, hfy0, hradf, hradψ⟩ :=
    radial_frame_exists U hU hUc y0 hy0 (christoffel G) hΓs f0
  
  have hRm : ∀ z ∈ U, ∀ p k j i : Fin 3,
      partialDeriv k (christoffel G p j i) z - partialDeriv j (christoffel G p k i) z +
        ∑ m : Fin 3, (christoffel G p k m z * christoffel G m j i z
          - christoffel G p j m z * christoffel G m k i z) = 0 :=
    fun z hz p k j i => hflat z hz p k j i
  have hframe := frame_eq_of_radial U hU hUc y0 hy0 (christoffel G) hΓs hRm f hf hradf
  
  have hclosed : ∀ z ∈ U, ∀ j k : Fin 3, fderiv ℝ (f j) z (e k) = fderiv ℝ (f k) z (e j) := by
    intro z hz j k
    rw [hframe z hz k j, hframe z hz j k]
    exact Finset.sum_congr rfl (fun m _ => by rw [(hSC z hz).1 m k j])
  
  have hpot := potential_of_radial U hU hUc y0 hy0 f hf hclosed ψ hψ hradψ
  
  have hgram := gram_of_frame_eq U hU hUc y0 hy0 G hG (christoffel G)
    (fun m k i => (hΓs m k i).continuousOn) (fun z hz => (hSC z hz).2) f hf hframe
    (fun i j => by rw [hfy0 i, hfy0 j]; exact hf0 i j)
  
  exact ⟨ψ, hψ, fun z hz i j => by rw [hpot z hz i, hpot z hz j]; exact hgram z hz i j⟩

theorem gram_glue_step (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V W : Set E3)
    (hV : IsOpen V) (hW : IsOpen W) (hVW : IsPreconnected (V ∩ W))
    (hpos : ∀ z ∈ W, ∀ v : E3, v ≠ 0 → 0 < ∑ a : Fin 3, ∑ b : Fin 3, v a * G z a b * v b)
    (f h : E3 → E3) (hf : ContDiffOn ℝ ∞ f V) (hh : ContDiffOn ℝ ∞ h W)
    (hfG : ∀ z ∈ V, ∀ i j : Fin 3,
      @inner ℝ E3 _ (fderiv ℝ f z (e i)) (fderiv ℝ f z (e j)) = G z i j)
    (hhG : ∀ z ∈ W, ∀ i j : Fin 3,
      @inner ℝ E3 _ (fderiv ℝ h z (e i)) (fderiv ℝ h z (e j)) = G z i j) :
    ∃ F : E3 → E3, ContDiffOn ℝ ∞ F (V ∪ W) ∧ ∀ z ∈ V ∪ W, ∀ i j : Fin 3,
      @inner ℝ E3 _ (fderiv ℝ F z (e i)) (fderiv ℝ F z (e j)) = G z i j :=
by
  classical
  
  have expand : ∀ (L : E3 →L[ℝ] E3) (v w : E3), @inner ℝ E3 _ (L v) (L w) =
      ∑ a : Fin 3, ∑ b : Fin 3, v a * w b * @inner ℝ E3 _ (L (e a)) (L (e b)) := by
    intro L v w
    have hv : ∑ a : Fin 3, v a • e a = v := by
      have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v
      simpa [EuclideanSpace.basisFun_repr, EuclideanSpace.basisFun_apply] using this
    have hw : ∑ a : Fin 3, w a • e a = w := by
      have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr w
      simpa [EuclideanSpace.basisFun_repr, EuclideanSpace.basisFun_apply] using this
    conv_lhs => rw [← hv, ← hw]
    simp only [map_sum, map_smul, sum_inner, inner_sum, real_inner_smul_left,
      real_inner_smul_right]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro a _
    apply Finset.sum_congr rfl
    intro b _
    ring
  have hU : IsOpen (V ∩ W) := hV.inter hW
  
  have hfz : ∀ z ∈ V, ContDiffAt ℝ 2 f z := fun z hz =>
    (hf.contDiffAt (hV.mem_nhds hz)).of_le (by norm_cast)
  have hhz : ∀ z ∈ W, ContDiffAt ℝ 2 h z := fun z hz =>
    (hh.contDiffAt (hW.mem_nhds hz)).of_le (by norm_cast)
  have hf1 : ∀ z ∈ V, DifferentiableAt ℝ f z := fun z hz =>
    (hfz z hz).differentiableAt (by simp)
  have hh1 : ∀ z ∈ W, DifferentiableAt ℝ h z := fun z hz =>
    (hhz z hz).differentiableAt (by simp)
  have hf2 : ∀ z ∈ V, DifferentiableAt ℝ (fderiv ℝ f) z := fun z hz =>
    ((hfz z hz).fderiv_right (m := 1) (le_of_eq one_add_one_eq_two)).differentiableAt (by simp)
  have hh2 : ∀ z ∈ W, DifferentiableAt ℝ (fderiv ℝ h) z := fun z hz =>
    ((hhz z hz).fderiv_right (m := 1) (le_of_eq one_add_one_eq_two)).differentiableAt (by simp)
  have hfs : ∀ z ∈ V, IsSymmSndFDerivAt ℝ f z := fun z hz =>
    (hfz z hz).isSymmSndFDerivAt (le_of_eq minSmoothness_of_isRCLikeNormedField)
  have hhs : ∀ z ∈ W, IsSymmSndFDerivAt ℝ h z := fun z hz =>
    (hhz z hz).isSymmSndFDerivAt (le_of_eq minSmoothness_of_isRCLikeNormedField)
  
  have hinjW : ∀ z ∈ W, Function.Injective (fderiv ℝ h z) := by
    intro z hz
    rw [injective_iff_map_eq_zero]
    intro v hv0
    by_contra hv
    have h1 := expand (fderiv ℝ h z) v v
    rw [hv0, inner_zero_left] at h1
    have h2 := hpos z hz v hv
    have h3 : ∑ a : Fin 3, ∑ b : Fin 3, v a * v b *
        @inner ℝ E3 _ (fderiv ℝ h z (e a)) (fderiv ℝ h z (e b)) =
        ∑ a : Fin 3, ∑ b : Fin 3, v a * G z a b * v b := by
      apply Finset.sum_congr rfl
      intro a _
      apply Finset.sum_congr rfl
      intro b _
      rw [hhG z hz a b]
      ring
    linarith
  have hsurjW : ∀ z ∈ W, Function.Surjective (fderiv ℝ h z) := fun z hz =>
    (LinearMap.injective_iff_surjective (f := (fderiv ℝ h z : E3 →ₗ[ℝ] E3))).1 (hinjW z hz)
  have hunit : ∀ z ∈ W, IsUnit (fderiv ℝ h z) := fun z hz =>
    ContinuousLinearMap.isUnit_iff_bijective.2 ⟨hinjW z hz, hsurjW z hz⟩
  
  have hgram : ∀ z ∈ V ∩ W, ∀ v w : E3,
      @inner ℝ E3 _ (fderiv ℝ h z v) (fderiv ℝ h z w) =
      @inner ℝ E3 _ (fderiv ℝ f z v) (fderiv ℝ f z w) := by
    intro z hz v w
    rw [expand (fderiv ℝ h z), expand (fderiv ℝ f z)]
    apply Finset.sum_congr rfl
    intro a _
    apply Finset.sum_congr rfl
    intro b _
    rw [hhG z hz.2 a b, hfG z hz.1 a b]
  have hsurjF : ∀ z ∈ V ∩ W, Function.Surjective (fderiv ℝ f z) := by
    intro z hz
    have hinj : Function.Injective (fderiv ℝ f z) := by
      rw [injective_iff_map_eq_zero]
      intro v hv
      have h1 := hgram z hz v v
      rw [hv, inner_zero_left, inner_self_eq_zero] at h1
      exact (injective_iff_map_eq_zero _).1 (hinjW z hz.2) v h1
    exact (LinearMap.injective_iff_surjective (f := (fderiv ℝ f z : E3 →ₗ[ℝ] E3))).1 hinj
  
  have dgram : ∀ (ψ : E3 → E3) (z : E3), DifferentiableAt ℝ (fderiv ℝ ψ) z → ∀ u v w : E3,
      fderiv ℝ (fun t => @inner ℝ E3 _ (fderiv ℝ ψ t v) (fderiv ℝ ψ t w)) z u =
        @inner ℝ E3 _ (fderiv ℝ ψ z v) (fderiv ℝ (fderiv ℝ ψ) z u w) +
        @inner ℝ E3 _ (fderiv ℝ (fderiv ℝ ψ) z u v) (fderiv ℝ ψ z w) := by
    intro ψ z hd u v w
    have hlin : ∀ x : E3, HasFDerivAt (fun t => fderiv ℝ ψ t x)
        ((fderiv ℝ (fderiv ℝ ψ) z).flip x) z := by
      intro x
      have := hd.hasFDerivAt.clm_apply (hasFDerivAt_const x z)
      convert this using 1
      simp
    rw [fderiv_inner_apply ℝ (hlin v).differentiableAt (hlin w).differentiableAt,
      (hlin v).fderiv, (hlin w).fderiv]
    simp only [ContinuousLinearMap.flip_apply]
  
  have hT : ∀ z ∈ V ∩ W, ∀ u v w : E3,
      @inner ℝ E3 _ (fderiv ℝ (fderiv ℝ h) z u v) (fderiv ℝ h z w) =
      @inner ℝ E3 _ (fderiv ℝ (fderiv ℝ f) z u v) (fderiv ℝ f z w) := by
    intro z hz
    have hS : ∀ u v w : E3,
        fderiv ℝ (fun t => @inner ℝ E3 _ (fderiv ℝ h t v) (fderiv ℝ h t w)) z u =
        fderiv ℝ (fun t => @inner ℝ E3 _ (fderiv ℝ f t v) (fderiv ℝ f t w)) z u := by
      intro u v w
      have hev : (fun t => @inner ℝ E3 _ (fderiv ℝ h t v) (fderiv ℝ h t w)) =ᶠ[𝓝 z]
          (fun t => @inner ℝ E3 _ (fderiv ℝ f t v) (fderiv ℝ f t w)) := by
        filter_upwards [hU.mem_nhds hz] with t ht using hgram t ht v w
      rw [hev.fderiv_eq]
    intro u v w
    have e1 := hS u v w
    have e2 := hS v u w
    have e3 := hS w u v
    rw [dgram h z (hh2 z hz.2), dgram f z (hf2 z hz.1)] at e1 e2 e3
    have sh := (hhs z hz.2).eq
    have sf := (hfs z hz.1).eq
    have c1 := real_inner_comm (fderiv ℝ (fderiv ℝ h) z u w) (fderiv ℝ h z v)
    have c2 := real_inner_comm (fderiv ℝ (fderiv ℝ h) z v w) (fderiv ℝ h z u)
    have c1' := real_inner_comm (fderiv ℝ (fderiv ℝ f) z u w) (fderiv ℝ f z v)
    have c2' := real_inner_comm (fderiv ℝ (fderiv ℝ f) z v w) (fderiv ℝ f z u)
    rw [sh w v, sh v u, sh w u, sf w v, sf v u, sf w u] at *
    linarith
  
  set B : E3 → (E3 →L[ℝ] E3) := fun t =>
    (fderiv ℝ f t).comp (Ring.inverse (fderiv ℝ h t)) with hBdef
  have hBD : ∀ t ∈ V ∩ W, (B t).comp (fderiv ℝ h t) = fderiv ℝ f t := by
    intro t ht
    have := Ring.inverse_mul_cancel _ (hunit t ht.2)
    rw [ContinuousLinearMap.mul_def] at this
    simp only [hBdef]
    rw [ContinuousLinearMap.comp_assoc, this]
    ext x
    simp
  have hBDa : ∀ t ∈ V ∩ W, ∀ x : E3, B t (fderiv ℝ h t x) = fderiv ℝ f t x := by
    intro t ht x
    have := congrArg (fun L : E3 →L[ℝ] E3 => L x) (hBD t ht)
    simpa using this
  have hBiso : ∀ t ∈ V ∩ W, ∀ x y : E3, @inner ℝ E3 _ (B t x) (B t y) = @inner ℝ E3 _ x y := by
    intro t ht x y
    obtain ⟨a, rfl⟩ := hsurjW t ht.2 x
    obtain ⟨b, rfl⟩ := hsurjW t ht.2 y
    rw [hBDa t ht, hBDa t ht, hgram t ht]
  
  have hHB : ∀ z ∈ V ∩ W, ∀ u v : E3,
      fderiv ℝ (fderiv ℝ f) z u v = B z (fderiv ℝ (fderiv ℝ h) z u v) := by
    intro z hz u v
    set d := fderiv ℝ (fderiv ℝ f) z u v - B z (fderiv ℝ (fderiv ℝ h) z u v) with hd
    have horth : ∀ w : E3, @inner ℝ E3 _ d (fderiv ℝ f z w) = 0 := by
      intro w
      rw [hd, inner_sub_left, ← hT z hz u v w, ← hBDa z hz w, hBiso z hz]
      ring
    obtain ⟨w, hw⟩ := hsurjF z hz d
    have := horth w
    rw [hw, inner_self_eq_zero] at this
    exact sub_eq_zero.1 this
  
  have hBd : ∀ z ∈ V ∩ W, DifferentiableAt ℝ B z := by
    intro z hz
    exact (hf2 z hz.1).clm_comp ((hh2 z hz.2).inverse (hunit z hz.2))
  have hB0 : ∀ z ∈ V ∩ W, fderiv ℝ B z = 0 := by
    intro z hz
    have hev : (fun t => (B t).comp (fderiv ℝ h t)) =ᶠ[𝓝 z] fderiv ℝ f := by
      filter_upwards [hU.mem_nhds hz] with t ht using hBD t ht
    have hder := ((hBd z hz).hasFDerivAt.clm_comp (hh2 z hz.2).hasFDerivAt).congr_of_eventuallyEq
      hev.symm
    have hfd := hder.fderiv
    ext1 u
    apply ContinuousLinearMap.ext
    intro x
    obtain ⟨v, rfl⟩ := hsurjW z hz.2 x
    have := congrArg (fun L : E3 →L[ℝ] E3 →L[ℝ] E3 => L u v) hfd
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.compL_apply, ContinuousLinearMap.flip_apply] at this
    rw [hHB z hz u v] at this
    simpa using this.symm
  
  have hBconst : ∀ {x y : E3}, x ∈ V ∩ W → y ∈ V ∩ W → B x = B y :=
    hU.is_const_of_fderiv_eq_zero hVW (fun z hz => (hBd z hz).differentiableWithinAt)
      (fun z hz => hB0 z hz)
  
  have hrig : ∃ A : E3 ≃ₗᵢ[ℝ] E3, ∃ b : E3, ∀ z ∈ V ∩ W, f z = A (h z) + b := by
    by_cases hne : (V ∩ W).Nonempty
    · obtain ⟨z₀, hz₀⟩ := hne
      let A : E3 ≃ₗᵢ[ℝ] E3 :=
        (LinearMap.isometryOfInner (B z₀ : E3 →ₗ[ℝ] E3) (hBiso z₀ hz₀)).toLinearIsometryEquiv rfl
      have hA : ∀ x, A x = B z₀ x := fun x => rfl
      have hφd : ∀ t ∈ V ∩ W, HasFDerivAt (fun x => f x - B z₀ (h x))
          (fderiv ℝ f t - (B z₀).comp (fderiv ℝ h t)) t := by
        intro t ht
        exact (hf1 t ht.1).hasFDerivAt.sub ((B z₀).hasFDerivAt.comp t (hh1 t ht.2).hasFDerivAt)
      have hφ0 : ∀ t ∈ V ∩ W, fderiv ℝ (fun x => f x - B z₀ (h x)) t = 0 := by
        intro t ht
        rw [(hφd t ht).fderiv, ← hBconst ht hz₀, hBD t ht, sub_self]
      refine ⟨A, f z₀ - B z₀ (h z₀), fun z hz => ?_⟩
      have := hU.is_const_of_fderiv_eq_zero hVW
        (fun t ht => (hφd t ht).differentiableAt.differentiableWithinAt) hφ0 hz hz₀
      rw [hA]
      simp only at this
      rw [← this]
      abel
    · refine ⟨LinearIsometryEquiv.refl ℝ E3, 0, fun z hz => ?_⟩
      exact absurd ⟨z, hz⟩ hne
  obtain ⟨A, b, hAb⟩ := hrig
  
  let F : E3 → E3 := fun y => if y ∈ V then f y else A (h y) + b
  have hFV : ∀ z ∈ V, F =ᶠ[𝓝 z] f := by
    intro z hz
    filter_upwards [hV.mem_nhds hz] with y hy
    simp [F, hy]
  have hFW : ∀ z ∈ W, F =ᶠ[𝓝 z] (fun y => A (h y) + b) := by
    intro z hz
    filter_upwards [hW.mem_nhds hz] with y hy
    by_cases hyV : y ∈ V
    · simp [F, hyV, hAb y ⟨hyV, hy⟩]
    · simp [F, hyV]
  refine ⟨F, ?_, ?_⟩
  · 
    intro z hz
    rcases hz with hz | hz
    · exact ((hf.contDiffAt (hV.mem_nhds hz)).congr_of_eventuallyEq (hFV z hz)).contDiffWithinAt
    · have h' : ContDiffAt ℝ ∞ (fun y => A (h y) + b) z :=
        ((A.contDiff.contDiffAt).comp z (hh.contDiffAt (hW.mem_nhds hz))).add contDiffAt_const
      exact (h'.congr_of_eventuallyEq (hFW z hz)).contDiffWithinAt
  · 
    intro z hz i j
    by_cases hzV : z ∈ V
    · rw [(hFV z hzV).fderiv_eq]
      exact hfG z hzV i j
    · have hzW : z ∈ W := hz.resolve_left hzV
      have hd : HasFDerivAt (fun y => A (h y) + b)
          ((A.toContinuousLinearEquiv : E3 →L[ℝ] E3).comp (fderiv ℝ h z)) z :=
        ((A.toContinuousLinearEquiv : E3 →L[ℝ] E3).hasFDerivAt.comp z
          (hh1 z hzW).hasFDerivAt).add_const b
      rw [(hFW z hzW).fderiv_eq, hd.fderiv]
      simp only [ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe,
        LinearIsometryEquiv.coe_toContinuousLinearEquiv]
      rw [LinearIsometryEquiv.inner_map_map]
      exact hhG z hzW i j

theorem end_developing_map [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hRic : ∀ (p : M) (j l : Fin 3),
      ricci (g.coeff (chartAt E3 p).symm) j l (chartAt E3 p p) = 0)
    (Φ : EndChart M) :
    ∃ ψ : E3 → E3, ContDiffOn ℝ ∞ ψ {x : E3 | 2 < ‖x‖} ∧
      ∀ z : E3, 2 < ‖z‖ → ∀ i j : Fin 3,
        @inner ℝ E3 _ (fderiv ℝ ψ z (e i)) (fderiv ℝ ψ z (e j)) = g.coeff Φ.Φ z i j :=
by
  classical
  have hsrc : Φ.Φ.source = {x : E3 | 1 < ‖x‖} := Φ.source_eq
  
  have hGs : ∀ a b : Fin 3,
      ContDiffOn ℝ ∞ (fun z => g.coeff Φ.Φ z a b) {x : E3 | 1 < ‖x‖} := by
    intro a b
    rw [← hsrc]
    exact coeff_contDiffOn_source g Φ.Φ a b
  
  have hGsym : ∀ z ∈ {x : E3 | 1 < ‖x‖}, ∀ a b : Fin 3,
      g.coeff Φ.Φ z a b = g.coeff Φ.Φ z b a :=
    fun z _ a b => g.symm _ _ _
  
  have hGpos : ∀ z ∈ {x : E3 | 1 < ‖x‖}, ∀ v : E3, v ≠ 0 →
      0 < ∑ a : Fin 3, ∑ b : Fin 3, v a * g.coeff Φ.Φ z a b * v b := by
    intro z hz v hv
    have hz' : z ∈ Φ.Φ.source := by rw [hsrc]; exact hz
    have hpd := coeff_posDef g Φ.Φ z hz'
    have hx : (WithLp.ofLp v : Fin 3 → ℝ) ≠ 0 := by
      intro h; apply hv; simpa using congrArg (WithLp.toLp 2) h
    have h1 := hpd.dotProduct_mulVec_pos hx
    simp only [star_trivial, dotProduct, Matrix.mulVec] at h1
    convert h1 using 1
    apply Finset.sum_congr rfl
    intro a _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro b _
    ring
  
  have hSopen : IsOpen {x : E3 | 1 < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hflat : ∀ y ∈ {x : E3 | 1 < ‖x‖}, ∀ l i j k : Fin 3,
      riemannLocal (g.coeff Φ.Φ) l i j k y = 0 := by
    apply riemannLocal_coeff_eq_zero g hRic Φ.Φ _ hSopen
    · rw [← hsrc]; exact Φ.Φ.contMDiffOn
    · intro y hy
      have hy' : y ∈ Φ.Φ.source := by rw [hsrc]; exact hy
      have hd := PartialDiffeomorph.isLocalDiffeomorphAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ.Φ hy'
      have hn : (∞ : WithTop ℕ∞) ≠ 0 := by simp
      have h1 := (hd.mfderivToContinuousLinearEquiv hn).injective
      rw [← ContinuousLinearEquiv.coe_coe, hd.mfderivToContinuousLinearEquiv_coe hn] at h1
      exact h1
  
  have hlin : ∀ a : Fin 3, IsLinearMap ℝ (fun x : E3 => x a) :=
    fun a => ⟨fun _ _ => rfl, fun _ _ => rfl⟩
  have hPo : ∀ a : Fin 3, IsOpen {x : E3 | 1 < x a} :=
    fun a => isOpen_lt continuous_const (by fun_prop)
  have hNo : ∀ a : Fin 3, IsOpen {x : E3 | x a < -1} :=
    fun a => isOpen_lt (by fun_prop) continuous_const
  have hPc : ∀ a : Fin 3, Convex ℝ {x : E3 | 1 < x a} := fun a => convex_halfSpace_gt (hlin a) 1
  have hNc : ∀ a : Fin 3, Convex ℝ {x : E3 | x a < -1} :=
    fun a => convex_halfSpace_lt (hlin a) (-1)
  have hPS : ∀ a : Fin 3, {x : E3 | 1 < x a} ⊆ {x : E3 | 1 < ‖x‖} := by
    intro a x hx
    have h1 : ‖x a‖ ≤ ‖x‖ := PiLp.norm_apply_le x a
    rw [Real.norm_eq_abs] at h1
    have h2 : (1 : ℝ) < x a := hx
    show 1 < ‖x‖
    linarith [le_abs_self (x a)]
  have hNS : ∀ a : Fin 3, {x : E3 | x a < -1} ⊆ {x : E3 | 1 < ‖x‖} := by
    intro a x hx
    have h1 : ‖x a‖ ≤ ‖x‖ := PiLp.norm_apply_le x a
    rw [Real.norm_eq_abs] at h1
    have h2 : x a < -1 := hx
    show 1 < ‖x‖
    linarith [neg_abs_le (x a)]
  
  have hdev : ∀ H : Set E3, IsOpen H → Convex ℝ H → H ⊆ {x : E3 | 1 < ‖x‖} →
      ∃ ψ : E3 → E3, ContDiffOn ℝ ∞ ψ H ∧ ∀ z ∈ H, ∀ i j : Fin 3,
        @inner ℝ E3 _ (fderiv ℝ ψ z (e i)) (fderiv ℝ ψ z (e j)) = g.coeff Φ.Φ z i j :=
    fun H hH hHc hHS => flat_developing_convex (g.coeff Φ.Φ) H hH hHc
      (fun a b => (hGs a b).mono hHS) (fun z hz => hGsym z (hHS hz))
      (fun z hz => hGpos z (hHS hz)) (fun z hz => hflat z (hHS hz))
  
  have hpc : ∀ A B : Set E3, Convex ℝ A → Convex ℝ B → IsPreconnected (A ∩ B) :=
    fun A B hA hB => (hA.inter hB).isPreconnected
  have e0 : {x : E3 | 1 < x 0} ∩ {x : E3 | x 0 < -1} = ∅ := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_and]
    intro h1 h2; linarith
  have e1 : {x : E3 | 1 < x 1} ∩ {x : E3 | x 1 < -1} = ∅ := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_and]
    intro h1 h2; linarith
  have e2 : {x : E3 | 1 < x 2} ∩ {x : E3 | x 2 < -1} = ∅ := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_and]
    intro h1 h2; linarith
  have hw2 : ∀ a b c : ℝ, (![a, b, c] : Fin 3 → ℝ) 2 = c := fun _ _ _ => rfl
  have ov1 : IsPreconnected ({x : E3 | 1 < x 2} ∩ {x : E3 | 1 < x 0}) := hpc _ _ (hPc 2) (hPc 0)
  have ov2 : IsPreconnected (({x : E3 | 1 < x 2} ∪ {x : E3 | 1 < x 0}) ∩ {x : E3 | 1 < x 1}) := by
    rw [Set.union_inter_distrib_right]
    exact IsPreconnected.union' ⟨WithLp.toLp 2 ![(2 : ℝ), 2, 2], by norm_num [hw2]⟩
      (hpc _ _ (hPc 2) (hPc 1)) (hpc _ _ (hPc 0) (hPc 1))
  have ov3 : IsPreconnected (({x : E3 | 1 < x 2} ∪ {x : E3 | 1 < x 0} ∪ {x : E3 | 1 < x 1}) ∩
      {x : E3 | x 0 < -1}) := by
    simp only [Set.union_inter_distrib_right]
    rw [e0, Set.union_empty]
    exact IsPreconnected.union' ⟨WithLp.toLp 2 ![(-2 : ℝ), 2, 2], by norm_num [hw2]⟩
      (hpc _ _ (hPc 2) (hNc 0)) (hpc _ _ (hPc 1) (hNc 0))
  have ov4 : IsPreconnected (({x : E3 | 1 < x 2} ∪ {x : E3 | 1 < x 0} ∪ {x : E3 | 1 < x 1} ∪
      {x : E3 | x 0 < -1}) ∩ {x : E3 | x 1 < -1}) := by
    simp only [Set.union_inter_distrib_right]
    rw [e1, Set.union_empty]
    exact IsPreconnected.union' ⟨WithLp.toLp 2 ![(-2 : ℝ), -2, 2], by norm_num [hw2]⟩
      (IsPreconnected.union' ⟨WithLp.toLp 2 ![(2 : ℝ), -2, 2], by norm_num [hw2]⟩
        (hpc _ _ (hPc 2) (hNc 1)) (hpc _ _ (hPc 0) (hNc 1)))
      (hpc _ _ (hNc 0) (hNc 1))
  have ov5 : IsPreconnected (({x : E3 | 1 < x 2} ∪ {x : E3 | 1 < x 0} ∪ {x : E3 | 1 < x 1} ∪
      {x : E3 | x 0 < -1} ∪ {x : E3 | x 1 < -1}) ∩ {x : E3 | x 2 < -1}) := by
    simp only [Set.union_inter_distrib_right]
    rw [e2, Set.empty_union]
    exact IsPreconnected.union' ⟨WithLp.toLp 2 ![(-2 : ℝ), -2, -2], by norm_num [hw2]⟩
      (IsPreconnected.union' ⟨WithLp.toLp 2 ![(-2 : ℝ), 2, -2], by norm_num [hw2]⟩
        (IsPreconnected.union' ⟨WithLp.toLp 2 ![(2 : ℝ), 2, -2], by norm_num [hw2]⟩
          (hpc _ _ (hPc 0) (hNc 2)) (hpc _ _ (hPc 1) (hNc 2)))
        (hpc _ _ (hNc 0) (hNc 2)))
      (hpc _ _ (hNc 1) (hNc 2))
  
  obtain ⟨f1, hf1, hg1⟩ := hdev _ (hPo 2) (hPc 2) (hPS 2)
  obtain ⟨f2, hf2, hg2⟩ := hdev _ (hPo 0) (hPc 0) (hPS 0)
  obtain ⟨f3, hf3, hg3⟩ := hdev _ (hPo 1) (hPc 1) (hPS 1)
  obtain ⟨f4, hf4, hg4⟩ := hdev _ (hNo 0) (hNc 0) (hNS 0)
  obtain ⟨f5, hf5, hg5⟩ := hdev _ (hNo 1) (hNc 1) (hNS 1)
  obtain ⟨f6, hf6, hg6⟩ := hdev _ (hNo 2) (hNc 2) (hNS 2)
  obtain ⟨F2, hF2, hG2⟩ := gram_glue_step (g.coeff Φ.Φ) _ _ (hPo 2) (hPo 0) ov1
    (fun z hz => hGpos z (hPS 0 hz)) f1 f2 hf1 hf2 hg1 hg2
  obtain ⟨F3, hF3, hG3⟩ := gram_glue_step (g.coeff Φ.Φ) _ _ ((hPo 2).union (hPo 0)) (hPo 1) ov2
    (fun z hz => hGpos z (hPS 1 hz)) F2 f3 hF2 hf3 hG2 hg3
  obtain ⟨F4, hF4, hG4⟩ := gram_glue_step (g.coeff Φ.Φ) _ _
    (((hPo 2).union (hPo 0)).union (hPo 1)) (hNo 0) ov3
    (fun z hz => hGpos z (hNS 0 hz)) F3 f4 hF3 hf4 hG3 hg4
  obtain ⟨F5, hF5, hG5⟩ := gram_glue_step (g.coeff Φ.Φ) _ _
    ((((hPo 2).union (hPo 0)).union (hPo 1)).union (hNo 0)) (hNo 1) ov4
    (fun z hz => hGpos z (hNS 1 hz)) F4 f5 hF4 hf5 hG4 hg5
  obtain ⟨F6, hF6, hG6⟩ := gram_glue_step (g.coeff Φ.Φ) _ _
    (((((hPo 2).union (hPo 0)).union (hPo 1)).union (hNo 0)).union (hNo 1)) (hNo 2) ov5
    (fun z hz => hGpos z (hNS 2 hz)) F5 f6 hF5 hf6 hG5 hg6
  
  have hcover : {x : E3 | 2 < ‖x‖} ⊆ {x : E3 | 1 < x 2} ∪ {x : E3 | 1 < x 0} ∪
      {x : E3 | 1 < x 1} ∪ {x : E3 | x 0 < -1} ∪ {x : E3 | x 1 < -1} ∪
      {x : E3 | x 2 < -1} := by
    intro z hz
    have hz2 : (2 : ℝ) < ‖z‖ := hz
    by_contra hc
    simp only [Set.mem_union, Set.mem_setOf_eq, not_or, not_lt] at hc
    obtain ⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩ := hc
    have hn : ‖z‖ ^ 2 = z 0 ^ 2 + z 1 ^ 2 + z 2 ^ 2 := by
      rw [EuclideanSpace.norm_eq, Real.sq_sqrt (by positivity), Fin.sum_univ_three]
      simp [Real.norm_eq_abs, sq_abs]
    have q0 : z 0 ^ 2 ≤ 1 := by nlinarith
    have q1 : z 1 ^ 2 ≤ 1 := by nlinarith
    have q2 : z 2 ^ 2 ≤ 1 := by nlinarith
    nlinarith [norm_nonneg z]
  
  exact ⟨F6, hF6.mono hcover, fun z hz i j => hG6 z (hcover hz) i j⟩

theorem eii_koszul_column_bound (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (ψ : E3 → E3) (q C ρ : ℝ)
    (hρ : 2 ≤ ρ) (hC : 0 ≤ C) (hψ : ContDiffOn ℝ ∞ ψ {x : E3 | 2 < ‖x‖})
    (hgram : ∀ z : E3, 2 < ‖z‖ → ∀ i j : Fin 3,
      @inner ℝ E3 _ (fderiv ℝ ψ z (e i)) (fderiv ℝ ψ z (e j)) = G z i j)
    (hnear : ∀ z : E3, ρ < ‖z‖ → ∀ i j : Fin 3,
      |G z i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6)
    (hdG : ∀ z : E3, ρ < ‖z‖ → ∀ i j : Fin 3,
      ‖fderiv ℝ (fun y => G y i j) z‖ ≤ C * ‖z‖ ^ (-q - 1)) :
    ∀ z : E3, ρ < ‖z‖ → ∀ i k : Fin 3,
      DifferentiableAt ℝ (fun w => fderiv ℝ ψ w (e i)) z ∧
      ‖fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k)‖ ≤ 27 / 2 * C * ‖z‖ ^ (-q - 1) :=
by
  
  have hGIB : ∀ (p : Fin 3 → E3),
      (∀ i j : Fin 3, |@inner ℝ E3 _ (p i) (p j) - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6) →
      ∀ v : E3, ‖v‖ ≤ 3 * ∑ l : Fin 3, |@inner ℝ E3 _ v (p l)| := by
    intro p hp v
    have hq : ∀ c : Fin 3 → ℝ,
        (1 / 2 : ℝ) * ∑ i : Fin 3, c i ^ 2 ≤ ‖∑ i : Fin 3, c i • p i‖ ^ 2 := by
      intro c
      have key : ∀ i j : Fin 3,
          c i * c j * (if i = j then (1 : ℝ) else 0) - (c i ^ 2 + c j ^ 2) / 12
            ≤ c i * (c j * @inner ℝ E3 _ (p i) (p j)) := by
        intro i j
        obtain ⟨h1, h2⟩ := abs_le.mp (hp i j)
        have e1 : 0 ≤ (1 / 6 + (@inner ℝ E3 _ (p i) (p j) - (if i = j then (1 : ℝ) else 0)))
            * (c i + c j) ^ 2 := mul_nonneg (by linarith) (sq_nonneg _)
        have e2 : 0 ≤ (1 / 6 - (@inner ℝ E3 _ (p i) (p j) - (if i = j then (1 : ℝ) else 0)))
            * (c i - c j) ^ 2 := mul_nonneg (by linarith) (sq_nonneg _)
        nlinarith
      rw [← real_inner_self_eq_norm_sq]
      simp only [Fin.sum_univ_three, inner_add_left, inner_add_right, real_inner_smul_left,
        real_inner_smul_right]
      have k00 := key 0 0
      have k01 := key 0 1
      have k02 := key 0 2
      have k10 := key 1 0
      have k11 := key 1 1
      have k12 := key 1 2
      have k20 := key 2 0
      have k21 := key 2 1
      have k22 := key 2 2
      simp only [Fin.isValue, Fin.reduceEq, ↓reduceIte, mul_one, mul_zero] at k00 k01 k02 k10 k11 k12 k20 k21 k22
      linarith
    have hli : LinearIndependent ℝ p := by
      rw [Fintype.linearIndependent_iff]
      intro g hg i
      have h := hq g
      rw [hg, norm_zero] at h
      have hi : g i ^ 2 ≤ ∑ j : Fin 3, g j ^ 2 :=
        Finset.single_le_sum (f := fun j => g j ^ 2) (fun j _ => sq_nonneg (g j))
          (Finset.mem_univ i)
      have hz : g i ^ 2 = 0 := le_antisymm (by nlinarith) (sq_nonneg _)
      exact (pow_eq_zero_iff two_ne_zero).mp hz
    have hspan : Submodule.span ℝ (Set.range p) = ⊤ :=
      hli.span_eq_top_of_card_eq_finrank' (by rw [Fintype.card_fin, finrank_euclideanSpace_fin])
    have hvmem : v ∈ Submodule.span ℝ (Set.range p) := by
      rw [hspan]; exact Submodule.mem_top
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun ℝ).mp hvmem
    have hinner : @inner ℝ E3 _ v (∑ i : Fin 3, c i • p i)
        = ∑ l : Fin 3, c l * @inner ℝ E3 _ v (p l) := by
      rw [inner_sum]
      simp only [real_inner_smul_right]
    rw [hc] at hinner
    have hN : ‖v‖ ^ 2 = ∑ l : Fin 3, c l * @inner ℝ E3 _ v (p l) := by
      rw [← real_inner_self_eq_norm_sq, hinner]
    have hqc := hq c
    rw [hc] at hqc
    have hn0 : 0 ≤ ‖v‖ := norm_nonneg v
    have hcl : ∀ l : Fin 3, |c l| ≤ 3 * ‖v‖ := by
      intro l
      have hl : c l ^ 2 ≤ ∑ j : Fin 3, c j ^ 2 :=
        Finset.single_le_sum (f := fun j => c j ^ 2) (fun j _ => sq_nonneg (c j))
          (Finset.mem_univ l)
      have hsq : c l ^ 2 ≤ (3 * ‖v‖) ^ 2 := by nlinarith
      have := sq_le_sq.mp hsq
      rwa [abs_of_nonneg (by positivity : (0 : ℝ) ≤ 3 * ‖v‖)] at this
    have hterm : ∀ l : Fin 3, c l * @inner ℝ E3 _ v (p l)
        ≤ 3 * ‖v‖ * |@inner ℝ E3 _ v (p l)| := by
      intro l
      calc c l * @inner ℝ E3 _ v (p l) ≤ |c l * @inner ℝ E3 _ v (p l)| := le_abs_self _
        _ = |c l| * |@inner ℝ E3 _ v (p l)| := abs_mul _ _
        _ ≤ 3 * ‖v‖ * |@inner ℝ E3 _ v (p l)| :=
            mul_le_mul_of_nonneg_right (hcl l) (abs_nonneg _)
    have hsum : ‖v‖ * ‖v‖ ≤ ‖v‖ * (3 * ∑ l : Fin 3, |@inner ℝ E3 _ v (p l)|) := by
      have h1 : ‖v‖ ^ 2 ≤ ∑ l : Fin 3, 3 * ‖v‖ * |@inner ℝ E3 _ v (p l)| := by
        rw [hN]; exact Finset.sum_le_sum (fun l _ => hterm l)
      rw [← Finset.mul_sum] at h1
      nlinarith
    rcases eq_or_lt_of_le hn0 with h0 | hpos
    · rw [← h0]; positivity
    · exact le_of_mul_le_mul_left hsum hpos
  
  intro z hz
  have hz2 : 2 < ‖z‖ := lt_of_le_of_lt hρ hz
  have hΩ : IsOpen {x : E3 | 2 < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hc : ContDiffAt ℝ ∞ ψ z := hψ.contDiffAt (hΩ.mem_nhds hz2)
  have hd1 : ContDiffAt ℝ 1 (fderiv ℝ ψ) z := hc.fderiv_right (m := 1) (by norm_cast)
  have hd : DifferentiableAt ℝ (fderiv ℝ ψ) z := hd1.differentiableAt (by simp)
  
  have hFd : ∀ i : Fin 3, DifferentiableAt ℝ (fun w => fderiv ℝ ψ w (e i)) z :=
    fun i => hd.clm_apply (differentiableAt_const (e i))
  have hcol : ∀ i k : Fin 3, fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k) =
      fderiv ℝ (fderiv ℝ ψ) z (e k) (e i) := by
    intro i k
    have h := fderiv_clm_apply (c := fderiv ℝ ψ) (u := fun _ : E3 => e i) hd
      (differentiableAt_const _)
    rw [h]
    simp
  have hsym : IsSymmSndFDerivAt ℝ ψ z :=
    hc.isSymmSndFDerivAt (by simp only [minSmoothness_of_isRCLikeNormedField]; norm_cast)
  have Dsym : ∀ i k : Fin 3, fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k) =
      fderiv ℝ (fun w => fderiv ℝ ψ w (e k)) z (e i) := by
    intro i k
    rw [hcol, hcol]
    exact hsym (e k) (e i)
  
  have hgd : ∀ a b m : Fin 3, fderiv ℝ (fun y => G y a b) z (e m) =
      @inner ℝ E3 _ (fderiv ℝ ψ z (e a)) (fderiv ℝ (fun w => fderiv ℝ ψ w (e b)) z (e m)) +
      @inner ℝ E3 _ (fderiv ℝ (fun w => fderiv ℝ ψ w (e a)) z (e m)) (fderiv ℝ ψ z (e b)) := by
    intro a b m
    have heq : (fun y => G y a b) =ᶠ[𝓝 z]
        (fun y => @inner ℝ E3 _ (fderiv ℝ ψ y (e a)) (fderiv ℝ ψ y (e b))) :=
      Filter.eventually_of_mem (hΩ.mem_nhds hz2) (fun y hy => (hgram y hy a b).symm)
    rw [heq.fderiv_eq]
    exact fderiv_inner_apply ℝ (hFd a) (hFd b) (e m)
  
  have hpb : ∀ a b m : Fin 3, |fderiv ℝ (fun y => G y a b) z (e m)| ≤ C * ‖z‖ ^ (-q - 1) := by
    intro a b m
    have h := (fderiv ℝ (fun y => G y a b) z).le_opNorm (e m)
    rw [EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs] at h
    exact h.trans (hdG z hz a b)
  intro i k
  refine ⟨hFd i, ?_⟩
  
  have hcoef : ∀ l : Fin 3,
      |@inner ℝ E3 _ (fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k)) (fderiv ℝ ψ z (e l))|
        ≤ 3 / 2 * (C * ‖z‖ ^ (-q - 1)) := by
    intro l
    have h1 := hgd i l k
    have h2 := hgd k l i
    have h3 := hgd k i l
    have s1 : @inner ℝ E3 _ (fderiv ℝ ψ z (e i)) (fderiv ℝ (fun w => fderiv ℝ ψ w (e l)) z (e k))
        = @inner ℝ E3 _ (fderiv ℝ (fun w => fderiv ℝ ψ w (e k)) z (e l)) (fderiv ℝ ψ z (e i)) := by
      rw [Dsym l k, real_inner_comm]
    have s2 : @inner ℝ E3 _ (fderiv ℝ ψ z (e k)) (fderiv ℝ (fun w => fderiv ℝ ψ w (e l)) z (e i))
        = @inner ℝ E3 _ (fderiv ℝ ψ z (e k)) (fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e l)) := by
      rw [Dsym l i]
    have s3 : fderiv ℝ (fun w => fderiv ℝ ψ w (e k)) z (e i) =
        fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k) := Dsym k i
    rw [s3] at h2
    have hkey : 2 * @inner ℝ E3 _ (fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k))
        (fderiv ℝ ψ z (e l)) = fderiv ℝ (fun y => G y i l) z (e k)
          + fderiv ℝ (fun y => G y k l) z (e i) - fderiv ℝ (fun y => G y k i) z (e l) := by
      linarith
    obtain ⟨a1, b1⟩ := abs_le.mp (hpb i l k)
    obtain ⟨a2, b2⟩ := abs_le.mp (hpb k l i)
    obtain ⟨a3, b3⟩ := abs_le.mp (hpb k i l)
    rw [abs_le]
    constructor <;> linarith
  
  have hp : ∀ a b : Fin 3,
      |@inner ℝ E3 _ ((fun l => fderiv ℝ ψ z (e l)) a) ((fun l => fderiv ℝ ψ z (e l)) b)
        - (if a = b then (1 : ℝ) else 0)| ≤ 1 / 6 := by
    intro a b
    show |@inner ℝ E3 _ (fderiv ℝ ψ z (e a)) (fderiv ℝ ψ z (e b))
        - (if a = b then (1 : ℝ) else 0)| ≤ 1 / 6
    rw [hgram z hz2 a b]
    exact hnear z hz a b
  have hmain := hGIB (fun l => fderiv ℝ ψ z (e l)) hp
    (fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z (e k))
  simp only [Fin.sum_univ_three] at hmain
  have c0 := hcoef 0
  have c1 := hcoef 1
  have c2 := hcoef 2
  linarith

theorem eii_column_oscillation (F : E3 → E3) (q K r : ℝ) (hq : 0 < q) (hK : 0 ≤ K) (hr : 0 < r)
    (hdiff : ∀ w : E3, r < ‖w‖ → DifferentiableAt ℝ F w)
    (hbd : ∀ w : E3, r < ‖w‖ → ‖fderiv ℝ F w‖ ≤ K * ‖w‖ ^ (-q - 1)) :
    ∀ x x' : E3, 2 * r < ‖x‖ → ‖x‖ ≤ ‖x'‖ →
      ‖F x - F x'‖ ≤ K * (1 / q + 2 ^ (q + 3)) * ‖x‖ ^ (-q) :=
by
  classical
  
  have horth : ∀ (x y : E3) (ρ : ℝ), 0 ≤ ρ → ∃ z : E3, @inner ℝ E3 _ x z = 0 ∧
      @inner ℝ E3 _ y z = 0 ∧ ‖z‖ = ρ := by
    intro x y ρ hρ
    obtain ⟨W, hWdef⟩ : ∃ W : Submodule ℝ E3,
        W = Submodule.span ℝ ((({x, y} : Finset E3)) : Set E3) := ⟨_, rfl⟩
    have h1 : Module.finrank ℝ W ≤ 2 := by
      rw [hWdef]
      exact (finrank_span_finset_le_card _).trans Finset.card_le_two
    have h2 : Module.finrank ℝ W + Module.finrank ℝ Wᗮ = 3 := by
      rw [Submodule.finrank_add_finrank_orthogonal, finrank_euclideanSpace_fin]
    have h3 : Wᗮ ≠ ⊥ := by
      intro h
      rw [h, finrank_bot] at h2
      omega
    obtain ⟨v, hv, hv0⟩ := (Submodule.ne_bot_iff _).1 h3
    have hxW : x ∈ W := by rw [hWdef]; exact Submodule.subset_span (by simp)
    have hyW : y ∈ W := by rw [hWdef]; exact Submodule.subset_span (by simp)
    have hxv : @inner ℝ E3 _ x v = 0 := (Submodule.mem_orthogonal W v).1 hv x hxW
    have hyv : @inner ℝ E3 _ y v = 0 := (Submodule.mem_orthogonal W v).1 hv y hyW
    have hvn : 0 < ‖v‖ := norm_pos_iff.2 hv0
    refine ⟨(ρ / ‖v‖) • v, ?_, ?_, ?_⟩
    · rw [real_inner_smul_right, hxv, mul_zero]
    · rw [real_inner_smul_right, hyv, mul_zero]
    · rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (div_nonneg hρ hvn.le),
        div_mul_cancel₀ _ hvn.ne']
  
  have hchord : ∀ (x z : E3) (ρ : ℝ), 2 * r < ρ → ‖x‖ = ρ → ‖z‖ = ρ →
      @inner ℝ E3 _ x z = 0 → ‖F x - F z‖ ≤ K * 2 ^ (q + 2) * ρ ^ (-q) := by
    intro x z ρ hρ hx hz hxz
    have hρpos : 0 < ρ := by linarith
    have hfloor : ∀ w ∈ segment ℝ x z, ρ / 2 ≤ ‖w‖ := by
      intro w hw
      rw [segment_eq_image] at hw
      obtain ⟨θ, hθ, rfl⟩ := hw
      show ρ / 2 ≤ ‖(1 - θ) • x + θ • z‖
      have hsq : ‖(1 - θ) • x + θ • z‖ ^ 2 = ((1 - θ) ^ 2 + θ ^ 2) * ρ ^ 2 := by
        rw [norm_add_sq_real, norm_smul, norm_smul, real_inner_smul_left, real_inner_smul_right,
          hxz, hx, hz, Real.norm_eq_abs, Real.norm_eq_abs, mul_pow, mul_pow, sq_abs, sq_abs]
        ring
      have h2 : (ρ / 2) ^ 2 ≤ ‖(1 - θ) • x + θ • z‖ ^ 2 := by
        rw [hsq]
        nlinarith [mul_nonneg (sq_nonneg (2 * θ - 1)) (sq_nonneg ρ), sq_nonneg ρ]
      nlinarith [norm_nonneg ((1 - θ) • x + θ • z)]
    have hD : ∀ w ∈ segment ℝ x z, DifferentiableAt ℝ F w :=
      fun w hw => hdiff w (by linarith [hfloor w hw])
    have hB : ∀ w ∈ segment ℝ x z, ‖fderiv ℝ F w‖ ≤ K * (ρ / 2) ^ (-q - 1) := by
      intro w hw
      have hw' := hfloor w hw
      refine (hbd w (by linarith)).trans ?_
      exact mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow_of_nonpos (by linarith) hw' (by linarith)) hK
    have hmvt := Convex.norm_image_sub_le_of_norm_fderiv_le hD hB (convex_segment x z)
      (right_mem_segment ℝ x z) (left_mem_segment ℝ x z)
    have hxz2 : ‖x - z‖ ≤ 2 * ρ := by
      have := norm_sub_le x z
      linarith
    have hC0 : 0 ≤ K * (ρ / 2) ^ (-q - 1) := mul_nonneg hK (Real.rpow_nonneg (by linarith) _)
    have h2pos : 0 < (2 : ℝ) ^ (-q - 1) := Real.rpow_pos_of_pos (by norm_num) _
    have e1 : ρ ^ (-q - 1) * ρ = ρ ^ (-q) := by
      rw [← Real.rpow_add_one hρpos.ne']
      congr 1
      ring
    have e2 : (2 : ℝ) ^ (q + 2) * (2 : ℝ) ^ (-q - 1) = 2 := by
      rw [← Real.rpow_add (by norm_num : (0 : ℝ) < 2)]
      rw [show q + 2 + (-q - 1) = 1 by ring, Real.rpow_one]
    have halg : (ρ / 2) ^ (-q - 1) * (2 * ρ) = 2 ^ (q + 2) * ρ ^ (-q) := by
      rw [Real.div_rpow hρpos.le (by norm_num), div_mul_eq_mul_div, div_eq_iff h2pos.ne']
      calc ρ ^ (-q - 1) * (2 * ρ) = 2 * (ρ ^ (-q - 1) * ρ) := by ring
        _ = 2 * ρ ^ (-q) := by rw [e1]
        _ = ((2 : ℝ) ^ (q + 2) * (2 : ℝ) ^ (-q - 1)) * ρ ^ (-q) := by rw [e2]
        _ = 2 ^ (q + 2) * ρ ^ (-q) * 2 ^ (-q - 1) := by ring
    calc ‖F x - F z‖ ≤ K * (ρ / 2) ^ (-q - 1) * ‖x - z‖ := hmvt
      _ ≤ K * (ρ / 2) ^ (-q - 1) * (2 * ρ) := mul_le_mul_of_nonneg_left hxz2 hC0
      _ = K * ((ρ / 2) ^ (-q - 1) * (2 * ρ)) := by ring
      _ = K * 2 ^ (q + 2) * ρ ^ (-q) := by rw [halg]; ring
  
  have hradial : ∀ u : E3, ‖u‖ = 1 → ∀ a b : ℝ, r < a → a ≤ b →
      ‖F (b • u) - F (a • u)‖ ≤ K / q * a ^ (-q) := by
    intro u hu a b ha hab
    have hapos : 0 < a := by linarith
    have hnorm : ∀ t : ℝ, 0 < t → ‖t • u‖ = t := by
      intro t ht
      rw [norm_smul, hu, mul_one, Real.norm_eq_abs, abs_of_pos ht]
    have hderF : ∀ t ∈ Set.Icc a b, HasDerivAt (fun s : ℝ => F (s • u) - F (a • u))
        (fderiv ℝ F (t • u) u) t := by
      intro t ht
      have htpos : 0 < t := by linarith [ht.1]
      have hF : HasFDerivAt F (fderiv ℝ F (t • u)) (t • u) :=
        (hdiff _ (by rw [hnorm t htpos]; linarith [ht.1])).hasFDerivAt
      have hl : HasDerivAt (fun s : ℝ => s • u) u t := by
        simpa using (hasDerivAt_id t).smul_const u
      exact (hF.comp_hasDerivAt t hl).sub_const _
    have hderB : ∀ t : ℝ, 0 < t → HasDerivAt (fun s : ℝ => K / q * (a ^ (-q) - s ^ (-q)))
        (K * t ^ (-q - 1)) t := by
      intro t ht
      have h1 := ((Real.hasDerivAt_rpow_const (p := -q) (Or.inl ht.ne')).const_sub
        (a ^ (-q))).const_mul (K / q)
      convert h1 using 1
      have hq0 : q ≠ 0 := hq.ne'
      field_simp
    have key := image_norm_le_of_norm_deriv_right_le_deriv_boundary'
      (a := a) (b := b) (f := fun s : ℝ => F (s • u) - F (a • u)) (f' := fun t => fderiv ℝ F (t • u) u)
      (B := fun s : ℝ => K / q * (a ^ (-q) - s ^ (-q))) (B' := fun t => K * t ^ (-q - 1))
      (fun t ht => (hderF t ht).continuousAt.continuousWithinAt)
      (fun t ht => (hderF t (Set.Ico_subset_Icc_self ht)).hasDerivWithinAt)
      (by simp)
      (fun t ht => (hderB t (by linarith [ht.1])).continuousAt.continuousWithinAt)
      (fun t ht => (hderB t (by linarith [ht.1])).hasDerivWithinAt)
      (by
        intro t ht
        have htpos : 0 < t := by linarith [ht.1]
        have h1 := (fderiv ℝ F (t • u)).le_opNorm u
        have h2 := hbd (t • u) (by rw [hnorm t htpos]; linarith [ht.1])
        rw [hu, mul_one] at h1
        rw [hnorm t htpos] at h2
        exact h1.trans h2)
      (show b ∈ Set.Icc a b from ⟨hab, le_rfl⟩)
    have hbq : 0 ≤ b ^ (-q) := Real.rpow_nonneg (by linarith) _
    have hKq : 0 ≤ K / q := div_nonneg hK hq.le
    calc ‖F (b • u) - F (a • u)‖ ≤ K / q * (a ^ (-q) - b ^ (-q)) := key
      _ ≤ K / q * a ^ (-q) := mul_le_mul_of_nonneg_left (by linarith) hKq
  
  intro x x' hx hxx'
  obtain ⟨ρ, hρdef⟩ : ∃ ρ : ℝ, ρ = ‖x‖ := ⟨_, rfl⟩
  rw [← hρdef] at hx hxx' ⊢
  have hρpos : 0 < ρ := by linarith
  have hρ'pos : 0 < ‖x'‖ := by linarith
  obtain ⟨u, hudef⟩ : ∃ u : E3, u = ‖x'‖⁻¹ • x' := ⟨_, rfl⟩
  have hu : ‖u‖ = 1 := by
    rw [hudef, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hρ'pos.ne']
  have hx'u : ‖x'‖ • u = x' := by
    rw [hudef, smul_smul, mul_inv_cancel₀ hρ'pos.ne', one_smul]
  have hy : ‖ρ • u‖ = ρ := by
    rw [norm_smul, hu, mul_one, Real.norm_eq_abs, abs_of_pos hρpos]
  obtain ⟨z, hxz, hyz, hz⟩ := horth x (ρ • u) ρ hρpos.le
  have c1 := hchord x z ρ hx hρdef.symm hz hxz
  have c2 := hchord (ρ • u) z ρ hx hy hz hyz
  have c3 := hradial u hu ρ ‖x'‖ (by linarith) hxx'
  rw [hx'u] at c3
  have hsplit : F x - F x' = (F x - F z) - (F (ρ • u) - F z) - (F x' - F (ρ • u)) := by abel
  have h2pow : (2 : ℝ) ^ (q + 3) = 2 * 2 ^ (q + 2) := by
    rw [show q + 3 = (q + 2) + 1 by ring, Real.rpow_add_one (by norm_num : (2 : ℝ) ≠ 0)]
    ring
  have hrhs : K * (1 / q + 2 ^ (q + 3)) * ρ ^ (-q) =
      K * 2 ^ (q + 2) * ρ ^ (-q) + K * 2 ^ (q + 2) * ρ ^ (-q) + K / q * ρ ^ (-q) := by
    rw [h2pow]
    ring
  have t1 := norm_sub_le ((F x - F z) - (F (ρ • u) - F z)) (F x' - F (ρ • u))
  have t2 := norm_sub_le (F x - F z) (F (ρ • u) - F z)
  rw [hsplit, hrhs]
  linarith

theorem eii_path_lipschitz (η : E3 → E3) (M ρ : ℝ) (hM : 0 ≤ M) (hρ : 0 < ρ)
    (hdiff : ∀ w : E3, ρ < ‖w‖ → DifferentiableAt ℝ η w)
    (hbd : ∀ w : E3, ρ < ‖w‖ → ‖fderiv ℝ η w‖ ≤ M) :
    ∀ x y : E3, 2 * ρ < ‖x‖ → 2 * ρ < ‖y‖ → ‖η x - η y‖ ≤ 11 * M * ‖x - y‖ :=
by
  
  have hmvt : ∀ a b : E3, (∀ p ∈ segment ℝ a b, ρ < ‖p‖) → ‖η a - η b‖ ≤ M * ‖a - b‖ := by
    intro a b h
    exact Convex.norm_image_sub_le_of_norm_fderiv_le
      (fun p hp => hdiff p (h p hp)) (fun p hp => hbd p (h p hp))
      (convex_segment a b) (right_mem_segment ℝ a b) (left_mem_segment ℝ a b)
  
  have horth : ∀ x y : E3, ∃ u : E3, ‖u‖ = 1 ∧ @inner ℝ E3 _ x u = 0 ∧
      @inner ℝ E3 _ y u = 0 := by
    intro x y
    obtain ⟨S, hS⟩ : ∃ S : Submodule ℝ E3, S = Submodule.span ℝ (Set.range ![x, y]) := ⟨_, rfl⟩
    have h1 : Module.finrank ℝ S ≤ 2 := by
      have := finrank_range_le_card (R := ℝ) (b := ![x, y])
      rw [hS]
      exact this.trans (by simp)
    have h2 := Submodule.finrank_add_finrank_orthogonal S
    have h3 : Module.finrank ℝ E3 = 3 := finrank_euclideanSpace_fin
    rw [h3] at h2
    have hne : Sᗮ ≠ ⊥ := by
      intro hbot
      rw [hbot, finrank_bot] at h2
      omega
    obtain ⟨w, hw, hw0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
    have hwn : ‖w‖ ≠ 0 := norm_ne_zero_iff.2 hw0
    have hxS : x ∈ S := by rw [hS]; exact Submodule.subset_span ⟨0, rfl⟩
    have hyS : y ∈ S := by rw [hS]; exact Submodule.subset_span ⟨1, rfl⟩
    refine ⟨‖w‖⁻¹ • w, ?_, ?_, ?_⟩
    · rw [norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hwn]
    · rw [real_inner_smul_right, Submodule.inner_right_of_mem_orthogonal hxS hw, mul_zero]
    · rw [real_inner_smul_right, Submodule.inner_right_of_mem_orthogonal hyS hw, mul_zero]
  
  have hchord : ∀ a u : E3, ‖u‖ = 1 → @inner ℝ E3 _ a u = 0 →
      ∀ p ∈ segment ℝ a (‖a‖ • u), ‖a‖ / 2 ≤ ‖p‖ := by
    intro a u hu hau p hp
    obtain ⟨α, β, hα, hβ, hab, rfl⟩ := hp
    have hua : @inner ℝ E3 _ u a = 0 := by rw [real_inner_comm]; exact hau
    have hsq : ‖α • a + β • (‖a‖ • u)‖ ^ 2 = (α ^ 2 + β ^ 2) * ‖a‖ ^ 2 := by
      rw [← real_inner_self_eq_norm_sq]
      simp only [inner_add_left, inner_add_right, real_inner_smul_left, real_inner_smul_right,
        real_inner_self_eq_norm_sq, hu, hau, hua, norm_smul, Real.norm_eq_abs, abs_norm]
      simp only [mul_pow, sq_abs, mul_one]
      ring
    have hn := norm_nonneg (α • a + β • (‖a‖ • u))
    have ha := norm_nonneg a
    have h14 : (1 : ℝ) / 4 ≤ α ^ 2 + β ^ 2 := by
      have hb' : β = 1 - α := by linarith
      rw [hb']
      nlinarith [sq_nonneg (α - 1 / 2)]
    have hq : (‖a‖ / 2) ^ 2 ≤ ‖α • a + β • (‖a‖ • u)‖ ^ 2 := by
      rw [hsq]
      have := mul_le_mul_of_nonneg_right h14 (sq_nonneg ‖a‖)
      nlinarith
    nlinarith
  
  have hstar : ∀ x y : E3, 2 * ρ < ‖x‖ → 2 * ρ < ‖y‖ → ‖x‖ ≤ ‖y‖ →
      ‖η x - η y‖ ≤ 11 * M * ‖x - y‖ := by
    intro x y hx hy hxy
    have hd0 := norm_nonneg (x - y)
    have hty : ‖y‖ ≤ ‖x‖ + ‖x - y‖ := by
      have := norm_sub_norm_le y x
      rw [norm_sub_rev y x] at this
      linarith
    by_cases hcase : ‖x - y‖ ≤ ‖x‖ / 2
    · 
      have h := hmvt x y (by
        intro p hp
        rw [segment_eq_image'] at hp
        obtain ⟨θ, ⟨hθ0, hθ1⟩, rfl⟩ := hp
        show ρ < ‖x + θ • (y - x)‖
        have h1 : ‖θ • (y - x)‖ ≤ ‖x - y‖ := by
          rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg hθ0, norm_sub_rev]
          exact mul_le_of_le_one_left (norm_nonneg _) hθ1
        have h2 := norm_sub_norm_le x (-(θ • (y - x)))
        rw [sub_neg_eq_add, norm_neg] at h2
        linarith)
      have h3 : M * ‖x - y‖ ≤ 11 * M * ‖x - y‖ := by nlinarith
      linarith
    · 
      push_neg at hcase
      obtain ⟨u, hu, hxu, hyu⟩ := horth x y
      have hs0 : 0 ≤ ‖x‖ := norm_nonneg x
      have hnP : ‖‖x‖ • u‖ = ‖x‖ := by rw [norm_smul, norm_norm, hu, mul_one]
      have hnQ : ‖‖y‖ • u‖ = ‖y‖ := by rw [norm_smul, norm_norm, hu, mul_one]
      have hL1 := hmvt x (‖x‖ • u) (fun p hp => by
        have := hchord x u hu hxu p hp
        linarith)
      have hL3 := hmvt y (‖y‖ • u) (fun p hp => by
        have := hchord y u hu hyu p hp
        linarith)
      have hL2 := hmvt (‖x‖ • u) (‖y‖ • u) (by
        intro p hp
        obtain ⟨α, β, hα, hβ, hab, rfl⟩ := hp
        have he : α • (‖x‖ • u) + β • (‖y‖ • u) = (α * ‖x‖ + β * ‖y‖) • u := by
          rw [smul_smul, smul_smul, add_smul]
        have hα' : α = 1 - β := by linarith
        have hc : ‖x‖ ≤ α * ‖x‖ + β * ‖y‖ := by
          rw [hα']
          nlinarith [mul_nonneg hβ (sub_nonneg.2 hxy)]
        rw [he, norm_smul, hu, mul_one, Real.norm_eq_abs, abs_of_nonneg (by linarith)]
        linarith)
      have hl1 : ‖x - ‖x‖ • u‖ ≤ 2 * ‖x‖ := by
        have := norm_sub_le x (‖x‖ • u)
        rw [hnP] at this
        linarith
      have hl3 : ‖y - ‖y‖ • u‖ ≤ 2 * ‖y‖ := by
        have := norm_sub_le y (‖y‖ • u)
        rw [hnQ] at this
        linarith
      have hl2 : ‖‖x‖ • u - ‖y‖ • u‖ = ‖y‖ - ‖x‖ := by
        rw [← sub_smul, norm_smul, hu, mul_one, Real.norm_eq_abs, abs_of_nonpos (by linarith)]
        ring
      have htri : ‖η x - η y‖ ≤ ‖η x - η (‖x‖ • u)‖ + ‖η (‖x‖ • u) - η (‖y‖ • u)‖ +
          ‖η y - η (‖y‖ • u)‖ := by
        have e : η x - η y = ((η x - η (‖x‖ • u)) + (η (‖x‖ • u) - η (‖y‖ • u))) -
            (η y - η (‖y‖ • u)) := by abel
        rw [e]
        have h1 := norm_sub_le ((η x - η (‖x‖ • u)) + (η (‖x‖ • u) - η (‖y‖ • u)))
          (η y - η (‖y‖ • u))
        have h2 := norm_add_le (η x - η (‖x‖ • u)) (η (‖x‖ • u) - η (‖y‖ • u))
        linarith
      have m1 := mul_le_mul_of_nonneg_left hl1 hM
      have m3 := mul_le_mul_of_nonneg_left hl3 hM
      rw [hl2] at hL2
      have hfin : ‖x‖ + 3 * ‖y‖ ≤ 11 * ‖x - y‖ := by linarith
      have m4 := mul_le_mul_of_nonneg_left hfin hM
      nlinarith
  
  intro x y hx hy
  rcases le_total ‖x‖ ‖y‖ with h | h
  · exact hstar x y hx hy h
  · have := hstar y x hy hx h
    rw [norm_sub_rev (η y), norm_sub_rev y] at this
    exact this

theorem exterior_isometric_inverse (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (q : ℝ) (hq : 0 < q)
    (hsmooth : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun z => G z a b) {x : E3 | 1 < ‖x‖})
    (hsymm : ∀ (z : E3) (a b : Fin 3), G z a b = G z b a)
    (hdecay : ∀ i j : Fin 3, ∀ l : ℕ, l ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ l
          (fun y => G y i j - if i = j then (1 : ℝ) else 0) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-q - (l : ℝ)))
    (ψ : E3 → E3) (hψ : ContDiffOn ℝ ∞ ψ {x : E3 | 2 < ‖x‖})
    (hgram : ∀ z : E3, 2 < ‖z‖ → ∀ i j : Fin 3,
      @inner ℝ E3 _ (fderiv ℝ ψ z (e i)) (fderiv ℝ ψ z (e j)) = G z i j) :
    ∃ R : ℝ, ∃ J₀ : E3 → E3, 0 < R ∧ ContDiffOn ℝ ∞ J₀ {y : E3 | R < ‖y‖} ∧
      Set.MapsTo J₀ {y : E3 | R < ‖y‖} {x : E3 | 2 < ‖x‖} ∧
      Set.InjOn J₀ {y : E3 | R < ‖y‖} ∧
      ∀ y : E3, R < ‖y‖ → ∀ i j : Fin 3,
        ∑ a : Fin 3, ∑ b : Fin 3,
          fderiv ℝ J₀ y (e i) a * G (J₀ y) a b * fderiv ℝ J₀ y (e j) b =
            if i = j then (1 : ℝ) else 0 :=
by
  have hΩ2open : IsOpen {x : E3 | 2 < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hψdiff : ∀ w : E3, 2 < ‖w‖ → DifferentiableAt ℝ ψ w := fun w hw =>
    (hψ.contDiffAt (hΩ2open.mem_nhds hw)).differentiableAt (by simp)
  
  
  
  have hv : ∀ v : E3, v = ∑ a : Fin 3, v a • e a := by
    intro v
    have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v
    simpa [EuclideanSpace.basisFun_apply, EuclideanSpace.basisFun_repr] using this.symm
  have habs : ∀ (v : E3) (a : Fin 3), |v a| ≤ ‖v‖ := by
    intro v a
    have := PiLp.norm_apply_le v a
    simpa [Real.norm_eq_abs] using this
  have hinner_e : ∀ a b : Fin 3, @inner ℝ E3 _ (e a) (e b) = if a = b then (1 : ℝ) else 0 := by
    intro a b
    rw [EuclideanSpace.inner_single_left, EuclideanSpace.single_apply]
    by_cases h : a = b
    · subst h; simp
    · simp [h]
  have hcols : ∀ T : E3 →L[ℝ] E3, ‖T‖ ≤ ∑ i : Fin 3, ‖T (e i)‖ := by
    intro T
    refine ContinuousLinearMap.opNorm_le_bound _
      (Finset.sum_nonneg fun i _ => norm_nonneg _) fun v => ?_
    have hTv : T v = ∑ a : Fin 3, v a • T (e a) := by
      conv_lhs => rw [hv v]
      rw [map_sum]
      simp only [map_smul]
    calc ‖T v‖ = ‖∑ a : Fin 3, v a • T (e a)‖ := by rw [hTv]
      _ ≤ ∑ a : Fin 3, ‖v a • T (e a)‖ := norm_sum_le _ _
      _ = ∑ a : Fin 3, |v a| * ‖T (e a)‖ := by simp only [norm_smul, Real.norm_eq_abs]
      _ ≤ ∑ a : Fin 3, ‖v‖ * ‖T (e a)‖ :=
          Finset.sum_le_sum fun a _ => mul_le_mul_of_nonneg_right (habs v a) (norm_nonneg _)
      _ = (∑ i : Fin 3, ‖T (e i)‖) * ‖v‖ := by rw [← Finset.mul_sum, mul_comm]
  have hexp : ∀ (P : E3 →L[ℝ] E3) (v w : E3), @inner ℝ E3 _ (P v) (P w) =
      ∑ a : Fin 3, ∑ b : Fin 3, v a * w b * @inner ℝ E3 _ (P (e a)) (P (e b)) := by
    intro P v w
    conv_lhs => rw [hv v, hv w]
    simp only [map_sum, map_smul, sum_inner, inner_sum, real_inner_smul_left,
      real_inner_smul_right]
    simp only [Fin.sum_univ_three]
    ring
  have hnormsq : ∀ v : E3, ‖v‖ ^ 2 = v 0 ^ 2 + v 1 ^ 2 + v 2 ^ 2 := by
    intro v
    rw [← real_inner_self_eq_norm_sq]
    have h := hexp (ContinuousLinearMap.id ℝ E3) v v
    simp only [ContinuousLinearMap.id_apply, Fin.sum_univ_three, hinner_e] at h
    rw [h]
    simp only [Fin.isValue, Fin.reduceEq, ↓reduceIte, mul_one, mul_zero, add_zero, zero_add]
    ring
  have key : ∀ x y E : ℝ, |E| ≤ 1 / 6 → |x * y * E| ≤ 1 / 12 * (x ^ 2 + y ^ 2) := by
    intro x y E hE
    rw [abs_mul, abs_mul]
    have h1 : |x| * |y| * |E| ≤ |x| * |y| * (1 / 6) :=
      mul_le_mul_of_nonneg_left hE (mul_nonneg (abs_nonneg x) (abs_nonneg y))
    have h2 : 2 * (|x| * |y|) ≤ x ^ 2 + y ^ 2 := by
      nlinarith [sq_nonneg (|x| - |y|), sq_abs x, sq_abs y]
    linarith
  
  have hNI : ∀ T : E3 →L[ℝ] E3, (∀ i j : Fin 3,
      |@inner ℝ E3 _ (T (e i)) (T (e j)) - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6) →
      ∀ v : E3, ‖v‖ ≤ 2 * ‖T v‖ ∧ ‖T v‖ ≤ 2 * ‖v‖ := by
    intro T hT v
    have hQ := hexp T v v
    rw [real_inner_self_eq_norm_sq] at hQ
    simp only [Fin.sum_univ_three] at hQ
    have hv2 := hnormsq v
    have d0 := hT 0 0
    have d1 := hT 1 1
    have d2 := hT 2 2
    rw [if_pos rfl] at d0 d1 d2
    have o01 := hT 0 1
    have o02 := hT 0 2
    have o10 := hT 1 0
    have o12 := hT 1 2
    have o20 := hT 2 0
    have o21 := hT 2 1
    rw [if_neg (show (0 : Fin 3) ≠ 1 by decide), sub_zero] at o01
    rw [if_neg (show (0 : Fin 3) ≠ 2 by decide), sub_zero] at o02
    rw [if_neg (show (1 : Fin 3) ≠ 0 by decide), sub_zero] at o10
    rw [if_neg (show (1 : Fin 3) ≠ 2 by decide), sub_zero] at o12
    rw [if_neg (show (2 : Fin 3) ≠ 0 by decide), sub_zero] at o20
    rw [if_neg (show (2 : Fin 3) ≠ 1 by decide), sub_zero] at o21
    obtain ⟨l00, u00⟩ := abs_le.1 (key (v 0) (v 0) _ d0)
    obtain ⟨l11, u11⟩ := abs_le.1 (key (v 1) (v 1) _ d1)
    obtain ⟨l22, u22⟩ := abs_le.1 (key (v 2) (v 2) _ d2)
    obtain ⟨l01, u01⟩ := abs_le.1 (key (v 0) (v 1) _ o01)
    obtain ⟨l02, u02⟩ := abs_le.1 (key (v 0) (v 2) _ o02)
    obtain ⟨l10, u10⟩ := abs_le.1 (key (v 1) (v 0) _ o10)
    obtain ⟨l12, u12⟩ := abs_le.1 (key (v 1) (v 2) _ o12)
    obtain ⟨l20, u20⟩ := abs_le.1 (key (v 2) (v 0) _ o20)
    obtain ⟨l21, u21⟩ := abs_le.1 (key (v 2) (v 1) _ o21)
    have hlow : ‖v‖ ^ 2 ≤ 4 * ‖T v‖ ^ 2 := by nlinarith
    have hup : ‖T v‖ ^ 2 ≤ 4 * ‖v‖ ^ 2 := by nlinarith
    constructor
    · nlinarith [sq_nonneg (‖v‖ + 2 * ‖T v‖), norm_nonneg v, norm_nonneg (T v)]
    · nlinarith [sq_nonneg (‖T v‖ + 2 * ‖v‖), norm_nonneg v, norm_nonneg (T v)]
  
  
  
  obtain ⟨R₁, C, hR₁, hC, hb⟩ := metric_coeff_bounds G q hq hsmooth hdecay
  have hT1 : Tendsto (fun t : ℝ => C * t ^ (-q)) atTop (𝓝 0) := by
    have := (tendsto_rpow_neg_atTop hq).const_mul C
    rwa [mul_zero] at this
  obtain ⟨a₀, ha₀⟩ := Filter.eventually_atTop.1 ((tendsto_order.1 hT1).2 (1 / 6) (by norm_num))
  obtain ⟨R₀, hR₀def⟩ : ∃ R₀ : ℝ, R₀ = max (max R₁ 2) a₀ := ⟨_, rfl⟩
  have hR₀2 : 2 ≤ R₀ := by rw [hR₀def]; exact le_trans (le_max_right _ _) (le_max_left _ _)
  have hR₀R₁ : R₁ ≤ R₀ := by rw [hR₀def]; exact le_trans (le_max_left _ _) (le_max_left _ _)
  have hR₀a : a₀ ≤ R₀ := by rw [hR₀def]; exact le_max_right _ _
  have hR₀pos : 0 < R₀ := by linarith
  have hnear : ∀ z : E3, R₀ < ‖z‖ → ∀ i j : Fin 3,
      |G z i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6 := by
    intro z hz i j
    have h1 := ((hb z (lt_of_le_of_lt hR₀R₁ hz)).2 i j 0).1
    have h2 := ha₀ ‖z‖ (le_trans hR₀a hz.le)
    linarith
  have hdG : ∀ z : E3, R₀ < ‖z‖ → ∀ i j : Fin 3,
      ‖fderiv ℝ (fun y => G y i j) z‖ ≤ C * ‖z‖ ^ (-q - 1) :=
    fun z hz i j => ((hb z (lt_of_le_of_lt hR₀R₁ hz)).2 i j 0).2.1
  have hgramT : ∀ x : E3, R₀ < ‖x‖ → ∀ i j : Fin 3,
      |@inner ℝ E3 _ (fderiv ℝ ψ x (e i)) (fderiv ℝ ψ x (e j))
        - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6 := by
    intro x hx i j
    rw [hgram x (by linarith) i j]
    exact hnear x hx i j
  
  
  
  have hkos := eii_koszul_column_bound G ψ q C R₀ hR₀2 hC hψ hgram hnear hdG
  obtain ⟨K, hKdef⟩ : ∃ K : ℝ, K = 81 / 2 * C := ⟨_, rfl⟩
  have hK : 0 ≤ K := by rw [hKdef]; linarith
  have hcolD : ∀ i : Fin 3, ∀ z : E3, R₀ < ‖z‖ →
      DifferentiableAt ℝ (fun w => fderiv ℝ ψ w (e i)) z := fun i z hz => (hkos z hz i 0).1
  have hcolB : ∀ i : Fin 3, ∀ z : E3, R₀ < ‖z‖ →
      ‖fderiv ℝ (fun w => fderiv ℝ ψ w (e i)) z‖ ≤ K * ‖z‖ ^ (-q - 1) := by
    intro i z hz
    refine (hcols _).trans ?_
    rw [Fin.sum_univ_three]
    have h0 := (hkos z hz i 0).2
    have h1 := (hkos z hz i 1).2
    have h2 := (hkos z hz i 2).2
    rw [hKdef]
    linarith
  
  
  
  obtain ⟨K₂, hK₂def⟩ : ∃ K₂ : ℝ, K₂ = K * (1 / q + 2 ^ (q + 3)) := ⟨_, rfl⟩
  have hK₂ : 0 ≤ K₂ := by
    rw [hK₂def]
    have h1 := one_div_pos.2 hq
    have h2 := Real.rpow_pos_of_pos (by norm_num : (0 : ℝ) < 2) (q + 3)
    exact mul_nonneg hK (by linarith)
  have hosc : ∀ i : Fin 3, ∀ x x' : E3, 2 * R₀ < ‖x‖ → ‖x‖ ≤ ‖x'‖ →
      ‖fderiv ℝ ψ x (e i) - fderiv ℝ ψ x' (e i)‖ ≤ K₂ * ‖x‖ ^ (-q) := by
    intro i x x' h1 h2
    rw [hK₂def]
    exact eii_column_oscillation (fun w => fderiv ℝ ψ w (e i)) q K R₀ hq hK hR₀pos
      (hcolD i) (hcolB i) x x' h1 h2
  
  
  
  have hT2 : Tendsto (fun t : ℝ => 3 * K₂ * t ^ (-q)) atTop (𝓝 0) := by
    have := (tendsto_rpow_neg_atTop hq).const_mul (3 * K₂)
    rwa [mul_zero] at this
  obtain ⟨t₀, ht₀⟩ := Filter.eventually_atTop.1 ((tendsto_order.1 hT2).2 (1 / 176) (by norm_num))
  obtain ⟨r₄, hr₄def⟩ : ∃ r₄ : ℝ, r₄ = max (2 * R₀) t₀ := ⟨_, rfl⟩
  have hr₄R : 2 * R₀ ≤ r₄ := by rw [hr₄def]; exact le_max_left _ _
  have hr₄t : t₀ ≤ r₄ := by rw [hr₄def]; exact le_max_right _ _
  have hr₄pos : 0 < r₄ := by linarith
  have hsmall : 3 * K₂ * r₄ ^ (-q) ≤ 1 / 176 := (ht₀ r₄ hr₄t).le
  obtain ⟨x₀, hx₀def⟩ : ∃ x₀ : E3, x₀ = (2 * r₄) • e 0 := ⟨_, rfl⟩
  have he0 : ‖e 0‖ = 1 := by rw [EuclideanSpace.norm_single, norm_one]
  have hx₀n : ‖x₀‖ = 2 * r₄ := by
    rw [hx₀def, norm_smul, he0, mul_one, Real.norm_eq_abs, abs_of_pos (by linarith)]
  obtain ⟨L₀, hL₀def⟩ : ∃ L₀ : E3 →L[ℝ] E3, L₀ = fderiv ℝ ψ x₀ := ⟨_, rfl⟩
  have hrpow_anti : ∀ s t : ℝ, 0 < s → s ≤ t → t ^ (-q) ≤ s ^ (-q) :=
    fun s t hs hst => Real.rpow_le_rpow_of_nonpos hs hst (by linarith)
  have hcolclose : ∀ i : Fin 3, ∀ w : E3, r₄ < ‖w‖ →
      ‖fderiv ℝ ψ w (e i) - L₀ (e i)‖ ≤ K₂ * r₄ ^ (-q) := by
    intro i w hw
    rw [hL₀def]
    rcases le_or_gt ‖w‖ (2 * r₄) with h | h
    · have h' := hosc i w x₀ (by linarith) (by rw [hx₀n]; exact h)
      calc _ ≤ K₂ * ‖w‖ ^ (-q) := h'
        _ ≤ K₂ * r₄ ^ (-q) := mul_le_mul_of_nonneg_left (hrpow_anti _ _ hr₄pos hw.le) hK₂
    · have h' := hosc i x₀ w (by rw [hx₀n]; linarith) (by rw [hx₀n]; exact h.le)
      rw [norm_sub_rev] at h'
      calc _ ≤ K₂ * ‖x₀‖ ^ (-q) := h'
        _ ≤ K₂ * r₄ ^ (-q) := by
          rw [hx₀n]
          exact mul_le_mul_of_nonneg_left (hrpow_anti _ _ hr₄pos (by linarith)) hK₂
  have hηdiff : ∀ w : E3, r₄ < ‖w‖ → DifferentiableAt ℝ (fun x => ψ x - L₀ x) w :=
    fun w hw => (hψdiff w (by linarith)).sub L₀.differentiableAt
  have hηfd : ∀ w : E3, r₄ < ‖w‖ → fderiv ℝ (fun x => ψ x - L₀ x) w = fderiv ℝ ψ w - L₀ :=
    fun w hw => ((hψdiff w (by linarith)).hasFDerivAt.sub L₀.hasFDerivAt).fderiv
  have hηbd : ∀ w : E3, r₄ < ‖w‖ → ‖fderiv ℝ (fun x => ψ x - L₀ x) w‖ ≤ 1 / 176 := by
    intro w hw
    rw [hηfd w hw]
    refine (hcols _).trans ?_
    rw [Fin.sum_univ_three]
    simp only [ContinuousLinearMap.sub_apply]
    have h0 := hcolclose 0 w hw
    have h1 := hcolclose 1 w hw
    have h2 := hcolclose 2 w hw
    linarith
  have hlip := eii_path_lipschitz (fun x => ψ x - L₀ x) (1 / 176) r₄ (by norm_num) hr₄pos
    hηdiff hηbd
  obtain ⟨r, hrdef⟩ : ∃ r : ℝ, r = 2 * r₄ := ⟨_, rfl⟩
  have hrpos : 0 < r := by linarith
  have hr2 : 2 < r := by linarith
  have hrR₀ : R₀ < r := by linarith
  have happrox : ∀ x y : E3, r < ‖x‖ → r < ‖y‖ →
      ‖ψ x - ψ y - L₀ (x - y)‖ ≤ 1 / 16 * ‖x - y‖ := by
    intro x y hx hy
    have h := hlip x y (by linarith) (by linarith)
    have heq : (ψ x - L₀ x) - (ψ y - L₀ y) = ψ x - ψ y - L₀ (x - y) := by
      rw [map_sub]; abel
    simp only at h
    rw [heq] at h
    linarith [norm_nonneg (x - y)]
  
  
  
  have hx₀R : R₀ < ‖x₀‖ := by rw [hx₀n]; linarith
  have hL₀iso : ∀ v : E3, ‖v‖ ≤ 2 * ‖L₀ v‖ ∧ ‖L₀ v‖ ≤ 2 * ‖v‖ := by
    rw [hL₀def]; exact hNI _ (hgramT x₀ hx₀R)
  have hL₀inj : Function.Injective L₀ := by
    intro v w hvw
    have h := (hL₀iso (v - w)).1
    rw [map_sub, hvw, sub_self, norm_zero, mul_zero] at h
    exact sub_eq_zero.1 (norm_le_zero_iff.1 h)
  obtain ⟨L', hL'def⟩ : ∃ L' : E3 ≃L[ℝ] E3,
      L' = (LinearEquiv.ofInjectiveEndo (L₀ : E3 →ₗ[ℝ] E3) hL₀inj).toContinuousLinearEquiv :=
    ⟨_, rfl⟩
  have hL'apply : ∀ v : E3, L' v = L₀ v := by intro v; rw [hL'def]; rfl
  have hL'coe : (L' : E3 →L[ℝ] E3) = L₀ := by ext1 v; exact hL'apply v
  have hL'symm : ‖(L'.symm : E3 →L[ℝ] E3)‖ ≤ 2 := by
    refine ContinuousLinearMap.opNorm_le_bound _ (by norm_num) fun w => ?_
    have h := (hL₀iso (L'.symm w)).1
    rw [← hL'apply, ContinuousLinearEquiv.apply_symm_apply] at h
    exact h
  have hsymm_pos : 0 < ‖(L'.symm : E3 →L[ℝ] E3)‖ := by
    have h1 := (L'.symm : E3 →L[ℝ] E3).le_opNorm (L' (e 0))
    rw [ContinuousLinearEquiv.coe_coe, ContinuousLinearEquiv.symm_apply_apply, he0] at h1
    by_contra hcon
    push_neg at hcon
    have h0 : ‖(L'.symm : E3 →L[ℝ] E3)‖ = 0 := le_antisymm hcon (norm_nonneg _)
    rw [h0, zero_mul] at h1
    linarith
  have hinvhalf : (1 / 2 : ℝ) ≤ ‖(L'.symm : E3 →L[ℝ] E3)‖⁻¹ := by
    calc (1 / 2 : ℝ) = (2 : ℝ)⁻¹ := by norm_num
      _ ≤ ‖(L'.symm : E3 →L[ℝ] E3)‖⁻¹ := inv_anti₀ hsymm_pos hL'symm
  have hder : ∀ x : E3, r < ‖x‖ → Function.Injective (fderiv ℝ ψ x) := by
    intro x hx v w hvw
    have h := (hNI _ (hgramT x (by linarith)) (v - w)).1
    rw [map_sub, hvw, sub_self, norm_zero, mul_zero] at h
    exact sub_eq_zero.1 (norm_le_zero_iff.1 h)
  
  
  
  have h16 : ((1 / 16 : NNReal) : ℝ) = 1 / 16 := by norm_num
  have hΩopen : IsOpen {x : E3 | r < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hf : ApproximatesLinearOn ψ (L' : E3 →L[ℝ] E3) {x : E3 | r < ‖x‖} (1 / 16 : NNReal) := by
    intro x hx y hy
    rw [hL'coe, h16]
    exact happrox x y hx hy
  have hc : (1 / 16 : NNReal) < ‖(L'.symm : E3 →L[ℝ] E3)‖₊⁻¹ := by
    rw [← NNReal.coe_lt_coe, NNReal.coe_inv, coe_nnnorm, h16]
    linarith
  let φ := ApproximatesLinearOn.toOpenPartialHomeomorph ψ {x : E3 | r < ‖x‖} hf (Or.inr hc) hΩopen
  have hφsrc : φ.source = {x : E3 | r < ‖x‖} :=
    ApproximatesLinearOn.toOpenPartialHomeomorph_source _ _ _ _ _
  have hφtgt : φ.target = ψ '' {x : E3 | r < ‖x‖} :=
    ApproximatesLinearOn.toOpenPartialHomeomorph_target _ _ _ _ _
  have hφcoe : (φ : E3 → E3) = ψ := ApproximatesLinearOn.toOpenPartialHomeomorph_coe _ _ _ _ _
  
  obtain ⟨x₁, hx₁def⟩ : ∃ x₁ : E3, x₁ = (2 * r) • e 0 := ⟨_, rfl⟩
  have hx₁n : ‖x₁‖ = 2 * r := by
    rw [hx₁def, norm_smul, he0, mul_one, Real.norm_eq_abs, abs_of_pos (by linarith)]
  have hx₁Ω : r < ‖x₁‖ := by rw [hx₁n]; linarith
  obtain ⟨C₀, hC₀⟩ : ∃ C₀ : ℝ, C₀ = ‖ψ x₁ - L₀ x₁‖ + r / 8 := ⟨_, rfl⟩
  have hC₀pos : 0 < C₀ := by
    have := norm_nonneg (ψ x₁ - L₀ x₁)
    rw [hC₀]; linarith
  have hgrowth : ∀ x : E3, r < ‖x‖ → ‖ψ x - L₀ x‖ ≤ C₀ + ‖x‖ / 16 := by
    intro x hx
    have h := happrox x x₁ hx hx₁Ω
    have h2 : ‖x - x₁‖ ≤ ‖x‖ + 2 * r := by
      calc ‖x - x₁‖ ≤ ‖x‖ + ‖x₁‖ := norm_sub_le _ _
        _ = ‖x‖ + 2 * r := by rw [hx₁n]
    have h3 : ψ x - L₀ x = (ψ x - ψ x₁ - L₀ (x - x₁)) + (ψ x₁ - L₀ x₁) := by
      rw [map_sub]; abel
    have h4 : ‖ψ x - L₀ x‖ ≤ ‖ψ x - ψ x₁ - L₀ (x - x₁)‖ + ‖ψ x₁ - L₀ x₁‖ := by
      rw [h3]; exact norm_add_le _ _
    rw [hC₀]
    linarith
  obtain ⟨R, hRdef⟩ : ∃ R : ℝ, R = 4 * r + 32 * C₀ + 1 := ⟨_, rfl⟩
  have hRpos : 0 < R := by rw [hRdef]; linarith
  have htarget : ∀ y : E3, R < ‖y‖ → y ∈ φ.target := by
    intro y hy
    rw [hφtgt]
    obtain ⟨bb, hbb⟩ : ∃ bb : E3, bb = L'.symm y := ⟨_, rfl⟩
    have hLb : L₀ bb = y := by rw [← hL'apply, hbb, ContinuousLinearEquiv.apply_symm_apply]
    have hbnorm : ‖y‖ ≤ 2 * ‖bb‖ := by
      have := (hL₀iso bb).2
      rw [hLb] at this
      exact this
    have hbΩ : r < ‖bb‖ := by rw [hRdef] at hy; linarith
    have hε : (0 : ℝ) ≤ ‖bb‖ / 2 := by positivity
    have hball : closedBall bb (‖bb‖ / 2) ⊆ {x : E3 | r < ‖x‖} := by
      intro x hx
      rw [mem_closedBall, dist_eq_norm] at hx
      show r < ‖x‖
      have h1 := norm_sub_norm_le bb x
      rw [norm_sub_rev bb x] at h1
      linarith
    have hsurj := hf.surjOn_closedBall_of_nonlinearRightInverse L'.toNonlinearRightInverse hε hball
    have hrad : ‖y - ψ bb‖ ≤
        (((‖(L'.symm : E3 →L[ℝ] E3)‖₊ : ℝ))⁻¹ - ((1 / 16 : NNReal) : ℝ)) * (‖bb‖ / 2) := by
      rw [coe_nnnorm, h16]
      have h1 : ‖y - ψ bb‖ ≤ C₀ + ‖bb‖ / 16 := by
        rw [norm_sub_rev, ← hLb]
        exact hgrowth bb hbΩ
      have h2 : (1 / 2 - 1 / 16) * (‖bb‖ / 2) ≤
          (‖(L'.symm : E3 →L[ℝ] E3)‖⁻¹ - 1 / 16) * (‖bb‖ / 2) :=
        mul_le_mul_of_nonneg_right (by linarith) hε
      have h3 : C₀ + ‖bb‖ / 16 ≤ (1 / 2 - 1 / 16) * (‖bb‖ / 2) := by
        rw [hRdef] at hy
        linarith
      linarith
    have hmem : y ∈ closedBall (ψ bb)
        ((((L'.toNonlinearRightInverse).nnnorm : ℝ)⁻¹ - ((1 / 16 : NNReal) : ℝ)) * (‖bb‖ / 2)) := by
      rw [mem_closedBall, dist_eq_norm]
      exact hrad
    obtain ⟨x, hx, hxy⟩ := hsurj hmem
    exact ⟨x, hball hx, hxy⟩
  have hkey : ∀ y : E3, R < ‖y‖ → ContDiffAt ℝ ∞ (φ.symm : E3 → E3) y ∧
      r < ‖φ.symm y‖ ∧ φ (φ.symm y) = y ∧
      ∀ v : E3, fderiv ℝ ψ (φ.symm y) (fderiv ℝ (φ.symm : E3 → E3) y v) = v := by
    intro y hy
    have hyt := htarget y hy
    have hxs : φ.symm y ∈ φ.source := φ.map_target hyt
    rw [hφsrc] at hxs
    have hxs' : r < ‖φ.symm y‖ := hxs
    have hcd : ContDiffAt ℝ ∞ ψ (φ.symm y) :=
      hψ.contDiffAt (hΩ2open.mem_nhds (show 2 < ‖φ.symm y‖ by linarith))
    let f₀ : E3 ≃L[ℝ] E3 := (LinearEquiv.ofInjectiveEndo
      (fderiv ℝ ψ (φ.symm y) : E3 →ₗ[ℝ] E3) (hder _ hxs')).toContinuousLinearEquiv
    have hf₀ : (f₀ : E3 →L[ℝ] E3) = fderiv ℝ ψ (φ.symm y) := by ext1 v; rfl
    have hfd : HasFDerivAt (φ : E3 → E3) (f₀ : E3 →L[ℝ] E3) (φ.symm y) := by
      rw [hφcoe, hf₀]; exact (hcd.differentiableAt (by simp)).hasFDerivAt
    have hcd' : ContDiffAt ℝ ∞ (φ : E3 → E3) (φ.symm y) := by rw [hφcoe]; exact hcd
    refine ⟨φ.contDiffAt_symm hyt hfd hcd', hxs', φ.right_inv hyt, fun v => ?_⟩
    have hsymm' := φ.hasFDerivAt_symm hyt hfd
    rw [hsymm'.fderiv, ← hf₀]
    exact f₀.apply_symm_apply v
  
  
  
  refine ⟨R, (φ.symm : E3 → E3), hRpos, ?_, ?_, ?_, ?_⟩
  · intro y hy
    exact (hkey y hy).1.contDiffWithinAt
  · intro y hy
    show 2 < ‖φ.symm y‖
    have := (hkey y hy).2.1
    linarith
  · intro y₁ hy₁ y₂ hy₂ h
    calc y₁ = φ (φ.symm y₁) := ((hkey y₁ hy₁).2.2.1).symm
      _ = φ (φ.symm y₂) := by rw [h]
      _ = y₂ := (hkey y₂ hy₂).2.2.1
  · intro y hy i j
    have hx2 : 2 < ‖φ.symm y‖ := by
      have := (hkey y hy).2.1
      linarith
    have hPQ := (hkey y hy).2.2.2
    have h1 := hexp (fderiv ℝ ψ (φ.symm y)) (fderiv ℝ (φ.symm : E3 → E3) y (e i))
      (fderiv ℝ (φ.symm : E3 → E3) y (e j))
    rw [hPQ, hPQ, hinner_e] at h1
    rw [h1]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    rw [hgram _ hx2 a b]
    ring

theorem local_isometry_rigidity [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (U : Set E3) (hU : IsOpen U) (hUc : IsPreconnected U) (f₁ f₂ : E3 → M)
    (hf₁ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ f₁ U) (hf₂ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ f₂ U)
    (hg₁ : ∀ y ∈ U, g.coeff f₁ y = 1) (hg₂ : ∀ y ∈ U, g.coeff f₂ y = 1)
    (z : E3) (hz : z ∈ U) (hval : f₁ z = f₂ z)
    (hder : ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) f₁ z v : E3) =
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) f₂ z v) :
    Set.EqOn f₁ f₂ U :=
by
  have hinf : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  
  
  
  have s1 : ∀ (s : Set E3) (_hs : IsOpen s) (_hsc : IsPreconnected s) (φ : E3 → E3)
      (_hφ : ContDiffOn ℝ 2 φ s)
      (_horth : ∀ x ∈ s, ∀ u w : E3, inner ℝ (fderiv ℝ φ x u) (fderiv ℝ φ x w) = inner ℝ u w)
      (y : E3) (_hy : y ∈ s) (_hφy : φ y = y)
      (_hDφ : fderiv ℝ φ y = ContinuousLinearMap.id ℝ E3), Set.EqOn φ id s := by
    intro s hs hsc φ hφ horth y hy hφy hDφ
    have hD1 : ContDiffOn ℝ 1 (fderiv ℝ φ) s := hφ.fderiv_of_isOpen hs (by norm_num)
    have hDdiff : DifferentiableOn ℝ (fderiv ℝ φ) s := hD1.differentiableOn (by norm_num)
    have hφdiff : DifferentiableOn ℝ φ s := hφ.differentiableOn (by norm_num)
    have hH0 : ∀ x ∈ s, fderiv ℝ (fderiv ℝ φ) x = 0 := by
      intro x hx
      have hxn : s ∈ 𝓝 x := hs.mem_nhds hx
      have hsym : ∀ u v, fderiv ℝ (fderiv ℝ φ) x u v = fderiv ℝ (fderiv ℝ φ) x v u := by
        have hss := (hφ.contDiffAt hxn).isSymmSndFDerivAt
          (by simp [minSmoothness_of_isRCLikeNormedField])
        intro u v
        exact hss u v
      have hHas : HasFDerivAt (fderiv ℝ φ) (fderiv ℝ (fderiv ℝ φ) x) x :=
        (hDdiff.differentiableAt hxn).hasFDerivAt
      have hanti : ∀ u v w, inner ℝ (fderiv ℝ (fderiv ℝ φ) x u v) (fderiv ℝ φ x w)
          + inner ℝ (fderiv ℝ (fderiv ℝ φ) x u w) (fderiv ℝ φ x v) = 0 := by
        intro u v w
        have h1 := hHas.clm_apply (hasFDerivAt_const v x)
        have h2 := hHas.clm_apply (hasFDerivAt_const w x)
        have h3 := h1.inner ℝ h2
        have h4 : HasFDerivAt (fun x' => inner ℝ (fderiv ℝ φ x' v) (fderiv ℝ φ x' w))
            (0 : E3 →L[ℝ] ℝ) x := by
          apply (hasFDerivAt_const (inner ℝ v w : ℝ) x).congr_of_eventuallyEq
          filter_upwards [hxn] with x' hx'
          exact horth x' hx' v w
        have h5 := congrArg (fun L : E3 →L[ℝ] ℝ => L u) (h3.unique h4)
        simp [fderivInnerCLM_apply] at h5
        rw [real_inner_comm (fderiv ℝ φ x v)]
        linarith
      have hT : ∀ u v w, inner ℝ (fderiv ℝ (fderiv ℝ φ) x u v) (fderiv ℝ φ x w) = 0 := by
        intro u v w
        have e1 := hanti u v w
        have e2 := hanti w u v
        have e3 := hanti v w u
        rw [hsym u w] at e1
        rw [hsym w v] at e2
        rw [hsym v u] at e3
        linarith
      have hDinj : Function.Injective (fderiv ℝ φ x) := by
        intro a b hab
        have h0 : fderiv ℝ φ x (a - b) = 0 := by rw [map_sub, hab, sub_self]
        have h := horth x hx (a - b) (a - b)
        rw [h0, inner_zero_left] at h
        exact sub_eq_zero.mp (inner_self_eq_zero.mp h.symm)
      have hDsurj : Function.Surjective (fderiv ℝ φ x) :=
        (LinearMap.injective_iff_surjective
          (f := ((fderiv ℝ φ x : E3 →L[ℝ] E3) : E3 →ₗ[ℝ] E3))).mp hDinj
      apply ContinuousLinearMap.ext; intro u
      apply ContinuousLinearMap.ext; intro v
      obtain ⟨w, hw⟩ := hDsurj (fderiv ℝ (fderiv ℝ φ) x u v)
      have h := hT u v w
      rw [hw] at h
      simpa using inner_self_eq_zero.mp h
    have hconstD : ∀ x ∈ s, fderiv ℝ φ x = ContinuousLinearMap.id ℝ E3 := by
      intro x hx
      rw [← hDφ]
      exact hs.is_const_of_fderiv_eq_zero hsc hDdiff
        (fun x hx => by rw [Pi.zero_apply]; exact hH0 x hx) hx hy
    intro x hx
    have hψd : DifferentiableOn ℝ (fun x => φ x - x) s := hφdiff.sub differentiableOn_id
    have hψ0 : Set.EqOn (fderiv ℝ (fun x => φ x - x)) 0 s := by
      intro x hx
      have h1 : HasFDerivAt φ (fderiv ℝ φ x) x :=
        (hφdiff.differentiableAt (hs.mem_nhds hx)).hasFDerivAt
      have h2 : HasFDerivAt (fun x => φ x - x) (fderiv ℝ φ x - ContinuousLinearMap.id ℝ E3) x :=
        h1.sub (hasFDerivAt_id x)
      rw [h2.fderiv, hconstD x hx, Pi.zero_apply, sub_self]
    have := hs.is_const_of_fderiv_eq_zero hsc hψd hψ0 hx hy
    simp only [hφy, sub_self] at this
    exact sub_eq_zero.mp this
  
  
  
  have s4 : ∀ (D : E3 →L[ℝ] E3) (P : Matrix (Fin 3) (Fin 3) ℝ)
      (_h : ∀ a b : Fin 3, ∑ k : Fin 3, ∑ l : Fin 3, D (e a) k * P k l * D (e b) l =
        if a = b then 1 else 0),
      ∀ u w : E3, ∑ k : Fin 3, ∑ l : Fin 3, D u k * P k l * D w l = inner ℝ u w := by
    intro D P h
    have hexp : ∀ u : E3, u = u 0 • e 0 + u 1 • e 1 + u 2 • e 2 := by
      intro u
      ext i
      fin_cases i <;> simp
    have hD : ∀ (u : E3) (k : Fin 3),
        D u k = u 0 * D (e 0) k + u 1 * D (e 1) k + u 2 * D (e 2) k := by
      intro u k
      conv_lhs => rw [hexp u]
      simp only [map_add, map_smul, PiLp.add_apply, PiLp.smul_apply, smul_eq_mul]
    intro u w
    have hinner : inner ℝ u w = u 0 * w 0 + u 1 * w 1 + u 2 * w 2 := by
      simp [PiLp.inner_apply, Fin.sum_univ_three]
      ring
    have h00 := h 0 0
    have h01 := h 0 1
    have h02 := h 0 2
    have h10 := h 1 0
    have h11 := h 1 1
    have h12 := h 1 2
    have h20 := h 2 0
    have h21 := h 2 1
    have h22 := h 2 2
    rw [if_pos rfl] at h00 h11 h22
    rw [if_neg (by decide)] at h01 h02 h10 h12 h20 h21
    simp only [Fin.sum_univ_three] at h00 h01 h02 h10 h11 h12 h20 h21 h22 ⊢
    rw [hinner]
    simp only [hD u, hD w]
    linear_combination (u 0 * w 0) * h00 + (u 0 * w 1) * h01 + (u 0 * w 2) * h02 +
      (u 1 * w 0) * h10 + (u 1 * w 1) * h11 + (u 1 * w 2) * h12 +
      (u 2 * w 0) * h20 + (u 2 * w 1) * h21 + (u 2 * w 2) * h22
  
  
  
  have s3 : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (W : Set E3) (_hW : IsOpen W)
      (h₁ h₂ : E3 → E3) (_hh₁ : ContDiffOn ℝ ∞ h₁ W) (_hh₂ : ContDiffOn ℝ ∞ h₂ W)
      (_hgram₁ : ∀ x ∈ W, ∀ u w : E3, ∑ k : Fin 3, ∑ l : Fin 3,
        fderiv ℝ h₁ x u k * G (h₁ x) k l * fderiv ℝ h₁ x w l = inner ℝ u w)
      (_hgram₂ : ∀ x ∈ W, ∀ u w : E3, ∑ k : Fin 3, ∑ l : Fin 3,
        fderiv ℝ h₂ x u k * G (h₂ x) k l * fderiv ℝ h₂ x w l = inner ℝ u w)
      (y : E3) (_hy : y ∈ W) (_hval : h₁ y = h₂ y) (_hder : fderiv ℝ h₁ y = fderiv ℝ h₂ y),
      h₁ =ᶠ[𝓝 y] h₂ := by
    intro G W hW h₁ h₂ hh₁ hh₂ hgram₁ hgram₂ y hy hval hder
    have hinj : ∀ x ∈ W, Function.Injective (fderiv ℝ h₁ x) := by
      intro x hx a b hab
      have h0 : fderiv ℝ h₁ x (a - b) = 0 := by rw [map_sub, hab, sub_self]
      have h := hgram₁ x hx (a - b) (a - b)
      simp only [h0, PiLp.zero_apply, zero_mul, Finset.sum_const_zero] at h
      exact sub_eq_zero.mp (inner_self_eq_zero.mp h.symm)
    have hequiv : ∀ x ∈ W, ∃ L : E3 ≃L[ℝ] E3, (L : E3 →L[ℝ] E3) = fderiv ℝ h₁ x := by
      intro x hx
      refine ⟨(LinearEquiv.ofInjectiveEndo
        ((fderiv ℝ h₁ x : E3 →L[ℝ] E3) : E3 →ₗ[ℝ] E3) (hinj x hx)).toContinuousLinearEquiv, ?_⟩
      ext v
      rfl
    have hcd : ∀ x ∈ W, ContDiffAt ℝ ∞ h₁ x := fun x hx => hh₁.contDiffAt (hW.mem_nhds hx)
    obtain ⟨Ly, hLy⟩ := hequiv y hy
    have hHy : HasFDerivAt h₁ (Ly : E3 →L[ℝ] E3) y := by
      rw [hLy]; exact ((hcd y hy).differentiableAt hinf).hasFDerivAt
    set Φ := ContDiffAt.toOpenPartialHomeomorph h₁ (hcd y hy) hHy hinf with hΦdef
    have hΦcoe : (Φ : E3 → E3) = h₁ :=
      ContDiffAt.toOpenPartialHomeomorph_coe (hcd y hy) hHy hinf
    have hysrc : y ∈ Φ.source :=
      ContDiffAt.mem_toOpenPartialHomeomorph_source (hcd y hy) hHy hinf
    have hytgt : h₁ y ∈ Φ.target :=
      ContDiffAt.image_mem_toOpenPartialHomeomorph_target (hcd y hy) hHy hinf
    set k : E3 → E3 := (Φ.symm : E3 → E3) with hkdef
    set O : Set E3 := Φ.target ∩ k ⁻¹' W with hOdef
    have hOopen : IsOpen O := Φ.continuousOn_symm.isOpen_inter_preimage Φ.open_target hW
    have hky : k (h₁ y) = y := by
      rw [hkdef, ← hΦcoe]; exact Φ.left_inv hysrc
    have hyO : h₁ y ∈ O := ⟨hytgt, by show k (h₁ y) ∈ W; rw [hky]; exact hy⟩
    have hright : ∀ a ∈ O, h₁ (k a) = a := by
      intro a ha
      rw [← hΦcoe]; exact Φ.right_inv ha.1
    have hkfacts : ∀ a ∈ O, ContDiffAt ℝ ∞ k a ∧
        ∀ u, fderiv ℝ h₁ (k a) (fderiv ℝ k a u) = u := by
      intro a ha
      have hxW : k a ∈ W := ha.2
      obtain ⟨L, hL⟩ := hequiv (k a) hxW
      have hfd : HasFDerivAt (Φ : E3 → E3) (L : E3 →L[ℝ] E3) (Φ.symm a) := by
        rw [hΦcoe, hL]; exact ((hcd (k a) hxW).differentiableAt hinf).hasFDerivAt
      have hcda : ContDiffAt ℝ ∞ (Φ : E3 → E3) (Φ.symm a) := by
        rw [hΦcoe]; exact hcd (k a) hxW
      refine ⟨Φ.contDiffAt_symm ha.1 hfd hcda, ?_⟩
      have hks := Φ.hasFDerivAt_symm ha.1 hfd
      intro u
      rw [hks.fderiv, ← hL]
      simp
    set N : Set E3 := W ∩ h₂ ⁻¹' O with hNdef
    have hNopen : IsOpen N := hh₂.continuousOn.isOpen_inter_preimage hW hOopen
    have hyN : y ∈ N := ⟨hy, by show h₂ y ∈ O; rw [← hval]; exact hyO⟩
    obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp hNopen y hyN
    have hsopen : IsOpen (Metric.ball y ε) := Metric.isOpen_ball
    have hsconn : IsPreconnected (Metric.ball y ε) := (convex_ball y ε).isPreconnected
    have hyball : y ∈ Metric.ball y ε := Metric.mem_ball_self hε
    have hcd2 : ∀ x ∈ W, ContDiffAt ℝ ∞ h₂ x := fun x hx => hh₂.contDiffAt (hW.mem_nhds hx)
    have hφcd : ∀ x ∈ Metric.ball y ε, ContDiffAt ℝ ∞ (k ∘ h₂) x := by
      intro x hx
      have hxN := hball hx
      exact ContDiffAt.comp x (hkfacts (h₂ x) hxN.2).1 (hcd2 x hxN.1)
    have hφ2 : ContDiffOn ℝ 2 (k ∘ h₂) (Metric.ball y ε) := by
      intro x hx
      exact ((hφcd x hx).of_le (WithTop.coe_le_coe.mpr le_top)).contDiffWithinAt
    have hDφ : ∀ x ∈ Metric.ball y ε,
        fderiv ℝ (k ∘ h₂) x = (fderiv ℝ k (h₂ x)).comp (fderiv ℝ h₂ x) := by
      intro x hx
      have hxN := hball hx
      exact fderiv_comp x (((hkfacts (h₂ x) hxN.2).1).differentiableAt hinf)
        ((hcd2 x hxN.1).differentiableAt hinf)
    have hkgram : ∀ a ∈ O, ∀ u' w' : E3, inner ℝ (fderiv ℝ k a u') (fderiv ℝ k a w') =
        ∑ i : Fin 3, ∑ j : Fin 3, u' i * G a i j * w' j := by
      intro a ha u' w'
      have h := hgram₁ (k a) ha.2 (fderiv ℝ k a u') (fderiv ℝ k a w')
      rw [(hkfacts a ha).2 u', (hkfacts a ha).2 w', hright a ha] at h
      exact h.symm
    have horth : ∀ x ∈ Metric.ball y ε, ∀ u w : E3,
        inner ℝ (fderiv ℝ (k ∘ h₂) x u) (fderiv ℝ (k ∘ h₂) x w) = inner ℝ u w := by
      intro x hx u w
      have hxN := hball hx
      rw [hDφ x hx, ContinuousLinearMap.comp_apply, ContinuousLinearMap.comp_apply,
        hkgram (h₂ x) hxN.2]
      exact hgram₂ x hxN.1 u w
    have hφy : (k ∘ h₂) y = y := by
      show k (h₂ y) = y; rw [← hval, hky]
    have hDφy : fderiv ℝ (k ∘ h₂) y = ContinuousLinearMap.id ℝ E3 := by
      rw [hDφ y hyball, ← hval, ← hder]
      ext1 v
      rw [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply]
      apply hinj y hy
      have := (hkfacts (h₁ y) hyO).2 (fderiv ℝ h₁ y v)
      rw [hky] at this
      exact this
    have hid := s1 (Metric.ball y ε) hsopen hsconn (k ∘ h₂) hφ2 horth y hyball hφy hDφy
    filter_upwards [Metric.ball_mem_nhds y hε] with x hx
    have h1 : k (h₂ x) = x := hid hx
    have h2 := hright (h₂ x) (hball hx).2
    rw [h1] at h2
    exact h2
  
  
  
  
  have hcomp : ∀ (Φ : E3 → M) (τ : E3 → E3) (y : E3) (_hτ : DifferentiableAt ℝ τ y)
      (_hΦ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ (τ y)) (i j : Fin 3),
      g.coeff (Φ ∘ τ) y i j = ∑ a : Fin 3, ∑ b : Fin 3,
        fderiv ℝ τ y (e i) a * g.coeff Φ (τ y) a b * fderiv ℝ τ y (e j) b := by
    intro Φ τ y hτ hΦ i j
    have hexp : ∀ v : E3, v = ∑ a : Fin 3, v a • e a := by
      intro v
      ext k
      simp [EuclideanSpace.single_apply, Pi.single_apply]
    set L : E3 →L[ℝ] E3 := mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ (τ y) with hLdef
    set B : E3 →L[ℝ] E3 →L[ℝ] ℝ := g.g (Φ (τ y)) with hBdef
    have hL : ∀ v : E3, L v = ∑ a : Fin 3, v a • L (e a) := by
      intro v
      conv_lhs => rw [hexp v]
      rw [map_sum]
      simp only [map_smul]
    have hchain : ∀ v : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (Φ ∘ τ) y v = L (fderiv ℝ τ y v) := by
      intro v
      rw [mfderiv_comp_apply y hΦ hτ.mdifferentiableAt, mfderiv_eq_fderiv]
      rfl
    have hlhs : g.coeff (Φ ∘ τ) y i j = B (L (fderiv ℝ τ y (e i))) (L (fderiv ℝ τ y (e j))) := by
      show g.g (Φ (τ y)) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (Φ ∘ τ) y (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (Φ ∘ τ) y (e j)) = _
      rw [hchain, hchain]
    have hc : ∀ a b : Fin 3, g.coeff Φ (τ y) a b = B (L (e a)) (L (e b)) := fun a b => rfl
    rw [hlhs, hL (fderiv ℝ τ y (e i)), hL (fderiv ℝ τ y (e j))]
    simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
      smul_eq_mul, Finset.mul_sum, hc]
    conv_lhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => ?_))
    ring
  
  
  
  have s5 : ∀ (f : E3 → M) (_hf : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ f U)
      (_hg : ∀ y ∈ U, g.coeff f y = 1) (p : M),
      IsOpen (U ∩ f ⁻¹' (chartAt E3 p).source) ∧
      ContDiffOn ℝ ∞ (fun w => chartAt E3 p (f w)) (U ∩ f ⁻¹' (chartAt E3 p).source) ∧
      ∀ x ∈ U ∩ f ⁻¹' (chartAt E3 p).source, ∀ u w : E3,
        ∑ k : Fin 3, ∑ l : Fin 3, fderiv ℝ (fun w => chartAt E3 p (f w)) x u k *
          g.coeff (chartAt E3 p).symm (chartAt E3 p (f x)) k l *
          fderiv ℝ (fun w => chartAt E3 p (f w)) x w l = inner ℝ u w := by
    intro f hf hg p
    have hWo : IsOpen (U ∩ f ⁻¹' (chartAt E3 p).source) :=
      hf.continuousOn.isOpen_inter_preimage hU (chartAt E3 p).open_source
    have hsm : ContDiffOn ℝ ∞ (fun w => chartAt E3 p (f w)) (U ∩ f ⁻¹' (chartAt E3 p).source) := by
      have := (contMDiffOn_chart (I := 𝓘(ℝ, E3)) (n := ∞) (x := p)).comp
        (hf.mono Set.inter_subset_left) (fun x hx => hx.2)
      exact contMDiffOn_iff_contDiffOn.mp this
    refine ⟨hWo, hsm, ?_⟩
    intro x hx
    refine s4 (fderiv ℝ (fun w => chartAt E3 p (f w)) x)
      (g.coeff (chartAt E3 p).symm (chartAt E3 p (f x))) ?_
    intro a b
    have hτ : DifferentiableAt ℝ (fun w => chartAt E3 p (f w)) x :=
      (hsm.contDiffAt (hWo.mem_nhds hx)).differentiableAt hinf
    have hcx : chartAt E3 p (f x) ∈ (chartAt E3 p).target := (chartAt E3 p).map_source hx.2
    have hΦ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p (f x)) :=
      ((contMDiffOn_chart_symm (I := 𝓘(ℝ, E3)) (n := ∞) (x := p)).contMDiffAt
        ((chartAt E3 p).open_target.mem_nhds hcx)).mdifferentiableAt hinf
    have heq : g.coeff ((chartAt E3 p).symm ∘ fun w => chartAt E3 p (f w)) x = g.coeff f x := by
      have hev : ((chartAt E3 p).symm ∘ fun w => chartAt E3 p (f w)) =ᶠ[𝓝 x] f := by
        filter_upwards [hWo.mem_nhds hx] with w hw
        exact (chartAt E3 p).left_inv hw.2
      have h1 := hev.mfderiv_eq (I := 𝓘(ℝ, E3)) (I' := 𝓘(ℝ, E3))
      have h2 := hev.eq_of_nhds
      unfold RiemannianMetric3.coeff coeffMatrix
      rw [h1, h2]
    have h := hcomp (chartAt E3 p).symm (fun w => chartAt E3 p (f w)) x hτ hΦ a b
    rw [heq, hg x hx.1, Matrix.one_apply] at h
    exact h.symm
  
  
  
  have s6 : fderiv ℝ (fun w => chartAt E3 (f₁ z) (f₁ w)) z =
      fderiv ℝ (fun w => chartAt E3 (f₁ z) (f₂ w)) z := by
    have hmd₁ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) f₁ z :=
      (hf₁.contMDiffAt (hU.mem_nhds hz)).mdifferentiableAt hinf
    have hmd₂ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) f₂ z :=
      (hf₂.contMDiffAt (hU.mem_nhds hz)).mdifferentiableAt hinf
    have hc₁ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (f₁ z)) (f₁ z) :=
      ((contMDiffOn_chart (I := 𝓘(ℝ, E3)) (n := ∞) (x := f₁ z)).contMDiffAt
        ((chartAt E3 (f₁ z)).open_source.mem_nhds (mem_chart_source E3 (f₁ z)))).mdifferentiableAt
        hinf
    have hc₂ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (f₁ z)) (f₂ z) := by
      rw [← hval]; exact hc₁
    have e1 := mfderiv_comp z hc₁ hmd₁
    have e2 := mfderiv_comp z hc₂ hmd₂
    rw [mfderiv_eq_fderiv] at e1 e2
    have hkey : ∀ q : M, f₁ z = q →
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (f₁ z)) (f₁ z) : E3 →L[ℝ] E3) =
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (f₁ z)) q : E3 →L[ℝ] E3) := by
      rintro q rfl
      rfl
    have hcc := hkey (f₂ z) hval
    show fderiv ℝ ((chartAt E3 (f₁ z)) ∘ f₁) z = fderiv ℝ ((chartAt E3 (f₁ z)) ∘ f₂) z
    rw [e1, e2]
    ext1 v
    rw [ContinuousLinearMap.comp_apply]
    exact (congrArg (fun L : E3 →L[ℝ] E3 => L (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) f₁ z v)) hcc).trans
      (congrArg (fun w : E3 =>
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (f₁ z)) (f₂ z) : E3 →L[ℝ] E3) w) (hder v))
  
  
  
  have hlocal : ∀ y ∈ U, f₁ y = f₂ y →
      fderiv ℝ (fun w => chartAt E3 (f₁ y) (f₁ w)) y =
        fderiv ℝ (fun w => chartAt E3 (f₁ y) (f₂ w)) y →
      f₁ =ᶠ[𝓝 y] f₂ := by
    intro y hy hv hd
    obtain ⟨hW₁o, hW₁s, hW₁g⟩ := s5 f₁ hf₁ hg₁ (f₁ y)
    obtain ⟨hW₂o, hW₂s, hW₂g⟩ := s5 f₂ hf₂ hg₂ (f₁ y)
    have hyW : y ∈ (U ∩ f₁ ⁻¹' (chartAt E3 (f₁ y)).source) ∩
        (U ∩ f₂ ⁻¹' (chartAt E3 (f₁ y)).source) := by
      refine ⟨⟨hy, mem_chart_source E3 (f₁ y)⟩, ⟨hy, ?_⟩⟩
      show f₂ y ∈ (chartAt E3 (f₁ y)).source
      rw [← hv]; exact mem_chart_source E3 (f₁ y)
    have hev := s3 (g.coeff (chartAt E3 (f₁ y)).symm) _ (hW₁o.inter hW₂o) _ _
      (hW₁s.mono Set.inter_subset_left) (hW₂s.mono Set.inter_subset_right)
      (fun x hx => hW₁g x hx.1) (fun x hx => hW₂g x hx.2) y hyW
      (congrArg (chartAt E3 (f₁ y)) hv) hd
    filter_upwards [hev, (hW₁o.inter hW₂o).mem_nhds hyW] with x hx hxW
    have h1 := (chartAt E3 (f₁ y)).left_inv hxW.1.2
    have h2 := (chartAt E3 (f₁ y)).left_inv hxW.2.2
    have hx' : chartAt E3 (f₁ y) (f₁ x) = chartAt E3 (f₁ y) (f₂ x) := hx
    calc f₁ x = (chartAt E3 (f₁ y)).symm (chartAt E3 (f₁ y) (f₁ x)) := h1.symm
      _ = (chartAt E3 (f₁ y)).symm (chartAt E3 (f₁ y) (f₂ x)) := by rw [hx']
      _ = f₂ x := h2
  have hSo : IsOpen {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x} := isOpen_setOf_eventually_nhds
  have hzS : z ∈ {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x} := hlocal z hz hval s6
  have hclosed : closure {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x} ∩ U ⊆
      {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x} := by
    rintro y ⟨hyc, hyU⟩
    have hne : (𝓝[{y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x}] y).NeBot :=
      mem_closure_iff_nhdsWithin_neBot.mp hyc
    have hc₁ : ContinuousAt f₁ y := hf₁.continuousOn.continuousAt (hU.mem_nhds hyU)
    have hc₂ : ContinuousAt f₂ y := hf₂.continuousOn.continuousAt (hU.mem_nhds hyU)
    have hEqS : f₁ =ᶠ[𝓝[{y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x}] y] f₂ :=
      eventually_nhdsWithin_of_forall (fun x hx => (show f₁ =ᶠ[𝓝 x] f₂ from hx).eq_of_nhds)
    have hv : f₁ y = f₂ y :=
      tendsto_nhds_unique ((hc₁.tendsto.mono_left nhdsWithin_le_nhds).congr' hEqS)
        (hc₂.tendsto.mono_left nhdsWithin_le_nhds)
    obtain ⟨hW₁o, hW₁s, -⟩ := s5 f₁ hf₁ hg₁ (f₁ y)
    obtain ⟨hW₂o, hW₂s, -⟩ := s5 f₂ hf₂ hg₂ (f₁ y)
    have hWo := hW₁o.inter hW₂o
    have hyW : y ∈ (U ∩ f₁ ⁻¹' (chartAt E3 (f₁ y)).source) ∩
        (U ∩ f₂ ⁻¹' (chartAt E3 (f₁ y)).source) := by
      refine ⟨⟨hyU, mem_chart_source E3 (f₁ y)⟩, ⟨hyU, ?_⟩⟩
      show f₂ y ∈ (chartAt E3 (f₁ y)).source
      rw [← hv]; exact mem_chart_source E3 (f₁ y)
    have hcont₁ : ContinuousAt (fderiv ℝ (fun w => chartAt E3 (f₁ y) (f₁ w))) y :=
      ((hW₁s.mono Set.inter_subset_left).continuousOn_fderiv_of_isOpen hWo
        (WithTop.coe_le_coe.mpr le_top)).continuousAt (hWo.mem_nhds hyW)
    have hcont₂ : ContinuousAt (fderiv ℝ (fun w => chartAt E3 (f₁ y) (f₂ w))) y :=
      ((hW₂s.mono Set.inter_subset_right).continuousOn_fderiv_of_isOpen hWo
        (WithTop.coe_le_coe.mpr le_top)).continuousAt (hWo.mem_nhds hyW)
    have hfd : ∀ x ∈ ((U ∩ f₁ ⁻¹' (chartAt E3 (f₁ y)).source) ∩
        (U ∩ f₂ ⁻¹' (chartAt E3 (f₁ y)).source)) ∩ {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x},
        fderiv ℝ (fun w => chartAt E3 (f₁ y) (f₁ w)) x =
          fderiv ℝ (fun w => chartAt E3 (f₁ y) (f₂ w)) x := by
      intro x hx
      apply Filter.EventuallyEq.fderiv_eq
      have hxe : f₁ =ᶠ[𝓝 x] f₂ := hx.2
      filter_upwards [hxe] with w hw
      exact congrArg (chartAt E3 (f₁ y)) hw
    have hne2 : (𝓝[((U ∩ f₁ ⁻¹' (chartAt E3 (f₁ y)).source) ∩
        (U ∩ f₂ ⁻¹' (chartAt E3 (f₁ y)).source)) ∩
          {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x}] y).NeBot :=
      mem_closure_iff_nhdsWithin_neBot.mp (hWo.inter_closure ⟨hyW, hyc⟩)
    have hd := tendsto_nhds_unique
      ((hcont₁.tendsto.mono_left nhdsWithin_le_nhds).congr'
        (eventually_nhdsWithin_of_forall hfd))
      (hcont₂.tendsto.mono_left nhdsWithin_le_nhds)
    exact hlocal y hyU hv hd
  have hsub : U ⊆ {y : E3 | ∀ᶠ x in 𝓝 y, f₁ x = f₂ x} :=
    hUc.subset_of_closure_inter_subset hSo ⟨z, hz, hzS⟩ hclosed
  intro y hy
  exact (show f₁ =ᶠ[𝓝 y] f₂ from hsub hy).eq_of_nhds

theorem flat_chart_exists_of_ricci [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hRic : ∀ (p : M) (j l : Fin 3),
      ricci (g.coeff (chartAt E3 p).symm) j l (chartAt E3 p p) = 0)
    (p : M) :
    ∃ j : E3 → M, ∃ ε : ℝ, 0 < ε ∧ j 0 = p ∧
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ j (ball 0 ε) ∧
      (∀ y ∈ ball (0 : E3) ε, g.coeff j y = 1) ∧
      ∀ ρ : ℝ, 0 < ρ → ρ ≤ ε → j '' ball 0 ρ ∈ 𝓝 p :=
by
  classical
  
  have hexp : ∀ x : E3, ∑ a : Fin 3, x a • e a = x := by
    intro x
    have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr x
    simpa [EuclideanSpace.basisFun_repr, EuclideanSpace.basisFun_apply] using this
  set c := chartAt E3 p with hc
  
  have hinjc : ∀ y ∈ c.target,
      Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm y) := by
    intro y hy
    have hq : c.symm y ∈ c.source := c.map_target hy
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm y :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) c (c.symm y) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 p) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (c ∘ c.symm) y =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c (c.symm y)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm y) := mfderiv_comp y hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (c ∘ c.symm) y =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id y := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [c.eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c (c.symm y)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm y w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    intro w₁ w₂ h
    rw [← hinv w₁, ← hinv w₂, h]
  
  have hflatV : ∀ y ∈ c.target, ∀ l i j k : Fin 3,
      riemannLocal (g.coeff c.symm) l i j k y = 0 :=
    riemannLocal_coeff_eq_zero g hRic c.symm c.target c.open_target contMDiffOn_chart_symm hinjc
  
  have hz₀ : c p ∈ c.target := mem_chart_target E3 p
  obtain ⟨r, hr, hrsub⟩ := Metric.isOpen_iff.mp c.open_target (c p) hz₀
  have hz₀U : c p ∈ ball (c p) r := mem_ball_self hr
  
  have hquad : ∀ z : E3, ∀ x : E3,
      ∑ a : Fin 3, ∑ b : Fin 3, x a * g.coeff c.symm z a b * x b =
        g.g (c.symm z) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm z x)
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm z x) := by
    intro z x
    conv_rhs => rw [← hexp x]
    simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
      ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
      ContinuousLinearMap.add_apply, RiemannianMetric3.coeff, coeffMatrix]
    ring
  have hpos : ∀ z ∈ ball (c p) r, ∀ v : E3, v ≠ 0 →
      0 < ∑ a : Fin 3, ∑ b : Fin 3, v a * g.coeff c.symm z a b * v b := by
    intro z hz v hv
    rw [hquad z v]
    apply g.posDef
    intro h0
    exact hv (hinjc z (hrsub hz) (by rw [h0, map_zero]))
  have hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun z => g.coeff c.symm z a b) (ball (c p) r) :=
    fun a b => (g.smooth p a b).mono hrsub
  
  obtain ⟨ψ, hψ, hgram⟩ := flat_developing_convex (g.coeff c.symm) (ball (c p) r) isOpen_ball
    (convex_ball _ _) hGs (fun z _ a b => g.symm _ _ _) hpos
    (fun z hz => hflatV z (hrsub hz))
  
  have hgramx : ∀ z ∈ ball (c p) r, ∀ x y : E3,
      ∑ a : Fin 3, ∑ b : Fin 3, x a * g.coeff c.symm z a b * y b =
        @inner ℝ E3 _ (fderiv ℝ ψ z x) (fderiv ℝ ψ z y) := by
    intro z hz x y
    conv_rhs => rw [← hexp x, ← hexp y]
    simp only [map_sum, map_smul, sum_inner, inner_sum, real_inner_smul_left,
      real_inner_smul_right, hgram z hz]
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => ?_))
    ring
  have hDinj : ∀ z ∈ ball (c p) r, Function.Injective (fderiv ℝ ψ z) := by
    intro z hz
    refine (injective_iff_map_eq_zero _).mpr ?_
    intro v hv
    by_contra hne
    have h1 := hpos z hz v hne
    rw [hgramx z hz v v, hv, inner_zero_left] at h1
    exact lt_irrefl _ h1
  
  obtain ⟨φ, hφdef⟩ : ∃ φ : E3 → E3, φ = fun z => ψ z - ψ (c p) := ⟨_, rfl⟩
  have hφd : ∀ z, fderiv ℝ φ z = fderiv ℝ ψ z := by
    intro z; rw [hφdef]; exact fderiv_sub_const _
  have hφcd : ∀ z ∈ ball (c p) r, ContDiffAt ℝ ∞ φ z := by
    intro z hz
    rw [hφdef]
    exact (hψ.contDiffAt (isOpen_ball.mem_nhds hz)).sub contDiffAt_const
  have hφ0 : φ (c p) = 0 := by rw [hφdef]; simp
  have hL : ∀ z ∈ ball (c p) r, ∃ L : E3 ≃L[ℝ] E3, (L : E3 →L[ℝ] E3) = fderiv ℝ φ z := by
    intro z hz
    refine ⟨(LinearEquiv.ofInjectiveEndo (fderiv ℝ φ z : E3 →ₗ[ℝ] E3) ?_).toContinuousLinearEquiv,
      ContinuousLinearMap.ext fun v => rfl⟩
    rw [hφd]
    exact hDinj z hz
  obtain ⟨L₀, hL₀⟩ := hL (c p) hz₀U
  have hstrict : HasStrictFDerivAt φ (L₀ : E3 →L[ℝ] E3) (c p) := by
    rw [hL₀]; exact (hφcd (c p) hz₀U).hasStrictFDerivAt (by simp)
  obtain ⟨P, hPcoe, hz₀s⟩ : ∃ P : OpenPartialHomeomorph E3 E3, ⇑P = φ ∧ c p ∈ P.source :=
    ⟨HasStrictFDerivAt.toOpenPartialHomeomorph φ hstrict,
      HasStrictFDerivAt.toOpenPartialHomeomorph_coe hstrict,
      HasStrictFDerivAt.mem_toOpenPartialHomeomorph_source hstrict⟩
  have hPz : P (c p) = 0 := by rw [hPcoe]; exact hφ0
  have hsym0 : P.symm 0 = c p := by rw [← hPz]; exact P.left_inv hz₀s
  have h0t : (0 : E3) ∈ P.target := by rw [← hPz]; exact P.map_source hz₀s
  have hOopen : IsOpen (P.target ∩ P.symm ⁻¹' (P.source ∩ ball (c p) r)) :=
    P.isOpen_inter_preimage_symm (P.open_source.inter isOpen_ball)
  have h0O : (0 : E3) ∈ P.target ∩ P.symm ⁻¹' (P.source ∩ ball (c p) r) := by
    refine ⟨h0t, ?_⟩
    show P.symm 0 ∈ P.source ∩ ball (c p) r
    rw [hsym0]
    exact ⟨hz₀s, hz₀U⟩
  obtain ⟨ε, hε, hεsub⟩ := Metric.isOpen_iff.mp hOopen 0 h0O
  have hkey : ∀ w ∈ ball (0 : E3) ε, ∃ L : E3 ≃L[ℝ] E3, P.symm w ∈ ball (c p) r ∧
      (L : E3 →L[ℝ] E3) = fderiv ℝ ψ (P.symm w) ∧
      HasFDerivAt P.symm (L.symm : E3 →L[ℝ] E3) w ∧ ContDiffAt ℝ ∞ P.symm w := by
    intro w hw
    have hwO := hεsub hw
    have hzU : P.symm w ∈ ball (c p) r := hwO.2.2
    obtain ⟨L, hLz⟩ := hL _ hzU
    have hd : HasFDerivAt P (L : E3 →L[ℝ] E3) (P.symm w) := by
      rw [hPcoe, hLz]
      exact ((hφcd _ hzU).differentiableAt (by simp)).hasFDerivAt
    refine ⟨L, hzU, hLz.trans (hφd _), P.hasFDerivAt_symm hwO.1 hd,
      P.contDiffAt_symm hwO.1 hd ?_⟩
    rw [hPcoe]
    exact hφcd _ hzU
  
  refine ⟨c.symm ∘ P.symm, ε, hε, ?_, ?_, ?_, ?_⟩
  · show c.symm (P.symm 0) = p
    rw [hsym0]
    exact c.left_inv (mem_chart_source E3 p)
  · have hk : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ P.symm (ball 0 ε) := by
      apply ContDiffOn.contMDiffOn
      intro w hw
      obtain ⟨L, -, -, -, hcd⟩ := hkey w hw
      exact hcd.contDiffWithinAt
    exact contMDiffOn_chart_symm.comp hk (fun w hw => hrsub (hεsub hw).2.2)
  · intro w hw
    obtain ⟨L, hzU, hLz, hfd, -⟩ := hkey w hw
    ext i j
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) c.symm (P.symm w) :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) (hrsub hzU)
    rw [coeff_comp_apply g c.symm P.symm w hfd.differentiableAt hmd i j, hfd.fderiv,
      hgramx _ hzU, ← hLz]
    simp [EuclideanSpace.inner_single_left, EuclideanSpace.single_apply, Matrix.one_apply]
  · intro ρ hρ hρε
    have hsub1 : ball (0 : E3) ρ ⊆ P.target := fun w hw => (hεsub (ball_subset_ball hρε hw)).1
    have hopen1 : IsOpen (P.symm '' ball 0 ρ) :=
      P.isOpen_image_symm_of_subset_target isOpen_ball hsub1
    have hsub2 : P.symm '' ball 0 ρ ⊆ c.target := by
      rintro _ ⟨w, hw, rfl⟩
      exact hrsub (hεsub (ball_subset_ball hρε hw)).2.2
    have hopen2 : IsOpen (c.symm '' (P.symm '' ball 0 ρ)) :=
      c.isOpen_image_symm_of_subset_target hopen1 hsub2
    rw [Set.image_comp]
    apply hopen2.mem_nhds
    refine ⟨P.symm 0, ⟨0, mem_ball_self hρ, rfl⟩, ?_⟩
    rw [hsym0]
    exact c.left_inv (mem_chart_source E3 p)

theorem curve_speed_chart_formula [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (γ : ℝ → M) (hγ : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ) (x₀ : M) (t : ℝ)
    (ht : γ t ∈ (chartAt E3 x₀).source) :
    g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t) =
      ∑ a : Fin 3, ∑ b : Fin 3,
        deriv (fun s => chartAt E3 x₀ (γ s)) t a *
          g.coeff (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t)) a b *
            deriv (fun s => chartAt E3 x₀ (γ s)) t b :=
by
  have hexp : ∀ v : E3, v = ∑ a : Fin 3, v a • e a := by
    intro v
    ext k
    simp [EuclideanSpace.single_apply, Pi.single_apply]
  have hφt : chartAt E3 x₀ (γ t) ∈ (chartAt E3 x₀).target := (chartAt E3 x₀).map_source ht
  have hsymm : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t)) :=
    mdifferentiableAt_atlas_symm (chart_mem_atlas E3 x₀) hφt
  have hc : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x₀) (γ t) :=
    mdifferentiableAt_atlas (chart_mem_atlas E3 x₀) ht
  have hγd : MDifferentiableAt 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) γ t := hγ.mdifferentiableAt one_ne_zero
  have hφd : MDifferentiableAt 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) (fun s => chartAt E3 x₀ (γ s)) t :=
    hc.comp t hγd
  have hloc : γ =ᶠ[𝓝 t] (chartAt E3 x₀).symm ∘ (fun s => chartAt E3 x₀ (γ s)) := by
    have h1 := hγ.continuous.continuousAt.tendsto.eventually
      ((chartAt E3 x₀).eventually_left_inverse ht)
    exact h1.mono fun s hs => hs.symm
  set D : E3 →L[ℝ] E3 := mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t))
    with hDdef
  set B : E3 →L[ℝ] E3 →L[ℝ] ℝ := g.g (γ t) with hBdef
  have hvel : RiemannianMetric3.velocity γ t = D (deriv (fun s => chartAt E3 x₀ (γ s)) t) := by
    unfold RiemannianMetric3.velocity
    have h2 := mfderiv_comp_apply t hsymm hφd (1 : ℝ)
    rw [hloc.mfderiv_eq]
    refine h2.trans ?_
    show D (mfderiv 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) (fun s => chartAt E3 x₀ (γ s)) t (1 : ℝ)) = _
    rw [mfderiv_eq_fderiv]
    rfl
  have hD : ∀ v : E3, D v = ∑ a : Fin 3, v a • D (e a) := by
    intro v
    conv_lhs => rw [hexp v]
    rw [map_sum]
    simp only [map_smul]
  have hcoef : ∀ a b : Fin 3,
      g.coeff (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t)) a b = B (D (e a)) (D (e b)) := by
    intro a b
    show g.g ((chartAt E3 x₀).symm (chartAt E3 x₀ (γ t))) (D (e a)) (D (e b)) = _
    rw [(chartAt E3 x₀).left_inv ht]
  rw [hvel, hD (deriv (fun s => chartAt E3 x₀ (γ s)) t)]
  simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
    smul_eq_mul, Finset.mul_sum, hcoef]
  refine Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => ?_))
  rw [show B (D (e b)) (D (e a)) = B (D (e a)) (D (e b)) from g.symm _ _ _]
  ring

theorem curve_speed_continuous [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (γ : ℝ → M) (hγ : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ)
    (hformula : ∀ (x₀ : M) (t : ℝ), γ t ∈ (chartAt E3 x₀).source →
      g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t) =
        ∑ a : Fin 3, ∑ b : Fin 3,
          deriv (fun s => chartAt E3 x₀ (γ s)) t a *
            g.coeff (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t)) a b *
              deriv (fun s => chartAt E3 x₀ (γ s)) t b) :
    Continuous (fun t => Real.sqrt
      (g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t))) :=
by
  rw [continuous_iff_continuousAt]
  intro t₀
  set x₀ := γ t₀ with hx₀
  have hγc : Continuous γ := hγ.continuous
  have hU : IsOpen (γ ⁻¹' (chartAt E3 x₀).source) := (chartAt E3 x₀).open_source.preimage hγc
  have ht₀ : t₀ ∈ γ ⁻¹' (chartAt E3 x₀).source := mem_chart_source E3 x₀
  have hUn := hU.mem_nhds ht₀
  have hφ : ContDiffOn ℝ 1 (fun s => chartAt E3 x₀ (γ s)) (γ ⁻¹' (chartAt E3 x₀).source) := by
    have h1 : ContMDiffOn 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 ((chartAt E3 x₀) ∘ γ)
        (γ ⁻¹' (chartAt E3 x₀).source) :=
      (contMDiffOn_chart (n := 1)).comp hγ.contMDiffOn (fun s hs => hs)
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hdφ : ContinuousAt (deriv (fun s => chartAt E3 x₀ (γ s))) t₀ :=
    (hφ.continuousOn_deriv_of_isOpen hU le_rfl).continuousAt hUn
  have hφc : ContinuousAt (fun s => chartAt E3 x₀ (γ s)) t₀ :=
    hφ.continuousOn.continuousAt hUn
  have hG : ∀ a b : Fin 3, ContinuousAt
      (fun t => g.coeff (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t)) a b) t₀ := by
    intro a b
    have h := ((g.smooth x₀ a b).continuousOn.continuousAt
      ((chartAt E3 x₀).open_target.mem_nhds (mem_chart_target E3 x₀)))
    exact ContinuousAt.comp_of_eq (g := fun y => g.coeff (chartAt E3 x₀).symm y a b) h hφc rfl
  have hcoord : ∀ a : Fin 3,
      ContinuousAt (fun t => deriv (fun s => chartAt E3 x₀ (γ s)) t a) t₀ := by
    intro a
    exact (PiLp.continuous_apply 2 (fun _ => ℝ) a).continuousAt.comp hdφ
  have hR : ContinuousAt (fun t => Real.sqrt (∑ a : Fin 3, ∑ b : Fin 3,
      deriv (fun s => chartAt E3 x₀ (γ s)) t a *
        g.coeff (chartAt E3 x₀).symm (chartAt E3 x₀ (γ t)) a b *
          deriv (fun s => chartAt E3 x₀ (γ s)) t b)) t₀ := by
    apply ContinuousAt.sqrt
    apply tendsto_finset_sum
    intro a _
    apply tendsto_finset_sum
    intro b _
    exact ((hcoord a).mul (hG a b)).mul (hcoord b)
  refine hR.congr ?_
  filter_upwards [hUn] with t ht
  rw [hformula x₀ t ht]

theorem exists_C1_curve_of_connected [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M] (x y : M) :
    ∃ γ : ℝ → M, ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ ∧ γ 0 = x ∧ γ 1 = y :=
by
  let SP : M → M → Prop := fun a b => ∃ γ : ℝ → M, ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ ∧
      γ 0 = a ∧ γ 1 = b ∧ (∀ t : ℝ, t ≤ 0 → γ t = a) ∧ (∀ t : ℝ, 1 ≤ t → γ t = b)
  
  have hloc : ∀ a : M, ∀ᶠ b in 𝓝 a, SP a b := by
    intro a
    obtain ⟨ε, hε, hball⟩ :=
      Metric.isOpen_iff.1 (chartAt E3 a).open_target (chartAt E3 a a) (mem_chart_target E3 a)
    have hV : (chartAt E3 a).source ∩ (chartAt E3 a) ⁻¹' ball (chartAt E3 a a) ε ∈ 𝓝 a :=
      ((chartAt E3 a).isOpen_inter_preimage isOpen_ball).mem_nhds
        ⟨mem_chart_source E3 a, mem_ball_self hε⟩
    filter_upwards [hV] with b hb
    let σ : ℝ → E3 := fun t =>
      chartAt E3 a a + Real.smoothTransition t • (chartAt E3 a b - chartAt E3 a a)
    have hσmem : ∀ t, σ t ∈ (chartAt E3 a).target := by
      intro t
      apply hball
      exact (convex_ball (chartAt E3 a a) ε).add_smul_sub_mem (mem_ball_self hε) hb.2
        ⟨Real.smoothTransition.nonneg t, Real.smoothTransition.le_one t⟩
    have hσs : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 σ := by
      apply ContDiff.contMDiff
      have hst : ContDiff ℝ 1 Real.smoothTransition := by
        exact_mod_cast (Real.smoothTransition.contDiff (n := 1))
      exact contDiff_const.add (hst.smul contDiff_const)
    have hsy : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) 1 (chartAt E3 a).symm (chartAt E3 a).target :=
      (contMDiffOn_chart_symm (n := ∞) (x := a)).of_le (by simp)
    refine ⟨(chartAt E3 a).symm ∘ σ, hsy.comp_contMDiff hσs hσmem, ?_, ?_, ?_, ?_⟩
    · show (chartAt E3 a).symm (chartAt E3 a a +
        Real.smoothTransition 0 • (chartAt E3 a b - chartAt E3 a a)) = a
      rw [Real.smoothTransition.zero_of_nonpos le_rfl, zero_smul, add_zero]
      exact (chartAt E3 a).left_inv (mem_chart_source E3 a)
    · show (chartAt E3 a).symm (chartAt E3 a a +
        Real.smoothTransition 1 • (chartAt E3 a b - chartAt E3 a a)) = b
      rw [Real.smoothTransition.one_of_one_le le_rfl, one_smul, add_sub_cancel]
      exact (chartAt E3 a).left_inv hb.1
    · intro t ht
      show (chartAt E3 a).symm (chartAt E3 a a +
        Real.smoothTransition t • (chartAt E3 a b - chartAt E3 a a)) = a
      rw [Real.smoothTransition.zero_of_nonpos ht, zero_smul, add_zero]
      exact (chartAt E3 a).left_inv (mem_chart_source E3 a)
    · intro t ht
      show (chartAt E3 a).symm (chartAt E3 a a +
        Real.smoothTransition t • (chartAt E3 a b - chartAt E3 a a)) = b
      rw [Real.smoothTransition.one_of_one_le ht, one_smul, add_sub_cancel]
      exact (chartAt E3 a).left_inv hb.1
  
  have hsymm : ∀ a b : M, SP a b → SP b a := by
    rintro a b ⟨γ, hγ, h0, h1, hl, hr⟩
    refine ⟨fun t => γ (1 - t),
      hγ.comp (by fun_prop : ContDiff ℝ 1 (fun t : ℝ => 1 - t)).contMDiff, ?_, ?_, ?_, ?_⟩
    · show γ (1 - 0) = b
      rw [sub_zero, h1]
    · show γ (1 - 1) = a
      rw [sub_self, h0]
    · intro t ht
      exact hr _ (by linarith)
    · intro t ht
      exact hl _ (by linarith)
  
  have htrans : ∀ a b d : M, SP a b → SP b d → SP a d := by
    rintro a b d ⟨γ₁, h₁, h₁0, h₁1, h₁l, h₁r⟩ ⟨γ₂, h₂, h₂0, h₂1, h₂l, h₂r⟩
    have hA : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 (fun t : ℝ => γ₁ (3 * t)) :=
      h₁.comp (by fun_prop : ContDiff ℝ 1 (fun t : ℝ => 3 * t)).contMDiff
    have hB : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 (fun t : ℝ => γ₂ (3 * t - 2)) :=
      h₂.comp (by fun_prop : ContDiff ℝ 1 (fun t : ℝ => 3 * t - 2)).contMDiff
    refine ⟨fun t => if t ≤ 1 / 2 then γ₁ (3 * t) else γ₂ (3 * t - 2), ?_, ?_, ?_, ?_, ?_⟩
    · intro t
      by_cases ht : t < 2 / 3
      · apply hA.contMDiffAt.congr_of_eventuallyEq
        filter_upwards [Iio_mem_nhds ht] with u hu
        have hu' : u < 2 / 3 := hu
        show (if u ≤ 1 / 2 then γ₁ (3 * u) else γ₂ (3 * u - 2)) = γ₁ (3 * u)
        split_ifs with h
        · rfl
        · rw [h₂l _ (by linarith), h₁r _ (by linarith)]
      · have ht' : (1 : ℝ) / 3 < t := by push_neg at ht; linarith
        apply hB.contMDiffAt.congr_of_eventuallyEq
        filter_upwards [Ioi_mem_nhds ht'] with u hu
        have hu' : 1 / 3 < u := hu
        show (if u ≤ 1 / 2 then γ₁ (3 * u) else γ₂ (3 * u - 2)) = γ₂ (3 * u - 2)
        split_ifs with h
        · rw [h₁r _ (by linarith), h₂l _ (by linarith)]
        · rfl
    · show (if (0 : ℝ) ≤ 1 / 2 then γ₁ (3 * 0) else γ₂ (3 * 0 - 2)) = a
      rw [if_pos (by norm_num), mul_zero, h₁0]
    · show (if (1 : ℝ) ≤ 1 / 2 then γ₁ (3 * 1) else γ₂ (3 * 1 - 2)) = d
      rw [if_neg (by norm_num), show (3 : ℝ) * 1 - 2 = 1 by norm_num, h₂1]
    · intro t ht
      show (if t ≤ 1 / 2 then γ₁ (3 * t) else γ₂ (3 * t - 2)) = a
      rw [if_pos (by linarith)]
      exact h₁l _ (by linarith)
    · intro t ht
      show (if t ≤ 1 / 2 then γ₁ (3 * t) else γ₂ (3 * t - 2)) = d
      rw [if_neg (by linarith)]
      exact h₂r _ (by linarith)
  have hall : ∀ a b : M, SP a b :=
    PreconnectedSpace.induction₂ SP hloc
      (by intro a b d h1 h2; exact htrans a b d h1 h2)
      (by intro a b h; exact hsymm a b h)
  obtain ⟨γ, hγ, h0, h1, -, -⟩ := hall x y
  exact ⟨γ, hγ, h0, h1⟩

theorem curveLength_ge_of_exit [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (p : M) (s m : ℝ) (hs : 0 < s) (hm : 0 < m)
    (hball : Metric.closedBall (chartAt E3 p p) s ⊆ (chartAt E3 p).target)
    (hlow : ∀ y ∈ Metric.closedBall (chartAt E3 p p) s, ∀ v : E3,
      m * ‖v‖ ^ 2 ≤ ∑ k : Fin 3, ∑ l : Fin 3, v k * g.coeff (chartAt E3 p).symm y k l * v l)
    (γ : ℝ → M) (hγ : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ) (hγ1 : γ 1 = p)
    (hcont : Continuous (fun t => Real.sqrt
      (g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t))))
    (hformula : ∀ t : ℝ, γ t ∈ (chartAt E3 p).source →
      g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t) =
        ∑ a : Fin 3, ∑ b : Fin 3,
          deriv (fun s => chartAt E3 p (γ s)) t a *
            g.coeff (chartAt E3 p).symm (chartAt E3 p (γ t)) a b *
              deriv (fun s => chartAt E3 p (γ s)) t b)
    (hx : γ 0 ∉ (chartAt E3 p).source ∩ chartAt E3 p ⁻¹' Metric.ball (chartAt E3 p p) s) :
    Real.sqrt m * s ≤ g.curveLength γ :=
by
  classical
  set c := chartAt E3 p with hc_def
  set F : ℝ → ℝ := fun t => Real.sqrt
    (g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t)) with hF_def
  have hγc : Continuous γ := hγ.continuous
  have hO : IsOpen (c.source ∩ c ⁻¹' Metric.ball (c p) s) :=
    c.isOpen_inter_preimage Metric.isOpen_ball
  have hKc : IsCompact (c.symm '' Metric.closedBall (c p) s) :=
    (isCompact_closedBall (c p) s).image_of_continuousOn (c.continuousOn_symm.mono hball)
  have hKcl : IsClosed (c.symm '' Metric.closedBall (c p) s) := hKc.isClosed
  have hKmem : ∀ z ∈ c.symm '' Metric.closedBall (c p) s,
      z ∈ c.source ∧ c z ∈ Metric.closedBall (c p) s := by
    rintro z ⟨w, hw, rfl⟩
    exact ⟨c.map_target (hball hw), by rw [c.right_inv (hball hw)]; exact hw⟩
  have hOK : c.source ∩ c ⁻¹' Metric.ball (c p) s ⊆ c.symm '' Metric.closedBall (c p) s := by
    rintro y ⟨hy1, hy2⟩
    exact ⟨c y, Metric.ball_subset_closedBall hy2, c.left_inv hy1⟩
  have hpO : p ∈ c.source ∩ c ⁻¹' Metric.ball (c p) s :=
    ⟨mem_chart_source E3 p, Metric.mem_ball_self hs⟩
  have hTc : IsCompact (Set.Icc (0:ℝ) 1 ∩ γ ⁻¹' (c.source ∩ c ⁻¹' Metric.ball (c p) s)ᶜ) :=
    isCompact_Icc.inter_right (hO.isClosed_compl.preimage hγc)
  have h0T : (0:ℝ) ∈ Set.Icc (0:ℝ) 1 ∩ γ ⁻¹' (c.source ∩ c ⁻¹' Metric.ball (c p) s)ᶜ :=
    ⟨⟨le_rfl, zero_le_one⟩, hx⟩
  obtain ⟨τ, hτT, hτmax⟩ : ∃ τ ∈ Set.Icc (0:ℝ) 1 ∩ γ ⁻¹' (c.source ∩ c ⁻¹' Metric.ball (c p) s)ᶜ,
      ∀ t ∈ Set.Icc (0:ℝ) 1 ∩ γ ⁻¹' (c.source ∩ c ⁻¹' Metric.ball (c p) s)ᶜ, t ≤ τ :=
    ⟨_, hTc.sSup_mem ⟨0, h0T⟩, fun t ht => le_csSup hTc.bddAbove ht⟩
  have hτ0 : 0 ≤ τ := hτT.1.1
  have hτ1 : τ ≤ 1 := hτT.1.2
  have hτnot : γ τ ∉ c.source ∩ c ⁻¹' Metric.ball (c p) s := hτT.2
  have hτne : τ ≠ 1 := by
    intro h
    rw [h, hγ1] at hτnot
    exact hτnot hpO
  have hIoc : ∀ t ∈ Set.Ioc τ 1, γ t ∈ c.symm '' Metric.closedBall (c p) s := by
    intro t ht
    by_contra hcon
    have htT : t ∈ Set.Icc (0:ℝ) 1 ∩ γ ⁻¹' (c.source ∩ c ⁻¹' Metric.ball (c p) s)ᶜ :=
      ⟨⟨by linarith [ht.1], ht.2⟩, fun h => hcon (hOK h)⟩
    have := hτmax t htT
    linarith [ht.1]
  have hτK : γ τ ∈ c.symm '' Metric.closedBall (c p) s := by
    have hcl : τ ∈ closure (Set.Ioc τ 1) := by
      rw [closure_Ioc hτne]; exact ⟨le_rfl, hτ1⟩
    have := map_mem_closure hγc hcl (fun t ht => hIoc t ht)
    rwa [hKcl.closure_eq] at this
  have hin : ∀ t ∈ Set.Icc τ 1, γ t ∈ c.source ∧ c (γ t) ∈ Metric.closedBall (c p) s := by
    intro t ht
    rcases eq_or_lt_of_le ht.1 with h | h
    · rw [← h]; exact hKmem _ hτK
    · exact hKmem _ (hIoc t ⟨h, ht.2⟩)
  have hdist : s ≤ ‖c (γ 1) - c (γ τ)‖ := by
    have h1 : c (γ τ) ∉ Metric.ball (c p) s := fun h => hτnot ⟨(hin τ ⟨le_rfl, hτ1⟩).1, h⟩
    rw [Metric.mem_ball, not_lt, dist_eq_norm] at h1
    rw [hγ1, norm_sub_rev]
    exact h1
  
  have hUo : IsOpen (γ ⁻¹' c.source) := c.open_source.preimage hγc
  have hφ : ContDiffOn ℝ 1 (fun t => c (γ t)) (γ ⁻¹' c.source) := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) 1 c c.source :=
      (contMDiffOn_chart (n := ∞) (x := p)).of_le (by exact_mod_cast le_top)
    have h2 := h1.comp hγ.contMDiffOn (fun t ht => ht)
    exact contMDiffOn_iff_contDiffOn.1 h2
  
  have hbound : ∀ t ∈ Set.Icc τ 1,
      Real.sqrt m * ‖deriv (fun s => c (γ s)) t‖ ≤ F t := by
    intro t ht
    obtain ⟨hsrc, hcb⟩ := hin t ht
    have hl := hlow _ hcb (deriv (fun s => c (γ s)) t)
    show Real.sqrt m * ‖deriv (fun s => c (γ s)) t‖ ≤ Real.sqrt
      (g.g (γ t) (RiemannianMetric3.velocity γ t) (RiemannianMetric3.velocity γ t))
    rw [hformula t hsrc]
    calc Real.sqrt m * ‖deriv (fun s => c (γ s)) t‖
        = Real.sqrt (m * ‖deriv (fun s => c (γ s)) t‖ ^ 2) := by
          rw [Real.sqrt_mul hm.le, Real.sqrt_sq (norm_nonneg _)]
      _ ≤ _ := Real.sqrt_le_sqrt hl
  
  have huIcc : Set.uIcc τ 1 = Set.Icc τ 1 := Set.uIcc_of_le hτ1
  have hderiv : ∀ t ∈ Set.uIcc τ 1,
      HasDerivAt (fun s => c (γ s)) (deriv (fun s => c (γ s)) t) t := by
    intro t ht
    rw [huIcc] at ht
    have htU : t ∈ γ ⁻¹' c.source := (hin t ht).1
    exact ((hφ.differentiableOn one_ne_zero t htU).differentiableAt
      (hUo.mem_nhds htU)).hasDerivAt
  have hdc : ContinuousOn (deriv (fun s => c (γ s))) (Set.Icc τ 1) :=
    (hφ.continuousOn_deriv_of_isOpen hUo le_rfl).mono (fun t ht => (hin t ht).1)
  have hint : IntervalIntegrable (deriv (fun s => c (γ s))) volume τ 1 :=
    ContinuousOn.intervalIntegrable (by rw [huIcc]; exact hdc)
  have hftc : ∫ t in τ..1, deriv (fun s => c (γ s)) t = c (γ 1) - c (γ τ) :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hint
  have hnorm : ‖c (γ 1) - c (γ τ)‖ ≤ ∫ t in τ..1, ‖deriv (fun s => c (γ s)) t‖ := by
    rw [← hftc]; exact intervalIntegral.norm_integral_le_integral_norm hτ1
  have hint2 : IntervalIntegrable (fun t => Real.sqrt m * ‖deriv (fun s => c (γ s)) t‖)
      volume τ 1 :=
    ContinuousOn.intervalIntegrable (by rw [huIcc]; exact continuousOn_const.mul hdc.norm)
  have hintF : ∀ a b : ℝ, IntervalIntegrable F volume a b :=
    fun a b => hcont.intervalIntegrable a b
  have hmono : ∫ t in τ..1, Real.sqrt m * ‖deriv (fun s => c (γ s)) t‖ ≤ ∫ t in τ..1, F t :=
    intervalIntegral.integral_mono_on hτ1 hint2 (hintF τ 1) hbound
  have hcm : ∫ t in τ..1, Real.sqrt m * ‖deriv (fun s => c (γ s)) t‖ =
      Real.sqrt m * ∫ t in τ..1, ‖deriv (fun s => c (γ s)) t‖ :=
    intervalIntegral.integral_const_mul _ _
  have hnn : 0 ≤ ∫ t in (0:ℝ)..τ, F t :=
    intervalIntegral.integral_nonneg hτ0 (fun u _ => Real.sqrt_nonneg _)
  have hsplit : (∫ t in (0:ℝ)..τ, F t) + (∫ t in τ..1, F t) = ∫ t in (0:ℝ)..1, F t :=
    intervalIntegral.integral_add_adjacent_intervals (hintF 0 τ) (hintF τ 1)
  have hL : g.curveLength γ = ∫ t in (0:ℝ)..1, F t := rfl
  have hsm := Real.sqrt_nonneg m
  have h1 : Real.sqrt m * s ≤ Real.sqrt m * ‖c (γ 1) - c (γ τ)‖ :=
    mul_le_mul_of_nonneg_left hdist hsm
  have h2 : Real.sqrt m * ‖c (γ 1) - c (γ τ)‖ ≤
      Real.sqrt m * ∫ t in τ..1, ‖deriv (fun s => c (γ s)) t‖ :=
    mul_le_mul_of_nonneg_left hnorm hsm
  rw [hL]
  linarith

theorem riemannianDist_tendsto_zero_imp_tendsto [T2Space M] [ConnectedSpace M]
    [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (u : ℕ → M) (p : M)
    (hu : Tendsto (fun n => g.riemannianDist (u n) p) atTop (𝓝 0)) :
    Tendsto u atTop (𝓝 p) :=
by
  obtain ⟨δ', hδ'pos, hδ'⟩ :=
    Metric.isOpen_iff.1 (chartAt E3 p).open_target (chartAt E3 p p) (mem_chart_target E3 p)
  have hδpos : 0 < δ' / 2 := by positivity
  have hδball : Metric.closedBall (chartAt E3 p p) (δ' / 2) ⊆ (chartAt E3 p).target :=
    (Metric.closedBall_subset_ball (by linarith)).trans hδ'
  have h4 : 4 * (δ' / 2 / 4) = δ' / 2 := by ring
  obtain ⟨m, hm, hlow⟩ := chart_metric_lower_bound g p (δ' / 2 / 4) (by rw [h4]; exact hδball)
  rw [h4] at hlow
  
  have hD : ∀ s : ℝ, 0 < s → s ≤ δ' / 2 → ∀ x : M,
      x ∉ (chartAt E3 p).source ∩ chartAt E3 p ⁻¹' Metric.ball (chartAt E3 p p) s →
      Real.sqrt m * s ≤ g.riemannianDist x p := by
    intro s hs hsδ x hx
    obtain ⟨γ₀, hγ₀, hγ₀0, hγ₀1⟩ := exists_C1_curve_of_connected x p
    haveI : Nonempty {γ : ℝ → M // ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ ∧ γ 0 = x ∧ γ 1 = p} :=
      ⟨⟨γ₀, hγ₀, hγ₀0, hγ₀1⟩⟩
    unfold RiemannianMetric3.riemannianDist
    refine le_ciInf ?_
    rintro ⟨γ, hγ, hγ0, hγ1⟩
    have hsub : Metric.closedBall (chartAt E3 p p) s ⊆ Metric.closedBall (chartAt E3 p p) (δ' / 2) :=
      Metric.closedBall_subset_closedBall hsδ
    exact curveLength_ge_of_exit g p s m hs hm (hsub.trans hδball)
      (fun y hy v => hlow y (hsub hy) v) γ hγ hγ1
      (curve_speed_continuous g γ hγ (curve_speed_chart_formula g γ hγ))
      (curve_speed_chart_formula g γ hγ p) (by rw [hγ0]; exact hx)
  have hev : ∀ s : ℝ, 0 < s → s ≤ δ' / 2 → ∀ᶠ n in atTop,
      u n ∈ (chartAt E3 p).source ∩ chartAt E3 p ⁻¹' Metric.ball (chartAt E3 p p) s := by
    intro s hs hsδ
    have hpos : 0 < Real.sqrt m * s := mul_pos (Real.sqrt_pos.2 hm) hs
    filter_upwards [hu.eventually (gt_mem_nhds hpos)] with n hn
    by_contra hcon
    have := hD s hs hsδ (u n) hcon
    linarith
  have hsrc : ∀ᶠ n in atTop, u n ∈ (chartAt E3 p).source :=
    (hev (δ' / 2) hδpos le_rfl).mono fun n hn => hn.1
  have htend : Tendsto (fun n => chartAt E3 p (u n)) atTop (𝓝 (chartAt E3 p p)) := by
    rw [Metric.tendsto_nhds]
    intro ε hε
    filter_upwards [hev (min ε (δ' / 2)) (lt_min hε hδpos) (min_le_right _ _)] with n hn
    exact lt_of_lt_of_le (Metric.mem_ball.1 hn.2) (min_le_left _ _)
  have h2 : Tendsto (fun n => (chartAt E3 p).symm (chartAt E3 p (u n))) atTop (𝓝 p) := by
    have := ((chartAt E3 p).continuousAt_symm (mem_chart_target E3 p)).tendsto.comp htend
    rwa [(chartAt E3 p).left_inv (mem_chart_source E3 p)] at this
  refine h2.congr' ?_
  filter_upwards [hsrc] with n hn
  exact (chartAt E3 p).left_inv hn

theorem local_isometry_radial_limit [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hComplete : g.IsCompleteRiemannian)
    (hdist : ∀ (u : ℕ → M) (p : M),
      Tendsto (fun n => g.riemannianDist (u n) p) atTop (𝓝 0) → Tendsto u atTop (𝓝 p))
    (y₀ : E3) (r : ℝ) (hr : 0 < r) (F : E3 → M)
    (hF : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r))
    (hFg : ∀ y ∈ ball y₀ r, g.coeff F y = 1) (v : E3) (hv : dist v y₀ = r) :
    ∃ q : M, Tendsto (fun n : ℕ => F (y₀ + (1 - 1 / ((n : ℝ) + 2)) • (v - y₀))) atTop (𝓝 q) :=
by
  classical
  
  have hiso : ∀ y ∈ ball y₀ r, ∀ d : E3,
      g.g (F y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y d) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y d) =
        ‖d‖ ^ 2 := by
    intro y hy d
    have hc : ∀ i j : Fin 3, g.g (F y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y (e j)) = if i = j then 1 else 0 := by
      intro i j
      have := congrFun (congrFun (hFg y hy) i) j
      rw [Matrix.one_apply] at this
      exact this
    have hd : d = d 0 • e 0 + d 1 • e 1 + d 2 • e 2 := by
      ext k
      fin_cases k <;> simp [e]
    have hn : ‖d‖ ^ 2 = d 0 ^ 2 + d 1 ^ 2 + d 2 ^ 2 := by
      rw [EuclideanSpace.norm_eq, Real.sq_sqrt (by positivity)]
      simp [Fin.sum_univ_three]
    rw [hn]
    conv_lhs => rw [hd]
    simp only [map_add, map_smul, ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
      smul_eq_mul, hc]
    simp <;> ring
  
  have hdl : ∀ a ∈ ball y₀ r, ∀ b ∈ ball y₀ r, g.riemannianDist (F a) (F b) ≤ dist a b := by
    intro a ha b hb
    let c : ℝ → E3 := fun s => a + Real.smoothTransition s • (b - a)
    have hcball : ∀ s, c s ∈ ball y₀ r := by
      intro s
      have hseg : c s ∈ segment ℝ a b := by
        rw [segment_eq_image']
        exact ⟨Real.smoothTransition s,
          ⟨Real.smoothTransition.nonneg s, Real.smoothTransition.le_one s⟩, rfl⟩
      exact (convex_ball y₀ r).segment_subset ha hb hseg
    have hcd : ContDiff ℝ ∞ c :=
      contDiff_const.add (Real.smoothTransition.contDiff.smul contDiff_const)
    have hcder : ∀ t, HasDerivAt c (deriv Real.smoothTransition t • (b - a)) t := by
      intro t
      have h1 : HasDerivAt Real.smoothTransition (deriv Real.smoothTransition t) t :=
        ((Real.smoothTransition.contDiff (n := 1)).differentiable (by simp)).differentiableAt.hasDerivAt
      exact (h1.smul_const (b - a)).const_add a
    let γ : ℝ → M := fun s => F (c s)
    have hFat : ∀ s, MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (c s) := fun s =>
      (hF.contMDiffAt (isOpen_ball.mem_nhds (hcball s))).mdifferentiableAt (by simp)
    have hγ : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ := by
      have hinf : ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) ∞ γ := hF.comp_contMDiff hcd.contMDiff hcball
      exact hinf.of_le (by simp)
    have hvel : ∀ t, RiemannianMetric3.velocity γ t =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (c t) (deriv Real.smoothTransition t • (b - a)) := by
      intro t
      unfold RiemannianMetric3.velocity
      have hcm : MDifferentiableAt 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) c t :=
        (hcder t).differentiableAt.mdifferentiableAt
      have hfd : fderiv ℝ c t 1 = deriv Real.smoothTransition t • (b - a) := by
        rw [(hcder t).hasFDerivAt.fderiv]
        simp
      rw [show γ = F ∘ c from rfl, mfderiv_comp_apply t (hFat t) hcm, mfderiv_eq_fderiv]
      erw [hfd]
    have hspeed : ∀ t, Real.sqrt (g.g (γ t) (RiemannianMetric3.velocity γ t)
        (RiemannianMetric3.velocity γ t)) = deriv Real.smoothTransition t * ‖b - a‖ := by
      intro t
      rw [hvel t]
      have hlin : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (c t) (deriv Real.smoothTransition t • (b - a)) =
          deriv Real.smoothTransition t • mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (c t) (b - a) :=
        map_smul _ _ _
      rw [hlin]
      simp only [map_smul, ContinuousLinearMap.smul_apply, smul_eq_mul]
      have hi := hiso (c t) (hcball t) (b - a)
      have hγt : γ t = F (c t) := rfl
      rw [hγt, hi]
      have hnn : 0 ≤ deriv Real.smoothTransition t := Real.smoothTransition.monotone.deriv_nonneg
      rw [show deriv Real.smoothTransition t * (deriv Real.smoothTransition t * ‖b - a‖ ^ 2) =
        (deriv Real.smoothTransition t * ‖b - a‖) ^ 2 by ring]
      exact Real.sqrt_sq (mul_nonneg hnn (norm_nonneg _))
    have hlen : g.curveLength γ = ‖b - a‖ := by
      unfold RiemannianMetric3.curveLength
      simp_rw [hspeed]
      rw [intervalIntegral.integral_mul_const]
      have hcont : Continuous (deriv Real.smoothTransition) :=
        (Real.smoothTransition.contDiff (n := 1)).continuous_deriv le_rfl
      rw [intervalIntegral.integral_deriv_eq_sub (fun x _ =>
          ((Real.smoothTransition.contDiff (n := 1)).differentiable (by simp)).differentiableAt)
        (hcont.intervalIntegrable _ _)]
      rw [Real.smoothTransition.one_of_one_le le_rfl, Real.smoothTransition.zero_of_nonpos le_rfl]
      ring
    have hbdd : BddBelow (Set.range fun γ' : {γ : ℝ → M // ContMDiff 𝓘(ℝ, ℝ) 𝓘(ℝ, E3) 1 γ ∧
        γ 0 = F a ∧ γ 1 = F b} => g.curveLength γ'.1) := by
      refine ⟨0, ?_⟩
      rintro _ ⟨γ', rfl⟩
      exact intervalIntegral.integral_nonneg zero_le_one (fun t _ => Real.sqrt_nonneg _)
    have hγ0 : γ 0 = F a := by
      simp [γ, c, Real.smoothTransition.zero_of_nonpos le_rfl]
    have hγ1 : γ 1 = F b := by
      simp [γ, c, Real.smoothTransition.one_of_one_le le_rfl]
    have hle : g.riemannianDist (F a) (F b) ≤ g.curveLength γ := by
      unfold RiemannianMetric3.riemannianDist
      exact ciInf_le hbdd ⟨γ, hγ, hγ0, hγ1⟩
    rw [hlen, ← dist_eq_norm'] at hle
    exact hle
  
  set x : ℕ → E3 := fun n => y₀ + (1 - 1 / ((n : ℝ) + 2)) • (v - y₀) with hx
  have hvnorm : ‖v - y₀‖ = r := by rw [← dist_eq_norm]; exact hv
  have hxball : ∀ n, x n ∈ ball y₀ r := by
    intro n
    rw [mem_ball, dist_eq_norm, hx]
    simp only [add_sub_cancel_left, norm_smul, Real.norm_eq_abs, hvnorm]
    have h2 : (0 : ℝ) < (n : ℝ) + 2 := by positivity
    have h3 : 1 / ((n : ℝ) + 2) ≤ 1 / 2 :=
      one_div_le_one_div_of_le (by norm_num) (by linarith [n.cast_nonneg (α := ℝ)])
    have h4 : 0 < 1 / ((n : ℝ) + 2) := by positivity
    rw [abs_of_pos (by linarith)]
    nlinarith
  
  have hxdist : ∀ N m n : ℕ, N ≤ m → N ≤ n → dist (x m) (x n) ≤ r / ((N : ℝ) + 2) := by
    intro N m n hm hn
    rw [dist_eq_norm, hx]
    simp only
    rw [add_sub_add_left_eq_sub, ← sub_smul,
      show (1 - 1 / ((m : ℝ) + 2)) - (1 - 1 / ((n : ℝ) + 2)) =
        1 / ((n : ℝ) + 2) - 1 / ((m : ℝ) + 2) by ring,
      norm_smul, Real.norm_eq_abs, hvnorm]
    have hmN : (N : ℝ) ≤ m := by exact_mod_cast hm
    have hnN : (N : ℝ) ≤ n := by exact_mod_cast hn
    have hN : (0 : ℝ) < (N : ℝ) + 2 := by positivity
    have a1 : 1 / ((m : ℝ) + 2) ≤ 1 / ((N : ℝ) + 2) := one_div_le_one_div_of_le hN (by linarith)
    have a2 : 1 / ((n : ℝ) + 2) ≤ 1 / ((N : ℝ) + 2) := one_div_le_one_div_of_le hN (by linarith)
    have a3 : 0 ≤ 1 / ((m : ℝ) + 2) := by positivity
    have a4 : 0 ≤ 1 / ((n : ℝ) + 2) := by positivity
    have hab : |1 / ((n : ℝ) + 2) - 1 / ((m : ℝ) + 2)| ≤ 1 / ((N : ℝ) + 2) :=
      abs_sub_le_iff.mpr ⟨by linarith, by linarith⟩
    calc |1 / ((n : ℝ) + 2) - 1 / ((m : ℝ) + 2)| * r ≤ 1 / ((N : ℝ) + 2) * r :=
          mul_le_mul_of_nonneg_right hab hr.le
      _ = r / ((N : ℝ) + 2) := by ring
  
  have hcauchy : ∀ ε > 0, ∃ N : ℕ, ∀ m ≥ N, ∀ n ≥ N,
      g.riemannianDist (F (x m)) (F (x n)) < ε := by
    intro ε hε
    obtain ⟨N, hN⟩ := exists_nat_gt (r / ε)
    refine ⟨N, fun m hm n hn => ?_⟩
    have h1 := hdl (x m) (hxball m) (x n) (hxball n)
    have h2 := hxdist N m n hm hn
    have h3 : r / ((N : ℝ) + 2) < ε := by
      rw [div_lt_iff₀ (by positivity)]
      rw [div_lt_iff₀ hε] at hN
      nlinarith
    linarith
  
  obtain ⟨q, hq⟩ := hComplete (fun n => F (x n)) hcauchy
  exact ⟨q, hdist _ q hq⟩

theorem local_isometry_boundary_patch [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M)
    (hchart : ∀ p : M, ∃ j : E3 → M, ∃ ε : ℝ, 0 < ε ∧ j 0 = p ∧
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ j (ball 0 ε) ∧
      (∀ y ∈ ball (0 : E3) ε, g.coeff j y = 1) ∧
      ∀ ρ : ℝ, 0 < ρ → ρ ≤ ε → j '' ball 0 ρ ∈ 𝓝 p)
    (y₀ : E3) (r : ℝ) (hr : 0 < r) (F : E3 → M)
    (hF : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r))
    (hFg : ∀ y ∈ ball y₀ r, g.coeff F y = 1) (v : E3) (hv : dist v y₀ = r) (q : M)
    (hq : Tendsto (fun n : ℕ => F (y₀ + (1 - 1 / ((n : ℝ) + 2)) • (v - y₀))) atTop (𝓝 q)) :
    ∃ ρ : ℝ, 0 < ρ ∧ ∃ G : E3 → M, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G (ball v ρ) ∧
      (∀ y ∈ ball v ρ, g.coeff G y = 1) ∧ Set.EqOn G F (ball v ρ ∩ ball y₀ r) :=
by
  obtain ⟨j, ε, hε, -, hjs, hjg, hjn⟩ := hchart q
  obtain ⟨ρ, hρdef⟩ : ∃ ρ : ℝ, ρ = ε / 3 := ⟨_, rfl⟩
  have hρ : 0 < ρ := by rw [hρdef]; positivity
  have hN : j '' ball 0 ρ ∈ 𝓝 q := hjn ρ hρ (by rw [hρdef]; linarith)
  obtain ⟨N₁, hN₁⟩ := Filter.eventually_atTop.mp (hq.eventually_mem hN)
  obtain ⟨n, hn1, hn2⟩ : ∃ n : ℕ, N₁ ≤ n ∧ ⌈r / ρ⌉₊ ≤ n :=
    ⟨max N₁ ⌈r / ρ⌉₊, le_max_left _ _, le_max_right _ _⟩
  obtain ⟨x, hxdef⟩ : ∃ x : E3, x = y₀ + (1 - 1 / ((n : ℝ) + 2)) • (v - y₀) := ⟨_, rfl⟩
  have hFx : F x ∈ j '' ball 0 ρ := by rw [hxdef]; exact hN₁ n hn1
  obtain ⟨w₀, hw₀, hjw⟩ := hFx
  
  have hnorm : ‖v - y₀‖ = r := by rw [← dist_eq_norm]; exact hv
  have hn2pos : (0 : ℝ) < (n : ℝ) + 2 := by positivity
  have hinv_pos : (0 : ℝ) < 1 / ((n : ℝ) + 2) := by positivity
  have hinv_le : 1 / ((n : ℝ) + 2) ≤ 1 / 2 :=
    one_div_le_one_div_of_le (by norm_num) (by linarith [(Nat.cast_nonneg n : (0:ℝ) ≤ n)])
  have hx : x ∈ ball y₀ r := by
    rw [mem_ball, dist_eq_norm, hxdef, add_sub_cancel_left, norm_smul, Real.norm_eq_abs,
      abs_of_pos (by linarith), hnorm]
    nlinarith
  have hxv : dist x v < ρ := by
    have hxv' : x - v = (-(1 / ((n : ℝ) + 2))) • (v - y₀) := by rw [hxdef]; module
    rw [dist_eq_norm, hxv', norm_smul, norm_neg, Real.norm_eq_abs, abs_of_pos hinv_pos, hnorm]
    have hc : r / ρ ≤ (n : ℝ) := le_trans (Nat.le_ceil _) (by exact_mod_cast hn2)
    rw [div_le_iff₀ hρ] at hc
    rw [div_mul_eq_mul_div, one_mul, div_lt_iff₀ hn2pos]
    nlinarith
  have hw₀V : w₀ ∈ ball (0 : E3) ε := ball_subset_ball (by rw [hρdef]; linarith) hw₀
  
  have hdecomp : ∀ u : E3, u = u 0 • e 0 + u 1 • e 1 + u 2 • e 2 := by
    intro u; ext k; fin_cases k <;> simp [e, EuclideanSpace.single_apply]
  have orth : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (L : E3 →L[ℝ] E3),
      (∀ i k : Fin 3, B (L (e i)) (L (e k)) = if i = k then 1 else 0) →
      ∀ u w : E3, B (L u) (L w) = @inner ℝ E3 _ u w := by
    intro B L hB u w
    have hL : B (L u) (L w) =
        ∑ i : Fin 3, ∑ k : Fin 3, u i * w k * B (L (e i)) (L (e k)) := by
      conv_lhs => rw [hdecomp u, hdecomp w]
      simp only [map_add, map_smul, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three]
      ring
    rw [hL]
    simp [hB, Fin.sum_univ_three, PiLp.inner_apply]
    ring
  set P : E3 →L[ℝ] E3 := mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) j w₀ with hPdef
  set Q : E3 →L[ℝ] E3 := mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F x with hQdef
  have hPcoef : ∀ i k : Fin 3, g.g (F x) (P (e i)) (P (e k)) = if i = k then 1 else 0 := by
    intro i k
    rw [← hjw]
    have h := congrFun (congrFun (hjg w₀ hw₀V) i) k
    rw [Matrix.one_apply] at h
    exact h
  have hQcoef : ∀ i k : Fin 3, g.g (F x) (Q (e i)) (Q (e k)) = if i = k then 1 else 0 := by
    intro i k
    have h := congrFun (congrFun (hFg x hx) i) k
    rw [Matrix.one_apply] at h
    exact h
  have hPF := orth (g.g (F x)) P hPcoef
  have hQF := orth (g.g (F x)) Q hQcoef
  have hPinj : Function.Injective P := by
    intro a b hab
    have h0 : P (a - b) = 0 := by rw [map_sub, hab, sub_self]
    have h1 := hPF (a - b) (a - b)
    simp only [h0, map_zero, ContinuousLinearMap.zero_apply] at h1
    exact sub_eq_zero.mp (inner_self_eq_zero.mp h1.symm)
  have hPsurj : Function.Surjective P :=
    (LinearMap.injective_iff_surjective (f := (P : E3 →ₗ[ℝ] E3))).mp hPinj
  let Pe : E3 ≃L[ℝ] E3 :=
    (LinearEquiv.ofBijective (P : E3 →ₗ[ℝ] E3) ⟨hPinj, hPsurj⟩).toContinuousLinearEquiv
  let A : E3 →L[ℝ] E3 := (Pe.symm : E3 →L[ℝ] E3).comp Q
  have hPA : ∀ u, P (A u) = Q u := by
    intro u
    have := Pe.apply_symm_apply (Q u)
    exact this
  have hAinner : ∀ u w : E3, @inner ℝ E3 _ (A u) (A w) = @inner ℝ E3 _ u w := by
    intro u w
    rw [← hPF, hPA, hPA, hQF]
  have hAnorm : ∀ u : E3, ‖A u‖ = ‖u‖ := by
    intro u
    have h := hAinner u u
    rw [real_inner_self_eq_norm_sq, real_inner_self_eq_norm_sq] at h
    exact (pow_left_inj₀ (norm_nonneg _) (norm_nonneg _) two_ne_zero).mp h
  have hAe : ∀ i k : Fin 3, ∑ a : Fin 3, A (e i) a * A (e k) a = if i = k then 1 else 0 := by
    intro i k
    have h := hAinner (e i) (e k)
    simp [PiLp.inner_apply, EuclideanSpace.single_apply, e] at h
    rw [← h]
    exact Finset.sum_congr rfl (fun a _ => mul_comm _ _)
  
  let σ : E3 → E3 := fun y => A y + (w₀ - A x)
  have hσx : σ x = w₀ := by simp [σ]
  have hσD : ∀ y, HasFDerivAt σ A y := fun y => A.hasFDerivAt.add_const _
  have hσsm : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ σ := (A.contDiff.add contDiff_const).contMDiff
  have hball : ∀ y ∈ ball x (2 * ρ), σ y ∈ ball (0 : E3) ε := by
    intro y hy
    rw [mem_ball, dist_zero_right]
    rw [mem_ball, dist_eq_norm] at hy
    have hw : ‖w₀‖ < ρ := by rw [mem_ball, dist_zero_right] at hw₀; exact hw₀
    have hσy : σ y = A (y - x) + w₀ := by simp only [σ, map_sub]; abel
    rw [hσy]
    calc ‖A (y - x) + w₀‖ ≤ ‖A (y - x)‖ + ‖w₀‖ := norm_add_le _ _
      _ = ‖y - x‖ + ‖w₀‖ := by rw [hAnorm]
      _ < ε := by rw [hρdef] at hy hw; linarith
  have hjσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (j ∘ σ) (ball x (2 * ρ)) :=
    hjs.comp hσsm.contMDiffOn (fun y hy => hball y hy)
  have hjσg : ∀ y ∈ ball x (2 * ρ), g.coeff (j ∘ σ) y = 1 := by
    intro y hy
    ext i k
    have hdiff : DifferentiableAt ℝ σ y := (hσD y).differentiableAt
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) j (σ y) :=
      (hjs.contMDiffAt (isOpen_ball.mem_nhds (hball y hy))).mdifferentiableAt (by simp)
    rw [coeff_comp_apply g j σ y hdiff hmd i k, (hσD y).fderiv, hjg (σ y) (hball y hy)]
    simp [Matrix.one_apply]
    exact hAe i k
  have hmdw : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) j (σ x) := by
    rw [hσx]; exact (hjs.contMDiffAt (isOpen_ball.mem_nhds hw₀V)).mdifferentiableAt (by simp)
  have hder : ∀ u : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (j ∘ σ) x u : E3) =
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F x u := by
    intro u
    rw [mfderiv_comp_apply x hmdw (hσsm.mdifferentiableAt (by simp)), mfderiv_eq_fderiv,
      (hσD x).fderiv]
    rw [hσx]
    exact hPA u
  
  have hO : IsOpen (ball y₀ r ∩ ball x (2 * ρ)) := isOpen_ball.inter isOpen_ball
  have hOc : IsPreconnected (ball y₀ r ∩ ball x (2 * ρ)) :=
    ((convex_ball _ _).inter (convex_ball _ _)).isPreconnected
  have hxO : x ∈ ball y₀ r ∩ ball x (2 * ρ) := ⟨hx, mem_ball_self (by linarith)⟩
  have hval : (j ∘ σ) x = F x := by
    show j (σ x) = F x
    rw [hσx, hjw]
  have hEq := local_isometry_rigidity g _ hO hOc (j ∘ σ) F (hjσs.mono Set.inter_subset_right)
    (hF.mono Set.inter_subset_left) (fun y hy => hjσg y hy.2) (fun y hy => hFg y hy.1) x hxO
    hval hder
  have hsub : ball v ρ ⊆ ball x (2 * ρ) := by
    intro y hy
    rw [mem_ball] at hy ⊢
    have h3 := dist_triangle y v x
    rw [dist_comm v x] at h3
    linarith
  exact ⟨ρ, hρ, j ∘ σ, hjσs.mono hsub, fun y hy => hjσg y (hsub hy),
    fun y hy => hEq ⟨hy.2, hsub hy.1⟩⟩

theorem boundary_patches_extend [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (y₀ : E3) (r : ℝ) (hr : 0 < r) (F : E3 → M)
    (hF : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r))
    (hFg : ∀ y ∈ ball y₀ r, g.coeff F y = 1)
    (hpatch : ∀ v : E3, dist v y₀ = r → ∃ ρ : ℝ, 0 < ρ ∧ ∃ G : E3 → M,
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G (ball v ρ) ∧ (∀ y ∈ ball v ρ, g.coeff G y = 1) ∧
      Set.EqOn G F (ball v ρ ∩ ball y₀ r)) :
    ∃ δ : ℝ, 0 < δ ∧ ∃ F' : E3 → M,
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F' (ball y₀ (r + δ)) ∧
      (∀ y ∈ ball y₀ (r + δ), g.coeff F' y = 1) ∧ Set.EqOn F' F (ball y₀ r) :=
by
  classical
  
  have hcoeff : ∀ (F₁ F₂ : E3 → M) (y : E3), F₁ =ᶠ[𝓝 y] F₂ → g.coeff F₁ y = g.coeff F₂ y := by
    intro F₁ F₂ y h
    have hv : F₁ y = F₂ y := h.eq_of_nhds
    have hm : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F₁ y = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F₂ y := h.mfderiv_eq
    ext i j
    have key : ∀ (p q : M) (L₁ L₂ : E3 →L[ℝ] E3), p = q → L₁ = L₂ →
        g.g p (L₁ (e i)) (L₁ (e j)) = g.g q (L₂ (e i)) (L₂ (e j)) := by
      rintro p q L₁ L₂ rfl rfl
      rfl
    exact key _ _ _ _ hv hm
  
  have hpair : ∀ (v₁ v₂ : E3), dist v₁ y₀ = r → dist v₂ y₀ = r → ∀ (ρ₁ ρ₂ : ℝ), 0 < ρ₁ →
      0 < ρ₂ → ∀ (G₁ G₂ : E3 → M), ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G₁ (ball v₁ ρ₁) →
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G₂ (ball v₂ ρ₂) →
      (∀ y ∈ ball v₁ ρ₁, g.coeff G₁ y = 1) → (∀ y ∈ ball v₂ ρ₂, g.coeff G₂ y = 1) →
      Set.EqOn G₁ F (ball v₁ ρ₁ ∩ ball y₀ r) → Set.EqOn G₂ F (ball v₂ ρ₂ ∩ ball y₀ r) →
      Set.EqOn G₁ G₂ (ball v₁ ρ₁ ∩ ball v₂ ρ₂) := by
    intro v₁ v₂ hv₁ hv₂ ρ₁ ρ₂ hρ₁ hρ₂ G₁ G₂ hG₁ hG₂ hG₁g hG₂g hG₁F hG₂F y hy
    have hBo : IsOpen (ball v₁ ρ₁ ∩ ball v₂ ρ₂) := isOpen_ball.inter isOpen_ball
    have hBc : IsPreconnected (ball v₁ ρ₁ ∩ ball v₂ ρ₂) :=
      ((convex_ball v₁ ρ₁).inter (convex_ball v₂ ρ₂)).isPreconnected
    have hd : dist v₁ v₂ < ρ₁ + ρ₂ := by
      have h1 : dist y v₁ < ρ₁ := hy.1
      have h2 : dist y v₂ < ρ₂ := hy.2
      calc dist v₁ v₂ ≤ dist v₁ y + dist y v₂ := dist_triangle _ _ _
        _ = dist y v₁ + dist y v₂ := by rw [dist_comm v₁ y]
        _ < ρ₁ + ρ₂ := by linarith
    have hspos : 0 < ρ₁ + ρ₂ := by linarith
    obtain ⟨a, ha_def⟩ : ∃ a : ℝ, a = ρ₂ / (ρ₁ + ρ₂) := ⟨_, rfl⟩
    obtain ⟨b, hb_def⟩ : ∃ b : ℝ, b = ρ₁ / (ρ₁ + ρ₂) := ⟨_, rfl⟩
    have ha : 0 ≤ a := by rw [ha_def]; exact div_nonneg hρ₂.le hspos.le
    have hb : 0 ≤ b := by rw [hb_def]; exact div_nonneg hρ₁.le hspos.le
    have hab : a + b = 1 := by
      rw [ha_def, hb_def, div_add_div_same, add_comm ρ₂ ρ₁, div_self hspos.ne']
    have hbd : b * dist v₁ v₂ < ρ₁ := by
      rw [hb_def, div_mul_eq_mul_div, div_lt_iff₀ hspos]
      nlinarith [mul_lt_mul_of_pos_left hd hρ₁]
    have had : a * dist v₁ v₂ < ρ₂ := by
      rw [ha_def, div_mul_eq_mul_div, div_lt_iff₀ hspos]
      nlinarith [mul_lt_mul_of_pos_left hd hρ₂]
    obtain ⟨w, hw_def⟩ : ∃ w : E3, w = a • v₁ + b • v₂ := ⟨_, rfl⟩
    have hw0 : dist w y₀ ≤ r := by
      have h1 : v₁ ∈ closedBall y₀ r := mem_closedBall.2 hv₁.le
      have h2 : v₂ ∈ closedBall y₀ r := mem_closedBall.2 hv₂.le
      have h3 := (convex_closedBall y₀ r) h1 h2 ha hb hab
      rw [← hw_def] at h3
      exact mem_closedBall.1 h3
    have hw1 : dist w v₁ < ρ₁ := by
      have haeq : a = 1 - b := by linarith
      have hsub : w - v₁ = b • (v₂ - v₁) := by
        rw [hw_def, haeq, sub_smul, one_smul, smul_sub]
        abel
      rw [dist_eq_norm, hsub, norm_smul, Real.norm_of_nonneg hb, ← dist_eq_norm, dist_comm]
      exact hbd
    have hw2 : dist w v₂ < ρ₂ := by
      have hbeq : b = 1 - a := by linarith
      have hsub : w - v₂ = a • (v₁ - v₂) := by
        rw [hw_def, hbeq, sub_smul, one_smul, smul_sub]
        abel
      rw [dist_eq_norm, hsub, norm_smul, Real.norm_of_nonneg ha, ← dist_eq_norm]
      exact had
    have hwB : w ∈ ball v₁ ρ₁ ∩ ball v₂ ρ₂ := ⟨mem_ball.2 hw1, mem_ball.2 hw2⟩
    obtain ⟨ε, hε, hεB⟩ := Metric.isOpen_iff.mp hBo w hwB
    obtain ⟨τ, hτ_def⟩ : ∃ τ : ℝ, τ = min (1 / 2 : ℝ) (ε / (2 * r)) := ⟨_, rfl⟩
    have hτ0 : 0 < τ := by
      rw [hτ_def]; exact lt_min (by norm_num) (div_pos hε (by linarith))
    have hτ1 : τ ≤ 1 / 2 := by rw [hτ_def]; exact min_le_left _ _
    have hτr : τ * r ≤ ε / 2 := by
      have h : τ ≤ ε / (2 * r) := by rw [hτ_def]; exact min_le_right _ _
      calc τ * r ≤ ε / (2 * r) * r := mul_le_mul_of_nonneg_right h hr.le
        _ = ε / 2 := by field_simp
    obtain ⟨z, hz_def⟩ : ∃ z : E3, z = w + τ • (y₀ - w) := ⟨_, rfl⟩
    have hzw : dist z w < ε := by
      have hsub : z - w = τ • (y₀ - w) := by rw [hz_def]; abel
      rw [dist_eq_norm, hsub, norm_smul, Real.norm_of_nonneg hτ0.le, ← dist_eq_norm, dist_comm]
      calc τ * dist w y₀ ≤ τ * r := mul_le_mul_of_nonneg_left hw0 hτ0.le
        _ ≤ ε / 2 := hτr
        _ < ε := by linarith
    have hzB : z ∈ ball v₁ ρ₁ ∩ ball v₂ ρ₂ := hεB (mem_ball.2 hzw)
    have hz0 : dist z y₀ < r := by
      have hsub : z - y₀ = (1 - τ) • (w - y₀) := by
        rw [hz_def, sub_smul, one_smul, smul_sub, smul_sub]
        abel
      rw [dist_eq_norm, hsub, norm_smul, Real.norm_of_nonneg (by linarith), ← dist_eq_norm]
      calc (1 - τ) * dist w y₀ ≤ (1 - τ) * r := mul_le_mul_of_nonneg_left hw0 (by linarith)
        _ < r := by nlinarith
    have hev : G₁ =ᶠ[𝓝 z] G₂ := by
      filter_upwards [(hBo.inter isOpen_ball).mem_nhds ⟨hzB, mem_ball.2 hz0⟩] with u hu
      rw [hG₁F ⟨hu.1.1, hu.2⟩, hG₂F ⟨hu.1.2, hu.2⟩]
    exact local_isometry_rigidity g (ball v₁ ρ₁ ∩ ball v₂ ρ₂) hBo hBc G₁ G₂
      (hG₁.mono Set.inter_subset_left) (hG₂.mono Set.inter_subset_right)
      (fun u hu => hG₁g u hu.1) (fun u hu => hG₂g u hu.2) z hzB hev.eq_of_nhds
      (fun v => by rw [hev.mfderiv_eq] <;> rfl) hy
  
  have hpatch' : ∀ v : E3, ∃ ρ : ℝ, 0 < ρ ∧ ∃ G : E3 → M, dist v y₀ = r →
      (ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G (ball v ρ) ∧ (∀ y ∈ ball v ρ, g.coeff G y = 1) ∧
      Set.EqOn G F (ball v ρ ∩ ball y₀ r)) := by
    intro v
    by_cases hv : dist v y₀ = r
    · obtain ⟨ρ, hρ, G, h⟩ := hpatch v hv
      exact ⟨ρ, hρ, G, fun _ => h⟩
    · exact ⟨1, one_pos, F, fun h => absurd h hv⟩
  choose ρ hρ G hG using hpatch'
  
  obtain ⟨t, ht, hcov⟩ := (isCompact_sphere y₀ r).elim_nhds_subcover (fun v => ball v (ρ v))
    (fun v _ => ball_mem_nhds v (hρ v))
  
  obtain ⟨F', hF'def⟩ : ∃ F' : E3 → M, F' = fun y => if y ∈ ball y₀ r then F y else
      if h : ∃ v ∈ t, y ∈ ball v (ρ v) then G (Classical.choose h) y else F y := ⟨_, rfl⟩
  have hEF : Set.EqOn F' F (ball y₀ r) := by
    intro y hy
    rw [hF'def]
    dsimp only
    rw [if_pos hy]
  have hEG : ∀ v ∈ t, Set.EqOn F' (G v) (ball v (ρ v)) := by
    intro v hv y hy
    have hvs : dist v y₀ = r := mem_sphere.1 (ht v hv)
    rw [hF'def]
    dsimp only
    by_cases hy0 : y ∈ ball y₀ r
    · rw [if_pos hy0]
      exact ((hG v hvs).2.2 ⟨hy, hy0⟩).symm
    · rw [if_neg hy0]
      have hex : ∃ v ∈ t, y ∈ ball v (ρ v) := ⟨v, hv, hy⟩
      rw [dif_pos hex]
      obtain ⟨hv't, hyv'⟩ := Classical.choose_spec hex
      have hv's : dist (Classical.choose hex) y₀ = r := mem_sphere.1 (ht _ hv't)
      obtain ⟨h1, h2, h3⟩ := hG _ hv's
      obtain ⟨k1, k2, k3⟩ := hG v hvs
      exact hpair _ v hv's hvs _ _ (hρ _) (hρ v) _ _ h1 k1 h2 k2 h3 k3 ⟨hyv', hy⟩
  
  have hlocal : ∀ y ∈ ball y₀ r ∪ ⋃ v ∈ t, ball v (ρ v),
      ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F' y ∧ g.coeff F' y = 1 := by
    intro y hy
    rcases hy with hy | hy
    · have hev : F' =ᶠ[𝓝 y] F := by
        filter_upwards [isOpen_ball.mem_nhds hy] with u hu
        exact hEF hu
      exact ⟨(hF.contMDiffAt (isOpen_ball.mem_nhds hy)).congr_of_eventuallyEq hev,
        (hcoeff _ _ _ hev).trans (hFg y hy)⟩
    · obtain ⟨v, hv, hyv⟩ := Set.mem_iUnion₂.1 hy
      have hvs : dist v y₀ = r := mem_sphere.1 (ht v hv)
      have hev : F' =ᶠ[𝓝 y] G v := by
        filter_upwards [isOpen_ball.mem_nhds hyv] with u hu
        exact hEG v hv hu
      exact ⟨((hG v hvs).1.contMDiffAt (isOpen_ball.mem_nhds hyv)).congr_of_eventuallyEq hev,
        (hcoeff _ _ _ hev).trans ((hG v hvs).2.1 y hyv)⟩
  
  have hOopen : IsOpen (ball y₀ r ∪ ⋃ v ∈ t, ball v (ρ v)) :=
    isOpen_ball.union (isOpen_biUnion fun v _ => isOpen_ball)
  have hsub : closedBall y₀ r ⊆ ball y₀ r ∪ ⋃ v ∈ t, ball v (ρ v) := by
    intro y hy
    rcases (mem_closedBall.1 hy).lt_or_eq with h | h
    · exact Or.inl (mem_ball.2 h)
    · exact Or.inr (hcov (mem_sphere.2 h))
  obtain ⟨δ, hδ, hδsub⟩ := (isCompact_closedBall y₀ r).exists_thickening_subset_open hOopen hsub
  have hball : ball y₀ (r + δ) ⊆ ball y₀ r ∪ ⋃ v ∈ t, ball v (ρ v) := by
    rw [add_comm, ← thickening_closedBall hδ hr.le y₀]
    exact hδsub
  
  exact ⟨δ, hδ, F', fun y hy => (hlocal y (hball hy)).1.contMDiffWithinAt,
    fun y hy => (hlocal y (hball hy)).2, hEF⟩

theorem nested_ball_isometries_glue [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (J : E3 → M) (y₀ : E3) (S : Set ℝ) (hSne : S.Nonempty)
    (hS : ∀ r ∈ S, 0 < r ∧ ∃ F : E3 → M, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r) ∧
      (∀ y ∈ ball y₀ r, g.coeff F y = 1) ∧ F y₀ = J y₀ ∧
      ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₀ v : E3) = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) J y₀ v) :
    ∃ F : E3 → M, (∀ r ∈ S, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r) ∧
      ∀ y ∈ ball y₀ r, g.coeff F y = 1) ∧ F y₀ = J y₀ ∧
      ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₀ v : E3) = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) J y₀ v :=
by
  classical
  choose hpos Fr hFr using hS
  
  have hcoeff : ∀ (F₁ F₂ : E3 → M) (y : E3), F₁ =ᶠ[𝓝 y] F₂ → g.coeff F₁ y = g.coeff F₂ y := by
    intro F₁ F₂ y h
    have hv : F₁ y = F₂ y := h.eq_of_nhds
    have hm := h.mfderiv_eq (I := 𝓘(ℝ, E3)) (I' := 𝓘(ℝ, E3))
    ext i j
    simp only [RiemannianMetric3.coeff, coeffMatrix]
    rw [hm, hv]
  
  have hcompat : ∀ r (hr : r ∈ S) r' (hr' : r' ∈ S),
      Set.EqOn (Fr r hr) (Fr r' hr') (ball y₀ (min r r')) := by
    intro r hr r' hr'
    obtain ⟨h1, h2, h3, h4⟩ := hFr r hr
    obtain ⟨h1', h2', h3', h4'⟩ := hFr r' hr'
    have hsub : ball y₀ (min r r') ⊆ ball y₀ r := ball_subset_ball (min_le_left r r')
    have hsub' : ball y₀ (min r r') ⊆ ball y₀ r' := ball_subset_ball (min_le_right r r')
    exact local_isometry_rigidity g (ball y₀ (min r r')) isOpen_ball
      (convex_ball y₀ _).isPreconnected
      (Fr r hr) (Fr r' hr') (h1.mono hsub) (h1'.mono hsub') (fun y hy => h2 y (hsub hy))
      (fun y hy => h2' y (hsub' hy)) y₀ (mem_ball_self (lt_min (hpos r hr) (hpos r' hr')))
      (h3.trans h3'.symm) (fun v => (h4 v).trans (h4' v).symm)
  
  let F : E3 → M := fun y =>
    if h : ∃ r, r ∈ S ∧ dist y y₀ < r then Fr h.choose h.choose_spec.1 y else J y₀
  have hloc : ∀ r (hr : r ∈ S), ∀ y ∈ ball y₀ r, F y = Fr r hr y := by
    intro r hr y hy
    have hex : ∃ r, r ∈ S ∧ dist y y₀ < r := ⟨r, hr, mem_ball.mp hy⟩
    have hF : F y = Fr hex.choose hex.choose_spec.1 y := dif_pos hex
    rw [hF]
    exact hcompat _ _ r hr (mem_ball.mpr (lt_min hex.choose_spec.2 (mem_ball.mp hy)))
  have hev : ∀ r (hr : r ∈ S), ∀ y ∈ ball y₀ r, F =ᶠ[𝓝 y] Fr r hr := fun r hr y hy =>
    Filter.eventually_of_mem (isOpen_ball.mem_nhds hy) (fun z hz => hloc r hr z hz)
  obtain ⟨r₀, hr₀⟩ := hSne
  have hy₀ : y₀ ∈ ball y₀ r₀ := mem_ball_self (hpos r₀ hr₀)
  refine ⟨F, fun r hr => ⟨(hFr r hr).1.congr (fun y hy => hloc r hr y hy), fun y hy => ?_⟩,
    ?_, ?_⟩
  · rw [hcoeff F (Fr r hr) y (hev r hr y hy)]
    exact (hFr r hr).2.1 y hy
  · rw [(hev r₀ hr₀ y₀ hy₀).eq_of_nhds]
    exact (hFr r₀ hr₀).2.2.1
  · intro v
    rw [(hev r₀ hr₀ y₀ hy₀).mfderiv_eq]
    exact (hFr r₀ hr₀).2.2.2 v

theorem flat_complete_extend_local_isometry [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian)
    (hchart : ∀ p : M, ∃ j : E3 → M, ∃ ε : ℝ, 0 < ε ∧ j 0 = p ∧
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ j (ball 0 ε) ∧
      (∀ y ∈ ball (0 : E3) ε, g.coeff j y = 1) ∧
      ∀ ρ : ℝ, 0 < ρ → ρ ≤ ε → j '' ball 0 ρ ∈ 𝓝 p)
    (hdist : ∀ (u : ℕ → M) (p : M),
      Tendsto (fun n => g.riemannianDist (u n) p) atTop (𝓝 0) → Tendsto u atTop (𝓝 p))
    (U : Set E3) (hU : IsOpen U) (y₀ : E3) (hy₀ : y₀ ∈ U) (J : E3 → M)
    (hJ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ J U) (hJg : ∀ y ∈ U, g.coeff J y = 1) :
    ∃ F : E3 → M, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F ∧ (∀ y : E3, g.coeff F y = 1) ∧
      F y₀ = J y₀ ∧
      ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₀ v : E3) =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) J y₀ v :=
by
  classical
  set S : Set ℝ := {r : ℝ | 0 < r ∧ ∃ F : E3 → M,
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r) ∧
      (∀ y ∈ ball y₀ r, g.coeff F y = 1) ∧ F y₀ = J y₀ ∧
      ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₀ v : E3) = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) J y₀ v}
    with hSdef
  have hS : ∀ r ∈ S, 0 < r ∧ ∃ F : E3 → M, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r) ∧
      (∀ y ∈ ball y₀ r, g.coeff F y = 1) ∧ F y₀ = J y₀ ∧
      ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₀ v : E3) =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) J y₀ v := by
    intro r hr
    rw [hSdef, Set.mem_setOf_eq] at hr
    exact hr
  obtain ⟨r₀, hr₀, hr₀U⟩ := Metric.isOpen_iff.mp hU y₀ hy₀
  have hr₀S : r₀ ∈ S := by
    rw [hSdef, Set.mem_setOf_eq]
    exact ⟨hr₀, J, hJ.mono hr₀U, fun y hy => hJg y (hr₀U hy), rfl, fun v => rfl⟩
  have hSne : S.Nonempty := ⟨r₀, hr₀S⟩
  have hloc : ∀ F : E3 → M, (∀ r ∈ S, ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F (ball y₀ r) ∧
      ∀ y ∈ ball y₀ r, g.coeff F y = 1) → ∀ y : E3, ∀ r ∈ S, dist y y₀ < r →
      ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F y ∧ g.coeff F y = 1 := by
    intro F hF y r hr hy
    exact ⟨(hF r hr).1.contMDiffAt (isOpen_ball.mem_nhds hy), (hF r hr).2 y hy⟩
  have hunb : ¬ BddAbove S := by
    intro hbdd
    have hr₀R : r₀ ≤ sSup S := le_csSup hbdd hr₀S
    have hRpos : 0 < sSup S := lt_of_lt_of_le hr₀ hr₀R
    obtain ⟨Fs, hFs, hFsy₀, hFsd⟩ := nested_ball_isometries_glue g J y₀ S hSne hS
    have hFsR : ∀ y ∈ ball y₀ (sSup S),
        ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Fs y ∧ g.coeff Fs y = 1 := by
      intro y hy
      obtain ⟨r, hrS, hyr⟩ := exists_lt_of_lt_csSup hSne (mem_ball.mp hy)
      exact hloc Fs hFs y r hrS hyr
    have hFsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Fs (ball y₀ (sSup S)) :=
      fun y hy => (hFsR y hy).1.contMDiffWithinAt
    have hFsg : ∀ y ∈ ball y₀ (sSup S), g.coeff Fs y = 1 := fun y hy => (hFsR y hy).2
    have hpatch : ∀ v : E3, dist v y₀ = sSup S → ∃ ρ : ℝ, 0 < ρ ∧ ∃ G : E3 → M,
        ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G (ball v ρ) ∧ (∀ y ∈ ball v ρ, g.coeff G y = 1) ∧
        Set.EqOn G Fs (ball v ρ ∩ ball y₀ (sSup S)) := by
      intro v hv
      obtain ⟨q, hq⟩ :=
        local_isometry_radial_limit g hComplete hdist y₀ (sSup S) hRpos Fs hFsm hFsg v hv
      exact local_isometry_boundary_patch g hchart y₀ (sSup S) hRpos Fs hFsm hFsg v hv q hq
    obtain ⟨δ, hδ, F', hF'm, hF'g, hF'eq⟩ :=
      boundary_patches_extend g y₀ (sSup S) hRpos Fs hFsm hFsg hpatch
    have hev : F' =ᶠ[𝓝 y₀] Fs := by
      filter_upwards [isOpen_ball.mem_nhds (mem_ball_self hRpos)] with y hy
      exact hF'eq hy
    have hmem : sSup S + δ ∈ S := by
      rw [hSdef, Set.mem_setOf_eq]
      refine ⟨by linarith, F', hF'm, hF'g, ?_, ?_⟩
      · rw [hev.eq_of_nhds, hFsy₀]
      · intro v
        rw [hev.mfderiv_eq]
        exact hFsd v
    have hle := le_csSup hbdd hmem
    linarith
  obtain ⟨F, hF, hFy₀, hFd⟩ := nested_ball_isometries_glue g J y₀ S hSne hS
  have hall : ∀ y : E3, ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F y ∧ g.coeff F y = 1 := by
    intro y
    obtain ⟨r, hrS, hyr⟩ := not_bddAbove_iff.mp hunb (dist y y₀)
    exact hloc F hF y r hrS hyr
  exact ⟨F, fun y => (hall y).1, fun y => (hall y).2, hFy₀, hFd⟩

theorem deck_rigid_motion [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (F : E3 → M) (hF : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F) (hFg : ∀ y : E3, g.coeff F y = 1)
    (y₁ y₂ : E3) (h : F y₁ = F y₂) :
    ∃ A : E3 ≃ₗᵢ[ℝ] E3, ∃ b : E3, A y₁ + b = y₂ ∧ ∀ y : E3, F (A y + b) = F y :=
by
  classical
  
  have hdecomp : ∀ v : E3, v = v 0 • e 0 + v 1 • e 1 + v 2 • e 2 := by
    intro v
    ext i
    fin_cases i <;> simp [e, EuclideanSpace.single_apply]
  have hinner3 : ∀ v w : E3, @inner ℝ E3 _ v w = v 0 * w 0 + v 1 * w 1 + v 2 * w 2 := by
    intro v w
    simp [PiLp.inner_apply, Fin.sum_univ_three, mul_comm]
  have hiso : ∀ y : E3, ∀ v w : E3,
      g.g (F y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y v) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y w) =
        @inner ℝ E3 _ v w := by
    intro y v w
    have key : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (D : E3 →L[ℝ] E3),
        (∀ i j : Fin 3, B (D (e i)) (D (e j)) = if i = j then 1 else 0) →
        B (D v) (D w) = @inner ℝ E3 _ v w := by
      intro B D hc
      rw [hdecomp v, hdecomp w]
      simp only [map_add, map_smul, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul, hc]
      rw [hinner3]
      simp [e, EuclideanSpace.single_apply]
      ring
    apply key (g.g (F y)) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y)
    intro i j
    have h1 := congrFun (congrFun (hFg y) i) j
    rw [Matrix.one_apply] at h1
    exact h1
  
  have hlin : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (L₁ L₂ : E3 →L[ℝ] E3),
      (∀ v w, B (L₁ v) (L₁ w) = @inner ℝ E3 _ v w) →
      (∀ v w, B (L₂ v) (L₂ w) = @inner ℝ E3 _ v w) →
      ∃ A : E3 ≃ₗᵢ[ℝ] E3, ∀ v, L₂ (A v) = L₁ v := by
    intro B L₁ L₂ h₁ h₂
    have hinj : Function.Injective (L₂ : E3 →ₗ[ℝ] E3) := by
      rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
      intro v hv
      have h3 := h₂ v v
      have hv' : L₂ v = 0 := hv
      rw [hv'] at h3
      simp only [map_zero, ContinuousLinearMap.zero_apply] at h3
      exact inner_self_eq_zero.mp h3.symm
    have hsurj : Function.Surjective (L₂ : E3 →ₗ[ℝ] E3) :=
      LinearMap.injective_iff_surjective.mp hinj
    let eL := LinearEquiv.ofBijective (L₂ : E3 →ₗ[ℝ] E3) ⟨hinj, hsurj⟩
    have heL : ∀ u, L₂ (eL.symm u) = u := fun u => eL.apply_symm_apply u
    let A₀ : E3 →ₗ[ℝ] E3 := eL.symm.toLinearMap ∘ₗ (L₁ : E3 →ₗ[ℝ] E3)
    have hA₀ : ∀ v, A₀ v = eL.symm (L₁ v) := fun v => rfl
    have hA₀i : ∀ v w, @inner ℝ E3 _ (A₀ v) (A₀ w) = @inner ℝ E3 _ v w := by
      intro v w
      rw [← h₂ (A₀ v) (A₀ w), hA₀, hA₀, heL, heL]
      exact h₁ v w
    refine ⟨(LinearMap.isometryOfInner A₀ hA₀i).toLinearIsometryEquiv rfl, fun v => ?_⟩
    show L₂ (A₀ v) = L₁ v
    rw [hA₀, heL]
  obtain ⟨A, hA⟩ := hlin (g.g (F y₁)) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₁)
    (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₂) (hiso y₁) (by rw [h]; exact hiso y₂)
  
  set b : E3 := y₂ - A y₁ with hb
  have hAb : A y₁ + b = y₂ := by rw [hb]; abel
  have hTd : ∀ y, HasFDerivAt (fun x => A x + b) (A.toContinuousLinearEquiv : E3 →L[ℝ] E3) y :=
    fun y => (A.toContinuousLinearEquiv : E3 →L[ℝ] E3).hasFDerivAt.add_const b
  have hTsm : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (fun x => A x + b) := by
    rw [contMDiff_iff_contDiff]
    exact A.contDiff.add contDiff_const
  have hf₁ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (fun y => F (A y + b)) := hF.comp hTsm
  have hee : ∀ i j : Fin 3, @inner ℝ E3 _ (e i) (e j) = if i = j then 1 else 0 := by
    intro i j
    rw [hinner3]
    fin_cases i <;> fin_cases j <;> simp [e, EuclideanSpace.single_apply]
  
  have hchain : ∀ y v : E3,
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun y => F (A y + b)) y v : E3) =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (A y + b) (A v) := by
    intro y v
    have hcomp := mfderiv_comp_apply (I := 𝓘(ℝ, E3)) (I' := 𝓘(ℝ, E3)) (I'' := 𝓘(ℝ, E3)) y
      (hF.mdifferentiableAt (by simp)) (hTsm.mdifferentiableAt (by simp)) v
    have hT1 : (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun x => A x + b) y v : E3) = A v := by
      rw [mfderiv_eq_fderiv, (hTd y).fderiv]
      rfl
    exact hcomp.trans (congrArg (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (A y + b)) hT1)
  
  have hg₁ : ∀ y, g.coeff (fun y => F (A y + b)) y = 1 := by
    intro y
    ext i j
    show g.g (F (A y + b))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun y => F (A y + b)) y (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun y => F (A y + b)) y (e j)) = (1 : Matrix (Fin 3) (Fin 3) ℝ) i j
    rw [hchain, hchain, hiso, LinearIsometryEquiv.inner_map_map, hee, Matrix.one_apply]
  have hder : ∀ v : E3, (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun y => F (A y + b)) y₁ v : E3) =
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₁ v := by
    intro v
    have hmove : ∀ p : E3, p = y₂ →
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F p (A v) : E3) = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y₂ (A v) := by
      rintro p rfl
      rfl
    rw [hchain, hmove (A y₁ + b) hAb]
    exact hA v
  
  refine ⟨A, b, hAb, fun y => ?_⟩
  have hval : (fun y => F (A y + b)) y₁ = F y₁ := by
    show F (A y₁ + b) = F y₁
    rw [hAb]; exact h.symm
  exact local_isometry_rigidity g Set.univ isOpen_univ isPreconnected_univ
    (fun y => F (A y + b)) F hf₁.contMDiffOn hF.contMDiffOn (fun y _ => hg₁ y)
    (fun y _ => hFg y) y₁ (Set.mem_univ _) hval hder (Set.mem_univ y)

theorem local_isometry_surjective [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M)
    (hchart : ∀ p : M, ∃ j : E3 → M, ∃ ε : ℝ, 0 < ε ∧ j 0 = p ∧
      ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ j (ball 0 ε) ∧
      (∀ y ∈ ball (0 : E3) ε, g.coeff j y = 1) ∧
      ∀ ρ : ℝ, 0 < ρ → ρ ≤ ε → j '' ball 0 ρ ∈ 𝓝 p)
    (F : E3 → M) (hF : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F) (hFg : ∀ y : E3, g.coeff F y = 1) :
    Function.Surjective F :=
by
  
  have hexp : ∀ a : E3, a = a 0 • e 0 + a 1 • e 1 + a 2 • e 2 := by
    intro a
    ext i
    fin_cases i <;> simp [e]
  
  have hinner : ∀ (φ : E3 → M) (x : E3), g.coeff φ x = 1 → ∀ a b : E3,
      g.g (φ x) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ x a) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ x b) =
        @inner ℝ E3 _ a b := by
    intro φ x h a b
    have hij : ∀ i j : Fin 3, g.g (φ x) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ x (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ x (e j)) = if i = j then 1 else 0 := by
      intro i j
      have := congrFun (congrFun h i) j
      simpa [RiemannianMetric3.coeff, coeffMatrix, Matrix.one_apply] using this
    have hrhs : @inner ℝ E3 _ a b = a 0 * b 0 + a 1 * b 1 + a 2 * b 2 := by
      simp [PiLp.inner_apply, Fin.sum_univ_three]
      ring
    rw [hrhs]
    conv_lhs => rw [hexp a, hexp b]
    simp only [map_add, map_smul, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.smul_apply, smul_eq_mul, hij]
    simp
    ring
  
  have linalg : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (D K : E3 →L[ℝ] E3),
      (∀ a b, B (D a) (D b) = @inner ℝ E3 _ a b) → (∀ a b, B (K a) (K b) = @inner ℝ E3 _ a b) →
      ∃ Λ : E3 →L[ℝ] E3, (∀ a b, @inner ℝ E3 _ (Λ a) (Λ b) = @inner ℝ E3 _ a b) ∧
        ∀ w, D (Λ w) = K w := by
    intro B D K hD hK
    have hinj : Function.Injective D := by
      intro a₁ a₂ h
      have h0 : D (a₁ - a₂) = 0 := by rw [map_sub, h, sub_self]
      have := hD (a₁ - a₂) (a₁ - a₂)
      rw [h0, map_zero] at this
      have h2 : a₁ - a₂ = 0 := by simpa using this.symm
      exact sub_eq_zero.mp h2
    have hsurj : Function.Surjective D :=
      (LinearMap.injective_iff_surjective (f := (D : E3 →ₗ[ℝ] E3))).mp hinj
    let eL : E3 ≃ₗ[ℝ] E3 := LinearEquiv.ofBijective (D : E3 →ₗ[ℝ] E3) ⟨hinj, hsurj⟩
    let eC : E3 ≃L[ℝ] E3 := eL.toContinuousLinearEquiv
    have hDe : ∀ x, D (eC.symm x) = x := fun x => eC.apply_symm_apply x
    refine ⟨(eC.symm : E3 →L[ℝ] E3).comp K, ?_, ?_⟩
    · intro a b
      simp only [ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe]
      rw [← hD, hDe, hDe, hK]
    · intro w
      simp only [ContinuousLinearMap.comp_apply, ContinuousLinearEquiv.coe_coe]
      exact hDe _
  
  have absorb : ∀ (j : E3 → M) (ε : ℝ), ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ j (ball 0 ε) →
      (∀ u ∈ ball (0 : E3) ε, g.coeff j u = 1) → ∀ (y v : E3), v ∈ ball (0 : E3) ε →
      F y = j v → j '' ball 0 ε ⊆ Set.range F := by
    intro j ε hjs hjg y v hv hval
    obtain ⟨Λ, hΛ, hΛd⟩ := linalg (g.g (F y)) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y)
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) j v) (hinner F y (hFg y))
      (by rw [hval]; exact hinner j v (hjg v hv))
    
    have hσ : ContDiff ℝ ∞ (fun u : E3 => y + Λ (u - v)) :=
      contDiff_const.add (Λ.contDiff.comp (contDiff_id.sub contDiff_const))
    have hσd : ∀ u : E3, HasFDerivAt (fun u : E3 => y + Λ (u - v)) Λ u := by
      intro u
      have h1 := ((Λ.hasFDerivAt).comp u ((hasFDerivAt_id u).sub_const v)).const_add y
      simpa using h1
    have hσm : ∀ u w : E3,
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun u : E3 => y + Λ (u - v)) u w : E3) = Λ w := by
      intro u w
      rw [mfderiv_eq_fderiv, (hσd u).fderiv]
      rfl
    have hcomp : ∀ u w : E3,
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun u : E3 => F (y + Λ (u - v))) u w : E3) =
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (y + Λ (u - v)) (Λ w) := by
      intro u w
      have h := mfderiv_comp_apply (g := F) (f := fun u : E3 => y + Λ (u - v)) u
        (hF.mdifferentiableAt (by simp)) (hσ.contMDiff.mdifferentiableAt (by simp)) w
      rw [hσm] at h
      exact h
    have hsm : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (fun u : E3 => F (y + Λ (u - v))) :=
      hF.comp hσ.contMDiff
    have hco : ∀ u : E3, g.coeff (fun u : E3 => F (y + Λ (u - v))) u = 1 := by
      intro u
      ext i k
      simp only [RiemannianMetric3.coeff, coeffMatrix]
      rw [hcomp u (e i), hcomp u (e k), hinner F (y + Λ (u - v)) (hFg _), hΛ]
      by_cases hik : i = k
      · subst hik
        simp [EuclideanSpace.inner_single_left, Matrix.one_apply]
      · simp [EuclideanSpace.inner_single_left, Matrix.one_apply, hik,
          EuclideanSpace.single_apply, Ne.symm hik]
    have hval1 : (fun u : E3 => F (y + Λ (u - v))) v = j v := by
      show F (y + Λ (v - v)) = j v
      rw [sub_self, map_zero, add_zero]
      exact hval
    have hder1 : ∀ w : E3,
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (fun u : E3 => F (y + Λ (u - v))) v w : E3) =
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) j v w := by
      intro w
      rw [hcomp v w, sub_self, map_zero, add_zero]
      exact hΛd w
    have heq := local_isometry_rigidity g (ball (0 : E3) ε) isOpen_ball
      (convex_ball (0 : E3) ε).isPreconnected (fun u : E3 => F (y + Λ (u - v))) j
      hsm.contMDiffOn hjs (fun u _ => hco u) hjg v hv hval1 hder1
    rintro _ ⟨u, hu, rfl⟩
    exact ⟨y + Λ (u - v), heq hu⟩
  
  have hopen : IsOpen (Set.range F) := by
    rw [isOpen_iff_mem_nhds]
    rintro _ ⟨y, rfl⟩
    obtain ⟨j, ε, hε, hj0, hjs, hjg, hjn⟩ := hchart (F y)
    exact Filter.mem_of_superset (hjn ε hε le_rfl)
      (absorb j ε hjs hjg y 0 (mem_ball_self hε) hj0.symm)
  
  have hclosed : IsClosed (Set.range F) := by
    refine isClosed_of_closure_subset fun p hp => ?_
    obtain ⟨j, ε, hε, hj0, hjs, hjg, hjn⟩ := hchart p
    obtain ⟨_, ⟨u, hu, rfl⟩, ⟨y, hy⟩⟩ := mem_closure_iff_nhds.mp hp _ (hjn ε hε le_rfl)
    rw [← hj0]
    exact absorb j ε hjs hjg y u hu hy ⟨0, mem_ball_self hε, rfl⟩
  
  have hclopen : IsClopen (Set.range F) := ⟨hclosed, hopen⟩
  exact Set.range_eq_univ.mp (hclopen.eq_univ ⟨F 0, Set.mem_range_self 0⟩)

theorem isometricToEuclidean_of_bijective_local_isometry [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (F : E3 → M) (hF : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F)
    (hbij : Function.Bijective F) (hFg : ∀ y : E3, g.coeff F y = 1) :
    IsometricToEuclidean g :=
by
  
  have hs1 : ∀ (y a b : E3), g.g (F y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y a)
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y b) = @inner ℝ E3 _ a b := by
    intro y a b
    have hc : ∀ i j : Fin 3, g.g (F y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y (e j)) = if i = j then 1 else 0 := by
      intro i j
      have := congrFun (congrFun (hFg y) i) j
      simpa [RiemannianMetric3.coeff, coeffMatrix, Matrix.one_apply] using this
    have hexp : ∀ x : E3, x = ∑ i, x i • e i := by
      intro x
      have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr x
      simpa [EuclideanSpace.basisFun_repr, EuclideanSpace.basisFun_apply] using this.symm
    have hR : @inner ℝ E3 _ a b = ∑ i, a i * b i := by
      simp [PiLp.inner_apply, mul_comm]
    rw [hR]
    conv_lhs => rw [hexp a, hexp b]
    simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
      smul_eq_mul, hc]
    simp [mul_comm]
  
  have hinj : ∀ y : E3, Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y) := by
    intro y
    rw [injective_iff_map_eq_zero]
    intro a ha
    have h1 := hs1 y a a
    rw [ha] at h1
    simp only [map_zero, ContinuousLinearMap.zero_apply] at h1
    have h2 : @inner ℝ E3 _ a a = 0 := h1.symm
    exact (inner_self_eq_zero (𝕜 := ℝ) (E := E3) (x := a)).1 h2
  
  have hs3 : ∀ y : E3, ContDiffAt ℝ ∞ (extChartAt 𝓘(ℝ, E3) (F y) ∘ F) y ∧
      fderiv ℝ (extChartAt 𝓘(ℝ, E3) (F y) ∘ F) y = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y := by
    intro y
    constructor
    · have : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (extChartAt 𝓘(ℝ, E3) (F y) ∘ F) y :=
        (contMDiffAt_extChartAt).comp y (hF y)
      exact contMDiffAt_iff_contDiffAt.1 this
    · have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) F y := (hF y).mdifferentiableAt (by simp)
      rw [hmd.mfderiv]
      simp [writtenInExtChartAt, fderivWithin_univ]
  
  have hs2 : ∀ (f : E3 → E3) (y : E3), ContDiffAt ℝ ∞ f y → Function.Injective (fderiv ℝ f y) →
      ∃ h : E3 → E3, ContDiffAt ℝ ∞ h (f y) ∧ h (f y) = y ∧ ∀ᶠ z in 𝓝 (f y), f (h z) = z := by
    intro f y hf hinjf
    have hsurj : Function.Surjective (fderiv ℝ f y) :=
      (LinearMap.injective_iff_surjective (f := (fderiv ℝ f y : E3 →ₗ[ℝ] E3))).1 hinjf
    let f' : E3 ≃L[ℝ] E3 := ContinuousLinearEquiv.ofBijective (fderiv ℝ f y)
      (LinearMap.ker_eq_bot.2 hinjf) (LinearMap.range_eq_top.2 hsurj)
    have hf' : HasFDerivAt f (f' : E3 →L[ℝ] E3) y := by
      have : (f' : E3 →L[ℝ] E3) = fderiv ℝ f y := ContinuousLinearEquiv.coe_ofBijective _ _ _
      rw [this]
      exact (hf.differentiableAt (by simp)).hasFDerivAt
    have hn : (∞ : WithTop ℕ∞) ≠ 0 := by simp
    refine ⟨hf.localInverse hf' hn, hf.to_localInverse hf' hn,
      hf.localInverse_apply_image hf' hn, ?_⟩
    exact (hf.hasStrictFDerivAt' hf' hn).eventually_right_inverse
  
  let eqv : E3 ≃ M := Equiv.ofBijective F hbij
  let G : M → E3 := eqv.symm
  have hGF : ∀ y, G (F y) = y := fun y => eqv.symm_apply_apply y
  have hFG : ∀ p, F (G p) = p := fun p => eqv.apply_symm_apply p
  
  have hG : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ G := by
    intro p
    obtain ⟨y, rfl⟩ := hbij.2 p
    obtain ⟨hfc, hfd⟩ := hs3 y
    have hinj' : Function.Injective (fderiv ℝ (extChartAt 𝓘(ℝ, E3) (F y) ∘ F) y) := by
      rw [hfd]; exact hinj y
    obtain ⟨h, hh, hh0, hinv⟩ := hs2 _ y hfc hinj'
    set c := extChartAt 𝓘(ℝ, E3) (F y) with hcdef
    have hh0' : h (c (F y)) = y := hh0
    have hFh : F (h (c (F y))) = F y := by rw [hh0']
    have hcont : ContinuousAt (F ∘ h) (c (F y)) :=
      hF.continuous.continuousAt.comp hh.continuousAt
    have hsrc : ∀ᶠ z in 𝓝 (c (F y)), F (h z) ∈ c.source := by
      have hmem : c.source ∈ 𝓝 ((F ∘ h) (c (F y))) := by
        rw [Function.comp_apply, hFh]
        exact extChartAt_source_mem_nhds (F y)
      exact hcont.preimage_mem_nhds hmem
    have htend : Tendsto c (𝓝 (F y)) (𝓝 (c (F y))) := (continuousAt_extChartAt (F y)).tendsto
    have hcsrc : c.source ∈ 𝓝 (F y) := extChartAt_source_mem_nhds (I := 𝓘(ℝ, E3)) (F y)
    have hev : (h ∘ c) =ᶠ[𝓝 (F y)] G := by
      filter_upwards [htend.eventually hinv, htend.eventually hsrc, hcsrc] with x hx1 hx2 hx3
      have hx : F (h (c x)) = x := c.injOn hx2 hx3 hx1
      calc (h ∘ c) x = G (F (h (c x))) := (hGF _).symm
        _ = G x := by rw [hx]
    have hsm : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (h ∘ c) (F y) :=
      (hh.contMDiffAt).comp (F y) contMDiffAt_extChartAt
    exact hev.contMDiffAt_iff.1 hsm
  
  let Ψ : Diffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞ :=
    { toEquiv := eqv, contMDiff_toFun := hF, contMDiff_invFun := hG }
  refine ⟨Ψ.symm, ?_⟩
  intro p v w
  have hΦ : (Ψ.symm : M → E3) = G := rfl
  rw [hΦ]
  have hGmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) G p := (hG p).mdifferentiableAt (by simp)
  have hFmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (G p) := (hF (G p)).mdifferentiableAt (by simp)
  have hFGid : F ∘ G = id := funext hFG
  have hchain : ∀ u : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F (G p)
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) G p u) = u := by
    intro u
    rw [← mfderiv_comp_apply p hFmd hGmd, hFGid, mfderiv_id]
    rfl
  have key := hs1 (G p) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) G p v) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) G p w)
  rw [hchain, hchain, hFG p] at key
  exact key

theorem ricci_flat_asymptoticallyFlat_isometric [T2Space M] [ConnectedSpace M]
    [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (k : Fin hAF.numEnds)
    (hRic : ∀ (p : M) (j l : Fin 3),
      ricci (g.coeff (chartAt E3 p).symm) j l (chartAt E3 p p) = 0) :
    IsometricToEuclidean g :=
by
  
  have hchart := flat_chart_exists_of_ricci g hRic
  have hdist : ∀ (u : ℕ → M) (p : M),
      Tendsto (fun n => g.riemannianDist (u n) p) atTop (𝓝 0) → Tendsto u atTop (𝓝 p) :=
    fun u p hu => riemannianDist_tendsto_zero_imp_tendsto g u p hu
  
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  obtain ⟨ψ, hψ, hgram⟩ := end_developing_map g hRic (hAF.ends k)
  have hsmooth : ∀ a b : Fin 3,
      ContDiffOn ℝ ∞ (fun z => g.coeff (hAF.ends k).Φ z a b) {x : E3 | 1 < ‖x‖} := by
    intro a b
    rw [← hsrc]
    exact coeff_contDiffOn_source g (hAF.ends k).Φ a b
  have hsymm : ∀ (z : E3) (a b : Fin 3),
      g.coeff (hAF.ends k).Φ z a b = g.coeff (hAF.ends k).Φ z b a :=
    fun z a b => g.symm _ _ _
  have hq : 0 < hAF.q := by linarith [hAF.q_gt]
  obtain ⟨R, J₀, hR, hJ₀s, hJ₀m, hJ₀i, hJ₀g⟩ :=
    exterior_isometric_inverse (g.coeff (hAF.ends k).Φ) hAF.q hq hsmooth hsymm (hAF.decay k)
      ψ hψ hgram
  
  have hΩopen : IsOpen {y : E3 | R < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hmemsrc : ∀ y : E3, R < ‖y‖ → J₀ y ∈ (hAF.ends k).Φ.source := by
    intro y hy
    rw [hsrc]
    have h2 : (2 : ℝ) < ‖J₀ y‖ := hJ₀m hy
    show (1 : ℝ) < ‖J₀ y‖
    linarith
  have hΦsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (hAF.ends k).Φ (hAF.ends k).Φ.source :=
    (hAF.ends k).Φ.contMDiffOn
  have hJsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ ((hAF.ends k).Φ ∘ J₀) {y : E3 | R < ‖y‖} := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ J₀ {y : E3 | R < ‖y‖} := hJ₀s.contMDiffOn
    exact hΦsm.comp h1 (fun y hy => hmemsrc y hy)
  have hJg : ∀ y ∈ {y : E3 | R < ‖y‖}, g.coeff ((hAF.ends k).Φ ∘ J₀) y = 1 := by
    intro y hy
    ext i j
    have hdiff : DifferentiableAt ℝ J₀ y :=
      (hJ₀s.contDiffAt (hΩopen.mem_nhds hy)).differentiableAt (by simp)
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (hAF.ends k).Φ (J₀ y) :=
      (hΦsm.contMDiffAt ((hAF.ends k).Φ.open_source.mem_nhds (hmemsrc y hy))).mdifferentiableAt
        (by simp)
    rw [coeff_comp_apply g (hAF.ends k).Φ J₀ y hdiff hmd i j, hJ₀g y hy i j, Matrix.one_apply]
  have hJinj : Set.InjOn ((hAF.ends k).Φ ∘ J₀) {y : E3 | R < ‖y‖} := by
    intro y₁ hy₁ y₂ hy₂ h
    exact hJ₀i hy₁ hy₂ ((hAF.ends k).Φ.injOn (hmemsrc y₁ hy₁) (hmemsrc y₂ hy₂) h)
  generalize ((hAF.ends k).Φ ∘ J₀) = J at hJsm hJg hJinj
  
  have hy₀ : (R + 1) • e 0 ∈ {y : E3 | R < ‖y‖} := by
    show R < ‖(R + 1) • e 0‖
    rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
      abs_of_pos (by linarith)]
    linarith
  obtain ⟨F, hFsm, hFg, hFy₀, hFd⟩ := flat_complete_extend_local_isometry g hComplete hchart hdist
    {y : E3 | R < ‖y‖} hΩopen ((R + 1) • e 0) hy₀ J hJsm hJg
  
  have hΩconn : IsPreconnected {y : E3 | R < ‖y‖} := by
    have hrank : 1 < Module.rank ℝ E3 := by
      rw [← Module.finrank_eq_rank, finrank_euclideanSpace_fin]
      norm_num
    have hS : IsConnected (sphere (0 : E3) 1) := isConnected_sphere hrank 0 zero_le_one
    have hP : IsConnected (sphere (0 : E3) 1 ×ˢ Set.Ioi R) := hS.prod isConnected_Ioi
    have himg : (fun p : E3 × ℝ => p.2 • p.1) '' (sphere (0 : E3) 1 ×ˢ Set.Ioi R) =
        {y : E3 | R < ‖y‖} := by
      ext y
      constructor
      · rintro ⟨⟨u, t⟩, ⟨hu, ht⟩, rfl⟩
        have hu' : ‖u‖ = 1 := by simpa using hu
        have ht' : R < t := ht
        show R < ‖t • u‖
        rw [norm_smul, hu', mul_one, Real.norm_eq_abs, abs_of_pos (by linarith)]
        exact ht'
      · intro hy
        have hy' : R < ‖y‖ := hy
        have hne : ‖y‖ ≠ 0 := by linarith
        refine ⟨(‖y‖⁻¹ • y, ‖y‖), ⟨?_, hy'⟩, ?_⟩
        · show ‖y‖⁻¹ • y ∈ sphere (0 : E3) 1
          rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hne]
        · show ‖y‖ • ‖y‖⁻¹ • y = y
          rw [smul_smul, mul_inv_cancel₀ hne, one_smul]
    rw [← himg]
    exact (hP.image _ (by fun_prop : Continuous fun p : E3 × ℝ => p.2 • p.1).continuousOn).isPreconnected
  have hFJ : Set.EqOn F J {y : E3 | R < ‖y‖} :=
    local_isometry_rigidity g {y : E3 | R < ‖y‖} hΩopen hΩconn F J hFsm.contMDiffOn hJsm
      (fun y _ => hFg y) hJg ((R + 1) • e 0) hy₀ hFy₀ hFd
  
  have hinj : Function.Injective F := by
    intro y₁ y₂ h12
    obtain ⟨A, b, hAb, hFT⟩ := deck_rigid_motion g F hFsm hFg y₁ y₂ h12
    have key : ∀ y : E3, R + ‖b‖ < ‖y‖ → A y + b = y := by
      intro y hy
      have hyΩ : y ∈ {y : E3 | R < ‖y‖} := by
        show R < ‖y‖
        linarith [norm_nonneg b]
      have hTyΩ : A y + b ∈ {y : E3 | R < ‖y‖} := by
        show R < ‖A y + b‖
        have h := norm_sub_le (A y + b) b
        rw [add_sub_cancel_right, LinearIsometryEquiv.norm_map] at h
        linarith
      apply hJinj hTyΩ hyΩ
      rw [← hFJ hTyΩ, ← hFJ hyΩ]
      exact hFT y
    have hlin : ∀ z : E3, A z = z := by
      intro z
      have hcpos : 0 < R + ‖b‖ + ‖z‖ + 1 := by linarith [norm_nonneg b, norm_nonneg z]
      have hc : ‖(R + ‖b‖ + ‖z‖ + 1) • e 0‖ = R + ‖b‖ + ‖z‖ + 1 := by
        rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
          abs_of_pos hcpos]
      have h1 := key ((R + ‖b‖ + ‖z‖ + 1) • e 0) (by rw [hc]; linarith [norm_nonneg z])
      have h2 := key ((R + ‖b‖ + ‖z‖ + 1) • e 0 + z) (by
        have h := norm_sub_le ((R + ‖b‖ + ‖z‖ + 1) • e 0 + z) z
        rw [add_sub_cancel_right, hc] at h
        linarith)
      rw [map_add] at h2
      have hz : A z = (A ((R + ‖b‖ + ‖z‖ + 1) • e 0) + A z + b)
          - (A ((R + ‖b‖ + ‖z‖ + 1) • e 0) + b) := by abel
      rw [hz, h2, h1]
      abel
    have hb : b = 0 := by
      have hcpos : 0 < R + ‖b‖ + 1 := by linarith [norm_nonneg b]
      have hc : ‖(R + ‖b‖ + 1) • e 0‖ = R + ‖b‖ + 1 := by
        rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
          abs_of_pos hcpos]
      have h1 := key ((R + ‖b‖ + 1) • e 0) (by rw [hc]; linarith)
      rw [hlin] at h1
      simpa using h1
    rw [← hAb, hlin, hb, add_zero]
  
  have hsurj : Function.Surjective F := local_isometry_surjective g hchart F hFsm hFg
  exact isometricToEuclidean_of_bijective_local_isometry g F hFsm ⟨hinj, hsurj⟩ hFg

theorem positive_mass [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) :
    ∀ k : Fin hAF.numEnds, ∃ m : ℝ,
      Tendsto (fun r : ℝ => admFlux g (hAF.ends k) r) atTop (𝓝 m) ∧
      0 ≤ m ∧ (m = 0 ↔ IsometricToEuclidean g) :=
by
  intro k
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hsmooth : ∀ i j : Fin 3,
      ContDiffOn ℝ ∞ (fun x => g.coeff (hAF.ends k).Φ x i j) {x : E3 | 1 < ‖x‖} := by
    intro i j
    rw [← hsrc]
    exact coeff_contDiffOn_source g (hAF.ends k).Φ i j
  have hsymm : ∀ (x : E3) (i j : Fin 3),
      g.coeff (hAF.ends k).Φ x i j = g.coeff (hAF.ends k).Φ x j i := by
    intro x i j
    exact g.symm _ _ _
  have hint : IntegrableOn
      (fun x : E3 => scalarCurvatureLocal (g.coeff (hAF.ends k).Φ) x *
        Real.sqrt (g.coeff (hAF.ends k).Φ x).det) {x : E3 | 2 < ‖x‖} := by
    refine (hAF.integrable_scalarCurvature k).congr_fun ?_
      (measurableSet_lt measurable_const measurable_norm)
    intro x hx
    have hx' : x ∈ (hAF.ends k).Φ.source := by
      have h2 : (2 : ℝ) < ‖x‖ := hx
      rw [hsrc]
      show (1 : ℝ) < ‖x‖
      linarith
    simp only
    rw [scalarCurvature_eq_scalarCurvatureLocal_coeff g (hAF.ends k).Φ x hx']
  obtain ⟨m, hm⟩ := adm_flux_converges (g.coeff (hAF.ends k).Φ) hAF.q hAF.q_gt hsmooth hsymm
    (hAF.decay k) hint
  have hm' : Tendsto (fun r : ℝ => admFlux g (hAF.ends k) r) atTop (𝓝 m) := hm
  refine ⟨m, hm', mass_nonneg g hComplete hAF hR k m hm', ?_, ?_⟩
  · intro h0
    rw [h0] at hm'
    exact ricci_flat_asymptoticallyFlat_isometric g hComplete hAF k
      (mass_zero_ricci_flat g hComplete hAF hR k hm')
  · intro hiso
    exact tendsto_nhds_unique hm' (flux_tendsto_zero_of_isometric g hAF hiso k)
-- SOURCE_END: lines 280134..288039 from answer (1).lean

end PositiveMass
end
