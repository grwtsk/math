/- Copyright (c) 2026 grwtsk contributors. MIT. -/
/-!
# Positive mass proof candidate: HarmonicBoundaryRegularity (11/15)

This is one ordered slice of the **unverified** user-supplied Lean source.
All original source lines inside the SOURCE_START/SOURCE_END delimiters
are preserved byte-for-byte, including source comments; see issue #1829.
Publication is not elaboration, kernel replay, axiom auditing, independent
review, or a positive mass theorem. Checks: NOT_RUN.
The opening comment of the supplied source calls the file a sorry-only
statement, although the uploaded text contains a long by-proof; it is stale.
-/
import GRWTSK.DifferentialGeometry.PositiveMassCandidate.ExteriorChartsAndHarmonicConstruction
set_option maxHeartbeats 4000000
noncomputable section
open Manifold Filter Topology MeasureTheory Metric
open scoped ContDiff
namespace PositiveMass
variable {M : Type*} [TopologicalSpace M] [ChartedSpace E3 M]

-- SOURCE_START: lines 200078..220162 from answer (1).lean
theorem fdr_dq_zt (c : E3) (s r : ℝ) (φ : E3 → ℝ) (Φ : Fin 3 → E3 → ℝ) (a : Fin 3) (ha : a ≠ 0)
    (h : ℝ) (hrs : r + |h| ≤ s) (hφ : MemLp φ 2 (volume.restrict (fcrHalf c s)))
    (hΦ : ∀ d, MemLp (Φ d) 2 (volume.restrict (fcrHalf c s))) (hzt : fdrZT c s φ Φ) :
    fdrZT c r (fcrDQ a h φ) (fun d => fcrDQ a h (Φ d)) :=
by
  
  have hea0 : (e a) 0 = 0 := by
    simp [e, EuclideanSpace.single_apply, Ne.symm ha]
  have hn : ‖h • e a‖ = |h| := by
    rw [norm_smul]
    simp [e, EuclideanSpace.norm_single]
  obtain ⟨v, hv⟩ : ∃ v : E3, v = h • e a := ⟨_, rfl⟩
  have hnv : ‖v‖ = |h| := by rw [hv]; exact hn
  have hx0 : ∀ x : E3, (x + v) 0 = x 0 := by
    intro x
    simp only [hv, PiLp.add_apply, PiLp.smul_apply, smul_eq_mul, hea0, mul_zero, add_zero]
  have hball : ∀ x : E3, dist x c < r → dist (x + v) c < s := by
    intro x hx
    have hle : dist (x + v) c ≤ dist x c + ‖v‖ := by
      rw [dist_eq_norm, dist_eq_norm]
      calc ‖x + v - c‖ = ‖(x - c) + v‖ := by congr 1; abel
        _ ≤ _ := norm_add_le _ _
    linarith
  have hrs' : r ≤ s := by linarith [abs_nonneg h]
  have hopen : ∀ ρ : ℝ, IsOpen (fcrHalf c ρ) := fun ρ =>
    Metric.isOpen_ball.inter (isOpen_lt continuous_const
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hmeas : ∀ ρ, MeasurableSet (fcrHalf c ρ) := fun ρ => (hopen ρ).measurableSet
  
  haveI : IsFiniteMeasure (volume.restrict (fcrHalf c s)) :=
    isFiniteMeasure_restrict.2 (ne_top_of_le_ne_top measure_ball_lt_top.ne
      (measure_mono (show fcrHalf c s ⊆ Metric.ball c s from Set.inter_subset_left)))
  obtain ⟨φb, hφb⟩ : ∃ f : E3 → ℝ, f = (fcrHalf c s).indicator φ := ⟨_, rfl⟩
  obtain ⟨Φb, hΦb⟩ : ∃ F : Fin 3 → E3 → ℝ, F = fun d => (fcrHalf c s).indicator (Φ d) :=
    ⟨_, rfl⟩
  have hφbI : Integrable φb := by
    rw [hφb]
    exact IntegrableOn.integrable_indicator (hφ.integrable (by norm_num)) (hmeas s)
  have hΦbI : ∀ d, Integrable (Φb d) := by
    intro d
    rw [hΦb]
    exact IntegrableOn.integrable_indicator ((hΦ d).integrable (by norm_num)) (hmeas s)
  
  have hsi : ∀ (f g : E3 → ℝ), ∫ x in fcrHalf c s, f x * g x =
      ∫ x, (fcrHalf c s).indicator f x * g x := by
    intro f g
    rw [← integral_indicator (hmeas s)]
    congr 1
    funext x
    exact Set.indicator_mul_left _ _ _
  have hglob : ∀ (d : Fin 3) (ζ : E3 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      tsupport ζ ⊆ Metric.ball c s →
      ∫ x, φb x * partialDeriv d ζ x = -∫ x, Φb d x * ζ x := by
    intro d ζ h1 h2 h3
    have h4 : ∫ x in fcrHalf c s, φ x * partialDeriv d ζ x =
        -∫ x in fcrHalf c s, Φ d x * ζ x := hzt d ζ h1 h2 h3
    rw [hsi φ (partialDeriv d ζ), hsi (Φ d) ζ] at h4
    rw [hφb, hΦb]
    exact h4
  have hDQ : ∀ (f : E3 → ℝ) (x : E3), fcrDQ a h f x = h⁻¹ * (f (x + v) - f x) := by
    intro f x
    rw [hv]
    simp only [fcrDQ]
    rw [div_eq_inv_mul]
  
  intro d ζ hζ hcs hts
  show ∫ x in fcrHalf c r, fcrDQ a h φ x * partialDeriv d ζ x =
    -∫ x in fcrHalf c r, fcrDQ a h (Φ d) x * ζ x
  have hts' : tsupport ζ ⊆ Metric.ball c s := hts.trans (Metric.ball_subset_ball hrs')
  have hdc : Continuous (partialDeriv d ζ) := by
    unfold partialDeriv
    exact (hζ.continuous_fderiv (by norm_num)).clm_apply continuous_const
  have hdcs : HasCompactSupport (partialDeriv d ζ) := HasCompactSupport.fderiv_apply ℝ hcs (e d)
  have hd0 : ∀ x, x ∉ tsupport ζ → partialDeriv d ζ x = 0 := by
    intro x hx
    have h0 : fderiv ℝ ζ x = 0 := by
      by_contra hne
      exact hx (support_fderiv_subset ℝ (Function.mem_support.2 hne))
    simp only [partialDeriv, h0, ContinuousLinearMap.zero_apply]
  have hz0 : ∀ x, x ∉ tsupport ζ → ζ x = 0 := fun x hx => image_eq_zero_of_notMem_tsupport hx
  
  have hζm : ContDiff ℝ ∞ (fun y => ζ (y - v)) := hζ.comp (contDiff_id.sub contDiff_const)
  have hζm_eq : (fun y => ζ (y - v)) = ζ ∘ (Homeomorph.subRight v) := by
    funext y
    simp only [Function.comp_apply, Homeomorph.subRight_apply]
  have hcsm : HasCompactSupport (fun y => ζ (y - v)) := by
    rw [hζm_eq]; exact hcs.comp_homeomorph _
  have htsm : tsupport (fun y => ζ (y - v)) ⊆ Metric.ball c s := by
    rw [hζm_eq, tsupport_comp_eq_preimage]
    intro y hy
    have h1 : y - v ∈ tsupport ζ := by
      have h3 : (Homeomorph.subRight v) y ∈ tsupport ζ := hy
      rwa [Homeomorph.subRight_apply] at h3
    have h2 := hball _ (hts h1)
    rw [sub_add_cancel] at h2
    exact h2
  have hdm : ∀ y, partialDeriv d (fun y => ζ (y - v)) y = partialDeriv d ζ (y - v) := by
    intro y
    simp only [partialDeriv]
    rw [fderiv_comp_sub]
  
  have hwm := hglob d (fun y => ζ (y - v)) hζm hcsm htsm
  simp only [hdm] at hwm
  have hS2 := hglob d ζ hζ hcs hts'
  
  have cv1 : ∫ x, φb (x + v) * partialDeriv d ζ x = ∫ y, φb y * partialDeriv d ζ (y - v) := by
    have h1 := integral_add_right_eq_self (μ := volume)
      (fun y => φb y * partialDeriv d ζ (y - v)) v
    simp only [add_sub_cancel_right] at h1
    exact h1
  have cv2 : ∫ x, Φb d (x + v) * ζ x = ∫ y, Φb d y * ζ (y - v) := by
    have h1 := integral_add_right_eq_self (μ := volume) (fun y => Φb d y * ζ (y - v)) v
    simp only [add_sub_cancel_right] at h1
    exact h1
  
  obtain ⟨C₁, hC₁⟩ := hdc.bounded_above_of_compact_support hdcs
  obtain ⟨C₀, hC₀⟩ := hζ.continuous.bounded_above_of_compact_support hcs
  have I2 : Integrable (fun x => φb x * partialDeriv d ζ x) :=
    hφbI.mul_bdd hdc.aestronglyMeasurable (Filter.Eventually.of_forall hC₁)
  have I4 : Integrable (fun x => Φb d x * ζ x) :=
    (hΦbI d).mul_bdd hζ.continuous.aestronglyMeasurable (Filter.Eventually.of_forall hC₀)
  have I1' : Integrable (fun y => φb y * partialDeriv d ζ (y - v)) :=
    hφbI.mul_bdd (hdc.comp (continuous_sub_right v)).aestronglyMeasurable
      (Filter.Eventually.of_forall fun y => hC₁ (y - v))
  have I3' : Integrable (fun y => Φb d y * ζ (y - v)) :=
    (hΦbI d).mul_bdd (hζ.continuous.comp (continuous_sub_right v)).aestronglyMeasurable
      (Filter.Eventually.of_forall fun y => hC₀ (y - v))
  have I1 : Integrable (fun x => φb (x + v) * partialDeriv d ζ x) := by
    have h1 := I1'.comp_add_right v
    simp only [add_sub_cancel_right] at h1
    exact h1
  have I3 : Integrable (fun x => Φb d (x + v) * ζ x) := by
    have h1 := I3'.comp_add_right v
    simp only [add_sub_cancel_right] at h1
    exact h1
  
  have e1 : (fun x => fcrDQ a h φb x * partialDeriv d ζ x) =
      fun x => h⁻¹ * (φb (x + v) * partialDeriv d ζ x - φb x * partialDeriv d ζ x) := by
    funext x; rw [hDQ]; ring
  have e2 : (fun x => fcrDQ a h (Φb d) x * ζ x) =
      fun x => h⁻¹ * (Φb d (x + v) * ζ x - Φb d x * ζ x) := by
    funext x; rw [hDQ]; ring
  have hW : ∫ x, fcrDQ a h φb x * partialDeriv d ζ x = -∫ x, fcrDQ a h (Φb d) x * ζ x := by
    rw [e1, e2, integral_const_mul, integral_const_mul, integral_sub I1 I2, integral_sub I3 I4,
      cv1, cv2, hwm, hS2]
    ring
  
  have P : ∀ (f g : E3 → ℝ), (∀ x, x ∉ tsupport ζ → g x = 0) → ∀ x,
      (fcrHalf c r).indicator (fun y => fcrDQ a h f y * g y) x =
        fcrDQ a h ((fcrHalf c s).indicator f) x * g x := by
    intro f g hg x
    by_cases hx : x ∈ fcrHalf c r
    · rw [Set.indicator_of_mem hx]
      show fcrDQ a h f x * g x = _
      obtain ⟨hx1, hx2⟩ := hx
      have hxs : x ∈ fcrHalf c s := ⟨Metric.ball_subset_ball hrs' hx1, hx2⟩
      have hxvs : x + v ∈ fcrHalf c s := by
        refine ⟨hball x hx1, ?_⟩
        show 0 < (x + v) 0
        rw [hx0]
        exact hx2
      rw [hDQ, hDQ, Set.indicator_of_mem hxs, Set.indicator_of_mem hxvs]
    · rw [Set.indicator_of_notMem hx]
      by_cases hgx : g x = 0
      · rw [hgx, mul_zero]
      · have hxt : x ∈ tsupport ζ := by
          by_contra hc
          exact hgx (hg x hc)
        have hxb : x ∈ Metric.ball c r := hts hxt
        have hneg : ¬ (0 < x 0) := fun hpos => hx ⟨hxb, hpos⟩
        have h1 : x ∉ fcrHalf c s := fun hm => hneg hm.2
        have h2 : x + v ∉ fcrHalf c s := by
          intro hm
          have h3 : 0 < (x + v) 0 := hm.2
          rw [hx0] at h3
          exact hneg h3
        rw [hDQ, Set.indicator_of_notMem h1, Set.indicator_of_notMem h2]
        ring
  
  have eL : ∫ x in fcrHalf c r, fcrDQ a h φ x * partialDeriv d ζ x =
      ∫ x, fcrDQ a h φb x * partialDeriv d ζ x := by
    rw [← integral_indicator (hmeas r)]
    congr 1
    funext x
    rw [P φ _ hd0 x, hφb]
  have eR : ∫ x in fcrHalf c r, fcrDQ a h (Φ d) x * ζ x =
      ∫ x, fcrDQ a h (Φb d) x * ζ x := by
    rw [← integral_indicator (hmeas r)]
    congr 1
    funext x
    rw [P (Φ d) ζ hz0 x, hΦb]
  rw [eL, eR]
  exact hW

theorem fdr_zt_smul (c : E3) (s : ℝ) (m : E3 → ℝ) (hm : ContDiff ℝ ∞ m) (φ : E3 → ℝ)
    (Φ : Fin 3 → E3 → ℝ) (hφ : MemLp φ 2 (volume.restrict (fcrHalf c s)))
    (hΦ : ∀ d, MemLp (Φ d) 2 (volume.restrict (fcrHalf c s))) (hzt : fdrZT c s φ Φ) :
    fdrZT c s (fun x => m x * φ x) (fun d x => partialDeriv d m x * φ x + m x * Φ d x) :=
by
  classical
  have hpdsupp : ∀ (f : E3 → ℝ) (a : Fin 3),
      Function.support (fun x => partialDeriv a f x) ⊆ tsupport f := by
    intro f a x hx
    simp only [Function.mem_support, ne_eq] at hx
    apply tsupport_fderiv_subset (𝕜 := ℝ)
    apply subset_tsupport
    rw [Function.mem_support]
    intro h
    exact hx (by simp [partialDeriv, h])
  have hint : ∀ u g : E3 → ℝ, MemLp u 2 (volume.restrict (fcrHalf c s)) → Continuous g →
      HasCompactSupport g →
      Integrable (fun x => u x * g x) (volume.restrict (fcrHalf c s)) := by
    intro u g hu hg hgc
    have hg2 : MemLp g 2 (volume.restrict (fcrHalf c s)) :=
      (hg.memLp_of_hasCompactSupport hgc).restrict _
    exact hu.integrable_mul hg2
  intro d ζ hζ hζc hζs
  have hη : ContDiff ℝ ∞ (fun x => m x * ζ x) := hm.mul hζ
  have hηc : HasCompactSupport (fun x => m x * ζ x) := hζc.mul_left
  have hηs : tsupport (fun x => m x * ζ x) ⊆ Metric.ball c s :=
    (tsupport_mul_subset_right).trans hζs
  have hprod : ∀ x, partialDeriv d (fun y => m y * ζ y) x =
      partialDeriv d m x * ζ x + m x * partialDeriv d ζ x := by
    intro x
    have hmd : DifferentiableAt ℝ m x := hm.differentiable (by simp) x
    have hζd : DifferentiableAt ℝ ζ x := hζ.differentiable (by simp) x
    unfold partialDeriv
    rw [fderiv_fun_mul hmd hζd]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have h0 : ∫ x in fcrHalf c s, φ x * partialDeriv d (fun y => m y * ζ y) x =
      -∫ x in fcrHalf c s, Φ d x * (m x * ζ x) := hzt d _ hη hηc hηs
  have hξ : Continuous (fun x => partialDeriv d m x * ζ x) :=
    ((hm.continuous_fderiv (by simp)).clm_apply continuous_const).mul hζ.continuous
  have i1 : Integrable (fun x => φ x * partialDeriv d (fun y => m y * ζ y) x)
      (volume.restrict (fcrHalf c s)) := by
    refine hint φ _ hφ ?_ ?_
    · exact (hη.continuous_fderiv (by simp)).clm_apply continuous_const
    · exact hηc.mono' (hpdsupp _ d)
  have i2 : Integrable (fun x => φ x * (partialDeriv d m x * ζ x))
      (volume.restrict (fcrHalf c s)) :=
    hint φ _ hφ hξ hζc.mul_left
  have i3 : Integrable (fun x => Φ d x * (m x * ζ x)) (volume.restrict (fcrHalf c s)) :=
    hint (Φ d) _ (hΦ d) hη.continuous hηc
  have e1 : (fun x => m x * φ x * partialDeriv d ζ x) =
      fun x => φ x * partialDeriv d (fun y => m y * ζ y) x -
        φ x * (partialDeriv d m x * ζ x) := by
    funext x
    rw [hprod x]
    ring
  have e2 : (fun x => (partialDeriv d m x * φ x + m x * Φ d x) * ζ x) =
      fun x => φ x * (partialDeriv d m x * ζ x) + Φ d x * (m x * ζ x) := by
    funext x
    ring
  show ∫ x in fcrHalf c s, m x * φ x * partialDeriv d ζ x =
    -∫ x in fcrHalf c s, (partialDeriv d m x * φ x + m x * Φ d x) * ζ x
  rw [e1, e2, integral_sub i1 i2, integral_add i2 i3, h0]
  ring

theorem fdr_h1_test (c : E3) (R s s₂ s₃ : ℝ) (hs₂ : 0 < s₂) (h23 : s₂ < s₃) (h3s : s₃ ≤ s)
    (hsR : s < R) (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.ball c R))
    (w : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ) (G : Fin 3 → E3 → ℝ) (F : E3 → ℝ)
    (hP : fdrProb c s A w D G F) (ψ : E3 → ℝ) (Ψ : Fin 3 → E3 → ℝ)
    (hψ : MemLp ψ 2 (volume.restrict (fcrHalf c s₃)))
    (hΨ : ∀ d, MemLp (Ψ d) 2 (volume.restrict (fcrHalf c s₃)))
    (hzt : fdrZT c s₃ ψ Ψ)
    (hψ0 : ∀ x, x ∉ Metric.ball c s₂ → ψ x = 0)
    (hΨ0 : ∀ d x, x ∉ Metric.ball c s₂ → Ψ d x = 0) :
    ∫ x in fcrHalf c s,
      ((∑ d : Fin 3, ((∑ b : Fin 3, A x d b * D [b] x) + G d x) * Ψ d x) + F x * ψ x) = 0 :=
by
  classical
  
  have hopen : ∀ r : ℝ, IsOpen (fcrHalf c r) := fun r =>
    Metric.isOpen_ball.inter (isOpen_lt continuous_const
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hmeas : ∀ r, MeasurableSet (fcrHalf c r) := fun r => (hopen r).measurableSet
  have hfin : ∀ r, IsFiniteMeasure (volume.restrict (fcrHalf c r)) := fun r =>
    isFiniteMeasure_restrict.mpr
      ((measure_mono (fun x hx => hx.1 : fcrHalf c r ⊆ Metric.ball c r)).trans_lt
        measure_ball_lt_top).ne
  have hF : MemLp F 2 (volume.restrict (fcrHalf c s)) := hP.2.2.2.1
  
  have hind : ∀ f : E3 → ℝ, MemLp f 2 (volume.restrict (fcrHalf c s₃)) →
      (∀ x, x ∉ Metric.ball c s₂ → f x = 0) →
      MemLp ((fcrHalf c s₃).indicator f) 2 volume ∧ Integrable ((fcrHalf c s₃).indicator f) ∧
      (∀ t, t ∉ fcrHalf c s₂ → (fcrHalf c s₃).indicator f t = 0) ∧
      (∀ x ∈ fcrHalf c s, (fcrHalf c s₃).indicator f x = f x) := by
    intro f hf hf0
    haveI := hfin s₃
    refine ⟨(memLp_indicator_iff_restrict (hmeas s₃)).2 hf,
      (integrable_indicator_iff (hmeas s₃)).2 (hf.integrable (by norm_num)), ?_, ?_⟩
    · intro t ht
      by_cases htb : t ∈ Metric.ball c s₂
      · have ht3 : t ∉ fcrHalf c s₃ := fun h => ht ⟨htb, h.2⟩
        exact Set.indicator_of_notMem ht3 f
      · exact Set.indicator_apply_eq_zero.2 (fun _ => hf0 t htb)
    · intro x hx
      by_cases hx3 : x ∈ fcrHalf c s₃
      · exact Set.indicator_of_mem hx3 f
      · rw [Set.indicator_of_notMem hx3]
        have hxb : x ∉ Metric.ball c s₂ := fun hb =>
          hx3 ⟨Metric.ball_subset_ball h23.le hb, hx.2⟩
        exact (hf0 x hxb).symm
  
  have hconv : ∀ (r : ℝ) (u v : E3 → ℝ),
      ∫ x in fcrHalf c r, u x * v x = ∫ x, (fcrHalf c r).indicator u x * v x := by
    intro r u v
    rw [← integral_indicator (hmeas r)]
    congr 1
    funext x
    exact Set.indicator_mul_left _ u v
  
  have hext : ∀ (d : Fin 3) (ζ : E3 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      ∫ x, (fcrHalf c s₃).indicator ψ x * partialDeriv d ζ x =
        -∫ x, (fcrHalf c s₃).indicator (Ψ d) x * ζ x := by
    intro d ζ hζ hζc
    obtain ⟨χ, hχin, hχout⟩ : ∃ χ : ContDiffBump c,
        χ.rIn = (2 * s₂ + s₃) / 3 ∧ χ.rOut = (s₂ + 2 * s₃) / 3 :=
      ⟨⟨(2 * s₂ + s₃) / 3, (s₂ + 2 * s₃) / 3, by linarith, by linarith⟩, rfl, rfl⟩
    have hζ's : ContDiff ℝ ∞ (fun y => χ y * ζ y) := χ.contDiff.mul hζ
    have hζ'c : HasCompactSupport (fun y => χ y * ζ y) :=
      χ.hasCompactSupport.mul_right (f' := ζ)
    have hζ't : tsupport (fun y => χ y * ζ y) ⊆ Metric.ball c s₃ := by
      refine (tsupport_mul_subset_left (f := ⇑χ) (g := ζ)).trans ?_
      rw [χ.tsupport_eq, hχout]
      exact Metric.closedBall_subset_ball (by linarith)
    have hloc : ∀ x ∈ Metric.ball c s₂, (fun y => χ y * ζ y) =ᶠ[𝓝 x] ζ := by
      intro x hx
      have hU : Metric.ball c ((2 * s₂ + s₃) / 3) ∈ 𝓝 x :=
        Metric.isOpen_ball.mem_nhds (Metric.ball_subset_ball (by linarith) hx)
      filter_upwards [hU] with y hy
      have h1 : χ y = 1 := χ.one_of_mem_closedBall (by
        rw [hχin]; exact Metric.ball_subset_closedBall hy)
      show χ y * ζ y = ζ y
      rw [h1, one_mul]
    have hp1 : ∀ x ∈ fcrHalf c s₃,
        ψ x * partialDeriv d (fun y => χ y * ζ y) x = ψ x * partialDeriv d ζ x := by
      intro x _
      by_cases hxb : x ∈ Metric.ball c s₂
      · have h2 : partialDeriv d (fun y => χ y * ζ y) x = partialDeriv d ζ x := by
          unfold partialDeriv
          rw [(hloc x hxb).fderiv_eq]
        rw [h2]
      · rw [hψ0 x hxb, zero_mul, zero_mul]
    have hp2 : ∀ x ∈ fcrHalf c s₃, Ψ d x * (χ x * ζ x) = Ψ d x * ζ x := by
      intro x _
      by_cases hxb : x ∈ Metric.ball c s₂
      · have h2 : χ x * ζ x = ζ x := (hloc x hxb).eq_of_nhds
        rw [h2]
      · rw [hΨ0 d x hxb, zero_mul, zero_mul]
    have h := hzt d (fun y => χ y * ζ y) hζ's hζ'c hζ't
    rw [setIntegral_congr_fun (hmeas s₃) hp1, setIntegral_congr_fun (hmeas s₃) hp2,
      hconv s₃ ψ (partialDeriv d ζ), hconv s₃ (Ψ d) ζ] at h
    exact h
  
  have htrans : ∀ (τ : E3) (d : Fin 3) (ζ : E3 → ℝ), ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      ∫ x, (fcrHalf c s₃).indicator ψ (x - τ) * partialDeriv d ζ x =
        -∫ x, (fcrHalf c s₃).indicator (Ψ d) (x - τ) * ζ x := by
    intro τ d ζ hζ hζc
    have h1 := hext d (fun u => ζ (u + τ)) (hζ.comp (contDiff_id.add contDiff_const))
      (hζc.comp_homeomorph (Homeomorph.addRight τ))
    have hpd : ∀ u, partialDeriv d (fun u => ζ (u + τ)) u = partialDeriv d ζ (u + τ) := by
      intro u
      unfold partialDeriv
      rw [fderiv_comp_add_right]
    simp only [hpd] at h1
    have e1 := integral_sub_right_eq_self (μ := volume)
      (fun u => (fcrHalf c s₃).indicator ψ u * partialDeriv d ζ (u + τ)) τ
    have e2 := integral_sub_right_eq_self (μ := volume)
      (fun u => (fcrHalf c s₃).indicator (Ψ d) u * ζ (u + τ)) τ
    simp only [sub_add_cancel] at e1 e2
    rw [e1, e2]
    exact h1
  have hTL : ∀ (u : E3 → ℝ) (τ : E3), MemLp u 2 volume → MemLp (fun t => u (t - τ)) 2 volume :=
    fun u τ hu => hu.comp_measurePreserving (measurePreserving_sub_right volume τ)
  
  have hsuppT : ∀ (bm : ContDiffBump (0 : E3)) (u : E3 → ℝ), (∀ t, t ∉ fcrHalf c s₂ → u t = 0) →
      (fcrHalf c (s + 4 * bm.rOut)).indicator (fun t => u (t - (4 * bm.rOut) • e 0)) =
        fun t => u (t - (4 * bm.rOut) • e 0) := by
    intro bm u hu
    have hr := bm.rOut_pos
    funext t
    by_cases ht : t ∈ fcrHalf c (s + 4 * bm.rOut)
    · exact Set.indicator_of_mem ht _
    · rw [Set.indicator_of_notMem ht]
      symm
      apply hu
      intro hmem
      apply ht
      have h1 : dist (t - (4 * bm.rOut) • e 0) c < s₂ := hmem.1
      have h2 : (0 : ℝ) < (t - (4 * bm.rOut) • e 0) 0 := hmem.2
      have h3 : (t - (4 * bm.rOut) • e 0) 0 = t 0 - 4 * bm.rOut := by simp
      have hn : ‖(4 * bm.rOut) • e 0‖ = 4 * bm.rOut := by
        rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
          abs_of_pos (by linarith)]
      have h4 : dist t c ≤ dist (t - (4 * bm.rOut) • e 0) c + ‖(4 * bm.rOut) • e 0‖ := by
        rw [dist_eq_norm, dist_eq_norm]
        calc ‖t - c‖ = ‖(t - (4 * bm.rOut) • e 0 - c) + (4 * bm.rOut) • e 0‖ := by
              congr 1; abel
          _ ≤ _ := norm_add_le _ _
      refine ⟨?_, ?_⟩
      · show dist t c < s + 4 * bm.rOut
        linarith
      · show (0 : ℝ) < t 0
        linarith
  
  have hvanT : ∀ (bm : ContDiffBump (0 : E3)) (u : E3 → ℝ), (∀ t, t ∉ fcrHalf c s₂ → u t = 0) →
      ∀ x : E3, (x 0 < bm.rOut ∨ s₂ + 3 * bm.rOut ≤ dist x c) →
      fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0)) x = 0 := by
    intro bm u hu x hx
    have hr := bm.rOut_pos
    show ∫ t, bm.normed volume (x + (2 * bm.rOut) • e 0 - t) * u (t - (4 * bm.rOut) • e 0) = 0
    have h4 : (4 * bm.rOut) • e 0 = (2 * bm.rOut) • e 0 + (2 * bm.rOut) • e 0 := by
      rw [← add_smul]; congr 1; ring
    have hn2 : ‖(2 * bm.rOut) • e 0‖ = 2 * bm.rOut := by
      rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
        abs_of_pos (by linarith)]
    have hz : (fun t => bm.normed volume (x + (2 * bm.rOut) • e 0 - t) *
        u (t - (4 * bm.rOut) • e 0)) = fun _ => 0 := by
      funext t
      by_cases ht : t - (4 * bm.rOut) • e 0 ∈ fcrHalf c s₂
      · have ht1 : dist (t - (4 * bm.rOut) • e 0) c < s₂ := ht.1
        have ht2 : (0 : ℝ) < (t - (4 * bm.rOut) • e 0) 0 := ht.2
        have hu0 : (t - (4 * bm.rOut) • e 0) 0 = t 0 - 4 * bm.rOut := by simp
        have hn : bm.normed volume (x + (2 * bm.rOut) • e 0 - t) = 0 := by
          apply Function.notMem_support.1
          rw [bm.support_normed_eq]
          intro hmem
          rw [Metric.mem_ball, dist_zero_right] at hmem
          have hy0 : (x + (2 * bm.rOut) • e 0 - t) 0 = x 0 + 2 * bm.rOut - t 0 := by simp
          have hyabs : |(x + (2 * bm.rOut) • e 0 - t) 0| ≤ ‖x + (2 * bm.rOut) • e 0 - t‖ := by
            have := PiLp.norm_apply_le (x + (2 * bm.rOut) • e 0 - t) 0
            rwa [Real.norm_eq_abs] at this
          have hd : dist x c ≤ ‖x + (2 * bm.rOut) • e 0 - t‖ +
              dist (t - (4 * bm.rOut) • e 0) c + ‖(2 * bm.rOut) • e 0‖ := by
            rw [dist_eq_norm, dist_eq_norm]
            have heq : x - c = (x + (2 * bm.rOut) • e 0 - t) +
                (t - (4 * bm.rOut) • e 0 - c) + (2 * bm.rOut) • e 0 := by
              rw [h4]; abel
            rw [heq]
            exact (norm_add_le _ _).trans (add_le_add (norm_add_le _ _) le_rfl)
          have habs := abs_lt.mp (lt_of_le_of_lt hyabs hmem)
          rcases hx with hx | hx
          · linarith [habs.1]
          · linarith
        rw [hn, zero_mul]
      · rw [hu _ ht, mul_zero]
    rw [hz, integral_zero]
  
  have hmollT : ∀ (bm : ContDiffBump (0 : E3)) (u : E3 → ℝ), MemLp u 2 volume →
      (∀ t, t ∉ fcrHalf c s₂ → u t = 0) → s₂ + 3 * bm.rOut < s →
      ContDiff ℝ ∞ (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) ∧
      HasCompactSupport (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) ∧
      tsupport (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) ⊆ Metric.ball c s ∧
      MemLp (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) 2 volume := by
    intro bm u hu hu0 hr3
    have hs0 : fcrSob c (s + 4 * bm.rOut) 0 (fun t => u (t - (4 * bm.rOut) • e 0))
        (fun _ => fun t => u (t - (4 * bm.rOut) • e 0)) :=
      ⟨rfl, fun _ _ => (hTL u ((4 * bm.rOut) • e 0) hu).restrict _,
        fun _ _ hL => absurd hL (Nat.not_lt_zero _)⟩
    have hsm : ContDiff ℝ ∞ (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) := by
      have h : ContDiff ℝ ∞ (fcrMoll bm ((fcrHalf c (s + 4 * bm.rOut)).indicator
          (fun t => u (t - (4 * bm.rOut) • e 0)))) :=
        (fcr_moll_deriv c (s + 4 * bm.rOut) 0 _ _ hs0 bm).1 []
      rwa [hsuppT bm u hu0] at h
    have hsupp : Function.support (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) ⊆
        Metric.closedBall c (s₂ + 3 * bm.rOut) := by
      intro x hx
      rw [Metric.mem_closedBall]
      by_contra hcon
      exact hx (hvanT bm u hu0 x (Or.inr (not_le.1 hcon).le))
    have hcs : HasCompactSupport (fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0))) :=
      HasCompactSupport.intro (isCompact_closedBall c (s₂ + 3 * bm.rOut))
        (fun x hx => Function.notMem_support.1 (fun h => hx (hsupp h)))
    refine ⟨hsm, hcs, ?_, hsm.continuous.memLp_of_hasCompactSupport hcs⟩
    exact (closure_minimal hsupp Metric.isClosed_closedBall).trans
      (Metric.closedBall_subset_ball hr3)
  
  have hrefl : ∀ (bm : ContDiffBump (0 : E3)) (u : E3 → ℝ) (x : E3),
      fcrMoll bm (fun t => u (t - (4 * bm.rOut) • e 0)) x = fcrMoll bm (fun t => u (-t)) (-x) := by
    intro bm u x
    show ∫ t, bm.normed volume (x + (2 * bm.rOut) • e 0 - t) * u (t - (4 * bm.rOut) • e 0) =
      ∫ t, bm.normed volume (-x + (2 * bm.rOut) • e 0 - t) * u (-t)
    have e1 := integral_sub_right_eq_self (μ := volume)
      (fun v => bm.normed volume (x + (2 * bm.rOut) • e 0 - (v + (4 * bm.rOut) • e 0)) * u v)
      ((4 * bm.rOut) • e 0)
    have e2 := integral_neg_eq_self
      (fun v => bm.normed volume (-x + (2 * bm.rOut) • e 0 + v) * u v) (volume : Measure E3)
    simp only [sub_add_cancel] at e1
    simp only [← sub_eq_add_neg] at e2
    rw [e1, e2]
    congr 1
    funext v
    have hv : x + (2 * bm.rOut) • e 0 - (v + (4 * bm.rOut) • e 0) =
        -(-x + (2 * bm.rOut) • e 0 + v) := by
      have h4 : (4 * bm.rOut) • e 0 = (2 * bm.rOut) • e 0 + (2 * bm.rOut) • e 0 := by
        rw [← add_smul]; congr 1; ring
      rw [h4]; abel
    rw [hv, bm.normed_neg]
  
  have hamgm : ∀ (f h : E3 → ℝ), MemLp f 2 volume → MemLp h 2 volume → ∀ θ : ℝ, 0 < θ →
      |∫ x, f x * h x| ≤ (1 / (2 * θ)) * (∫ x, f x ^ 2) + (θ / 2) * ∫ x, h x ^ 2 := by
    intro f h hf hh θ hθ
    have hint : Integrable (fun x => f x * h x) := hf.integrable_mul hh
    have hint2 : Integrable (fun x => (1 / (2 * θ)) * f x ^ 2 + (θ / 2) * h x ^ 2) :=
      (hf.integrable_sq.const_mul _).add (hh.integrable_sq.const_mul _)
    calc |∫ x, f x * h x| ≤ ∫ x, |f x * h x| := abs_integral_le_integral_abs
      _ ≤ ∫ x, ((1 / (2 * θ)) * f x ^ 2 + (θ / 2) * h x ^ 2) := by
          refine integral_mono hint.abs hint2 (fun x => ?_)
          have hθ2 : 0 < 2 * θ := by linarith
          have e2 : (1 / (2 * θ)) * f x ^ 2 + (θ / 2) * h x ^ 2 =
              (f x ^ 2 + θ ^ 2 * h x ^ 2) / (2 * θ) := by
            field_simp
            try ring
          show |f x * h x| ≤ (1 / (2 * θ)) * f x ^ 2 + (θ / 2) * h x ^ 2
          rw [e2, le_div_iff₀ hθ2, abs_mul, ← sq_abs (f x), ← sq_abs (h x)]
          nlinarith [sq_nonneg (|f x| - θ * |h x|)]
      _ = (1 / (2 * θ)) * (∫ x, f x ^ 2) + (θ / 2) * ∫ x, h x ^ 2 := by
          rw [integral_add (hf.integrable_sq.const_mul _) (hh.integrable_sq.const_mul _),
            integral_const_mul, integral_const_mul]
  have hpair : ∀ (W g : E3 → ℝ), MemLp W 2 volume → MemLp g 2 volume → Integrable g →
      ∀ (bm : ℕ → ContDiffBump (0 : E3)), Tendsto (fun j => (bm j).rOut) atTop (𝓝 0) →
      (∀ j, MemLp (fcrMoll (bm j) g) 2 volume) →
      Tendsto (fun j => ∫ x, W x * fcrMoll (bm j) g x) atTop (𝓝 (∫ x, W x * g x)) := by
    intro W g hW hg2 hg1 bm hb hm
    have hM0 : 0 ≤ ∫ x, g x ^ 2 := integral_nonneg (fun x => sq_nonneg _)
    have hmM : ∀ j, ∫ x, fcrMoll (bm j) g x ^ 2 ≤ ∫ x, g x ^ 2 := by
      intro j
      have h := fcr_moll_L2 (bm j) g hg2 Set.univ
      rwa [setIntegral_univ] at h
    rw [Metric.tendsto_atTop]
    intro ε hε
    have h1M : 0 < 1 + ∫ x, g x ^ 2 := by linarith
    obtain ⟨θ, hθdef⟩ : ∃ θ : ℝ, θ = ε / 4 / (1 + ∫ x, g x ^ 2) := ⟨_, rfl⟩
    have hθ : 0 < θ := by rw [hθdef]; exact div_pos (div_pos hε (by norm_num)) h1M
    have hθM : θ * (1 + ∫ x, g x ^ 2) = ε / 4 := by
      rw [hθdef]; field_simp
    have hW2 : MemLp W (ENNReal.ofReal 2) volume := by rw [ENNReal.ofReal_ofNat]; exact hW
    obtain ⟨k, hkc, hkint, hkcont, hkL⟩ :=
      hW2.exists_hasCompactSupport_integral_rpow_sub_le (by norm_num : (0 : ℝ) < 2)
        (pow_pos hθ 2)
    have hk2 : MemLp k 2 volume := by rw [ENNReal.ofReal_ofNat] at hkL; exact hkL
    have hWk : ∫ x, (W x - k x) ^ 2 ≤ θ ^ 2 := by
      simp only [Real.rpow_two, Real.norm_eq_abs, sq_abs] at hkint
      exact hkint
    have hWk2 : MemLp (fun x => W x - k x) 2 volume := hW.sub hk2
    have hlim := fcr_moll_weak_limit g hg1 k hkcont hkc bm hb
    rw [Metric.tendsto_atTop] at hlim
    obtain ⟨N, hN⟩ := hlim (ε / 2) (by linarith)
    refine ⟨N, fun j hj => ?_⟩
    have hNj := hN j hj
    rw [Real.dist_eq] at hNj ⊢
    have i1 : Integrable (fun x => (W x - k x) * fcrMoll (bm j) g x) := hWk2.integrable_mul (hm j)
    have i2 : Integrable (fun x => fcrMoll (bm j) g x * k x) := (hm j).integrable_mul hk2
    have i3 : Integrable (fun x => g x * k x) := hg2.integrable_mul hk2
    have i4 : Integrable (fun x => (W x - k x) * g x) := hWk2.integrable_mul hg2
    have a1 : ∫ x, W x * fcrMoll (bm j) g x =
        (∫ x, (W x - k x) * fcrMoll (bm j) g x) + ∫ x, fcrMoll (bm j) g x * k x := by
      rw [← integral_add i1 i2]
      congr 1
      funext x
      ring
    have a2 : ∫ x, W x * g x = (∫ x, (W x - k x) * g x) + ∫ x, g x * k x := by
      rw [← integral_add i4 i3]
      congr 1
      funext x
      ring
    have b1 : |∫ x, (W x - k x) * fcrMoll (bm j) g x| ≤
        (1 / (2 * θ)) * (∫ x, (W x - k x) ^ 2) + (θ / 2) * ∫ x, fcrMoll (bm j) g x ^ 2 :=
      hamgm _ _ hWk2 (hm j) θ hθ
    have b2 : |∫ x, (W x - k x) * g x| ≤
        (1 / (2 * θ)) * (∫ x, (W x - k x) ^ 2) + (θ / 2) * ∫ x, g x ^ 2 :=
      hamgm _ _ hWk2 hg2 θ hθ
    have hcoef : 0 ≤ 1 / (2 * θ) := div_nonneg zero_le_one (by linarith)
    have c1 : (1 / (2 * θ)) * (∫ x, (W x - k x) ^ 2) ≤ θ / 2 := by
      calc (1 / (2 * θ)) * (∫ x, (W x - k x) ^ 2) ≤ (1 / (2 * θ)) * θ ^ 2 :=
            mul_le_mul_of_nonneg_left hWk hcoef
        _ = θ / 2 := by
          field_simp
          try ring
    have c2 : (θ / 2) * (∫ x, fcrMoll (bm j) g x ^ 2) ≤ (θ / 2) * ∫ x, g x ^ 2 :=
      mul_le_mul_of_nonneg_left (hmM j) (by linarith)
    have B1 := abs_le.mp b1
    have B2 := abs_le.mp b2
    have B3 := abs_lt.mp hNj
    have hθM' : θ / 2 + θ / 2 * ∫ x, g x ^ 2 = ε / 8 := by linear_combination hθM / 2
    rw [a1, a2, abs_lt]
    constructor <;> linarith
  
  have hpairOut : ∀ (W u : E3 → ℝ), MemLp W 2 volume → MemLp u 2 volume → Integrable u →
      ∀ (bm : ℕ → ContDiffBump (0 : E3)), Tendsto (fun j => (bm j).rOut) atTop (𝓝 0) →
      (∀ j, MemLp (fcrMoll (bm j) (fun t => u (t - (4 * (bm j).rOut) • e 0))) 2 volume) →
      Tendsto (fun j => ∫ x, W x * fcrMoll (bm j) (fun t => u (t - (4 * (bm j).rOut) • e 0)) x)
        atTop (𝓝 (∫ x, W x * u x)) := by
    intro W u hW hu2 hu1 bm hb hm
    have hneg := Measure.measurePreserving_neg (volume : Measure E3)
    have hW' : MemLp (fun y => W (-y)) 2 volume := hW.comp_measurePreserving hneg
    have hu2' : MemLp (fun y => u (-y)) 2 volume := hu2.comp_measurePreserving hneg
    have hu1' : Integrable (fun y => u (-y)) := hu1.comp_neg
    have hm' : ∀ j, MemLp (fcrMoll (bm j) (fun t => u (-t))) 2 volume := by
      intro j
      have h := (hm j).comp_measurePreserving hneg
      have heq : fcrMoll (bm j) (fun t => u (-t)) =
          (fcrMoll (bm j) (fun t => u (t - (4 * (bm j).rOut) • e 0))) ∘ Neg.neg := by
        funext y
        rw [Function.comp_apply, hrefl (bm j) u (-y), neg_neg]
      rw [heq]
      exact h
    have hlim := hpair _ _ hW' hu2' hu1' bm hb hm'
    have e1 : ∀ j, ∫ y, W (-y) * fcrMoll (bm j) (fun t => u (-t)) y =
        ∫ x, W x * fcrMoll (bm j) (fun t => u (t - (4 * (bm j).rOut) • e 0)) x := by
      intro j
      rw [← integral_neg_eq_self (fun y => W (-y) * fcrMoll (bm j) (fun t => u (-t)) y) volume]
      congr 1
      funext x
      simp only [neg_neg]
      rw [hrefl (bm j) u x]
    have e2 : ∫ y, W (-y) * u (-y) = ∫ x, W x * u x :=
      integral_neg_eq_self (fun x => W x * u x) volume
    refine Tendsto.congr e1 ?_
    rw [← e2]
    exact hlim
  
  have hV : ∀ d, MemLp (fun x => (∑ b : Fin 3, A x d b * D [b] x) + G d x) 2
      (volume.restrict (fcrHalf c s)) := by
    intro d
    have hterm : ∀ b : Fin 3, MemLp (fun x => A x d b * D [b] x) 2
        (volume.restrict (fcrHalf c s)) := by
      intro b
      obtain ⟨C, hC⟩ := (isCompact_closedBall c s).exists_bound_of_continuousOn
        ((hA d b).continuousOn.mono (Metric.closedBall_subset_ball hsR))
      have hcont : ContinuousOn (fun x => A x d b) (fcrHalf c s) :=
        (hA d b).continuousOn.mono (fun x hx => Metric.ball_subset_ball hsR.le hx.1)
      refine MemLp.of_le_mul (c := C) (hP.1.2.1 [b] (by simp))
        ((hcont.aestronglyMeasurable (hmeas s)).mul
          (hP.1.2.1 [b] (by simp)).aestronglyMeasurable) ?_
      refine (ae_restrict_iff' (hmeas s)).2 (Filter.Eventually.of_forall fun x hx => ?_)
      show ‖A x d b * D [b] x‖ ≤ C * ‖D [b] x‖
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_right (hC x (Metric.ball_subset_closedBall hx.1)) (norm_nonneg _)
    have hsum := memLp_finset_sum Finset.univ (fun b _ => hterm b)
    exact hsum.add (hP.2.2.1 d)
  suffices key : ∀ V : Fin 3 → E3 → ℝ, (∀ d, MemLp (V d) 2 (volume.restrict (fcrHalf c s))) →
      fdrWeakEq c s V F →
      ∫ x in fcrHalf c s, ((∑ d : Fin 3, V d x * Ψ d x) + F x * ψ x) = 0 by
    exact key (fun d x => (∑ b : Fin 3, A x d b * D [b] x) + G d x) hV hP.2.2.2.2
  intro V hVL hEq
  
  have honetest : ∀ bm : ContDiffBump (0 : E3), s₂ + 3 * bm.rOut < s →
      ∫ x in fcrHalf c s,
        ((∑ d : Fin 3, V d x *
            fcrMoll bm (fun t => (fcrHalf c s₃).indicator (Ψ d) (t - (4 * bm.rOut) • e 0)) x) +
          F x * fcrMoll bm (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * bm.rOut) • e 0)) x) = 0 := by
    intro bm hr3
    have hr := bm.rOut_pos
    obtain ⟨hψb2, -, hψbv, -⟩ := hind ψ hψ hψ0
    obtain ⟨hsm, hcs, hts, -⟩ := hmollT bm _ hψb2 hψbv hr3
    have hsob : fcrSob c (s + 4 * bm.rOut) 1
        (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * bm.rOut) • e 0))
        (fun L => match L with
          | [] => fun t => (fcrHalf c s₃).indicator ψ (t - (4 * bm.rOut) • e 0)
          | d :: _ => fun t => (fcrHalf c s₃).indicator (Ψ d) (t - (4 * bm.rOut) • e 0)) := by
      refine ⟨rfl, ?_, ?_⟩
      · intro L hL
        rcases L with _ | ⟨d, _ | ⟨d', t⟩⟩
        · exact (hTL ((fcrHalf c s₃).indicator ψ) ((4 * bm.rOut) • e 0) hψb2).restrict _
        · exact (hTL ((fcrHalf c s₃).indicator (Ψ d)) ((4 * bm.rOut) • e 0)
            (hind (Ψ d) (hΨ d) (hΨ0 d)).1).restrict _
        · simp at hL
      · intro L a hL ζ h1 h2 h3
        rcases L with _ | ⟨d', t⟩
        · exact htrans ((4 * bm.rOut) • e 0) a ζ h1 h2
        · simp at hL
    have hmd := fcr_moll_deriv c (s + 4 * bm.rOut) 1 _ _ hsob bm
    have hderiv : ∀ x ∈ fcrHalf c s, ∀ a : Fin 3,
        partialDeriv a
            (fcrMoll bm (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * bm.rOut) • e 0))) x =
          fcrMoll bm (fun t => (fcrHalf c s₃).indicator (Ψ a) (t - (4 * bm.rOut) • e 0)) x := by
      intro x hx a
      have hx0 : (0 : ℝ) < x 0 := hx.2
      have hxd : dist x c < s := hx.1
      have h : partialDeriv a (fcrMoll bm ((fcrHalf c (s + 4 * bm.rOut)).indicator
            (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * bm.rOut) • e 0)))) x =
          fcrMoll bm ((fcrHalf c (s + 4 * bm.rOut)).indicator
            (fun t => (fcrHalf c s₃).indicator (Ψ a) (t - (4 * bm.rOut) • e 0))) x :=
        hmd.2 [a] (by simp) x (by linarith) (by
          show dist x c < s + 4 * bm.rOut - 3 * bm.rOut
          linarith)
      rw [hsuppT bm _ hψbv, hsuppT bm _ (hind (Ψ a) (hΨ a) (hΨ0 a)).2.2.1] at h
      exact h
    have hO : IsOpen {x : E3 | x 0 < bm.rOut} :=
      isOpen_lt (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous continuous_const
    have hface : ∃ O : Set E3, IsOpen O ∧ {x ∈ Metric.ball c s | x 0 = 0} ⊆ O ∧
        ∀ x ∈ O, fcrMoll bm (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * bm.rOut) • e 0)) x = 0 :=
      ⟨_, hO, fun x hx => by
        show x 0 < bm.rOut
        rw [hx.2]; exact hr,
       fun x hx => hvanT bm _ hψbv x (Or.inl hx)⟩
    have h := hEq _ hsm hcs hts hface
    refine Eq.trans (setIntegral_congr_fun (hmeas s) (fun x hx => ?_)) h
    simp only [hderiv x hx]
  
  have hδ : 0 < (s - s₂) / 4 := div_pos (by linarith) (by norm_num)
  obtain ⟨bm, hbm⟩ : ∃ bm : ℕ → ContDiffBump (0 : E3),
      ∀ j, (bm j).rOut = (s - s₂) / 4 / ((j : ℝ) + 1) :=
    ⟨fun j => ⟨(s - s₂) / 4 / ((j : ℝ) + 1) / 2, (s - s₂) / 4 / ((j : ℝ) + 1),
      div_pos (div_pos hδ (Nat.cast_add_one_pos j)) two_pos,
      half_lt_self (div_pos hδ (Nat.cast_add_one_pos j))⟩, fun _ => rfl⟩
  have hb3 : ∀ j, s₂ + 3 * (bm j).rOut < s := by
    intro j
    have hj : (1 : ℝ) ≤ (j : ℝ) + 1 := by
      have := Nat.cast_nonneg (α := ℝ) j
      linarith
    have hle : (bm j).rOut ≤ (s - s₂) / 4 := by
      rw [hbm j]
      exact div_le_self hδ.le hj
    linarith
  have hblim : Tendsto (fun j => (bm j).rOut) atTop (𝓝 0) := by
    simp only [hbm]
    exact tendsto_const_nhds.div_atTop
      (tendsto_atTop_add_const_right _ 1 tendsto_natCast_atTop_atTop)
  
  obtain ⟨hψb2, hψb1, hψbv, hψbH⟩ := hind ψ hψ hψ0
  have hΨb := fun d => hind (Ψ d) (hΨ d) (hΨ0 d)
  have hVt : ∀ d, MemLp ((fcrHalf c s).indicator (V d)) 2 volume :=
    fun d => (memLp_indicator_iff_restrict (hmeas s)).2 (hVL d)
  have hFt : MemLp ((fcrHalf c s).indicator F) 2 volume :=
    (memLp_indicator_iff_restrict (hmeas s)).2 hF
  
  obtain ⟨T, hTdef⟩ : ∃ T : ℕ → ℝ, T = fun j =>
      (∑ d : Fin 3, ∫ x, (fcrHalf c s).indicator (V d) x *
        fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator (Ψ d) (t - (4 * (bm j).rOut) • e 0)) x) +
      ∫ x, (fcrHalf c s).indicator F x *
        fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * (bm j).rOut) • e 0)) x :=
    ⟨_, rfl⟩
  have hT : ∀ j, T j = 0 := by
    intro j
    rw [hTdef]
    have hmψ := (hmollT (bm j) _ hψb2 hψbv (hb3 j)).2.2.2
    have hmΨ := fun d => (hmollT (bm j) _ (hΨb d).1 (hΨb d).2.2.1 (hb3 j)).2.2.2
    have i1 : ∀ d, Integrable (fun x => V d x *
        fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator (Ψ d) (t - (4 * (bm j).rOut) • e 0)) x)
        (volume.restrict (fcrHalf c s)) :=
      fun d => (hVL d).integrable_mul ((hmΨ d).restrict _)
    have i2 : Integrable (fun x => F x *
        fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * (bm j).rOut) • e 0)) x)
        (volume.restrict (fcrHalf c s)) :=
      hF.integrable_mul (hmψ.restrict _)
    have h := honetest (bm j) (hb3 j)
    rw [integral_add (integrable_finset_sum _ (fun d _ => i1 d)) i2,
      integral_finset_sum _ (fun d _ => i1 d)] at h
    refine Eq.trans ?_ h
    show (∑ d : Fin 3, ∫ x, (fcrHalf c s).indicator (V d) x *
        fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator (Ψ d) (t - (4 * (bm j).rOut) • e 0)) x) +
      ∫ x, (fcrHalf c s).indicator F x *
        fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * (bm j).rOut) • e 0)) x = _
    congr 1
    · exact Finset.sum_congr rfl (fun d _ => (hconv _ _ _).symm)
    · exact (hconv _ _ _).symm
  
  have hlimΨ : ∀ d, Tendsto (fun j => ∫ x, (fcrHalf c s).indicator (V d) x *
      fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator (Ψ d) (t - (4 * (bm j).rOut) • e 0)) x)
      atTop (𝓝 (∫ x, (fcrHalf c s).indicator (V d) x * (fcrHalf c s₃).indicator (Ψ d) x)) :=
    fun d => hpairOut _ _ (hVt d) (hΨb d).1 (hΨb d).2.1 bm hblim
      (fun j => (hmollT (bm j) _ (hΨb d).1 (hΨb d).2.2.1 (hb3 j)).2.2.2)
  have hlimψ : Tendsto (fun j => ∫ x, (fcrHalf c s).indicator F x *
      fcrMoll (bm j) (fun t => (fcrHalf c s₃).indicator ψ (t - (4 * (bm j).rOut) • e 0)) x)
      atTop (𝓝 (∫ x, (fcrHalf c s).indicator F x * (fcrHalf c s₃).indicator ψ x)) :=
    hpairOut _ _ hFt hψb2 hψb1 bm hblim
      (fun j => (hmollT (bm j) _ hψb2 hψbv (hb3 j)).2.2.2)
  have hsum : Tendsto T atTop
      (𝓝 ((∑ d : Fin 3, ∫ x, (fcrHalf c s).indicator (V d) x * (fcrHalf c s₃).indicator (Ψ d) x) +
        ∫ x, (fcrHalf c s).indicator F x * (fcrHalf c s₃).indicator ψ x)) := by
    rw [hTdef]
    exact (tendsto_finset_sum Finset.univ (fun d _ => hlimΨ d)).add hlimψ
  have hzero : Tendsto T atTop (𝓝 0) := by
    rw [show T = fun _ => (0 : ℝ) from funext hT]
    exact tendsto_const_nhds
  have hL := tendsto_nhds_unique hsum hzero
  
  have hΨbH : ∀ d, ∀ x ∈ fcrHalf c s, (fcrHalf c s₃).indicator (Ψ d) x = Ψ d x :=
    fun d => (hΨb d).2.2.2
  rw [setIntegral_congr_fun (hmeas s) (g := fun x =>
      (∑ d : Fin 3, V d x * (fcrHalf c s₃).indicator (Ψ d) x) +
        F x * (fcrHalf c s₃).indicator ψ x) (fun x hx => by
      have h1 := hψbH x hx
      have h2 : ∀ d, (fcrHalf c s₃).indicator (Ψ d) x = Ψ d x := fun d => hΨbH d x hx
      simp only [h1, h2])]
  have j1 : ∀ d, Integrable (fun x => V d x * (fcrHalf c s₃).indicator (Ψ d) x)
      (volume.restrict (fcrHalf c s)) :=
    fun d => (hVL d).integrable_mul ((hΨb d).1.restrict _)
  have j2 : Integrable (fun x => F x * (fcrHalf c s₃).indicator ψ x)
      (volume.restrict (fcrHalf c s)) :=
    hF.integrable_mul (hψb2.restrict _)
  rw [integral_add (integrable_finset_sum _ (fun d _ => j1 d)) j2,
    integral_finset_sum _ (fun d _ => j1 d)]
  refine Eq.trans ?_ hL
  congr 1
  · exact Finset.sum_congr rfl (fun d _ => hconv _ _ _)
  · exact hconv _ _ _

theorem fdr_dq_identity (c : E3) (R s s' s₁ s₂ s₃ h₀ : ℝ) (hs' : 0 < s') (h01 : s' < s₁)
    (hh₀ : 0 < h₀) (h12 : s₁ + h₀ < s₂) (h23 : s₂ + h₀ < s₃) (h3s : s₃ + 2 * h₀ ≤ s)
    (hsR : s < R) (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.ball c R))
    (w : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ) (G : Fin 3 → E3 → ℝ) (F : E3 → ℝ)
    (hP : fdrProb c s A w D G F)
    (η : ContDiffBump c) (hηr : η.rOut = s₁) (a : Fin 3) (ha : a ≠ 0)
    (h : ℝ) (hh : h ≠ 0) (hhh : |h| ≤ h₀) :
    ((∫ x in fcrHalf c s₂, ∑ d : Fin 3,
       ((∑ b : Fin 3, A (x + h • e a) d b * fcrDQ a h (D [b]) x) +
         ((∑ b : Fin 3, fcrDQ a h (fun y => A y d b) x * D [b] x) + fcrDQ a h (G d) x)) *
       (η x ^ 2 * fcrDQ a h (D [d]) x + 2 * η x * partialDeriv d η x * fcrDQ a h w x)) =
     ∫ x in fcrHalf c s₂, F x * fcrDQ a (-h) (fun y => η y ^ 2 * fcrDQ a h w y) x) ∧
    ∫ x in fcrHalf c s₂, (fcrDQ a (-h) (fun y => η y ^ 2 * fcrDQ a h w y) x) ^ 2 ≤
     ∫ x in fcrHalf c s₂,
       (η x ^ 2 * fcrDQ a h (D [a]) x + 2 * η x * partialDeriv a η x * fcrDQ a h w x) ^ 2 ∧
    MemLp (fcrDQ a (-h) (fun y => η y ^ 2 * fcrDQ a h w y)) 2
      (volume.restrict (fcrHalf c s₂)) :=
by
  
  have habs : |(-h)| = |h| := abs_neg h
  have hR1 : (s - h₀) + |h| ≤ s := by linarith
  have hR2 : s₃ + |(-h)| ≤ s - h₀ := by rw [habs]; linarith
  have hR3 : s₂ + |(-h)| < s - h₀ := by rw [habs]; linarith
  have hR4 : s₁ + |h| < s := by linarith
  have hR5 : s₂ + |h| ≤ s := by linarith
  have hs₂pos : 0 < s₂ := by linarith
  
  have hopen : ∀ r : ℝ, IsOpen (fcrHalf c r) := fun r =>
    Metric.isOpen_ball.inter (isOpen_lt continuous_const
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hmeas : ∀ r, MeasurableSet (fcrHalf c r) := fun r => (hopen r).measurableSet
  have hsub : ∀ r t : ℝ, r ≤ t → fcrHalf c r ⊆ fcrHalf c t := by
    intro r t hrt x hx
    exact ⟨Metric.ball_subset_ball hrt hx.1, hx.2⟩
  have hmono : ∀ (r t : ℝ) (f : E3 → ℝ), r ≤ t → MemLp f 2 (volume.restrict (fcrHalf c t)) →
      MemLp f 2 (volume.restrict (fcrHalf c r)) := fun r t f hrt hf =>
    hf.mono_measure (Measure.restrict_mono (hsub r t hrt) le_rfl)
  have hext : ∀ (r t : ℝ) (f : E3 → ℝ), r ≤ t → MemLp f 2 (volume.restrict (fcrHalf c r)) →
      (∀ x, x ∉ Metric.ball c r → f x = 0) → MemLp f 2 (volume.restrict (fcrHalf c t)) := by
    intro r t f hrt hf hf0
    have h1 : MemLp ((fcrHalf c r).indicator f) 2 volume :=
      (memLp_indicator_iff_restrict (hmeas r)).2 hf
    refine (h1.restrict (fcrHalf c t)).ae_eq ?_
    refine (ae_restrict_iff' (hmeas t)).2 (Filter.Eventually.of_forall fun x hx => ?_)
    by_cases hxr : x ∈ fcrHalf c r
    · exact Set.indicator_of_mem hxr f
    · rw [Set.indicator_of_notMem hxr]
      have hxb : x ∉ Metric.ball c r := fun hb => hxr ⟨hb, hx.2⟩
      exact (hf0 x hxb).symm
  have hsetint : ∀ (r t : ℝ) (f : E3 → ℝ), r ≤ t → (∀ x, x ∉ Metric.ball c r → f x = 0) →
      ∫ x in fcrHalf c t, f x = ∫ x in fcrHalf c r, f x := by
    intro r t f hrt hf0
    refine setIntegral_eq_of_subset_of_forall_diff_eq_zero (hmeas t) (hsub r t hrt) ?_
    intro x hx
    exact hf0 x (fun hb => hx.2 ⟨hb, hx.1.2⟩)
  
  have hztwd : ∀ (ρ : ℝ) (V : E3 → ℝ) (Gf : Fin 3 → E3 → ℝ), fdrZT c ρ V Gf →
      ∀ d, fcrWD c ρ V d (Gf d) := by
    intro ρ V Gf hz d ζ h1 h2 h3
    have hsb : tsupport ζ ⊆ Metric.ball c ρ := fun x hx => (h3 hx).1
    have hzz := hz d ζ h1 h2 hsb
    have e1 : ∫ x in fcrHalf c ρ, V x * partialDeriv d ζ x = ∫ x, V x * partialDeriv d ζ x := by
      refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => ?_)
      have hxt : x ∉ tsupport ζ := fun h' => hx (h3 h')
      have hfd : fderiv ℝ ζ x = 0 := by
        by_contra hne
        exact hxt (support_fderiv_subset ℝ hne)
      simp [partialDeriv, hfd]
    have e2 : ∫ x in fcrHalf c ρ, Gf d x * ζ x = ∫ x, Gf d x * ζ x := by
      refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => ?_)
      have hxt : x ∉ tsupport ζ := fun h' => hx (h3 h')
      simp [image_eq_zero_of_notMem_tsupport hxt]
    rw [← e1, ← e2]
    exact hzz
  
  have hη0 : ∀ x, x ∉ Metric.ball c s₁ → η x = 0 := by
    intro x hx
    have hx' : x ∉ Function.support (⇑η) := by rw [η.support_eq, hηr]; exact hx
    exact Function.notMem_support.1 hx'
  have hη01 : ∀ x, 0 ≤ η x ∧ η x ≤ 1 := fun x => ⟨η.nonneg, η.le_one⟩
  have hηsm : ContDiff ℝ ∞ (⇑η) := η.contDiff
  have hηc1 : ContDiff ℝ 1 (⇑η) := η.contDiff
  have hfdc : Continuous (fderiv ℝ (⇑η)) := hηc1.continuous_fderiv (by norm_num)
  obtain ⟨C₀, hC₀⟩ := Continuous.bounded_above_of_compact_support hfdc
    (η.hasCompactSupport.fderiv ℝ)
  have hdη : ∀ (d : Fin 3) (x : E3), |partialDeriv d (⇑η) x| ≤ max C₀ 0 := by
    intro d x
    have hed : ‖e d‖ = 1 := by simp [EuclideanSpace.norm_single]
    have h1 : ‖fderiv ℝ (⇑η) x (e d)‖ ≤ ‖fderiv ℝ (⇑η) x‖ * ‖e d‖ :=
      ContinuousLinearMap.le_opNorm _ _
    rw [hed, mul_one, Real.norm_eq_abs] at h1
    exact h1.trans ((hC₀ x).trans (le_max_left _ _))
  have hdηc : ∀ d : Fin 3, Continuous (fun x => partialDeriv d (⇑η) x) := by
    intro d
    exact hfdc.clm_apply continuous_const
  have hdη2 : ∀ (d : Fin 3) (x : E3),
      partialDeriv d (fun y => η y ^ 2) x = 2 * η x * partialDeriv d (⇑η) x := by
    intro d x
    have hd : DifferentiableAt ℝ (⇑η) x := hηc1.differentiable one_ne_zero x
    have he : (fun y => η y ^ 2) = (fun y => η y * η y) := by funext y; ring
    unfold partialDeriv
    have hm : HasFDerivAt (fun y => η y * η y)
        (η x • fderiv ℝ (⇑η) x + η x • fderiv ℝ (⇑η) x) x :=
      hd.hasFDerivAt.mul hd.hasFDerivAt
    rw [he, hm.fderiv]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hsqmul : ∀ (r : ℝ) (f : E3 → ℝ), MemLp f 2 (volume.restrict (fcrHalf c r)) →
      MemLp (fun x => η x ^ 2 * f x) 2 (volume.restrict (fcrHalf c r)) := by
    intro r f hf
    refine MemLp.of_le_mul (c := 1) hf
      ((η.continuous.pow 2).aestronglyMeasurable.mul hf.aestronglyMeasurable)
      (Filter.Eventually.of_forall fun x => ?_)
    show ‖η x ^ 2 * f x‖ ≤ 1 * ‖f x‖
    have e2 := hη01 x
    have e3 : η x ^ 2 ≤ 1 := by nlinarith
    rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_mul, abs_of_nonneg (sq_nonneg (η x)), one_mul]
    exact mul_le_of_le_one_left (abs_nonneg _) e3
  
  have hD0 : D [] = w := hP.1.1
  have hwL : MemLp w 2 (volume.restrict (fcrHalf c s)) := by
    have h0 := hP.1.2.1 [] (by simp)
    rwa [hD0] at h0
  have hDL : ∀ d, MemLp (D [d]) 2 (volume.restrict (fcrHalf c s)) :=
    fun d => hP.1.2.1 [d] (by simp)
  
  have hV : ∀ d, MemLp (fun x => (∑ b : Fin 3, A x d b * D [b] x) + G d x) 2
      (volume.restrict (fcrHalf c s)) := by
    intro d
    have hterm : ∀ b : Fin 3, MemLp (fun x => A x d b * D [b] x) 2
        (volume.restrict (fcrHalf c s)) := by
      intro b
      obtain ⟨C, hC⟩ := (isCompact_closedBall c s).exists_bound_of_continuousOn
        ((hA d b).continuousOn.mono (Metric.closedBall_subset_ball hsR))
      have hcont : ContinuousOn (fun x => A x d b) (fcrHalf c s) :=
        (hA d b).continuousOn.mono (fun x hx => Metric.ball_subset_ball hsR.le hx.1)
      refine MemLp.of_le_mul (c := C) (hDL b)
        ((hcont.aestronglyMeasurable (hmeas s)).mul (hDL b).aestronglyMeasurable) ?_
      refine (ae_restrict_iff' (hmeas s)).2 (Filter.Eventually.of_forall fun x hx => ?_)
      show ‖A x d b * D [b] x‖ ≤ C * ‖D [b] x‖
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_right (hC x (Metric.ball_subset_closedBall hx.1)) (norm_nonneg _)
    have hsum := memLp_finset_sum Finset.univ (fun b _ => hterm b)
    exact hsum.add (hP.2.2.1 d)
  
  have hu : MemLp (fcrDQ a h w) 2 (volume.restrict (fcrHalf c (s - h₀))) :=
    fcr_dq_memLp c s (s - h₀) w a ha h hR1 hwL
  have hU : ∀ d, MemLp (fcrDQ a h (D [d])) 2 (volume.restrict (fcrHalf c (s - h₀))) :=
    fun d => fcr_dq_memLp c s (s - h₀) (D [d]) a ha h hR1 (hDL d)
  have huzt : fdrZT c (s - h₀) (fcrDQ a h w) (fun d => fcrDQ a h (D [d])) :=
    fdr_dq_zt c s (s - h₀) w (fun b => D [b]) a ha h hR1 hwL hDL hP.2.1
  
  set ψ : E3 → ℝ := fun y => η y ^ 2 * fcrDQ a h w y with hψ
  set Ψ : Fin 3 → E3 → ℝ := fun d x => η x ^ 2 * fcrDQ a h (D [d]) x +
    2 * η x * partialDeriv d (⇑η) x * fcrDQ a h w x with hΨ
  have hψzt : fdrZT c (s - h₀) ψ Ψ := by
    have h1 := fdr_zt_smul c (s - h₀) (fun x => η x ^ 2) (hηsm.pow 2) (fcrDQ a h w)
      (fun d => fcrDQ a h (D [d])) hu hU huzt
    have he : (fun d x => partialDeriv d (fun y => η y ^ 2) x * fcrDQ a h w x +
          η x ^ 2 * fcrDQ a h (D [d]) x) = Ψ := by
      funext d x
      simp only [hΨ, hdη2]
      ring
    rw [he] at h1
    exact h1
  have hψwd : ∀ d, fcrWD c (s - h₀) ψ d (Ψ d) := hztwd _ _ _ hψzt
  have hψL : MemLp ψ 2 (volume.restrict (fcrHalf c (s - h₀))) := hsqmul _ _ hu
  have hΨL : ∀ d, MemLp (Ψ d) 2 (volume.restrict (fcrHalf c (s - h₀))) := by
    intro d
    have h1 : MemLp (fun x => η x ^ 2 * fcrDQ a h (D [d]) x) 2
        (volume.restrict (fcrHalf c (s - h₀))) := hsqmul _ _ (hU d)
    have hc : Continuous (fun x => 2 * η x * partialDeriv d (⇑η) x) :=
      (continuous_const.mul η.continuous).mul (hdηc d)
    have h2 : MemLp (fun x => 2 * η x * partialDeriv d (⇑η) x * fcrDQ a h w x) 2
        (volume.restrict (fcrHalf c (s - h₀))) := by
      refine MemLp.of_le_mul (c := 2 * max C₀ 0) hu
        (hc.aestronglyMeasurable.mul hu.aestronglyMeasurable)
        (Filter.Eventually.of_forall fun x => ?_)
      show ‖2 * η x * partialDeriv d (⇑η) x * fcrDQ a h w x‖ ≤
        2 * max C₀ 0 * ‖fcrDQ a h w x‖
      rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_mul, abs_mul, abs_mul, abs_two]
      have e1 := hdη d x
      have e2 := hη01 x
      have e3 : |η x| ≤ 1 := by rw [abs_of_nonneg e2.1]; exact e2.2
      have e4 := abs_nonneg (fcrDQ a h w x)
      have e5 := abs_nonneg (partialDeriv d (⇑η) x)
      have e7 : |η x| * |partialDeriv d (⇑η) x| ≤ max C₀ 0 := by
        calc _ ≤ 1 * max C₀ 0 := mul_le_mul e3 e1 e5 zero_le_one
          _ = _ := one_mul _
      have e8 := mul_le_mul_of_nonneg_right e7 e4
      nlinarith [e8]
    exact h1.add h2
  
  have hψ0 : ∀ x, x ∉ Metric.ball c s₁ → ψ x = 0 := by
    intro x hx
    simp [hψ, hη0 x hx]
  have hΨ0 : ∀ d x, x ∉ Metric.ball c s₁ → Ψ d x = 0 := by
    intro d x hx
    simp [hΨ, hη0 x hx]
  have hfar : ∀ x, x ∉ Metric.ball c s₂ →
      x ∉ Metric.ball c s₁ ∧ x + (-h) • e a ∉ Metric.ball c s₁ := by
    intro x hx
    have hx' : s₂ ≤ dist x c := not_lt.1 hx
    have hea : ‖e a‖ = 1 := by simp [EuclideanSpace.norm_single]
    have hn : ‖(-h) • e a‖ = |h| := by rw [norm_smul, hea, mul_one, Real.norm_eq_abs, abs_neg]
    constructor
    · intro hb
      have hb' : dist x c < s₁ := hb
      linarith
    · intro hb
      have h1 : dist (x + (-h) • e a) c < s₁ := hb
      have h2 : dist x c ≤ dist (x + (-h) • e a) c + ‖(-h) • e a‖ := by
        rw [dist_eq_norm, dist_eq_norm]
        calc ‖x - c‖ = ‖(x + (-h) • e a - c) - (-h) • e a‖ := by congr 1; abel
          _ ≤ ‖x + (-h) • e a - c‖ + ‖(-h) • e a‖ := norm_sub_le _ _
      linarith
  have hQ0 : ∀ x, x ∉ Metric.ball c s₂ → fcrDQ a (-h) ψ x = 0 := by
    intro x hx
    obtain ⟨h1, h2⟩ := hfar x hx
    show (ψ (x + (-h) • e a) - ψ x) / (-h) = 0
    rw [hψ0 _ h2, hψ0 x h1]
    simp
  have hQd0 : ∀ d x, x ∉ Metric.ball c s₂ → fcrDQ a (-h) (Ψ d) x = 0 := by
    intro d x hx
    obtain ⟨h1, h2⟩ := hfar x hx
    show (Ψ d (x + (-h) • e a) - Ψ d x) / (-h) = 0
    rw [hΨ0 d _ h2, hΨ0 d x h1]
    simp
  
  have hQL3 : MemLp (fcrDQ a (-h) ψ) 2 (volume.restrict (fcrHalf c s₃)) :=
    fcr_dq_memLp c (s - h₀) s₃ ψ a ha (-h) hR2 hψL
  have hQdL3 : ∀ d, MemLp (fcrDQ a (-h) (Ψ d)) 2 (volume.restrict (fcrHalf c s₃)) :=
    fun d => fcr_dq_memLp c (s - h₀) s₃ (Ψ d) a ha (-h) hR2 (hΨL d)
  have hQzt : fdrZT c s₃ (fcrDQ a (-h) ψ) (fun d => fcrDQ a (-h) (Ψ d)) :=
    fdr_dq_zt c (s - h₀) s₃ ψ Ψ a ha (-h) hR2 hψL hΨL hψzt
  have hC3 : MemLp (fcrDQ a (-h) ψ) 2 (volume.restrict (fcrHalf c s₂)) :=
    hmono s₂ s₃ _ (by linarith) hQL3
  have hQLs : MemLp (fcrDQ a (-h) ψ) 2 (volume.restrict (fcrHalf c s)) :=
    hext s₃ s _ (by linarith) hQL3
      (fun x hx => hQ0 x (fun hb => hx (Metric.ball_subset_ball (by linarith) hb)))
  have hQdLs : ∀ d, MemLp (fcrDQ a (-h) (Ψ d)) 2 (volume.restrict (fcrHalf c s)) :=
    fun d => hext s₃ s _ (by linarith) (hQdL3 d)
      (fun x hx => hQd0 d x (fun hb => hx (Metric.ball_subset_ball (by linarith) hb)))
  have hΨLs : ∀ d, MemLp (Ψ d) 2 (volume.restrict (fcrHalf c s)) :=
    fun d => hext (s - h₀) s _ (by linarith) (hΨL d)
      (fun x hx => hΨ0 d x (fun hb => hx (Metric.ball_subset_ball (by linarith) hb)))
  
  have hE4 : ∫ x in fcrHalf c s,
      ((∑ d : Fin 3, ((∑ b : Fin 3, A x d b * D [b] x) + G d x) * fcrDQ a (-h) (Ψ d) x) +
        F x * fcrDQ a (-h) ψ x) = 0 :=
    fdr_h1_test c R s s₂ s₃ hs₂pos (by linarith) (by linarith) hsR A hA w D G F hP
      (fcrDQ a (-h) ψ) (fun d => fcrDQ a (-h) (Ψ d)) hQL3 hQdL3 hQzt hQ0 hQd0
  have hint1 : ∀ d, Integrable (fun x => ((∑ b : Fin 3, A x d b * D [b] x) + G d x) *
      fcrDQ a (-h) (Ψ d) x) (volume.restrict (fcrHalf c s)) :=
    fun d => (hV d).integrable_mul (hQdLs d)
  have hint2 : Integrable (fun x => F x * fcrDQ a (-h) ψ x) (volume.restrict (fcrHalf c s)) :=
    hP.2.2.2.1.integrable_mul hQLs
  have hsplit : (∑ d : Fin 3, ∫ x in fcrHalf c s,
        ((∑ b : Fin 3, A x d b * D [b] x) + G d x) * fcrDQ a (-h) (Ψ d) x) +
      ∫ x in fcrHalf c s, F x * fcrDQ a (-h) ψ x = 0 := by
    have e1 := integral_finset_sum (μ := volume.restrict (fcrHalf c s)) Finset.univ
      (fun d _ => hint1 d)
    have e2 := integral_add (integrable_finset_sum Finset.univ (fun d _ => hint1 d)) hint2
    rw [← e1, ← e2]
    exact hE4
  
  have hibp : ∀ d, ∫ x in fcrHalf c s, ((∑ b : Fin 3, A x d b * D [b] x) + G d x) *
        fcrDQ a (-h) (Ψ d) x =
      -∫ x in fcrHalf c s, fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) x *
        Ψ d x :=
    fun d => fcr_discrete_ibp c s s₁ (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) (Ψ d)
      a ha h hR4 (hV d) (hΨLs d) (hΨ0 d)
  
  have hpt : ∀ (d : Fin 3) (x : E3),
      (∑ b : Fin 3, A (x + h • e a) d b * fcrDQ a h (D [b]) x) +
        ((∑ b : Fin 3, fcrDQ a h (fun y => A y d b) x * D [b] x) + fcrDQ a h (G d) x) =
      fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) x := by
    intro d x
    simp only [fcrDQ, Fin.sum_univ_three]
    field_simp
    ring
  have hDV : ∀ d, MemLp (fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y)) 2
      (volume.restrict (fcrHalf c s₂)) :=
    fun d => fcr_dq_memLp c s s₂ _ a ha h hR5 (hV d)
  have hΨL2 : ∀ d, MemLp (Ψ d) 2 (volume.restrict (fcrHalf c s₂)) :=
    fun d => hmono s₂ (s - h₀) _ (by linarith) (hΨL d)
  have hint3 : ∀ d, Integrable
      (fun x => fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) x * Ψ d x)
      (volume.restrict (fcrHalf c s₂)) :=
    fun d => (hDV d).integrable_mul (hΨL2 d)
  have hstep1 : (∫ x in fcrHalf c s₂, ∑ d : Fin 3,
       ((∑ b : Fin 3, A (x + h • e a) d b * fcrDQ a h (D [b]) x) +
         ((∑ b : Fin 3, fcrDQ a h (fun y => A y d b) x * D [b] x) + fcrDQ a h (G d) x)) *
         Ψ d x) =
      ∑ d : Fin 3, ∫ x in fcrHalf c s,
        fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) x * Ψ d x := by
    simp_rw [hpt]
    rw [integral_finset_sum _ (fun d _ => hint3 d)]
    refine Finset.sum_congr rfl (fun d _ => ?_)
    have e := hsetint s₂ s
      (fun x => fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) x * Ψ d x)
      (by linarith) (fun x hx => by
        show _ * Ψ d x = 0
        rw [hΨ0 d x (fun hb => hx (Metric.ball_subset_ball (by linarith) hb)), mul_zero])
    exact e.symm
  have hC1 : (∫ x in fcrHalf c s₂, ∑ d : Fin 3,
       ((∑ b : Fin 3, A (x + h • e a) d b * fcrDQ a h (D [b]) x) +
         ((∑ b : Fin 3, fcrDQ a h (fun y => A y d b) x * D [b] x) + fcrDQ a h (G d) x)) *
         Ψ d x) = ∫ x in fcrHalf c s₂, F x * fcrDQ a (-h) ψ x := by
    rw [hstep1]
    have e3 : (∑ d : Fin 3, ∫ x in fcrHalf c s,
          fcrDQ a h (fun y => (∑ b : Fin 3, A y d b * D [b] y) + G d y) x * Ψ d x) =
        -∑ d : Fin 3, ∫ x in fcrHalf c s,
          ((∑ b : Fin 3, A x d b * D [b] x) + G d x) * fcrDQ a (-h) (Ψ d) x := by
      rw [← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl (fun d _ => ?_)
      rw [hibp d, neg_neg]
    have e4 : ∫ x in fcrHalf c s, F x * fcrDQ a (-h) ψ x =
        ∫ x in fcrHalf c s₂, F x * fcrDQ a (-h) ψ x :=
      hsetint s₂ s (fun x => F x * fcrDQ a (-h) ψ x) (by linarith) (fun x hx => by
        show F x * fcrDQ a (-h) ψ x = 0
        rw [hQ0 x hx, mul_zero])
    rw [e3, ← e4]
    linarith [hsplit]
  
  have hsob : fcrSob c (s - h₀) 1 ψ (fun L => match L with | [] => ψ | d :: _ => Ψ d) := by
    refine ⟨rfl, ?_, ?_⟩
    · intro L hL
      rcases L with _ | ⟨d, _ | ⟨d', t⟩⟩
      · exact hψL
      · exact hΨL d
      · simp at hL
    · intro L d hL ζ h1 h2 h3
      rcases L with _ | ⟨d', t⟩
      · exact hψwd d ζ h1 h2 h3
      · simp at hL
  have hb2 := fcr_dq_sob_L2_bound c (s - h₀) s₂ ψ
    (fun L => match L with | [] => ψ | d :: _ => Ψ d) a ha (-h) hR3 hsob
  have hC2 : ∫ x in fcrHalf c s₂, (fcrDQ a (-h) ψ x) ^ 2 ≤
      ∫ x in fcrHalf c s₂, (Ψ a x) ^ 2 := by
    have e : ∫ x in fcrHalf c (s - h₀), (Ψ a x) ^ 2 = ∫ x in fcrHalf c s₂, (Ψ a x) ^ 2 :=
      hsetint s₂ (s - h₀) (fun x => (Ψ a x) ^ 2) (by linarith) (fun x hx => by
        show (Ψ a x) ^ 2 = 0
        rw [hΨ0 a x (fun hb => hx (Metric.ball_subset_ball (by linarith) hb))]
        ring)
    rw [← e]
    exact hb2
  exact ⟨hC1, hC2, hC3⟩

theorem fdr_tangential_energy (c : E3) (R s s' : ℝ) (hs' : 0 < s') (hss : s' < s) (hsR : s < R)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.ball c R))
    (hAs : ∀ x ∈ Metric.ball c R, ∀ a b : Fin 3, A x a b = A x b a)
    (hApos : ∀ x ∈ Metric.ball c R, (A x).PosDef)
    (w : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ) (G : Fin 3 → E3 → ℝ) (F : E3 → ℝ)
    (hP : fdrProb c s A w D G F) (hG : ∀ d, ∃ DG, fcrSob c s 1 (G d) DG)
    (a : Fin 3) (ha : a ≠ 0) (b : Fin 3) :
    ∃ χ : E3 → ℝ, fcrWD c s' (D [b]) a χ ∧ MemLp χ 2 (volume.restrict (fcrHalf c s')) :=
by
  
  obtain ⟨δ, hδ⟩ : ∃ δ : ℝ, δ = (s - s') / 4 := ⟨_, rfl⟩
  have hδ0 : 0 < δ := by rw [hδ]; linarith
  have hδs : s' + 4 * δ = s := by rw [hδ]; ring
  have hopen : ∀ r : ℝ, IsOpen (fcrHalf c r) := fun r =>
    Metric.isOpen_ball.inter (isOpen_lt continuous_const
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hea : ‖e a‖ = 1 := by simp [EuclideanSpace.norm_single]
  
  obtain ⟨η, hηin, hηout⟩ : ∃ η : ContDiffBump c, η.rIn = s' ∧ η.rOut = s' + δ :=
    ⟨⟨s', s' + δ, hs', by linarith⟩, rfl, rfl⟩
  have hηc1 : ContDiff ℝ 1 (⇑η) := η.contDiff
  have hfdc : Continuous (fderiv ℝ (⇑η)) := hηc1.continuous_fderiv (by norm_num)
  obtain ⟨C₀, hC₀⟩ := Continuous.bounded_above_of_compact_support hfdc
    (η.hasCompactSupport.fderiv ℝ)
  have hdη : ∀ (d : Fin 3) (x : E3), |partialDeriv d (⇑η) x| ≤ max C₀ 0 := by
    intro d x
    have hed : ‖e d‖ = 1 := by simp [EuclideanSpace.norm_single]
    have h1 : ‖fderiv ℝ (⇑η) x (e d)‖ ≤ ‖fderiv ℝ (⇑η) x‖ * ‖e d‖ :=
      ContinuousLinearMap.le_opNorm _ _
    rw [hed, mul_one, Real.norm_eq_abs] at h1
    exact h1.trans ((hC₀ x).trans (le_max_left _ _))
  have hdηc : ∀ d : Fin 3, Continuous (fun x => partialDeriv d (⇑η) x) := by
    intro d
    exact hfdc.clm_apply continuous_const
  
  obtain ⟨lam, Λ, M, hlam, hΛ, hM, hbd⟩ := fdr_dq_bounds c R s (s' + 2 * δ) (s' + 3 * δ)
    (δ / 2) (by linarith) (by linarith) (by linarith) (by linarith) hsR A hA hApos w D G F hP.1
    hP.2.2.2.1 hG a ha
  obtain ⟨K, hK0, hK⟩ := fcr_energy_absorb lam Λ (max C₀ 0) hlam hΛ (le_max_right _ _)
  
  have hU : ∀ h : ℝ, h ≠ 0 → |h| ≤ δ / 2 →
      ∫ x in fcrHalf c s', (fcrDQ a h (D [b]) x) ^ 2 ≤ K * M := by
    intro h hh hhh
    obtain ⟨hco, hB, hu, hUd, hR, hF, hum, hRm, hFm⟩ := hbd h hh hhh
    obtain ⟨hid, hQb, hQm⟩ := fdr_dq_identity c R s s' (s' + δ) (s' + 2 * δ) (s' + 3 * δ)
      (δ / 2) hs' (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) hsR A hA
      w D G F hP η hηout a ha h hh hhh
    have hBm : ∀ i j : Fin 3, AEStronglyMeasurable (fun x => A (x + h • e a) i j)
        (volume.restrict (fcrHalf c (s' + 2 * δ))) := by
      intro i j
      refine ContinuousOn.aestronglyMeasurable ?_ (hopen _).measurableSet
      have hmaps : Set.MapsTo (fun x : E3 => x + h • e a) (fcrHalf c (s' + 2 * δ))
          (Metric.ball c R) := by
        intro x hx
        have hx' : x ∈ Metric.ball c (s' + 2 * δ) ∧ 0 < x 0 := hx
        have hxb : dist x c < s' + 2 * δ := hx'.1
        have hn : ‖h • e a‖ ≤ δ / 2 := by
          rw [norm_smul, hea, mul_one, Real.norm_eq_abs]
          exact hhh
        show dist (x + h • e a) c < R
        have htri : dist (x + h • e a) c ≤ dist x c + ‖h • e a‖ := by
          rw [dist_eq_norm, dist_eq_norm, add_sub_right_comm]
          exact norm_add_le _ _
        linarith
      exact (hA i j).continuousOn.comp (continuous_add_right (h • e a)).continuousOn hmaps
    have hmain := hK (fcrHalf c (s' + 2 * δ)) (fun x i j => A (x + h • e a) i j) (⇑η)
      (fcrDQ a h w) F (fcrDQ a (-h) (fun y => η y ^ 2 * fcrDQ a h w y))
      (fun d => partialDeriv d (⇑η)) (fun d => fcrDQ a h (D [d]))
      (fun d x => (∑ b : Fin 3, fcrDQ a h (fun y => A y d b) x * D [b] x) + fcrDQ a h (G d) x)
      M a (hopen _).measurableSet hM hco hB hBm η.continuous
      (fun x => ⟨η.nonneg, η.le_one⟩) hdηc hdη hu hUd hR hF hQm hum hRm hFm hQb hid
    have hsum : Integrable (fun x => ∑ d : Fin 3, fcrDQ a h (D [d]) x ^ 2)
        (volume.restrict (fcrHalf c (s' + 2 * δ))) :=
      integrable_finset_sum _ (fun d _ => (hUd d).integrable_sq)
    have hint2 : IntegrableOn (fun x => η x ^ 2 * ∑ d : Fin 3, fcrDQ a h (D [d]) x ^ 2)
        (fcrHalf c (s' + 2 * δ)) := by
      refine hsum.mono' ?_ ?_
      · exact (η.continuous.pow 2).aestronglyMeasurable.mul hsum.aestronglyMeasurable
      · refine Filter.Eventually.of_forall (fun x => ?_)
        have h0 : 0 ≤ ∑ d : Fin 3, fcrDQ a h (D [d]) x ^ 2 :=
          Finset.sum_nonneg (fun d _ => sq_nonneg _)
        have h1 : 0 ≤ η x ^ 2 := sq_nonneg _
        have h2 : η x ^ 2 ≤ 1 := by
          have e1 := η.nonneg (x := x)
          have e2 := η.le_one (x := x)
          nlinarith
        rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg h1 h0)]
        nlinarith
    have hsub : fcrHalf c s' ⊆ fcrHalf c (s' + 2 * δ) := by
      intro x hx
      have hx' : x ∈ Metric.ball c s' ∧ 0 < x 0 := hx
      exact ⟨Metric.ball_subset_ball (by linarith) hx'.1, hx'.2⟩
    have hb1 : IntegrableOn (fun x => fcrDQ a h (D [b]) x ^ 2) (fcrHalf c s') :=
      (show IntegrableOn (fun x => fcrDQ a h (D [b]) x ^ 2) (fcrHalf c (s' + 2 * δ)) volume from
        (hUd b).integrable_sq).mono_set hsub
    calc ∫ x in fcrHalf c s', (fcrDQ a h (D [b]) x) ^ 2
        ≤ ∫ x in fcrHalf c s', η x ^ 2 * ∑ d : Fin 3, fcrDQ a h (D [d]) x ^ 2 := by
          refine setIntegral_mono_on hb1 (hint2.mono_set hsub) (hopen _).measurableSet ?_
          intro x hx
          have hx' : x ∈ Metric.ball c s' ∧ 0 < x 0 := hx
          have hη1 : η x = 1 := η.one_of_mem_closedBall (by
            rw [hηin]; exact Metric.ball_subset_closedBall hx'.1)
          rw [hη1, one_pow, one_mul]
          exact Finset.single_le_sum (f := fun d => fcrDQ a h (D [d]) x ^ 2)
            (fun d _ => sq_nonneg _) (Finset.mem_univ b)
      _ ≤ ∫ x in fcrHalf c (s' + 2 * δ), η x ^ 2 * ∑ d : Fin 3, fcrDQ a h (D [d]) x ^ 2 := by
          refine setIntegral_mono_set hint2 ?_ hsub.eventuallyLE
          exact Filter.Eventually.of_forall (fun x =>
            mul_nonneg (sq_nonneg _) (Finset.sum_nonneg (fun d _ => sq_nonneg _)))
      _ ≤ K * M := hmain
  
  have hne : ∀ j : ℕ, δ / 2 / ((j : ℝ) + 2) ≠ 0 := by
    intro j
    have hj : (0 : ℝ) < (j : ℝ) + 2 := by positivity
    exact div_ne_zero (by linarith) (ne_of_gt hj)
  have hseqb : ∀ j : ℕ, |δ / 2 / ((j : ℝ) + 2)| ≤ δ / 2 := by
    intro j
    have hj : (1 : ℝ) ≤ (j : ℝ) + 2 := by
      have := Nat.cast_nonneg (α := ℝ) j
      linarith
    rw [abs_of_nonneg (div_nonneg (by linarith) (by linarith))]
    exact div_le_self (by linarith) hj
  have hlim : Tendsto (fun j : ℕ => δ / 2 / ((j : ℝ) + 2)) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop
      (tendsto_atTop_add_const_right _ 2 tendsto_natCast_atTop_atTop)
  exact fcr_wd_of_dq_bound c s s' (D [b]) a ha (hP.1.2.1 [b] (by simp))
    (fun j => δ / 2 / ((j : ℝ) + 2)) hne
    (fun j => by have := hseqb j; linarith) hlim (K * M)
    (fun j => hU _ (hne j) (hseqb j))

theorem fdr_halfball_jets (c : E3) (ρ R ρ' : ℝ) (hc : c 0 = 0) (hρ' : 0 < ρ') (hρ'ρ : ρ' < ρ)
    (hρR : ρ < R)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.ball c R))
    (hAs : ∀ x ∈ Metric.ball c R, ∀ a b : Fin 3, A x a b = A x b a)
    (hApos : ∀ x ∈ Metric.ball c R, (A x).PosDef)
    (F : E3 → ℝ) (hF : ContDiffOn ℝ ∞ F (Metric.ball c R))
    (U : E3 → ℝ) (G : Fin 3 → E3 → ℝ)
    (hU : MemLp U 2 (volume.restrict (fcrHalf c ρ)))
    (hG : ∀ a, MemLp (G a) 2 (volume.restrict (fcrHalf c ρ)))
    (hzt : fdrZT c ρ U G)
    (heq : fdrWeakEq c ρ (fun a x => ∑ b : Fin 3, A x a b * G b x) F) :
    ∀ k : ℕ, ∃ D : List (Fin 3) → E3 → ℝ, fcrSob c ρ' k U D :=
by
  
  have hmem : ∀ (s : ℝ) (k : ℕ) (φ : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ),
      fcrSob c s k φ D → MemLp φ 2 (volume.restrict (fcrHalf c s)) := by
    intro s k φ D h
    have h0 := h.2.1 [] (Nat.zero_le _)
    rwa [h.1] at h0
  have hmemH : ∀ (s : ℝ) (k : ℕ) (φ : E3 → ℝ), (∃ D, fcrSob c s k φ D) →
      MemLp φ 2 (volume.restrict (fcrHalf c s)) := by
    rintro s k φ ⟨D, h⟩
    exact hmem s k φ D h
  have hfirst : ∀ (s : ℝ) (k : ℕ) (φ : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ),
      fcrSob c s (k + 1) φ D → ∀ a, fcrWD c s φ a (D [a]) ∧
        MemLp (D [a]) 2 (volume.restrict (fcrHalf c s)) := by
    intro s k φ D h a
    refine ⟨fun ζ h1 h2 h3 => ?_, h.2.1 [a] (by simp)⟩
    have h0 := h.2.2 [] a (by simp) ζ h1 h2 h3
    rw [h.1] at h0
    exact h0
  have hL2 : ∀ (s : ℝ) (χ : E3 → ℝ), MemLp χ 2 (volume.restrict (fcrHalf c s)) →
      ∃ D, fcrSob c s 0 χ D := by
    intro s χ hχ
    exact ⟨fun _ => χ, rfl, fun _ _ => hχ, fun _ _ hL => absurd hL (Nat.not_lt_zero _)⟩
  have hHmono : ∀ (s s' : ℝ) (k k' : ℕ) (φ : E3 → ℝ), s' ≤ s → k' ≤ k →
      (∃ D, fcrSob c s k φ D) → ∃ D, fcrSob c s' k' φ D := by
    rintro s s' k k' φ hss hk ⟨D, hD⟩
    exact ⟨D, (fcr_sob_mono c s s' hss).1 k k' φ D hk hD⟩
  have hadd : ∀ (s : ℝ) (k : ℕ) (φ₁ φ₂ : E3 → ℝ), (∃ D, fcrSob c s k φ₁ D) →
      (∃ D, fcrSob c s k φ₂ D) → ∃ D, fcrSob c s k (fun x => φ₁ x + φ₂ x) D := by
    rintro s k φ₁ φ₂ ⟨D₁, h₁⟩ ⟨D₂, h₂⟩
    exact ⟨_, fcr_sob_add c s k φ₁ φ₂ D₁ D₂ h₁ h₂⟩
  have hsum3 : ∀ (s : ℝ) (k : ℕ) (φ : Fin 3 → E3 → ℝ), (∀ b, ∃ D, fcrSob c s k (φ b) D) →
      ∃ D, fcrSob c s k (fun x => ∑ b : Fin 3, φ b x) D := by
    intro s k φ h
    have h012 := hadd s k _ _ (hadd s k _ _ (h 0) (h 1)) (h 2)
    have he : (fun x => ∑ b : Fin 3, φ b x) = (fun x => (φ 0 x + φ 1 x) + φ 2 x) := by
      funext x
      simp [Fin.sum_univ_three]
    rw [he]
    exact h012
  have hpd : ∀ (m : E3 → ℝ) (a : Fin 3), ContDiffOn ℝ ∞ m (Metric.ball c R) →
      ContDiffOn ℝ ∞ (partialDeriv a m) (Metric.ball c R) := by
    intro m a hm
    show ContDiffOn ℝ ∞ (fun y => fderiv ℝ m y (e a)) (Metric.ball c R)
    exact ((contDiffOn_infty_iff_fderiv_of_isOpen Metric.isOpen_ball).1 hm).2.clm_apply
      contDiffOn_const
  have hsmulH : ∀ (s : ℝ) (k : ℕ) (m φ : E3 → ℝ), s < R → ContDiffOn ℝ ∞ m (Metric.ball c R) →
      (∃ D, fcrSob c s k φ D) → ∃ D, fcrSob c s k (fun x => m x * φ x) D := by
    rintro s k m φ hs hm ⟨D, hD⟩
    exact fcr_sob_smul c R s hs m hm k φ D hD
  
  have hztwd : ∀ (s : ℝ) (V : E3 → ℝ) (Gf : Fin 3 → E3 → ℝ), fdrZT c s V Gf →
      ∀ a, fcrWD c s V a (Gf a) := by
    intro s V Gf hz a ζ h1 h2 h3
    have hsub : tsupport ζ ⊆ Metric.ball c s := fun x hx => (h3 hx).1
    have h := hz a ζ h1 h2 hsub
    have e1 : ∫ x in fcrHalf c s, V x * partialDeriv a ζ x = ∫ x, V x * partialDeriv a ζ x := by
      refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => ?_)
      have hxt : x ∉ tsupport ζ := fun h' => hx (h3 h')
      have hfd : fderiv ℝ ζ x = 0 := by
        by_contra hne
        exact hxt (support_fderiv_subset ℝ hne)
      simp [partialDeriv, hfd]
    have e2 : ∫ x in fcrHalf c s, Gf a x * ζ x = ∫ x, Gf a x * ζ x := by
      refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => ?_)
      have hxt : x ∉ tsupport ζ := fun h' => hx (h3 h')
      simp [image_eq_zero_of_notMem_tsupport hxt]
    rw [← e1, ← e2]
    exact h
  
  have hassemble : ∀ (s : ℝ) (j : ℕ) (v : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ)
      (E : Fin 3 → Fin 3 → E3 → ℝ) (Z : E3 → ℝ),
      (∀ b, fcrWD c s v b (D [b])) →
      (∀ b, MemLp (D [b]) 2 (volume.restrict (fcrHalf c s))) →
      (∀ a b, a ≠ 0 → fcrWD c s (D [b]) a (E a b) ∧ ∃ D', fcrSob c s j (E a b) D') →
      fcrWD c s (D [0]) 0 Z → (∃ D', fcrSob c s j Z D') →
      ∀ b, ∃ D', fcrSob c s (j + 1) (D [b]) D' := by
    intro s j v D E Z hv hDm hE hZ hZs b
    refine (fcr_sob_succ_iff c s j (D [b])).2 ⟨hDm b, fun a => ?_⟩
    by_cases ha : a = 0
    · subst ha
      by_cases hb : b = 0
      · subst hb
        exact ⟨Z, hZ, hZs⟩
      · exact ⟨E b 0, fcr_weak_symm c s b 0 v (D [b]) (D [0]) (E b 0) (hv b) (hv 0)
          (hE b 0 hb).1, (hE b 0 hb).2⟩
    · exact ⟨E a b, (hE a b ha).1, (hE a b ha).2⟩
  
  have hQ : ∀ k : ℕ, ∀ (s' s : ℝ) (v : E3 → ℝ) (D : List (Fin 3) → E3 → ℝ)
      (G : Fin 3 → E3 → ℝ) (Fs : E3 → ℝ), 0 < s' → s' < s → s < R →
      fdrProb c s A v D G Fs → (∀ d, ∃ DG, fcrSob c s (k + 1) (G d) DG) →
      (∃ DF, fcrSob c s k Fs DF) → ∀ b, ∃ D', fcrSob c s' (k + 1) (D [b]) D' := by
    intro k
    induction k with
    | zero =>
      intro s' s v D G Fs hs' hss hsR hP hG hFs
      have hP' := fdr_prob_mono c s s' hss.le A v D G Fs hP
      have hs'R : s' < R := hss.trans hsR
      have hm := fcr_sob_mono c s s' hss.le
      
      have hT : ∀ a b : Fin 3, ∃ χ : E3 → ℝ, a ≠ 0 →
          (fcrWD c s' (D [b]) a χ ∧ MemLp χ 2 (volume.restrict (fcrHalf c s'))) := by
        intro a b
        by_cases ha : a = 0
        · exact ⟨0, fun h => absurd ha h⟩
        · obtain ⟨χ, h1, h2⟩ := fdr_tangential_energy c R s s' hs' hss hsR A hA hAs hApos
            v D G Fs hP hG a ha b
          exact ⟨χ, fun _ => ⟨h1, h2⟩⟩
      choose E hE using hT
      choose DG hDG using hG
      have hGD : ∀ a, fcrWD c s' (G a) a (DG a [a]) ∧
          MemLp (DG a [a]) 2 (volume.restrict (fcrHalf c s')) := by
        intro a
        obtain ⟨h1, h2⟩ := hfirst s 0 (G a) (DG a) (hDG a) a
        exact ⟨hm.2.1 _ _ _ h1, hm.2.2 _ h2⟩
      have hZ := fdr_normal_step c R s' hs'R A hA hApos v D G Fs hP' E (fun a => DG a [a])
        hE hGD
      have hZs := fcr_normalZ_sob c R s' hs'R A hA hApos 0 D E (fun a => DG a [a]) Fs
        (fun b => hL2 s' _ (hP'.1.2.1 [b] (by simp)))
        (fun a b ha => hL2 s' _ (hE a b ha).2)
        (fun a => hL2 s' _ (hGD a).2)
        (hL2 s' _ hP'.2.2.2.1)
      exact hassemble s' 0 v D E _ (fun b => (hfirst s' 0 v D hP'.1 b).1)
        (fun b => (hfirst s' 0 v D hP'.1 b).2)
        (fun a b ha => ⟨(hE a b ha).1, hL2 s' _ (hE a b ha).2⟩) hZ hZs
    | succ k ih =>
      intro s' s v D G Fs hs' hss hsR hP hG hFs
      obtain ⟨s₁, hs₁⟩ : ∃ s₁ : ℝ, s₁ = (s' + s) / 2 := ⟨_, rfl⟩
      have hs'1 : s' < s₁ := by rw [hs₁]; linarith
      have hs1s : s₁ < s := by rw [hs₁]; linarith
      have hs1R : s₁ < R := hs1s.trans hsR
      have hs'R : s' < R := hss.trans hsR
      have hs1pos : 0 < s₁ := hs'.trans hs'1
      have hP₁ := fdr_prob_mono c s s₁ hs1s.le A v D G Fs hP
      have hm1 := fcr_sob_mono c s s₁ hs1s.le
      have hm2 := fcr_sob_mono c s₁ s' hs'1.le
      have hm3 := fcr_sob_mono c s s' hss.le
      
      have hDb : ∀ b, ∃ D', fcrSob c s₁ (k + 1) (D [b]) D' :=
        ih s₁ s v D G Fs hs1pos hs1s hsR hP
          (fun d => hHmono s s (k + 1 + 1) (k + 1) (G d) le_rfl (by omega) (hG d))
          (hHmono s s (k + 1) k Fs le_rfl (by omega) hFs)
      choose Db hDbs using hDb
      have hE1 : ∀ a b, fcrWD c s₁ (D [b]) a (Db b [a]) ∧
          MemLp (Db b [a]) 2 (volume.restrict (fcrHalf c s₁)) :=
        fun a b => hfirst s₁ k (D [b]) (Db b) (hDbs b) a
      
      have hGd : ∀ d a, ∃ ψ, fcrWD c s (G d) a ψ ∧ ∃ D', fcrSob c s (k + 1) ψ D' :=
        fun d => ((fcr_sob_succ_iff c s (k + 1) (G d)).1 (hG d)).2
      choose Gd hGdw hGds using hGd
      have hFd : ∀ a, ∃ ψ, fcrWD c s Fs a ψ ∧ ∃ D', fcrSob c s k ψ D' :=
        ((fcr_sob_succ_iff c s k Fs).1 hFs).2
      choose Fd hFdw hFds using hFd
      
      have hEH : ∀ a b, a ≠ 0 → ∃ D', fcrSob c s' (k + 1) (Db b [a]) D' := by
        intro a b ha
        have hzta : fdrZT c s₁ (D [a]) (fun b => Db b [a]) :=
          fdr_zt_tangential c s₁ v (fun b => D [b]) hP₁.2.1 a ha (fun b => Db b [a])
            (fun b => hP₁.1.2.1 [b] (by simp)) (fun b => hE1 a b)
        have hPa := fdr_diff_problem c R s₁ hs1R A hA v D G Fs hP₁ a (fun b => Db b [a])
          (fun b => hE1 a b) hzta (fun d => Gd d a)
          (fun d => ⟨hm1.2.1 _ _ _ (hGdw d a), hm1.2.2 _ (hmemH s (k + 1) _ (hGds d a))⟩)
          (Fd a) ⟨hm1.2.1 _ _ _ (hFdw a), hm1.2.2 _ (hmemH s k _ (hFds a))⟩
        have hG' : ∀ d, ∃ DG, fcrSob c s₁ (k + 1)
            (fun x => (∑ b : Fin 3, partialDeriv a (fun y => A y d b) x * D [b] x) + Gd d a x)
            DG := by
          intro d
          exact hadd s₁ (k + 1) _ _
            (hsum3 s₁ (k + 1) (fun b x => partialDeriv a (fun y => A y d b) x * D [b] x)
              (fun b => hsmulH s₁ (k + 1) _ _ hs1R (hpd _ a (hA d b)) ⟨Db b, hDbs b⟩))
            (hHmono s s₁ (k + 1) (k + 1) _ hs1s.le le_rfl (hGds d a))
        exact ih s' s₁ (D [a]) _ _ (Fd a) hs' hs'1 hs1R hPa hG'
          (hHmono s s₁ k k _ hs1s.le le_rfl (hFds a)) b
      
      have hZ := fdr_normal_step c R s₁ hs1R A hA hApos v D G Fs hP₁ (fun a b => Db b [a])
        (fun a => Gd a a) (fun a b _ => hE1 a b)
        (fun a => ⟨hm1.2.1 _ _ _ (hGdw a a), hm1.2.2 _ (hmemH s (k + 1) _ (hGds a a))⟩)
      have hZs := fcr_normalZ_sob c R s' hs'R A hA hApos (k + 1) D (fun a b => Db b [a])
        (fun a => Gd a a) Fs
        (fun b => hHmono s₁ s' (k + 1) (k + 1) _ hs'1.le le_rfl ⟨Db b, hDbs b⟩)
        (fun a b ha => hEH a b ha)
        (fun a => hHmono s s' (k + 1) (k + 1) _ hss.le le_rfl (hGds a a))
        (hHmono s s' (k + 1) (k + 1) _ hss.le le_rfl hFs)
      
      exact hassemble s' (k + 1) v D (fun a b => Db b [a]) _
        (fun b => hm3.2.1 _ _ _ (hfirst s 0 v D hP.1 b).1)
        (fun b => hm3.2.2 _ (hfirst s 0 v D hP.1 b).2)
        (fun a b ha => ⟨hm2.2.1 _ _ _ (hE1 a b).1, hEH a b ha⟩)
        (hm2.2.1 _ _ _ hZ) hZs
  
  have hF0 : MemLp F 2 (volume.restrict (fcrHalf c ρ)) := by
    obtain ⟨DF, hDF⟩ := fcr_smooth_sob c R ρ hρR F hF 0
    exact hmem ρ 0 F DF hDF
  have hP0 : fdrProb c ρ A U (fun L => match L with | [] => U | b :: _ => G b)
      (fun _ _ => 0) F := by
    refine ⟨⟨rfl, ?_, ?_⟩, hzt, fun _ => MemLp.zero', hF0, ?_⟩
    · intro L _
      rcases L with _ | ⟨b, t⟩
      · exact hU
      · exact hG b
    · intro L a hL ζ h1 h2 h3
      rcases L with _ | ⟨b, t⟩
      · exact hztwd ρ U G hzt a ζ h1 h2 h3
      · simp at hL
    · intro ζ h1 h2 h3 hO
      refine Eq.trans ?_ (heq ζ h1 h2 h3 hO)
      refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
      simp only [add_zero]
  
  have hm := fcr_sob_mono c ρ ρ' hρ'ρ.le
  intro k
  cases k with
  | zero => exact hL2 ρ' U (hm.2.2 U hU)
  | succ j =>
    have hb := hQ j ρ' ρ U _ (fun _ _ => 0) F hρ' hρ'ρ hρR hP0
      (fun _ => fcr_smooth_sob c R ρ hρR (fun _ => 0) contDiffOn_const (j + 1))
      (fcr_smooth_sob c R ρ hρR F hF j)
    refine (fcr_sob_succ_iff c ρ' j U).2 ⟨hm.2.2 _ hU, fun b => ?_⟩
    exact ⟨G b, hm.2.1 _ _ _ (hztwd ρ U G hzt b),
      hHmono ρ' ρ' (j + 1) j (G b) le_rfl (by omega) (hb b)⟩

theorem fdr_weak_to_strong_face (c : E3) (r : ℝ) (hr : 0 < r) (hc : c 0 = 0)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.ball c r))
    (F : E3 → ℝ) (hF : ContDiffOn ℝ ∞ F (Metric.ball c r))
    (v V : E3 → ℝ) (Gr : Fin 3 → E3 → ℝ) (hV : ContDiff ℝ ∞ V)
    (hGL : ∀ a, MemLp (Gr a) 2 (volume.restrict (ndsHalf c r)))
    (hvL : MemLp v 2 (volume.restrict (ndsHalf c r)))
    (hvV : ∀ᵐ x ∂(volume.restrict (fcrHalf c (r / 4))), v x = V x)
    (hzt : fdrZT c (r / 2) v Gr)
    (hweak : ∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      tsupport ζ ⊆ Metric.ball c (r / 2) →
      (∃ O : Set E3, IsOpen O ∧ {x ∈ Metric.ball c r | x 0 = 0} ⊆ O ∧ ∀ x ∈ O, ζ x = 0) →
      ∫ x in ndsHalf c r,
        (∑ a : Fin 3, ∑ b : Fin 3, A x a b * Gr b x * partialDeriv a ζ x + F x * ζ x) = 0) :
    (∀ x ∈ Metric.ball c (r / 4), 0 ≤ x 0 →
      ∑ a : Fin 3, partialDeriv a (fun y => ∑ b : Fin 3, A y a b * partialDeriv b V y) x = F x) ∧
    (∀ x ∈ Metric.ball c (r / 4), x 0 = 0 → V x = 0) :=
by
  
  
  have hhalf : ∀ (rr ρ₂ ρ : ℝ), ρ₂ < rr → ρ₂ < ρ →
      ∀ (P : Fin 3 → E3 → ℝ), (∀ i, ContDiffOn ℝ ∞ (P i) (Metric.ball (0 : E3) rr)) →
      (∀ i z, ρ₂ ≤ ‖z‖ → P i z = 0) →
      (∀ z ∈ Metric.ball (0 : E3) rr, z 0 = 0 → P 0 z = 0) →
      ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, ∑ i : Fin 3, partialDeriv i (P i) z = 0 := by
    clear hweak hzt hGL hvL hvV hA hF
    intro rr ρ₂ ρ hρ₂r hρ₂ρ P hP hsupp hface
    have hloc : ∀ (i : Fin 3) (y : E3), ρ₂ < ‖y‖ → P i =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      intro i y hy
      have hU : IsOpen {y : E3 | ρ₂ < ‖y‖} := isOpen_lt continuous_const continuous_norm
      exact Filter.eventually_of_mem (hU.mem_nhds hy) (fun z hz => hsupp i z (le_of_lt hz))
    have hCD : ∀ i, ContDiff ℝ ∞ (P i) := by
      intro i
      rw [contDiff_iff_contDiffAt]
      intro z
      by_cases hz : ‖z‖ < rr
      · exact (hP i).contDiffAt (Metric.isOpen_ball.mem_nhds (mem_ball_zero_iff.mpr hz))
      · exact contDiffAt_const.congr_of_eventuallyEq (hloc i z (by linarith [not_lt.mp hz]))
    have hvan : ∀ (i : Fin 3) (y : E3), ρ₂ < ‖y‖ → partialDeriv i (P i) y = 0 := by
      intro i y hy
      unfold partialDeriv
      rw [(hloc i y hy).fderiv_eq, fderiv_const_apply]
      rfl
    have hD : ∀ i, Differentiable ℝ (P i) := fun i => (hCD i).differentiable (by simp)
    have hpc : ∀ i, Continuous (partialDeriv i (P i)) := fun i =>
      ((hCD i).continuous_fderiv (by simp)).clm_apply continuous_const
    have habs : ∀ (x : Fin 3 → ℝ) (i : Fin 3), |x i| ≤ ‖(WithLp.toLp 2 x : E3)‖ := by
      intro x i
      have h := PiLp.norm_apply_le (WithLp.toLp 2 x : E3) i
      rwa [PiLp.toLp_apply, Real.norm_eq_abs] at h
    set g : E3 → ℝ := fun z => ∑ i : Fin 3, partialDeriv i (P i) z with hgdef
    have hgc : Continuous g := continuous_finset_sum _ (fun i _ => hpc i)
    have hg0 : ∀ z : E3, ρ₂ < ‖z‖ → g z = 0 := fun z hz =>
      Finset.sum_eq_zero (fun i _ => hvan i z hz)
    rcases le_or_gt ρ 0 with hρ | hρ
    · have hE : {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} = ∅ := by
        ext z
        simp only [Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_and]
        intro h
        linarith [norm_nonneg z]
      rw [hE, setIntegral_empty]
    set a : Fin 3 → ℝ := fun i => if i = 0 then 0 else -ρ with ha
    set b : Fin 3 → ℝ := fun _ => ρ with hb
    have hT : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, g z
        = ∫ x in Set.Icc a b, g (WithLp.toLp 2 x) := by
      have hemb : MeasurableEmbedding (WithLp.toLp 2 : (Fin 3 → ℝ) → E3) := by
        have h := (MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).measurableEmbedding
        rwa [MeasurableEquiv.coe_toLp] at h
      rw [← (PiLp.volume_preserving_toLp (Fin 3)).setIntegral_preimage_emb hemb g]
      have hae : (Set.univ.pi fun i => Set.Ioo (a i) (b i)) =ᵐ[volume] Set.Icc a b := by
        rw [volume_pi]
        exact Measure.univ_pi_Ioo_ae_eq_Icc
      rw [← setIntegral_congr_set hae]
      symm
      apply setIntegral_eq_of_subset_of_forall_diff_eq_zero
      · exact MeasurableSet.univ_pi (fun _ => measurableSet_Ioo)
      · intro x hx
        obtain ⟨h1, h2⟩ := hx
        rw [PiLp.toLp_apply] at h2
        rw [Set.mem_univ_pi]
        intro i
        have hi : |x i| < ρ := lt_of_le_of_lt (habs x i) h1
        rw [abs_lt] at hi
        by_cases h0 : i = 0
        · subst h0
          simp only [ha, hb, if_pos rfl, Set.mem_Ioo]
          exact ⟨h2, hi.2⟩
        · simp only [ha, hb, if_neg h0, Set.mem_Ioo]
          exact hi
      · intro x hx
        obtain ⟨hxO, hxS⟩ := hx
        rw [Set.mem_univ_pi] at hxO
        have h0 : 0 < x 0 := by
          have := (hxO 0).1
          simpa [ha] using this
        have hn : ρ ≤ ‖(WithLp.toLp 2 x : E3)‖ := by
          by_contra hcc
          apply hxS
          refine ⟨lt_of_not_ge hcc, ?_⟩
          show 0 < (WithLp.toLp 2 x : E3) 0
          rw [PiLp.toLp_apply]
          exact h0
        exact hg0 _ (lt_of_lt_of_le hρ₂ρ hn)
    let TL : (Fin 3 → ℝ) →L[ℝ] E3 :=
      ((PiLp.continuousLinearEquiv 2 ℝ (fun _ : Fin 3 => ℝ)).symm : (Fin 3 → ℝ) →L[ℝ] E3)
    have hTLapp : ∀ v : Fin 3 → ℝ, TL v = WithLp.toLp 2 v := fun v =>
      PiLp.continuousLinearEquiv_symm_apply 2 ℝ _ v
    have hTL : ∀ x : Fin 3 → ℝ, HasFDerivAt (fun y : Fin 3 → ℝ => (WithLp.toLp 2 y : E3)) TL x := by
      intro x
      have h := TL.hasFDerivAt (x := x)
      have hfun : (⇑TL) = fun y : Fin 3 → ℝ => (WithLp.toLp 2 y : E3) := funext hTLapp
      rwa [hfun] at h
    have hFd : ∀ x : Fin 3 → ℝ, HasFDerivAt (fun (y : Fin 3 → ℝ) (i : Fin 3) => P i (WithLp.toLp 2 y))
        (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL)) x := by
      intro x
      rw [hasFDerivAt_pi]
      intro i
      exact ((hD i) _).hasFDerivAt.comp x (hTL x)
    have hval : ∀ (x : Fin 3 → ℝ),
        ∑ i : Fin 3, (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
          (Pi.single i 1) i = g (WithLp.toLp 2 x) := by
      intro x
      refine Finset.sum_congr rfl (fun i _ => ?_)
      rw [ContinuousLinearMap.pi_apply, ContinuousLinearMap.comp_apply, hTLapp,
        EuclideanSpace.toLp_single]
      rfl
    have hcont : Continuous fun x : Fin 3 → ℝ => g (WithLp.toLp 2 x) :=
      hgc.comp (PiLp.continuous_toLp 2 _)
    have hab : a ≤ b := by
      intro i
      simp only [ha, hb]
      split_ifs <;> linarith
    have hFc : ContinuousOn (fun (y : Fin 3 → ℝ) (i : Fin 3) => P i (WithLp.toLp 2 y))
        (Set.Icc a b) :=
      (continuous_pi (fun i => (hD i).continuous.comp (PiLp.continuous_toLp 2 _))).continuousOn
    have hint : IntegrableOn (fun x : Fin 3 → ℝ => ∑ i : Fin 3,
        (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
          (Pi.single i 1) i) (Set.Icc a b) volume := by
      simp only [hval]
      exact hcont.integrableOn_Icc
    have hdiv := integral_divergence_of_hasFDerivAt_off_countable a b hab
      (fun (y : Fin 3 → ℝ) (i : Fin 3) => P i (WithLp.toLp 2 y))
      (fun x => ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
      ∅ Set.countable_empty hFc (fun x _ => hFd x) hint
    have hup : ∀ (i : Fin 3) (y : Fin 2 → ℝ), P i (WithLp.toLp 2 (i.insertNth (b i) y)) = 0 := by
      intro i y
      apply hsupp
      have h := habs (i.insertNth (b i) y) i
      rw [Fin.insertNth_apply_same] at h
      simp only [hb, abs_of_pos hρ] at h
      linarith
    have hlow : ∀ (i : Fin 3) (y : Fin 2 → ℝ), P i (WithLp.toLp 2 (i.insertNth (a i) y)) = 0 := by
      intro i y
      by_cases h0 : i = 0
      · subst h0
        have hx0 : (WithLp.toLp 2 ((0 : Fin 3).insertNth (a 0) y) : E3) 0 = 0 := by
          rw [PiLp.toLp_apply, Fin.insertNth_apply_same]
          simp [ha]
        by_cases hrr : ‖(WithLp.toLp 2 ((0 : Fin 3).insertNth (a 0) y) : E3)‖ < rr
        · exact hface _ (mem_ball_zero_iff.mpr hrr) hx0
        · exact hsupp _ _ (by linarith [not_lt.mp hrr])
      · have hai : a i = -ρ := by simp only [ha, if_neg h0]
        rw [hai]
        apply hsupp
        have h := habs (i.insertNth (-ρ) y) i
        rw [Fin.insertNth_apply_same, abs_neg, abs_of_pos hρ] at h
        linarith
    rw [hT]
    calc ∫ x in Set.Icc a b, g (WithLp.toLp 2 x)
        = ∫ x in Set.Icc a b, ∑ i : Fin 3,
            (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
              (Pi.single i 1) i :=
          setIntegral_congr_fun measurableSet_Icc (fun x _ => (hval x).symm)
      _ = 0 := by
          rw [hdiv]
          refine Finset.sum_eq_zero (fun i _ => ?_)
          rw [setIntegral_eq_zero_of_forall_eq_zero (fun y _ => hup i y),
            setIntegral_eq_zero_of_forall_eq_zero (fun y _ => hlow i y), sub_zero]
  
  have hND : ndsHalf c r = fcrHalf c (r / 2) := rfl
  have hπ0 : Continuous fun z : E3 => z 0 :=
    (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous
  have hπ0C : ContDiff ℝ ∞ fun z : E3 => z 0 :=
    (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).contDiff
  have hHopen : ∀ t, IsOpen (fcrHalf c t) := fun t =>
    Metric.isOpen_ball.inter (isOpen_lt continuous_const hπ0)
  have hHmeas : ∀ t, MeasurableSet (fcrHalf c t) := fun t => (hHopen t).measurableSet
  have hHalfmeas : MeasurableSet {x : E3 | 0 < x 0} :=
    (isOpen_lt continuous_const hπ0).measurableSet
  have hb42 : Metric.ball c (r / 4) ⊆ Metric.ball c (r / 2) :=
    Metric.ball_subset_ball (by linarith)
  have hb2r : Metric.ball c (r / 2) ⊆ Metric.ball c r :=
    Metric.ball_subset_ball (by linarith)
  have hb4r : Metric.ball c (r / 4) ⊆ Metric.ball c r := subset_trans hb42 hb2r
  have hHsub : fcrHalf c (r / 4) ⊆ fcrHalf c (r / 2) :=
    Set.inter_subset_inter_left _ hb42
  have hpdC : ∀ f : E3 → ℝ, ContDiff ℝ ∞ f → ∀ a, ContDiff ℝ ∞ (partialDeriv a f) := by
    intro f hf a
    show ContDiff ℝ ∞ (fun y => fderiv ℝ f y (e a))
    exact (hf.fderiv_right le_rfl).clm_apply contDiff_const
  have hpd_out : ∀ (ζ : E3 → ℝ) (a : Fin 3) (y : E3), y ∉ tsupport ζ → partialDeriv a ζ y = 0 := by
    intro ζ a y hy
    simp [partialDeriv, fderiv_of_notMem_tsupport ℝ hy]
  have hpd_cs : ∀ (ζ : E3 → ℝ) (a : Fin 3), HasCompactSupport ζ →
      HasCompactSupport (partialDeriv a ζ) := fun ζ a h => h.fderiv_apply ℝ (e a)
  have hpd_ts : ∀ (ζ : E3 → ℝ) (a : Fin 3), tsupport (partialDeriv a ζ) ⊆ tsupport ζ := by
    intro ζ a
    refine closure_minimal (fun y hy => ?_) (isClosed_tsupport ζ)
    by_contra h
    exact hy (hpd_out ζ a y h)
  have hprod : ∀ f : E3 → ℝ, ContDiffOn ℝ ∞ f (Metric.ball c r) → ∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ →
      ∀ (a : Fin 3), ∀ y ∈ Metric.ball c r, partialDeriv a (fun y => f y * ζ y) y =
        partialDeriv a f y * ζ y + f y * partialDeriv a ζ y := by
    intro f hf ζ hζ a y hy
    have hfd : DifferentiableAt ℝ f y :=
      (hf.contDiffAt (Metric.isOpen_ball.mem_nhds hy)).differentiableAt (by simp)
    have hζd : DifferentiableAt ℝ ζ y := (hζ.differentiable (by simp)) y
    unfold partialDeriv
    rw [show (fun y => f y * ζ y) = f * ζ from rfl, fderiv_mul hfd hζd]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  
  have hcut : ∀ f : E3 → ℝ, ContDiffOn ℝ ∞ f (Metric.ball c r) → ∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ →
      HasCompactSupport ζ → tsupport ζ ⊆ Metric.ball c r →
      ContDiff ℝ ∞ (fun y => f y * ζ y) ∧ HasCompactSupport (fun y => f y * ζ y) ∧
        tsupport (fun y => f y * ζ y) ⊆ tsupport ζ := by
    intro f hf ζ hζ hζc hζU
    refine ⟨?_, hζc.mul_left, tsupport_mul_subset_right⟩
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ Metric.ball c r
    · exact (hf.contDiffAt (Metric.isOpen_ball.mem_nhds hy)).mul hζ.contDiffAt
    · have hz : ζ =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp (fun h => hy (hζU h))
      refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [hz] with z hz'
      simp [hz']
  
  have hGL' : ∀ a, MemLp (Gr a) 2 (volume.restrict (fcrHalf c (r / 2))) := fun a => hGL a
  haveI hfin2 : IsFiniteMeasure (volume.restrict (fcrHalf c (r / 2))) := by
    rw [isFiniteMeasure_restrict]
    exact ne_top_of_le_ne_top measure_ball_lt_top.ne (measure_mono Set.inter_subset_left)
  have hGint : ∀ b, IntegrableOn (Gr b) (fcrHalf c (r / 2)) := fun b =>
    (hGL' b).integrable (by norm_num)
  have haeS : ∀ᵐ x ∂volume, x ∈ fcrHalf c (r / 4) → v x = V x :=
    (ae_restrict_iff' (hHmeas _)).mp hvV
  have hGae : ∀ b : Fin 3, ∀ᵐ x ∂(volume.restrict (fcrHalf c (r / 4))),
      Gr b x = partialDeriv b V x := by
    intro b
    have hloc : LocallyIntegrableOn (fun x => Gr b x - partialDeriv b V x)
        (fcrHalf c (r / 4)) volume :=
      ((hGint b).mono_set hHsub).locallyIntegrableOn.sub
        ((hpdC V hV b).continuous.continuousOn.locallyIntegrableOn (hHmeas _))
    have htest : ∀ φ : E3 → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ →
        tsupport φ ⊆ fcrHalf c (r / 4) →
        ∫ x, φ x • (Gr b x - partialDeriv b V x) = 0 := by
      intro φ hφ hφc hφs
      have hφ2 : tsupport φ ⊆ fcrHalf c (r / 2) := subset_trans hφs hHsub
      have h0 := hzt b φ hφ hφc (subset_trans hφ2 Set.inter_subset_left)
      have e1 : ∫ x in fcrHalf c (r / 2), v x * partialDeriv b φ x =
          ∫ x, v x * partialDeriv b φ x := by
        refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => ?_)
        have hxt : x ∉ tsupport φ := fun h => hx (hφ2 h)
        simp [hpd_out φ b x hxt]
      have e2 : ∫ x in fcrHalf c (r / 2), Gr b x * φ x = ∫ x, Gr b x * φ x := by
        refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => ?_)
        have hxt : x ∉ tsupport φ := fun h => hx (hφ2 h)
        simp [image_eq_zero_of_notMem_tsupport hxt]
      have h1 : ∫ x, v x * partialDeriv b φ x = -∫ x, Gr b x * φ x := by
        rw [← e1, ← e2]
        exact h0
      have h2 : ∫ x, v x * partialDeriv b φ x = ∫ x, V x * partialDeriv b φ x := by
        refine integral_congr_ae ?_
        filter_upwards [haeS] with x hx
        by_cases hxs : x ∈ fcrHalf c (r / 4)
        · rw [hx hxs]
        · have hxt : x ∉ tsupport φ := fun h => hxs (hφs h)
          simp [hpd_out φ b x hxt]
      have h3 : ∫ x, V x * partialDeriv b φ x = -∫ x, partialDeriv b V x * φ x :=
        integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable
          (((hpdC V hV b).continuous.mul hφ.continuous).integrable_of_hasCompactSupport
            hφc.mul_left)
          ((hV.continuous.mul (hpdC φ hφ b).continuous).integrable_of_hasCompactSupport
            (hpd_cs φ b hφc).mul_left)
          ((hV.continuous.mul hφ.continuous).integrable_of_hasCompactSupport hφc.mul_left)
          (hV.differentiable (by simp)) (hφ.differentiable (by simp))
      obtain ⟨C, hC⟩ := hφc.exists_bound_of_continuous hφ.continuous
      have hI1 : Integrable (fun x => φ x * Gr b x) := by
        have hon : IntegrableOn (fun x => φ x * Gr b x) (fcrHalf c (r / 2)) :=
          (hGint b).bdd_mul hφ.continuous.aestronglyMeasurable (ae_of_all _ hC)
        refine hon.integrable_of_forall_notMem_eq_zero ?_
        intro x hx
        have hxt : x ∉ tsupport φ := fun h => hx (hφ2 h)
        simp [image_eq_zero_of_notMem_tsupport hxt]
      have hI2 : Integrable (fun x => φ x * partialDeriv b V x) :=
        (hφ.continuous.mul (hpdC V hV b).continuous).integrable_of_hasCompactSupport
          (hφc.mul_right)
      have f1 : (fun x => φ x • (Gr b x - partialDeriv b V x)) =
          fun x => φ x * Gr b x - φ x * partialDeriv b V x := by
        funext x; rw [smul_eq_mul, mul_sub]
      rw [f1, integral_sub hI1 hI2]
      have f2 : ∫ x, φ x * Gr b x = ∫ x, Gr b x * φ x := by
        congr 1; funext x; ring
      have f3 : ∫ x, φ x * partialDeriv b V x = ∫ x, partialDeriv b V x * φ x := by
        congr 1; funext x; ring
      rw [f2, f3]
      linarith
    have hz := (hHopen _).ae_eq_zero_of_integral_contDiff_smul_eq_zero hloc htest
    refine (ae_restrict_iff' (hHmeas _)).mpr ?_
    filter_upwards [hz] with x hx hxs
    exact sub_eq_zero.mp (hx hxs)
  
  have hB : ∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ fcrHalf c (r / 4) →
      ∫ x in fcrHalf c (r / 4), (∑ a : Fin 3, (∑ b : Fin 3, A x a b * partialDeriv b V x) *
        partialDeriv a ζ x + F x * ζ x) = 0 := by
    intro ζ hζ hζc hζs
    have hζ2 : tsupport ζ ⊆ Metric.ball c (r / 2) :=
      subset_trans hζs (subset_trans Set.inter_subset_left hb42)
    have hO : ∃ O : Set E3, IsOpen O ∧ {x ∈ Metric.ball c r | x 0 = 0} ⊆ O ∧
        ∀ x ∈ O, ζ x = 0 := by
      refine ⟨(tsupport ζ)ᶜ, (isClosed_tsupport ζ).isOpen_compl, ?_, ?_⟩
      · intro x hx hxt
        have h1 : 0 < x 0 := (hζs hxt).2
        have h2 : x 0 = 0 := hx.2
        linarith
      · intro x hx
        exact image_eq_zero_of_notMem_tsupport hx
    have h0 := hweak ζ hζ hζc hζ2 hO
    rw [hND] at h0
    have hall : ∀ᵐ x ∂volume, x ∈ fcrHalf c (r / 4) → ∀ b, Gr b x = partialDeriv b V x :=
      (ae_restrict_iff' (hHmeas _)).mp (ae_all_iff.mpr hGae)
    have hout : ∀ x, x ∈ fcrHalf c (r / 2) → x ∉ fcrHalf c (r / 4) → x ∉ tsupport ζ := by
      intro x _ hxs hxt
      exact hxs (hζs hxt)
    have e1 : ∫ x in fcrHalf c (r / 2),
          (∑ a : Fin 3, ∑ b : Fin 3, A x a b * Gr b x * partialDeriv a ζ x + F x * ζ x) =
        ∫ x in fcrHalf c (r / 2), (∑ a : Fin 3, (∑ b : Fin 3, A x a b * partialDeriv b V x) *
          partialDeriv a ζ x + F x * ζ x) := by
      refine setIntegral_congr_ae (hHmeas _) ?_
      filter_upwards [hall] with x hx hxρ
      by_cases hxs : x ∈ fcrHalf c (r / 4)
      · simp only [hx hxs, Finset.sum_mul]
      · have hxt := hout x hxρ hxs
        simp [hpd_out ζ _ x hxt, image_eq_zero_of_notMem_tsupport hxt]
    have e2 : ∫ x in fcrHalf c (r / 2), (∑ a : Fin 3, (∑ b : Fin 3, A x a b * partialDeriv b V x) *
          partialDeriv a ζ x + F x * ζ x) =
        ∫ x in fcrHalf c (r / 4), (∑ a : Fin 3, (∑ b : Fin 3, A x a b * partialDeriv b V x) *
          partialDeriv a ζ x + F x * ζ x) := by
      refine setIntegral_eq_of_subset_of_forall_diff_eq_zero (hHmeas _) hHsub ?_
      intro x hx
      have hxt := hout x hx.1 hx.2
      simp [hpd_out ζ _ x hxt, image_eq_zero_of_notMem_tsupport hxt]
    rw [← e2, ← e1, h0]
  
  have hVf : ∀ a, ContDiffOn ℝ ∞ (fun y => ∑ b : Fin 3, A y a b * partialDeriv b V y)
      (Metric.ball c r) := by
    intro a
    exact ContDiffOn.sum (fun b _ => (hA a b).mul (hpdC V hV b).contDiffOn)
  
  have hdiv : ∀ Q : Fin 3 → E3 → ℝ, (∀ i, ContDiff ℝ ∞ (Q i)) → (∀ i, HasCompactSupport (Q i)) →
      (∀ x : E3, x 0 = 0 → Q 0 x = 0) →
      ∫ x in {x : E3 | 0 < x 0}, ∑ i : Fin 3, partialDeriv i (Q i) x = 0 := by
    intro Q hQ hQc hface
    obtain ⟨R, hR⟩ : ∃ R : ℝ, ∀ i, tsupport (Q i) ⊆ Metric.closedBall 0 R := by
      have hK : IsCompact (⋃ i, tsupport (Q i)) := isCompact_iUnion (fun i => hQc i)
      obtain ⟨R, hR⟩ := (Metric.isBounded_iff_subset_closedBall (0 : E3)).mp hK.isBounded
      exact ⟨R, fun i => subset_trans (Set.subset_iUnion (fun i => tsupport (Q i)) i) hR⟩
    have hnot : ∀ i (z : E3), R < ‖z‖ → z ∉ tsupport (Q i) := by
      intro i z hz h
      have h' := hR i h
      rw [mem_closedBall_zero_iff] at h'
      linarith
    have h1 := hhalf (R + 2) (R + 1) (R + 2) (by linarith) (by linarith) Q
      (fun i => (hQ i).contDiffOn)
      (fun i z hz => image_eq_zero_of_notMem_tsupport (hnot i z (by linarith)))
      (fun z _ hz => hface z hz)
    refine (setIntegral_eq_of_subset_of_forall_diff_eq_zero hHalfmeas ?_ ?_).trans h1
    · intro z hz
      exact hz.2
    · intro z hz
      have hn : R + 2 ≤ ‖z‖ := by
        by_contra h
        exact hz.2 ⟨lt_of_not_ge h, hz.1⟩
      exact Finset.sum_eq_zero (fun i _ => hpd_out (Q i) i z (hnot i z (by linarith)))
  
  have hd0 : ∀ W : E3 → ℝ, ContDiff ℝ ∞ W → HasCompactSupport W →
      (∀ x : E3, x 0 = 0 → W x = 0) →
      ∫ x in {x : E3 | 0 < x 0}, partialDeriv 0 W x = 0 := by
    intro W hW hWc hWf
    have h := hdiv (fun i x => (if i = 0 then (1 : ℝ) else 0) * W x)
      (fun i => contDiff_const.mul hW) (fun i => hWc.mul_left)
      (fun x hx => by simp [hWf x hx])
    refine (setIntegral_congr_fun hHalfmeas (fun x _ => ?_)).trans h
    have hone : ∀ i : Fin 3, partialDeriv i (fun x => (if i = 0 then (1 : ℝ) else 0) * W x) x =
        (if i = 0 then (1 : ℝ) else 0) * partialDeriv i W x := by
      intro i
      unfold partialDeriv
      rw [fderiv_const_mul ((hW.differentiable (by simp)) x)]
      simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
    show partialDeriv 0 W x =
      ∑ i : Fin 3, partialDeriv i (fun x => (if i = 0 then (1 : ℝ) else 0) * W x) x
    rw [Fin.sum_univ_three, hone, hone, hone]
    simp
  
  have hid : ∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      tsupport ζ ⊆ Metric.ball c (r / 4) →
      ∫ x in {x : E3 | 0 < x 0}, partialDeriv 0 (fun y => V y * ζ y) x = 0 := by
    intro ζ hζ hζc hζs
    have h1 := hzt 0 ζ hζ hζc (subset_trans hζs hb42)
    have hdiff : ∀ x, x ∈ fcrHalf c (r / 2) \ fcrHalf c (r / 4) → x ∉ tsupport ζ :=
      fun x hx h => hx.2 ⟨hζs h, hx.1.2⟩
    have e1 : ∫ x in fcrHalf c (r / 2), v x * partialDeriv 0 ζ x =
        ∫ x in fcrHalf c (r / 4), v x * partialDeriv 0 ζ x := by
      refine setIntegral_eq_of_subset_of_forall_diff_eq_zero (hHmeas _) hHsub ?_
      intro x hx
      simp [hpd_out ζ 0 x (hdiff x hx)]
    have e2 : ∫ x in fcrHalf c (r / 2), Gr 0 x * ζ x =
        ∫ x in fcrHalf c (r / 4), Gr 0 x * ζ x := by
      refine setIntegral_eq_of_subset_of_forall_diff_eq_zero (hHmeas _) hHsub ?_
      intro x hx
      simp [image_eq_zero_of_notMem_tsupport (hdiff x hx)]
    have e3 : ∫ x in fcrHalf c (r / 4), v x * partialDeriv 0 ζ x =
        ∫ x in fcrHalf c (r / 4), V x * partialDeriv 0 ζ x := by
      refine setIntegral_congr_ae (hHmeas _) ?_
      filter_upwards [haeS] with x hx hxs
      rw [hx hxs]
    have hG0 : ∀ᵐ x ∂volume, x ∈ fcrHalf c (r / 4) → Gr 0 x = partialDeriv 0 V x :=
      (ae_restrict_iff' (hHmeas _)).mp (hGae 0)
    have e4 : ∫ x in fcrHalf c (r / 4), Gr 0 x * ζ x =
        ∫ x in fcrHalf c (r / 4), partialDeriv 0 V x * ζ x := by
      refine setIntegral_congr_ae (hHmeas _) ?_
      filter_upwards [hG0] with x hx hxs
      rw [hx hxs]
    have hI1 : IntegrableOn (fun x => V x * partialDeriv 0 ζ x) (fcrHalf c (r / 4)) :=
      ((hV.continuous.mul (hpdC ζ hζ 0).continuous).integrable_of_hasCompactSupport
        (hpd_cs ζ 0 hζc).mul_left).integrableOn
    have hI2 : IntegrableOn (fun x => partialDeriv 0 V x * ζ x) (fcrHalf c (r / 4)) :=
      (((hpdC V hV 0).continuous.mul hζ.continuous).integrable_of_hasCompactSupport
        hζc.mul_left).integrableOn
    have hsum : ∫ x in fcrHalf c (r / 4), (V x * partialDeriv 0 ζ x + partialDeriv 0 V x * ζ x)
        = 0 := by
      rw [integral_add hI1 hI2]
      linarith
    have hprodG : ∀ y, partialDeriv 0 (fun y => V y * ζ y) y =
        V y * partialDeriv 0 ζ y + partialDeriv 0 V y * ζ y := by
      intro y
      unfold partialDeriv
      rw [show (fun y => V y * ζ y) = V * ζ from rfl,
        fderiv_mul ((hV.differentiable (by simp)) y) ((hζ.differentiable (by simp)) y)]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    have h4 : ∫ x in fcrHalf c (r / 4), partialDeriv 0 (fun y => V y * ζ y) x = 0 :=
      (setIntegral_congr_fun (hHmeas _) (fun x _ => hprodG x)).trans hsum
    rw [setIntegral_eq_of_subset_of_forall_diff_eq_zero hHalfmeas
      (Set.inter_subset_right : fcrHalf c (r / 4) ⊆ {x : E3 | 0 < x 0})]
    · exact h4
    · intro x hx
      have hxt : x ∉ tsupport ζ := fun h => hx.2 ⟨hζs h, hx.1⟩
      exact hpd_out _ 0 x (fun h => hxt (tsupport_mul_subset_right h))
  
  have hInt : ∀ (P : Fin 3 → E3 → ℝ), (∀ a, ContDiffOn ℝ ∞ (P a) (Metric.ball c r)) →
      (∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ → tsupport ζ ⊆ fcrHalf c (r / 4) →
        ∫ x in fcrHalf c (r / 4), (∑ a : Fin 3, P a x * partialDeriv a ζ x + F x * ζ x) = 0) →
      ∀ x ∈ Metric.ball c (r / 4), 0 ≤ x 0 → ∑ a : Fin 3, partialDeriv a (P a) x = F x := by
    intro P hP hint
    have hdP : ∀ a, ContDiffOn ℝ ∞ (partialDeriv a (P a)) (Metric.ball c r) := by
      intro a
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (P a) y (e a)) (Metric.ball c r)
      exact ((hP a).fderiv_of_isOpen Metric.isOpen_ball le_rfl).clm_apply contDiffOn_const
    have hgC : ContDiffOn ℝ ∞ (fun x => F x - ∑ a : Fin 3, partialDeriv a (P a) x)
        (Metric.ball c r) :=
      hF.sub (ContDiffOn.sum (fun a _ => hdP a))
    have htest : ∀ φ : E3 → ℝ, ContDiff ℝ ∞ φ → HasCompactSupport φ →
        tsupport φ ⊆ fcrHalf c (r / 4) →
        ∫ x, φ x • (F x - ∑ a : Fin 3, partialDeriv a (P a) x) = 0 := by
      intro φ hφ hφc hφs
      have hφρ : tsupport φ ⊆ Metric.ball c r :=
        subset_trans hφs (subset_trans Set.inter_subset_left hb4r)
      have hI_dVφ : ∀ a, Integrable (fun x => partialDeriv a (P a) x * φ x) := by
        intro a
        obtain ⟨h1, h2, -⟩ := hcut _ (hdP a) φ hφ hφc hφρ
        exact h1.continuous.integrable_of_hasCompactSupport h2
      have hI_Vdφ : ∀ a, Integrable (fun x => P a x * partialDeriv a φ x) := by
        intro a
        obtain ⟨h1, h2, -⟩ := hcut _ (hP a) _ (hpdC φ hφ a) (hpd_cs φ a hφc)
          (subset_trans (hpd_ts φ a) hφρ)
        exact h1.continuous.integrable_of_hasCompactSupport h2
      have hI_Fφ : Integrable (fun x => F x * φ x) := by
        obtain ⟨h1, h2, -⟩ := hcut _ hF φ hφ hφc hφρ
        exact h1.continuous.integrable_of_hasCompactSupport h2
      have hibp : ∀ a, ∫ x, partialDeriv a (P a) x * φ x = -∫ x, P a x * partialDeriv a φ x := by
        intro a
        obtain ⟨hPC, hPc, hPs⟩ := hcut _ (hP a) φ hφ hφc hφρ
        have hprod' : ∀ y, partialDeriv a (fun y => P a y * φ y) y =
            partialDeriv a (P a) y * φ y + P a y * partialDeriv a φ y := by
          intro y
          by_cases hy : y ∈ Metric.ball c r
          · exact hprod (P a) (hP a) φ hφ a y hy
          · have hyt : y ∉ tsupport φ := fun h => hy (hφρ h)
            have hyP : y ∉ tsupport (fun y => P a y * φ y) := fun h => hyt (hPs h)
            rw [hpd_out _ a y hyP, hpd_out φ a y hyt, image_eq_zero_of_notMem_tsupport hyt]
            ring
        have h0 : ∫ x, partialDeriv a (fun y => P a y * φ y) x = 0 := by
          have hI : Integrable (fun x => partialDeriv a (fun y => P a y * φ y) x) :=
            (hpdC _ hPC a).continuous.integrable_of_hasCompactSupport (hpd_cs _ a hPc)
          have h := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := volume)
            (f := fun _ : E3 => (1 : ℝ)) (g := fun y => P a y * φ y) (v := e a)
            (by simp) (by simpa [partialDeriv] using hI)
            (by simpa using hPC.continuous.integrable_of_hasCompactSupport hPc)
            (differentiable_const _) (hPC.differentiable (by simp))
          simpa [partialDeriv] using h
        have h1 : ∫ x, partialDeriv a (fun y => P a y * φ y) x =
            (∫ x, partialDeriv a (P a) x * φ x) + ∫ x, P a x * partialDeriv a φ x := by
          rw [← integral_add (hI_dVφ a) (hI_Vdφ a)]
          exact integral_congr_ae (ae_of_all _ hprod')
        linarith
      have hwhole : ∫ x, (∑ a : Fin 3, P a x * partialDeriv a φ x + F x * φ x) = 0 := by
        rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := fcrHalf c (r / 4))]
        · exact hint φ hφ hφc hφs
        · intro x hx
          have hxt : x ∉ tsupport φ := fun h => hx (hφs h)
          simp [hpd_out φ _ x hxt, image_eq_zero_of_notMem_tsupport hxt]
      rw [integral_add (integrable_finset_sum _ (fun a _ => hI_Vdφ a)) hI_Fφ,
        integral_finset_sum _ (fun a _ => hI_Vdφ a)] at hwhole
      have e1 : (fun x => φ x • (F x - ∑ a : Fin 3, partialDeriv a (P a) x)) =
          fun x => F x * φ x - ∑ a : Fin 3, partialDeriv a (P a) x * φ x := by
        funext x
        rw [smul_eq_mul, mul_sub, Finset.mul_sum]
        congr 1
        · ring
        · exact Finset.sum_congr rfl (fun a _ => by ring)
      rw [e1, integral_sub hI_Fφ (integrable_finset_sum _ (fun a _ => hI_dVφ a)),
        integral_finset_sum _ (fun a _ => hI_dVφ a)]
      simp only [hibp, Finset.sum_neg_distrib]
      linarith
    have hloc : LocallyIntegrableOn (fun x => F x - ∑ a : Fin 3, partialDeriv a (P a) x)
        (fcrHalf c (r / 4)) volume :=
      (hgC.continuousOn.mono (subset_trans Set.inter_subset_left hb4r)).locallyIntegrableOn
        (hHmeas _)
    have hz := (hHopen _).ae_eq_zero_of_integral_contDiff_smul_eq_zero hloc htest
    have hzero : ∀ y ∈ fcrHalf c (r / 4), F y - ∑ a : Fin 3, partialDeriv a (P a) y = 0 := by
      have hae' : (fun x => F x - ∑ a : Fin 3, partialDeriv a (P a) x)
          =ᵐ[volume.restrict (fcrHalf c (r / 4))] (fun _ => (0 : ℝ)) :=
        (ae_restrict_iff' (hHmeas _)).mpr hz
      exact Measure.eqOn_open_of_ae_eq hae' (hHopen _)
        (hgC.continuousOn.mono (subset_trans Set.inter_subset_left hb4r)) continuousOn_const
    intro x hx hx0
    have hgat : ContinuousAt (fun x => F x - ∑ a : Fin 3, partialDeriv a (P a) x) x :=
      hgC.continuousOn.continuousAt (Metric.isOpen_ball.mem_nhds (hb4r hx))
    have hpath : Tendsto (fun t : ℝ => x + t • e 0) (𝓝[>] 0) (𝓝 x) := by
      have hc' : Continuous (fun t : ℝ => x + t • e 0) :=
        continuous_const.add (continuous_id.smul continuous_const)
      have h := hc'.tendsto 0
      simp only [zero_smul, add_zero] at h
      exact h.mono_left nhdsWithin_le_nhds
    have hT := hgat.tendsto.comp hpath
    have hε : 0 < r / 4 - dist x c := by
      have := Metric.mem_ball.mp hx
      linarith
    have hev : ∀ᶠ t in 𝓝[>] (0 : ℝ),
        ((fun x => F x - ∑ a : Fin 3, partialDeriv a (P a) x) ∘ (fun t : ℝ => x + t • e 0)) t
          = 0 := by
      filter_upwards [Ioo_mem_nhdsGT hε] with t ht
      apply hzero
      constructor
      · rw [Metric.mem_ball, dist_eq_norm]
        calc ‖x + t • e 0 - c‖ = ‖(x - c) + t • e 0‖ := by congr 1; abel
          _ ≤ ‖x - c‖ + ‖t • e 0‖ := norm_add_le _ _
          _ = ‖x - c‖ + t := by
            rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one,
              Real.norm_of_nonneg ht.1.le]
          _ < r / 4 := by rw [← dist_eq_norm]; linarith [ht.2]
      · show 0 < (x + t • e 0) 0
        simp [EuclideanSpace.single_apply]
        linarith [ht.1]
    have hlim := tendsto_nhds_unique hT (tendsto_const_nhds.congr' (hev.mono fun t h => h.symm))
    have : F x - ∑ a : Fin 3, partialDeriv a (P a) x = 0 := hlim
    linarith
  
  have hface : ∀ x ∈ Metric.ball c (r / 4), x 0 = 0 → V x = 0 := by
    intro xs hxs hxs0
    by_contra hσne
    obtain ⟨σ, hσ⟩ : ∃ σ : ℝ, σ = V xs := ⟨_, rfl⟩
    rw [← hσ] at hσne
    
    have hV0c : ContinuousAt V xs := hV.continuous.continuousAt
    have hev : ∀ᶠ y in 𝓝 xs, 0 < σ * V y := by
      have ht : Tendsto (fun y => σ * V y) (𝓝 xs) (𝓝 (σ * σ)) := by
        have := (tendsto_const_nhds (x := σ)).mul hV0c.tendsto
        rwa [← hσ] at this
      exact ht.eventually (lt_mem_nhds (mul_self_pos.mpr hσne))
    obtain ⟨δ₀, hδ₀, hball⟩ := Metric.eventually_nhds_iff.mp hev
    have hd : 0 < r / 4 - dist xs c := by
      have := Metric.mem_ball.mp hxs
      linarith
    obtain ⟨δ, hδdef⟩ : ∃ δ : ℝ, δ = min δ₀ (r / 4 - dist xs c) / 3 := ⟨_, rfl⟩
    have hδ : 0 < δ := by rw [hδdef]; exact div_pos (lt_min hδ₀ hd) (by norm_num)
    have hδδ₀ : δ < δ₀ := by
      have := min_le_left δ₀ (r / 4 - dist xs c)
      rw [hδdef]; linarith
    have hδd : δ < r / 4 - dist xs c := by
      have := min_le_right δ₀ (r / 4 - dist xs c)
      rw [hδdef]; linarith
    
    let β : ContDiffBump xs := ⟨δ / 2, δ, by linarith, by linarith⟩
    have hβC : ContDiff ℝ ∞ β := β.contDiff
    have hβc : HasCompactSupport β := β.hasCompactSupport
    have hβts : tsupport β ⊆ Metric.ball c (r / 4) := by
      rw [β.tsupport_eq]
      intro y hy
      have hy' : dist y xs ≤ δ := hy
      rw [Metric.mem_ball]
      have := dist_triangle y xs c
      linarith
    have hβnn : ∀ y, 0 ≤ β y := fun y => β.nonneg
    have hβsupp : ∀ y, β y ≠ 0 → dist y xs < δ := by
      intro y hy
      have hm : y ∈ Function.support β := hy
      rw [β.support_eq] at hm
      exact hm
    have hβpos : ∀ y, dist y xs < δ → 0 < β y := by
      intro y hy
      have hm : y ∈ Function.support β := by rw [β.support_eq]; exact hy
      exact lt_of_le_of_ne (hβnn y) (Ne.symm hm)
    
    have hPC : ContDiff ℝ ∞ (fun y => V y * β y) := hV.mul hβC
    have hPc : HasCompactSupport (fun y => V y * β y) := hβc.mul_left
    have hσψnn : ∀ y, 0 ≤ σ * (V y * β y) := by
      intro y
      by_cases hy : β y = 0
      · rw [hy]; ring_nf; exact le_refl _
      · have h1 := hball (lt_trans (hβsupp y hy) hδδ₀)
        rw [← mul_assoc]
        exact mul_nonneg h1.le (hβnn y)
    have hσψpos : ∀ y, dist y xs < δ → 0 < σ * (V y * β y) := by
      intro y hy
      rw [← mul_assoc]
      exact mul_pos (hball (lt_trans hy hδδ₀)) (hβpos y hy)
    
    obtain ⟨lam, hlam⟩ : ∃ f : ℝ → ℝ, f = fun t => 1 - Real.smoothTransition (t ^ 2 / δ ^ 2) :=
      ⟨_, rfl⟩
    have hlamC : ContDiff ℝ ∞ lam := by
      rw [hlam]
      exact contDiff_const.sub (Real.smoothTransition.contDiff.comp
        ((contDiff_id.pow 2).div_const _))
    have hlam0 : lam 0 = 1 := by
      rw [hlam]
      simp only
      rw [show (0 : ℝ) ^ 2 / δ ^ 2 = 0 by ring, Real.smoothTransition.zero_of_nonpos le_rfl]
      ring
    have hlamδ : ∀ t, δ ≤ |t| → lam t = 0 := by
      intro t ht
      rw [hlam]
      simp only
      have h1 : δ ^ 2 ≤ t ^ 2 := by
        rw [← sq_abs t]
        exact pow_le_pow_left₀ hδ.le ht 2
      have h2 : 1 ≤ t ^ 2 / δ ^ 2 := by
        rw [le_div_iff₀ (by positivity)]
        linarith
      rw [Real.smoothTransition.one_of_one_le h2]
      ring
    have hlamD : ∀ t, deriv lam t =
        -(deriv Real.smoothTransition (t ^ 2 / δ ^ 2) * (2 * t / δ ^ 2)) := by
      intro t
      have h1 : HasDerivAt (fun t : ℝ => t ^ 2 / δ ^ 2) (2 * t / δ ^ 2) t := by
        have := (hasDerivAt_pow 2 t).div_const (δ ^ 2)
        simpa using this
      have h2 : HasDerivAt Real.smoothTransition (deriv Real.smoothTransition (t ^ 2 / δ ^ 2))
          (t ^ 2 / δ ^ 2) :=
        ((Real.smoothTransition.contDiff (n := 1)).differentiable (by simp) _).hasDerivAt
      have h3 := (h2.comp t h1).const_sub 1
      rw [hlam]
      exact h3.deriv
    have hdnp : ∀ t, 0 ≤ t → deriv lam t ≤ 0 := by
      intro t ht
      rw [hlamD t]
      have h1 : 0 ≤ deriv Real.smoothTransition (t ^ 2 / δ ^ 2) :=
        Real.smoothTransition.monotone.deriv_nonneg
      have h2 : 0 ≤ 2 * t / δ ^ 2 := by positivity
      have := mul_nonneg h1 h2
      linarith
    have hdcont : Continuous (deriv lam) := hlamC.continuous_deriv (by simp)
    obtain ⟨t₁, ht₁, ht₁d⟩ := exists_deriv_eq_slope lam hδ hlamC.continuous.continuousOn
      (hlamC.differentiable (by simp)).differentiableOn
    have ht₁neg : deriv lam t₁ < 0 := by
      rw [ht₁d, hlam0, hlamδ δ (le_of_eq (abs_of_pos hδ).symm)]
      have : (0 - 1) / (δ - 0) = -(1 / δ) := by ring
      rw [this]
      have : 0 < 1 / δ := by positivity
      linarith
    
    obtain ⟨pr, hpr⟩ : ∃ p : E3 → E3, p = fun x => x - (x 0) • e 0 := ⟨_, rfl⟩
    have hprC : ContDiff ℝ ∞ pr := by
      rw [hpr]
      exact contDiff_id.sub (hπ0C.smul contDiff_const)
    have hcoord : ∀ (x : E3) (t : ℝ), (x + t • e 0) 0 = x 0 + t := by
      intro x t
      simp [EuclideanSpace.single_apply]
    have hpr_face : ∀ x : E3, x 0 = 0 → pr x = x := by
      intro x hx
      rw [hpr]
      simp [hx]
    have hpr_line : ∀ (x : E3) (t : ℝ), pr (x + t • e 0) = pr x := by
      intro x t
      rw [hpr]
      simp only
      rw [hcoord, add_smul]
      abel
    have hpr_dist : ∀ x : E3, ‖x - xs‖ ≤ ‖pr x - xs‖ + |x 0| := by
      intro x
      have : x - xs = (pr x - xs) + (x 0) • e 0 := by rw [hpr]; simp only; abel
      rw [this]
      refine (norm_add_le _ _).trans (le_of_eq ?_)
      rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs]
    
    obtain ⟨K, hK⟩ : ∃ K : E3 → ℝ, K = fun x => lam (x 0) * (V (pr x) * β (pr x)) :=
      ⟨_, rfl⟩
    have hKC : ContDiff ℝ ∞ K := by
      rw [hK]
      exact (hlamC.comp hπ0C).mul (hPC.comp hprC)
    have hKc : HasCompactSupport K := by
      refine HasCompactSupport.intro (isCompact_closedBall xs (2 * δ)) ?_
      intro x hx
      rw [hK]
      simp only
      by_cases h0 : δ ≤ |x 0|
      · rw [hlamδ _ h0, zero_mul]
      · by_cases h1 : β (pr x) = 0
        · rw [h1, mul_zero, mul_zero]
        · exfalso
          apply hx
          rw [Metric.mem_closedBall, dist_eq_norm]
          have h2 := hβsupp _ h1
          rw [dist_eq_norm] at h2
          have := hpr_dist x
          push_neg at h0
          linarith
    have hK0 : ∀ x, partialDeriv 0 K x = deriv lam (x 0) * (V (pr x) * β (pr x)) := by
      intro x
      have hl : HasDerivAt (fun t : ℝ => x + t • e 0) (e 0) 0 := by
        simpa using ((hasDerivAt_id (0 : ℝ)).smul_const (e 0)).const_add x
      have h1 : HasDerivAt (K ∘ fun t : ℝ => x + t • e 0) (fderiv ℝ K x (e 0)) 0 :=
        HasFDerivAt.comp_hasDerivAt_of_eq 0 ((hKC.differentiable (by simp)) x).hasFDerivAt hl
          (by simp)
      have h2 : HasDerivAt (K ∘ fun t : ℝ => x + t • e 0)
          (deriv lam (x 0) * (V (pr x) * β (pr x))) 0 := by
        have hfun : (K ∘ fun t : ℝ => x + t • e 0) =
            fun t => lam (x 0 + t) * (V (pr x) * β (pr x)) := by
          funext t
          simp only [Function.comp, hK, hcoord, hpr_line]
        rw [hfun]
        have h3 : HasDerivAt (fun t => lam (x 0 + t)) (deriv lam (x 0)) 0 := by
          have := ((hlamC.differentiable (by simp)) (x 0 + 0)).hasDerivAt.comp_const_add (x 0) 0
          simpa using this
        exact h3.mul_const _
      exact h1.unique h2
    
    have hWC : ContDiff ℝ ∞ (fun x => V x * β x - K x) := hPC.sub hKC
    have hWc : HasCompactSupport (fun x => V x * β x - K x) := hPc.sub hKc
    have hWface : ∀ x : E3, x 0 = 0 → (fun x => V x * β x - K x) x = 0 := by
      intro x hx
      simp only [hK, hx, hlam0, hpr_face x hx]
      ring
    have hW := hd0 _ hWC hWc hWface
    have hWpt : ∀ x, partialDeriv 0 (fun x => V x * β x - K x) x =
        partialDeriv 0 (fun y => V y * β y) x - partialDeriv 0 K x := by
      intro x
      unfold partialDeriv
      have hd1 : DifferentiableAt ℝ (fun y => V y * β y) x := (hPC.differentiable (by simp)) x
      have hd2 : DifferentiableAt ℝ K x := (hKC.differentiable (by simp)) x
      rw [show (fun x => V x * β x - K x) = (fun y => V y * β y) - K from rfl,
        fderiv_sub hd1 hd2]
      simp only [ContinuousLinearMap.sub_apply]
    have hIP : Integrable (partialDeriv 0 (fun y => V y * β y)) :=
      (hpdC _ hPC 0).continuous.integrable_of_hasCompactSupport (hpd_cs _ 0 hPc)
    have hIK : Integrable (partialDeriv 0 K) :=
      (hpdC _ hKC 0).continuous.integrable_of_hasCompactSupport (hpd_cs _ 0 hKc)
    have hsplit : (∫ x in {x : E3 | 0 < x 0}, partialDeriv 0 (fun y => V y * β y) x) -
        ∫ x in {x : E3 | 0 < x 0}, partialDeriv 0 K x = 0 := by
      rw [← integral_sub hIP.integrableOn hIK.integrableOn]
      exact (setIntegral_congr_fun hHalfmeas (fun x _ => (hWpt x).symm)).trans hW
    have hD3 : ∫ x in {x : E3 | 0 < x 0}, partialDeriv 0 (fun y => V y * β y) x = 0 :=
      hid β hβC hβc hβts
    have hD7 : ∫ x in {x : E3 | 0 < x 0}, -(σ * partialDeriv 0 K x) = 0 := by
      rw [integral_neg, integral_const_mul]
      have : ∫ x in {x : E3 | 0 < x 0}, partialDeriv 0 K x = 0 := by linarith
      rw [this]; ring
    
    have hnn : 0 ≤ᵐ[volume.restrict {x : E3 | 0 < x 0}]
        fun x => -(σ * partialDeriv 0 K x) := by
      refine ae_restrict_of_forall_mem hHalfmeas (fun x hx => ?_)
      show 0 ≤ -(σ * partialDeriv 0 K x)
      rw [hK0 x]
      have h1 := hdnp (x 0) (le_of_lt hx)
      have h2 := hσψnn (pr x)
      have : -(σ * (deriv lam (x 0) * (V (pr x) * β (pr x)))) =
          (-deriv lam (x 0)) * (σ * (V (pr x) * β (pr x))) := by ring
      rw [this]
      exact mul_nonneg (by linarith) h2
    have hpos : 0 < ∫ x in {x : E3 | 0 < x 0}, -(σ * partialDeriv 0 K x) := by
      rw [setIntegral_pos_iff_support_of_nonneg_ae hnn (hIK.const_mul σ).neg.integrableOn]
      obtain ⟨O, hO⟩ : ∃ O : Set E3,
          O = {x : E3 | deriv lam (x 0) < 0} ∩ {x : E3 | dist (pr x) xs < δ} ∩
            {x : E3 | 0 < x 0} :=
        ⟨_, rfl⟩
      have hOo : IsOpen O := by
        rw [hO]
        refine ((isOpen_lt (hdcont.comp hπ0) continuous_const).inter
          (isOpen_lt (hprC.continuous.dist continuous_const) continuous_const)).inter
          (isOpen_lt continuous_const hπ0)
      have hOne : O.Nonempty := by
        refine ⟨xs + t₁ • e 0, ?_⟩
        rw [hO]
        refine ⟨⟨?_, ?_⟩, ?_⟩
        · show deriv lam ((xs + t₁ • e 0) 0) < 0
          rw [hcoord, hxs0, zero_add]; exact ht₁neg
        · show dist (pr (xs + t₁ • e 0)) xs < δ
          rw [hpr_line, hpr_face xs hxs0, dist_self]; exact hδ
        · show 0 < (xs + t₁ • e 0) 0
          rw [hcoord, hxs0, zero_add]; exact ht₁.1
      have hOsub : O ⊆ Function.support (fun x => -(σ * partialDeriv 0 K x)) ∩
          {x : E3 | 0 < x 0} := by
        intro x hx
        rw [hO] at hx
        obtain ⟨⟨h1, h2⟩, h3⟩ := hx
        refine ⟨?_, h3⟩
        show -(σ * partialDeriv 0 K x) ≠ 0
        rw [hK0 x]
        have h4 := hσψpos (pr x) h2
        have h1' : deriv lam (x 0) < 0 := h1
        have : -(σ * (deriv lam (x 0) * (V (pr x) * β (pr x)))) =
            (-deriv lam (x 0)) * (σ * (V (pr x) * β (pr x))) := by ring
        rw [this]
        exact ne_of_gt (mul_pos (by linarith) h4)
      exact lt_of_lt_of_le (hOo.measure_pos volume hOne) (measure_mono hOsub)
    linarith
  
  have heq := hInt (fun a y => ∑ b : Fin 3, A y a b * partialDeriv b V y) hVf hB
  exact ⟨fun x hx hx0 => heq x hx hx0, hface⟩

theorem flat_dirichlet_regularity (c : E3) (r : ℝ) (hr : 0 < r) (hc : c 0 = 0)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => A x a b) (Metric.ball c r))
    (hAs : ∀ x ∈ Metric.ball c r, ∀ a b : Fin 3, A x a b = A x b a)
    (hApos : ∀ x ∈ Metric.ball c r, (A x).PosDef)
    (F : E3 → ℝ) (hF : ContDiffOn ℝ ∞ F (Metric.ball c r))
    (v : E3 → ℝ) (Gr : Fin 3 → E3 → ℝ) (vn : ℕ → E3 → ℝ)
    (hvn : ∀ m, ContDiffOn ℝ ∞ (vn m) (Metric.ball c r))
    (hvz : ∀ m, ∃ O : Set E3, IsOpen O ∧ {x ∈ Metric.ball c r | x 0 = 0} ⊆ O ∧
      ∀ x ∈ O, vn m x = 0)
    (hvL : MemLp v 2 (volume.restrict (ndsHalf c r)))
    (hGL : ∀ a, MemLp (Gr a) 2 (volume.restrict (ndsHalf c r)))
    (hv0 : Tendsto (fun m => ∫ x in ndsHalf c r, (vn m x - v x) ^ 2) atTop (𝓝 0))
    (hv1 : ∀ a, Tendsto (fun m => ∫ x in ndsHalf c r,
      (partialDeriv a (vn m) x - Gr a x) ^ 2) atTop (𝓝 0))
    (hweak : ∀ ζ : E3 → ℝ, ContDiff ℝ ∞ ζ → HasCompactSupport ζ →
      tsupport ζ ⊆ Metric.ball c (r / 2) →
      (∃ O : Set E3, IsOpen O ∧ {x ∈ Metric.ball c r | x 0 = 0} ⊆ O ∧ ∀ x ∈ O, ζ x = 0) →
      ∫ x in ndsHalf c r,
        (∑ a : Fin 3, ∑ b : Fin 3, A x a b * Gr b x * partialDeriv a ζ x + F x * ζ x) = 0) :
    ∃ v' : E3 → ℝ, ContDiffOn ℝ ∞ v' (Metric.ball c (r / 4)) ∧
      (∀ᵐ x ∂(volume.restrict (Metric.ball c (r / 4) ∩ {x : E3 | 0 < x 0})), v x = v' x) ∧
      (∀ x ∈ Metric.ball c (r / 4), 0 ≤ x 0 →
        ∑ a : Fin 3, partialDeriv a (fun y => ∑ b : Fin 3, A y a b * partialDeriv b v' y) x = F x) ∧
      (∀ x ∈ Metric.ball c (r / 4), x 0 = 0 → v' x = 0) :=
by
  have hzt := fdr_zero_trace_limit c r hr v Gr vn hvn hvz hvL hGL hv0 hv1
  have hH : ndsHalf c r = fcrHalf c (r / 2) := rfl
  have heq : fdrWeakEq c (r / 2) (fun a x => ∑ b : Fin 3, A x a b * Gr b x) F := by
    intro ζ h1 h2 h3 hO
    obtain ⟨O', hO'o, hO'f, hO'z⟩ := hO
    have hOo : IsOpen (O' ∪ (tsupport ζ)ᶜ) := hO'o.union (isClosed_tsupport ζ).isOpen_compl
    have hOf : {x ∈ Metric.ball c r | x 0 = 0} ⊆ O' ∪ (tsupport ζ)ᶜ := by
      intro x hx
      by_cases hxs : x ∈ tsupport ζ
      · exact Or.inl (hO'f ⟨h3 hxs, hx.2⟩)
      · exact Or.inr hxs
    have hOz : ∀ x ∈ O' ∪ (tsupport ζ)ᶜ, ζ x = 0 := by
      intro x hx
      rcases hx with hx | hx
      · exact hO'z x hx
      · by_contra hne
        exact hx (subset_tsupport ζ hne)
    have h := hweak ζ h1 h2 h3 ⟨_, hOo, hOf, hOz⟩
    rw [hH] at h
    rw [← h]
    refine integral_congr_ae (Filter.Eventually.of_forall fun x => ?_)
    simp only [Finset.sum_mul]
  have hreg := fdr_halfball_jets c (r / 2) r (3 * r / 8) hc (by linarith) (by linarith)
    (by linarith) A hA hAs hApos F hF v Gr hvL hGL hzt heq
  obtain ⟨V, hV, hae⟩ := fcr_smooth_representative c (3 * r / 8) (r / 4) (by linarith)
    (by linarith) v hreg
  obtain ⟨h3, h4⟩ := fdr_weak_to_strong_face c r hr hc A hA F hF v V Gr hV hGL hvL hae hzt hweak
  exact ⟨V, hV.contDiffOn, hae, h3, h4⟩

theorem lapLoc_div_form (U : Set E3) (hU : IsOpen U) (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => G x i j) U)
    (hsymm : ∀ (x : E3) (i j : Fin 3), G x i j = G x j i)
    (hpos : ∀ x ∈ U, (G x).PosDef) (v : E3 → ℝ) (hv : ContDiffOn ℝ ∞ v U) (x : E3) (hx : x ∈ U) :
    ∑ a : Fin 3, partialDeriv a (fun y => ∑ b : Fin 3,
        Real.sqrt (G y).det * (G y)⁻¹ a b * partialDeriv b v y) x =
      Real.sqrt (G x).det * lapLoc G v x :=
by
  classical
  
  have hUx : U ∈ 𝓝 x := hU.mem_nhds hx
  have hdet : 0 < (G x).det := (hpos x hx).det_pos
  have hGd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun z => G z a b) x := fun a b =>
    ((hG a b).differentiableOn (by simp)).differentiableAt hUx
  have hpd' : ∀ a : Fin 3, DifferentiableAt ℝ (partialDeriv a v) x := by
    intro a
    have h1 : ContDiffAt ℝ ∞ v x := hv.contDiffAt hUx
    have h2 : ContDiffAt ℝ 1 (fderiv ℝ v) x :=
      ((contDiffAt_infty.1 h1) 2).fderiv_right (m := 1) (by norm_num)
    have h3 : DifferentiableAt ℝ (fderiv ℝ v) x := h2.differentiableAt one_ne_zero
    exact h3.clm_apply (differentiableAt_const (e a))
  have hsymI : ∀ a b : Fin 3, (G x)⁻¹ a b = (G x)⁻¹ b a := by
    have hS : (G x).IsSymm := Matrix.IsSymm.ext (fun i j => hsymm x j i)
    have hSi := hS.inv
    intro a b
    exact hSi.apply b a
  
  have inv_entry : ∀ (m : Fin 3) (k l : Fin 3),
      DifferentiableAt ℝ (fun y => (G y)⁻¹ k l) x ∧
        partialDeriv m (fun y => (G y)⁻¹ k l) x =
          -∑ a : Fin 3, ∑ b : Fin 3,
            (G x)⁻¹ k a * partialDeriv m (fun y => G y a b) x * (G x)⁻¹ b l := by
    intro m
    have hdet0 : (G x).det ≠ 0 := hdet.ne'
    have hdetD : ∀ H : E3 → Matrix (Fin 3) (Fin 3) ℝ,
        (∀ a b : Fin 3, DifferentiableAt ℝ (fun y => H y a b) x) →
        DifferentiableAt ℝ (fun y => (H y).det) x := by
      intro H hH
      have hfun : (fun y => (H y).det) = fun y =>
          H y 0 0 * H y 1 1 * H y 2 2 - H y 0 0 * H y 1 2 * H y 2 1
          - H y 0 1 * H y 1 0 * H y 2 2 + H y 0 1 * H y 1 2 * H y 2 0
          + H y 0 2 * H y 1 0 * H y 2 1 - H y 0 2 * H y 1 1 * H y 2 0 := by
        funext y; exact Matrix.det_fin_three (H y)
      rw [hfun]
      have h00 := hH 0 0
      have h01 := hH 0 1
      have h02 := hH 0 2
      have h10 := hH 1 0
      have h11 := hH 1 1
      have h12 := hH 1 2
      have h20 := hH 2 0
      have h21 := hH 2 1
      have h22 := hH 2 2
      fun_prop
    have hD : DifferentiableAt ℝ (fun y => (G y).det) x := hdetD G hGd
    have hP : ∀ k l : Fin 3, DifferentiableAt ℝ (fun y => (G y)⁻¹ k l) x := by
      intro k l
      have hfun : (fun y => (G y)⁻¹ k l) =
          fun y => ((G y).det)⁻¹ * ((G y).updateRow l (Pi.single k 1)).det := by
        funext y
        rw [Matrix.inv_def, Matrix.smul_apply, Matrix.adjugate_apply, Ring.inverse_eq_inv,
          smul_eq_mul]
      rw [hfun]
      refine (hD.inv hdet0).mul (hdetD _ ?_)
      intro a b
      by_cases hal : a = l
      · subst hal
        simp only [Matrix.updateRow_self]
        exact differentiableAt_const _
      · simp only [Matrix.updateRow_ne hal]
        exact hGd a b
    have hev : ∀ᶠ y in 𝓝 x, (G y).det ≠ 0 := hD.continuousAt.eventually_ne hdet0
    have hE : ∀ a l : Fin 3, ∑ b : Fin 3, G x a b * partialDeriv m (fun y => (G y)⁻¹ b l) x
        + ∑ b : Fin 3, partialDeriv m (fun y => G y a b) x * (G x)⁻¹ b l = 0 := by
      intro a l
      have h1 : HasFDerivAt (fun y => ∑ b : Fin 3, G y a b * (G y)⁻¹ b l)
          (∑ b : Fin 3, (G x a b • fderiv ℝ (fun y => (G y)⁻¹ b l) x
            + (G x)⁻¹ b l • fderiv ℝ (fun y => G y a b) x)) x := by
        have hs := HasFDerivAt.sum (u := Finset.univ)
          (A := fun b y => G y a b * (G y)⁻¹ b l)
          (fun b _ => (hGd a b).hasFDerivAt.mul (hP b l).hasFDerivAt)
        convert hs using 1
      have h2 : HasFDerivAt (fun y => ∑ b : Fin 3, G y a b * (G y)⁻¹ b l)
          (0 : E3 →L[ℝ] ℝ) x := by
        apply (hasFDerivAt_const (if a = l then (1 : ℝ) else 0) x).congr_of_eventuallyEq
        filter_upwards [hev] with y hy
        have := congrFun (congrFun (Matrix.mul_nonsing_inv (G y) (isUnit_iff_ne_zero.mpr hy)) a) l
        rw [Matrix.mul_apply, Matrix.one_apply] at this
        exact this
      have h3 := congrArg (fun L : E3 →L[ℝ] ℝ => L (e m)) (h1.unique h2)
      simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul, ContinuousLinearMap.zero_apply] at h3
      unfold partialDeriv
      rw [← h3, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro b _
      ring
    intro k l
    refine ⟨hP k l, ?_⟩
    let Xm : Matrix (Fin 3) (Fin 3) ℝ :=
      Matrix.of fun b l => partialDeriv m (fun y => (G y)⁻¹ b l) x
    let Dm : Matrix (Fin 3) (Fin 3) ℝ :=
      Matrix.of fun a b => partialDeriv m (fun y => G y a b) x
    have hM : G x * Xm = -(Dm * (G x)⁻¹) := by
      ext a l'
      rw [Matrix.mul_apply, Matrix.neg_apply, Matrix.mul_apply, eq_neg_iff_add_eq_zero]
      simp only [Xm, Dm, Matrix.of_apply]
      exact hE a l'
    have hX : Xm = -((G x)⁻¹ * (Dm * (G x)⁻¹)) := by
      calc Xm = ((G x)⁻¹ * G x) * Xm := by
            rw [Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hdet0), Matrix.one_mul]
        _ = (G x)⁻¹ * (G x * Xm) := Matrix.mul_assoc _ _ _
        _ = _ := by rw [hM, Matrix.mul_neg]
    have hkl := congrFun (congrFun hX k) l
    simp only [Xm, Dm, Matrix.of_apply, Matrix.neg_apply, Matrix.mul_apply] at hkl
    rw [hkl]
    congr 1
    apply Finset.sum_congr rfl
    intro a _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro b _
    ring
  
  have hs1 : ∀ i : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det) x ∧
      partialDeriv i (fun z => Real.sqrt (G z).det) x = Real.sqrt (G x).det / 2 *
        ∑ a : Fin 3, ∑ b : Fin 3, (G x)⁻¹ a b * partialDeriv i (fun z => G z a b) x := by
    intro i
    have hfun : (fun z => (G z).det) = fun z =>
        G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
          - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
          + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
      funext z; exact Matrix.det_fin_three (G z)
    have h00 := (hGd 0 0).hasFDerivAt
    have h01 := (hGd 0 1).hasFDerivAt
    have h02 := (hGd 0 2).hasFDerivAt
    have h10 := (hGd 1 0).hasFDerivAt
    have h11 := (hGd 1 1).hasFDerivAt
    have h12 := (hGd 1 2).hasFDerivAt
    have h20 := (hGd 2 0).hasFDerivAt
    have h21 := (hGd 2 1).hasFDerivAt
    have h22 := (hGd 2 2).hasFDerivAt
    have hD := (((((((h00.mul h11).mul h22).sub ((h00.mul h12).mul h21)).sub
      ((h01.mul h10).mul h22)).add ((h01.mul h12).mul h20)).add
      ((h02.mul h10).mul h21)).sub ((h02.mul h11).mul h20))
    have hD' : HasFDerivAt (fun z => (G z).det) _ x :=
      hD.congr_of_eventuallyEq (Filter.Eventually.of_forall fun z => congrFun hfun z)
    have hS := hD'.sqrt hdet.ne'
    refine ⟨hS.differentiableAt, ?_⟩
    unfold partialDeriv
    rw [hS.fderiv]
    have hinv : ∀ a b, (G x)⁻¹ a b = ((G x).det)⁻¹ * (G x).adjugate a b := by
      intro a b
      rw [Matrix.inv_def, Matrix.smul_apply, Ring.inverse_eq_inv', smul_eq_mul]
    simp only [hinv]
    have hs2 : Real.sqrt (G x).det * Real.sqrt (G x).det = (G x).det :=
      Real.mul_self_sqrt hdet.le
    have hspos : 0 < Real.sqrt (G x).det := Real.sqrt_pos.2 hdet
    have hfac : 1 / (2 * Real.sqrt (G x).det) = Real.sqrt (G x).det / 2 * ((G x).det)⁻¹ := by
      have aux : ∀ s d : ℝ, 0 < s → s * s = d → 1 / (2 * s) = s / 2 * d⁻¹ := by
        intro s d hs h
        subst h
        field_simp
      exact aux _ _ hspos hs2
    rw [hfac]
    set d := (G x).det with hd
    have f10 : fderiv ℝ (fun z => G z 1 0) x = fderiv ℝ (fun z => G z 0 1) x := by
      congr 1; funext z; exact hsymm z 1 0
    have f20 : fderiv ℝ (fun z => G z 2 0) x = fderiv ℝ (fun z => G z 0 2) x := by
      congr 1; funext z; exact hsymm z 2 0
    have f21 : fderiv ℝ (fun z => G z 2 1) x = fderiv ℝ (fun z => G z 1 2) x := by
      congr 1; funext z; exact hsymm z 2 1
    have e10 := hsymm x 1 0
    have e20 := hsymm x 2 0
    have e21 := hsymm x 2 1
    simp only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.sub_apply, smul_eq_mul, Pi.mul_apply, Fin.sum_univ_three,
      Matrix.adjugate_fin_three, Matrix.of_apply, Matrix.cons_val', Matrix.empty_val',
      Matrix.cons_val_fin_one, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
      Matrix.head_cons, Matrix.tail_cons, Matrix.head_fin_const, f10, f20, f21, e10, e20, e21]
    ring
  have hdS : ∀ i : Fin 3, partialDeriv i (fun z => Real.sqrt (G z).det) x =
      Real.sqrt (G x).det / 2 * ∑ a : Fin 3, ∑ b : Fin 3,
        (G x)⁻¹ a b * partialDeriv i (fun z => G z a b) x := fun i => (hs1 i).2
  have hdGi : ∀ m k l : Fin 3, partialDeriv m (fun z => (G z)⁻¹ k l) x =
      -∑ a : Fin 3, ∑ b : Fin 3,
        (G x)⁻¹ k a * partialDeriv m (fun z => G z a b) x * (G x)⁻¹ b l :=
    fun m k l => (inv_entry m k l).2
  have hs : DifferentiableAt ℝ (fun z => Real.sqrt (G z).det) x := (hs1 0).1
  have hGi : ∀ a b : Fin 3, DifferentiableAt ℝ (fun z => (G z)⁻¹ a b) x :=
    fun a b => (inv_entry 0 a b).1
  
  have pd_mul : ∀ (i : Fin 3) (u w : E3 → ℝ), DifferentiableAt ℝ u x → DifferentiableAt ℝ w x →
      partialDeriv i (fun z => u z * w z) x =
        partialDeriv i u x * w x + u x * partialDeriv i w x := by
    intro i u w hu hw
    unfold partialDeriv
    rw [fderiv_fun_mul hu hw]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have pd_sum : ∀ (i : Fin 3) (u : Fin 3 → E3 → ℝ), (∀ k, DifferentiableAt ℝ (u k) x) →
      partialDeriv i (fun z => ∑ k : Fin 3, u k z) x = ∑ k : Fin 3, partialDeriv i (u k) x := by
    intro i u hu
    unfold partialDeriv
    rw [fderiv_fun_sum (fun k _ => hu k)]
    simp only [ContinuousLinearMap.sum_apply]
  have hmg : ∀ a b : Fin 3,
      DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * (G z)⁻¹ a b) x :=
    fun a b => hs.mul (hGi a b)
  have hT : ∀ a b : Fin 3, DifferentiableAt ℝ
      (fun z => Real.sqrt (G z).det * (G z)⁻¹ a b * partialDeriv b v z) x :=
    fun a b => (hmg a b).mul (hpd' b)
  have hexp : ∀ a : Fin 3, partialDeriv a (fun y => ∑ b : Fin 3,
      Real.sqrt (G y).det * (G y)⁻¹ a b * partialDeriv b v y) x =
      ∑ b : Fin 3, ((partialDeriv a (fun z => Real.sqrt (G z).det) x * (G x)⁻¹ a b +
          Real.sqrt (G x).det * partialDeriv a (fun z => (G z)⁻¹ a b) x) * partialDeriv b v x +
        Real.sqrt (G x).det * (G x)⁻¹ a b * partialDeriv a (partialDeriv b v) x) := by
    intro a
    rw [pd_sum a (fun b z => Real.sqrt (G z).det * (G z)⁻¹ a b * partialDeriv b v z) (hT a)]
    refine Finset.sum_congr rfl (fun b _ => ?_)
    rw [pd_mul a _ (partialDeriv b v) (hmg a b) (hpd' b), pd_mul a _ _ hs (hGi a b)]
  
  rw [Finset.sum_congr rfl (fun a _ => hexp a)]
  simp only [hdS, hdGi]
  unfold lapLoc hessLoc christoffel
  have e10 := hsymI 1 0
  have e20 := hsymI 2 0
  have e21 := hsymI 2 1
  simp only [Fin.sum_univ_three, e10, e20, e21]
  ring

theorem nds_overlap_compat [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    {β : M → ℝ} {Ω₀ S₀ : Set M} (A : NdsAtlas M β Ω₀ S₀) (u : ℕ → M → ℝ)
    (hu : ∀ m, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u m)) (v : Fin A.n → E3 → ℝ)
    (hvL : ∀ j, MemLp (v j) 2 (volume.restrict (ndsHalf (A.c j) (A.r j))))
    (hv0 : ∀ j, Tendsto (fun m => ∫ x in ndsHalf (A.c j) (A.r j), (u m (A.κ j x) - v j x) ^ 2)
      atTop (𝓝 0))
    (w : Fin A.n → E3 → ℝ) (hw : ∀ j, ContDiffOn ℝ ∞ (w j) (Metric.ball (A.c j) (A.r j / 4)))
    (hvw : ∀ j, ∀ᵐ x ∂(volume.restrict (Metric.ball (A.c j) (A.r j / 4) ∩ {x : E3 | 0 < x 0})),
      v j x = w j x) :
    ∀ j k, ∀ x ∈ Metric.ball (A.c j) (A.r j / 4), 0 < x 0 →
      ∀ y ∈ Metric.ball (A.c k) (A.r k / 4), A.κ j x = A.κ k y → w j x = w k y :=
by
  
  have s4 : ∀ (V : Set E3), IsOpen V → (∀ z ∈ V, 0 ≤ z 0) → ∀ z ∈ V, 0 < z 0 := by
    intro V hV hV0 z hz
    rcases (hV0 z hz).lt_or_eq with h | h
    · exact h
    exfalso
    obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp hV z hz
    have hmem : z - (ε / 2) • e 0 ∈ V := by
      apply hball
      rw [Metric.mem_ball, dist_eq_norm, sub_sub_cancel_left, norm_neg, norm_smul,
        EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
        abs_of_pos (by linarith)]
      linarith
    have h2 := hV0 _ hmem
    simp [EuclideanSpace.single_apply] at h2
    linarith
  
  have s5 : ∀ (x : E3) (δ : ℝ), 0 < δ → ∀ (f g : E3 → ℝ) (p : ℕ → E3 → ℝ),
      ContinuousOn f (closedBall x δ) → ContinuousOn g (closedBall x δ) →
      (∀ m, ContinuousOn (p m) (closedBall x δ)) → ∀ (ε₁ ε₂ : ℕ → ℝ),
      Tendsto ε₁ atTop (𝓝 0) → Tendsto ε₂ atTop (𝓝 0) →
      (∀ m, ∫ z in ball x δ, (p m z - f z) ^ 2 ≤ ε₁ m) →
      (∀ m, ∫ z in ball x δ, (p m z - g z) ^ 2 ≤ ε₂ m) → f x = g x := by
    intro x δ hδ f g p hf hg hp ε₁ ε₂ hε₁ hε₂ h₁ h₂
    have hK : IsCompact (closedBall x δ) := isCompact_closedBall x δ
    have hBK : ball x δ ⊆ closedBall x δ := ball_subset_closedBall
    have hint : ∀ φ : E3 → ℝ, ContinuousOn φ (closedBall x δ) → IntegrableOn φ (ball x δ) :=
      fun φ hφ => (hφ.integrableOn_compact hK).mono_set hBK
    have i0 : IntegrableOn (fun z => (f z - g z) ^ 2) (ball x δ) :=
      hint _ ((hf.sub hg).pow 2)
    have hJle : ∀ m, ∫ z in ball x δ, (f z - g z) ^ 2 ≤ 2 * ε₁ m + 2 * ε₂ m := by
      intro m
      have i1 : IntegrableOn (fun z => (p m z - f z) ^ 2) (ball x δ) :=
        hint _ (((hp m).sub hf).pow 2)
      have i2 : IntegrableOn (fun z => (p m z - g z) ^ 2) (ball x δ) :=
        hint _ (((hp m).sub hg).pow 2)
      calc ∫ z in ball x δ, (f z - g z) ^ 2
          ≤ ∫ z in ball x δ, (2 * (p m z - f z) ^ 2 + 2 * (p m z - g z) ^ 2) := by
            apply setIntegral_mono_on i0 ((i1.const_mul 2).add (i2.const_mul 2))
              measurableSet_ball
            intro z _
            show (f z - g z) ^ 2 ≤ 2 * (p m z - f z) ^ 2 + 2 * (p m z - g z) ^ 2
            nlinarith [sq_nonneg (p m z - f z + (p m z - g z))]
        _ = 2 * (∫ z in ball x δ, (p m z - f z) ^ 2) +
              2 * (∫ z in ball x δ, (p m z - g z) ^ 2) := by
            rw [integral_add (i1.const_mul 2) (i2.const_mul 2), integral_const_mul,
              integral_const_mul]
        _ ≤ 2 * ε₁ m + 2 * ε₂ m := by linarith [h₁ m, h₂ m]
    have hlim : Tendsto (fun m => 2 * ε₁ m + 2 * ε₂ m) atTop (𝓝 0) := by
      have := (hε₁.const_mul 2).add (hε₂.const_mul 2)
      simpa using this
    have hJ0 : ∫ z in ball x δ, (f z - g z) ^ 2 ≤ 0 := ge_of_tendsto' hlim hJle
    by_contra hne
    have hcont : ContinuousOn (fun z => (f z - g z) ^ 2) (ball x δ) :=
      ((hf.sub hg).pow 2).mono hBK
    have hopen : IsOpen (Function.support (fun z => (f z - g z) ^ 2) ∩ ball x δ) := by
      have := hcont.isOpen_inter_preimage isOpen_ball (isOpen_compl_singleton (x := (0 : ℝ)))
      convert this using 1
      ext z
      simp only [Set.mem_inter_iff, Function.mem_support, Set.mem_preimage, Set.mem_compl_iff,
        Set.mem_singleton_iff]
      tauto
    have hxs : x ∈ Function.support (fun z => (f z - g z) ^ 2) ∩ ball x δ :=
      ⟨Function.mem_support.mpr (pow_ne_zero 2 (sub_ne_zero.mpr hne)), mem_ball_self hδ⟩
    have hmeas : 0 < volume (Function.support (fun z => (f z - g z) ^ 2) ∩ ball x δ) :=
      hopen.measure_pos volume ⟨x, hxs⟩
    have hpos : 0 < ∫ z in ball x δ, (f z - g z) ^ 2 := by
      rw [setIntegral_pos_iff_support_of_nonneg_ae _ i0]
      · exact hmeas
      · exact ae_of_all _ (fun z => sq_nonneg (f z - g z))
    linarith
  
  have s2 : ∀ (τ : E3 → E3) (O : Set E3), IsOpen O → ContDiffOn ℝ ∞ τ O → Set.InjOn τ O →
      (∀ z ∈ O, (fderiv ℝ τ z).det ≠ 0) → ∀ (x : E3) (δ : ℝ), 0 < δ →
      closedBall x δ ⊆ O →
      ∃ c₀ : ℝ, 0 < c₀ ∧ ∀ F : E3 → ℝ, (∀ z ∈ ball x δ, 0 ≤ F (τ z)) →
        c₀ * ∫ z in ball x δ, F (τ z) ≤ ∫ t in τ '' ball x δ, F t := by
    intro τ O hO hτ hinj hdet x δ hδ hδO
    have hK : IsCompact (closedBall x δ) := isCompact_closedBall x δ
    have hBK : ball x δ ⊆ closedBall x δ := ball_subset_closedBall
    have hBO : ball x δ ⊆ O := hBK.trans hδO
    have hfd : ContinuousOn (fderiv ℝ τ) O := hτ.continuousOn_fderiv_of_isOpen hO (by simp)
    have hgc : ContinuousOn (fun z => |(fderiv ℝ τ z).det|) O :=
      (ContinuousLinearMap.continuous_det.comp_continuousOn hfd).abs
    obtain ⟨zs, hzsK, hzs⟩ := hK.exists_isMinOn ⟨x, mem_closedBall_self hδ.le⟩ (hgc.mono hδO)
    obtain ⟨C, hC⟩ := hK.exists_bound_of_continuousOn (hgc.mono hδO)
    refine ⟨|(fderiv ℝ τ zs).det|, abs_pos.mpr (hdet zs (hδO hzsK)), fun F hF => ?_⟩
    have hdiff : ∀ z ∈ ball x δ, HasFDerivWithinAt τ (fderiv ℝ τ z) (ball x δ) z := by
      intro z hz
      have : DifferentiableAt ℝ τ z :=
        (hτ.differentiableOn (by simp)).differentiableAt (hO.mem_nhds (hBO hz))
      exact this.hasFDerivAt.hasFDerivWithinAt
    have hcov := integral_image_eq_integral_abs_det_fderiv_smul volume measurableSet_ball hdiff
      (hinj.mono hBO) F
    rw [hcov]
    simp only [smul_eq_mul]
    by_cases hI : IntegrableOn (fun z => F (τ z)) (ball x δ)
    · have hI2 : IntegrableOn (fun z => |(fderiv ℝ τ z).det| * F (τ z)) (ball x δ) := by
        refine Integrable.bdd_mul (c := C) hI ?_ ?_
        · exact (hgc.mono hBO).aestronglyMeasurable measurableSet_ball
        · refine ae_restrict_of_forall_mem measurableSet_ball (fun z hz => ?_)
          exact hC z (hBK hz)
      rw [← integral_const_mul]
      refine setIntegral_mono_on (hI.const_mul _) hI2 measurableSet_ball (fun z hz => ?_)
      exact mul_le_mul_of_nonneg_right (isMinOn_iff.mp hzs z (hBK hz)) (hF z hz)
    · rw [integral_undef hI, mul_zero]
      exact setIntegral_nonneg measurableSet_ball
        (fun z hz => mul_nonneg (abs_nonneg _) (hF z hz))
  
  have s3 : ∀ (c : E3) (r : ℝ), 0 < r → ∀ (φ v' w' : E3 → ℝ),
      ContinuousOn φ (closedBall c (r / 2)) →
      MemLp v' 2 (volume.restrict (ndsHalf c r)) →
      (∀ᵐ x ∂(volume.restrict (ball c (r / 4) ∩ {x : E3 | 0 < x 0})), v' x = w' x) →
      ∀ (S : Set E3), S ⊆ ball c (r / 4) ∩ {x : E3 | 0 < x 0} →
      ∫ x in S, (φ x - w' x) ^ 2 ≤ ∫ x in ndsHalf c r, (φ x - v' x) ^ 2 := by
    intro c r hr φ v' w' hφ hvL' hvw' S hSsub
    have hcont0 : Continuous (fun z : E3 => z 0) :=
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous
    have hPH : ball c (r / 4) ∩ {x : E3 | 0 < x 0} ⊆ ndsHalf c r :=
      Set.inter_subset_inter_left _ (ball_subset_ball (by linarith))
    have hHK : ndsHalf c r ⊆ closedBall c (r / 2) :=
      Set.inter_subset_left.trans ball_subset_closedBall
    have hHm : MeasurableSet (ndsHalf c r) :=
      (isOpen_ball.inter (isOpen_lt continuous_const hcont0)).measurableSet
    have hfin : volume (ndsHalf c r) < ⊤ :=
      (measure_mono hHK).trans_lt measure_closedBall_lt_top
    haveI : IsFiniteMeasure (volume.restrict (ndsHalf c r)) :=
      isFiniteMeasure_restrict.2 hfin.ne
    obtain ⟨C, hC⟩ := (isCompact_closedBall c (r / 2)).exists_bound_of_continuousOn hφ
    have hφL : MemLp φ 2 (volume.restrict (ndsHalf c r)) := by
      refine MemLp.of_bound ((hφ.mono hHK).aestronglyMeasurable hHm) C ?_
      exact ae_restrict_of_forall_mem hHm (fun z hz => hC z (hHK hz))
    have hint : IntegrableOn (fun x => (φ x - v' x) ^ 2) (ndsHalf c r) :=
      (hφL.sub hvL').integrable_sq
    have hvwS : ∀ᵐ x ∂(volume.restrict S), v' x = w' x :=
      ae_restrict_of_ae_restrict_of_subset hSsub hvw'
    have heq : ∫ x in S, (φ x - w' x) ^ 2 = ∫ x in S, (φ x - v' x) ^ 2 := by
      apply integral_congr_ae
      filter_upwards [hvwS] with x hx
      rw [hx]
    rw [heq]
    apply setIntegral_mono_set hint
    · exact ae_of_all _ (fun x => sq_nonneg (φ x - v' x))
    · exact (hSsub.trans hPH).eventuallyLE
  
  have s1 : ∀ (κ₁ κ₂ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (U₂ : Set E3),
      IsOpen U₂ → U₂ ⊆ κ₂.source → ∀ (τ : E3 → E3), (∀ z, τ z = κ₂.symm (κ₁ z)) →
      ∀ (x y : E3), x ∈ κ₁.source → y ∈ U₂ → κ₁ x = κ₂ y →
      ∃ O : Set E3, IsOpen O ∧ x ∈ O ∧ O ⊆ κ₁.source ∧ τ x = y ∧ ContDiffOn ℝ ∞ τ O ∧
        (∀ z ∈ O, τ z ∈ U₂ ∧ κ₂ (τ z) = κ₁ z) ∧ Set.InjOn τ O ∧
        (∀ z ∈ O, (fderiv ℝ τ z).det ≠ 0) ∧
        (∀ O' : Set E3, IsOpen O' → O' ⊆ O → IsOpen (τ '' O')) := by
    intro κ₁ κ₂ U₂ hU₂ hU₂s τ hτ x y hx hy hxy
    have hτe : τ = fun z => κ₂.symm (κ₁ z) := funext hτ
    have hW : IsOpen (κ₂ '' U₂) :=
      κ₂.toOpenPartialHomeomorph.isOpen_image_of_subset_source hU₂ hU₂s
    set O : Set E3 := κ₁.source ∩ κ₁ ⁻¹' (κ₂ '' U₂) with hOdef
    have hOo : IsOpen O := κ₁.contMDiffOn.continuousOn.isOpen_inter_preimage κ₁.open_source hW
    have hval : ∀ z ∈ O, τ z ∈ U₂ ∧ κ₂ (τ z) = κ₁ z ∧ κ₁ z ∈ κ₂.target := by
      rintro z ⟨hz1, y', hy', hzy⟩
      have h1 : τ z = y' := by
        rw [hτ, ← hzy]
        exact κ₂.toPartialEquiv.left_inv (hU₂s hy')
      refine ⟨h1 ▸ hy', by rw [h1, hzy], ?_⟩
      rw [← hzy]
      exact κ₂.toPartialEquiv.map_source (hU₂s hy')
    have hsm : ContDiffOn ℝ ∞ τ O := by
      have h := κ₂.symm.contMDiffOn.comp (κ₁.contMDiffOn.mono Set.inter_subset_left)
        (fun z hz => (hval z hz).2.2)
      rw [hτe]
      exact contMDiffOn_iff_contDiffOn.mp h
    set O₂ : Set E3 := κ₂.source ∩ κ₂ ⁻¹' κ₁.target with hO₂def
    have hO₂o : IsOpen O₂ :=
      κ₂.contMDiffOn.continuousOn.isOpen_inter_preimage κ₂.open_source κ₁.open_target
    have hσ : ContDiffOn ℝ ∞ (fun w => κ₁.symm (κ₂ w)) O₂ := by
      have h := κ₁.symm.contMDiffOn.comp (κ₂.contMDiffOn.mono Set.inter_subset_left)
        (fun w hw => hw.2)
      exact contMDiffOn_iff_contDiffOn.mp h
    refine ⟨O, hOo, ⟨hx, ⟨y, hy, hxy.symm⟩⟩, Set.inter_subset_left, ?_, hsm,
      fun z hz => ⟨(hval z hz).1, (hval z hz).2.1⟩, ?_, ?_, ?_⟩
    · rw [hτ, hxy]
      exact κ₂.toPartialEquiv.left_inv (hU₂s hy)
    · intro z hz z' hz' hzz
      have h1 : κ₁ z = κ₁ z' := by rw [← (hval z hz).2.1, ← (hval z' hz').2.1, hzz]
      rw [← κ₁.toPartialEquiv.left_inv hz.1, ← κ₁.toPartialEquiv.left_inv hz'.1]
      exact congrArg κ₁.symm h1
    · intro z hz
      have hτO₂ : τ z ∈ O₂ := ⟨hU₂s (hval z hz).1, by
        show κ₂ (τ z) ∈ κ₁.target
        rw [(hval z hz).2.1]
        exact κ₁.toPartialEquiv.map_source hz.1⟩
      have hev : (fun w => κ₁.symm (κ₂ w)) ∘ τ =ᶠ[𝓝 z] id := by
        filter_upwards [hOo.mem_nhds hz] with z' hz'
        show κ₁.symm (κ₂ (τ z')) = z'
        rw [(hval z' hz').2.1]
        exact κ₁.toPartialEquiv.left_inv hz'.1
      have hτd : DifferentiableAt ℝ τ z :=
        (hsm.differentiableOn (by simp)).differentiableAt (hOo.mem_nhds hz)
      have hσd : DifferentiableAt ℝ (fun w => κ₁.symm (κ₂ w)) (τ z) :=
        (hσ.differentiableOn (by simp)).differentiableAt (hO₂o.mem_nhds hτO₂)
      have hcomp := fderiv_comp z hσd hτd
      rw [hev.fderiv_eq, fderiv_id] at hcomp
      have hd := congrArg (fun L : E3 →L[ℝ] E3 => LinearMap.det (L : E3 →ₗ[ℝ] E3)) hcomp
      simp only [ContinuousLinearMap.coe_comp, LinearMap.det_comp, ContinuousLinearMap.coe_id,
        LinearMap.det_id] at hd
      intro h0
      have h0' : LinearMap.det (fderiv ℝ τ z : E3 →ₗ[ℝ] E3) = 0 := h0
      rw [h0', mul_zero] at hd
      exact one_ne_zero hd
    · intro O' hO' hO'O
      have h1 : IsOpen (κ₁ '' O') :=
        κ₁.toOpenPartialHomeomorph.isOpen_image_of_subset_source hO'
          (hO'O.trans Set.inter_subset_left)
      have h2 : κ₁ '' O' ⊆ κ₂.symm.toOpenPartialHomeomorph.source := by
        rintro _ ⟨z, hz, rfl⟩
        exact (hval z (hO'O hz)).2.2
      have h3 : τ '' O' = κ₂.symm '' (κ₁ '' O') := by rw [hτe, Set.image_image]
      rw [h3]
      exact κ₂.symm.toOpenPartialHomeomorph.isOpen_image_of_subset_source h1 h2
  
  intro j k x hx hx0 y hy hxy
  have hcont0 : Continuous (fun z : E3 => z 0) :=
    (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous
  have hsrcj : x ∈ (A.κ j).source := by
    rw [A.source_eq j]
    exact ball_subset_ball (by linarith [A.r_pos j]) hx
  have hUk : Metric.ball (A.c k) (A.r k / 4) ⊆ (A.κ k).source := by
    rw [A.source_eq k]
    exact ball_subset_ball (by linarith [A.r_pos k])
  obtain ⟨τ, hτ⟩ : ∃ τ : E3 → E3, ∀ z, τ z = (A.κ k).symm (A.κ j z) := ⟨_, fun _ => rfl⟩
  obtain ⟨O, hOo, hxO, hOs, hτx, hτs, hτv, hτi, hτd, hτopen⟩ :=
    s1 (A.κ j) (A.κ k) _ isOpen_ball hUk τ hτ x y hsrcj hy hxy
  set O₁ : Set E3 := O ∩ Metric.ball (A.c j) (A.r j / 4) ∩ {z : E3 | 0 < z 0} with hO₁
  have hO₁o : IsOpen O₁ := (hOo.inter isOpen_ball).inter (isOpen_lt continuous_const hcont0)
  have hxO₁ : x ∈ O₁ := ⟨⟨hxO, hx⟩, hx0⟩
  obtain ⟨ε, hε, hεO⟩ := Metric.isOpen_iff.mp hO₁o x hxO₁
  have hδ : 0 < ε / 2 := by linarith
  have hKO : closedBall x (ε / 2) ⊆ O₁ := (closedBall_subset_ball (by linarith)).trans hεO
  have hBK : ball x (ε / 2) ⊆ closedBall x (ε / 2) := ball_subset_closedBall
  have hBO₁ : ball x (ε / 2) ⊆ O₁ := hBK.trans hKO
  have hKO' : closedBall x (ε / 2) ⊆ O := fun z hz => (hKO hz).1.1
  have hKQ : closedBall x (ε / 2) ⊆ Metric.ball (A.c j) (A.r j / 4) := fun z hz => (hKO hz).1.2
  
  have himg_open : IsOpen (τ '' ball x (ε / 2)) :=
    hτopen _ isOpen_ball (fun z hz => hKO' (hBK hz))
  have himg_nonneg : ∀ t ∈ τ '' ball x (ε / 2), 0 ≤ t 0 := by
    rintro _ ⟨z, hz, rfl⟩
    have hzO := hBO₁ hz
    have hzsrc : z ∈ Metric.ball (A.c j) (A.r j) := by
      rw [← A.source_eq j]
      exact hOs hzO.1.1
    have h1 : A.κ j z ∈ Ω₀ := (A.dom j z hzsrc).2 (le_of_lt hzO.2)
    have hv := hτv z hzO.1.1
    have htsrc : τ z ∈ Metric.ball (A.c k) (A.r k) := by
      rw [← A.source_eq k]
      exact hUk hv.1
    rw [← hv.2] at h1
    exact (A.dom k (τ z) htsrc).1 h1
  have himg_pos := s4 _ himg_open himg_nonneg
  have himg_sub : τ '' ball x (ε / 2) ⊆ Metric.ball (A.c k) (A.r k / 4) ∩ {t : E3 | 0 < t 0} := by
    intro t ht
    refine ⟨?_, himg_pos t ht⟩
    obtain ⟨z, hz, rfl⟩ := ht
    exact (hτv z (hBO₁ hz).1.1).1
  
  obtain ⟨c₀, hc₀, hcov⟩ := s2 τ O₁ hO₁o (hτs.mono (fun z hz => hz.1.1))
    (hτi.mono (fun z hz => hz.1.1)) (fun z hz => hτd z hz.1.1) x (ε / 2) hδ hKO
  
  have hφ : ∀ (i : Fin A.n) (m : ℕ),
      ContinuousOn (fun z => u m (A.κ i z)) (Metric.ball (A.c i) (A.r i)) := by
    intro i m
    rw [← A.source_eq i]
    exact (hu m).continuous.comp_continuousOn (A.κ i).contMDiffOn.continuousOn
  have hφ2 : ∀ (i : Fin A.n) (m : ℕ),
      ContinuousOn (fun z => u m (A.κ i z)) (closedBall (A.c i) (A.r i / 2)) :=
    fun i m => (hφ i m).mono (closedBall_subset_ball (by linarith [A.r_pos i]))
  
  have h₁ : ∀ m, ∫ z in ball x (ε / 2), (u m (A.κ j z) - w j z) ^ 2 ≤
      ∫ z in ndsHalf (A.c j) (A.r j), (u m (A.κ j z) - v j z) ^ 2 :=
    fun m => s3 (A.c j) (A.r j) (A.r_pos j) _ (v j) (w j) (hφ2 j m) (hvL j) (hvw j) _
      (fun z hz => ⟨(hBO₁ hz).1.2, (hBO₁ hz).2⟩)
  have h₂ : ∀ m, ∫ z in ball x (ε / 2), (u m (A.κ j z) - w k (τ z)) ^ 2 ≤
      c₀⁻¹ * ∫ z in ndsHalf (A.c k) (A.r k), (u m (A.κ k z) - v k z) ^ 2 := by
    intro m
    have e1 : ∫ z in ball x (ε / 2), (u m (A.κ j z) - w k (τ z)) ^ 2 =
        ∫ z in ball x (ε / 2), (fun t => (u m (A.κ k t) - w k t) ^ 2) (τ z) := by
      apply setIntegral_congr_fun measurableSet_ball
      intro z hz
      simp only
      rw [(hτv z (hBO₁ hz).1.1).2]
    have e2 := hcov (fun t => (u m (A.κ k t) - w k t) ^ 2) (fun z _ => sq_nonneg _)
    have e3 := s3 (A.c k) (A.r k) (A.r_pos k) _ (v k) (w k) (hφ2 k m) (hvL k) (hvw k) _
      himg_sub
    rw [e1]
    have h := e2.trans e3
    have hc' : 0 ≤ c₀⁻¹ := inv_nonneg.mpr hc₀.le
    calc (∫ z in ball x (ε / 2), (fun t => (u m (A.κ k t) - w k t) ^ 2) (τ z))
        = c₀⁻¹ * (c₀ * ∫ z in ball x (ε / 2), (fun t => (u m (A.κ k t) - w k t) ^ 2) (τ z)) := by
          rw [← mul_assoc, inv_mul_cancel₀ hc₀.ne', one_mul]
      _ ≤ c₀⁻¹ * ∫ z in ndsHalf (A.c k) (A.r k), (u m (A.κ k z) - v k z) ^ 2 :=
          mul_le_mul_of_nonneg_left h hc'
  have hε₂ : Tendsto (fun m => c₀⁻¹ * ∫ z in ndsHalf (A.c k) (A.r k),
      (u m (A.κ k z) - v k z) ^ 2) atTop (𝓝 0) := by
    have := (hv0 k).const_mul c₀⁻¹
    rwa [mul_zero] at this
  
  have hfin := s5 x (ε / 2) hδ (w j) (fun z => w k (τ z)) (fun m z => u m (A.κ j z))
    ((hw j).continuousOn.mono hKQ)
    ((hw k).continuousOn.comp (hτs.continuousOn.mono hKO') (fun z hz => (hτv z (hKO' hz)).1))
    (fun m => (hφ j m).mono (fun z hz => by rw [← A.source_eq j]; exact hOs (hKO' hz)))
    _ _ (hv0 j) hε₂ h₁ h₂
  rw [← hτx]
  exact hfin

theorem nds_glue [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    {β : M → ℝ} {Ω₀ S₀ : Set M} (A : NdsAtlas M β Ω₀ S₀) (w : Fin A.n → E3 → ℝ)
    (hw : ∀ j, ContDiffOn ℝ ∞ (w j) (Metric.ball (A.c j) (A.r j / 4)))
    (hcomp : ∀ j k, ∀ x ∈ Metric.ball (A.c j) (A.r j / 4), 0 < x 0 →
      ∀ y ∈ Metric.ball (A.c k) (A.r k / 4), A.κ j x = A.κ k y → w j x = w k y) :
    ∃ W : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ W ∧ ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j / 8),
      0 ≤ x 0 → W (A.κ j x) = w j x ∧
        (∀ a : Fin 3, partialDeriv a (fun z => W (A.κ j z)) x = partialDeriv a (w j) x) ∧
        (∀ a b : Fin 3, partialDeriv a (partialDeriv b (fun z => W (A.κ j z))) x =
          partialDeriv a (partialDeriv b (w j)) x) :=
by
  classical
  
  have hjet : ∀ (B : Set E3), IsOpen B → ∀ (F G : E3 → ℝ), ContDiffOn ℝ ∞ F B →
      ContDiffOn ℝ ∞ G B → (∀ z ∈ B, 0 < z 0 → F z = G z) → ∀ x ∈ B, 0 ≤ x 0 →
      F x = G x ∧ (∀ a : Fin 3, partialDeriv a F x = partialDeriv a G x) ∧
      (∀ a b : Fin 3, partialDeriv a (partialDeriv b F) x =
        partialDeriv a (partialDeriv b G) x) := by
    intro B hB F G hF hG hFG x hx hx0
    have hπc : Continuous (fun z : E3 => z 0) :=
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous
    obtain ⟨s, hs⟩ : ∃ s : Set E3, s = B ∩ {z | 0 < z 0} := ⟨_, rfl⟩
    have hso : IsOpen s := by
      rw [hs]; exact hB.inter (isOpen_lt continuous_const hπc)
    have hsB : ∀ z ∈ s, z ∈ B ∧ 0 < z 0 := by
      intro z hz; rw [hs] at hz; exact hz
    have hxcl : x ∈ closure s := by
      have hc : Continuous (fun τ : ℝ => x + τ • e 0) :=
        continuous_const.add (continuous_id.smul continuous_const)
      have hT : Tendsto (fun τ : ℝ => x + τ • e 0) (𝓝[>] (0 : ℝ)) (𝓝 x) := by
        have h0 := hc.tendsto 0
        simp only [zero_smul, add_zero] at h0
        exact h0.mono_left nhdsWithin_le_nhds
      apply mem_closure_of_tendsto hT
      have h1 : ∀ᶠ τ in 𝓝[>] (0 : ℝ), x + τ • e 0 ∈ B := hT (hB.mem_nhds hx)
      have h2 : ∀ᶠ τ in 𝓝[>] (0 : ℝ), 0 < τ := self_mem_nhdsWithin
      filter_upwards [h1, h2] with τ hτ1 hτ2
      rw [hs]
      refine ⟨hτ1, ?_⟩
      have hv : (x + τ • e 0) 0 = x 0 + τ := by
        simp [EuclideanSpace.single_apply]
      show 0 < (x + τ • e 0) 0
      rw [hv]
      linarith
    have hpd : ∀ (H : E3 → ℝ), ContDiffOn ℝ ∞ H B → ∀ b : Fin 3,
        ContDiffOn ℝ ∞ (partialDeriv b H) B := by
      intro H hH b
      have h1 := ((contDiffOn_infty_iff_fderiv_of_isOpen hB).mp hH).2
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ H y (e b)) B
      exact h1.clm_apply contDiffOn_const
    have hEq0 : Set.EqOn F G s := fun z hz => hFG z (hsB z hz).1 (hsB z hz).2
    have hEq1 : ∀ b : Fin 3, Set.EqOn (partialDeriv b F) (partialDeriv b G) s := by
      intro b z hz
      have hev : F =ᶠ[𝓝 z] G := Filter.eventually_of_mem (hso.mem_nhds hz) hEq0
      show fderiv ℝ F z (e b) = fderiv ℝ G z (e b)
      rw [hev.fderiv_eq]
    have hEq2 : ∀ a b : Fin 3, Set.EqOn (partialDeriv a (partialDeriv b F))
        (partialDeriv a (partialDeriv b G)) s := by
      intro a b z hz
      have hev : partialDeriv b F =ᶠ[𝓝 z] partialDeriv b G :=
        Filter.eventually_of_mem (hso.mem_nhds hz) (hEq1 b)
      show fderiv ℝ (partialDeriv b F) z (e a) = fderiv ℝ (partialDeriv b G) z (e a)
      rw [hev.fderiv_eq]
    have htB : insert x s ⊆ B := Set.insert_subset hx (fun z hz => (hsB z hz).1)
    have hst : s ⊆ insert x s := Set.subset_insert _ _
    have htc : insert x s ⊆ closure s := Set.insert_subset hxcl subset_closure
    have key : ∀ (F' G' : E3 → ℝ), ContDiffOn ℝ ∞ F' B → ContDiffOn ℝ ∞ G' B →
        Set.EqOn F' G' s → F' x = G' x := by
      intro F' G' hF' hG' hE
      exact Set.EqOn.of_subset_closure hE (hF'.continuousOn.mono htB)
        (hG'.continuousOn.mono htB) hst htc (Set.mem_insert _ _)
    exact ⟨key F G hF hG hEq0, fun a => key _ _ (hpd F hF a) (hpd G hG a) (hEq1 a),
      fun a b => key _ _ (hpd _ (hpd F hF b) a) (hpd _ (hpd G hG b) a) (hEq2 a b)⟩
  
  have hpiece : ∀ j : Fin A.n, ∃ φ : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ φ ∧
      (∀ y ∈ Metric.ball (A.c j) (A.r j / 4), φ (A.κ j y) = A.ψ j (A.κ j y) * w j y) ∧
      ∀ q : M, A.ψ j q = 0 → φ q = 0 := by
    intro j
    have hr := A.r_pos j
    have hsrc : (A.κ j).source = Metric.ball (A.c j) (A.r j) := A.source_eq j
    have hF1 : ∀ y ∈ (A.κ j).source, A.ψ j (A.κ j y) ≠ 0 →
        y ∈ Metric.ball (A.c j) (A.r j / 8) := by
      intro y hy hne
      have h1 : A.κ j y ∈ tsupport (A.ψ j) := subset_tsupport _ hne
      obtain ⟨y', hy', hyy⟩ := (A.ψ_supp j).2 h1
      have hy's : y' ∈ (A.κ j).source := by
        rw [hsrc]; exact Metric.ball_subset_ball (by linarith) hy'
      have e1 : (A.κ j).symm (A.κ j y') = y' := (A.κ j).toPartialEquiv.left_inv hy's
      have e2 : (A.κ j).symm (A.κ j y) = y := (A.κ j).toPartialEquiv.left_inv hy
      have hyy' : y' = y := by
        rw [← e1, ← e2, hyy]
      rw [← hyy']
      exact hy'
    obtain ⟨ζ, hζdef⟩ : ∃ ζ : E3 → ℝ, ζ = fun x =>
        if x ∈ Metric.ball (A.c j) (A.r j / 4) then A.ψ j (A.κ j x) * w j x else 0 :=
      ⟨_, rfl⟩
    have hζv : ∀ x, ζ x =
        if x ∈ Metric.ball (A.c j) (A.r j / 4) then A.ψ j (A.κ j x) * w j x else 0 := by
      intro x; rw [hζdef]
    have hψκ : ContDiffOn ℝ ∞ (fun z => A.ψ j (A.κ j z)) (Metric.ball (A.c j) (A.r j)) := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (A.ψ j ∘ A.κ j) (A.κ j).source :=
        (A.ψ_smooth j).comp_contMDiffOn (A.κ j).contMDiffOn
      have h2 := contMDiffOn_iff_contDiffOn.mp h1
      rw [hsrc] at h2
      exact h2
    have hF2 : ∀ x ∈ Metric.ball (A.c j) (A.r j),
        x ∉ Metric.closedBall (A.c j) (A.r j / 8) → ζ x = 0 := by
      intro x hx hxQ
      rw [hζv]
      split_ifs with h
      · have h0 : A.ψ j (A.κ j x) = 0 := by
          by_contra hne
          exact hxQ (Metric.ball_subset_closedBall (hF1 x (by rw [hsrc]; exact hx) hne))
        rw [h0, zero_mul]
      · rfl
    have hζs : ContDiffOn ℝ ∞ ζ (Metric.ball (A.c j) (A.r j)) := by
      apply contDiffOn_of_locally_contDiffOn
      intro x hx
      by_cases h4 : x ∈ Metric.ball (A.c j) (A.r j / 4)
      · refine ⟨Metric.ball (A.c j) (A.r j / 4), Metric.isOpen_ball, h4, ?_⟩
        refine ((hψκ.mono Set.inter_subset_left).mul
          ((hw j).mono Set.inter_subset_right)).congr ?_
        intro y hy
        rw [hζv, if_pos hy.2]
      · refine ⟨(Metric.closedBall (A.c j) (A.r j / 8))ᶜ,
          Metric.isClosed_closedBall.isOpen_compl, ?_, ?_⟩
        · intro hxQ
          apply h4
          exact Metric.closedBall_subset_ball (by linarith) hxQ
        · refine (contDiffOn_const (c := (0 : ℝ))).congr ?_
          intro y hy
          exact hF2 y hy.1 hy.2
    
    obtain ⟨φ, hφdef⟩ : ∃ φ : M → ℝ, φ = fun q =>
        if q ∈ (A.κ j).target then ζ ((A.κ j).symm q) else 0 := ⟨_, rfl⟩
    have hφv : ∀ q, φ q = if q ∈ (A.κ j).target then ζ ((A.κ j).symm q) else 0 := by
      intro q; rw [hφdef]
    have hval : ∀ x ∈ (A.κ j).source, φ (A.κ j x) = ζ x := by
      intro x hx
      have h1 : A.κ j x ∈ (A.κ j).target := (A.κ j).toPartialEquiv.map_source hx
      have h2 : (A.κ j).symm (A.κ j x) = x := (A.κ j).toPartialEquiv.left_inv hx
      rw [hφv, if_pos h1, h2]
    have hQs : Metric.closedBall (A.c j) (A.r j / 8) ⊆ (A.κ j).source := by
      rw [hsrc]; exact Metric.closedBall_subset_ball (by linarith)
    have hzero : ∀ q : M, q ∉ (A.κ j) '' Metric.closedBall (A.c j) (A.r j / 8) → φ q = 0 := by
      intro q hq
      by_cases ht : q ∈ (A.κ j).target
      · have hxs : (A.κ j).symm q ∈ (A.κ j).source := (A.κ j).toPartialEquiv.map_target ht
        have hrr : A.κ j ((A.κ j).symm q) = q := (A.κ j).toPartialEquiv.right_inv ht
        have hxQ : (A.κ j).symm q ∉ Metric.closedBall (A.c j) (A.r j / 8) := by
          intro hxQ
          exact hq ⟨(A.κ j).symm q, hxQ, hrr⟩
        rw [hφv, if_pos ht]
        exact hF2 _ (by rw [← hsrc]; exact hxs) hxQ
      · rw [hφv, if_neg ht]
    have hKt : (A.κ j) '' Metric.closedBall (A.c j) (A.r j / 8) ⊆ (A.κ j).target := by
      rintro _ ⟨x, hx, rfl⟩
      exact (A.κ j).toPartialEquiv.map_source (hQs hx)
    have hKc : IsClosed ((A.κ j) '' Metric.closedBall (A.c j) (A.r j / 8)) :=
      ((isCompact_closedBall (A.c j) (A.r j / 8)).image_of_continuousOn
        ((A.κ j).contMDiffOn.continuousOn.mono hQs)).isClosed
    have hζM : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ζ (A.κ j).source := by
      rw [hsrc]; exact hζs.contMDiffOn
    have hcompM : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (ζ ∘ (A.κ j).symm) (A.κ j).target :=
      hζM.comp (A.κ j).symm.contMDiffOn (fun q hq => (A.κ j).toPartialEquiv.map_target hq)
    have hφs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ φ := by
      intro q
      by_cases ht : q ∈ (A.κ j).target
      · have hn : (A.κ j).target ∈ 𝓝 q := (A.κ j).open_target.mem_nhds ht
        refine (hcompM.contMDiffAt hn).congr_of_eventuallyEq ?_
        filter_upwards [hn] with q' hq'
        rw [hφv, if_pos hq']
        rfl
      · have hqK : q ∉ (A.κ j) '' Metric.closedBall (A.c j) (A.r j / 8) := fun h => ht (hKt h)
        have hn : ((A.κ j) '' Metric.closedBall (A.c j) (A.r j / 8))ᶜ ∈ 𝓝 q :=
          hKc.isOpen_compl.mem_nhds hqK
        refine (contMDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
        filter_upwards [hn] with q' hq'
        exact hzero q' hq'
    refine ⟨φ, hφs, ?_, ?_⟩
    · intro y hy
      have hys : y ∈ (A.κ j).source := by
        rw [hsrc]; exact Metric.ball_subset_ball (by linarith) hy
      rw [hval y hys, hζv, if_pos hy]
    · intro q hq
      by_cases ht : q ∈ (A.κ j).target
      · have hrr : A.κ j ((A.κ j).symm q) = q := (A.κ j).toPartialEquiv.right_inv ht
        rw [hφv, if_pos ht, hζv]
        split_ifs
        · rw [hrr, hq, zero_mul]
        · rfl
      · rw [hφv, if_neg ht]
  
  choose φ hφs hφeq hφ0 using hpiece
  obtain ⟨W, hWdef⟩ : ∃ W : M → ℝ, W = fun q => ∑ j, φ j q := ⟨_, rfl⟩
  have hW : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ W := by
    rw [hWdef]
    exact contMDiff_finset_sum (fun j _ => hφs j)
  have hhalf : ∀ k, ∀ z ∈ Metric.ball (A.c k) (A.r k / 8), 0 < z 0 → W (A.κ k z) = w k z := by
    intro k z hz hz0
    have hrk := A.r_pos k
    have hzB : z ∈ Metric.ball (A.c k) (A.r k) := Metric.ball_subset_ball (by linarith) hz
    have hz4 : z ∈ Metric.ball (A.c k) (A.r k / 4) := Metric.ball_subset_ball (by linarith) hz
    have hΩ : A.κ k z ∈ Ω₀ := (A.dom k z hzB).2 (le_of_lt hz0)
    have hsum := A.ψ_sum _ hΩ
    have hterm : ∀ j, φ j (A.κ k z) = A.ψ j (A.κ k z) * w k z := by
      intro j
      by_cases hψ : A.ψ j (A.κ k z) = 0
      · rw [hφ0 j _ hψ, hψ, zero_mul]
      · have h1 : A.κ k z ∈ tsupport (A.ψ j) := subset_tsupport _ hψ
        obtain ⟨y, hy, hyp⟩ := (A.ψ_supp j).2 h1
        have hrj := A.r_pos j
        have hy4 : y ∈ Metric.ball (A.c j) (A.r j / 4) := Metric.ball_subset_ball (by linarith) hy
        have hw' : w k z = w j y := hcomp k j z hz4 hz0 y hy4 hyp.symm
        rw [← hyp, hφeq j y hy4, hw']
    rw [hWdef]
    show ∑ j, φ j (A.κ k z) = w k z
    rw [Finset.sum_congr rfl (fun j _ => hterm j), ← Finset.sum_mul, hsum, one_mul]
  
  refine ⟨W, hW, ?_⟩
  intro j x hx hx0
  have hrj := A.r_pos j
  have hB8 : Metric.ball (A.c j) (A.r j / 8) ⊆ Metric.ball (A.c j) (A.r j) :=
    Metric.ball_subset_ball (by linarith)
  have hF : ContDiffOn ℝ ∞ (fun z => W (A.κ j z)) (Metric.ball (A.c j) (A.r j / 8)) := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (W ∘ A.κ j) (A.κ j).source :=
      hW.comp_contMDiffOn (A.κ j).contMDiffOn
    have h2 := contMDiffOn_iff_contDiffOn.mp h1
    rw [A.source_eq j] at h2
    exact h2.mono hB8
  exact hjet _ Metric.isOpen_ball _ _ hF
    ((hw j).mono (Metric.ball_subset_ball (by linarith)))
    (fun z hz hz0 => hhalf j z hz hz0) x hx hx0

theorem nds_weak_regularity [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    {β : M → ℝ} {Ω₀ S₀ : Set M} (A : NdsAtlas M β Ω₀ S₀) (f : M → ℝ)
    (hf : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f) (u : ℕ → M → ℝ) (v : Fin A.n → E3 → ℝ)
    (Gr : Fin A.n → Fin 3 → E3 → ℝ) (hsol : ndsWeakSol g A f u v Gr) :
    ∃ W : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ W ∧
      (∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j / 8), 0 ≤ x 0 →
        lapLoc (g.coeff (A.κ j)) (fun z => W (A.κ j z)) x = f (A.κ j x)) ∧
      (∀ j, ¬ A.D j → ∀ x ∈ Metric.ball (A.c j) (A.r j / 8), x 0 = 0 →
        ∑ a : Fin 3, (g.coeff (A.κ j) x)⁻¹ a 0 * partialDeriv a (fun z => W (A.κ j z)) x = 0) ∧
      (∀ j, A.D j → ∀ x ∈ Metric.ball (A.c j) (A.r j / 8), x 0 = 0 → W (A.κ j x) = 0) :=
by
  classical
  obtain ⟨hU, hV⟩ := hsol
  have hsrc : ∀ j, (A.κ j).source = Metric.ball (A.c j) (A.r j) := A.source_eq
  have hball4 : ∀ j, Metric.ball (A.c j) (A.r j / 4) ⊆ Metric.ball (A.c j) (A.r j) := fun j =>
    Metric.ball_subset_ball (by linarith [A.r_pos j])
  have hball84 : ∀ j, Metric.ball (A.c j) (A.r j / 8) ⊆ Metric.ball (A.c j) (A.r j / 4) := fun j =>
    Metric.ball_subset_ball (by linarith [A.r_pos j])
  
  have hGs : ∀ j (a b : Fin 3), ContDiffOn ℝ ∞ (fun x => g.coeff (A.κ j) x a b)
      (Metric.ball (A.c j) (A.r j)) := by
    intro j a b
    rw [← hsrc j]
    exact coeff_contDiffOn_source g (A.κ j) a b
  have hGsymm : ∀ j (x : E3) (a b : Fin 3), g.coeff (A.κ j) x a b = g.coeff (A.κ j) x b a := by
    intro j x a b
    exact g.symm _ _ _
  have hGpos : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), (g.coeff (A.κ j) x).PosDef := by
    intro j x hx
    rw [← hsrc j] at hx
    exact coeff_posDef g (A.κ j) x hx
  have hdet : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), 0 < (g.coeff (A.κ j) x).det :=
    fun j x hx => (hGpos j x hx).det_pos
  have hsq : ∀ j, ContDiffOn ℝ ∞ (fun x => Real.sqrt (g.coeff (A.κ j) x).det)
      (Metric.ball (A.c j) (A.r j)) :=
    fun j => ccs_sqrtdet_smooth _ _ (hGs j) (hdet j)
  have hsqpos : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), 0 < Real.sqrt (g.coeff (A.κ j) x).det :=
    fun j x hx => Real.sqrt_pos.mpr (hdet j x hx)
  have hGi : ∀ j (a b : Fin 3), ContDiffOn ℝ ∞ (fun x => (g.coeff (A.κ j) x)⁻¹ a b)
      (Metric.ball (A.c j) (A.r j)) := by
    intro j a b
    rw [← hsrc j]
    exact (flat_coeff_regular g (A.κ j)).1 a b
  have hGisymm : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), ∀ a b : Fin 3,
      (g.coeff (A.κ j) x)⁻¹ a b = (g.coeff (A.κ j) x)⁻¹ b a := by
    intro j x hx
    rw [← hsrc j] at hx
    exact (flat_coeff_regular g (A.κ j)).2.1 x hx
  have hGipos : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), ((g.coeff (A.κ j) x)⁻¹).PosDef := by
    intro j x hx
    rw [← hsrc j] at hx
    exact (flat_coeff_regular g (A.κ j)).2.2.1 x hx
  have hcomp : ∀ j (φ : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ φ →
      ContDiffOn ℝ ∞ (fun z => φ (A.κ j z)) (Metric.ball (A.c j) (A.r j)) := by
    intro j φ hφ
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (φ ∘ A.κ j) (A.κ j).source :=
      hφ.comp_contMDiffOn (A.κ j).contMDiffOn
    have h2 := contMDiffOn_iff_contDiffOn.mp h1
    rw [hsrc j] at h2
    exact h2
  obtain ⟨Am, hAm⟩ : ∃ Am : Fin A.n → E3 → Matrix (Fin 3) (Fin 3) ℝ,
      Am = fun j x => Real.sqrt (g.coeff (A.κ j) x).det • (g.coeff (A.κ j) x)⁻¹ := ⟨_, rfl⟩
  have hAmdef : ∀ j x, Am j x = Real.sqrt (g.coeff (A.κ j) x).det • (g.coeff (A.κ j) x)⁻¹ := by
    intro j x
    rw [hAm]
  have hAme : ∀ j x (a b : Fin 3),
      Am j x a b = Real.sqrt (g.coeff (A.κ j) x).det * (g.coeff (A.κ j) x)⁻¹ a b := by
    intro j x a b
    rw [hAmdef, Matrix.smul_apply, smul_eq_mul]
  obtain ⟨Fj, hFj⟩ : ∃ Fj : Fin A.n → E3 → ℝ,
      Fj = fun j x => Real.sqrt (g.coeff (A.κ j) x).det * f (A.κ j x) := ⟨_, rfl⟩
  have hFe : ∀ j x, Fj j x = Real.sqrt (g.coeff (A.κ j) x).det * f (A.κ j x) := by
    intro j x
    rw [hFj]
  have hAs : ∀ j (a b : Fin 3), ContDiffOn ℝ ∞ (fun x => Am j x a b)
      (Metric.ball (A.c j) (A.r j)) := by
    intro j a b
    have he : (fun x => Am j x a b) =
        fun x => Real.sqrt (g.coeff (A.κ j) x).det * (g.coeff (A.κ j) x)⁻¹ a b :=
      funext fun x => hAme j x a b
    rw [he]
    exact (hsq j).mul (hGi j a b)
  have hAsymm : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), ∀ a b : Fin 3,
      Am j x a b = Am j x b a := by
    intro j x hx a b
    rw [hAme, hAme, hGisymm j x hx a b]
  have hApos : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j), (Am j x).PosDef := by
    intro j x hx
    rw [hAmdef]
    exact (hGipos j x hx).smul (hsqpos j x hx)
  have hFs : ∀ j, ContDiffOn ℝ ∞ (Fj j) (Metric.ball (A.c j) (A.r j)) := by
    intro j
    have he : Fj j = fun x => Real.sqrt (g.coeff (A.κ j) x).det * f (A.κ j x) :=
      funext fun x => hFe j x
    rw [he]
    exact (hsq j).mul (hcomp j f hf)
  
  have hchart : ∀ j, ∃ w : E3 → ℝ, ContDiffOn ℝ ∞ w (Metric.ball (A.c j) (A.r j / 4)) ∧
      (∀ᵐ x ∂(volume.restrict (Metric.ball (A.c j) (A.r j / 4) ∩ {x : E3 | 0 < x 0})),
        v j x = w x) ∧
      (∀ x ∈ Metric.ball (A.c j) (A.r j / 4), 0 ≤ x 0 →
        lapLoc (g.coeff (A.κ j)) w x = f (A.κ j x)) ∧
      (¬ A.D j → ∀ x ∈ Metric.ball (A.c j) (A.r j / 4), x 0 = 0 →
        ∑ a : Fin 3, (g.coeff (A.κ j) x)⁻¹ a 0 * partialDeriv a w x = 0) ∧
      (A.D j → ∀ x ∈ Metric.ball (A.c j) (A.r j / 4), x 0 = 0 → w x = 0) := by
    intro j
    have hflat : ∃ w : E3 → ℝ, ContDiffOn ℝ ∞ w (Metric.ball (A.c j) (A.r j / 4)) ∧
        (∀ᵐ x ∂(volume.restrict (Metric.ball (A.c j) (A.r j / 4) ∩ {x : E3 | 0 < x 0})),
          v j x = w x) ∧
        (∀ x ∈ Metric.ball (A.c j) (A.r j / 4), 0 ≤ x 0 →
          ∑ a : Fin 3, partialDeriv a (fun y => ∑ b : Fin 3, Am j y a b * partialDeriv b w y) x
            = Fj j x) ∧
        (¬ A.D j → ∀ x ∈ Metric.ball (A.c j) (A.r j / 4), x 0 = 0 →
          ∑ b : Fin 3, Am j x 0 b * partialDeriv b w x = 0) ∧
        (A.D j → ∀ x ∈ Metric.ball (A.c j) (A.r j / 4), x 0 = 0 → w x = 0) := by
      by_cases hD : A.D j
      · have hvz : ∀ m, ∃ O : Set E3, IsOpen O ∧
            {x ∈ Metric.ball (A.c j) (A.r j) | x 0 = 0} ⊆ O ∧
            ∀ x ∈ O, (fun m z => u m (A.κ j z)) m x = 0 := by
          intro m
          obtain ⟨N, hNo, hSN, hN0⟩ := (hU m).2
          have hcont : ContinuousOn (A.κ j) (Metric.ball (A.c j) (A.r j)) := by
            rw [← hsrc j]
            exact (A.κ j).contMDiffOn.continuousOn
          refine ⟨Metric.ball (A.c j) (A.r j) ∩ (A.κ j) ⁻¹' N,
            hcont.isOpen_inter_preimage Metric.isOpen_ball hNo, ?_, ?_⟩
          · rintro x ⟨hx, hx0⟩
            exact ⟨hx, hSN ((A.dir j x hx).2 ⟨hD, hx0⟩)⟩
          · rintro x ⟨_, hxN⟩
            exact hN0 _ hxN
        obtain ⟨w, h1, h2, h3, h4⟩ := flat_dirichlet_regularity (A.c j) (A.r j) (A.r_pos j)
          (A.D_center j hD) (Am j) (hAs j) (hAsymm j) (hApos j) (Fj j) (hFs j) (v j) (Gr j)
          (fun m z => u m (A.κ j z)) (fun m => hcomp j (u m) (hU m).1) hvz (hV j).1 (hV j).2.1
          (hV j).2.2.1 (hV j).2.2.2.1
          (fun ζ hζ1 hζ2 hζ3 hζO => by
            simp only [hAme, hFe]
            exact (hV j).2.2.2.2 ζ hζ1 hζ2 hζ3 (fun _ => hζO))
        exact ⟨w, h1, h2, h3, fun h => absurd hD h, fun _ => h4⟩
      · obtain ⟨w, h1, h2, h3, h4⟩ := flat_conormal_regularity (A.c j) (A.r j) (A.r_pos j)
          (A.center j) (Am j) (hAs j) (hAsymm j) (hApos j) (Fj j) (hFs j) (v j) (Gr j)
          (fun m z => u m (A.κ j z)) (fun m => hcomp j (u m) (hU m).1) (hV j).1 (hV j).2.1
          (hV j).2.2.1 (hV j).2.2.2.1
          (fun ζ hζ1 hζ2 hζ3 => by
            simp only [hAme, hFe]
            exact (hV j).2.2.2.2 ζ hζ1 hζ2 hζ3 (fun h => absurd h hD))
        exact ⟨w, h1, h2, h3, fun _ => h4, fun h => absurd h hD⟩
    obtain ⟨w, h1, h2, h3, h4, h5⟩ := hflat
    refine ⟨w, h1, h2, ?_, ?_, h5⟩
    · intro x hx hx0
      have hx' := hball4 j hx
      have hdiv := lapLoc_div_form (Metric.ball (A.c j) (A.r j / 4)) Metric.isOpen_ball
        (g.coeff (A.κ j)) (fun a b => (hGs j a b).mono (hball4 j)) (hGsymm j)
        (fun y hy => hGpos j y (hball4 j hy)) w h1 x hx
      have h3x := h3 x hx hx0
      simp only [hAme] at h3x
      rw [hdiv, hFe] at h3x
      exact mul_left_cancel₀ (ne_of_gt (hsqpos j x hx')) h3x
    · intro hD x hx hx0
      have hx' := hball4 j hx
      have h4x := h4 hD x hx hx0
      simp only [hAme] at h4x
      have hm : Real.sqrt (g.coeff (A.κ j) x).det *
          (∑ a : Fin 3, (g.coeff (A.κ j) x)⁻¹ a 0 * partialDeriv a w x) = 0 := by
        rw [Finset.mul_sum, ← h4x]
        refine Finset.sum_congr rfl (fun b _ => ?_)
        rw [hGisymm j x hx' b 0]
        ring
      exact (mul_eq_zero.mp hm).resolve_left (ne_of_gt (hsqpos j x hx'))
  choose w hw hwae hwlap hwneu hwdir using hchart
  
  have hcompat := nds_overlap_compat A u (fun m => (hU m).1) v (fun j => (hV j).1)
    (fun j => (hV j).2.2.1) w hw hwae
  obtain ⟨W, hWs, hWeq⟩ := nds_glue A w hw hcompat
  refine ⟨W, hWs, ?_, ?_, ?_⟩
  · intro j x hx hx0
    obtain ⟨_, e1, e2⟩ := hWeq j x hx hx0
    have e : lapLoc (g.coeff (A.κ j)) (fun z => W (A.κ j z)) x =
        lapLoc (g.coeff (A.κ j)) (w j) x := by
      simp only [lapLoc, hessLoc, e1, e2]
    rw [e]
    exact hwlap j x (hball84 j hx) hx0
  · intro j hD x hx hx0
    obtain ⟨_, e1, _⟩ := hWeq j x hx (le_of_eq hx0.symm)
    simp only [e1]
    exact hwneu j hD x (hball84 j hx) hx0
  · intro j hD x hx hx0
    rw [(hWeq j x hx (le_of_eq hx0.symm)).1]
    exact hwdir j hD x (hball84 j hx) hx0

theorem neumann_dirichlet_solve [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (ρ : ℝ) (hρ : Re + 1 < ρ) (f : M → ℝ) (hf : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f)
    (hf0 : ∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} → f p = 0) :
    ∃ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w ∧
      (∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} → g.lapM w p = f p) ∧
      (∀ p : M, β p = 0 → g.gradInner w β p = 0) ∧
      (∀ y : E3, ‖y‖ = ρ → w ((hAF.ends k).Φ y) = 0) ∧
      (∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} →
        p ∉ connectedComponentIn ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖})
          ((hAF.ends k).Φ (ρ • e 0)) → w p = 0) :=
by
  classical
  
  have hβs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β := hβ.1
  have hβpos : ∀ y : E3, Re < ‖y‖ → 0 < β ((hAF.ends k).Φ y) := hβ.2.2.2.1
  have hρpos : 0 < ρ := by have := hβ.2.2.1; linarith
  have hρ0 : ‖ρ • e 0‖ = ρ := by
    rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
      abs_of_pos hρpos]
  have hbdry : ∀ p : M, β p = 0 → p ∉ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} := by
    intro p hp hpF
    obtain ⟨y, hy, hyp⟩ := hpF
    have h1 := hβpos y hy
    rw [hyp, hp] at h1
    exact lt_irrefl _ h1
  have hmono : ∀ p : M, p ∈ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} →
      p ∈ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} := by
    intro p hp
    obtain ⟨y, hy, hyp⟩ := hp
    have hy' : ρ < ‖y‖ := hy
    exact ⟨y, show Re < ‖y‖ by linarith, hyp⟩
  have hsubcl : ∀ p : M, p ∈ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} →
      p ∈ (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} := by
    intro p hp
    obtain ⟨y, hy, hyp⟩ := hp
    have hy' : ρ < ‖y‖ := hy
    exact ⟨y, le_of_lt hy', hyp⟩
  
  have hzero : ∀ (p : M) (w : M → ℝ),
      g.lapM (fun _ => (0 : ℝ)) p = 0 ∧ g.gradInner (fun _ => (0 : ℝ)) w p = 0 := by
    intro p w
    have h := (lapM_gradInner_linear_local g (fun _ => (0 : ℝ)) (fun _ => (0 : ℝ)) w p).1
      contMDiff_const contMDiff_const 0 0
    simp only [zero_mul, add_zero] at h
    exact h
  have hvan : ∀ (u : M → ℝ) (U : Set M), IsOpen U → (∀ q ∈ U, u q = 0) → ∀ p ∈ U,
      ∀ w : M → ℝ, g.lapM u p = 0 ∧ g.gradInner u w p = 0 := by
    intro u U hU hu p hp w
    obtain ⟨h1, h2⟩ := (lapM_gradInner_linear_local g u (fun _ => (0 : ℝ)) w p).2 U hU hp hu
    exact ⟨h1.trans (hzero p w).1, h2.trans (hzero p w).2⟩
  
  obtain ⟨hCc, hOCc, hSC, hoff⟩ := nds_component_topology g hAF k β Re hβ ρ hρ
  obtain ⟨A⟩ := nds_atlas_exists g hAF k β Re hβ ρ hρ
  have hconn : IsPreconnected (connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0))) :=
    isPreconnected_connectedComponentIn
  have hS : ∃ q ∈ (hAF.ends k).Φ '' {y : E3 | ‖y‖ = ρ}, q ∈ connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0)) :=
    ⟨(hAF.ends k).Φ (ρ • e 0), ⟨ρ • e 0, hρ0, rfl⟩, hSC _ hρ0⟩
  
  have hcover : ∀ p ∈ connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0)),
      ∃ j, ∃ x ∈ Metric.ball (A.c j) (A.r j / 8), A.κ j x = p := by
    intro p hp
    have hsum := A.ψ_sum p hp
    by_contra hcon
    push_neg at hcon
    have hz : ∀ j, A.ψ j p = 0 := by
      intro j
      by_contra hne
      have hpt : p ∈ tsupport (A.ψ j) := subset_tsupport _ hne
      obtain ⟨x, hx, hxp⟩ := (A.ψ_supp j).2 hpt
      exact hcon j x hx hxp
    rw [Finset.sum_eq_zero (fun j _ => hz j)] at hsum
    exact zero_ne_one hsum
  have hball8 : ∀ j, ∀ x ∈ Metric.ball (A.c j) (A.r j / 8), x ∈ Metric.ball (A.c j) (A.r j) := by
    intro j x hx
    have hr := A.r_pos j
    exact Metric.ball_subset_ball (by linarith) hx
  
  obtain ⟨u, v, Gr, hsol⟩ := nds_weak_solution g A hconn hS f hf
  obtain ⟨W, hW, hWlap, hWneu, hWdir⟩ := nds_weak_regularity g A f hf u v Gr hsol
  
  haveI : SigmaCompactSpace M := af_sigmaCompactSpace g hAF
  haveI : LocallyCompactSpace M := ChartedSpace.locallyCompactSpace E3 M
  have hdisj : Disjoint (({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) \
      connectedComponentIn ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖})
        ((hAF.ends k).Φ (ρ • e 0)))
      (connectedComponentIn ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖})
        ((hAF.ends k).Φ (ρ • e 0))) := Set.disjoint_sdiff_left
  obtain ⟨χ, hχ0, hχ1, -⟩ := exists_smooth_zero_one_nhds_of_isClosed 𝓘(ℝ, E3) (n := ⊤)
    hOCc.isClosed hCc.isClosed hdisj
  obtain ⟨U0, hU0o, hU0s, hU0⟩ := eventually_nhdsSet_iff_exists.mp hχ0
  obtain ⟨U1, hU1o, hU1s, hU1⟩ := eventually_nhdsSet_iff_exists.mp hχ1
  have hχs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ χ := χ.contMDiff
  have hwW : ∀ q ∈ U1, χ q * W q = W q := by
    intro q hq
    rw [hU1 q hq, one_mul]
  have hw0 : ∀ q ∈ U0, χ q * W q = 0 := by
    intro q hq
    rw [hU0 q hq, zero_mul]
  
  have hπ1 : ∀ (b : Fin 3) (z : E3),
      partialDeriv b (fun z : E3 => z 0) z = if b = 0 then (1 : ℝ) else 0 := by
    intro b z
    show fderiv ℝ (⇑(EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ)) z (e b) = _
    rw [ContinuousLinearMap.fderiv]
    show (e b) 0 = _
    simp [EuclideanSpace.single_apply, eq_comm]
  refine ⟨fun p => χ p * W p, hχs.mul hW, ?_, ?_, ?_, ?_⟩
  · 
    intro p hp0 hpF
    have hpFρ : p ∉ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} := fun h => hpF (hsubcl p h)
    by_cases hpC : p ∈ connectedComponentIn
        ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0))
    · have heq : g.lapM (fun q => χ q * W q) p = g.lapM W p :=
        ((lapM_gradInner_linear_local g (fun q => χ q * W q) W β p).2 U1 hU1o (hU1s hpC)
          hwW).1
      rw [heq]
      obtain ⟨j, x, hx8, rfl⟩ := hcover p hpC
      have hx := hball8 j x hx8
      have hx0 : 0 ≤ x 0 := (A.dom j x hx).1 hpC
      have hxs : x ∈ (A.κ j).source := by rw [A.source_eq j]; exact hx
      have hinv := lapLocal_chart_invariant g (A.κ j) W Set.univ isOpen_univ
        hW.contMDiffOn x hxs trivial
      have e1 : lapLoc (g.coeff (A.κ j)) (fun z => W (A.κ j z)) x =
          lapLocal (g.coeff (A.κ j)) (W ∘ A.κ j) x := rfl
      have e2 : lapM g W (A.κ j x) = g.lapM W (A.κ j x) := rfl
      rw [← e2, ← hinv, ← e1, hWlap j x hx8 hx0]
    · have hpU : p ∈ U0 := hU0s ⟨⟨hp0, hpFρ⟩, hpC⟩
      rw [(hvan (fun q => χ q * W q) U0 hU0o hw0 p hpU β).1, hf0 p hp0 (hoff p hp0 hpFρ hpC)]
  · 
    intro p hp
    have hp0 : 0 ≤ β p := le_of_eq hp.symm
    have hpFρ : p ∉ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} := fun h => hbdry p hp (hmono p h)
    by_cases hpC : p ∈ connectedComponentIn
        ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0))
    · have heq : g.gradInner (fun q => χ q * W q) β p = g.gradInner W β p :=
        ((lapM_gradInner_linear_local g (fun q => χ q * W q) W β p).2 U1 hU1o (hU1s hpC)
          hwW).2
      rw [heq]
      obtain ⟨j, x, hx8, rfl⟩ := hcover p hpC
      have hx := hball8 j x hx8
      have hxs : x ∈ (A.κ j).source := by rw [A.source_eq j]; exact hx
      obtain ⟨hD, hx00⟩ := (A.bdry j x hx).1 hp
      have hc0 : A.c j 0 = 0 := by
        rcases A.center j with h | h
        · exact h
        · exfalso
          have hr := A.r_pos j
          have hd : dist x (A.c j) < A.r j / 8 := hx8
          have hcoord : |x 0 - A.c j 0| ≤ dist x (A.c j) := by
            rw [EuclideanSpace.dist_eq, Fin.sum_univ_three, Real.dist_eq, Real.dist_eq,
              Real.dist_eq]
            apply Real.le_sqrt_of_sq_le
            have h1 : 0 ≤ |x 1 - A.c j 1| ^ 2 := sq_nonneg _
            have h2 : 0 ≤ |x 2 - A.c j 2| ^ 2 := sq_nonneg _
            linarith
          rw [hx00, zero_sub, abs_neg] at hcoord
          have : A.c j 0 ≤ |A.c j 0| := le_abs_self _
          linarith
      have hev : (fun z => β (A.κ j z)) =ᶠ[𝓝 x] (fun z : E3 => z 0) := by
        filter_upwards [Metric.isOpen_ball.mem_nhds hx] with z hz
        exact A.neu j hD hc0 z hz
      have hdβ : ∀ b : Fin 3, partialDeriv b (fun z => β (A.κ j z)) x =
          if b = 0 then (1 : ℝ) else 0 := by
        intro b
        rw [← hπ1 b x]
        show fderiv ℝ (fun z => β (A.κ j z)) x (e b) = fderiv ℝ (fun z : E3 => z 0) x (e b)
        rw [hev.fderiv_eq]
      have hN := hWneu j hD x hx8 hx00
      rw [gradInner_pdiffeo_formula g (A.κ j) W β hW hβs x hxs]
      have hrw : ∀ i : Fin 3, ∑ b : Fin 3, (g.coeff (A.κ j) x)⁻¹ i b *
          partialDeriv i (fun z => W (A.κ j z)) x * partialDeriv b (fun z => β (A.κ j z)) x =
          (g.coeff (A.κ j) x)⁻¹ i 0 * partialDeriv i (fun z => W (A.κ j z)) x := by
        intro i
        have h10 : ¬ ((1 : Fin 3) = 0) := by decide
        have h20 : ¬ ((2 : Fin 3) = 0) := by decide
        simp only [hdβ, Fin.sum_univ_three, if_true, h10, h20, if_false, mul_one, mul_zero,
          add_zero]
      rw [Finset.sum_congr rfl (fun i _ => hrw i)]
      exact hN
    · have hpU : p ∈ U0 := hU0s ⟨⟨hp0, hpFρ⟩, hpC⟩
      exact (hvan (fun q => χ q * W q) U0 hU0o hw0 p hpU β).2
  · 
    intro y hy
    have hC := hSC y hy
    obtain ⟨j, x, hx8, hxp⟩ := hcover _ hC
    have hx := hball8 j x hx8
    obtain ⟨hD, hx00⟩ := (A.dir j x hx).1 ⟨y, hy, hxp.symm⟩
    show χ ((hAF.ends k).Φ y) * W ((hAF.ends k).Φ y) = 0
    rw [hwW _ (hU1s hC), ← hxp]
    exact hWdir j hD x hx8 hx00
  · 
    intro p hp0 hpF hpC
    exact hw0 p (hU0s ⟨⟨hp0, hpF⟩, hpC⟩)

theorem nli_chart_lapM_eq [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (p : M)
    (u : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (y : E3) (hy : y ∈ (chartAt E3 p).target) :
    g.lapM u ((chartAt E3 p).symm y) =
      ∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm y)⁻¹ i j *
          partialDeriv i (partialDeriv j (fun z => u ((chartAt E3 p).symm z))) y
      + ∑ l : Fin 3, (-(∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm y)⁻¹ i j *
          christoffel (g.coeff (chartAt E3 p).symm) l i j y)) *
          partialDeriv l (fun z => u ((chartAt E3 p).symm z)) y :=
by
  classical
  have hT : IsOpen (chartAt E3 p).target := (chartAt E3 p).open_target
  obtain ⟨Ψ, hΨs, hΨ⟩ := partialDiffeomorph_of_injOn p (chartAt E3 p).target hT id
    contDiffOn_id (Set.injOn_id _) (fun z hz => hz)
    (fun z _ => by rw [fderiv_id]; exact fun a b h => h)
  have hΨ' : ∀ z ∈ (chartAt E3 p).target, Ψ z = (chartAt E3 p).symm z := fun z hz => hΨ z hz
  have hyΨ : y ∈ Ψ.source := by rw [hΨs]; exact hy
  have hinv := lapLocal_chart_invariant g Ψ u Set.univ isOpen_univ hu.contMDiffOn y hyΨ trivial
  rw [hΨ' y hy] at hinv
  have e2 : lapM g u ((chartAt E3 p).symm y) = g.lapM u ((chartAt E3 p).symm y) := rfl
  rw [e2] at hinv
  rw [← hinv]
  
  have hloc : ∀ (F₁ F₂ : E3 → ℝ), (∀ z ∈ (chartAt E3 p).target, F₁ z = F₂ z) →
      ∀ z ∈ (chartAt E3 p).target, ∀ k : Fin 3, partialDeriv k F₁ z = partialDeriv k F₂ z := by
    intro F₁ F₂ hF z hz k
    have hev : F₁ =ᶠ[𝓝 z] F₂ := Filter.eventually_of_mem (hT.mem_nhds hz) hF
    unfold partialDeriv
    rw [hev.fderiv_eq]
  
  have hG : ∀ z ∈ (chartAt E3 p).target, g.coeff Ψ z = g.coeff (chartAt E3 p).symm z := by
    intro z hz
    have hev : (Ψ : E3 → M) =ᶠ[𝓝 z] (chartAt E3 p).symm :=
      Filter.eventually_of_mem (hT.mem_nhds hz) hΨ'
    unfold RiemannianMetric3.coeff coeffMatrix
    rw [hev.mfderiv_eq, hΨ' z hz]
  have hGd : ∀ a b k : Fin 3, partialDeriv k (fun z => g.coeff Ψ z a b) y =
      partialDeriv k (fun z => g.coeff (chartAt E3 p).symm z a b) y :=
    fun a b k => hloc _ _ (fun z hz => by rw [hG z hz]) y hy k
  have hchr : ∀ k i j : Fin 3, christoffel (g.coeff Ψ) k i j y =
      christoffel (g.coeff (chartAt E3 p).symm) k i j y := by
    intro k i j
    simp only [christoffel, hG y hy, hGd]
  have hf : ∀ z ∈ (chartAt E3 p).target, (u ∘ Ψ) z = u ((chartAt E3 p).symm z) :=
    fun z hz => by simp only [Function.comp, hΨ' z hz]
  have hd1 : ∀ z ∈ (chartAt E3 p).target, ∀ k : Fin 3,
      partialDeriv k (u ∘ Ψ) z = partialDeriv k (fun w => u ((chartAt E3 p).symm w)) z :=
    hloc _ _ hf
  have hd2 : ∀ i j : Fin 3, partialDeriv i (fun z => partialDeriv j (u ∘ Ψ) z) y =
      partialDeriv i (partialDeriv j (fun w => u ((chartAt E3 p).symm w))) y :=
    fun i j => hloc _ _ (fun z hz => hd1 z hz j) y hy i
  unfold lapLocal
  simp only [hG y hy, hchr, hd1 y hy, hd2]
  simp only [Fin.sum_univ_three]
  ring

theorem nli_chart_data [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (p : M) :
    (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => (g.coeff (chartAt E3 p).symm y)⁻¹ i j)
        (chartAt E3 p).target) ∧
    (∀ l : Fin 3, ContDiffOn ℝ ∞ (fun y => -(∑ i : Fin 3, ∑ j : Fin 3,
        (g.coeff (chartAt E3 p).symm y)⁻¹ i j * christoffel (g.coeff (chartAt E3 p).symm) l i j y))
        (chartAt E3 p).target) ∧
    (∀ y ∈ (chartAt E3 p).target, ∀ ξ : Fin 3 → ℝ, ξ ≠ 0 →
        0 < ∑ i : Fin 3, ∑ j : Fin 3, ξ i * (g.coeff (chartAt E3 p).symm y)⁻¹ i j * ξ j) ∧
    (∀ u : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u →
        ContDiffOn ℝ ∞ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p).target) :=
by
  classical
  have hT : IsOpen (chartAt E3 p).target := (chartAt E3 p).open_target
  have coeff_chart_symm_posDef : ∀ y ∈ (chartAt E3 p).target,
      (g.coeff (chartAt E3 p).symm y).PosDef := by
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
  set G := g.coeff (chartAt E3 p).symm with hGdef
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) (chartAt E3 p).target :=
    fun i j => g.smooth p i j
  have hdetS : ∀ H : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => H y i j) (chartAt E3 p).target) →
      ContDiffOn ℝ ∞ (fun y => (H y).det) (chartAt E3 p).target := by
    intro H hH
    have e : (fun y => (H y).det) = fun y => H y 0 0 * H y 1 1 * H y 2 2
        - H y 0 0 * H y 1 2 * H y 2 1
        - H y 0 1 * H y 1 0 * H y 2 2 + H y 0 1 * H y 1 2 * H y 2 0
        + H y 0 2 * H y 1 0 * H y 2 1 - H y 0 2 * H y 1 1 * H y 2 0 := by
      funext y; exact Matrix.det_fin_three _
    rw [e]
    exact (((((((hH 0 0).mul (hH 1 1)).mul (hH 2 2)).sub
      (((hH 0 0).mul (hH 1 2)).mul (hH 2 1))).sub
      (((hH 0 1).mul (hH 1 0)).mul (hH 2 2))).add (((hH 0 1).mul (hH 1 2)).mul (hH 2 0))).add
      (((hH 0 2).mul (hH 1 0)).mul (hH 2 1))).sub (((hH 0 2).mul (hH 1 1)).mul (hH 2 0))
  have hinv : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => (G y)⁻¹ i j) (chartAt E3 p).target := by
    intro i j
    have hadj : ContDiffOn ℝ ∞ (fun y => (G y).adjugate i j) (chartAt E3 p).target := by
      have e : (fun y => (G y).adjugate i j) =
          fun y => ((G y).updateRow j (Pi.single i 1)).det := by
        funext y; exact Matrix.adjugate_apply _ _ _
      rw [e]
      refine hdetS (fun y => (G y).updateRow j (Pi.single i 1)) ?_
      intro k l
      by_cases hk : k = j
      · subst hk
        simp only [Matrix.updateRow_self]
        exact contDiffOn_const
      · simp only [Matrix.updateRow_ne hk]
        exact hG k l
    have hdinv : ContDiffOn ℝ ∞ (fun y => ((G y).det)⁻¹) (chartAt E3 p).target :=
      (hdetS G hG).inv (fun y hy => (coeff_chart_symm_posDef y hy).det_pos.ne')
    have e : (fun y => (G y)⁻¹ i j) = fun y => ((G y).det)⁻¹ * (G y).adjugate i j := by
      funext y
      simp only [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
    rw [e]
    exact hdinv.mul hadj
  have hpd : ∀ (f : E3 → ℝ), ContDiffOn ℝ ∞ f (chartAt E3 p).target → ∀ a : Fin 3,
      ContDiffOn ℝ ∞ (fun y => partialDeriv a f y) (chartAt E3 p).target := by
    intro f hf a
    have hfd : ContDiffOn ℝ ∞ (fun y => fderiv ℝ f y) (chartAt E3 p).target :=
      hf.fderiv_of_isOpen hT (le_of_eq rfl)
    exact hfd.clm_apply contDiffOn_const
  have hchr : ∀ l i j : Fin 3,
      ContDiffOn ℝ ∞ (fun y => christoffel G l i j y) (chartAt E3 p).target := by
    intro l i j
    unfold christoffel
    exact contDiffOn_const.mul (ContDiffOn.sum fun m _ => (hinv l m).mul
      (((hpd _ (hG j m) i).add (hpd _ (hG i m) j)).sub (hpd _ (hG i j) m)))
  refine ⟨hinv, fun l => ?_, fun y hy ξ hξ => ?_, fun u hu =>
    contMDiffOn_iff_contDiffOn.mp (hu.comp_contMDiffOn contMDiffOn_chart_symm)⟩
  · exact (ContDiffOn.sum fun i _ => ContDiffOn.sum fun j _ => (hinv i j).mul (hchr l i j)).neg
  · have hP := (coeff_chart_symm_posDef y hy).inv
    have hpos := hP.dotProduct_mulVec_pos hξ
    simpa [dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc] using hpos

theorem nli_cutoff_bounds (y₀ : E3) (s r₁ r₂ : ℝ) (hr₁ : 0 < r₁) (hr₁₂ : r₁ < r₂) (hr₂ : r₂ < s)
    (v : ℕ → E3 → ℝ) (hv : ∀ n, ContDiffOn ℝ ∞ (v n) (Metric.ball y₀ s)) (C : ℕ → ℝ)
    (hC : ∀ (n m : ℕ), ∀ y ∈ Metric.ball y₀ s, ‖iteratedFDeriv ℝ m (v n) y‖ ≤ C m) :
    ∃ (f : ℕ → E3 → ℝ) (Bd : ℕ → ℝ), (∀ n, ContDiff ℝ ∞ (f n)) ∧
      (∀ (n m : ℕ) (y : E3), ‖iteratedFDeriv ℝ m (f n) y‖ ≤ Bd m) ∧
      (∀ n, ∀ y ∈ Metric.ball y₀ r₁, f n y = v n y) ∧
      (∀ n (y : E3), r₂ ≤ dist y y₀ → f n y = 0) :=
by
  classical
  let χ : ContDiffBump y₀ := ⟨r₁, r₂, hr₁, hr₁₂⟩
  have hχc : ContDiff ℝ ∞ (⇑χ) := χ.contDiff
  have hle : ∀ k : ℕ, (k : WithTop ℕ∞) ≤ ∞ := fun k => by exact_mod_cast le_top
  have hKex : ∀ i : ℕ, ∃ K : ℝ, ∀ x, ‖iteratedFDeriv ℝ i (⇑χ) x‖ ≤ K := fun i =>
    (hχc.continuous_iteratedFDeriv (hle i)).bounded_above_of_compact_support
      (χ.hasCompactSupport.iteratedFDeriv i)
  choose K hK using hKex
  have hK0 : ∀ i, 0 ≤ K i := fun i => (norm_nonneg _).trans (hK i y₀)
  have hZo : IsOpen {z : E3 | r₂ < dist z y₀} :=
    isOpen_lt continuous_const (continuous_id.dist continuous_const)
  have hcov : ∀ y, y ∉ Metric.ball y₀ s → r₂ < dist y y₀ := fun y hy => by
    rw [Metric.mem_ball, not_lt] at hy
    linarith
  have hzero : ∀ n y, r₂ ≤ dist y y₀ → χ y * v n y = 0 := fun n y hy => by
    rw [χ.zero_of_le_dist hy, zero_mul]
  have hev : ∀ n y, r₂ < dist y y₀ →
      (fun z => χ z * v n z) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := fun n y hy =>
    Filter.eventually_of_mem (hZo.mem_nhds hy) (fun z hz => hzero n z (le_of_lt hz))
  refine ⟨fun n y => χ y * v n y,
    fun m => max (∑ i ∈ Finset.range (m + 1), (m.choose i : ℝ) * K i * C (m - i)) 0,
    ?_, ?_, ?_, ?_⟩
  · intro n
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ Metric.ball y₀ s
    · exact (hχc.contDiffOn.mul (hv n)).contDiffAt (Metric.isOpen_ball.mem_nhds hy)
    · exact contDiffAt_const.congr_of_eventuallyEq (hev n y (hcov y hy))
  · intro n m y
    by_cases hy : y ∈ Metric.ball y₀ s
    · refine le_trans ?_ (le_max_left _ _)
      have h := norm_iteratedFDerivWithin_mul_le hχc.contDiffOn (hv n)
        Metric.isOpen_ball.uniqueDiffOn hy (hle m)
      rw [iteratedFDerivWithin_of_isOpen m Metric.isOpen_ball hy] at h
      refine h.trans (Finset.sum_le_sum fun i _ => ?_)
      rw [iteratedFDerivWithin_of_isOpen i Metric.isOpen_ball hy,
        iteratedFDerivWithin_of_isOpen (m - i) Metric.isOpen_ball hy]
      have h1 := hK i y
      have h2 := hC n (m - i) y hy
      have h3 : (0 : ℝ) ≤ (m.choose i : ℝ) := Nat.cast_nonneg _
      exact mul_le_mul (mul_le_mul_of_nonneg_left h1 h3) h2 (norm_nonneg _)
        (mul_nonneg h3 (hK0 i))
    · have h0 : iteratedFDeriv ℝ m (fun z => χ z * v n z) y = 0 := by
        rw [((hev n y (hcov y hy)).iteratedFDeriv ℝ m).eq_of_nhds, iteratedFDeriv_zero_fun]
        rfl
      show ‖iteratedFDeriv ℝ m (fun z => χ z * v n z) y‖ ≤ _
      rw [h0, norm_zero]
      exact le_max_right _ _
  · intro n y hy
    show χ y * v n y = v n y
    rw [χ.one_of_mem_closedBall (Metric.ball_subset_closedBall hy), one_mul]
  · intro n y hy
    exact hzero n y hy

theorem nib_compact_constants (y₀ : E3) (R : ℝ) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (b : E3 → Fin 3 → ℝ)
    (ha : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => a y i j) (Metric.ball y₀ R))
    (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun y => b y l) (Metric.ball y₀ R))
    (hell : ∀ y ∈ Metric.ball y₀ R, ∀ ξ : Fin 3 → ℝ, ξ ≠ 0 →
      0 < ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j)
    (ρ : ℝ) (hρ : ρ < R) :
    ∃ lam E : ℝ, 0 < lam ∧ 0 ≤ E ∧ ∀ y ∈ Metric.closedBall y₀ ρ,
      (∀ ξ : Fin 3 → ℝ,
        lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j) ∧
      (∀ i j : Fin 3, |a y i j| ≤ E) ∧ (∀ l : Fin 3, |b y l| ≤ E) :=
by
  classical
  set K := Metric.closedBall y₀ ρ with hKdef
  have hsub : K ⊆ Metric.ball y₀ R := Metric.closedBall_subset_ball hρ
  have hK : IsCompact K := isCompact_closedBall y₀ ρ
  have haK : ∀ i j : Fin 3, ContinuousOn (fun y => a y i j) K :=
    fun i j => (ha i j).continuousOn.mono hsub
  have hbK : ∀ l : Fin 3, ContinuousOn (fun y => b y l) K :=
    fun l => (hb l).continuousOn.mono hsub
  
  obtain ⟨E, hE0, hbd⟩ : ∃ E : ℝ, 0 ≤ E ∧ ∀ y ∈ K,
      (∀ i j : Fin 3, |a y i j| ≤ E) ∧ (∀ l : Fin 3, |b y l| ≤ E) := by
    have hF : ContinuousOn
        (fun y => ∑ i : Fin 3, ∑ j : Fin 3, |a y i j| + ∑ l : Fin 3, |b y l|) K := by
      refine ContinuousOn.add ?_ ?_
      · exact continuousOn_finset_sum _
          (fun i _ => continuousOn_finset_sum _ (fun j _ => (haK i j).abs))
      · exact continuousOn_finset_sum _ (fun l _ => (hbK l).abs)
    obtain ⟨C, hC⟩ := hK.exists_bound_of_continuousOn hF
    refine ⟨max C 0, le_max_right _ _, fun y hy => ?_⟩
    have hFy := hC y hy
    rw [Real.norm_eq_abs] at hFy
    have hFle : ∑ i : Fin 3, ∑ j : Fin 3, |a y i j| + ∑ l : Fin 3, |b y l| ≤ max C 0 :=
      (le_abs_self _).trans (hFy.trans (le_max_left _ _))
    have hA0 : 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, |a y i j| :=
      Finset.sum_nonneg (fun i _ => Finset.sum_nonneg (fun j _ => abs_nonneg _))
    have hB0 : 0 ≤ ∑ l : Fin 3, |b y l| := Finset.sum_nonneg (fun l _ => abs_nonneg _)
    refine ⟨fun i j => ?_, fun l => ?_⟩
    · have h1 : |a y i j| ≤ ∑ j' : Fin 3, |a y i j'| :=
        Finset.single_le_sum (f := fun j' => |a y i j'|) (fun j' _ => abs_nonneg _)
          (Finset.mem_univ j)
      have h2 : ∑ j' : Fin 3, |a y i j'| ≤ ∑ i' : Fin 3, ∑ j' : Fin 3, |a y i' j'| :=
        Finset.single_le_sum (f := fun i' => ∑ j' : Fin 3, |a y i' j'|)
          (fun i' _ => Finset.sum_nonneg (fun j' _ => abs_nonneg _)) (Finset.mem_univ i)
      linarith
    · have h1 : |b y l| ≤ ∑ l' : Fin 3, |b y l'| :=
        Finset.single_le_sum (f := fun l' => |b y l'|) (fun l' _ => abs_nonneg _)
          (Finset.mem_univ l)
      linarith
  
  obtain ⟨lam, hlam, hel⟩ : ∃ lam : ℝ, 0 < lam ∧ ∀ y ∈ K, ∀ ξ : Fin 3 → ℝ,
      lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j := by
    rcases Set.eq_empty_or_nonempty K with hKe | hKne
    · refine ⟨1, one_pos, fun y hy => ?_⟩
      rw [hKe] at hy
      simp at hy
    set S := Metric.sphere (0 : Fin 3 → ℝ) 1 with hSdef
    have hS : IsCompact S := isCompact_sphere _ _
    have hSne : S.Nonempty := NormedSpace.sphere_nonempty.mpr zero_le_one
    let Φ : E3 × (Fin 3 → ℝ) → ℝ := fun p => ∑ i : Fin 3, ∑ j : Fin 3, p.2 i * a p.1 i j * p.2 j
    have hΦ : ContinuousOn Φ (K ×ˢ S) := by
      refine continuousOn_finset_sum _ (fun i _ => continuousOn_finset_sum _ (fun j _ => ?_))
      have h1 : ContinuousOn (fun p : E3 × (Fin 3 → ℝ) => p.2 i) (K ×ˢ S) :=
        ((continuous_apply i).comp continuous_snd).continuousOn
      have h2 : ContinuousOn (fun p : E3 × (Fin 3 → ℝ) => p.2 j) (K ×ˢ S) :=
        ((continuous_apply j).comp continuous_snd).continuousOn
      have h3 : ContinuousOn (fun p : E3 × (Fin 3 → ℝ) => a p.1 i j) (K ×ˢ S) :=
        (haK i j).comp continuousOn_fst (fun p hp => hp.1)
      exact (h1.mul h3).mul h2
    obtain ⟨p, hp, hpmin⟩ := (hK.prod hS).exists_isMinOn (hKne.prod hSne) hΦ
    have hp2 : p.2 ≠ 0 := by
      intro h0
      have h1 : ‖p.2‖ = 1 := mem_sphere_zero_iff_norm.mp hp.2
      rw [h0, norm_zero] at h1
      exact zero_ne_one h1
    have hμ : 0 < Φ p := hell p.1 (hsub hp.1) p.2 hp2
    refine ⟨Φ p / 3, by positivity, fun y hy ξ => ?_⟩
    by_cases hξ : ξ = 0
    · subst hξ
      simp
    · have ht : 0 < ‖ξ‖ := norm_pos_iff.mpr hξ
      set t := ‖ξ‖ with htdef
      set η : Fin 3 → ℝ := t⁻¹ • ξ with hηdef
      have hη : η ∈ S := by
        rw [mem_sphere_zero_iff_norm, hηdef, norm_smul, norm_inv, Real.norm_eq_abs,
          abs_of_pos ht]
        exact inv_mul_cancel₀ ht.ne'
      have hmin : Φ p ≤ Φ (y, η) := isMinOn_iff.mp hpmin _ (Set.mk_mem_prod hy hη)
      have hξη : ∀ i, ξ i = t * η i := by
        intro i
        simp only [hηdef, Pi.smul_apply, smul_eq_mul]
        field_simp
      have hhom : ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j = t ^ 2 * Φ (y, η) := by
        simp only [Φ, Finset.mul_sum]
        refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
        rw [hξη i, hξη j]
        ring
      have hcoord : ∀ i, ξ i ^ 2 ≤ t ^ 2 := by
        intro i
        have h1 : |ξ i| ≤ t := by
          have h2 := norm_le_pi_norm ξ i
          rwa [Real.norm_eq_abs] at h2
        have h3 := neg_abs_le (ξ i)
        exact sq_le_sq' (by linarith) (le_trans (le_abs_self _) h1)
      have hsum : ∑ i : Fin 3, ξ i ^ 2 ≤ 3 * t ^ 2 := by
        rw [Fin.sum_univ_three]
        linarith [hcoord 0, hcoord 1, hcoord 2]
      rw [hhom]
      have ht2 : 0 ≤ t ^ 2 := sq_nonneg t
      calc Φ p / 3 * ∑ i : Fin 3, ξ i ^ 2 ≤ Φ p / 3 * (3 * t ^ 2) :=
            mul_le_mul_of_nonneg_left hsum (by positivity)
        _ = t ^ 2 * Φ p := by ring
        _ ≤ t ^ 2 * Φ (y, η) := mul_le_mul_of_nonneg_left hmin ht2
  exact ⟨lam, E, hlam, hE0, fun y hy => ⟨hel y hy, (hbd y hy).1, (hbd y hy).2⟩⟩

theorem nib_commutator_bound (y₀ : E3) (R : ℝ) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (b : E3 → Fin 3 → ℝ) (f : E3 → ℝ)
    (ha : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => a y i j) (Metric.ball y₀ R))
    (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun y => b y l) (Metric.ball y₀ R))
    (hf : ContDiffOn ℝ ∞ f (Metric.ball y₀ R)) (ρ : ℝ) (hρ : ρ < R) (n : ℕ) :
    ∃ G : ℝ, 0 ≤ G ∧ ∀ v : E3 → ℝ, ContDiffOn ℝ ∞ v (Metric.ball y₀ R) →
      (∀ y ∈ Metric.ball y₀ R, ellOp a b v y = f y) →
      ∀ y ∈ Metric.closedBall y₀ ρ, ∀ σ : Fin n → Fin 3,
        |ellOp a b (iterPartial σ v) y|
          ≤ G * (1 + ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y)) :=
by
  classical
  have hBo : IsOpen (Metric.ball y₀ R) := Metric.isOpen_ball
  
  have hP : ∀ (k : Fin 3) (w : E3 → ℝ), ContDiffOn ℝ ∞ w (Metric.ball y₀ R) →
      ContDiffOn ℝ ∞ (partialDeriv k w) (Metric.ball y₀ R) := by
    intro k w hw
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ w) (Metric.ball y₀ R) :=
      hw.fderiv_of_isOpen hBo (by simp)
    show ContDiffOn ℝ ∞ (fun y => fderiv ℝ w y (e k)) (Metric.ball y₀ R)
    exact h1.clm_apply contDiffOn_const
  
  have hI0 : ∀ (σ : Fin 0 → Fin 3) (w : E3 → ℝ), iterPartial σ w = w := by
    intro σ w
    simp [iterPartial]
  have hIc : ∀ (m : ℕ) (k : Fin 3) (τ : Fin m → Fin 3) (w : E3 → ℝ),
      iterPartial (Fin.cons k τ : Fin (m + 1) → Fin 3) w = partialDeriv k (iterPartial τ w) := by
    intro m k τ w
    simp [iterPartial, List.ofFn_succ]
  have hIs : ∀ (m : ℕ) (σ : Fin m → Fin 3) (w : E3 → ℝ), ContDiffOn ℝ ∞ w (Metric.ball y₀ R) →
      ContDiffOn ℝ ∞ (iterPartial σ w) (Metric.ball y₀ R) := by
    intro m
    induction m with
    | zero =>
      intro σ w hw
      rw [hI0]
      exact hw
    | succ m ih =>
      intro σ w hw
      rw [← Fin.cons_self_tail σ, hIc]
      exact hP _ _ (ih _ w hw)
  have hD : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w (Metric.ball y₀ R) → ∀ y ∈ Metric.ball y₀ R,
      DifferentiableAt ℝ w y := by
    intro w hw y hy
    exact (hw.contDiffAt (hBo.mem_nhds hy)).differentiableAt (by simp)
  have hLoc : ∀ (k : Fin 3) (p q : E3 → ℝ), (∀ z ∈ Metric.ball y₀ R, p z = q z) →
      ∀ y ∈ Metric.ball y₀ R, partialDeriv k p y = partialDeriv k q y := by
    intro k p q hpq y hy
    have hev : p =ᶠ[𝓝 y] q := Filter.eventually_of_mem (hBo.mem_nhds hy) hpq
    unfold partialDeriv
    rw [hev.fderiv_eq]
  have hSch : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w (Metric.ball y₀ R) → ∀ y ∈ Metric.ball y₀ R,
      ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j w) y = partialDeriv j (partialDeriv i w) y := by
    intro w hw y hy i j
    have h := hw.contDiffAt (hBo.mem_nhds hy)
    have h2inf : (2 : WithTop ℕ∞) ≤ ∞ := by
      first
        | exact mod_cast (le_top : ((2 : ℕ∞)) ≤ ⊤)
        | exact WithTop.coe_le_coe.2 le_top
    have hsymm : IsSymmSndFDerivAt ℝ w y := by
      apply h.isSymmSndFDerivAt
      rw [minSmoothness_of_isRCLikeNormedField]
      exact h2inf
    have h11 : (1 : WithTop ℕ∞) + 1 ≤ ∞ := by
      have : (1 : WithTop ℕ∞) + 1 = 2 := by norm_num
      rw [this]; exact h2inf
    have hdf : DifferentiableAt ℝ (fderiv ℝ w) y :=
      (h.fderiv_right (m := 1) h11).differentiableAt one_ne_zero
    have key : ∀ (c : Fin 3) (u : E3),
        partialDeriv c (fun z => fderiv ℝ w z u) y = fderiv ℝ (fderiv ℝ w) y (e c) u := by
      intro c u
      unfold partialDeriv
      rw [fderiv_clm_apply hdf (differentiableAt_const u)]
      simp
    show partialDeriv i (fun z => fderiv ℝ w z (e j)) y =
      partialDeriv j (fun z => fderiv ℝ w z (e i)) y
    rw [key, key]
    exact hsymm (e i) (e j)
  
  have hAdd : ∀ (k : Fin 3) (p q : E3 → ℝ) (y : E3), DifferentiableAt ℝ p y →
      DifferentiableAt ℝ q y →
      partialDeriv k (fun z => p z + q z) y = partialDeriv k p y + partialDeriv k q y := by
    intro k p q y hp hq
    unfold partialDeriv
    rw [fderiv_fun_add hp hq]
    rfl
  have hMul : ∀ (k : Fin 3) (p q : E3 → ℝ) (y : E3), DifferentiableAt ℝ p y →
      DifferentiableAt ℝ q y →
      partialDeriv k (fun z => p z * q z) y = partialDeriv k p y * q y + p y * partialDeriv k q y := by
    intro k p q y hp hq
    unfold partialDeriv
    rw [fderiv_fun_mul hp hq]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hSum : ∀ {ι : Type} (s : Finset ι) (k : Fin 3) (F : ι → E3 → ℝ) (y : E3),
      (∀ t ∈ s, DifferentiableAt ℝ (F t) y) →
      partialDeriv k (fun z => ∑ t ∈ s, F t z) y = ∑ t ∈ s, partialDeriv k (F t) y := by
    intro ι s k F y hF
    unfold partialDeriv
    rw [fderiv_fun_sum hF]
    simp
  
  have hComm : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w (Metric.ball y₀ R) → ∀ y ∈ Metric.ball y₀ R,
      ∀ k : Fin 3,
        ellOp a b (partialDeriv k w) y = partialDeriv k (ellOp a b w) y
          - ∑ i : Fin 3, ∑ j : Fin 3,
              partialDeriv k (fun z => a z i j) y * partialDeriv i (partialDeriv j w) y
          - ∑ l : Fin 3, partialDeriv k (fun z => b z l) y * partialDeriv l w y := by
    intro w hw y hy k
    have hdA : ∀ i j : Fin 3, DifferentiableAt ℝ (fun z => a z i j) y :=
      fun i j => hD _ (ha i j) y hy
    have hdB : ∀ l : Fin 3, DifferentiableAt ℝ (fun z => b z l) y :=
      fun l => hD _ (hb l) y hy
    have hd2 : ∀ i j : Fin 3, DifferentiableAt ℝ (partialDeriv i (partialDeriv j w)) y :=
      fun i j => hD _ (hP _ _ (hP _ _ hw)) y hy
    have hd1 : ∀ l : Fin 3, DifferentiableAt ℝ (partialDeriv l w) y :=
      fun l => hD _ (hP _ _ hw) y hy
    have hthird : ∀ i j : Fin 3, partialDeriv k (partialDeriv i (partialDeriv j w)) y =
        partialDeriv i (partialDeriv j (partialDeriv k w)) y := by
      intro i j
      rw [hSch (partialDeriv j w) (hP _ _ hw) y hy k i]
      exact hLoc i _ _ (fun z hz => hSch w hw z hz k j) y hy
    have hdprod : ∀ i j : Fin 3,
        DifferentiableAt ℝ (fun z => a z i j * partialDeriv i (partialDeriv j w) z) y :=
      fun i j => (hdA i j).mul (hd2 i j)
    have hdrow : ∀ i : Fin 3,
        DifferentiableAt ℝ (fun z => ∑ j : Fin 3, a z i j * partialDeriv i (partialDeriv j w) z) y :=
      fun i => DifferentiableAt.fun_sum (fun j _ => hdprod i j)
    have hdS1 : DifferentiableAt ℝ
        (fun z => ∑ i : Fin 3, ∑ j : Fin 3, a z i j * partialDeriv i (partialDeriv j w) z) y :=
      DifferentiableAt.fun_sum (fun i _ => hdrow i)
    have hdbt : ∀ l : Fin 3, DifferentiableAt ℝ (fun z => b z l * partialDeriv l w z) y :=
      fun l => (hdB l).mul (hd1 l)
    have hdS2 : DifferentiableAt ℝ (fun z => ∑ l : Fin 3, b z l * partialDeriv l w z) y :=
      DifferentiableAt.fun_sum (fun l _ => hdbt l)
    have hterm : ∀ i j : Fin 3,
        partialDeriv k (fun z => a z i j * partialDeriv i (partialDeriv j w) z) y =
          partialDeriv k (fun z => a z i j) y * partialDeriv i (partialDeriv j w) y
            + a y i j * partialDeriv i (partialDeriv j (partialDeriv k w)) y := by
      intro i j
      rw [hMul k _ _ y (hdA i j) (hd2 i j), hthird i j]
    have hrow : ∀ i : Fin 3,
        partialDeriv k (fun z => ∑ j : Fin 3, a z i j * partialDeriv i (partialDeriv j w) z) y =
          ∑ j : Fin 3, (partialDeriv k (fun z => a z i j) y * partialDeriv i (partialDeriv j w) y
            + a y i j * partialDeriv i (partialDeriv j (partialDeriv k w)) y) := by
      intro i
      rw [hSum Finset.univ k (fun j z => a z i j * partialDeriv i (partialDeriv j w) z) y
        (fun j _ => hdprod i j)]
      exact Finset.sum_congr rfl (fun j _ => hterm i j)
    have hA : partialDeriv k
        (fun z => ∑ i : Fin 3, ∑ j : Fin 3, a z i j * partialDeriv i (partialDeriv j w) z) y =
          ∑ i : Fin 3, ∑ j : Fin 3,
            (partialDeriv k (fun z => a z i j) y * partialDeriv i (partialDeriv j w) y
              + a y i j * partialDeriv i (partialDeriv j (partialDeriv k w)) y) := by
      rw [hSum Finset.univ k
        (fun i z => ∑ j : Fin 3, a z i j * partialDeriv i (partialDeriv j w) z) y
        (fun i _ => hdrow i)]
      exact Finset.sum_congr rfl (fun i _ => hrow i)
    have hbterm : ∀ l : Fin 3,
        partialDeriv k (fun z => b z l * partialDeriv l w z) y =
          partialDeriv k (fun z => b z l) y * partialDeriv l w y
            + b y l * partialDeriv l (partialDeriv k w) y := by
      intro l
      rw [hMul k _ _ y (hdB l) (hd1 l), hSch w hw y hy k l]
    have hBt : partialDeriv k (fun z => ∑ l : Fin 3, b z l * partialDeriv l w z) y =
        ∑ l : Fin 3, (partialDeriv k (fun z => b z l) y * partialDeriv l w y
          + b y l * partialDeriv l (partialDeriv k w) y) := by
      rw [hSum Finset.univ k (fun l z => b z l * partialDeriv l w z) y (fun l _ => hdbt l)]
      exact Finset.sum_congr rfl (fun l _ => hbterm l)
    have hEll : partialDeriv k (ellOp a b w) y =
        ∑ i : Fin 3, ∑ j : Fin 3,
            (partialDeriv k (fun z => a z i j) y * partialDeriv i (partialDeriv j w) y
              + a y i j * partialDeriv i (partialDeriv j (partialDeriv k w)) y)
          + ∑ l : Fin 3, (partialDeriv k (fun z => b z l) y * partialDeriv l w y
              + b y l * partialDeriv l (partialDeriv k w) y) := by
      have hdef : ellOp a b w = fun z =>
          (∑ i : Fin 3, ∑ j : Fin 3, a z i j * partialDeriv i (partialDeriv j w) z)
            + ∑ l : Fin 3, b z l * partialDeriv l w z := rfl
      rw [hdef, hAdd k _ _ y hdS1 hdS2, hA, hBt]
    rw [hEll]
    simp only [ellOp, Finset.sum_add_distrib]
    ring
  
  have hStruct : ∀ (m : ℕ) (σ : Fin m → Fin 3), ∃ (ι : Type) (_ : Fintype ι)
      (c : ι → E3 → ℝ) (p : ι → Σ d : ℕ, (Fin d → Fin 3)),
      (∀ t, ContDiffOn ℝ ∞ (c t) (Metric.ball y₀ R) ∧ (p t).1 ≤ m + 1) ∧
      ∀ v : E3 → ℝ, ContDiffOn ℝ ∞ v (Metric.ball y₀ R) →
        (∀ y ∈ Metric.ball y₀ R, ellOp a b v y = f y) →
        ∀ y ∈ Metric.ball y₀ R,
          ellOp a b (iterPartial σ v) y = iterPartial σ f y + ∑ t, c t y * iterPartial (p t).2 v y := by
    intro m
    induction m with
    | zero =>
      intro σ
      refine ⟨Empty, inferInstance, fun t => t.elim, fun t => t.elim, fun t => t.elim, ?_⟩
      intro v _ hpde y hy
      rw [hI0 σ v, hI0 σ f, Fintype.sum_empty, add_zero]
      exact hpde y hy
    | succ m ih =>
      intro σ
      obtain ⟨ι, hι, c, p, hc, hid⟩ := ih (Fin.tail σ)
      have e1 : ∀ w : E3 → ℝ, iterPartial σ w = partialDeriv (σ 0) (iterPartial (Fin.tail σ) w) := by
        intro w
        have h := hIc m (σ 0) (Fin.tail σ) w
        rwa [Fin.cons_self_tail] at h
      refine ⟨ι ⊕ ι ⊕ (Fin 3 × Fin 3) ⊕ Fin 3, inferInstance,
        Sum.elim (fun t => partialDeriv (σ 0) (c t)) (Sum.elim (fun t => c t)
          (Sum.elim (fun ij => fun z => -partialDeriv (σ 0) (fun x => a x ij.1 ij.2) z)
            (fun l => fun z => -partialDeriv (σ 0) (fun x => b x l) z))),
        Sum.elim (fun t => p t) (Sum.elim
          (fun t => ⟨(p t).1 + 1, (Fin.cons (σ 0) (p t).2 : Fin ((p t).1 + 1) → Fin 3)⟩)
          (Sum.elim
            (fun ij => ⟨m + 1 + 1, (Fin.cons ij.1 (Fin.cons ij.2 (Fin.tail σ) : Fin (m + 1) → Fin 3)
              : Fin (m + 1 + 1) → Fin 3)⟩)
            (fun l => ⟨m + 1, (Fin.cons l (Fin.tail σ) : Fin (m + 1) → Fin 3)⟩))), ?_, ?_⟩
      · rintro (t | t | ⟨i, j⟩ | l)
        · refine ⟨hP _ _ (hc t).1, ?_⟩
          show (p t).1 ≤ m + 1 + 1
          have := (hc t).2
          omega
        · refine ⟨(hc t).1, ?_⟩
          show (p t).1 + 1 ≤ m + 1 + 1
          have := (hc t).2
          omega
        · exact ⟨(hP _ _ (ha i j)).neg, le_refl _⟩
        · refine ⟨(hP _ _ (hb l)).neg, ?_⟩
          show m + 1 ≤ m + 1 + 1
          omega
      · intro v hv hpde y hy
        have hw : ContDiffOn ℝ ∞ (iterPartial (Fin.tail σ) v) (Metric.ball y₀ R) :=
          hIs m _ v hv
        have hdf' : DifferentiableAt ℝ (iterPartial (Fin.tail σ) f) y :=
          hD _ (hIs m _ f hf) y hy
        have hdc : ∀ t, DifferentiableAt ℝ (c t) y := fun t => hD _ (hc t).1 y hy
        have hdD : ∀ t, DifferentiableAt ℝ (iterPartial (p t).2 v) y :=
          fun t => hD _ (hIs _ _ v hv) y hy
        have hdterms : ∀ t ∈ (Finset.univ : Finset ι),
            DifferentiableAt ℝ (fun z => c t z * iterPartial (p t).2 v z) y :=
          fun t _ => (hdc t).mul (hdD t)
        have hdsum : DifferentiableAt ℝ (fun z => ∑ t, c t z * iterPartial (p t).2 v z) y :=
          DifferentiableAt.fun_sum hdterms
        rw [e1 v, e1 f, hComm _ hw y hy (σ 0),
          hLoc (σ 0) (ellOp a b (iterPartial (Fin.tail σ) v))
            (fun z => iterPartial (Fin.tail σ) f z + ∑ t, c t z * iterPartial (p t).2 v z)
            (fun z hz => hid v hv hpde z hz) y hy,
          hAdd (σ 0) (iterPartial (Fin.tail σ) f)
            (fun z => ∑ t, c t z * iterPartial (p t).2 v z) y hdf' hdsum,
          hSum Finset.univ (σ 0) (fun t z => c t z * iterPartial (p t).2 v z) y hdterms,
          Finset.sum_congr rfl (fun t _ => hMul (σ 0) (c t) (iterPartial (p t).2 v) y (hdc t) (hdD t))]
        simp only [Fintype.sum_sum_type, Fintype.sum_prod_type, Sum.elim_inl, Sum.elim_inr, hIc]
        simp only [neg_mul, Finset.sum_neg_distrib, Finset.sum_add_distrib]
        ring
  
  have hKB : Metric.closedBall y₀ ρ ⊆ Metric.ball y₀ R := Metric.closedBall_subset_ball hρ
  have hK : IsCompact (Metric.closedBall y₀ ρ) := isCompact_closedBall y₀ ρ
  have hσb : ∀ σ : Fin n → Fin 3, ∃ Gσ : ℝ, 0 ≤ Gσ ∧ ∀ v : E3 → ℝ,
      ContDiffOn ℝ ∞ v (Metric.ball y₀ R) →
      (∀ y ∈ Metric.ball y₀ R, ellOp a b v y = f y) →
      ∀ y ∈ Metric.closedBall y₀ ρ,
        |ellOp a b (iterPartial σ v) y|
          ≤ Gσ * (1 + ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y)) := by
    intro σ
    obtain ⟨ι, hι, c, p, hc, hid⟩ := hStruct n σ
    have hcb : ∀ t, ∃ C : ℝ, ∀ y ∈ Metric.closedBall y₀ ρ, ‖c t y‖ ≤ C :=
      fun t => hK.exists_bound_of_continuousOn (((hc t).1.continuousOn).mono hKB)
    choose C hC using hcb
    obtain ⟨F, hF⟩ := hK.exists_bound_of_continuousOn (((hIs n σ f hf).continuousOn).mono hKB)
    have hM0 : 0 ≤ ∑ t, max (C t) 0 := Finset.sum_nonneg (fun t _ => le_max_right _ _)
    have hF0 : 0 ≤ max F 0 := le_max_right _ _
    have hcM0 : 0 ≤ (Fintype.card ι : ℝ) * ∑ t, max (C t) 0 :=
      mul_nonneg (Nat.cast_nonneg _) hM0
    refine ⟨max F 0 + (Fintype.card ι : ℝ) * ∑ t, max (C t) 0, by linarith, ?_⟩
    intro v hv hpde y hy
    have hS0 : 0 ≤ ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) :=
      Finset.sum_nonneg (fun i _ => Real.sqrt_nonneg _)
    have hDle : ∀ t, |iterPartial (p t).2 v y| ≤
        ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) := by
      intro t
      have hd := (hc t).2
      have hsq : (iterPartial (p t).2 v y) ^ 2 ≤ sqSum (p t).1 v y := by
        unfold sqSum
        exact Finset.single_le_sum (f := fun σ' : Fin (p t).1 → Fin 3 => (iterPartial σ' v y) ^ 2)
          (fun _ _ => sq_nonneg _) (Finset.mem_univ _)
      calc |iterPartial (p t).2 v y| ≤ Real.sqrt (sqSum (p t).1 v y) := Real.abs_le_sqrt hsq
        _ ≤ ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) :=
          Finset.single_le_sum (f := fun i => Real.sqrt (sqSum i v y))
            (fun i _ => Real.sqrt_nonneg _) (Finset.mem_range.2 (by omega))
    have hcle : ∀ t, |c t y| ≤ ∑ t, max (C t) 0 := by
      intro t
      rw [← Real.norm_eq_abs]
      calc ‖c t y‖ ≤ C t := hC t y hy
        _ ≤ max (C t) 0 := le_max_left _ _
        _ ≤ ∑ t, max (C t) 0 :=
          Finset.single_le_sum (f := fun t => max (C t) 0) (fun t _ => le_max_right _ _)
            (Finset.mem_univ t)
    have hfle : |iterPartial σ f y| ≤ max F 0 := by
      rw [← Real.norm_eq_abs]
      exact le_trans (hF y hy) (le_max_left _ _)
    rw [hid v hv hpde y (hKB hy)]
    calc |iterPartial σ f y + ∑ t, c t y * iterPartial (p t).2 v y|
        ≤ |iterPartial σ f y| + |∑ t, c t y * iterPartial (p t).2 v y| := abs_add_le _ _
      _ ≤ max F 0 + ∑ t, |c t y * iterPartial (p t).2 v y| :=
          add_le_add hfle (Finset.abs_sum_le_sum_abs _ _)
      _ ≤ max F 0 + ∑ _t : ι, (∑ t, max (C t) 0) *
            ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) := by
          refine add_le_add le_rfl (Finset.sum_le_sum (fun t _ => ?_))
          rw [abs_mul]
          exact mul_le_mul (hcle t) (hDle t) (abs_nonneg _) hM0
      _ = max F 0 + (Fintype.card ι : ℝ) * (∑ t, max (C t) 0) *
            ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) := by
          rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
          ring
      _ ≤ (max F 0 + (Fintype.card ι : ℝ) * ∑ t, max (C t) 0) *
            (1 + ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y)) := by
          nlinarith [mul_nonneg hF0 hS0]
  choose Gσ hG0 hG using hσb
  refine ⟨∑ σ, Gσ σ, Finset.sum_nonneg (fun σ _ => hG0 σ), ?_⟩
  intro v hv hpde y hy σ
  have hS1 : 0 ≤ 1 + ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) := by
    have : 0 ≤ ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y) :=
      Finset.sum_nonneg (fun i _ => Real.sqrt_nonneg _)
    linarith
  calc |ellOp a b (iterPartial σ v) y|
      ≤ Gσ σ * (1 + ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y)) :=
        hG σ v hv hpde y hy
    _ ≤ (∑ σ, Gσ σ) * (1 + ∑ i ∈ Finset.range (n + 2), Real.sqrt (sqSum i v y)) :=
        mul_le_mul_of_nonneg_right
          (Finset.single_le_sum (f := Gσ) (fun σ _ => hG0 σ) (Finset.mem_univ σ)) hS1

theorem nbs_L_product (U : Set E3) (hU : IsOpen U) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (b : E3 → Fin 3 → ℝ) (g h : E3 → ℝ) (hg : ContDiffOn ℝ ∞ g U) (hh : ContDiffOn ℝ ∞ h U)
    (y : E3) (hy : y ∈ U) (c : ℝ) :
    (∀ j : Fin 3, partialDeriv j (fun z => g z * h z) y
        = partialDeriv j g y * h y + g y * partialDeriv j h y) ∧
    ellOp a b (fun z => g z * h z) y = g y * ellOp a b h y + h y * ellOp a b g y
      + ∑ i : Fin 3, ∑ j : Fin 3, a y i j * (partialDeriv i g y * partialDeriv j h y
          + partialDeriv j g y * partialDeriv i h y) ∧
    ellOp a b (fun z => g z + c * h z) y = ellOp a b g y + c * ellOp a b h y :=
by
  have hdiff : ∀ f : E3 → ℝ, ContDiffOn ℝ ∞ f U →
      (∀ z ∈ U, DifferentiableAt ℝ f z) ∧
      (∀ j : Fin 3, ∀ z ∈ U, DifferentiableAt ℝ (partialDeriv j f) z) := by
    intro f hf
    have h1 := (contDiffOn_infty_iff_fderiv_of_isOpen hU).1 hf
    refine ⟨fun z hz => h1.1.differentiableAt (hU.mem_nhds hz), fun j z hz => ?_⟩
    have h2 : ContDiffOn ℝ ∞ (partialDeriv j f) U :=
      h1.2.clm_apply (contDiffOn_const (c := e j))
    exact ((contDiffOn_infty_iff_fderiv_of_isOpen hU).1 h2).1.differentiableAt (hU.mem_nhds hz)
  obtain ⟨hgd, hgd2⟩ := hdiff g hg
  obtain ⟨hhd, hhd2⟩ := hdiff h hh
  have hL1 : ∀ z ∈ U, ∀ j : Fin 3, partialDeriv j (fun z => g z * h z) z
      = partialDeriv j g z * h z + g z * partialDeriv j h z := by
    intro z hz j
    unfold partialDeriv
    rw [fderiv_fun_mul (hgd z hz) (hhd z hz)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hA1 : ∀ z ∈ U, ∀ j : Fin 3, partialDeriv j (fun z => g z + c * h z) z
      = partialDeriv j g z + c * partialDeriv j h z := by
    intro z hz j
    unfold partialDeriv
    rw [fderiv_fun_add (hgd z hz) ((hhd z hz).const_mul c), fderiv_const_mul (hhd z hz) c]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
  have hS : ∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun z => g z * h z)) y
      = partialDeriv i (partialDeriv j g) y * h y + partialDeriv j g y * partialDeriv i h y
        + (partialDeriv i g y * partialDeriv j h y
          + g y * partialDeriv i (partialDeriv j h) y) := by
    intro i j
    have hN : partialDeriv j (fun z => g z * h z) =ᶠ[𝓝 y]
        (fun z => partialDeriv j g z * h z + g z * partialDeriv j h z) :=
      Filter.eventuallyEq_of_mem (hU.mem_nhds hy) (fun z hz => hL1 z hz j)
    show fderiv ℝ (partialDeriv j (fun z => g z * h z)) y (e i) = _
    rw [hN.fderiv_eq, fderiv_fun_add ((hgd2 j y hy).fun_mul (hhd y hy))
        ((hgd y hy).fun_mul (hhd2 j y hy)),
      fderiv_fun_mul (hgd2 j y hy) (hhd y hy), fderiv_fun_mul (hgd y hy) (hhd2 j y hy)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    unfold partialDeriv
    ring
  have hT : ∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun z => g z + c * h z)) y
      = partialDeriv i (partialDeriv j g) y + c * partialDeriv i (partialDeriv j h) y := by
    intro i j
    have hN : partialDeriv j (fun z => g z + c * h z) =ᶠ[𝓝 y]
        (fun z => partialDeriv j g z + c * partialDeriv j h z) :=
      Filter.eventuallyEq_of_mem (hU.mem_nhds hy) (fun z hz => hA1 z hz j)
    show fderiv ℝ (partialDeriv j (fun z => g z + c * h z)) y (e i) = _
    rw [hN.fderiv_eq, fderiv_fun_add (hgd2 j y hy) ((hhd2 j y hy).const_mul c),
      fderiv_const_mul (hhd2 j y hy) c]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    rfl
  refine ⟨fun j => hL1 y hy j, ?_, ?_⟩
  · simp only [ellOp, hS, hL1 y hy]
    simp only [Fin.sum_univ_three]
    ring
  · simp only [ellOp, hT, hA1 y hy]
    simp only [Fin.sum_univ_three]
    ring

theorem nbs_sqSum_identities (U : Set E3) (hU : IsOpen U) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (b : E3 → Fin 3 → ℝ) (v : E3 → ℝ) (hv : ContDiffOn ℝ ∞ v U) (n : ℕ) :
    (∀ y : E3, sqSum (n + 1) v y
        = ∑ σ : Fin n → Fin 3, ∑ i : Fin 3, (partialDeriv i (iterPartial σ v) y) ^ 2) ∧
    ContDiffOn ℝ ∞ (sqSum n v) U ∧
    (∀ y ∈ U, ∀ j : Fin 3, partialDeriv j (sqSum n v) y
        = ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v y * partialDeriv j (iterPartial σ v) y) ∧
    (∀ y ∈ U, ellOp a b (sqSum n v) y = ∑ σ : Fin n → Fin 3,
        (2 * iterPartial σ v y * ellOp a b (iterPartial σ v) y
          + 2 * ∑ i : Fin 3, ∑ j : Fin 3, a y i j * partialDeriv i (iterPartial σ v) y
              * partialDeriv j (iterPartial σ v) y)) :=
by
  classical
  have hP : ∀ (k : Fin 3) (w : E3 → ℝ), ContDiffOn ℝ ∞ w U →
      ContDiffOn ℝ ∞ (partialDeriv k w) U := by
    intro k w hw
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ w) U := hw.fderiv_of_isOpen hU (by simp)
    show ContDiffOn ℝ ∞ (fun y => fderiv ℝ w y (e k)) U
    exact h1.clm_apply contDiffOn_const
  have hI0 : ∀ (σ : Fin 0 → Fin 3) (w : E3 → ℝ), iterPartial σ w = w := by
    intro σ w
    simp [iterPartial]
  have hIc : ∀ (m : ℕ) (k : Fin 3) (τ : Fin m → Fin 3) (w : E3 → ℝ),
      iterPartial (Fin.cons k τ : Fin (m + 1) → Fin 3) w = partialDeriv k (iterPartial τ w) := by
    intro m k τ w
    simp [iterPartial, List.ofFn_succ]
  have hIs : ∀ (m : ℕ) (σ : Fin m → Fin 3), ContDiffOn ℝ ∞ (iterPartial σ v) U := by
    intro m
    induction m with
    | zero =>
      intro σ
      rw [hI0]
      exact hv
    | succ m ih =>
      intro σ
      rw [← Fin.cons_self_tail σ, hIc]
      exact hP _ _ (ih _)
  have hD : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w U → ∀ y ∈ U, DifferentiableAt ℝ w y := by
    intro w hw y hy
    exact (hw.contDiffAt (hU.mem_nhds hy)).differentiableAt (by simp)
  have hMul : ∀ (k : Fin 3) (p q : E3 → ℝ) (y : E3), DifferentiableAt ℝ p y →
      DifferentiableAt ℝ q y →
      partialDeriv k (fun z => p z * q z) y = partialDeriv k p y * q y + p y * partialDeriv k q y := by
    intro k p q y hp hq
    unfold partialDeriv
    rw [fderiv_fun_mul hp hq]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hSum : ∀ {ι : Type} (s : Finset ι) (k : Fin 3) (F : ι → E3 → ℝ) (y : E3),
      (∀ t ∈ s, DifferentiableAt ℝ (F t) y) →
      partialDeriv k (fun z => ∑ t ∈ s, F t z) y = ∑ t ∈ s, partialDeriv k (F t) y := by
    intro ι s k F y hF
    unfold partialDeriv
    rw [fderiv_fun_sum hF]
    simp
  have hCM : ∀ (k : Fin 3) (p : E3 → ℝ) (c : ℝ) (y : E3), DifferentiableAt ℝ p y →
      partialDeriv k (fun z => c * p z) y = c * partialDeriv k p y := by
    intro k p c y hp
    unfold partialDeriv
    rw [fderiv_const_mul hp c]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
  
  have conj1 : ∀ y : E3, sqSum (n + 1) v y
      = ∑ σ : Fin n → Fin 3, ∑ i : Fin 3, (partialDeriv i (iterPartial σ v) y) ^ 2 := by
    intro y
    show ∑ σ' : Fin (n + 1) → Fin 3, (iterPartial σ' v y) ^ 2 = _
    rw [← (Fin.consEquiv (fun _ : Fin (n + 1) => Fin 3)).sum_comp, Fintype.sum_prod_type,
      Finset.sum_comm]
    refine Finset.sum_congr rfl (fun σ _ => Finset.sum_congr rfl (fun i _ => ?_))
    show (iterPartial (Fin.cons i σ : Fin (n + 1) → Fin 3) v y) ^ 2 = _
    rw [hIc]
  
  have conj2 : ContDiffOn ℝ ∞ (sqSum n v) U := by
    show ContDiffOn ℝ ∞ (fun y => ∑ σ : Fin n → Fin 3, (iterPartial σ v y) ^ 2) U
    exact ContDiffOn.sum (fun σ _ => (hIs n σ).pow 2)
  
  have hFirst : ∀ z ∈ U, ∀ j : Fin 3, partialDeriv j (sqSum n v) z
      = ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z := by
    intro z hz j
    have hd : ∀ σ : Fin n → Fin 3, DifferentiableAt ℝ (iterPartial σ v) z :=
      fun σ => hD _ (hIs n σ) z hz
    show partialDeriv j (fun x => ∑ σ : Fin n → Fin 3, (iterPartial σ v x) ^ 2) z = _
    rw [hSum Finset.univ j (fun σ x => (iterPartial σ v x) ^ 2) z (fun σ _ => (hd σ).pow 2)]
    refine Finset.sum_congr rfl (fun σ _ => ?_)
    have hsq : (fun x => (iterPartial σ v x) ^ 2)
        = (fun x => iterPartial σ v x * iterPartial σ v x) := by
      funext x
      ring
    rw [hsq, hMul j _ _ z (hd σ) (hd σ)]
    ring
  
  have hSecond : ∀ y ∈ U, ∀ i j : Fin 3, partialDeriv i (partialDeriv j (sqSum n v)) y
      = ∑ σ : Fin n → Fin 3, (2 * partialDeriv i (iterPartial σ v) y
          * partialDeriv j (iterPartial σ v) y
          + 2 * iterPartial σ v y * partialDeriv i (partialDeriv j (iterPartial σ v)) y) := by
    intro y hy i j
    have hN : partialDeriv j (sqSum n v) =ᶠ[𝓝 y]
        (fun z => ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) :=
      Filter.eventually_of_mem (hU.mem_nhds hy) (fun z hz => hFirst z hz j)
    have hd : ∀ σ : Fin n → Fin 3, DifferentiableAt ℝ (iterPartial σ v) y :=
      fun σ => hD _ (hIs n σ) y hy
    have hd' : ∀ σ : Fin n → Fin 3, DifferentiableAt ℝ (partialDeriv j (iterPartial σ v)) y :=
      fun σ => hD _ (hP j _ (hIs n σ)) y hy
    have h1 : partialDeriv i (partialDeriv j (sqSum n v)) y = partialDeriv i
        (fun z => ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) y := by
      show fderiv ℝ (partialDeriv j (sqSum n v)) y (e i) = fderiv ℝ
        (fun z => ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) y (e i)
      rw [hN.fderiv_eq]
    rw [h1, hSum Finset.univ i
      (fun σ z => 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) y
      (fun σ _ => ((hd σ).const_mul 2).mul (hd' σ))]
    refine Finset.sum_congr rfl (fun σ _ => ?_)
    rw [hMul i (fun z => 2 * iterPartial σ v z) (partialDeriv j (iterPartial σ v)) y
      ((hd σ).const_mul 2) (hd' σ), hCM i _ 2 y (hd σ)]
  
  have conj4 : ∀ y ∈ U, ellOp a b (sqSum n v) y = ∑ σ : Fin n → Fin 3,
      (2 * iterPartial σ v y * ellOp a b (iterPartial σ v) y
        + 2 * ∑ i : Fin 3, ∑ j : Fin 3, a y i j * partialDeriv i (iterPartial σ v) y
            * partialDeriv j (iterPartial σ v) y) := by
    intro y hy
    show (∑ i : Fin 3, ∑ j : Fin 3, a y i j * partialDeriv i (partialDeriv j (sqSum n v)) y
      + ∑ l : Fin 3, b y l * partialDeriv l (sqSum n v) y) = _
    simp only [hSecond y hy, hFirst y hy, ellOp]
    simp only [Fin.sum_univ_three]
    simp only [Finset.mul_sum]
    simp only [← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl (fun σ _ => by ring)
  exact ⟨conj1, conj2, fun y hy j => hFirst y hy j, conj4⟩

theorem nbs_cutoff (c : E3) (r : ℝ) (hr : 0 < r) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (b : E3 → Fin 3 → ℝ) (E : ℝ) :
    ContDiff ℝ ∞ (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) ∧
    (r ^ 2 - ∑ k : Fin 3, (c k - c k) ^ 2) ^ 2 = r ^ 4 ∧
    (∀ z ∈ Metric.sphere c r, r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2 = 0) ∧
    (∀ z ∈ Metric.closedBall c r,
      0 ≤ r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2 ∧
      r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2 ≤ r ^ 2 ∧
      (∀ i : Fin 3, |partialDeriv i (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) z|
          ≤ 4 * r * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2)) ∧
      ((∀ i j : Fin 3, |a z i j| ≤ E) → (∀ l : Fin 3, |b z l| ≤ E) →
        |ellOp a b (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) z|
          ≤ 108 * E * r ^ 2 + 12 * E * r ^ 3)) :=
by
  classical
  
  have hproj : ∀ (k : Fin 3) (x : E3),
      HasFDerivAt (fun x : E3 => x k) (EuclideanSpace.proj k : E3 →L[ℝ] ℝ) x :=
    fun k x => (EuclideanSpace.proj k : E3 →L[ℝ] ℝ).hasFDerivAt
  have hpe : ∀ k i : Fin 3, (EuclideanSpace.proj k : E3 →L[ℝ] ℝ) (e i) = if k = i then 1 else 0 := by
    intro k i
    show (EuclideanSpace.single i (1 : ℝ)) k = _
    rw [EuclideanSpace.single_apply]
  
  have hη : ∀ x : E3, HasFDerivAt (fun x : E3 => r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2)
      (-∑ k : Fin 3, (2 * (x k - c k)) • (EuclideanSpace.proj k : E3 →L[ℝ] ℝ)) x := by
    intro x
    have h1 : ∀ k ∈ (Finset.univ : Finset (Fin 3)), HasFDerivAt (fun x : E3 => (x k - c k) ^ 2)
        ((2 * (x k - c k)) • (EuclideanSpace.proj k : E3 →L[ℝ] ℝ)) x := by
      intro k _
      have := ((hproj k x).sub_const (c k)).pow 2
      convert this using 1
      simp
    exact (HasFDerivAt.fun_sum h1).const_sub (r ^ 2)
  have hηe : ∀ (x : E3) (i : Fin 3),
      (-∑ k : Fin 3, (2 * (x k - c k)) • (EuclideanSpace.proj k : E3 →L[ℝ] ℝ)) (e i)
        = -2 * (x i - c i) := by
    intro x i
    simp only [ContinuousLinearMap.neg_apply, ContinuousLinearMap.coe_sum', Finset.sum_apply,
      ContinuousLinearMap.smul_apply, hpe, smul_eq_mul, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq', Finset.mem_univ, if_true]
    ring
  
  have hζ : ∀ x : E3, HasFDerivAt (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2)
      ((2 * (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2)) •
        (-∑ k : Fin 3, (2 * (x k - c k)) • (EuclideanSpace.proj k : E3 →L[ℝ] ℝ))) x := by
    intro x
    convert (hη x).pow 2 using 1
    simp
  have hd1 : ∀ (i : Fin 3) (z : E3),
      partialDeriv i (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) z
        = -4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * (z i - c i) := by
    intro i z
    unfold partialDeriv
    rw [(hζ z).fderiv, ContinuousLinearMap.smul_apply, hηe, smul_eq_mul]
    ring
  have hfun : ∀ j : Fin 3,
      partialDeriv j (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2)
        = fun z => -4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * (z j - c j) :=
    fun j => funext (hd1 j)
  have hd2 : ∀ (i j : Fin 3) (z : E3),
      partialDeriv i (partialDeriv j (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2)) z
        = 8 * (z i - c i) * (z j - c j)
          - 4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * (if i = j then (1 : ℝ) else 0) := by
    intro i j z
    rw [hfun j]
    have h : HasFDerivAt (fun z : E3 => -4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * (z j - c j))
        ((-4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2)) • (EuclideanSpace.proj j : E3 →L[ℝ] ℝ)
          + (z j - c j) • ((-4 : ℝ) •
            (-∑ k : Fin 3, (2 * (z k - c k)) • (EuclideanSpace.proj k : E3 →L[ℝ] ℝ)))) z :=
      ((hη z).const_mul (-4)).mul ((hproj j z).sub_const (c j))
    unfold partialDeriv
    rw [h.fderiv, ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
      ContinuousLinearMap.smul_apply, ContinuousLinearMap.smul_apply, hηe, hpe, smul_eq_mul,
      smul_eq_mul, smul_eq_mul]
    by_cases hij : i = j
    · subst hij; simp; ring
    · have hji : ¬ j = i := fun h => hij h.symm
      simp [hij, hji]; ring
  
  have hsmooth : ContDiff ℝ ∞ (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) := by
    have hc : ∀ k : Fin 3, ContDiff ℝ ∞ (fun x : E3 => (x k - c k) ^ 2) := fun k =>
      (((EuclideanSpace.proj k : E3 →L[ℝ] ℝ).contDiff).sub contDiff_const).pow 2
    exact (contDiff_const.sub (ContDiff.sum (fun k _ => hc k))).pow 2
  
  have hdist : ∀ z : E3, ∑ k : Fin 3, (z k - c k) ^ 2 = dist z c ^ 2 := by
    intro z
    rw [EuclideanSpace.dist_eq, Real.sq_sqrt (Finset.sum_nonneg (fun k _ => sq_nonneg _))]
    simp [Real.dist_eq, sq_abs]
  refine ⟨hsmooth, by simp; ring, ?_, ?_⟩
  · intro z hz
    rw [Metric.mem_sphere] at hz
    rw [hdist z, hz]; ring
  · intro z hz
    rw [Metric.mem_closedBall] at hz
    have hd0 : 0 ≤ dist z c := dist_nonneg
    have hS : ∑ k : Fin 3, (z k - c k) ^ 2 ≤ r ^ 2 := by
      rw [hdist z]; exact pow_le_pow_left₀ hd0 hz 2
    have hS0 : 0 ≤ ∑ k : Fin 3, (z k - c k) ^ 2 := Finset.sum_nonneg (fun k _ => sq_nonneg _)
    have hη0 : 0 ≤ r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2 := by linarith
    have hηr : r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2 ≤ r ^ 2 := by linarith
    have hdi : ∀ i : Fin 3, |z i - c i| ≤ r := by
      intro i
      have h1 : (z i - c i) ^ 2 ≤ ∑ k : Fin 3, (z k - c k) ^ 2 :=
        Finset.single_le_sum (f := fun k => (z k - c k) ^ 2) (fun k _ => sq_nonneg _)
          (Finset.mem_univ i)
      have h2 : |z i - c i| ^ 2 ≤ r ^ 2 := by rw [sq_abs]; linarith
      exact (pow_le_pow_iff_left₀ (abs_nonneg _) hr.le (by norm_num)).mp h2
    refine ⟨hη0, hηr, ?_, ?_⟩
    · intro i
      rw [hd1 i z, abs_mul, abs_mul, abs_of_nonneg hη0]
      have h4 : |(-4 : ℝ)| = 4 := by norm_num
      rw [h4]
      have := mul_le_mul_of_nonneg_left (hdi i) (mul_nonneg (by norm_num : (0:ℝ) ≤ 4) hη0)
      linarith
    · intro haE hbE
      have hE : 0 ≤ E := le_trans (abs_nonneg _) (haE 0 0)
      have key : ∀ (H : Fin 3 → Fin 3 → ℝ) (B : Fin 3 → ℝ),
          (∀ i j, |H i j| ≤ 12 * E * r ^ 2) → (∀ l, |B l| ≤ 4 * E * r ^ 3) →
          |∑ i : Fin 3, ∑ j : Fin 3, H i j + ∑ l : Fin 3, B l| ≤ 108 * E * r ^ 2 + 12 * E * r ^ 3 := by
        intro H B hH hB
        calc |∑ i : Fin 3, ∑ j : Fin 3, H i j + ∑ l : Fin 3, B l|
            ≤ |∑ i : Fin 3, ∑ j : Fin 3, H i j| + |∑ l : Fin 3, B l| := abs_add_le _ _
          _ ≤ ∑ i : Fin 3, ∑ j : Fin 3, |H i j| + ∑ l : Fin 3, |B l| :=
              add_le_add ((Finset.abs_sum_le_sum_abs _ _).trans
                (Finset.sum_le_sum fun i _ => Finset.abs_sum_le_sum_abs _ _))
                (Finset.abs_sum_le_sum_abs _ _)
          _ ≤ ∑ _i : Fin 3, ∑ _j : Fin 3, 12 * E * r ^ 2 + ∑ _l : Fin 3, 4 * E * r ^ 3 :=
              add_le_add (Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ => hH i j)
                (Finset.sum_le_sum fun l _ => hB l)
          _ = 108 * E * r ^ 2 + 12 * E * r ^ 3 := by
              simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
              push_cast; ring
      have hT : ∀ i j : Fin 3, |a z i j * partialDeriv i (partialDeriv j
          (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2)) z| ≤ 12 * E * r ^ 2 := by
        intro i j
        rw [hd2 i j z, abs_mul]
        have hp : |(z i - c i) * (z j - c j)| ≤ r ^ 2 := by
          rw [abs_mul, sq]
          exact mul_le_mul (hdi i) (hdi j) (abs_nonneg _) hr.le
        have hp' := abs_le.mp hp
        have hin : |8 * (z i - c i) * (z j - c j)
            - 4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * (if i = j then (1 : ℝ) else 0)|
              ≤ 12 * r ^ 2 := by
          rw [abs_le]
          split_ifs <;> constructor <;> nlinarith [hp'.1, hp'.2]
        calc |a z i j| * |8 * (z i - c i) * (z j - c j)
            - 4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * (if i = j then (1 : ℝ) else 0)|
            ≤ E * (12 * r ^ 2) := mul_le_mul (haE i j) hin (abs_nonneg _) hE
          _ = 12 * E * r ^ 2 := by ring
      have hB : ∀ l : Fin 3, |b z l * partialDeriv l
          (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) z| ≤ 4 * E * r ^ 3 := by
        intro l
        rw [hd1 l z, abs_mul, abs_mul, abs_mul, abs_of_nonneg hη0]
        have h4 : |(-4 : ℝ)| = 4 := by norm_num
        rw [h4]
        have h5 : 4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * |z l - c l| ≤ 4 * r ^ 2 * r := by
          have := mul_le_mul hηr (hdi l) (abs_nonneg _) (sq_nonneg r)
          nlinarith
        calc |b z l| * (4 * (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) * |z l - c l|)
            ≤ E * (4 * r ^ 2 * r) :=
              mul_le_mul (hbE l) h5 (by positivity) hE
          _ = 4 * E * r ^ 3 := by ring
      exact key _ _ hT hB

theorem nbs_barrier_max (U : Set E3) (hU : IsOpen U) (c : E3) (r : ℝ) (hr : 0 < r)
    (hcU : Metric.closedBall c r ⊆ U) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ) (b : E3 → Fin 3 → ℝ)
    (lam E : ℝ) (hlam : 0 < lam) (hE : 0 ≤ E)
    (hell : ∀ y ∈ Metric.closedBall c r, ∀ ξ : Fin 3 → ℝ,
        lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j)
    (hbE : ∀ y ∈ Metric.closedBall c r, |b y 0| ≤ E)
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w U) (K₀ M : ℝ) (hK₀ : 0 ≤ K₀)
    (hLw : ∀ y ∈ Metric.ball c r, -K₀ ≤ ellOp a b w y)
    (hwM : ∀ y ∈ Metric.sphere c r, w y ≤ M) :
    ∀ y ∈ Metric.closedBall c r, w y ≤ M + K₀ * Real.exp (2 * ((E + 1) / lam + 1) * r) :=
by
  intro y₀ hy₀
  
  have htrace : ∀ (A H : Matrix (Fin 3) (Fin 3) ℝ), (∀ i j : Fin 3, H i j = H j i) →
      (∀ ξ : Fin 3 → ℝ, ∑ i : Fin 3, ∑ j : Fin 3, ξ i * H i j * ξ j ≤ 0) →
      (∀ ξ : Fin 3 → ℝ, 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * A i j * ξ j) →
      ∑ i : Fin 3, ∑ j : Fin 3, A i j * H i j ≤ 0 := by
    intro A H hsym hH hA
    have hNh : (-H).IsHermitian := Matrix.IsHermitian.ext (fun i j => by
      simp [Matrix.neg_apply, hsym])
    have hNp : (-H).PosSemidef := by
      apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg hNh
      intro x
      have := hH x
      simp [dotProduct, Matrix.mulVec, Fin.sum_univ_three, Matrix.neg_apply] at this ⊢
      linarith
    obtain ⟨B, hB⟩ := Matrix.posSemidef_iff_eq_conjTranspose_mul_self.mp hNp
    have hHij : ∀ i j, H i j = -∑ k : Fin 3, B k i * B k j := by
      intro i j
      have := congrFun (congrFun hB i) j
      simp [Matrix.mul_apply] at this
      linarith
    have hk : ∀ k : Fin 3, 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, B k i * A i j * B k j :=
      fun k => hA (fun i => B k i)
    have hsum := Finset.sum_nonneg (fun k (_ : k ∈ (Finset.univ : Finset (Fin 3))) => hk k)
    simp only [hHij, Fin.sum_univ_three] at hsum ⊢
    linear_combination hsum
  
  have hhess : ∀ (f : E3 → ℝ), ContDiffOn ℝ ∞ f U → ∀ y ∈ U, IsLocalMax f y →
      (∀ l : Fin 3, partialDeriv l f y = 0) ∧
      (∀ i j : Fin 3, partialDeriv i (partialDeriv j f) y = partialDeriv j (partialDeriv i f) y) ∧
      (∀ ξ : Fin 3 → ℝ,
        ∑ i : Fin 3, ∑ j : Fin 3, ξ i * partialDeriv i (partialDeriv j f) y * ξ j ≤ 0) := by
    intro f hf y hy hmax
    have hfy : ContDiffAt ℝ ∞ f y := hf.contDiffAt (hU.mem_nhds hy)
    have hdiff : ∀ z ∈ U, DifferentiableAt ℝ f z := fun z hz =>
      (hf.contDiffAt (hU.mem_nhds hz)).differentiableAt (by simp)
    have hfd : ContDiffAt ℝ 1 (fderiv ℝ f) y :=
      hfy.fderiv_right (WithTop.coe_le_coe.mpr le_top)
    have hD2 : HasFDerivAt (fderiv ℝ f) (fderiv ℝ (fderiv ℝ f) y) y :=
      (hfd.differentiableAt (by simp)).hasFDerivAt
    have hsymm : IsSymmSndFDerivAt ℝ f y := hfy.isSymmSndFDerivAt (by
      rw [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.mpr le_top)
    set D2 := fderiv ℝ (fderiv ℝ f) y with hD2def
    have hgrad0 : fderiv ℝ f y = 0 := hmax.fderiv_eq_zero
    have hH : ∀ i j : Fin 3, partialDeriv i (partialDeriv j f) y = D2 (e i) (e j) := by
      intro i j
      have h := hD2.clm_apply (hasFDerivAt_const (e j) y)
      have hfun : partialDeriv j f = fun z => fderiv ℝ f z (e j) := rfl
      show fderiv ℝ (partialDeriv j f) y (e i) = _
      rw [hfun, h.fderiv]
      simp
    refine ⟨fun l => by unfold partialDeriv; rw [hgrad0]; simp,
      fun i j => by rw [hH, hH]; exact hsymm _ _, ?_⟩
    intro ξ
    set u : E3 := ξ 0 • e 0 + ξ 1 • e 1 + ξ 2 • e 2 with hu
    have hquad : ∑ i : Fin 3, ∑ j : Fin 3, ξ i * partialDeriv i (partialDeriv j f) y * ξ j
        = D2 u u := by
      simp only [hH, hu, map_add, map_smul, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three]
      ring
    rw [hquad]
    by_contra hpos
    push_neg at hpos
    set γ : ℝ → E3 := fun t => y + t • u with hγ
    have hγd : ∀ t, HasDerivAt γ u t := by
      intro t
      have := ((hasDerivAt_id t).smul_const u).const_add y
      simp only [one_smul, id_eq] at this
      exact this
    have hγ0 : γ 0 = y := by simp [γ]
    have hγc : Continuous γ := continuous_const.add (continuous_id.smul continuous_const)
    have hV : γ ⁻¹' U ∈ 𝓝 (0:ℝ) :=
      hγc.continuousAt.preimage_mem_nhds (by rw [hγ0]; exact hU.mem_nhds hy)
    have hφmax : IsLocalMax (f ∘ γ) 0 := by
      have : IsLocalMax f (γ 0) := by rw [hγ0]; exact hmax
      exact this.comp_continuous hγc.continuousAt
    have hφd : ∀ t ∈ γ ⁻¹' U, HasDerivAt (f ∘ γ) (fderiv ℝ f (γ t) u) t := fun t ht =>
      (hdiff (γ t) ht).hasFDerivAt.comp_hasDerivAt t (hγd t)
    have hdφ : deriv (f ∘ γ) =ᶠ[𝓝 0] fun t => fderiv ℝ f (γ t) u :=
      Filter.eventually_of_mem hV (fun t ht => (hφd t ht).deriv)
    have hgd : HasDerivAt (fun t => fderiv ℝ f (γ t) u) (D2 u u) 0 := by
      have h1 : HasFDerivAt (fderiv ℝ f) D2 (γ 0) := by rw [hγ0]; exact hD2
      have h2 : HasDerivAt (fun t => fderiv ℝ f (γ t)) (D2 u) 0 :=
        h1.comp_hasDerivAt 0 (hγd 0)
      have h3 := h2.clm_apply (hasDerivAt_const (0:ℝ) u)
      simpa using h3
    have hdd : deriv (deriv (f ∘ γ)) 0 = D2 u u := by rw [hdφ.deriv_eq]; exact hgd.deriv
    have hd0 : deriv (f ∘ γ) 0 = 0 := by
      rw [hdφ.eq_of_nhds]; simp [hγ0, hgrad0]
    have hφc : ContinuousAt (f ∘ γ) 0 := (hφd 0 (mem_of_mem_nhds hV)).continuousAt
    have hφmin : IsLocalMin (f ∘ γ) 0 :=
      isLocalMin_of_deriv_deriv_pos (by rw [hdd]; exact hpos) hd0 hφc
    have hconst : (f ∘ γ) =ᶠ[𝓝 0] fun _ => (f ∘ γ) 0 := by
      filter_upwards [hφmin, hφmax] with t h1 h2
      exact le_antisymm h2 h1
    have h0 : deriv (deriv (f ∘ γ)) 0 = 0 := by
      rw [hconst.deriv.deriv_eq]; simp
    linarith
  
  obtain ⟨α, hα⟩ : ∃ α : ℝ, α = (E + 1) / lam + 1 := ⟨_, rfl⟩
  rw [← hα]
  obtain ⟨ψ, hψ⟩ : ∃ ψ : E3 → ℝ, ψ = fun z : E3 => Real.exp (α * (z 0 - c 0 + r)) := ⟨_, rfl⟩
  obtain ⟨X, hXdef⟩ : ∃ X : ℝ, X = Real.exp (2 * α * r) := ⟨_, rfl⟩
  rw [← hXdef]
  have hX : 0 < X := by rw [hXdef]; exact Real.exp_pos _
  have hproj : (fun z : E3 => z 0) = ⇑(EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ) := rfl
  have hψcd : ContDiff ℝ ∞ ψ := by
    have h0 : ContDiff ℝ ∞ (fun z : E3 => z 0) := by
      rw [hproj]; exact ContinuousLinearMap.contDiff _
    rw [hψ]
    exact (contDiff_const.mul ((h0.sub contDiff_const).add contDiff_const)).exp
  have hfdψ : ∀ z : E3, HasFDerivAt ψ
      (Real.exp (α * (z 0 - c 0 + r)) • (α • (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ))) z := by
    intro z
    have h1 : HasFDerivAt (fun z : E3 => z 0) (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ) z := by
      rw [hproj]; exact ContinuousLinearMap.hasFDerivAt _
    rw [hψ]
    exact (((h1.sub_const (c 0)).add_const r).const_mul α).exp
  have hpd : ∀ j : Fin 3, partialDeriv j ψ = fun z => (α * (if j = 0 then 1 else 0)) * ψ z := by
    intro j
    funext z
    unfold partialDeriv
    rw [(hfdψ z).fderiv]
    fin_cases j <;> simp [EuclideanSpace.single_apply, hψ] <;> ring
  have hcm : ∀ (k : ℝ) (i : Fin 3) (z : E3),
      partialDeriv i (fun z => k * ψ z) z = k * partialDeriv i ψ z := by
    intro k i z
    unfold partialDeriv
    rw [fderiv_const_mul ((hψcd.differentiable (by simp)) z)]
    rfl
  have hpd2 : ∀ i j : Fin 3, ∀ z, partialDeriv i (partialDeriv j ψ) z
      = (α * (if j = 0 then 1 else 0)) * ((α * (if i = 0 then 1 else 0)) * ψ z) := by
    intro i j z
    rw [hpd j, hcm, hpd i]
  have hLψ : ∀ z : E3, ellOp a b ψ z = (α ^ 2 * a z 0 0 + α * b z 0) * ψ z := by
    intro z
    unfold ellOp
    simp only [hpd2]
    simp only [hpd, Fin.sum_univ_three]
    simp
    ring
  
  have hα1 : 1 ≤ α := by
    rw [hα]
    have : 0 ≤ (E + 1) / lam := div_nonneg (by linarith) hlam.le
    linarith
  have hψb : ∀ z ∈ Metric.closedBall c r, 1 ≤ ψ z ∧ ψ z ≤ X := by
    intro z hz
    have hzc : |z 0 - c 0| ≤ r := by
      rw [Metric.mem_closedBall, dist_eq_norm] at hz
      have h := PiLp.norm_apply_le (z - c) 0
      rw [PiLp.sub_apply, Real.norm_eq_abs] at h
      linarith
    obtain ⟨hl, hu⟩ := abs_le.mp hzc
    have h0 : 0 ≤ α * (z 0 - c 0 + r) := mul_nonneg (by linarith) (by linarith)
    have h1 : α * (z 0 - c 0 + r) ≤ 2 * α * r := by
      have := mul_le_mul_of_nonneg_left (show z 0 - c 0 + r ≤ 2 * r by linarith)
        (show (0:ℝ) ≤ α by linarith)
      linarith
    rw [hψ, hXdef]
    exact ⟨Real.one_le_exp h0, Real.exp_le_exp.mpr h1⟩
  
  have hcoef : ∀ z ∈ Metric.closedBall c r, 1 ≤ α ^ 2 * a z 0 0 + α * b z 0 := by
    intro z hz
    have ha00 : lam ≤ a z 0 0 := by
      have := hell z hz (fun i => if i = 0 then 1 else 0)
      simpa [Fin.sum_univ_three] using this
    have hb0 : -E ≤ b z 0 := (abs_le.mp (hbE z hz)).1
    have hαlam : α * lam = E + 1 + lam := by
      have : (E + 1) / lam * lam = E + 1 := div_mul_cancel₀ _ hlam.ne'
      rw [hα, add_mul, this, one_mul]
    have h1 := mul_le_mul_of_nonneg_left ha00 (sq_nonneg α)
    have h2 := mul_le_mul_of_nonneg_left hb0 (show (0:ℝ) ≤ α by linarith)
    have h3 : α ^ 2 * lam = α * E + α + α * lam := by
      linear_combination α * hαlam
    have h4 : 0 ≤ α * lam := mul_nonneg (by linarith) hlam.le
    nlinarith
  
  have hlin : ∀ (k : ℝ), ∀ y ∈ U, ellOp a b (fun z => w z + k * ψ z) y
      = ellOp a b w y + k * ellOp a b ψ y := by
    intro k y hy
    have hdw : ∀ z ∈ U, DifferentiableAt ℝ w z := fun z hz =>
      (hw.contDiffAt (hU.mem_nhds hz)).differentiableAt (by simp)
    have hdψ : ∀ z, DifferentiableAt ℝ ψ z := fun z => hψcd.differentiable (by simp) z
    have h1 : ∀ z ∈ U, ∀ j : Fin 3, partialDeriv j (fun z => w z + k * ψ z) z
        = partialDeriv j w z + k * partialDeriv j ψ z := by
      intro z hz j
      unfold partialDeriv
      have hh : HasFDerivAt (fun z => w z + k * ψ z) (fderiv ℝ w z + k • fderiv ℝ ψ z) z :=
        (hdw z hz).hasFDerivAt.add ((hdψ z).hasFDerivAt.const_mul k)
      rw [hh.fderiv,
        ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    have h2 : ∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun z => w z + k * ψ z)) y
        = partialDeriv i (partialDeriv j w) y + k * partialDeriv i (partialDeriv j ψ) y := by
      intro i j
      have hev : partialDeriv j (fun z => w z + k * ψ z) =ᶠ[𝓝 y]
          fun z => partialDeriv j w z + k * partialDeriv j ψ z :=
        Filter.eventually_of_mem (hU.mem_nhds hy) (fun z hz => h1 z hz j)
      have hdpw : DifferentiableAt ℝ (partialDeriv j w) y := by
        have hfd : ContDiffAt ℝ 1 (fderiv ℝ w) y :=
          (hw.contDiffAt (hU.mem_nhds hy)).fderiv_right (WithTop.coe_le_coe.mpr le_top)
        show DifferentiableAt ℝ (fun z => fderiv ℝ w z (e j)) y
        exact (hfd.differentiableAt (by simp)).clm_apply (differentiableAt_const (e j))
      have hdpψ : DifferentiableAt ℝ (partialDeriv j ψ) y := by
        rw [hpd j]; exact (hdψ y).const_mul _
      show fderiv ℝ (partialDeriv j (fun z => w z + k * ψ z)) y (e i)
        = fderiv ℝ (partialDeriv j w) y (e i) + k * fderiv ℝ (partialDeriv j ψ) y (e i)
      have hh : HasFDerivAt (fun z => partialDeriv j w z + k * partialDeriv j ψ z)
          (fderiv ℝ (partialDeriv j w) y + k • fderiv ℝ (partialDeriv j ψ) y) y :=
        hdpw.hasFDerivAt.add (hdpψ.hasFDerivAt.const_mul k)
      rw [hev.fderiv_eq, hh.fderiv,
        ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    unfold ellOp
    simp only [h2, h1 y hy, Fin.sum_univ_three]
    ring
  
  apply le_of_forall_pos_le_add
  intro δ hδ
  obtain ⟨ε, hεdef⟩ : ∃ ε : ℝ, ε = δ / X := ⟨_, rfl⟩
  have hε : 0 < ε := by rw [hεdef]; exact div_pos hδ hX
  have hεX : ε * X = δ := by rw [hεdef]; exact div_mul_cancel₀ δ hX.ne'
  have hKε : 0 ≤ K₀ + ε := by linarith
  have hwε : ContDiffOn ℝ ∞ (fun z => w z + (K₀ + ε) * ψ z) U :=
    hw.add (contDiffOn_const.mul hψcd.contDiffOn)
  
  have hint : ∀ y ∈ Metric.ball c r, ε ≤ ellOp a b (fun z => w z + (K₀ + ε) * ψ z) y := by
    intro y hy
    have hyc : y ∈ Metric.closedBall c r := Metric.ball_subset_closedBall hy
    have hyU : y ∈ U := hcU hyc
    rw [hlin (K₀ + ε) y hyU, hLψ y]
    have h1 : 1 ≤ (α ^ 2 * a y 0 0 + α * b y 0) * ψ y :=
      one_le_mul_of_one_le_of_one_le (hcoef y hyc) (hψb y hyc).1
    have h2 := mul_le_mul_of_nonneg_left h1 hKε
    have h3 := hLw y hy
    linarith
  
  obtain ⟨ys, hys, hmax⟩ := (isCompact_closedBall c r).exists_isMaxOn
    ⟨c, Metric.mem_closedBall_self hr.le⟩ (hwε.continuousOn.mono hcU)
  have hsph : ys ∈ Metric.sphere c r := by
    by_cases hin : ys ∈ Metric.ball c r
    · exfalso
      have hloc := hmax.isLocalMax (Metric.closedBall_mem_nhds_of_mem hin)
      obtain ⟨hg, hs, hn⟩ := hhess _ hwε ys (hcU hys) hloc
      have hA : ∀ ξ : Fin 3 → ℝ, 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a ys i j * ξ j :=
        fun ξ => le_trans (mul_nonneg hlam.le (Finset.sum_nonneg fun i _ => sq_nonneg _))
          (hell ys hys ξ)
      have htr := htrace (a ys)
        (fun i j => partialDeriv i (partialDeriv j (fun z => w z + (K₀ + ε) * ψ z)) ys)
        hs hn hA
      have hle : ellOp a b (fun z => w z + (K₀ + ε) * ψ z) ys ≤ 0 := by
        unfold ellOp
        simp only [hg, mul_zero, Finset.sum_const_zero, add_zero]
        exact htr
      have := hint ys hin
      linarith
    · rw [Metric.mem_sphere]
      rw [Metric.mem_closedBall] at hys
      rw [Metric.mem_ball] at hin
      push_neg at hin
      exact le_antisymm hys hin
  
  have hψ0 : 0 < ψ y₀ := by rw [hψ]; exact Real.exp_pos _
  have hm := hmax hy₀
  simp only [Set.mem_setOf_eq] at hm
  have hw1 := hwM ys hsph
  have hp := mul_le_mul_of_nonneg_left (hψb ys (Metric.sphere_subset_closedBall hsph)).2 hKε
  have hp0 := mul_nonneg hKε hψ0.le
  have hexp : (K₀ + ε) * X = K₀ * X + δ := by rw [add_mul, hεX]
  linarith

theorem nbs_lower_point (U : Set E3) (hU : IsOpen U) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (b : E3 → Fin 3 → ℝ) (v : E3 → ℝ) (hv : ContDiffOn ℝ ∞ v U) (n : ℕ) (y : E3) (hy : y ∈ U)
    (lam G K : ℝ) (hlam : 0 < lam) (hG : 0 ≤ G) (hK : 0 ≤ K)
    (hell : ∀ ξ : Fin 3 → ℝ,
        lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j)
    (hKy : ∀ σ : Fin n → Fin 3, |iterPartial σ v y| ≤ K)
    (hGy : ∀ σ : Fin n → Fin 3,
        |ellOp a b (iterPartial σ v) y| ≤ G * (1 + Real.sqrt (sqSum (n + 1) v y))) :
    lam * sqSum (n + 1) v y - (2 * 3 ^ n * K * G + (3 ^ n * K * G) ^ 2 / lam)
      ≤ ellOp a b (sqSum n v) y :=
by
  classical
  
  have hP : ∀ (k : Fin 3) (w : E3 → ℝ), ContDiffOn ℝ ∞ w U →
      ContDiffOn ℝ ∞ (partialDeriv k w) U := by
    intro k w hw
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ w) U := hw.fderiv_of_isOpen hU (by simp)
    show ContDiffOn ℝ ∞ (fun y => fderiv ℝ w y (e k)) U
    exact h1.clm_apply contDiffOn_const
  have hI0 : ∀ (σ : Fin 0 → Fin 3) (w : E3 → ℝ), iterPartial σ w = w := by
    intro σ w
    simp [iterPartial]
  have hIc : ∀ (m : ℕ) (k : Fin 3) (τ : Fin m → Fin 3) (w : E3 → ℝ),
      iterPartial (Fin.cons k τ : Fin (m + 1) → Fin 3) w = partialDeriv k (iterPartial τ w) := by
    intro m k τ w
    simp [iterPartial, List.ofFn_succ]
  have hIs : ∀ (m : ℕ) (σ : Fin m → Fin 3), ContDiffOn ℝ ∞ (iterPartial σ v) U := by
    intro m
    induction m with
    | zero =>
      intro σ
      rw [hI0]
      exact hv
    | succ m ih =>
      intro σ
      rw [← Fin.cons_self_tail σ, hIc]
      exact hP _ _ (ih _)
  have hD : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w U → ∀ y ∈ U, DifferentiableAt ℝ w y := by
    intro w hw y hy
    exact (hw.contDiffAt (hU.mem_nhds hy)).differentiableAt (by simp)
  have hMul : ∀ (k : Fin 3) (p q : E3 → ℝ) (y : E3), DifferentiableAt ℝ p y →
      DifferentiableAt ℝ q y →
      partialDeriv k (fun z => p z * q z) y = partialDeriv k p y * q y + p y * partialDeriv k q y := by
    intro k p q y hp hq
    unfold partialDeriv
    rw [fderiv_fun_mul hp hq]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hSum : ∀ {ι : Type} (s : Finset ι) (k : Fin 3) (F : ι → E3 → ℝ) (y : E3),
      (∀ t ∈ s, DifferentiableAt ℝ (F t) y) →
      partialDeriv k (fun z => ∑ t ∈ s, F t z) y = ∑ t ∈ s, partialDeriv k (F t) y := by
    intro ι s k F y hF
    unfold partialDeriv
    rw [fderiv_fun_sum hF]
    simp
  have hCM : ∀ (k : Fin 3) (p : E3 → ℝ) (c : ℝ) (y : E3), DifferentiableAt ℝ p y →
      partialDeriv k (fun z => c * p z) y = c * partialDeriv k p y := by
    intro k p c y hp
    unfold partialDeriv
    rw [fderiv_const_mul hp c]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
  have conj1 : ∀ y : E3, sqSum (n + 1) v y
      = ∑ σ : Fin n → Fin 3, ∑ i : Fin 3, (partialDeriv i (iterPartial σ v) y) ^ 2 := by
    intro y
    show ∑ σ' : Fin (n + 1) → Fin 3, (iterPartial σ' v y) ^ 2 = _
    rw [← (Fin.consEquiv (fun _ : Fin (n + 1) => Fin 3)).sum_comp, Fintype.sum_prod_type,
      Finset.sum_comm]
    refine Finset.sum_congr rfl (fun σ _ => Finset.sum_congr rfl (fun i _ => ?_))
    show (iterPartial (Fin.cons i σ : Fin (n + 1) → Fin 3) v y) ^ 2 = _
    rw [hIc]
  have hFirst : ∀ z ∈ U, ∀ j : Fin 3, partialDeriv j (sqSum n v) z
      = ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z := by
    intro z hz j
    have hd : ∀ σ : Fin n → Fin 3, DifferentiableAt ℝ (iterPartial σ v) z :=
      fun σ => hD _ (hIs n σ) z hz
    show partialDeriv j (fun x => ∑ σ : Fin n → Fin 3, (iterPartial σ v x) ^ 2) z = _
    rw [hSum Finset.univ j (fun σ x => (iterPartial σ v x) ^ 2) z (fun σ _ => (hd σ).pow 2)]
    refine Finset.sum_congr rfl (fun σ _ => ?_)
    have hsq : (fun x => (iterPartial σ v x) ^ 2)
        = (fun x => iterPartial σ v x * iterPartial σ v x) := by
      funext x
      ring
    rw [hsq, hMul j _ _ z (hd σ) (hd σ)]
    ring
  have hSecond : ∀ y ∈ U, ∀ i j : Fin 3, partialDeriv i (partialDeriv j (sqSum n v)) y
      = ∑ σ : Fin n → Fin 3, (2 * partialDeriv i (iterPartial σ v) y
          * partialDeriv j (iterPartial σ v) y
          + 2 * iterPartial σ v y * partialDeriv i (partialDeriv j (iterPartial σ v)) y) := by
    intro y hy i j
    have hN : partialDeriv j (sqSum n v) =ᶠ[𝓝 y]
        (fun z => ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) :=
      Filter.eventually_of_mem (hU.mem_nhds hy) (fun z hz => hFirst z hz j)
    have hd : ∀ σ : Fin n → Fin 3, DifferentiableAt ℝ (iterPartial σ v) y :=
      fun σ => hD _ (hIs n σ) y hy
    have hd' : ∀ σ : Fin n → Fin 3, DifferentiableAt ℝ (partialDeriv j (iterPartial σ v)) y :=
      fun σ => hD _ (hP j _ (hIs n σ)) y hy
    have h1 : partialDeriv i (partialDeriv j (sqSum n v)) y = partialDeriv i
        (fun z => ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) y := by
      show fderiv ℝ (partialDeriv j (sqSum n v)) y (e i) = fderiv ℝ
        (fun z => ∑ σ : Fin n → Fin 3, 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) y (e i)
      rw [hN.fderiv_eq]
    rw [h1, hSum Finset.univ i
      (fun σ z => 2 * iterPartial σ v z * partialDeriv j (iterPartial σ v) z) y
      (fun σ _ => ((hd σ).const_mul 2).mul (hd' σ))]
    refine Finset.sum_congr rfl (fun σ _ => ?_)
    rw [hMul i (fun z => 2 * iterPartial σ v z) (partialDeriv j (iterPartial σ v)) y
      ((hd σ).const_mul 2) (hd' σ), hCM i _ 2 y (hd σ)]
  have conj4 : ∀ y ∈ U, ellOp a b (sqSum n v) y = ∑ σ : Fin n → Fin 3,
      (2 * iterPartial σ v y * ellOp a b (iterPartial σ v) y
        + 2 * ∑ i : Fin 3, ∑ j : Fin 3, a y i j * partialDeriv i (iterPartial σ v) y
            * partialDeriv j (iterPartial σ v) y) := by
    intro y hy
    show (∑ i : Fin 3, ∑ j : Fin 3, a y i j * partialDeriv i (partialDeriv j (sqSum n v)) y
      + ∑ l : Fin 3, b y l * partialDeriv l (sqSum n v) y) = _
    simp only [hSecond y hy, hFirst y hy, ellOp]
    simp only [Fin.sum_univ_three]
    simp only [Finset.mul_sum]
    simp only [← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl (fun σ _ => by ring)
  
  have alg : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ),
      (∀ ξ : Fin 3 → ℝ,
        lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * A i j * ξ j) →
      ∀ (d l : (Fin n → Fin 3) → ℝ) (g : (Fin n → Fin 3) → Fin 3 → ℝ),
      (∀ σ, |d σ| ≤ K) →
      (∀ σ, |l σ| ≤ G * (1 + Real.sqrt (∑ σ', ∑ i, g σ' i ^ 2))) →
      lam * (∑ σ, ∑ i, g σ i ^ 2) - (2 * 3 ^ n * K * G + (3 ^ n * K * G) ^ 2 / lam)
        ≤ ∑ σ, (2 * d σ * l σ + 2 * ∑ i, ∑ j, A i j * g σ i * g σ j) := by
    intro A hA d l g hd hl
    obtain ⟨P, hPdef⟩ : ∃ P : ℝ, P = ∑ σ, ∑ i, g σ i ^ 2 := ⟨_, rfl⟩
    rw [← hPdef] at hl ⊢
    have hP0 : 0 ≤ P := by
      rw [hPdef]
      exact Finset.sum_nonneg (fun σ _ => Finset.sum_nonneg (fun i _ => sq_nonneg _))
    obtain ⟨S, hSdef⟩ : ∃ S : ℝ, S = Real.sqrt P := ⟨_, rfl⟩
    rw [← hSdef] at hl
    have hS0 : 0 ≤ S := by rw [hSdef]; exact Real.sqrt_nonneg _
    have hS2 : S ^ 2 = P := by rw [hSdef]; exact Real.sq_sqrt hP0
    obtain ⟨X, hXdef⟩ : ∃ X : ℝ, X = 3 ^ n * K * G := ⟨_, rfl⟩
    have ha : ∀ σ : Fin n → Fin 3,
        2 * lam * ∑ i : Fin 3, g σ i ^ 2 ≤ 2 * ∑ i : Fin 3, ∑ j : Fin 3, A i j * g σ i * g σ j := by
      intro σ
      have h := hA (g σ)
      have heq : ∑ i : Fin 3, ∑ j : Fin 3, g σ i * A i j * g σ j
          = ∑ i : Fin 3, ∑ j : Fin 3, A i j * g σ i * g σ j := by
        simp only [Fin.sum_univ_three]
        ring
      linarith
    have hb : ∀ σ : Fin n → Fin 3, -(2 * (K * (G * (1 + S)))) ≤ 2 * d σ * l σ := by
      intro σ
      have h1 : |d σ * l σ| ≤ K * (G * (1 + S)) := by
        rw [abs_mul]
        exact mul_le_mul (hd σ) (hl σ) (abs_nonneg _) hK
      have h2 := neg_abs_le (d σ * l σ)
      have h3 : 2 * d σ * l σ = 2 * (d σ * l σ) := by ring
      linarith
    have hsum : ∑ σ : Fin n → Fin 3, (-(2 * (K * (G * (1 + S)))) + 2 * lam * ∑ i : Fin 3, g σ i ^ 2)
        ≤ ∑ σ : Fin n → Fin 3, (2 * d σ * l σ + 2 * ∑ i : Fin 3, ∑ j : Fin 3, A i j * g σ i * g σ j) :=
      Finset.sum_le_sum (fun σ _ => add_le_add (hb σ) (ha σ))
    have hlsum : ∑ σ : Fin n → Fin 3, (-(2 * (K * (G * (1 + S)))) + 2 * lam * ∑ i : Fin 3, g σ i ^ 2)
        = 2 * lam * P - 2 * X - 2 * X * S := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, hPdef, hXdef]
      simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fun, Fintype.card_fin,
        nsmul_eq_mul, Nat.cast_pow, Nat.cast_ofNat]
      ring
    rw [hlsum] at hsum
    have key : 0 ≤ (lam * S - X) ^ 2 / lam := div_nonneg (sq_nonneg _) hlam.le
    have hsq : (lam * S - X) ^ 2 / lam = lam * S ^ 2 - 2 * X * S + X ^ 2 / lam := by
      field_simp
      ring
    have hS2' : lam * S ^ 2 = lam * P := by rw [hS2]
    have hgoal : 2 * 3 ^ n * K * G + (3 ^ n * K * G) ^ 2 / lam = 2 * X + X ^ 2 / lam := by
      rw [hXdef]; ring
    rw [hgoal]
    linarith [hsum, key, hsq, hS2']
  
  have key := alg (a y) hell (fun σ => iterPartial σ v y) (fun σ => ellOp a b (iterPartial σ v) y)
    (fun σ i => partialDeriv i (iterPartial σ v) y) hKy
    (fun σ => by
      have h := hGy σ
      rw [conj1 y] at h
      exact h)
  rw [conj1 y, conj4 y hy]
  exact key

theorem nbs_upper_point (U : Set E3) (hU : IsOpen U) (c : E3) (r : ℝ) (hr : 0 < r)
    (a : E3 → Matrix (Fin 3) (Fin 3) ℝ) (b : E3 → Fin 3 → ℝ) (v : E3 → ℝ)
    (hv : ContDiffOn ℝ ∞ v U) (n : ℕ) (y : E3) (hy : y ∈ U) (hyc : y ∈ Metric.closedBall c r)
    (lam E G : ℝ) (hlam : 0 < lam) (hE : 0 ≤ E) (hG : 0 ≤ G)
    (hell : ∀ ξ : Fin 3 → ℝ,
        lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j)
    (haE : ∀ i j : Fin 3, |a y i j| ≤ E) (hbE : ∀ l : Fin 3, |b y l| ≤ E)
    (hGy : ∀ σ : Fin (n + 1) → Fin 3, |ellOp a b (iterPartial σ v) y|
        ≤ G * (1 + Real.sqrt (sqSum (n + 1) v y) + Real.sqrt (sqSum (n + 2) v y))) :
    -(4 * 3 ^ (n + 1) * G * r ^ 4 + 2 * (3 ^ (n + 1)) ^ 2 * G ^ 2 * r ^ 4 / lam
        + (108 * E * r ^ 2 + 12 * E * r ^ 3) + 10368 * E ^ 2 * r ^ 2 / lam) * sqSum (n + 1) v y
      - 2 * 3 ^ (n + 1) * G * r ^ 4
    ≤ ellOp a b (fun z => (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2 * sqSum (n + 1) v z) y :=
by
  
  have bracket : ∀ (m : ℕ) (d l : (Fin m → Fin 3) → ℝ) (g : (Fin m → Fin 3) → Fin 3 → ℝ),
      (∀ σ, |l σ| ≤ G * (1 + Real.sqrt (∑ τ, d τ ^ 2) + Real.sqrt (∑ τ, ∑ i, g τ i ^ 2))) →
      2 * lam * (∑ σ, ∑ i, g σ i ^ 2)
        - 2 * 3 ^ m * G * Real.sqrt (∑ σ, d σ ^ 2)
            * (1 + Real.sqrt (∑ σ, d σ ^ 2) + Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))
        ≤ ∑ σ, (2 * d σ * l σ + 2 * ∑ i : Fin 3, ∑ j : Fin 3, a y i j * g σ i * g σ j) := by
    intro m d l g hl
    have hdS : ∀ σ, |d σ| ≤ Real.sqrt (∑ τ, d τ ^ 2) := fun σ =>
      Real.abs_le_sqrt (Finset.single_le_sum (f := fun τ => d τ ^ 2)
        (fun τ _ => sq_nonneg (d τ)) (Finset.mem_univ σ))
    have hb : ∀ σ, -(2 * (Real.sqrt (∑ τ, d τ ^ 2) *
        (G * (1 + Real.sqrt (∑ τ, d τ ^ 2) + Real.sqrt (∑ τ, ∑ i, g τ i ^ 2)))))
          ≤ 2 * d σ * l σ := by
      intro σ
      have h1 : |d σ * l σ| ≤ Real.sqrt (∑ τ, d τ ^ 2) *
          (G * (1 + Real.sqrt (∑ τ, d τ ^ 2) + Real.sqrt (∑ τ, ∑ i, g τ i ^ 2))) := by
        rw [abs_mul]
        exact mul_le_mul (hdS σ) (hl σ) (abs_nonneg _) (Real.sqrt_nonneg _)
      have h2 := neg_abs_le (d σ * l σ)
      linarith
    have ha : ∀ σ, 2 * lam * ∑ i, g σ i ^ 2
        ≤ 2 * ∑ i : Fin 3, ∑ j : Fin 3, a y i j * g σ i * g σ j := by
      intro σ
      have h1 := hell (g σ)
      have e : ∑ i : Fin 3, ∑ j : Fin 3, g σ i * a y i j * g σ j
          = ∑ i : Fin 3, ∑ j : Fin 3, a y i j * g σ i * g σ j := by
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
      linarith
    have hsum := Finset.sum_le_sum (fun σ (_ : σ ∈ Finset.univ) => add_le_add (hb σ) (ha σ))
    rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ, ← Finset.mul_sum,
      Fintype.card_fun, Fintype.card_fin, Fintype.card_fin, nsmul_eq_mul] at hsum
    push_cast at hsum
    linarith
  
  have cross : ∀ (m : ℕ) (d : (Fin m → Fin 3) → ℝ) (g : (Fin m → Fin 3) → Fin 3 → ℝ)
      (q : Fin 3 → ℝ) (η : ℝ), 0 ≤ η → (∀ i, |q i| ≤ 4 * r * η) →
      -(144 * E * r * η * Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))
        ≤ ∑ i : Fin 3, ∑ j : Fin 3, a y i j * (q i * (∑ σ, 2 * d σ * g σ j)
            + q j * (∑ σ, 2 * d σ * g σ i)) := by
    intro m d g q η hη hq
    have hP0 : 0 ≤ ∑ σ, d σ ^ 2 := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
    have hY : ∀ j : Fin 3, |∑ σ, 2 * d σ * g σ j|
        ≤ 2 * (Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2)) := by
      intro j
      have cs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ d (fun σ => g σ j)
      have h2 : ∑ σ, g σ j ^ 2 ≤ ∑ σ, ∑ i, g σ i ^ 2 :=
        Finset.sum_le_sum (fun σ _ => Finset.single_le_sum (f := fun i => g σ i ^ 2)
          (fun i _ => sq_nonneg _) (Finset.mem_univ j))
      have h3 : (∑ σ, d σ * g σ j) ^ 2 ≤ (∑ σ, d σ ^ 2) * (∑ σ, ∑ i, g σ i ^ 2) :=
        cs.trans (mul_le_mul_of_nonneg_left h2 hP0)
      have h4 := Real.abs_le_sqrt h3
      rw [Real.sqrt_mul hP0] at h4
      have e : ∑ σ, 2 * d σ * g σ j = 2 * ∑ σ, d σ * g σ j := by
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro σ _
        ring
      rw [e, abs_mul, abs_two]
      linarith
    have hterm : ∀ i j : Fin 3,
        -(16 * E * r * η * Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))
          ≤ a y i j * (q i * (∑ σ, 2 * d σ * g σ j) + q j * (∑ σ, 2 * d σ * g σ i)) := by
      intro i j
      have hρ : 0 ≤ 4 * r * η := by positivity
      have k1 : |q i * (∑ σ, 2 * d σ * g σ j)|
          ≤ 4 * r * η * (2 * (Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))) := by
        rw [abs_mul]
        exact mul_le_mul (hq i) (hY j) (abs_nonneg _) hρ
      have k2 : |q j * (∑ σ, 2 * d σ * g σ i)|
          ≤ 4 * r * η * (2 * (Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))) := by
        rw [abs_mul]
        exact mul_le_mul (hq j) (hY i) (abs_nonneg _) hρ
      have k3 : |q i * (∑ σ, 2 * d σ * g σ j) + q j * (∑ σ, 2 * d σ * g σ i)|
          ≤ 2 * (4 * r * η * (2 * (Real.sqrt (∑ σ, d σ ^ 2)
              * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2)))) := by
        have := abs_add_le (q i * (∑ σ, 2 * d σ * g σ j)) (q j * (∑ σ, 2 * d σ * g σ i))
        linarith
      have k4 : |a y i j * (q i * (∑ σ, 2 * d σ * g σ j) + q j * (∑ σ, 2 * d σ * g σ i))|
          ≤ E * (2 * (4 * r * η * (2 * (Real.sqrt (∑ σ, d σ ^ 2)
              * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))))) := by
        rw [abs_mul]
        exact mul_le_mul (haE i j) k3 (abs_nonneg _) hE
      have k5 := neg_abs_le
        (a y i j * (q i * (∑ σ, 2 * d σ * g σ j) + q j * (∑ σ, 2 * d σ * g σ i)))
      linarith
    calc -(144 * E * r * η * Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2))
        = ∑ _i : Fin 3, ∑ _j : Fin 3,
            -(16 * E * r * η * Real.sqrt (∑ σ, d σ ^ 2) * Real.sqrt (∑ σ, ∑ i, g σ i ^ 2)) := by
          simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
          push_cast
          ring
      _ ≤ _ := Finset.sum_le_sum (fun i _ => Finset.sum_le_sum (fun j _ => hterm i j))
  
  have scalar : ∀ (N P P₂ η B Lz X : ℝ), 0 ≤ N → 0 ≤ P → 0 ≤ P₂ → 0 ≤ η → η ≤ r ^ 2 →
      2 * lam * P₂ - 2 * N * G * Real.sqrt P * (1 + Real.sqrt P + Real.sqrt P₂) ≤ B →
      |Lz| ≤ 108 * E * r ^ 2 + 12 * E * r ^ 3 →
      -(144 * E * r * η * Real.sqrt P * Real.sqrt P₂) ≤ X →
      -(4 * N * G * r ^ 4 + 2 * N ^ 2 * G ^ 2 * r ^ 4 / lam
          + (108 * E * r ^ 2 + 12 * E * r ^ 3) + 10368 * E ^ 2 * r ^ 2 / lam) * P
        - 2 * N * G * r ^ 4
        ≤ η ^ 2 * B + P * Lz + X := by
    intro N P P₂ η B Lz X hN hP hP₂ hη0 hηr hB hLz hX
    have hS2 := Real.sq_sqrt hP
    have hT2 := Real.sq_sqrt hP₂
    have hS0 := Real.sqrt_nonneg P
    have hT0 := Real.sqrt_nonneg P₂
    generalize Real.sqrt P = S at *
    generalize Real.sqrt P₂ = T at *
    subst hS2
    subst hT2
    rw [div_eq_mul_inv, div_eq_mul_inv]
    have hw : lam * lam⁻¹ = 1 := mul_inv_cancel₀ hlam.ne'
    have hw0 : 0 ≤ lam⁻¹ := inv_nonneg.mpr hlam.le
    generalize lam⁻¹ = w at *
    have hηsq : η ^ 2 ≤ r ^ 4 := by
      have := mul_le_mul hηr hηr hη0 (by positivity)
      nlinarith
    have hr4 : 0 ≤ r ^ 4 - η ^ 2 := by linarith
    have y1 : 0 ≤ η ^ 2 * (B - (2 * lam * T ^ 2 - 2 * N * G * S * (1 + S + T))) :=
      mul_nonneg (sq_nonneg _) (by linarith)
    have y2 : 0 ≤ S ^ 2 * (Lz + (108 * E * r ^ 2 + 12 * E * r ^ 3)) :=
      mul_nonneg (sq_nonneg _) (by linarith [(abs_le.mp hLz).1])
    have y4 : 0 ≤ N * G * η ^ 2 * (S - 1) ^ 2 := by positivity
    have y5 : 0 ≤ (r ^ 4 - η ^ 2) * (N * G * (1 + S ^ 2)) := mul_nonneg hr4 (by positivity)
    have y6 : 0 ≤ (r ^ 4 - η ^ 2) * (2 * N * G * S ^ 2) := mul_nonneg hr4 (by positivity)
    have y7 : 0 ≤ lam / 2 * η ^ 2 * T ^ 2 - 2 * N * G * η ^ 2 * S * T
        + 2 * N ^ 2 * G ^ 2 * η ^ 2 * S ^ 2 * w := by
      have e : lam / 2 * η ^ 2 * T ^ 2 - 2 * N * G * η ^ 2 * S * T
          + 2 * N ^ 2 * G ^ 2 * η ^ 2 * S ^ 2 * w
          = (lam * η * T - 2 * N * G * η * S) ^ 2 * w / 2 := by
        linear_combination (2 * N * G * η ^ 2 * S * T - lam * η ^ 2 * T ^ 2 / 2) * hw
      rw [e]
      positivity
    have y8 : 0 ≤ (r ^ 4 - η ^ 2) * (2 * N ^ 2 * G ^ 2 * S ^ 2 * w) :=
      mul_nonneg hr4 (by positivity)
    have y9 : 0 ≤ lam / 2 * η ^ 2 * T ^ 2 - 144 * E * r * η * S * T
        + 10368 * E ^ 2 * r ^ 2 * S ^ 2 * w := by
      have e : lam / 2 * η ^ 2 * T ^ 2 - 144 * E * r * η * S * T
          + 10368 * E ^ 2 * r ^ 2 * S ^ 2 * w
          = (lam * η * T - 144 * E * r * S) ^ 2 * w / 2 := by
        linear_combination (144 * E * r * η * S * T - lam * η ^ 2 * T ^ 2 / 2) * hw
      rw [e]
      positivity
    have y10 : 0 ≤ lam * η ^ 2 * T ^ 2 := by positivity
    have y11 : 0 ≤ N * G * r ^ 4 * S ^ 2 := by positivity
    have y12 : 0 ≤ N * G * r ^ 4 := by positivity
    linarith
  
  have hcut := nbs_cutoff c r hr a b E
  obtain ⟨hη0, hηr, hq, hLz'⟩ := hcut.2.2.2 y hyc
  have hLz := hLz' haE hbE
  have hζ : ContDiffOn ℝ ∞ (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) U :=
    hcut.1.contDiffOn
  obtain ⟨h1, h2, h3, h4⟩ := nbs_sqSum_identities U hU a b v hv (n + 1)
  have hprod := (nbs_L_product U hU a b _ (sqSum (n + 1) v) hζ h2 y hy 0).2.1
  rw [hprod, h4 y hy]
  simp only [h3 y hy]
  have hn2 : sqSum (n + 2) v y
      = ∑ σ : Fin (n + 1) → Fin 3, ∑ i : Fin 3, (partialDeriv i (iterPartial σ v) y) ^ 2 :=
    h1 y
  have hPdef : sqSum (n + 1) v y = ∑ σ : Fin (n + 1) → Fin 3, (iterPartial σ v y) ^ 2 := rfl
  have hl : ∀ σ : Fin (n + 1) → Fin 3, |ellOp a b (iterPartial σ v) y|
      ≤ G * (1 + Real.sqrt (∑ τ : Fin (n + 1) → Fin 3, (iterPartial τ v y) ^ 2)
        + Real.sqrt (∑ τ : Fin (n + 1) → Fin 3, ∑ i : Fin 3,
            (partialDeriv i (iterPartial τ v) y) ^ 2)) := by
    intro σ
    have := hGy σ
    rw [hn2, hPdef] at this
    exact this
  have hB := bracket (n + 1) (fun σ => iterPartial σ v y)
    (fun σ => ellOp a b (iterPartial σ v) y) (fun σ i => partialDeriv i (iterPartial σ v) y) hl
  have hX := cross (n + 1) (fun σ => iterPartial σ v y)
    (fun σ i => partialDeriv i (iterPartial σ v) y)
    (fun i => partialDeriv i (fun x : E3 => (r ^ 2 - ∑ k : Fin 3, (x k - c k) ^ 2) ^ 2) y)
    _ hη0 hq
  have hP : 0 ≤ ∑ σ : Fin (n + 1) → Fin 3, (iterPartial σ v y) ^ 2 :=
    Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  have hP₂ : 0 ≤ ∑ σ : Fin (n + 1) → Fin 3, ∑ i : Fin 3,
      (partialDeriv i (iterPartial σ v) y) ^ 2 :=
    Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  have hN : (0 : ℝ) ≤ 3 ^ (n + 1) := by positivity
  have key := scalar _ _ _ _ _ _ _ hN hP hP₂ hη0 hηr hB hLz hX
  rw [hPdef]
  exact key

theorem nib_bernstein_step (n : ℕ) (lam E G K r : ℝ) (hlam : 0 < lam) (hE : 0 ≤ E)
    (hG : 0 ≤ G) (hK : 0 ≤ K) (hr : 0 < r) :
    ∃ Q : ℝ, ∀ (U : Set E3) (c : E3) (a : E3 → Matrix (Fin 3) (Fin 3) ℝ)
      (b : E3 → Fin 3 → ℝ) (v : E3 → ℝ), IsOpen U → Metric.closedBall c r ⊆ U →
      (∀ y ∈ Metric.closedBall c r, ∀ ξ : Fin 3 → ℝ,
        lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j) →
      (∀ y ∈ Metric.closedBall c r, ∀ i j : Fin 3, |a y i j| ≤ E) →
      (∀ y ∈ Metric.closedBall c r, ∀ l : Fin 3, |b y l| ≤ E) →
      ContDiffOn ℝ ∞ v U →
      (∀ σ : Fin n → Fin 3, ∀ y ∈ Metric.closedBall c r, |iterPartial σ v y| ≤ K) →
      (∀ y ∈ Metric.closedBall c r, ∀ σ : Fin n → Fin 3,
        |ellOp a b (iterPartial σ v) y| ≤ G * (1 + Real.sqrt (sqSum (n + 1) v y))) →
      (∀ y ∈ Metric.closedBall c r, ∀ σ : Fin (n + 1) → Fin 3,
        |ellOp a b (iterPartial σ v) y|
          ≤ G * (1 + Real.sqrt (sqSum (n + 1) v y) + Real.sqrt (sqSum (n + 2) v y))) →
      sqSum (n + 1) v c ≤ Q :=
by
  obtain ⟨D, hDdef⟩ : ∃ D : ℝ, D = 2 * 3 ^ n * K * G + (3 ^ n * K * G) ^ 2 / lam := ⟨_, rfl⟩
  obtain ⟨C1, hC1def⟩ : ∃ C1 : ℝ, C1 = 4 * 3 ^ (n + 1) * G * r ^ 4
      + 2 * (3 ^ (n + 1)) ^ 2 * G ^ 2 * r ^ 4 / lam
      + (108 * E * r ^ 2 + 12 * E * r ^ 3) + 10368 * E ^ 2 * r ^ 2 / lam := ⟨_, rfl⟩
  obtain ⟨C2, hC2def⟩ : ∃ C2 : ℝ, C2 = 2 * 3 ^ (n + 1) * G * r ^ 4 := ⟨_, rfl⟩
  have hD : 0 ≤ D := by rw [hDdef]; positivity
  have hC1 : 0 ≤ C1 := by rw [hC1def]; positivity
  have hC2 : 0 ≤ C2 := by rw [hC2def]; positivity
  obtain ⟨A, hAdef⟩ : ∃ A : ℝ, A = C1 / lam := ⟨_, rfl⟩
  have hA : 0 ≤ A := by rw [hAdef]; exact div_nonneg hC1 hlam.le
  have hAlam : A * lam = C1 := by rw [hAdef]; field_simp
  obtain ⟨K0, hK0def⟩ : ∃ K0 : ℝ, K0 = C2 + A * D := ⟨_, rfl⟩
  have hK0 : 0 ≤ K0 := by rw [hK0def]; exact add_nonneg hC2 (mul_nonneg hA hD)
  obtain ⟨X, hXdef⟩ : ∃ X : ℝ, X = Real.exp (2 * ((E + 1) / lam + 1) * r) := ⟨_, rfl⟩
  refine ⟨(A * 3 ^ n * K ^ 2 + K0 * X) / r ^ 4, ?_⟩
  intro U c a b v hUo hcU hell haE hbE hv hKb hG0 hG1
  have hcut := nbs_cutoff c r hr a b E
  have hζ : ContDiffOn ℝ ∞ (fun z : E3 => (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2) U :=
    hcut.1.contDiffOn
  have hP1 : ContDiffOn ℝ ∞ (sqSum (n + 1) v) U :=
    (nbs_sqSum_identities U hUo a b v hv (n + 1)).2.1
  have hP0 : ContDiffOn ℝ ∞ (sqSum n v) U := (nbs_sqSum_identities U hUo a b v hv n).2.1
  have hζP : ContDiffOn ℝ ∞
      (fun z => (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2 * sqSum (n + 1) v z) U :=
    hζ.mul hP1
  have hΦ : ContDiffOn ℝ ∞
      (fun z => (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2 * sqSum (n + 1) v z
        + A * sqSum n v z) U :=
    hζP.add (contDiffOn_const.mul hP0)
  
  have hint : ∀ y ∈ Metric.ball c r, -K0 ≤ ellOp a b
      (fun z => (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2 * sqSum (n + 1) v z
        + A * sqSum n v z) y := by
    intro y hy
    have hyc : y ∈ Metric.closedBall c r := Metric.ball_subset_closedBall hy
    have hyU : y ∈ U := hcU hyc
    have hlin := (nbs_L_product U hUo a b
      (fun z => (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2 * sqSum (n + 1) v z)
      (sqSum n v) hζP hP0 y hyU A).2.2
    rw [hlin]
    have h11 := nbs_upper_point U hUo c r hr a b v hv n y hyU hyc lam E G hlam hE hG
      (hell y hyc) (haE y hyc) (hbE y hyc) (fun σ => hG1 y hyc σ)
    have h10 := nbs_lower_point U hUo a b v hv n y hyU lam G K hlam hG hK (hell y hyc)
      (fun σ => hKb σ y hyc) (fun σ => hG0 y hyc σ)
    rw [← hC1def, ← hC2def] at h11
    rw [← hDdef] at h10
    have h10' := mul_le_mul_of_nonneg_left h10 hA
    have hid : A * (lam * sqSum (n + 1) v y - D) = C1 * sqSum (n + 1) v y - A * D := by
      rw [← hAlam]; ring
    rw [hK0def]
    linarith
  
  have hsph : ∀ z ∈ Metric.sphere c r,
      (r ^ 2 - ∑ k : Fin 3, (z k - c k) ^ 2) ^ 2 * sqSum (n + 1) v z + A * sqSum n v z
        ≤ A * 3 ^ n * K ^ 2 := by
    intro z hz
    have hzc : z ∈ Metric.closedBall c r := Metric.sphere_subset_closedBall hz
    have hη := hcut.2.2.1 z hz
    have hPn : sqSum n v z ≤ 3 ^ n * K ^ 2 := by
      unfold sqSum
      calc ∑ σ : Fin n → Fin 3, (iterPartial σ v z) ^ 2
          ≤ ∑ _σ : Fin n → Fin 3, K ^ 2 := by
            apply Finset.sum_le_sum
            intro σ _
            have h1 := hKb σ z hzc
            have h2 : |iterPartial σ v z| ^ 2 ≤ K ^ 2 := pow_le_pow_left₀ (abs_nonneg _) h1 2
            rwa [sq_abs] at h2
        _ = 3 ^ n * K ^ 2 := by
            simp [Finset.sum_const, Finset.card_univ, Fintype.card_fin]
    rw [hη]
    have h1 := mul_le_mul_of_nonneg_left hPn hA
    have h2 : (0 : ℝ) ^ 2 * sqSum (n + 1) v z = 0 := by ring
    linarith
  
  have hmax := nbs_barrier_max U hUo c r hr hcU a b lam E hlam hE hell
    (fun y hy => hbE y hy 0) _ hΦ K0 (A * 3 ^ n * K ^ 2) hK0 hint hsph c
    (Metric.mem_closedBall_self hr.le)
  rw [← hXdef] at hmax
  
  have hcen : r ^ 4 * sqSum (n + 1) v c
      ≤ (r ^ 2 - ∑ k : Fin 3, (c k - c k) ^ 2) ^ 2 * sqSum (n + 1) v c + A * sqSum n v c := by
    rw [hcut.2.1]
    have h0 : 0 ≤ sqSum n v c := Finset.sum_nonneg (fun σ _ => sq_nonneg _)
    have h1 := mul_nonneg hA h0
    linarith
  rw [le_div_iff₀ (by positivity)]
  linarith

theorem nib_norm_le_sum (U : Set E3) (hU : IsOpen U) (v : E3 → ℝ) (hv : ContDiffOn ℝ ∞ v U)
    (m : ℕ) (y : E3) (hy : y ∈ U) :
    ‖iteratedFDeriv ℝ m v y‖ ≤ ∑ σ : Fin m → Fin 3, |iterPartial σ v y| :=
by
  classical
  
  have hB : ∀ n : ℕ, ∀ L : Fin n → Fin 3, ∀ z ∈ U,
      iteratedFDeriv ℝ n v z (fun k => e (L k)) = (List.ofFn L).foldr partialDeriv v z := by
    intro n
    induction n with
    | zero =>
      intro L z hz
      simp [iteratedFDeriv_zero_apply]
    | succ n ih =>
      intro L z hz
      have hc : ContDiffAt ℝ ∞ v z := hv.contDiffAt (hU.mem_nhds hz)
      have hlt : ((n : ℕ) : WithTop ℕ∞) < ∞ :=
        WithTop.coe_lt_coe.2 (ENat.coe_lt_top n)
      have hdiff : DifferentiableAt ℝ (iteratedFDeriv ℝ n v) z :=
        hc.differentiableAt_iteratedFDeriv hlt
      rw [iteratedFDeriv_succ_apply_left]
      rw [← fderiv_continuousMultilinear_apply_const_apply hdiff]
      have hev : (fun w => iteratedFDeriv ℝ n v w (Fin.tail (fun k => e (L k)))) =ᶠ[𝓝 z]
          (List.ofFn (fun i : Fin n => L i.succ)).foldr partialDeriv v := by
        filter_upwards [hU.mem_nhds hz] with w hw
        exact ih (fun i => L i.succ) w hw
      rw [hev.fderiv_eq, List.ofFn_succ, List.foldr_cons]
      rfl
  
  have hA : ∀ T : ContinuousMultilinearMap ℝ (fun _ : Fin m => E3) ℝ,
      ‖T‖ ≤ ∑ L : Fin m → Fin 3, |T (fun k => e (L k))| := by
    intro T
    refine ContinuousMultilinearMap.opNorm_le_bound
      (Finset.sum_nonneg (fun _ _ => abs_nonneg _)) ?_
    intro h
    have hexp : h = fun k => ∑ i : Fin 3, h k i • e i := by
      funext k
      have h1 := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr (h k)
      simp only [EuclideanSpace.basisFun_apply, EuclideanSpace.basisFun_repr] at h1
      exact h1.symm
    have hT : T h = ∑ r : Fin m → Fin 3, (∏ k, h k (r k)) * T (fun k => e (r k)) := by
      conv_lhs => rw [hexp]
      rw [ContinuousMultilinearMap.map_sum]
      refine Finset.sum_congr rfl (fun r _ => ?_)
      rw [ContinuousMultilinearMap.map_smul_univ, smul_eq_mul]
    rw [Real.norm_eq_abs, hT, Finset.sum_mul]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum (fun r _ => ?_))
    rw [abs_mul, Finset.abs_prod, mul_comm]
    refine mul_le_mul_of_nonneg_left ?_ (abs_nonneg _)
    refine Finset.prod_le_prod (fun k _ => abs_nonneg _) (fun k _ => ?_)
    have h2 := PiLp.norm_apply_le (h k) (r k)
    rwa [Real.norm_eq_abs] at h2
  calc ‖iteratedFDeriv ℝ m v y‖
      ≤ ∑ L : Fin m → Fin 3, |iteratedFDeriv ℝ m v y (fun k => e (L k))| := hA _
    _ = ∑ σ : Fin m → Fin 3, |iterPartial σ v y| :=
        Finset.sum_congr rfl (fun L _ => congrArg abs (hB m L y hy))

theorem nli_interior_bounds (y₀ : E3) (R : ℝ) (hR : 0 < R)
    (a : E3 → Matrix (Fin 3) (Fin 3) ℝ) (b : E3 → Fin 3 → ℝ) (f : E3 → ℝ)
    (ha : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => a y i j) (Metric.ball y₀ R))
    (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun y => b y l) (Metric.ball y₀ R))
    (hf : ContDiffOn ℝ ∞ f (Metric.ball y₀ R))
    (hell : ∀ y ∈ Metric.ball y₀ R, ∀ ξ : Fin 3 → ℝ, ξ ≠ 0 →
      0 < ∑ i : Fin 3, ∑ j : Fin 3, ξ i * a y i j * ξ j)
    (B : ℝ) (m : ℕ) :
    ∃ C : ℝ, ∀ v : E3 → ℝ, ContDiffOn ℝ ∞ v (Metric.ball y₀ R) →
      (∀ y ∈ Metric.ball y₀ R, |v y| ≤ B) →
      (∀ y ∈ Metric.ball y₀ R,
        ∑ i : Fin 3, ∑ j : Fin 3, a y i j * partialDeriv i (partialDeriv j v) y
          + ∑ l : Fin 3, b y l * partialDeriv l v y = f y) →
      ∀ y ∈ Metric.ball y₀ (R / 2), ‖iteratedFDeriv ℝ m v y‖ ≤ C :=
by
  classical
  
  obtain ⟨ρ, hρdef⟩ : ∃ ρ : ℕ → ℝ, ρ = fun j => R / 2 + R / 4 * (1 / 2 : ℝ) ^ j := ⟨_, rfl⟩
  have hρpos : ∀ j, R / 2 < ρ j := by
    intro j
    rw [hρdef]
    have : 0 < R / 4 * (1 / 2 : ℝ) ^ j := by positivity
    linarith
  have hρle : ∀ j, ρ j < R := by
    intro j
    rw [hρdef]
    have h1 : (1 / 2 : ℝ) ^ j ≤ 1 := pow_le_one₀ (by norm_num) (by norm_num)
    have h2 : R / 4 * (1 / 2 : ℝ) ^ j ≤ R / 4 := by
      have := mul_le_mul_of_nonneg_left h1 (show (0 : ℝ) ≤ R / 4 by positivity)
      linarith
    show R / 2 + R / 4 * (1 / 2 : ℝ) ^ j < R
    linarith
  have hρstep : ∀ j, ρ (j + 1) < ρ j := by
    intro j
    rw [hρdef]
    show R / 2 + R / 4 * (1 / 2 : ℝ) ^ (j + 1) < R / 2 + R / 4 * (1 / 2 : ℝ) ^ j
    have : 0 < R / 4 * (1 / 2 : ℝ) ^ j := by positivity
    rw [pow_succ]
    nlinarith
  have hball : ∀ j, Metric.closedBall y₀ (ρ j) ⊆ Metric.ball y₀ R :=
    fun j => Metric.closedBall_subset_ball (hρle j)
  have hiter0 : ∀ (σ : Fin 0 → Fin 3) (v : E3 → ℝ), iterPartial σ v = v := by
    intro σ v
    simp [iterPartial]
  have aux1 : ∀ S T x : ℝ, 0 ≤ x → 0 ≤ S → T ≤ S → 1 + (T + x) ≤ (1 + S) * (1 + x) := by
    intro S T x hx hS hT
    nlinarith
  have aux2 : ∀ S T x w : ℝ, 0 ≤ x → 0 ≤ w → 0 ≤ S → T ≤ S →
      1 + (T + x + w) ≤ (1 + S) * (1 + x + w) := by
    intro S T x w hx hw hS hT
    nlinarith
  
  have key : ∀ j : ℕ, ∃ K : ℝ, 0 ≤ K ∧ ∀ v : E3 → ℝ, ContDiffOn ℝ ∞ v (Metric.ball y₀ R) →
      (∀ y ∈ Metric.ball y₀ R, |v y| ≤ B) →
      (∀ y ∈ Metric.ball y₀ R, ellOp a b v y = f y) →
      ∀ i ≤ j, ∀ σ : Fin i → Fin 3, ∀ y ∈ Metric.closedBall y₀ (ρ j),
        |iterPartial σ v y| ≤ K := by
    intro j
    induction j with
    | zero =>
      refine ⟨max B 0, le_max_right _ _, ?_⟩
      intro v _ hvB _ i hi σ y hy
      have hi0 : i = 0 := by omega
      subst hi0
      rw [hiter0]
      exact le_trans (hvB y (hball 0 hy)) (le_max_left _ _)
    | succ j ih =>
      obtain ⟨K, hK0, hK⟩ := ih
      obtain ⟨lam, E, hlam, hE, hcc⟩ :=
        nib_compact_constants y₀ R a b ha hb hell (ρ j) (hρle j)
      obtain ⟨G0, hG00, hG0⟩ := nib_commutator_bound y₀ R a b f ha hb hf (ρ j) (hρle j) j
      obtain ⟨G1, hG10, hG1⟩ :=
        nib_commutator_bound y₀ R a b f ha hb hf (ρ j) (hρle j) (j + 1)
      obtain ⟨S, hSdef⟩ : ∃ S : ℝ,
          S = ∑ i ∈ Finset.range (j + 1), Real.sqrt (∑ _σ : Fin i → Fin 3, K ^ 2) := ⟨_, rfl⟩
      have hS0 : 0 ≤ S := by
        rw [hSdef]
        exact Finset.sum_nonneg (fun i _ => Real.sqrt_nonneg _)
      have hGm0 : 0 ≤ max G0 G1 := le_trans hG00 (le_max_left _ _)
      have hG' : 0 ≤ max G0 G1 * (1 + S) := mul_nonneg hGm0 (by linarith)
      have hr0 : 0 < ρ j - ρ (j + 1) := by
        have := hρstep j
        linarith
      obtain ⟨Q, hQ⟩ :=
        nib_bernstein_step j lam E (max G0 G1 * (1 + S)) K (ρ j - ρ (j + 1)) hlam hE hG' hK0 hr0
      refine ⟨max K (Real.sqrt Q), le_trans hK0 (le_max_left _ _), ?_⟩
      intro v hv hvB hpde i hi σ y hy
      have hyj : y ∈ Metric.closedBall y₀ (ρ j) :=
        Metric.closedBall_subset_closedBall (le_of_lt (hρstep j)) hy
      rcases Nat.lt_or_ge i (j + 1) with hij | hij
      · exact le_trans (hK v hv hvB hpde i (by omega) σ y hyj) (le_max_left _ _)
      · have hieq : i = j + 1 := by omega
        subst hieq
        have hsub : Metric.closedBall y (ρ j - ρ (j + 1)) ⊆ Metric.closedBall y₀ (ρ j) := by
          intro z hz
          rw [Metric.mem_closedBall] at hz ⊢
          rw [Metric.mem_closedBall] at hy
          calc dist z y₀ ≤ dist z y + dist y y₀ := dist_triangle _ _ _
            _ ≤ (ρ j - ρ (j + 1)) + ρ (j + 1) := add_le_add hz hy
            _ = ρ j := by ring
        have hPi : ∀ z ∈ Metric.closedBall y₀ (ρ j),
            ∑ i ∈ Finset.range (j + 1), Real.sqrt (sqSum i v z) ≤ S := by
          intro z hz
          rw [hSdef]
          apply Finset.sum_le_sum
          intro i hi'
          apply Real.sqrt_le_sqrt
          apply Finset.sum_le_sum
          intro σ' _
          have hi'' : i ≤ j := by
            rw [Finset.mem_range] at hi'
            omega
          have h1 := hK v hv hvB hpde i hi'' σ' z hz
          have h2 : |iterPartial σ' v z| ^ 2 ≤ K ^ 2 := pow_le_pow_left₀ (abs_nonneg _) h1 2
          rwa [sq_abs] at h2
        have hQy := hQ (Metric.ball y₀ R) y a b v Metric.isOpen_ball
          (hsub.trans (hball j))
          (fun z hz => (hcc z (hsub hz)).1)
          (fun z hz => (hcc z (hsub hz)).2.1)
          (fun z hz => (hcc z (hsub hz)).2.2)
          hv
          (fun σ' z hz => hK v hv hvB hpde j le_rfl σ' z (hsub hz))
          (by
            intro z hz σ'
            have hzj := hsub hz
            have h1 := hG0 v hv hpde z hzj σ'
            have h2 := hPi z hzj
            rw [Finset.sum_range_succ] at h1
            have hx : 0 ≤ Real.sqrt (sqSum (j + 1) v z) := Real.sqrt_nonneg _
            have h3 := aux1 S _ _ hx hS0 h2
            calc |ellOp a b (iterPartial σ' v) z|
                ≤ G0 * (1 + (∑ i ∈ Finset.range (j + 1), Real.sqrt (sqSum i v z)
                    + Real.sqrt (sqSum (j + 1) v z))) := h1
              _ ≤ G0 * ((1 + S) * (1 + Real.sqrt (sqSum (j + 1) v z))) :=
                  mul_le_mul_of_nonneg_left h3 hG00
              _ ≤ max G0 G1 * ((1 + S) * (1 + Real.sqrt (sqSum (j + 1) v z))) :=
                  mul_le_mul_of_nonneg_right (le_max_left _ _) (by positivity)
              _ = max G0 G1 * (1 + S) * (1 + Real.sqrt (sqSum (j + 1) v z)) := by ring)
          (by
            intro z hz σ'
            have hzj := hsub hz
            have h1 := hG1 v hv hpde z hzj σ'
            have h2 := hPi z hzj
            rw [Finset.sum_range_succ, Finset.sum_range_succ] at h1
            have hx : 0 ≤ Real.sqrt (sqSum (j + 1) v z) := Real.sqrt_nonneg _
            have hw : 0 ≤ Real.sqrt (sqSum (j + 1 + 1) v z) := Real.sqrt_nonneg _
            have h3 := aux2 S _ _ _ hx hw hS0 h2
            calc |ellOp a b (iterPartial σ' v) z|
                ≤ G1 * (1 + (∑ i ∈ Finset.range (j + 1), Real.sqrt (sqSum i v z)
                    + Real.sqrt (sqSum (j + 1) v z) + Real.sqrt (sqSum (j + 1 + 1) v z))) := h1
              _ ≤ G1 * ((1 + S) * (1 + Real.sqrt (sqSum (j + 1) v z)
                    + Real.sqrt (sqSum (j + 1 + 1) v z))) :=
                  mul_le_mul_of_nonneg_left h3 hG10
              _ ≤ max G0 G1 * ((1 + S) * (1 + Real.sqrt (sqSum (j + 1) v z)
                    + Real.sqrt (sqSum (j + 1 + 1) v z))) :=
                  mul_le_mul_of_nonneg_right (le_max_right _ _) (by positivity)
              _ = max G0 G1 * (1 + S) * (1 + Real.sqrt (sqSum (j + 1) v z)
                    + Real.sqrt (sqSum (j + 2) v z)) := by ring)
        have hsq : (iterPartial σ v y) ^ 2 ≤ sqSum (j + 1) v y := by
          unfold sqSum
          exact Finset.single_le_sum (f := fun σ' => (iterPartial σ' v y) ^ 2)
            (fun σ' _ => sq_nonneg _) (Finset.mem_univ σ)
        calc |iterPartial σ v y| ≤ Real.sqrt (sqSum (j + 1) v y) := Real.abs_le_sqrt hsq
          _ ≤ Real.sqrt Q := Real.sqrt_le_sqrt hQy
          _ ≤ max K (Real.sqrt Q) := le_max_right _ _
  
  obtain ⟨K, _, hK⟩ := key m
  refine ⟨∑ _σ : Fin m → Fin 3, K, ?_⟩
  intro v hv hvB hpde y hy
  have hpde' : ∀ z ∈ Metric.ball y₀ R, ellOp a b v z = f z := fun z hz => hpde z hz
  have hyc : y ∈ Metric.closedBall y₀ (ρ m) := by
    rw [Metric.mem_ball] at hy
    rw [Metric.mem_closedBall]
    linarith [hρpos m]
  calc ‖iteratedFDeriv ℝ m v y‖ ≤ ∑ σ : Fin m → Fin 3, |iterPartial σ v y| :=
        nib_norm_le_sum _ Metric.isOpen_ball v hv m y (hball m hyc)
    _ ≤ ∑ _σ : Fin m → Fin 3, K :=
        Finset.sum_le_sum (fun σ _ => hK v hv hvB hpde' m le_rfl σ y hyc)

theorem nli_jet2_comp (τ : E3 → E3) (O : Set E3) (hO : IsOpen O) (x₀ : E3) (hx₀ : x₀ ∈ O)
    (hτ : ContDiffOn ℝ ∞ τ O) (f : ℕ → E3 → ℝ) (F : E3 → ℝ)
    (hf : ∀ n, ContDiff ℝ ∞ (f n)) (hF : ContDiff ℝ ∞ F)
    (hconv : ∀ k : ℕ, k ≤ 2 → Tendsto (fun n => iteratedFDeriv ℝ k (f n) (τ x₀)) atTop
      (𝓝 (iteratedFDeriv ℝ k F (τ x₀))))
    (w : ℕ → E3 → ℝ) (wl : E3 → ℝ)
    (hw : ∀ n, ∀ y ∈ O, w n y = f n (τ y)) (hwl : ∀ y ∈ O, wl y = F (τ y)) :
    Tendsto (fun n => w n x₀) atTop (𝓝 (wl x₀)) ∧
    (∀ i : Fin 3, Tendsto (fun n => partialDeriv i (w n) x₀) atTop (𝓝 (partialDeriv i wl x₀))) ∧
    (∀ i j : Fin 3, Tendsto (fun n => partialDeriv i (partialDeriv j (w n)) x₀) atTop
      (𝓝 (partialDeriv i (partialDeriv j wl) x₀))) :=
by
  have hOx : O ∈ 𝓝 x₀ := hO.mem_nhds hx₀
  
  have first : ∀ (h : E3 → ℝ), ContDiff ℝ ∞ h → ∀ v : E3 → ℝ, (∀ y ∈ O, v y = h (τ y)) →
      ∀ y ∈ O, ∀ i : Fin 3, partialDeriv i v y = fderiv ℝ h (τ y) (fderiv ℝ τ y (e i)) := by
    intro h hh v hv y hy i
    have hev : v =ᶠ[𝓝 y] (fun z => h (τ z)) :=
      Filter.eventually_of_mem (hO.mem_nhds hy) (fun z hz => hv z hz)
    have hτd : DifferentiableAt ℝ τ y :=
      (hτ.contDiffAt (hO.mem_nhds hy)).differentiableAt (by simp)
    have hhd : DifferentiableAt ℝ h (τ y) := hh.differentiable (by simp) (τ y)
    show fderiv ℝ v y (e i) = _
    rw [hev.fderiv_eq, fderiv_comp' y hhd hτd]
    rfl
  
  have second : ∀ (h : E3 → ℝ), ContDiff ℝ ∞ h → ∀ v : E3 → ℝ, ∀ j : Fin 3,
      (∀ y ∈ O, partialDeriv j v y = fderiv ℝ h (τ y) (fderiv ℝ τ y (e j))) → ∀ i : Fin 3,
      partialDeriv i (partialDeriv j v) x₀ =
        fderiv ℝ h (τ x₀) (fderiv ℝ (fun y => fderiv ℝ τ y (e j)) x₀ (e i)) +
          fderiv ℝ (fderiv ℝ h) (τ x₀) (fderiv ℝ τ x₀ (e i)) (fderiv ℝ τ x₀ (e j)) := by
    intro h hh v j hv1 i
    have hev : partialDeriv j v =ᶠ[𝓝 x₀]
        (fun y => fderiv ℝ h (τ y) (fderiv ℝ τ y (e j))) :=
      Filter.eventually_of_mem hOx (fun z hz => hv1 z hz)
    have hτx : ContDiffAt ℝ ∞ τ x₀ := hτ.contDiffAt hOx
    have hτd : DifferentiableAt ℝ τ x₀ := hτx.differentiableAt (by simp)
    have hle : (1 : WithTop ℕ∞) + 1 ≤ ∞ := by
      first
        | exact_mod_cast (le_top : ((1 + 1 : ℕ∞)) ≤ ⊤)
        | exact WithTop.coe_le_coe.mpr le_top
    have hDh : ContDiff ℝ 1 (fderiv ℝ h) := hh.fderiv_right hle
    have hDhd : DifferentiableAt ℝ (fderiv ℝ h) (τ x₀) := hDh.differentiable (by simp) _
    have hcd : DifferentiableAt ℝ (fun y => fderiv ℝ h (τ y)) x₀ := hDhd.comp x₀ hτd
    have hDτ : ContDiffAt ℝ 1 (fderiv ℝ τ) x₀ := hτx.fderiv_right hle
    have hVd : DifferentiableAt ℝ (fun y => fderiv ℝ τ y (e j)) x₀ :=
      (hDτ.differentiableAt (by simp)).clm_apply (differentiableAt_const _)
    show fderiv ℝ (partialDeriv j v) x₀ (e i) = _
    rw [hev.fderiv_eq, fderiv_clm_apply hcd hVd, fderiv_comp' x₀ hDhd hτd]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.flip_apply]
  
  have ev : ∀ (k : ℕ) (_ : k ≤ 2) (m : Fin k → E3),
      Tendsto (fun n => iteratedFDeriv ℝ k (f n) (τ x₀) m) atTop
        (𝓝 (iteratedFDeriv ℝ k F (τ x₀) m)) :=
    fun k hk m => ((continuous_eval_const m).tendsto _).comp (hconv k hk)
  have c0 : Tendsto (fun n => f n (τ x₀)) atTop (𝓝 (F (τ x₀))) := by
    have := ev 0 (by norm_num) (fun i => i.elim0)
    simpa only [iteratedFDeriv_zero_apply] using this
  have c1 : ∀ a : E3, Tendsto (fun n => fderiv ℝ (f n) (τ x₀) a) atTop
      (𝓝 (fderiv ℝ F (τ x₀) a)) := by
    intro a
    have := ev 1 (by norm_num) ![a]
    simpa only [iteratedFDeriv_one_apply, Matrix.cons_val_zero] using this
  have c2 : ∀ a b : E3, Tendsto (fun n => fderiv ℝ (fderiv ℝ (f n)) (τ x₀) a b) atTop
      (𝓝 (fderiv ℝ (fderiv ℝ F) (τ x₀) a b)) := by
    intro a b
    have := ev 2 (by norm_num) ![a, b]
    simpa only [iteratedFDeriv_two_apply, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.head_cons] using this
  refine ⟨?_, ?_, ?_⟩
  · have e1 : (fun n => w n x₀) = fun n => f n (τ x₀) := funext fun n => hw n x₀ hx₀
    rw [e1, hwl x₀ hx₀]
    exact c0
  · intro i
    have e1 : (fun n => partialDeriv i (w n) x₀) =
        fun n => fderiv ℝ (f n) (τ x₀) (fderiv ℝ τ x₀ (e i)) :=
      funext fun n => first (f n) (hf n) (w n) (hw n) x₀ hx₀ i
    rw [e1, first F hF wl hwl x₀ hx₀ i]
    exact c1 _
  · intro i j
    have e1 : (fun n => partialDeriv i (partialDeriv j (w n)) x₀) = fun n =>
        fderiv ℝ (f n) (τ x₀) (fderiv ℝ (fun y => fderiv ℝ τ y (e j)) x₀ (e i)) +
          fderiv ℝ (fderiv ℝ (f n)) (τ x₀) (fderiv ℝ τ x₀ (e i)) (fderiv ℝ τ x₀ (e j)) :=
      funext fun n => second (f n) (hf n) (w n) j
        (fun y hy => first (f n) (hf n) (w n) (hw n) y hy j) i
    rw [e1, second F hF wl j (fun y hy => first F hF wl hwl y hy j) i]
    exact (c1 _).add (c2 _ _)

theorem neumann_local_interior [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (h : M → ℝ) (hh : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ h) (B : ℝ)
    (ρs : ℕ → ℝ) (hρs : ∀ n : ℕ, (n : ℝ) ≤ ρs n) (W : ℕ → M → ℝ)
    (hW : ∀ n : ℕ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (W n))
    (hlap : ∀ (n : ℕ) (p : M), 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρs n ≤ ‖y‖} →
      g.lapM (W n) p = h p)
    (hbd : ∀ (n : ℕ) (p : M), 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρs n < ‖y‖} →
      |W n p| ≤ B)
    (p : M) (hp : 0 < β p) :
    ∃ V : Set M, IsOpen V ∧ p ∈ V ∧ ∀ φ : ℕ → ℕ, StrictMono φ →
      ∃ (ψ : ℕ → ℕ) (G : M → ℝ), StrictMono ψ ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ G ∧
        ∀ q ∈ V, 0 ≤ β q →
          Tendsto (fun m => W (φ (ψ m)) q) atTop (𝓝 (G q)) ∧
          (∀ i : Fin 3, Tendsto (fun m => partialDeriv i
              (fun y => W (φ (ψ m)) ((chartAt E3 q).symm y)) (chartAt E3 q q)) atTop
            (𝓝 (partialDeriv i (fun y => G ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
          (∀ i j : Fin 3, Tendsto (fun m => partialDeriv i (partialDeriv j
              (fun y => W (φ (ψ m)) ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
            (𝓝 (partialDeriv i (partialDeriv j (fun y => G ((chartAt E3 q).symm y)))
              (chartAt E3 q q)))) :=
by
  classical
  have hβc : Continuous β := hβ.1.continuous
  
  obtain ⟨ρ, N, hN, hesc⟩ := end_chart_escape g hAF k p
  obtain ⟨N', hN'N, hN'o, hpN'⟩ := mem_nhds_iff.mp hN
  obtain ⟨n₀, hn₀⟩ := exists_nat_gt ρ
  obtain ⟨U, hUo, hpU, hUgood⟩ : ∃ U : Set M, IsOpen U ∧ p ∈ U ∧ ∀ x ∈ U, 0 < β x ∧
      ∀ n : ℕ, n₀ ≤ n → x ∉ (hAF.ends k).Φ '' {y : E3 | ρs n ≤ ‖y‖} ∧
        x ∉ (hAF.ends k).Φ '' {y : E3 | ρs n < ‖y‖} := by
    refine ⟨N' ∩ {x | 0 < β x}, hN'o.inter (isOpen_lt continuous_const hβc), ⟨hpN', hp⟩, ?_⟩
    intro x hx
    refine ⟨hx.2, fun n hn => ?_⟩
    have h1 : ρ < ρs n := by
      have : (n₀ : ℝ) ≤ n := by exact_mod_cast hn
      linarith [hρs n]
    have hxN : x ∈ N := hN'N hx.1
    constructor
    · rintro ⟨y, hy, hyx⟩
      have hy' : ρs n ≤ ‖y‖ := hy
      refine hesc y (lt_of_lt_of_le h1 hy') ?_
      rw [hyx]; exact hxN
    · rintro ⟨y, hy, hyx⟩
      have hy' : ρs n < ‖y‖ := hy
      refine hesc y (lt_trans h1 hy') ?_
      rw [hyx]; exact hxN
  
  have hΩo : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' U) :=
    (chartAt E3 p).continuousOn_symm.isOpen_inter_preimage (chartAt E3 p).open_target hUo
  have hy₀Ω : chartAt E3 p p ∈ (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' U := by
    refine ⟨mem_chart_target E3 p, ?_⟩
    show (chartAt E3 p).symm (chartAt E3 p p) ∈ U
    rw [(chartAt E3 p).left_inv (mem_chart_source E3 p)]
    exact hpU
  obtain ⟨R, hR, hball⟩ := Metric.isOpen_iff.mp hΩo _ hy₀Ω
  have hballT : Metric.ball (chartAt E3 p p) R ⊆ (chartAt E3 p).target := fun y hy => (hball hy).1
  have hballU : ∀ y ∈ Metric.ball (chartAt E3 p p) R, (chartAt E3 p).symm y ∈ U :=
    fun y hy => (hball hy).2
  
  obtain ⟨hda, hdb, hell, hdu⟩ := nli_chart_data g p
  
  have hCex : ∀ m : ℕ, ∃ C : ℝ, ∀ n : ℕ, n₀ ≤ n →
      ∀ y ∈ Metric.ball (chartAt E3 p p) (R / 2),
        ‖iteratedFDeriv ℝ m (fun z => W n ((chartAt E3 p).symm z)) y‖ ≤ C := by
    intro m
    obtain ⟨C, hC⟩ := nli_interior_bounds (chartAt E3 p p) R hR
      (fun y => (g.coeff (chartAt E3 p).symm y)⁻¹)
      (fun y l => -(∑ i : Fin 3, ∑ j : Fin 3,
        (g.coeff (chartAt E3 p).symm y)⁻¹ i j * christoffel (g.coeff (chartAt E3 p).symm) l i j y))
      (fun y => h ((chartAt E3 p).symm y))
      (fun i j => (hda i j).mono hballT) (fun l => (hdb l).mono hballT)
      ((hdu h hh).mono hballT) (fun y hy => hell y (hballT hy)) B m
    refine ⟨C, fun n hn y hy => hC _ ((hdu (W n) (hW n)).mono hballT) ?_ ?_ y hy⟩
    · intro z hz
      obtain ⟨hβz, hz'⟩ := hUgood _ (hballU z hz)
      exact hbd n _ (le_of_lt hβz) (hz' n hn).2
    · intro z hz
      obtain ⟨hβz, hz'⟩ := hUgood _ (hballU z hz)
      have e := nli_chart_lapM_eq g p (W n) (hW n) z (hballT hz)
      rw [hlap n _ (le_of_lt hβz) (hz' n hn).1] at e
      exact e.symm
  choose C hC using hCex
  
  have hVo : IsOpen ((chartAt E3 p).source ∩
      (chartAt E3 p) ⁻¹' Metric.ball (chartAt E3 p p) (R / 8)) :=
    (chartAt E3 p).continuousOn.isOpen_inter_preimage (chartAt E3 p).open_source Metric.isOpen_ball
  refine ⟨(chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Metric.ball (chartAt E3 p p) (R / 8), hVo,
    ⟨mem_chart_source E3 p, Metric.mem_ball_self (by linarith)⟩, ?_⟩
  intro φ hφ
  have hφge : ∀ j : ℕ, n₀ ≤ φ (j + n₀) := fun j =>
    le_trans (Nat.le_add_left n₀ j) (hφ.id_le (j + n₀))
  
  obtain ⟨f', Bd, hf'c, hf'b, hf'eq, hf'0⟩ := nli_cutoff_bounds (chartAt E3 p p) (R / 2) (R / 8)
    (R / 4) (by linarith) (by linarith) (by linarith)
    (fun j z => W (φ (j + n₀)) ((chartAt E3 p).symm z))
    (fun j => (hdu _ (hW _)).mono (fun y hy => hballT (Metric.ball_subset_ball (by linarith) hy)))
    C (fun j m y hy => hC m _ (hφge j) y hy)
  
  obtain ⟨ψ₀, F, hψ₀, hFc, hFconv0, hFconv⟩ := smooth_arzela_ascoli_family (ι := Unit)
    (fun j _ => f' j) Bd (fun j _ => hf'c j) (fun j _ n y => hf'b j n y)
  have hF0 : ∀ y, y ∉ Metric.closedBall (chartAt E3 p p) (R / 4) → F () y = 0 := by
    intro y hy
    have hy' : R / 4 ≤ dist y (chartAt E3 p p) := by
      rw [Metric.mem_closedBall, not_le] at hy
      exact le_of_lt hy
    have h1 : Tendsto (fun j => f' (ψ₀ j) y) atTop (𝓝 (F () y)) := hFconv0 () y
    have h2 : (fun j => f' (ψ₀ j) y) = fun _ => (0 : ℝ) := funext fun j => hf'0 _ y hy'
    rw [h2] at h1
    exact tendsto_nhds_unique h1 tendsto_const_nhds
  
  have hQt : Metric.closedBall (chartAt E3 p p) (R / 4) ⊆ (chartAt E3 p).target :=
    fun y hy => hballT (Metric.closedBall_subset_ball (by linarith) hy)
  obtain ⟨hGs, -⟩ := chart_extend_contMDiff p (F ()) (hFc ()) _ (isCompact_closedBall _ _) hQt hF0
  refine ⟨fun m => ψ₀ m + n₀, (chartAt E3 p).source.indicator (fun x => F () (chartAt E3 p x)),
    hψ₀.add_const n₀, hGs, ?_⟩
  intro q hq _
  
  have hOo : IsOpen ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹'
      ((chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Metric.ball (chartAt E3 p p) (R / 8))) :=
    (chartAt E3 q).continuousOn_symm.isOpen_inter_preimage (chartAt E3 q).open_target hVo
  have hlq : (chartAt E3 q).symm (chartAt E3 q q) = q :=
    (chartAt E3 q).left_inv (mem_chart_source E3 q)
  have hx₀ : chartAt E3 q q ∈ (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹'
      ((chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Metric.ball (chartAt E3 p p) (R / 8)) := by
    refine ⟨mem_chart_target E3 q, ?_⟩
    rw [Set.mem_preimage, hlq]
    exact hq
  have hτ : ContDiffOn ℝ ∞ (fun y => chartAt E3 p ((chartAt E3 q).symm y))
      ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹'
        ((chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Metric.ball (chartAt E3 p p) (R / 8))) := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ ((chartAt E3 p) ∘ (chartAt E3 q).symm)
        ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹'
          ((chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Metric.ball (chartAt E3 p p) (R / 8))) :=
      (contMDiffOn_chart (x := p)).comp ((contMDiffOn_chart_symm (x := q)).mono
        (fun y hy => hy.1)) (fun y hy => hy.2.1)
    exact contMDiffOn_iff_contDiffOn.mp h1
  obtain ⟨j0, j1, j2⟩ := nli_jet2_comp (fun y => chartAt E3 p ((chartAt E3 q).symm y)) _ hOo
    (chartAt E3 q q) hx₀ hτ (fun m => f' (ψ₀ m)) (F ()) (fun m => hf'c _) (hFc ())
    (fun j _ => hFconv () j _)
    (fun m y => W (φ (ψ₀ m + n₀)) ((chartAt E3 q).symm y))
    (fun y => (chartAt E3 p).source.indicator (fun x => F () (chartAt E3 p x))
      ((chartAt E3 q).symm y))
    (by
      intro m y hy
      have hx : (chartAt E3 q).symm y ∈ (chartAt E3 p).source := hy.2.1
      have hb : chartAt E3 p ((chartAt E3 q).symm y) ∈ Metric.ball (chartAt E3 p p) (R / 8) :=
        hy.2.2
      have e : f' (ψ₀ m) (chartAt E3 p ((chartAt E3 q).symm y)) =
          W (φ (ψ₀ m + n₀)) ((chartAt E3 p).symm (chartAt E3 p ((chartAt E3 q).symm y))) :=
        hf'eq (ψ₀ m) _ hb
      rw [(chartAt E3 p).left_inv hx] at e
      exact e.symm)
    (by
      intro y hy
      have hx : (chartAt E3 q).symm y ∈ (chartAt E3 p).source := hy.2.1
      exact Set.indicator_of_mem hx _)
  refine ⟨?_, j1, j2⟩
  have j0' : Tendsto (fun m => W (φ (ψ₀ m + n₀)) ((chartAt E3 q).symm (chartAt E3 q q))) atTop
      (𝓝 ((chartAt E3 p).source.indicator (fun x => F () (chartAt E3 p x))
        ((chartAt E3 q).symm (chartAt E3 q q)))) := j0
  rw [hlq] at j0'
  exact j0'

theorem gradInner_flat_chart [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (u w : M → ℝ)
    (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u) (hw : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w)
    (z : E3) (hz : z ∈ Ψ.source) :
    g.gradInner u w (Ψ z) = ∑ i : Fin 3, ∑ j : Fin 3,
      (g.coeff Ψ z)⁻¹ i j * partialDeriv i (fun y => u (Ψ y)) z * partialDeriv j (fun y => w (Ψ y)) z :=
by
  
  have hbasis : ∀ v : E3, v = ∑ d : Fin 3, v d • e d := by
    intro v
    conv_lhs => rw [← (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v]
    simp [EuclideanSpace.basisFun_apply]
  have hcomp_e : ∀ v : Fin 3 → ℝ, ∀ a : Fin 3, (∑ i : Fin 3, v i • e i) a = v a := by
    intro v a
    simp [Pi.single_apply]
  have hcompo : ∀ (ψ : E3 → E3) (y : E3), DifferentiableAt ℝ ψ y → ∀ l d : Fin 3,
      partialDeriv l (fun v => ψ v d) y = (fderiv ℝ ψ y (e l)) d := by
    intro ψ y hψ l d
    have hfun : (fun v => ψ v d) = (EuclideanSpace.proj d : E3 →L[ℝ] ℝ) ∘ ψ := by
      funext v; simp
    rw [partialDeriv, hfun, fderiv_comp y (EuclideanSpace.proj d).differentiableAt hψ,
      ContinuousLinearMap.fderiv]
    simp
  have pd_comp : ∀ (F : E3 → ℝ) (ψ : E3 → E3) (y : E3), DifferentiableAt ℝ ψ y →
      DifferentiableAt ℝ F (ψ y) → ∀ l : Fin 3,
      partialDeriv l (fun v => F (ψ v)) y
        = ∑ d : Fin 3, partialDeriv d F (ψ y) * partialDeriv l (fun v => ψ v d) y := by
    intro F ψ y hψ hF l
    have h1 : partialDeriv l (fun v => F (ψ v)) y = fderiv ℝ F (ψ y) (fderiv ℝ ψ y (e l)) := by
      show fderiv ℝ (F ∘ ψ) y (e l) = _
      rw [fderiv_comp y hF hψ]
      rfl
    rw [h1, hbasis (fderiv ℝ ψ y (e l)), map_sum]
    simp only [map_smul, smul_eq_mul, hcompo ψ y hψ]
    apply Finset.sum_congr rfl
    intro d _
    rw [mul_comm]
    rfl
  
  have grad_alg : ∀ (A Gm Gt : Matrix (Fin 3) (Fin 3) ℝ) (P Pt Q Qt : Fin 3 → ℝ), A.det ≠ 0 →
      (∀ i j, Gt i j = ∑ a : Fin 3, ∑ b : Fin 3, A a i * Gm a b * A b j) →
      (∀ i, Pt i = ∑ a : Fin 3, P a * A a i) →
      (∀ i, Qt i = ∑ a : Fin 3, Q a * A a i) →
      ∑ i : Fin 3, ∑ j : Fin 3, Gt⁻¹ i j * Pt i * Qt j =
          ∑ i : Fin 3, ∑ j : Fin 3, Gm⁻¹ i j * P i * Q j := by
    intro A Gm Gt P Pt Q Qt hA hGt hPt hQt
    have hAu : IsUnit A.det := isUnit_iff_ne_zero.mpr hA
    have hGt' : Gt = Matrix.transpose A * Gm * A := by
      ext i j
      rw [hGt]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
    have hAB : A * A⁻¹ = 1 := Matrix.mul_nonsing_inv A hAu
    have hGtinv : Gt⁻¹ = A⁻¹ * Gm⁻¹ * Matrix.transpose A⁻¹ := by
      rw [hGt', Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.transpose_nonsing_inv]
      exact (mul_assoc _ _ _).symm
    have hM : A * Gt⁻¹ * Matrix.transpose A = Gm⁻¹ := by
      rw [hGtinv]
      calc A * (A⁻¹ * Gm⁻¹ * Matrix.transpose A⁻¹) * Matrix.transpose A
          = (A * A⁻¹) * Gm⁻¹ * (Matrix.transpose A⁻¹ * Matrix.transpose A) := by
            simp only [Matrix.mul_assoc]
        _ = Gm⁻¹ := by
            rw [hAB, ← Matrix.transpose_mul, hAB, Matrix.transpose_one, Matrix.one_mul,
              Matrix.mul_one]
    have hM' : ∀ a b, ∑ i : Fin 3, ∑ j : Fin 3, A a i * Gt⁻¹ i j * A b j = Gm⁻¹ a b := by
      intro a b
      rw [← hM]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
    simp only [hPt, hQt, ← hM']
    simp only [Fin.sum_univ_three]
    ring
  
  have h2 : IsOpen (Ψ.source ∩ Ψ ⁻¹' (chartAt E3 (Ψ z)).source) ∧
      ContDiffOn ℝ ∞ (fun y => chartAt E3 (Ψ z) (Ψ y))
        (Ψ.source ∩ Ψ ⁻¹' (chartAt E3 (Ψ z)).source) := by
    have hΨ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Ψ Ψ.source := Ψ.contMDiffOn_toFun
    refine ⟨hΨ.continuousOn.isOpen_inter_preimage Ψ.open_source
      (chartAt E3 (Ψ z)).open_source, ?_⟩
    have hc : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 (Ψ z))
        (chartAt E3 (Ψ z)).source := contMDiffOn_chart
    have hcomp := hc.comp (hΨ.mono Set.inter_subset_left) (fun y hy => hy.2)
    exact contMDiffOn_iff_contDiffOn.mp hcomp
  have hzU : z ∈ Ψ.source ∩ Ψ ⁻¹' (chartAt E3 (Ψ z)).source := ⟨hz, mem_chart_source E3 (Ψ z)⟩
  have hψd : ∀ y ∈ Ψ.source ∩ Ψ ⁻¹' (chartAt E3 (Ψ z)).source,
      DifferentiableAt ℝ (fun v => chartAt E3 (Ψ z) (Ψ v)) y := fun y hy =>
    (h2.2.contDiffAt (h2.1.mem_nhds hy)).differentiableAt (by simp)
  have hM1 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Ψ z =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z))).comp
          (fderiv ℝ (fun v => chartAt E3 (Ψ z) (Ψ v)) z) := by
    have hev : (Ψ : E3 → M) =ᶠ[𝓝 z]
        ((chartAt E3 (Ψ z)).symm ∘ (fun v => chartAt E3 (Ψ z) (Ψ v))) := by
      filter_upwards [h2.1.mem_nhds hzU] with v hv
      exact ((chartAt E3 (Ψ z)).left_inv hv.2).symm
    rw [hev.mfderiv_eq, mfderiv_comp z
      (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 (Ψ z))
        ((chartAt E3 (Ψ z)).map_source hzU.2)) (hψd z hzU).mdifferentiableAt, mfderiv_eq_fderiv]
  have hM1' : ∀ v : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Ψ z v =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z))
          (fderiv ℝ (fun y => chartAt E3 (Ψ z) (Ψ y)) z v) := by
    intro v
    rw [hM1]
    rfl
  
  have s1 : ∀ i j : Fin 3,
      g.coeff Ψ z i j = ∑ a : Fin 3, ∑ b : Fin 3,
        partialDeriv i (fun y => chartAt E3 (Ψ z) (Ψ y) a) z *
          g.coeff (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z)) a b *
            partialDeriv j (fun y => chartAt E3 (Ψ z) (Ψ y) b) z := by
    intro i j
    have hq : (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z)) = Ψ z :=
      (chartAt E3 (Ψ z)).left_inv hzU.2
    have hgq : g.g ((chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z))) = g.g (Ψ z) :=
      congrArg g.g hq
    obtain ⟨D, hD⟩ : ∃ D : E3 →L[ℝ] E3,
        D = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z)) :=
      ⟨_, rfl⟩
    have hΨD : ∀ v : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Ψ z v =
        D (fderiv ℝ (fun y => chartAt E3 (Ψ z) (Ψ y)) z v) := by
      intro v
      rw [hM1' v, hD]
      rfl
    have hcD : ∀ a b : Fin 3, g.coeff (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z)) a b
        = g.g (Ψ z) (D (e a)) (D (e b)) := by
      intro a b
      rw [← hgq, hD]
      rfl
    have hJ : ∀ k : Fin 3, fderiv ℝ (fun y => chartAt E3 (Ψ z) (Ψ y)) z (e k)
        = ∑ d : Fin 3, partialDeriv k (fun y => chartAt E3 (Ψ z) (Ψ y) d) z • e d := by
      intro k
      rw [hbasis (fderiv ℝ (fun y => chartAt E3 (Ψ z) (Ψ y)) z (e k))]
      simp only [hcompo _ z (hψd z hzU)]
    simp only [hcD]
    show g.g (Ψ z) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Ψ z (e i))
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Ψ z (e j)) = _
    rw [hΨD, hΨD, hJ i, hJ j]
    simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
      smul_eq_mul]
    simp only [Fin.sum_univ_three]
    ring
  
  have s3 : (Matrix.of fun a i : Fin 3 => partialDeriv i (fun y => chartAt E3 (Ψ z) (Ψ y) a) z).det
        ≠ 0 := by
    intro hdet
    obtain ⟨v, hv0, hJv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hdet
    have hloc := PartialDiffeomorph.isLocalDiffeomorphAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Ψ hz
    have hinj : ∀ x : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Ψ z x = 0 → x = 0 := by
      intro x hx0
      rw [← hloc.mfderivToContinuousLinearEquiv_coe (by simp)] at hx0
      exact (hloc.mfderivToContinuousLinearEquiv (by simp)).map_eq_zero_iff.mp hx0
    have hw0 : fderiv ℝ (fun y => chartAt E3 (Ψ z) (Ψ y)) z (∑ i : Fin 3, v i • e i) = 0 := by
      ext a
      rw [map_sum]
      simp only [map_smul]
      have := congrFun hJv a
      simp only [Matrix.mulVec, dotProduct, Matrix.of_apply, Pi.zero_apply,
        hcompo _ z (hψd z hzU)] at this
      simp only [WithLp.ofLp_sum, WithLp.ofLp_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul,
        WithLp.ofLp_zero, Pi.zero_apply]
      rw [← this]
      apply Finset.sum_congr rfl
      intro i _
      ring
    have h0 : (∑ i : Fin 3, v i • e i) = 0 := by
      apply hinj
      rw [hM1' _, hw0]
      exact ContinuousLinearMap.map_zero _
    apply hv0
    funext a
    rw [← hcomp_e v a, h0]
    rfl
  
  have hmapsW : chartAt E3 (Ψ z) (Ψ z) ∈ (chartAt E3 (Ψ z)).target :=
    (chartAt E3 (Ψ z)).map_source hzU.2
  have hchain : ∀ f : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f → ∀ i : Fin 3,
      partialDeriv i (fun y => f (Ψ y)) z = ∑ a : Fin 3,
        partialDeriv a (fun y => f ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z)) *
          (Matrix.of fun a i : Fin 3 =>
            partialDeriv i (fun y => chartAt E3 (Ψ z) (Ψ y) a) z) a i := by
    intro f hf i
    have hfW : ContDiffOn ℝ ∞ (fun y => f ((chartAt E3 (Ψ z)).symm y))
        (chartAt E3 (Ψ z)).target := by
      have : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (f ∘ (chartAt E3 (Ψ z)).symm)
          (chartAt E3 (Ψ z)).target :=
        hf.comp_contMDiffOn contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp this
    have hfd : DifferentiableAt ℝ (fun y => f ((chartAt E3 (Ψ z)).symm y))
        (chartAt E3 (Ψ z) (Ψ z)) :=
      (hfW.contDiffAt ((chartAt E3 (Ψ z)).open_target.mem_nhds hmapsW)).differentiableAt
        (by simp)
    have hequ : (fun y => f (Ψ y)) =ᶠ[𝓝 z]
        (fun y => f ((chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ y)))) := by
      filter_upwards [h2.1.mem_nhds hzU] with y hy
      show f (Ψ y) = f ((chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ y)))
      rw [(chartAt E3 (Ψ z)).left_inv hy.2]
    have e1 : partialDeriv i (fun y => f (Ψ y)) z = partialDeriv i
        (fun y => f ((chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ y)))) z := by
      show fderiv ℝ (fun y => f (Ψ y)) z (e i) = fderiv ℝ _ z (e i)
      rw [hequ.fderiv_eq]
    rw [e1, pd_comp (fun y => f ((chartAt E3 (Ψ z)).symm y)) (fun y => chartAt E3 (Ψ z) (Ψ y))
      z (hψd z hzU) hfd i]
    rfl
  have hL : g.gradInner u w (Ψ z) = ∑ i : Fin 3, ∑ j : Fin 3,
      (g.coeff (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z)))⁻¹ i j *
        partialDeriv i (fun y => u ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z)) *
        partialDeriv j (fun y => w ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z)) := rfl
  rw [hL]
  exact (grad_alg (Matrix.of fun a i : Fin 3 => partialDeriv i (fun y => chartAt E3 (Ψ z) (Ψ y) a) z)
    (g.coeff (chartAt E3 (Ψ z)).symm (chartAt E3 (Ψ z) (Ψ z))) (g.coeff Ψ z)
    (fun a => partialDeriv a (fun y => u ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z)))
    (fun i => partialDeriv i (fun y => u (Ψ y)) z)
    (fun a => partialDeriv a (fun y => w ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z)))
    (fun i => partialDeriv i (fun y => w (Ψ y)) z)
    s3 (fun i j => s1 i j) (hchain u hu) (hchain w hw)).symm

theorem conormal_tangential_system (r : ℝ) (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => A z i j) (Metric.ball (0 : E3) r))
    (hsymm : ∀ z ∈ Metric.ball (0 : E3) r, ∀ i j : Fin 3, A z i j = A z j i)
    (b : E3 → Fin 3 → ℝ) (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun z => b z l) (Metric.ball (0 : E3) r))
    (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f (Metric.ball (0 : E3) r))
    (v : E3 → ℝ) (hv : ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r))
    (heq : ∀ z ∈ Metric.ball (0 : E3) r, 0 < z 0 →
      ∑ i : Fin 3, ∑ j : Fin 3, A z i j * partialDeriv i (partialDeriv j v) z
        + ∑ l : Fin 3, b z l * partialDeriv l v z = f z)
    (hbc : ∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 → ∑ i : Fin 3, A z i 0 * partialDeriv i v z = 0)
    (L : List (Fin 3)) (hL : ∀ a ∈ L, a ≠ 0) (c : Fin 3 → E3 → ℝ)
    (hc : ∀ j z, c j z = ∑ i : Fin 3, partialDeriv i (fun y => A y i j) z - b z j)
    (w : E3 → ℝ) (hw : w = L.foldr partialDeriv v) (G : Fin 3 → E3 → ℝ)
    (hG : ∀ i z, G i z = ∑ j : Fin 3, (L.foldr partialDeriv (fun y => A y i j * partialDeriv j v y) z
      - A z i j * L.foldr partialDeriv (partialDeriv j v) z))
    (F : E3 → ℝ)
    (hF : ∀ z, F z = L.foldr partialDeriv f z + ∑ j : Fin 3,
      (L.foldr partialDeriv (fun y => c j y * partialDeriv j v y) z
        - c j z * L.foldr partialDeriv (partialDeriv j v) z)) :
    (∀ z ∈ Metric.ball (0 : E3) r, 0 < z 0 →
      ∑ i : Fin 3, partialDeriv i (fun y => ∑ j : Fin 3, A y i j * partialDeriv j w y + G i y) z
        = F z + ∑ j : Fin 3, c j z * partialDeriv j w z) ∧
    (∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 →
      ∑ j : Fin 3, A z 0 j * partialDeriv j w z + G 0 z = 0) :=
by
  classical
  have hU : IsOpen (Metric.ball (0 : E3) r) := Metric.isOpen_ball
  have hpd : ∀ (a : Fin 3) (g : E3 → ℝ) (y : E3), partialDeriv a g y = fderiv ℝ g y (e a) :=
    fun _ _ _ => rfl
  
  have iterPD : ∀ (h : E3 → ℝ), ContDiffOn ℝ ∞ h (Metric.ball (0 : E3) r) →
      ∀ M : List (Fin 3), ContDiffOn ℝ ∞ (M.foldr partialDeriv h) (Metric.ball (0 : E3) r) := by
    intro h hh M
    induction M with
    | nil => simpa using hh
    | cons a M ih =>
      rw [List.foldr_cons]
      have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (M.foldr partialDeriv h)) (Metric.ball (0 : E3) r) :=
        ((contDiffOn_infty_iff_fderiv_of_isOpen hU).mp ih).2
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (M.foldr partialDeriv h) y (e a)) _
      exact h1.clm_apply contDiffOn_const
  have hdiff : ∀ (h : E3 → ℝ), ContDiffOn ℝ ∞ h (Metric.ball (0 : E3) r) →
      ∀ y ∈ Metric.ball (0 : E3) r, DifferentiableAt ℝ h y := by
    intro h hh y hy
    exact (hh.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hy)
  
  have hloc : ∀ (V : Set E3), IsOpen V → ∀ (h₁ h₂ : E3 → ℝ), (∀ y ∈ V, h₁ y = h₂ y) →
      ∀ M : List (Fin 3), ∀ z ∈ V, M.foldr partialDeriv h₁ z = M.foldr partialDeriv h₂ z := by
    intro V hV h₁ h₂ hh M
    induction M with
    | nil => simpa using hh
    | cons a M ih =>
      intro z hz
      simp only [List.foldr_cons]
      have hev : M.foldr partialDeriv h₁ =ᶠ[𝓝 z] M.foldr partialDeriv h₂ :=
        Filter.eventually_of_mem (hV.mem_nhds hz) ih
      rw [hpd, hpd, hev.fderiv_eq]
  
  have hadd : ∀ (h₁ h₂ : E3 → ℝ), ContDiffOn ℝ ∞ h₁ (Metric.ball (0 : E3) r) →
      ContDiffOn ℝ ∞ h₂ (Metric.ball (0 : E3) r) →
      ∀ M : List (Fin 3), ∀ z ∈ Metric.ball (0 : E3) r,
        M.foldr partialDeriv (fun y => h₁ y + h₂ y) z =
          M.foldr partialDeriv h₁ z + M.foldr partialDeriv h₂ z := by
    intro h₁ h₂ hh₁ hh₂ M
    induction M with
    | nil => intro z hz; rfl
    | cons a M ih =>
      intro z hz
      simp only [List.foldr_cons]
      have hev : M.foldr partialDeriv (fun y => h₁ y + h₂ y) =ᶠ[𝓝 z]
          fun y => M.foldr partialDeriv h₁ y + M.foldr partialDeriv h₂ y :=
        Filter.eventually_of_mem (hU.mem_nhds hz) ih
      simp only [hpd]
      rw [hev.fderiv_eq, fderiv_fun_add (hdiff _ (iterPD _ hh₁ M) z hz)
        (hdiff _ (iterPD _ hh₂ M) z hz)]
      rfl
  have hsum : ∀ (h : Fin 3 → E3 → ℝ), (∀ t, ContDiffOn ℝ ∞ (h t) (Metric.ball (0 : E3) r)) →
      ∀ M : List (Fin 3), ∀ z ∈ Metric.ball (0 : E3) r,
        M.foldr partialDeriv (fun y => ∑ t : Fin 3, h t y) z =
          ∑ t : Fin 3, M.foldr partialDeriv (h t) z := by
    intro h hh M
    induction M with
    | nil => intro z hz; rfl
    | cons a M ih =>
      intro z hz
      simp only [List.foldr_cons]
      have hev : M.foldr partialDeriv (fun y => ∑ t : Fin 3, h t y) =ᶠ[𝓝 z]
          fun y => ∑ t : Fin 3, M.foldr partialDeriv (h t) y :=
        Filter.eventually_of_mem (hU.mem_nhds hz) ih
      simp only [hpd]
      rw [hev.fderiv_eq, fderiv_fun_sum (fun t _ => hdiff _ (iterPD _ (hh t) M) z hz),
        ContinuousLinearMap.sum_apply]
  
  have hschwarz : ∀ (g : E3 → ℝ), ContDiffOn ℝ ∞ g (Metric.ball (0 : E3) r) →
      ∀ z ∈ Metric.ball (0 : E3) r, ∀ a j : Fin 3,
        partialDeriv a (partialDeriv j g) z = partialDeriv j (partialDeriv a g) z := by
    intro g hg z hz a j
    have hgz : ContDiffAt ℝ ∞ g z := hg.contDiffAt (hU.mem_nhds hz)
    have hfd' : ContDiffOn ℝ ∞ (fderiv ℝ g) (Metric.ball (0 : E3) r) :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hU).mp hg).2
    have hfd : DifferentiableAt ℝ (fderiv ℝ g) z :=
      (hfd'.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hz)
    have key : ∀ (k : Fin 3) (x : E3),
        fderiv ℝ (partialDeriv k g) z x = fderiv ℝ (fderiv ℝ g) z x (e k) := by
      intro k x
      have hk : partialDeriv k g = fun y => fderiv ℝ g y (e k) := rfl
      rw [hk, fderiv_clm_apply hfd (differentiableAt_const _)]
      simp
    have hsym := hgz.isSymmSndFDerivAt (by
      rw [minSmoothness_of_isRCLikeNormedField]
      first
        | exact_mod_cast (le_top : ((2 : ℕ∞)) ≤ ⊤)
        | exact WithTop.coe_le_coe.mpr le_top
        | simp)
    rw [hpd, hpd, key, key]
    exact hsym _ _
  
  have hcomm : ∀ (h : E3 → ℝ), ContDiffOn ℝ ∞ h (Metric.ball (0 : E3) r) →
      ∀ (j : Fin 3) (M : List (Fin 3)), ∀ z ∈ Metric.ball (0 : E3) r,
        M.foldr partialDeriv (partialDeriv j h) z = partialDeriv j (M.foldr partialDeriv h) z := by
    intro h hh j M
    induction M with
    | nil => intro z hz; rfl
    | cons a M ih =>
      intro z hz
      simp only [List.foldr_cons]
      have hev : M.foldr partialDeriv (partialDeriv j h) =ᶠ[𝓝 z]
          partialDeriv j (M.foldr partialDeriv h) :=
        Filter.eventually_of_mem (hU.mem_nhds hz) ih
      rw [hpd a (M.foldr partialDeriv (partialDeriv j h)), hev.fderiv_eq, ← hpd]
      exact hschwarz _ (iterPD h hh M) z hz a j
  
  have htan : ∀ (ψ : E3 → ℝ), ContDiffOn ℝ ∞ ψ (Metric.ball (0 : E3) r) →
      (∀ y ∈ Metric.ball (0 : E3) r, y 0 = 0 → ψ y = 0) →
      ∀ M : List (Fin 3), (∀ a ∈ M, a ≠ 0) →
        ∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 → M.foldr partialDeriv ψ z = 0 := by
    intro ψ hψ hψ0 M
    induction M with
    | nil => intro _ z hz hz0; exact hψ0 z hz hz0
    | cons a M ih =>
      intro hM z hz hz0
      have ha : a ≠ 0 := hM a (List.mem_cons_self ..)
      have hM' : ∀ b ∈ M, b ≠ 0 := fun b hb => hM b (List.mem_cons_of_mem a hb)
      have ih' := ih hM'
      simp only [List.foldr_cons]
      have hgd : DifferentiableAt ℝ (M.foldr partialDeriv ψ) z := hdiff _ (iterPD ψ hψ M) z hz
      let γ : ℝ → E3 := fun t => z + t • e a
      have hγ0 : γ 0 = z := by simp [γ]
      have hγc : Continuous γ := by fun_prop
      have hγ : HasDerivAt γ (e a) 0 := by
        have h0 := ((hasDerivAt_id (0 : ℝ)).smul_const (e a)).const_add z
        simpa [γ] using h0
      have hcoord : ∀ t, (γ t) 0 = 0 := by
        intro t
        simp [γ, hz0, EuclideanSpace.single_apply, Ne.symm ha]
      have hnhds : γ ⁻¹' (Metric.ball (0 : E3) r) ∈ 𝓝 (0 : ℝ) :=
        hγc.continuousAt.preimage_mem_nhds (by rw [hγ0]; exact hU.mem_nhds hz)
      have hev : ((M.foldr partialDeriv ψ) ∘ γ) =ᶠ[𝓝 (0 : ℝ)] fun _ => (0 : ℝ) := by
        filter_upwards [hnhds] with t ht
        exact ih' (γ t) ht (hcoord t)
      have h1 : HasDerivAt ((M.foldr partialDeriv ψ) ∘ γ) 0 0 :=
        (hasDerivAt_const (0 : ℝ) (0 : ℝ)).congr_of_eventuallyEq hev
      have h2 : HasDerivAt ((M.foldr partialDeriv ψ) ∘ γ)
          (fderiv ℝ (M.foldr partialDeriv ψ) z (e a)) 0 := by
        have hg' : HasFDerivAt (M.foldr partialDeriv ψ) (fderiv ℝ (M.foldr partialDeriv ψ) z)
            (γ 0) := by rw [hγ0]; exact hgd.hasFDerivAt
        exact hg'.comp_hasDerivAt (0 : ℝ) hγ
      rw [hpd]
      exact h2.unique h1
  
  have hleib : ∀ (p q : Fin 3 → E3 → ℝ) (y : E3), (∀ j, DifferentiableAt ℝ (p j) y) →
      (∀ j, DifferentiableAt ℝ (q j) y) → ∀ i : Fin 3,
        partialDeriv i (fun x => ∑ j : Fin 3, p j x * q j x) y =
          ∑ j : Fin 3, (partialDeriv i (p j) y * q j y + p j y * partialDeriv i (q j) y) := by
    intro p q y hp hq i
    simp only [hpd]
    have hpq : ∀ j ∈ (Finset.univ : Finset (Fin 3)),
        DifferentiableAt ℝ (fun x => p j x * q j x) y := fun j _ => by
      have := (hp j).mul (hq j)
      exact this
    rw [fderiv_fun_sum hpq, ContinuousLinearMap.sum_apply]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [fderiv_fun_mul (hp j) (hq j)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  
  subst hw
  have hDv : ∀ j, ContDiffOn ℝ ∞ (partialDeriv j v) (Metric.ball (0 : E3) r) :=
    fun j => iterPD v hv [j]
  have hAD : ∀ i j, ContDiffOn ℝ ∞ (fun y => A y i j * partialDeriv j v y)
      (Metric.ball (0 : E3) r) := fun i j => (hA i j).mul (hDv j)
  have hΦ : ∀ i, ContDiffOn ℝ ∞ (fun y => ∑ j : Fin 3, A y i j * partialDeriv j v y)
      (Metric.ball (0 : E3) r) := fun i => ContDiffOn.sum (fun j _ => hAD i j)
  have hcs : ∀ j, ContDiffOn ℝ ∞ (c j) (Metric.ball (0 : E3) r) := by
    intro j
    have hce : c j = fun z => ∑ i : Fin 3, partialDeriv i (fun y => A y i j) z - b z j :=
      funext (hc j)
    rw [hce]
    exact ContDiffOn.sub (ContDiffOn.sum (fun i _ => iterPD (fun y => A y i j) (hA i j) [i])) (hb j)
  have hcD : ∀ j, ContDiffOn ℝ ∞ (fun y => c j y * partialDeriv j v y)
      (Metric.ball (0 : E3) r) := fun j => (hcs j).mul (hDv j)
  
  have hflux : ∀ y ∈ Metric.ball (0 : E3) r, ∀ i,
      ∑ j : Fin 3, A y i j * partialDeriv j (L.foldr partialDeriv v) y + G i y
        = L.foldr partialDeriv (fun x => ∑ j : Fin 3, A x i j * partialDeriv j v x) y := by
    intro y hy i
    rw [hG i y, hsum (fun j x => A x i j * partialDeriv j v x) (fun j => hAD i j) L y hy,
      ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [hcomm v hv j L y hy]
    ring
  refine ⟨?_, ?_⟩
  · intro z hz hz0
    have hH : IsOpen {y : E3 | y ∈ Metric.ball (0 : E3) r ∧ 0 < y 0} :=
      hU.inter (isOpen_lt continuous_const
        (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
    have hzH : z ∈ {y : E3 | y ∈ Metric.ball (0 : E3) r ∧ 0 < y 0} := ⟨hz, hz0⟩
    have hdivH : ∀ y ∈ {y : E3 | y ∈ Metric.ball (0 : E3) r ∧ 0 < y 0},
        ∑ i : Fin 3, partialDeriv i (fun x' => ∑ j : Fin 3, A x' i j * partialDeriv j v x') y =
          f y + ∑ j : Fin 3, c j y * partialDeriv j v y := by
      rintro y ⟨hyU, hy0⟩
      have hl : ∀ i, partialDeriv i (fun x' => ∑ j : Fin 3, A x' i j * partialDeriv j v x') y =
          ∑ j : Fin 3, (partialDeriv i (fun x => A x i j) y * partialDeriv j v y
            + A y i j * partialDeriv i (partialDeriv j v) y) :=
        fun i => hleib (fun j x => A x i j) (fun j => partialDeriv j v) y
          (fun j => hdiff _ (hA i j) y hyU) (fun j => hdiff _ (hDv j) y hyU) i
      have he := heq y hyU hy0
      simp only [hl, hc]
      simp only [Fin.sum_univ_three] at he ⊢
      linear_combination he
    have hI1 : ∀ i, partialDeriv i
        (fun y => ∑ j : Fin 3, A y i j * partialDeriv j (L.foldr partialDeriv v) y + G i y) z
          = partialDeriv i (L.foldr partialDeriv
              (fun x => ∑ j : Fin 3, A x i j * partialDeriv j v x)) z :=
      fun i => hloc _ hU
        (fun y => ∑ j : Fin 3, A y i j * partialDeriv j (L.foldr partialDeriv v) y + G i y)
        (L.foldr partialDeriv (fun x => ∑ j : Fin 3, A x i j * partialDeriv j v x))
        (fun y hy => hflux y hy i) [i] z hz
    have hI2 : ∀ i, partialDeriv i (L.foldr partialDeriv
        (fun x => ∑ j : Fin 3, A x i j * partialDeriv j v x)) z
          = L.foldr partialDeriv
              (partialDeriv i (fun x => ∑ j : Fin 3, A x i j * partialDeriv j v x)) z :=
      fun i => (hcomm _ (hΦ i) i L z hz).symm
    have hI3 := hsum (fun i => partialDeriv i (fun x => ∑ j : Fin 3, A x i j * partialDeriv j v x))
      (fun i => iterPD _ (hΦ i) [i]) L z hz
    have hI5 := hloc _ hH
      (fun y => ∑ i : Fin 3, partialDeriv i
        (fun x' => ∑ j : Fin 3, A x' i j * partialDeriv j v x') y)
      (fun y => f y + ∑ j : Fin 3, c j y * partialDeriv j v y) hdivH L z hzH
    have hI6 := hadd f (fun x => ∑ j : Fin 3, c j x * partialDeriv j v x) hf
      (ContDiffOn.sum (fun j _ => hcD j)) L z hz
    have hI6' := hsum (fun j x => c j x * partialDeriv j v x) hcD L z hz
    simp only [hI1, hI2]
    rw [← hI3, hI5, hI6, hI6', hF z, add_assoc, ← Finset.sum_add_distrib]
    congr 1
    refine Finset.sum_congr rfl (fun j _ => ?_)
    rw [hcomm v hv j L z hz]
    ring
  · intro z hz hz0
    rw [hflux z hz 0]
    refine htan _ (hΦ 0) ?_ L hL z hz hz0
    intro y hy hy0
    show ∑ j : Fin 3, A y 0 j * partialDeriv j v y = 0
    refine Eq.trans (Finset.sum_congr rfl (fun j _ => ?_)) (hbc y hy hy0)
    rw [hsymm y hy 0 j]

theorem commutator_halfball_L2 (r ρ : ℝ) (hρr : ρ < r) (a : E3 → ℝ)
    (ha : ContDiffOn ℝ ∞ a (Metric.ball (0 : E3) r)) (L : List (Fin 3)) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ g : E3 → ℝ, ContDiffOn ℝ ∞ g (Metric.ball (0 : E3) r) →
      ∀ Bd : ℝ, 0 ≤ Bd →
      (∀ M : List (Fin 3), M.length < L.length →
        ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (M.foldr partialDeriv g z) ^ 2 ≤ Bd) →
      ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
        (L.foldr partialDeriv (fun y => a y * g y) z - a z * L.foldr partialDeriv g z) ^ 2
          ≤ K * Bd :=
by
  classical
  have hball : IsOpen (Metric.ball (0 : E3) r) := Metric.isOpen_ball
  have iterPD : ∀ (v : E3 → ℝ), ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
      ∀ L : List (Fin 3), ContDiffOn ℝ ∞ (L.foldr partialDeriv v) (Metric.ball (0 : E3) r) := by
    intro v hv L
    induction L with
    | nil => simpa using hv
    | cons a L ih =>
      rw [List.foldr_cons]
      have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (L.foldr partialDeriv v)) (Metric.ball (0 : E3) r) :=
        ((contDiffOn_infty_iff_fderiv_of_isOpen hball).mp ih).2
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (L.foldr partialDeriv v) y (e a)) _
      exact h1.clm_apply contDiffOn_const
  
  have family : ∀ L : List (Fin 3), ∃ (ι : Type) (_ : Fintype ι) (α : ι → E3 → ℝ)
      (M : ι → List (Fin 3)), (∀ t, ContDiffOn ℝ ∞ (α t) (Metric.ball (0 : E3) r)) ∧
      (∀ t, (M t).length < L.length) ∧
      ∀ g : E3 → ℝ, ContDiffOn ℝ ∞ g (Metric.ball (0 : E3) r) →
        ∀ z ∈ Metric.ball (0 : E3) r,
          L.foldr partialDeriv (fun y => a y * g y) z =
            a z * L.foldr partialDeriv g z + ∑ t, α t z * (M t).foldr partialDeriv g z := by
    intro L
    induction L with
    | nil =>
      refine ⟨Empty, inferInstance, Empty.elim, Empty.elim, fun t => t.elim, fun t => t.elim, ?_⟩
      intro g hg z hz
      simp
    | cons b L ih =>
      obtain ⟨ι, _, α, M, hα, hM, hid⟩ := ih
      refine ⟨Option (ι ⊕ ι), inferInstance,
        fun o => Option.elim o (partialDeriv b a) (Sum.elim (fun t => partialDeriv b (α t)) α),
        fun o => Option.elim o L (Sum.elim M (fun t => b :: M t)), ?_, ?_, ?_⟩
      · rintro (_ | (t | t))
        · exact iterPD a ha [b]
        · exact iterPD (α t) (hα t) [b]
        · exact hα t
      · rintro (_ | (t | t))
        · simp
        · have := hM t
          simp only [Option.elim, Sum.elim_inl, List.length_cons]
          omega
        · have := hM t
          simp only [Option.elim, Sum.elim_inr, List.length_cons]
          omega
      · intro g hg z hz
        have hd : ∀ v : E3 → ℝ, ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
            DifferentiableAt ℝ v z := fun v hv =>
          (hv.differentiableOn (by simp)).differentiableAt (hball.mem_nhds hz)
        have hev : L.foldr partialDeriv (fun y => a y * g y) =ᶠ[𝓝 z]
            fun y => a y * L.foldr partialDeriv g y + ∑ t, α t y * (M t).foldr partialDeriv g y := by
          filter_upwards [hball.mem_nhds hz] with y hy
          exact hid g hg y hy
        have h1 : HasFDerivAt
            (fun y => a y * L.foldr partialDeriv g y + ∑ t, α t y * (M t).foldr partialDeriv g y)
            (a z • fderiv ℝ (L.foldr partialDeriv g) z + (L.foldr partialDeriv g z) • fderiv ℝ a z +
              ∑ t, (α t z • fderiv ℝ ((M t).foldr partialDeriv g) z +
                ((M t).foldr partialDeriv g z) • fderiv ℝ (α t) z)) z := by
          refine ((hd a ha).hasFDerivAt.mul (hd _ (iterPD g hg L)).hasFDerivAt).add ?_
          exact HasFDerivAt.fun_sum (fun t _ =>
            (hd _ (hα t)).hasFDerivAt.mul (hd _ (iterPD g hg (M t))).hasFDerivAt)
        rw [List.foldr_cons]
        show fderiv ℝ (L.foldr partialDeriv (fun y => a y * g y)) z (e b) = _
        rw [hev.fderiv_eq, h1.fderiv]
        simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.coe_sum',
          Finset.sum_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, Fintype.sum_option,
          Fintype.sum_sum_type, Option.elim, Sum.elim_inl, Sum.elim_inr, List.foldr_cons,
          partialDeriv]
        rw [Finset.sum_add_distrib]
        have hsc : ∑ x, (fderiv ℝ (α x) z) (e b) * List.foldr partialDeriv g (M x) z =
            ∑ x, List.foldr partialDeriv g (M x) z * (fderiv ℝ (α x) z) (e b) :=
          Finset.sum_congr rfl (fun x _ => mul_comm _ _)
        rw [hsc]
        ring
  
  obtain ⟨ι, _, α, M, hα, hM, hid⟩ := family L
  have hsubB : Metric.closedBall (0 : E3) ρ ⊆ Metric.ball 0 r := Metric.closedBall_subset_ball hρr
  have hφc : ContinuousOn (fun z => ∑ t, |α t z|) (Metric.closedBall (0 : E3) ρ) :=
    continuousOn_finset_sum _ (fun t _ => ((hα t).continuousOn.mono hsubB).abs)
  obtain ⟨C₀, hC₀⟩ := (isCompact_closedBall (0 : E3) ρ).exists_bound_of_continuousOn hφc
  have hαb : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ t, α t z ^ 2 ≤ (max C₀ 0) ^ 2 := by
    intro z hz t
    have h1 : |α t z| ≤ ∑ t', |α t' z| :=
      Finset.single_le_sum (f := fun t' => |α t' z|) (fun _ _ => abs_nonneg _)
        (Finset.mem_univ t)
    have h2 := hC₀ z hz
    rw [Real.norm_eq_abs] at h2
    have h3 : |α t z| ≤ max C₀ 0 :=
      le_trans h1 (le_trans (le_abs_self _) (le_trans h2 (le_max_left _ _)))
    rw [← sq_abs (α t z)]
    exact pow_le_pow_left₀ (abs_nonneg _) h3 2
  set C := max C₀ 0 with hCdef
  set n : ℕ := Fintype.card ι with hndef
  refine ⟨(n : ℝ) * C ^ 2 * n, by positivity, ?_⟩
  intro g hg Bd hBd hlow
  have hHopen : IsOpen {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} :=
    (isOpen_lt continuous_norm continuous_const).inter
      (isOpen_lt continuous_const (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hHsub : {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} ⊆ Metric.closedBall 0 ρ := by
    intro z hz
    rw [Metric.mem_closedBall, dist_zero_right]
    exact le_of_lt hz.1
  have hint : ∀ ψ : E3 → ℝ, ContinuousOn ψ (Metric.ball (0 : E3) r) →
      IntegrableOn ψ {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} := by
    intro ψ hψ
    exact ((hψ.mono hsubB).integrableOn_compact (isCompact_closedBall 0 ρ)).mono_set hHsub
  have hhc : ∀ t, ContinuousOn ((M t).foldr partialDeriv g) (Metric.ball (0 : E3) r) :=
    fun t => (iterPD g hg (M t)).continuousOn
  have hαc : ∀ t, ContinuousOn (α t) (Metric.ball (0 : E3) r) := fun t => (hα t).continuousOn
  have heqI : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
        (L.foldr partialDeriv (fun y => a y * g y) z - a z * L.foldr partialDeriv g z) ^ 2 =
      ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (∑ t, α t z * (M t).foldr partialDeriv g z) ^ 2 := by
    refine setIntegral_congr_fun hHopen.measurableSet (fun z hz => ?_)
    have hz' : z ∈ Metric.ball (0 : E3) r := hsubB (hHsub hz)
    rw [hid g hg z hz', add_sub_cancel_left]
  rw [heqI]
  have hc1 : ContinuousOn (fun z => (∑ t, α t z * (M t).foldr partialDeriv g z) ^ 2)
      (Metric.ball (0 : E3) r) :=
    (continuousOn_finset_sum _ (fun t _ => (hαc t).mul (hhc t))).pow 2
  have hc2 : ∀ t, ContinuousOn (fun z => ((M t).foldr partialDeriv g z) ^ 2)
      (Metric.ball (0 : E3) r) := fun t => (hhc t).pow 2
  have hc3 : ContinuousOn (fun z => (n : ℝ) * C ^ 2 * ∑ t, ((M t).foldr partialDeriv g z) ^ 2)
      (Metric.ball (0 : E3) r) :=
    continuousOn_const.mul (continuousOn_finset_sum _ (fun t _ => hc2 t))
  calc ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (∑ t, α t z * (M t).foldr partialDeriv g z) ^ 2
      ≤ ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
          (n : ℝ) * C ^ 2 * ∑ t, ((M t).foldr partialDeriv g z) ^ 2 := by
        refine setIntegral_mono_on (hint _ hc1) (hint _ hc3) hHopen.measurableSet
          (fun z hz => ?_)
        have hz' : z ∈ Metric.closedBall (0 : E3) ρ := hHsub hz
        have hcs := sq_sum_le_card_mul_sum_sq (s := (Finset.univ : Finset ι))
          (f := fun t => α t z * (M t).foldr partialDeriv g z)
        rw [Finset.card_univ, ← hndef] at hcs
        have h2 : ∑ t, (α t z * (M t).foldr partialDeriv g z) ^ 2 ≤
            ∑ t, C ^ 2 * ((M t).foldr partialDeriv g z) ^ 2 := by
          refine Finset.sum_le_sum (fun t _ => ?_)
          rw [mul_pow]
          exact mul_le_mul_of_nonneg_right (hαb z hz' t) (sq_nonneg _)
        rw [← Finset.mul_sum] at h2
        have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg _
        calc (∑ t, α t z * (M t).foldr partialDeriv g z) ^ 2
            ≤ (n : ℝ) * ∑ t, (α t z * (M t).foldr partialDeriv g z) ^ 2 := hcs
          _ ≤ (n : ℝ) * (C ^ 2 * ∑ t, ((M t).foldr partialDeriv g z) ^ 2) :=
              mul_le_mul_of_nonneg_left h2 hn0
          _ = (n : ℝ) * C ^ 2 * ∑ t, ((M t).foldr partialDeriv g z) ^ 2 := by ring
    _ = (n : ℝ) * C ^ 2 * ∑ t, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
          ((M t).foldr partialDeriv g z) ^ 2 := by
        rw [integral_const_mul, integral_finset_sum]
        intro t _
        exact hint _ (hc2 t)
    _ ≤ (n : ℝ) * C ^ 2 * ∑ _t : ι, Bd := by
        refine mul_le_mul_of_nonneg_left (Finset.sum_le_sum (fun t _ => hlow (M t) (hM t)))
          (by positivity)
    _ = (n : ℝ) * C ^ 2 * n * Bd := by
        rw [Finset.sum_const, Finset.card_univ, ← hndef, nsmul_eq_mul]
        ring

theorem halfball_divergence_zero (r ρ₂ ρ : ℝ) (hρ₂r : ρ₂ < r) (hρ₂ρ : ρ₂ < ρ)
    (P : Fin 3 → E3 → ℝ) (hP : ∀ i, ContDiffOn ℝ ∞ (P i) (Metric.ball (0 : E3) r))
    (hsupp : ∀ i z, ρ₂ ≤ ‖z‖ → P i z = 0)
    (hface : ∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 → P 0 z = 0) :
    ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, ∑ i : Fin 3, partialDeriv i (P i) z = 0 :=
by
  
  have hloc : ∀ (i : Fin 3) (y : E3), ρ₂ < ‖y‖ → P i =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
    intro i y hy
    have hU : IsOpen {y : E3 | ρ₂ < ‖y‖} := isOpen_lt continuous_const continuous_norm
    exact Filter.eventually_of_mem (hU.mem_nhds hy) (fun z hz => hsupp i z (le_of_lt hz))
  have hCD : ∀ i, ContDiff ℝ ∞ (P i) := by
    intro i
    rw [contDiff_iff_contDiffAt]
    intro z
    by_cases hz : ‖z‖ < r
    · exact (hP i).contDiffAt (Metric.isOpen_ball.mem_nhds (mem_ball_zero_iff.mpr hz))
    · exact contDiffAt_const.congr_of_eventuallyEq (hloc i z (by linarith [not_lt.mp hz]))
  have hvan : ∀ (i : Fin 3) (y : E3), ρ₂ < ‖y‖ → partialDeriv i (P i) y = 0 := by
    intro i y hy
    unfold partialDeriv
    rw [(hloc i y hy).fderiv_eq, fderiv_const_apply]
    rfl
  have hD : ∀ i, Differentiable ℝ (P i) := fun i => (hCD i).differentiable (by simp)
  have hpc : ∀ i, Continuous (partialDeriv i (P i)) := fun i =>
    ((hCD i).continuous_fderiv (by simp)).clm_apply continuous_const
  have habs : ∀ (x : Fin 3 → ℝ) (i : Fin 3), |x i| ≤ ‖(WithLp.toLp 2 x : E3)‖ := by
    intro x i
    have h := PiLp.norm_apply_le (WithLp.toLp 2 x : E3) i
    rwa [PiLp.toLp_apply, Real.norm_eq_abs] at h
  set g : E3 → ℝ := fun z => ∑ i : Fin 3, partialDeriv i (P i) z with hgdef
  have hgc : Continuous g := continuous_finset_sum _ (fun i _ => hpc i)
  have hg0 : ∀ z : E3, ρ₂ < ‖z‖ → g z = 0 := fun z hz =>
    Finset.sum_eq_zero (fun i _ => hvan i z hz)
  
  rcases le_or_gt ρ 0 with hρ | hρ
  · have hE : {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} = ∅ := by
      ext z
      simp only [Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false, not_and]
      intro h
      linarith [norm_nonneg z]
    rw [hE, setIntegral_empty]
  
  set a : Fin 3 → ℝ := fun i => if i = 0 then 0 else -ρ with ha
  set b : Fin 3 → ℝ := fun _ => ρ with hb
  
  have hT : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, g z
      = ∫ x in Set.Icc a b, g (WithLp.toLp 2 x) := by
    have hemb : MeasurableEmbedding (WithLp.toLp 2 : (Fin 3 → ℝ) → E3) := by
      have h := (MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).measurableEmbedding
      rwa [MeasurableEquiv.coe_toLp] at h
    rw [← (PiLp.volume_preserving_toLp (Fin 3)).setIntegral_preimage_emb hemb g]
    have hae : (Set.univ.pi fun i => Set.Ioo (a i) (b i)) =ᵐ[volume] Set.Icc a b := by
      rw [volume_pi]
      exact Measure.univ_pi_Ioo_ae_eq_Icc
    rw [← setIntegral_congr_set hae]
    symm
    apply setIntegral_eq_of_subset_of_forall_diff_eq_zero
    · exact MeasurableSet.univ_pi (fun _ => measurableSet_Ioo)
    · intro x hx
      obtain ⟨h1, h2⟩ := hx
      rw [PiLp.toLp_apply] at h2
      rw [Set.mem_univ_pi]
      intro i
      have hi : |x i| < ρ := lt_of_le_of_lt (habs x i) h1
      rw [abs_lt] at hi
      by_cases h0 : i = 0
      · subst h0
        simp only [ha, hb, if_pos rfl, Set.mem_Ioo]
        exact ⟨h2, hi.2⟩
      · simp only [ha, hb, if_neg h0, Set.mem_Ioo]
        exact hi
    · intro x hx
      obtain ⟨hxO, hxS⟩ := hx
      rw [Set.mem_univ_pi] at hxO
      have h0 : 0 < x 0 := by
        have := (hxO 0).1
        simpa [ha] using this
      have hn : ρ ≤ ‖(WithLp.toLp 2 x : E3)‖ := by
        by_contra hc
        apply hxS
        refine ⟨lt_of_not_ge hc, ?_⟩
        show 0 < (WithLp.toLp 2 x : E3) 0
        rw [PiLp.toLp_apply]
        exact h0
      exact hg0 _ (lt_of_lt_of_le hρ₂ρ hn)
  
  let TL : (Fin 3 → ℝ) →L[ℝ] E3 :=
    ((PiLp.continuousLinearEquiv 2 ℝ (fun _ : Fin 3 => ℝ)).symm : (Fin 3 → ℝ) →L[ℝ] E3)
  have hTLapp : ∀ v : Fin 3 → ℝ, TL v = WithLp.toLp 2 v := fun v =>
    PiLp.continuousLinearEquiv_symm_apply 2 ℝ _ v
  have hTL : ∀ x : Fin 3 → ℝ, HasFDerivAt (fun y : Fin 3 → ℝ => (WithLp.toLp 2 y : E3)) TL x := by
    intro x
    have h := TL.hasFDerivAt (x := x)
    have hfun : (⇑TL) = fun y : Fin 3 → ℝ => (WithLp.toLp 2 y : E3) := funext hTLapp
    rwa [hfun] at h
  have hFd : ∀ x : Fin 3 → ℝ, HasFDerivAt (fun (y : Fin 3 → ℝ) (i : Fin 3) => P i (WithLp.toLp 2 y))
      (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL)) x := by
    intro x
    rw [hasFDerivAt_pi]
    intro i
    exact ((hD i) _).hasFDerivAt.comp x (hTL x)
  have hval : ∀ (x : Fin 3 → ℝ),
      ∑ i : Fin 3, (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
        (Pi.single i 1) i = g (WithLp.toLp 2 x) := by
    intro x
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [ContinuousLinearMap.pi_apply, ContinuousLinearMap.comp_apply, hTLapp,
      EuclideanSpace.toLp_single]
    rfl
  have hcont : Continuous fun x : Fin 3 → ℝ => g (WithLp.toLp 2 x) :=
    hgc.comp (PiLp.continuous_toLp 2 _)
  have hab : a ≤ b := by
    intro i
    simp only [ha, hb]
    split_ifs <;> linarith
  have hFc : ContinuousOn (fun (y : Fin 3 → ℝ) (i : Fin 3) => P i (WithLp.toLp 2 y)) (Set.Icc a b) :=
    (continuous_pi (fun i => (hD i).continuous.comp (PiLp.continuous_toLp 2 _))).continuousOn
  have hint : IntegrableOn (fun x : Fin 3 → ℝ => ∑ i : Fin 3,
      (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
        (Pi.single i 1) i) (Set.Icc a b) volume := by
    simp only [hval]
    exact hcont.integrableOn_Icc
  
  have hdiv := integral_divergence_of_hasFDerivAt_off_countable a b hab
    (fun (y : Fin 3 → ℝ) (i : Fin 3) => P i (WithLp.toLp 2 y))
    (fun x => ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
    ∅ Set.countable_empty hFc (fun x _ => hFd x) hint
  
  have hup : ∀ (i : Fin 3) (y : Fin 2 → ℝ), P i (WithLp.toLp 2 (i.insertNth (b i) y)) = 0 := by
    intro i y
    apply hsupp
    have h := habs (i.insertNth (b i) y) i
    rw [Fin.insertNth_apply_same] at h
    simp only [hb, abs_of_pos hρ] at h
    linarith
  have hlow : ∀ (i : Fin 3) (y : Fin 2 → ℝ), P i (WithLp.toLp 2 (i.insertNth (a i) y)) = 0 := by
    intro i y
    by_cases h0 : i = 0
    · subst h0
      have hx0 : (WithLp.toLp 2 ((0 : Fin 3).insertNth (a 0) y) : E3) 0 = 0 := by
        rw [PiLp.toLp_apply, Fin.insertNth_apply_same]
        simp [ha]
      by_cases hr : ‖(WithLp.toLp 2 ((0 : Fin 3).insertNth (a 0) y) : E3)‖ < r
      · exact hface _ (mem_ball_zero_iff.mpr hr) hx0
      · exact hsupp _ _ (by linarith [not_lt.mp hr])
    · have hai : a i = -ρ := by simp only [ha, if_neg h0]
      rw [hai]
      apply hsupp
      have h := habs (i.insertNth (-ρ) y) i
      rw [Fin.insertNth_apply_same, abs_neg, abs_of_pos hρ] at h
      linarith
  rw [hT]
  calc ∫ x in Set.Icc a b, g (WithLp.toLp 2 x)
      = ∫ x in Set.Icc a b, ∑ i : Fin 3,
          (ContinuousLinearMap.pi (fun i => (fderiv ℝ (P i) (WithLp.toLp 2 x)).comp TL))
            (Pi.single i 1) i :=
        setIntegral_congr_fun measurableSet_Icc (fun x _ => (hval x).symm)
    _ = 0 := by
        rw [hdiv]
        refine Finset.sum_eq_zero (fun i _ => ?_)
        rw [setIntegral_eq_zero_of_forall_eq_zero (fun y _ => hup i y),
          setIntegral_eq_zero_of_forall_eq_zero (fun y _ => hlow i y), sub_zero]

theorem conormal_halfball_caccioppoli (r ρ ρ' : ℝ) (hρ' : 0 < ρ') (hρρ' : ρ' < ρ) (hρr : ρ < r)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => A z i j) (Metric.ball (0 : E3) r))
    (c : Fin 3 → E3 → ℝ) (hc : ∀ j, ContinuousOn (c j) (Metric.ball (0 : E3) r))
    (lam Λ : ℝ) (hlam : 0 < lam)
    (hell : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ ξ : Fin 3 → ℝ,
      lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * A z i j * ξ j)
    (hΛA : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ i j : Fin 3, |A z i j| ≤ Λ)
    (hΛc : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ j : Fin 3, |c j z| ≤ Λ) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ (w : E3 → ℝ) (G : Fin 3 → E3 → ℝ) (F : E3 → ℝ),
      ContDiffOn ℝ ∞ w (Metric.ball (0 : E3) r) →
      (∀ i, ContDiffOn ℝ ∞ (G i) (Metric.ball (0 : E3) r)) →
      ContinuousOn F (Metric.ball (0 : E3) r) →
      (∀ z ∈ Metric.ball (0 : E3) r, 0 < z 0 →
        ∑ i : Fin 3, partialDeriv i (fun y => ∑ j : Fin 3, A y i j * partialDeriv j w y + G i y) z
          = F z + ∑ j : Fin 3, c j z * partialDeriv j w z) →
      (∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 →
        ∑ j : Fin 3, A z 0 j * partialDeriv j w z + G 0 z = 0) →
      ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, ∑ j : Fin 3, (partialDeriv j w z) ^ 2
        ≤ K * ((∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (w z) ^ 2)
          + ∑ i : Fin 3, (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (G i z) ^ 2)
          + (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (F z) ^ 2)) :=
by
  classical
  have caccioppoli_pointwise : ∀ (lam Λ Ke η w F : ℝ) (v de G c : Fin 3 → ℝ)
      (a : Fin 3 → Fin 3 → ℝ), 0 < lam → 0 ≤ η → η ≤ 1 →
      (∀ i, |de i| ≤ Ke) → (∀ i j, |a i j| ≤ Λ) → (∀ j, |c j| ≤ Λ) →
      (lam * ∑ i : Fin 3, v i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, v i * a i j * v j) →
      lam / 2 * (η ^ 2 * ∑ i : Fin 3, v i ^ 2) ≤
        ∑ i : Fin 3, (2 * η * de i * w * (∑ j : Fin 3, a i j * v j + G i)
          + η ^ 2 * v i * (∑ j : Fin 3, a i j * v j + G i))
        + η ^ 2 * w * (F + ∑ j : Fin 3, c j * v j)
        + (216 * Ke ^ 2 * Λ ^ 2 / lam + 6 * Λ ^ 2 / lam + 2 / lam + 3 * Ke ^ 2 + 1)
          * (w ^ 2 + ∑ i : Fin 3, G i ^ 2 + F ^ 2) := by
    intro lam Λ Ke η w F v de G c a hlam hη0 hη1 hde ha hc hell
    obtain ⟨t, ht⟩ : ∃ t : ℝ, t = lam⁻¹ := ⟨_, rfl⟩
    have hlt : lam * t = 1 := by rw [ht]; exact mul_inv_cancel₀ hlam.ne'
    have ht0 : 0 < t := by rw [ht]; exact inv_pos.mpr hlam
    have hKe : 0 ≤ Ke := le_trans (abs_nonneg _) (hde 0)
    have hΛ : 0 ≤ Λ := le_trans (abs_nonneg _) (hc 0)
    have Y : ∀ x p y P ε s : ℝ, 0 < ε → ε * s = 1 → |p| ≤ P →
        -(ε * x ^ 2) - s * P ^ 2 * y ^ 2 ≤ 2 * x * (p * y) := by
      intro x p y P ε s hε hεs hp
      have hs : 0 ≤ s := by
        by_contra hneg
        push_neg at hneg
        nlinarith
      have e : s * (ε * x + p * y) ^ 2 = ε * x ^ 2 + 2 * x * (p * y) + s * (p * y) ^ 2 := by
        linear_combination (ε * x ^ 2 + 2 * x * (p * y)) * hεs
      have h0 : 0 ≤ s * (ε * x + p * y) ^ 2 := mul_nonneg hs (sq_nonneg _)
      have hp2 : p ^ 2 ≤ P ^ 2 := sq_le_sq' (abs_le.mp hp).1 (abs_le.mp hp).2
      have h1 : s * (p * y) ^ 2 ≤ s * P ^ 2 * y ^ 2 := by
        rw [mul_pow, mul_assoc]
        exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hp2 (sq_nonneg y)) hs
      linarith
    have hε24 : lam / 24 * (24 * t) = 1 := by linear_combination hlt
    have hε4 : lam / 4 * (4 * t) = 1 := by linear_combination hlt
    have hpa : ∀ i j, |de i * a i j| ≤ Ke * Λ := fun i j => by
      rw [abs_mul]; exact mul_le_mul (hde i) (ha i j) (abs_nonneg _) hKe
    have hpb : ∀ i, |η * de i| ≤ Ke := fun i => by
      rw [abs_mul, abs_of_nonneg hη0]
      calc η * |de i| ≤ 1 * |de i| := mul_le_mul_of_nonneg_right hη1 (abs_nonneg _)
        _ ≤ Ke := by rw [one_mul]; exact hde i
    have hpc : |η| ≤ 1 := by rw [abs_of_nonneg hη0]; exact hη1
    have hpd : |η ^ 2| ≤ 1 := by
      rw [abs_of_nonneg (sq_nonneg η)]; nlinarith
    have hpe : ∀ j, |η * c j| ≤ Λ := fun j => by
      rw [abs_mul, abs_of_nonneg hη0]
      calc η * |c j| ≤ 1 * |c j| := mul_le_mul_of_nonneg_right hη1 (abs_nonneg _)
        _ ≤ Λ := by rw [one_mul]; exact hc j
    have fa := fun i j => Y (η * v j) (de i * a i j) w (Ke * Λ) (lam / 24) (24 * t)
      (by positivity) hε24 (hpa i j)
    have fb := fun i => Y (G i) (η * de i) w Ke 1 1 one_pos (by norm_num) (hpb i)
    have fc := fun i => Y (η * v i) η (G i) 1 (lam / 4) (4 * t) (by positivity) hε4 hpc
    have fd := Y w (η ^ 2) F 1 1 1 one_pos (by norm_num) hpd
    have fe := fun j => Y (η * v j) (η * c j) w Λ (lam / 4) (4 * t) (by positivity) hε4 (hpe j)
    have hQ := mul_le_mul_of_nonneg_left hell (sq_nonneg η)
    have hX : 0 ≤ lam * (η ^ 2 * ∑ i : Fin 3, v i ^ 2) := by positivity
    obtain ⟨K1, hK1⟩ : ∃ K1 : ℝ,
        K1 = 216 * Ke ^ 2 * Λ ^ 2 / lam + 6 * Λ ^ 2 / lam + 2 / lam + 3 * Ke ^ 2 + 1 :=
      ⟨_, rfl⟩
    rw [← hK1]
    have hK1' : K1 = 216 * Ke ^ 2 * Λ ^ 2 * t + 6 * Λ ^ 2 * t + 2 * t + 3 * Ke ^ 2 + 1 := by
      rw [hK1, ht]; simp only [div_eq_mul_inv]
    have kw : (216 * Ke ^ 2 * Λ ^ 2 * t + 6 * Λ ^ 2 * t + 3 * Ke ^ 2 + 1 / 2) * w ^ 2
        ≤ K1 * w ^ 2 :=
      mul_le_mul_of_nonneg_right (by rw [hK1']; linarith) (sq_nonneg w)
    have p1 : 0 ≤ Ke ^ 2 * Λ ^ 2 * t := by positivity
    have p2 : 0 ≤ Λ ^ 2 * t := by positivity
    have p3 : 0 ≤ Ke ^ 2 := by positivity
    have kF : (1 / 2) * F ^ 2 ≤ K1 * F ^ 2 := by
      apply mul_le_mul_of_nonneg_right _ (sq_nonneg F)
      rw [hK1']; linarith
    have kG : ∀ i, (1 + 2 * t) * G i ^ 2 ≤ K1 * G i ^ 2 := by
      intro i
      apply mul_le_mul_of_nonneg_right _ (sq_nonneg (G i))
      rw [hK1']; linarith
    have fa0 := fa 0; have fa1 := fa 1; have fa2 := fa 2
    have fb0 := fb 0; have fb1 := fb 1; have fb2 := fb 2
    have fc0 := fc 0; have fc1 := fc 1; have fc2 := fc 2
    have fe0 := fe 0; have fe1 := fe 1; have fe2 := fe 2
    have kG0 := kG 0; have kG1 := kG 1; have kG2 := kG 2
    have fa00 := fa0 0; have fa01 := fa0 1; have fa02 := fa0 2
    have fa10 := fa1 0; have fa11 := fa1 1; have fa12 := fa1 2
    have fa20 := fa2 0; have fa21 := fa2 1; have fa22 := fa2 2
    simp only [Fin.sum_univ_three] at hQ hX ⊢
    linarith
  have hball : IsOpen (Metric.ball (0 : E3) r) := Metric.isOpen_ball
  have pd : ∀ (v : E3 → ℝ), ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
      ∀ j : Fin 3, ContDiffOn ℝ ∞ (partialDeriv j v) (Metric.ball (0 : E3) r) := by
    intro v hv j
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ v) (Metric.ball (0 : E3) r) :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hball).mp hv).2
    show ContDiffOn ℝ ∞ (fun y => fderiv ℝ v y (e j)) _
    exact h1.clm_apply contDiffOn_const
  have hdiff : ∀ (v : E3 → ℝ), ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
      ∀ z ∈ Metric.ball (0 : E3) r, DifferentiableAt ℝ v z := by
    intro v hv z hz
    exact (hv.contDiffAt (hball.mem_nhds hz)).differentiableAt (by simp)
  have hHopen : ∀ s : ℝ, IsOpen {z : E3 | ‖z‖ < s ∧ 0 < z 0} := fun s =>
    (isOpen_lt continuous_norm continuous_const).inter
      (isOpen_lt continuous_const (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hHsub : ∀ s : ℝ, {z : E3 | ‖z‖ < s ∧ 0 < z 0} ⊆ Metric.closedBall 0 s := by
    intro s z hz
    rw [Metric.mem_closedBall, dist_zero_right]
    exact le_of_lt hz.1
  have hint : ∀ s : ℝ, s < r → ∀ ψ : E3 → ℝ, ContinuousOn ψ (Metric.ball (0 : E3) r) →
      IntegrableOn ψ {z : E3 | ‖z‖ < s ∧ 0 < z 0} := by
    intro s hs ψ hψ
    exact ((hψ.mono (Metric.closedBall_subset_ball hs)).integrableOn_compact
      (isCompact_closedBall 0 s)).mono_set (hHsub s)
  have hHball : ∀ z ∈ {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, z ∈ Metric.ball (0 : E3) r := by
    intro z hz
    rw [Metric.mem_ball, dist_zero_right]
    exact lt_trans hz.1 hρr
  
  have hprod : ∀ (φ ψ χ : E3 → ℝ) (z : E3), DifferentiableAt ℝ φ z → DifferentiableAt ℝ ψ z →
      DifferentiableAt ℝ χ z → ∀ i : Fin 3,
      partialDeriv i (fun y => φ y ^ 2 * ψ y * χ y) z =
        2 * φ z * partialDeriv i φ z * ψ z * χ z + φ z ^ 2 * partialDeriv i ψ z * χ z
          + φ z ^ 2 * ψ z * partialDeriv i χ z := by
    intro φ ψ χ z hφ hψ hχ i
    have h := ((hφ.hasFDerivAt.mul hφ.hasFDerivAt).mul hψ.hasFDerivAt).mul hχ.hasFDerivAt
    have e : (fun y => φ y ^ 2 * ψ y * χ y) = φ * φ * ψ * χ := by
      funext y; simp only [Pi.mul_apply]; ring
    unfold partialDeriv
    rw [e, h.fderiv]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul,
      Pi.mul_apply]
    ring
  
  have hρ'ρ₁ : ρ' < (ρ' + ρ) / 2 := by linarith
  have hρ₁ρ : (ρ' + ρ) / 2 < ρ := by linarith
  obtain ⟨η, Ke, hηs, hKe, hη0, hη1, hηin, hηout, hde⟩ : ∃ (η : E3 → ℝ) (Ke : ℝ),
      ContDiff ℝ ∞ η ∧ 0 ≤ Ke ∧ (∀ z, 0 ≤ η z) ∧ (∀ z, η z ≤ 1) ∧
      (∀ z : E3, ‖z‖ ≤ ρ' → η z = 1) ∧ (∀ z : E3, (ρ' + ρ) / 2 ≤ ‖z‖ → η z = 0) ∧
      ∀ (i : Fin 3) (z : E3), |partialDeriv i η z| ≤ Ke := by
    let f : ContDiffBump (0 : E3) := ⟨ρ', (ρ' + ρ) / 2, hρ', hρ'ρ₁⟩
    have hfs : ContDiff ℝ ∞ (⇑f) := f.contDiff
    have hcont : Continuous (fderiv ℝ (⇑f)) := hfs.continuous_fderiv (by simp)
    have hcs : HasCompactSupport (fderiv ℝ (⇑f)) := f.hasCompactSupport.fderiv ℝ
    obtain ⟨C, hC⟩ := hcont.bounded_above_of_compact_support hcs
    refine ⟨⇑f, max C 0, hfs, le_max_right _ _, fun z => f.nonneg, fun z => f.le_one,
      fun z hz => ?_, fun z hz => ?_, fun i z => ?_⟩
    · apply f.one_of_mem_closedBall
      rw [Metric.mem_closedBall, dist_zero_right]
      exact hz
    · apply f.zero_of_le_dist
      rw [dist_zero_right]
      exact hz
    · have h1 : ‖fderiv ℝ (⇑f) z (e i)‖ ≤ ‖fderiv ℝ (⇑f) z‖ * ‖e i‖ :=
        ContinuousLinearMap.le_opNorm _ _
      have h2 : ‖e i‖ = 1 := by simp [EuclideanSpace.norm_single]
      rw [h2, mul_one] at h1
      rw [← Real.norm_eq_abs]
      exact le_trans h1 (le_trans (hC z) (le_max_left _ _))
  
  obtain ⟨K1, hK1def⟩ : ∃ K1 : ℝ,
      K1 = 216 * Ke ^ 2 * Λ ^ 2 / lam + 6 * Λ ^ 2 / lam + 2 / lam + 3 * Ke ^ 2 + 1 :=
    ⟨_, rfl⟩
  have hK1pos : 0 < K1 := by rw [hK1def]; positivity
  refine ⟨2 * K1 / lam, by positivity, ?_⟩
  intro w G F hw hG hF hI hB
  
  have hηc : ContinuousOn η (Metric.ball (0 : E3) r) := hηs.continuous.continuousOn
  have hdηc : ∀ i : Fin 3, ContinuousOn (fun z => partialDeriv i η z) (Metric.ball (0 : E3) r) := by
    intro i
    show ContinuousOn (fun z => fderiv ℝ η z (e i)) _
    exact ((hηs.continuous_fderiv (by simp)).clm_apply continuous_const).continuousOn
  have hwc : ContinuousOn w (Metric.ball (0 : E3) r) := hw.continuousOn
  have hdwc : ∀ j : Fin 3, ContinuousOn (fun z => partialDeriv j w z) (Metric.ball (0 : E3) r) :=
    fun j => (pd w hw j).continuousOn
  have hGc : ∀ i, ContinuousOn (G i) (Metric.ball (0 : E3) r) := fun i => (hG i).continuousOn
  have hAc : ∀ i j : Fin 3, ContinuousOn (fun z => A z i j) (Metric.ball (0 : E3) r) :=
    fun i j => (hA i j).continuousOn
  have hVc : ∀ i : Fin 3, ContinuousOn
      (fun z => ∑ j : Fin 3, A z i j * partialDeriv j w z + G i z) (Metric.ball (0 : E3) r) :=
    fun i => (continuousOn_finset_sum _ (fun j _ => (hAc i j).mul (hdwc j))).add (hGc i)
  have hVs : ∀ i : Fin 3, ContDiffOn ℝ ∞
      (fun y => ∑ j : Fin 3, A y i j * partialDeriv j w y + G i y) (Metric.ball (0 : E3) r) :=
    fun i => (ContDiffOn.sum (fun j _ => (hA i j).mul (pd w hw j))).add (hG i)
  have hPs : ∀ i : Fin 3, ContDiffOn ℝ ∞
      (fun y => η y ^ 2 * w y * (∑ j : Fin 3, A y i j * partialDeriv j w y + G i y))
      (Metric.ball (0 : E3) r) :=
    fun i => ((hηs.contDiffOn.pow 2).mul hw).mul (hVs i)
  
  obtain ⟨fD, hfD⟩ : ∃ fD : E3 → ℝ, ∀ z, fD z =
      ∑ i : Fin 3, (2 * η z * partialDeriv i η z * w z
          * (∑ j : Fin 3, A z i j * partialDeriv j w z + G i z)
        + η z ^ 2 * partialDeriv i w z * (∑ j : Fin 3, A z i j * partialDeriv j w z + G i z))
      + η z ^ 2 * w z * (F z + ∑ j : Fin 3, c j z * partialDeriv j w z) := ⟨_, fun _ => rfl⟩
  obtain ⟨fS, hfS⟩ : ∃ fS : E3 → ℝ, ∀ z, fS z =
      w z ^ 2 + ∑ i : Fin 3, G i z ^ 2 + F z ^ 2 := ⟨_, fun _ => rfl⟩
  have hfDc : ContinuousOn fD (Metric.ball (0 : E3) r) := by
    rw [funext hfD]
    refine ContinuousOn.add (continuousOn_finset_sum _ (fun i _ => ?_)) ?_
    · exact ((((continuousOn_const.mul hηc).mul (hdηc i)).mul hwc).mul (hVc i)).add
        (((hηc.pow 2).mul (hdwc i)).mul (hVc i))
    · exact ((hηc.pow 2).mul hwc).mul
        (hF.add (continuousOn_finset_sum _ (fun j _ => (hc j).mul (hdwc j))))
  have hfSc : ContinuousOn fS (Metric.ball (0 : E3) r) := by
    rw [funext hfS]
    exact ((hwc.pow 2).add (continuousOn_finset_sum _ (fun i _ => (hGc i).pow 2))).add (hF.pow 2)
  have hfLc : ContinuousOn (fun z => η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2)
      (Metric.ball (0 : E3) r) :=
    (hηc.pow 2).mul (continuousOn_finset_sum _ (fun i _ => (hdwc i).pow 2))
  
  have hdiv := halfball_divergence_zero r ((ρ' + ρ) / 2) ρ (by linarith) hρ₁ρ
    (fun i y => η y ^ 2 * w y * (∑ j : Fin 3, A y i j * partialDeriv j w y + G i y)) hPs
    (fun i z hz => by
      show η z ^ 2 * w z * (∑ j : Fin 3, A z i j * partialDeriv j w z + G i z) = 0
      rw [hηout z hz]; ring)
    (fun z hz hz0 => by
      show η z ^ 2 * w z * (∑ j : Fin 3, A z 0 j * partialDeriv j w z + G 0 z) = 0
      rw [hB z hz hz0]; ring)
  have hdiv' : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, fD z = 0 := by
    have hcongr : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, fD z =
        ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, ∑ i : Fin 3, partialDeriv i
          (fun y => η y ^ 2 * w y * (∑ j : Fin 3, A y i j * partialDeriv j w y + G i y)) z := by
      refine setIntegral_congr_fun (hHopen ρ).measurableSet (fun z hz => ?_)
      beta_reduce
      have hzB := hHball z hz
      have hIz := hI z hzB hz.2
      have hp : ∀ i : Fin 3, partialDeriv i
          (fun y => η y ^ 2 * w y * (∑ j : Fin 3, A y i j * partialDeriv j w y + G i y)) z =
          2 * η z * partialDeriv i η z * w z
              * (∑ j : Fin 3, A z i j * partialDeriv j w z + G i z)
            + η z ^ 2 * partialDeriv i w z * (∑ j : Fin 3, A z i j * partialDeriv j w z + G i z)
            + η z ^ 2 * w z * partialDeriv i
                (fun y => ∑ j : Fin 3, A y i j * partialDeriv j w y + G i y) z :=
        fun i => hprod η w _ z (hηs.contDiffAt.differentiableAt (by simp)) (hdiff w hw z hzB)
          (hdiff _ (hVs i) z hzB) i
      rw [Finset.sum_congr rfl (fun i _ => hp i), hfD z]
      simp only [Fin.sum_univ_three] at hIz ⊢
      linear_combination (-(η z ^ 2 * w z)) * hIz
    rw [hcongr]
    exact hdiv
  
  have hpt : ∀ z ∈ {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
      lam / 2 * (η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2) ≤ fD z + K1 * fS z := by
    intro z hz
    have hzc := hHsub ρ hz
    have h := caccioppoli_pointwise lam Λ Ke (η z) (w z) (F z) (fun j => partialDeriv j w z)
      (fun i => partialDeriv i η z) (fun i => G i z) (fun j => c j z) (fun i j => A z i j)
      hlam (hη0 z) (hη1 z) (fun i => hde i z) (fun i j => hΛA z hzc i j)
      (fun j => hΛc z hzc j) (hell z hzc _)
    rw [← hK1def] at h
    rw [hfD z, hfS z]
    exact h
  
  have hfDi : IntegrableOn fD {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} := hint ρ hρr fD hfDc
  have hfSi : IntegrableOn fS {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} := hint ρ hρr fS hfSc
  have hmono : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
        lam / 2 * (η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2)
      ≤ ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (fD z + K1 * fS z) :=
    setIntegral_mono_on (hint ρ hρr _ (continuousOn_const.mul hfLc))
      (hint ρ hρr _ (hfDc.add (continuousOn_const.mul hfSc))) (hHopen ρ).measurableSet hpt
  rw [integral_const_mul, integral_add hfDi (hint ρ hρr _ (continuousOn_const.mul hfSc)),
    integral_const_mul, hdiv'] at hmono
  have hS : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, fS z =
      (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (w z) ^ 2)
        + ∑ i : Fin 3, (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (G i z) ^ 2)
        + (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (F z) ^ 2) := by
    rw [funext hfS]
    have i1 : IntegrableOn (fun z => w z ^ 2) {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} :=
      hint ρ hρr _ (hwc.pow 2)
    have i2 : IntegrableOn (fun z => ∑ i : Fin 3, G i z ^ 2) {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} :=
      hint ρ hρr _ (continuousOn_finset_sum _ (fun i _ => (hGc i).pow 2))
    have i3 : IntegrableOn (fun z => F z ^ 2) {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} :=
      hint ρ hρr _ (hF.pow 2)
    have i12 : IntegrableOn (fun z => w z ^ 2 + ∑ i : Fin 3, G i z ^ 2)
        {z : E3 | ‖z‖ < ρ ∧ 0 < z 0} :=
      hint ρ hρr _ ((hwc.pow 2).add (continuousOn_finset_sum _ (fun i _ => (hGc i).pow 2)))
    rw [integral_add i12 i3, integral_add i1 i2,
      integral_finset_sum _ (fun i _ => hint ρ hρr _ ((hGc i).pow 2))]
  rw [hS] at hmono
  
  have hshrink : ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, ∑ j : Fin 3, (partialDeriv j w z) ^ 2
      ≤ ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2 := by
    have e1 : ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, ∑ j : Fin 3, (partialDeriv j w z) ^ 2
        = ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2 := by
      refine setIntegral_congr_fun (hHopen ρ').measurableSet (fun z hz => ?_)
      beta_reduce
      rw [hηin z (le_of_lt hz.1)]
      ring
    rw [e1]
    refine setIntegral_mono_set (hint ρ hρr _ hfLc) ?_ ?_
    · refine ae_restrict_of_forall_mem (hHopen ρ).measurableSet (fun z _ => ?_)
      show (0 : ℝ) ≤ η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2
      positivity
    · exact HasSubset.Subset.eventuallyLE (fun z hz => ⟨lt_trans hz.1 hρρ', hz.2⟩)
  have hXR : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, η z ^ 2 * ∑ i : Fin 3, partialDeriv i w z ^ 2
      ≤ 2 * K1 / lam * ((∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (w z) ^ 2)
          + ∑ i : Fin 3, (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (G i z) ^ 2)
          + (∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (F z) ^ 2)) := by
    rw [div_mul_eq_mul_div, le_div_iff₀ hlam]
    linarith
  exact le_trans hshrink hXR

theorem conormal_tangential_step (r : ℝ) (hr : 0 < r)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => A z i j) (Metric.ball (0 : E3) r))
    (hsymm : ∀ z ∈ Metric.ball (0 : E3) r, ∀ i j : Fin 3, A z i j = A z j i)
    (hpd : ∀ z ∈ Metric.ball (0 : E3) r, (A z).PosDef)
    (b : E3 → Fin 3 → ℝ) (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun z => b z l) (Metric.ball (0 : E3) r))
    (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f (Metric.ball (0 : E3) r))
    (u : ℕ → E3 → ℝ) (hu : ∀ n, ContDiffOn ℝ ∞ (u n) (Metric.ball (0 : E3) r)) (N₀ : ℕ)
    (heq : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 ≤ z 0 →
      ∑ i : Fin 3, ∑ j : Fin 3, A z i j * partialDeriv i (partialDeriv j (u n)) z
        + ∑ l : Fin 3, b z l * partialDeriv l (u n) z = f z)
    (hbc : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 →
      ∑ i : Fin 3, A z i 0 * partialDeriv i (u n) z = 0)
    (k : ℕ) (ρ ρ' : ℝ) (hρ' : 0 < ρ') (hρρ' : ρ' < ρ) (hρr : ρ < r) (Ck : ℝ)
    (hIH : ∀ n, N₀ ≤ n → ∀ L : List (Fin 3), L.length ≤ k →
      ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (L.foldr partialDeriv (u n) z) ^ 2 ≤ Ck) :
    ∃ C : ℝ, ∀ n, N₀ ≤ n → ∀ (j : Fin 3) (L : List (Fin 3)), L.length = k → (∀ a ∈ L, a ≠ 0) →
      ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, (partialDeriv j (L.foldr partialDeriv (u n)) z) ^ 2
        ≤ C :=
by
  classical
  have hball : IsOpen (Metric.ball (0 : E3) r) := Metric.isOpen_ball
  have iterPD : ∀ (v : E3 → ℝ), ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
      ∀ L : List (Fin 3), ContDiffOn ℝ ∞ (L.foldr partialDeriv v) (Metric.ball (0 : E3) r) := by
    intro v hv L
    induction L with
    | nil => simpa using hv
    | cons a L ih =>
      rw [List.foldr_cons]
      have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (L.foldr partialDeriv v)) (Metric.ball (0 : E3) r) :=
        ((contDiffOn_infty_iff_fderiv_of_isOpen hball).mp ih).2
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (L.foldr partialDeriv v) y (e a)) _
      exact h1.clm_apply contDiffOn_const
  have hρ'r : ρ' < r := lt_trans hρρ' hρr
  have hHopen : ∀ s : ℝ, IsOpen {z : E3 | ‖z‖ < s ∧ 0 < z 0} := fun s =>
    (isOpen_lt continuous_norm continuous_const).inter
      (isOpen_lt continuous_const (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous)
  have hHsub : ∀ s : ℝ, {z : E3 | ‖z‖ < s ∧ 0 < z 0} ⊆ Metric.closedBall 0 s := by
    intro s z hz
    rw [Metric.mem_closedBall, dist_zero_right]
    exact le_of_lt hz.1
  have hint : ∀ s : ℝ, s < r → ∀ ψ : E3 → ℝ, ContinuousOn ψ (Metric.ball (0 : E3) r) →
      IntegrableOn ψ {z : E3 | ‖z‖ < s ∧ 0 < z 0} := by
    intro s hs ψ hψ
    exact ((hψ.mono (Metric.closedBall_subset_ball hs)).integrableOn_compact
      (isCompact_closedBall 0 s)).mono_set (hHsub s)
  have hsq : ∀ (m : ℕ) (φ : Fin m → E3 → ℝ),
      (∀ t, ContinuousOn (φ t) (Metric.ball (0 : E3) r)) →
      ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (∑ t, φ t z) ^ 2 ≤
        (m : ℝ) * ∑ t, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (φ t z) ^ 2 := by
    intro m φ hφ
    have hc1 : ContinuousOn (fun z => (∑ t, φ t z) ^ 2) (Metric.ball (0 : E3) r) :=
      (continuousOn_finset_sum _ (fun t _ => hφ t)).pow 2
    have hc2 : ∀ t, ContinuousOn (fun z => (φ t z) ^ 2) (Metric.ball (0 : E3) r) :=
      fun t => (hφ t).pow 2
    have hc3 : ContinuousOn (fun z => (m : ℝ) * ∑ t, (φ t z) ^ 2) (Metric.ball (0 : E3) r) :=
      continuousOn_const.mul (continuousOn_finset_sum _ (fun t _ => hc2 t))
    calc ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (∑ t, φ t z) ^ 2
        ≤ ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (m : ℝ) * ∑ t, (φ t z) ^ 2 := by
          refine setIntegral_mono_on (hint ρ hρr _ hc1) (hint ρ hρr _ hc3)
            (hHopen ρ).measurableSet (fun z _ => ?_)
          have h := sq_sum_le_card_mul_sum_sq (s := (Finset.univ : Finset (Fin m)))
            (f := fun t => φ t z)
          simpa using h
      _ = (m : ℝ) * ∑ t, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (φ t z) ^ 2 := by
          rw [integral_const_mul, integral_finset_sum]
          intro t _
          exact hint ρ hρr _ (hc2 t)
  
  obtain ⟨c, hc⟩ : ∃ c : Fin 3 → E3 → ℝ,
      ∀ j z, c j z = ∑ i : Fin 3, partialDeriv i (fun y => A y i j) z - b z j :=
    ⟨fun j z => ∑ i : Fin 3, partialDeriv i (fun y => A y i j) z - b z j, fun _ _ => rfl⟩
  have hcs : ∀ j, ContDiffOn ℝ ∞ (c j) (Metric.ball (0 : E3) r) := by
    intro j
    have hce : c j = fun z => ∑ i : Fin 3, partialDeriv i (fun y => A y i j) z - b z j :=
      funext (hc j)
    rw [hce]
    refine ContDiffOn.sub (ContDiffOn.sum (fun i _ => ?_)) (hb j)
    exact iterPD (fun y => A y i j) (hA i j) [i]
  
  obtain ⟨lam, Mx, Γ, hlam, -, -, hcb⟩ := coeff_compact_bounds A (Metric.ball (0 : E3) r) 0 ρ
    hball (Metric.closedBall_subset_ball hρr) hA hpd
  have hell : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ ξ : Fin 3 → ℝ,
      lam * ∑ i : Fin 3, ξ i ^ 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ξ i * A z i j * ξ j :=
    fun z hz ξ => (hcb z hz).1 ξ
  
  have hsubB : Metric.closedBall (0 : E3) ρ ⊆ Metric.ball 0 r := Metric.closedBall_subset_ball hρr
  have hφc : ContinuousOn (fun z => ∑ i : Fin 3, ∑ j : Fin 3, |A z i j| + ∑ j : Fin 3, |c j z|)
      (Metric.closedBall (0 : E3) ρ) := by
    refine ContinuousOn.add (continuousOn_finset_sum _ (fun i _ =>
      continuousOn_finset_sum _ (fun j _ => ?_))) (continuousOn_finset_sum _ (fun j _ => ?_))
    · exact ((hA i j).continuousOn.mono hsubB).abs
    · exact ((hcs j).continuousOn.mono hsubB).abs
  obtain ⟨Λ, hΛ⟩ := (isCompact_closedBall (0 : E3) ρ).exists_bound_of_continuousOn hφc
  have hΛ' : ∀ z ∈ Metric.closedBall (0 : E3) ρ,
      ∑ i : Fin 3, ∑ j : Fin 3, |A z i j| + ∑ j : Fin 3, |c j z| ≤ Λ := by
    intro z hz
    have h1 := hΛ z hz
    rw [Real.norm_eq_abs] at h1
    exact le_trans (le_abs_self _) h1
  have hΛA : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ i j : Fin 3, |A z i j| ≤ Λ := by
    intro z hz i j
    have h1 := hΛ' z hz
    have h2 : |A z i j| ≤ ∑ j' : Fin 3, |A z i j'| :=
      Finset.single_le_sum (f := fun j' => |A z i j'|) (fun _ _ => abs_nonneg _)
        (Finset.mem_univ j)
    have h3 : ∑ j' : Fin 3, |A z i j'| ≤ ∑ i' : Fin 3, ∑ j' : Fin 3, |A z i' j'| :=
      Finset.single_le_sum (f := fun i' => ∑ j' : Fin 3, |A z i' j'|)
        (fun _ _ => Finset.sum_nonneg (fun _ _ => abs_nonneg _)) (Finset.mem_univ i)
    have h4 : 0 ≤ ∑ j' : Fin 3, |c j' z| := Finset.sum_nonneg (fun _ _ => abs_nonneg _)
    linarith
  have hΛc : ∀ z ∈ Metric.closedBall (0 : E3) ρ, ∀ j : Fin 3, |c j z| ≤ Λ := by
    intro z hz j
    have h1 := hΛ' z hz
    have h2 : |c j z| ≤ ∑ j' : Fin 3, |c j' z| :=
      Finset.single_le_sum (f := fun j' => |c j' z|) (fun _ _ => abs_nonneg _)
        (Finset.mem_univ j)
    have h4 : 0 ≤ ∑ i' : Fin 3, ∑ j' : Fin 3, |A z i' j'| :=
      Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => abs_nonneg _))
    linarith
  
  obtain ⟨K, hK0, hK⟩ := conormal_halfball_caccioppoli r ρ ρ' hρ' hρρ' hρr A hA c
    (fun j => (hcs j).continuousOn) lam Λ hlam hell hΛA hΛc
  
  have hper : ∀ L : List (Fin 3), ∃ CL : ℝ, L.length = k → (∀ a ∈ L, a ≠ 0) →
      ∀ n, N₀ ≤ n → ∀ j : Fin 3,
        ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, (partialDeriv j (L.foldr partialDeriv (u n)) z) ^ 2
          ≤ CL := by
    intro L
    have hKAex := fun i j : Fin 3 =>
      commutator_halfball_L2 r ρ hρr (fun y => A y i j) (hA i j) L
    choose KA hKA0 hKA using hKAex
    have hKcex := fun j : Fin 3 => commutator_halfball_L2 r ρ hρr (c j) (hcs j) L
    choose Kc hKc0 hKc using hKcex
    obtain ⟨Bd, hBd⟩ : ∃ Bd : ℝ, Bd = max Ck 0 := ⟨_, rfl⟩
    have hBd0 : 0 ≤ Bd := by rw [hBd]; exact le_max_right _ _
    have hCkBd : Ck ≤ Bd := by rw [hBd]; exact le_max_left _ _
    obtain ⟨Sf, hSf⟩ : ∃ Sf : ℝ,
        Sf = ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (L.foldr partialDeriv f z) ^ 2 := ⟨_, rfl⟩
    refine ⟨K * (Bd + ∑ i : Fin 3, 3 * ∑ j : Fin 3, KA i j * Bd
      + 2 * (Sf + 3 * ∑ j : Fin 3, Kc j * Bd)), ?_⟩
    intro hLk hLt n hn j
    
    have hlow : ∀ j' : Fin 3, ∀ M : List (Fin 3), M.length < L.length →
        ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0},
          (M.foldr partialDeriv (partialDeriv j' (u n)) z) ^ 2 ≤ Bd := by
      intro j' M hM
      have heqf : M.foldr partialDeriv (partialDeriv j' (u n)) =
          (M ++ [j']).foldr partialDeriv (u n) := by
        simp only [List.foldr_append, List.foldr_cons, List.foldr_nil]
      rw [heqf]
      refine le_trans (hIH n hn _ ?_) hCkBd
      simp only [List.length_append, List.length_singleton]
      omega
    
    obtain ⟨cA, hcA⟩ : ∃ cA : Fin 3 → Fin 3 → E3 → ℝ, ∀ i j' z, cA i j' z =
        L.foldr partialDeriv (fun y => A y i j' * partialDeriv j' (u n) y) z
          - A z i j' * L.foldr partialDeriv (partialDeriv j' (u n)) z := ⟨_, fun _ _ _ => rfl⟩
    obtain ⟨cc, hcc⟩ : ∃ cc : Fin 3 → E3 → ℝ, ∀ j' z, cc j' z =
        L.foldr partialDeriv (fun y => c j' y * partialDeriv j' (u n) y) z
          - c j' z * L.foldr partialDeriv (partialDeriv j' (u n)) z := ⟨_, fun _ _ => rfl⟩
    have hcAs : ∀ i j', ContDiffOn ℝ ∞ (cA i j') (Metric.ball (0 : E3) r) := by
      intro i j'
      have hce : cA i j' = fun z =>
          L.foldr partialDeriv (fun y => A y i j' * partialDeriv j' (u n) y) z
            - A z i j' * L.foldr partialDeriv (partialDeriv j' (u n)) z := funext (hcA i j')
      rw [hce]
      refine ContDiffOn.sub ?_ ?_
      · exact iterPD (fun y => A y i j' * partialDeriv j' (u n) y)
          ((hA i j').mul (iterPD (u n) (hu n) [j'])) L
      · exact (hA i j').mul (iterPD (partialDeriv j' (u n)) (iterPD (u n) (hu n) [j']) L)
    have hccs : ∀ j', ContDiffOn ℝ ∞ (cc j') (Metric.ball (0 : E3) r) := by
      intro j'
      have hce : cc j' = fun z =>
          L.foldr partialDeriv (fun y => c j' y * partialDeriv j' (u n) y) z
            - c j' z * L.foldr partialDeriv (partialDeriv j' (u n)) z := funext (hcc j')
      rw [hce]
      refine ContDiffOn.sub ?_ ?_
      · exact iterPD (fun y => c j' y * partialDeriv j' (u n) y)
          ((hcs j').mul (iterPD (u n) (hu n) [j'])) L
      · exact (hcs j').mul (iterPD (partialDeriv j' (u n)) (iterPD (u n) (hu n) [j']) L)
    have hcommA : ∀ i j', ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (cA i j' z) ^ 2 ≤ KA i j' * Bd := by
      intro i j'
      simp only [hcA]
      exact hKA i j' (partialDeriv j' (u n)) (iterPD (u n) (hu n) [j']) Bd hBd0 (hlow j')
    have hcommc : ∀ j', ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (cc j' z) ^ 2 ≤ Kc j' * Bd := by
      intro j'
      simp only [hcc]
      exact hKc j' (partialDeriv j' (u n)) (iterPD (u n) (hu n) [j']) Bd hBd0 (hlow j')
    
    obtain ⟨G, hG⟩ : ∃ G : Fin 3 → E3 → ℝ, ∀ i z, G i z = ∑ j' : Fin 3, cA i j' z :=
      ⟨_, fun _ _ => rfl⟩
    obtain ⟨F, hF⟩ : ∃ F : E3 → ℝ, ∀ z, F z = L.foldr partialDeriv f z + ∑ j' : Fin 3, cc j' z :=
      ⟨_, fun _ => rfl⟩
    have hG' : ∀ i z, G i z = ∑ j' : Fin 3,
        (L.foldr partialDeriv (fun y => A y i j' * partialDeriv j' (u n) y) z
          - A z i j' * L.foldr partialDeriv (partialDeriv j' (u n)) z) := by
      intro i z
      rw [hG]
      exact Finset.sum_congr rfl (fun j' _ => hcA i j' z)
    have hF' : ∀ z, F z = L.foldr partialDeriv f z + ∑ j' : Fin 3,
        (L.foldr partialDeriv (fun y => c j' y * partialDeriv j' (u n) y) z
          - c j' z * L.foldr partialDeriv (partialDeriv j' (u n)) z) := by
      intro z
      rw [hF]
      congr 1
      exact Finset.sum_congr rfl (fun j' _ => hcc j' z)
    obtain ⟨hI, hB⟩ := conormal_tangential_system r A hA hsymm b hb f hf (u n) (hu n)
      (fun z hz hz0 => heq n hn z hz (le_of_lt hz0)) (hbc n hn) L hLt c hc
      (L.foldr partialDeriv (u n)) rfl G hG' F hF'
    have hGs : ∀ i, ContDiffOn ℝ ∞ (G i) (Metric.ball (0 : E3) r) := by
      intro i
      have hGe : G i = fun z => ∑ j' : Fin 3, cA i j' z := funext (hG i)
      rw [hGe]
      exact ContDiffOn.sum (fun j' _ => hcAs i j')
    have hFc : ContinuousOn F (Metric.ball (0 : E3) r) := by
      have hFe : F = fun z => L.foldr partialDeriv f z + ∑ j' : Fin 3, cc j' z := funext hF
      rw [hFe]
      exact (iterPD f hf L).continuousOn.add
        (continuousOn_finset_sum _ (fun j' _ => (hccs j').continuousOn))
    have hcac := hK (L.foldr partialDeriv (u n)) G F (iterPD (u n) (hu n) L) hGs hFc hI hB
    
    have hw2 : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (L.foldr partialDeriv (u n) z) ^ 2 ≤ Bd :=
      le_trans (hIH n hn L (le_of_eq hLk)) hCkBd
    have hG2 : ∀ i, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (G i z) ^ 2
        ≤ 3 * ∑ j' : Fin 3, KA i j' * Bd := by
      intro i
      have h1 : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (∑ j' : Fin 3, cA i j' z) ^ 2 ≤
          ((3 : ℕ) : ℝ) * ∑ j' : Fin 3, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (cA i j' z) ^ 2 :=
        hsq 3 (fun j' => cA i j') (fun j' => (hcAs i j').continuousOn)
      have h2 : ∑ j' : Fin 3, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (cA i j' z) ^ 2 ≤
          ∑ j' : Fin 3, KA i j' * Bd := Finset.sum_le_sum (fun j' _ => hcommA i j')
      simp only [hG]
      have h3 : ((3 : ℕ) : ℝ) = 3 := by norm_num
      rw [h3] at h1
      linarith
    have hF2 : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (F z) ^ 2
        ≤ 2 * (Sf + 3 * ∑ j' : Fin 3, Kc j' * Bd) := by
      have hf1 : ContinuousOn (fun z => L.foldr partialDeriv f z) (Metric.ball (0 : E3) r) :=
        (iterPD f hf L).continuousOn
      have hf2 : ContinuousOn (fun z => ∑ j' : Fin 3, cc j' z) (Metric.ball (0 : E3) r) :=
        continuousOn_finset_sum _ (fun j' _ => (hccs j').continuousOn)
      have h1 := hsq 2 ![fun z => L.foldr partialDeriv f z, fun z => ∑ j' : Fin 3, cc j' z]
        (by
          intro t
          fin_cases t
          · exact hf1
          · exact hf2)
      simp only [Fin.sum_univ_two, Matrix.cons_val_zero, Matrix.cons_val_one] at h1
      have h3 : ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (∑ j' : Fin 3, cc j' z) ^ 2 ≤
          ((3 : ℕ) : ℝ) * ∑ j' : Fin 3, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (cc j' z) ^ 2 :=
        hsq 3 (fun j' => cc j') (fun j' => (hccs j').continuousOn)
      have h4 : ∑ j' : Fin 3, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (cc j' z) ^ 2 ≤
          ∑ j' : Fin 3, Kc j' * Bd := Finset.sum_le_sum (fun j' _ => hcommc j')
      have e2 : ((2 : ℕ) : ℝ) = 2 := by norm_num
      have e3 : ((3 : ℕ) : ℝ) = 3 := by norm_num
      rw [e2] at h1
      rw [e3] at h3
      simp only [hF]
      rw [← hSf] at h1
      linarith
    have hsum : ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0},
        ∑ j' : Fin 3, (partialDeriv j' (L.foldr partialDeriv (u n)) z) ^ 2
          ≤ K * (Bd + ∑ i : Fin 3, 3 * ∑ j : Fin 3, KA i j * Bd
            + 2 * (Sf + 3 * ∑ j : Fin 3, Kc j * Bd)) := by
      refine le_trans hcac (mul_le_mul_of_nonneg_left ?_ hK0)
      have hGsum : ∑ i : Fin 3, ∫ z in {z : E3 | ‖z‖ < ρ ∧ 0 < z 0}, (G i z) ^ 2 ≤
          ∑ i : Fin 3, 3 * ∑ j' : Fin 3, KA i j' * Bd := Finset.sum_le_sum (fun i _ => hG2 i)
      linarith
    have hc1 : ContinuousOn (fun z => (partialDeriv j (L.foldr partialDeriv (u n)) z) ^ 2)
        (Metric.ball (0 : E3) r) := (iterPD (u n) (hu n) (j :: L)).continuousOn.pow 2
    have hc2 : ContinuousOn
        (fun z => ∑ j' : Fin 3, (partialDeriv j' (L.foldr partialDeriv (u n)) z) ^ 2)
        (Metric.ball (0 : E3) r) :=
      continuousOn_finset_sum _ (fun j' _ => (iterPD (u n) (hu n) (j' :: L)).continuousOn.pow 2)
    refine le_trans (setIntegral_mono_on (hint ρ' hρ'r _ hc1) (hint ρ' hρ'r _ hc2)
      (hHopen ρ').measurableSet (fun z _ => ?_)) hsum
    exact Finset.single_le_sum
      (f := fun j' => (partialDeriv j' (L.foldr partialDeriv (u n)) z) ^ 2)
      (fun _ _ => sq_nonneg _) (Finset.mem_univ j)
  
  choose CL hCL using hper
  have hfin : ({L : List (Fin 3) | L.length = k}).Finite := List.finite_length_eq (Fin 3) k
  obtain ⟨C, hC⟩ := (hfin.image CL).bddAbove
  refine ⟨C, fun n hn j L hLk hLt => le_trans (hCL L hLk hLt n hn j) ?_⟩
  exact hC (Set.mem_image_of_mem CL (show L ∈ {L : List (Fin 3) | L.length = k} from hLk))

theorem conormal_normal_step (r : ℝ) (hr : 0 < r)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => A z i j) (Metric.ball (0 : E3) r))
    (hsymm : ∀ z ∈ Metric.ball (0 : E3) r, ∀ i j : Fin 3, A z i j = A z j i)
    (hpd : ∀ z ∈ Metric.ball (0 : E3) r, (A z).PosDef)
    (b : E3 → Fin 3 → ℝ) (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun z => b z l) (Metric.ball (0 : E3) r))
    (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f (Metric.ball (0 : E3) r))
    (u : ℕ → E3 → ℝ) (hu : ∀ n, ContDiffOn ℝ ∞ (u n) (Metric.ball (0 : E3) r)) (N₀ : ℕ)
    (heq : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 ≤ z 0 →
      ∑ i : Fin 3, ∑ j : Fin 3, A z i j * partialDeriv i (partialDeriv j (u n)) z
        + ∑ l : Fin 3, b z l * partialDeriv l (u n) z = f z)
    (k : ℕ) (ρ' : ℝ) (hρ' : 0 < ρ') (hρ'r : ρ' < r) (C₁ C₂ : ℝ)
    (hlow : ∀ n, N₀ ≤ n → ∀ L : List (Fin 3), L.length ≤ k →
      ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, (L.foldr partialDeriv (u n) z) ^ 2 ≤ C₁)
    (htan : ∀ n, N₀ ≤ n → ∀ (j : Fin 3) (L : List (Fin 3)), L.length = k → (∀ a ∈ L, a ≠ 0) →
      ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, (partialDeriv j (L.foldr partialDeriv (u n)) z) ^ 2
        ≤ C₂) :
    ∃ C : ℝ, ∀ n, N₀ ≤ n → ∀ L : List (Fin 3), L.length = k + 1 →
      ∫ z in {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0}, (L.foldr partialDeriv (u n) z) ^ 2 ≤ C :=
by
  classical
  have hball : IsOpen (Metric.ball (0 : E3) r) := Metric.isOpen_ball
  
  have iterPD : ∀ (v : E3 → ℝ), ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
      ∀ L : List (Fin 3), ContDiffOn ℝ ∞ (L.foldr partialDeriv v) (Metric.ball (0 : E3) r) := by
    intro v hv L
    induction L with
    | nil => simpa using hv
    | cons a L ih =>
      rw [List.foldr_cons]
      have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (L.foldr partialDeriv v)) (Metric.ball (0 : E3) r) :=
        ((contDiffOn_infty_iff_fderiv_of_isOpen hball).mp ih).2
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (L.foldr partialDeriv v) y (e a)) _
      exact h1.clm_apply contDiffOn_const
  have pdS : ∀ g : E3 → ℝ, ContDiffOn ℝ ∞ g (Metric.ball (0 : E3) r) → ∀ d : Fin 3,
      ContDiffOn ℝ ∞ (partialDeriv d g) (Metric.ball (0 : E3) r) :=
    fun g hg d => iterPD g hg [d]
  
  have perm : ∀ (v : E3 → ℝ),
      (∀ L : List (Fin 3), ContDiffOn ℝ ∞ (L.foldr partialDeriv v) (Metric.ball (0 : E3) r)) →
      ∀ (L L' : List (Fin 3)), L.Perm L' → ∀ z ∈ Metric.ball (0 : E3) r,
        L.foldr partialDeriv v z = L'.foldr partialDeriv v z := by
    intro v hv L L' hp
    induction hp with
    | nil => intro z _; rfl
    | cons x _ ih =>
      intro z hz
      have hev := Filter.eventually_of_mem (hball.mem_nhds hz) ih
      show fderiv ℝ _ z (e x) = fderiv ℝ _ z (e x)
      rw [Filter.EventuallyEq.fderiv_eq hev]
    | swap x y l =>
      intro z hz
      have hw : ContDiffAt ℝ ∞ (l.foldr partialDeriv v) z := (hv l).contDiffAt (hball.mem_nhds hz)
      have hD : DifferentiableAt ℝ (fderiv ℝ (l.foldr partialDeriv v)) z :=
        (hw.fderiv_right (m := 1) (by norm_cast)).differentiableAt one_ne_zero
      have key : ∀ p q : Fin 3, partialDeriv p (partialDeriv q (l.foldr partialDeriv v)) z =
          fderiv ℝ (fderiv ℝ (l.foldr partialDeriv v)) z (e p) (e q) := by
        intro p q
        show fderiv ℝ (fun y' => fderiv ℝ (l.foldr partialDeriv v) y' (e q)) z (e p) = _
        rw [fderiv_clm_apply hD (differentiableAt_const _)]
        simp
      have hs := hw.isSymmSndFDerivAt (by
        rw [minSmoothness_of_isRCLikeNormedField]
        exact WithTop.coe_le_coe.mpr le_top)
      show partialDeriv y (partialDeriv x (l.foldr partialDeriv v)) z =
        partialDeriv x (partialDeriv y (l.foldr partialDeriv v)) z
      rw [key, key]
      exact hs _ _
    | trans _ _ ih1 ih2 => intro z hz; exact (ih1 z hz).trans (ih2 z hz)
  
  have hπ : Continuous (fun z : E3 => z 0) :=
    (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).continuous
  have Ωopen : IsOpen (Metric.ball (0 : E3) r ∩ {z : E3 | 0 < z 0}) :=
    hball.inter (isOpen_lt continuous_const hπ)
  have hA00 : ∀ z ∈ Metric.ball (0 : E3) r, A z 0 0 ≠ 0 := fun z hz => ne_of_gt ((hpd z hz).diag_pos)
  have rep : ∀ M : List (Fin 3), ∃ (p : ℕ) (c : E3 → ℝ) (a : Fin p → E3 → ℝ)
      (I : Fin p → List (Fin 3)),
      ContDiffOn ℝ ∞ c (Metric.ball (0 : E3) r) ∧
      (∀ i, ContDiffOn ℝ ∞ (a i) (Metric.ball (0 : E3) r)) ∧
      (∀ i, (I i).length ≤ M.length + 1 ∨
        ((I i).length = M.length + 2 ∧ (I i).count 0 ≤ M.count 0 + 1)) ∧
      ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 < z 0 →
        (M ++ [0, 0]).foldr partialDeriv (u n) z =
          c z + ∑ i, a i z * (I i).foldr partialDeriv (u n) z := by
    intro M
    induction M with
    | nil =>
      have hdiv : ∀ g : E3 → ℝ, ContDiffOn ℝ ∞ g (Metric.ball (0 : E3) r) →
          ContDiffOn ℝ ∞ (fun z => -(g z / A z 0 0)) (Metric.ball (0 : E3) r) :=
        fun g hg => (hg.div (hA 0 0) hA00).neg
      refine ⟨11, fun z => f z / A z 0 0,
        ![fun z => -(A z 0 1 / A z 0 0), fun z => -(A z 0 2 / A z 0 0),
          fun z => -(A z 1 0 / A z 0 0), fun z => -(A z 1 1 / A z 0 0),
          fun z => -(A z 1 2 / A z 0 0), fun z => -(A z 2 0 / A z 0 0),
          fun z => -(A z 2 1 / A z 0 0), fun z => -(A z 2 2 / A z 0 0),
          fun z => -(b z 0 / A z 0 0), fun z => -(b z 1 / A z 0 0), fun z => -(b z 2 / A z 0 0)],
        ![[0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2], [0], [1], [2]],
        ?_, ?_, ?_, ?_⟩
      · exact hf.div (hA 0 0) hA00
      · intro i
        fin_cases i
        all_goals first | exact hdiv _ (hA _ _) | exact hdiv _ (hb _)
      · decide
      · intro n hn z hz hz0
        have h := heq n hn z hz (le_of_lt hz0)
        have hA0 := hA00 z hz
        simp only [Fin.sum_univ_three] at h
        simp only [Fin.sum_univ_succ, Fin.sum_univ_zero, Matrix.cons_val_zero,
          Matrix.cons_val_succ, List.foldr, List.nil_append]
        field_simp
        linear_combination h
    | cons d M ih =>
      obtain ⟨p, c, a, I, hc, ha, hinv, hrep⟩ := ih
      refine ⟨p + p, partialDeriv d c, Fin.append (fun i => partialDeriv d (a i)) a,
        Fin.append I (fun i => d :: I i), pdS c hc d, ?_, ?_, ?_⟩
      · intro i
        induction i using Fin.addCases with
        | left i => rw [Fin.append_left]; exact pdS _ (ha i) d
        | right i => rw [Fin.append_right]; exact ha i
      · intro i
        induction i using Fin.addCases with
        | left i =>
          rw [Fin.append_left]
          left
          simp only [List.length_cons]
          rcases hinv i with h | ⟨h, _⟩ <;> omega
        | right i =>
          rw [Fin.append_right]
          simp only [List.length_cons, List.count_cons]
          rcases hinv i with h | ⟨h1, h2⟩
          · left; omega
          · right
            refine ⟨by omega, ?_⟩
            split_ifs <;> omega
      · intro n hn z hz hz0
        have hzΩ : z ∈ Metric.ball (0 : E3) r ∩ {z : E3 | 0 < z 0} := ⟨hz, hz0⟩
        have hev : (M ++ [0, 0]).foldr partialDeriv (u n) =ᶠ[𝓝 z]
            fun y => c y + ∑ i, a i y * (I i).foldr partialDeriv (u n) y :=
          Filter.eventually_of_mem (Ωopen.mem_nhds hzΩ) (fun y hy => hrep n hn y hy.1 hy.2)
        have hdc : DifferentiableAt ℝ c z :=
          (hc.differentiableOn (by simp)).differentiableAt (hball.mem_nhds hz)
        have hda : ∀ i, DifferentiableAt ℝ (a i) z := fun i =>
          ((ha i).differentiableOn (by simp)).differentiableAt (hball.mem_nhds hz)
        have hdw : ∀ i, DifferentiableAt ℝ ((I i).foldr partialDeriv (u n)) z := fun i =>
          ((iterPD (u n) (hu n) (I i)).differentiableOn (by simp)).differentiableAt
            (hball.mem_nhds hz)
        have hF : HasFDerivAt (fun y => c y + ∑ i, a i y * (I i).foldr partialDeriv (u n) y)
            (fderiv ℝ c z + ∑ i, (a i z • fderiv ℝ ((I i).foldr partialDeriv (u n)) z +
              (I i).foldr partialDeriv (u n) z • fderiv ℝ (a i) z)) z :=
          hdc.hasFDerivAt.add (HasFDerivAt.fun_sum (fun i _ =>
            (hda i).hasFDerivAt.mul (hdw i).hasFDerivAt))
        show fderiv ℝ ((M ++ [0, 0]).foldr partialDeriv (u n)) z (e d) = _
        rw [hev.fderiv_eq, hF.fderiv, Fin.sum_univ_add]
        simp only [Fin.append_left, Fin.append_right, ContinuousLinearMap.add_apply,
          ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply, smul_eq_mul,
          List.foldr_cons]
        rw [← Finset.sum_add_distrib]
        unfold partialDeriv
        congr 1
        exact Finset.sum_congr rfl (fun i _ => by ring)
  
  set H : Set E3 := {z : E3 | ‖z‖ < ρ' ∧ 0 < z 0} with hHdef
  have hKsub : Metric.closedBall (0 : E3) ρ' ⊆ Metric.ball 0 r := Metric.closedBall_subset_ball hρ'r
  have hHK : H ⊆ Metric.closedBall (0 : E3) ρ' := fun z hz => by
    rw [Metric.mem_closedBall, dist_zero_right]; exact le_of_lt hz.1
  have hHb : ∀ z ∈ H, z ∈ Metric.ball (0 : E3) r := fun z hz => hKsub (hHK hz)
  have hHm : MeasurableSet H :=
    ((isOpen_lt continuous_norm continuous_const).inter (isOpen_lt continuous_const hπ)).measurableSet
  have hHfin : volume H < ⊤ :=
    lt_of_le_of_lt (measure_mono hHK) (isCompact_closedBall (0 : E3) ρ').measure_lt_top
  haveI : IsFiniteMeasure (volume.restrict H) := ⟨by rw [Measure.restrict_apply_univ]; exact hHfin⟩
  have l2 : ∀ (p : ℕ) (c : E3 → ℝ) (a : Fin p → E3 → ℝ),
      ContinuousOn c (Metric.closedBall 0 ρ') → (∀ i, ContinuousOn (a i) (Metric.closedBall 0 ρ')) →
      ∀ D : ℝ, ∃ K : ℝ, ∀ (w : Fin p → E3 → ℝ) (g : E3 → ℝ),
        (∀ i, ContinuousOn (w i) (Metric.closedBall 0 ρ')) → (∀ i, ∫ z in H, (w i z) ^ 2 ≤ D) →
        (∀ z ∈ H, g z = c z + ∑ i, a i z * w i z) → ∫ z in H, (g z) ^ 2 ≤ K := by
    intro p c a hc ha D
    obtain ⟨Bc, hBc⟩ := (isCompact_closedBall (0 : E3) ρ').exists_bound_of_continuousOn hc
    choose Ba hBa using fun i => (isCompact_closedBall (0 : E3) ρ').exists_bound_of_continuousOn (ha i)
    obtain ⟨B, hB⟩ : ∃ B : ℝ, B = |Bc| + ∑ i, |Ba i| := ⟨_, rfl⟩
    have hB0 : 0 ≤ ∑ i, |Ba i| := Finset.sum_nonneg (fun i _ => abs_nonneg _)
    have hcB : ∀ z ∈ Metric.closedBall (0 : E3) ρ', |c z| ≤ B := fun z hz => by
      have := hBc z hz
      rw [Real.norm_eq_abs] at this
      linarith [le_abs_self Bc]
    have haB : ∀ i, ∀ z ∈ Metric.closedBall (0 : E3) ρ', |a i z| ≤ B := fun i z hz => by
      have h1 := hBa i z hz
      rw [Real.norm_eq_abs] at h1
      have h2 : |Ba i| ≤ ∑ j, |Ba j| :=
        Finset.single_le_sum (f := fun j => |Ba j|) (fun j _ => abs_nonneg _) (Finset.mem_univ i)
      linarith [le_abs_self (Ba i), abs_nonneg Bc]
    refine ⟨2 * B ^ 2 * volume.real H + 2 * p * B ^ 2 * (p * max D 0), ?_⟩
    intro w g hw hD hg
    have hwint : ∀ i, Integrable (fun z => (w i z) ^ 2) (volume.restrict H) := fun i =>
      (((hw i).pow 2).integrableOn_compact (isCompact_closedBall 0 ρ')).mono_set hHK
    have hpt : ∀ z ∈ H, (g z) ^ 2 ≤ 2 * B ^ 2 + 2 * p * B ^ 2 * ∑ i, (w i z) ^ 2 := by
      intro z hz
      have hzK := hHK hz
      rw [hg z hz]
      have h1 : (c z) ^ 2 ≤ B ^ 2 := by
        rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (hcB z hzK) 2
      have h2 : (∑ i, a i z * w i z) ^ 2 ≤ p * ∑ i, (a i z * w i z) ^ 2 := by
        have := sq_sum_le_card_mul_sum_sq (s := Finset.univ) (f := fun i => a i z * w i z)
        simpa using this
      have h3 : ∀ i, (a i z * w i z) ^ 2 ≤ B ^ 2 * (w i z) ^ 2 := by
        intro i
        rw [mul_pow]
        have : (a i z) ^ 2 ≤ B ^ 2 := by
          rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (haB i z hzK) 2
        exact mul_le_mul_of_nonneg_right this (sq_nonneg _)
      have h4 : ∑ i, (a i z * w i z) ^ 2 ≤ B ^ 2 * ∑ i, (w i z) ^ 2 := by
        rw [Finset.mul_sum]; exact Finset.sum_le_sum (fun i _ => h3 i)
      have hp0 : (0 : ℝ) ≤ p := Nat.cast_nonneg p
      have h5 : (∑ i, a i z * w i z) ^ 2 ≤ p * (B ^ 2 * ∑ i, (w i z) ^ 2) :=
        le_trans h2 (mul_le_mul_of_nonneg_left h4 hp0)
      have h6 : (c z + ∑ i, a i z * w i z) ^ 2 ≤ 2 * (c z) ^ 2 + 2 * (∑ i, a i z * w i z) ^ 2 := by
        nlinarith [sq_nonneg (c z - ∑ i, a i z * w i z)]
      nlinarith
    have hsumint : Integrable (fun z => ∑ i, (w i z) ^ 2) (volume.restrict H) :=
      integrable_finset_sum _ (fun i _ => hwint i)
    have hint : Integrable (fun z => 2 * B ^ 2 + 2 * p * B ^ 2 * ∑ i, (w i z) ^ 2)
        (volume.restrict H) :=
      (integrable_const _).add (hsumint.const_mul _)
    calc ∫ z in H, (g z) ^ 2 ≤ ∫ z in H, (2 * B ^ 2 + 2 * p * B ^ 2 * ∑ i, (w i z) ^ 2) :=
          integral_mono_of_nonneg (Filter.Eventually.of_forall (fun z => sq_nonneg (g z))) hint
            (ae_restrict_of_forall_mem hHm hpt)
      _ = 2 * B ^ 2 * volume.real H + 2 * p * B ^ 2 * ∑ i, ∫ z in H, (w i z) ^ 2 := by
          rw [integral_add (integrable_const _) (hsumint.const_mul _), setIntegral_const,
            integral_const_mul, integral_finset_sum _ (fun i _ => hwint i), smul_eq_mul]
          ring
      _ ≤ 2 * B ^ 2 * volume.real H + 2 * p * B ^ 2 * (p * max D 0) := by
          have h1 : ∑ i, ∫ z in H, (w i z) ^ 2 ≤ ∑ _i : Fin p, max D 0 :=
            Finset.sum_le_sum (fun i _ => le_trans (hD i) (le_max_left _ _))
          have h2 : ∑ _i : Fin p, max D 0 = p * max D 0 := by simp
          have h3 : 0 ≤ 2 * (p : ℝ) * B ^ 2 := by positivity
          have := mul_le_mul_of_nonneg_left (h1.trans_eq h2) h3
          linarith
  
  have P : ∀ m : ℕ, ∃ C : ℝ, ∀ n, N₀ ≤ n → ∀ L : List (Fin 3), L.length = k + 1 →
      L.count 0 ≤ m + 1 → ∫ z in H, (L.foldr partialDeriv (u n) z) ^ 2 ≤ C := by
    intro m
    induction m with
    | zero =>
      refine ⟨C₂, fun n hn L hL hc => ?_⟩
      rcases Nat.lt_or_ge (L.count 0) 1 with h0 | h1
      · have hnot : (0 : Fin 3) ∉ L := List.count_eq_zero.mp (by omega)
        cases L with
        | nil => simp at hL
        | cons j L₀ =>
          exact htan n hn j L₀ (by simpa using hL)
            (fun a ha h => hnot (h ▸ List.mem_cons_of_mem j ha))
      · have hmem : (0 : Fin 3) ∈ L := List.count_pos_iff.mp (by omega)
        have hp := List.perm_cons_erase hmem
        have hlen : (L.erase 0).length = k := by rw [List.length_erase_of_mem hmem]; omega
        have hcnt : (L.erase 0).count 0 = 0 := by rw [List.count_erase_self]; omega
        have hnot := List.count_eq_zero.mp hcnt
        have hint := htan n hn 0 (L.erase 0) hlen (fun a ha h => hnot (h ▸ ha))
        calc ∫ z in H, (L.foldr partialDeriv (u n) z) ^ 2
            = ∫ z in H, (((0 : Fin 3) :: L.erase 0).foldr partialDeriv (u n) z) ^ 2 := by
              apply setIntegral_congr_fun hHm
              intro z hz
              simp only
              rw [perm (u n) (iterPD (u n) (hu n)) L _ hp z (hHb z hz)]
          _ ≤ C₂ := hint
    | succ m ih =>
      obtain ⟨Cm, hCm⟩ := ih
      have hK : ∀ M : List (Fin 3), ∃ K : ℝ, ∀ n, N₀ ≤ n → M.count 0 = m → M.length + 1 = k →
          ∫ z in H, ((M ++ [0, 0]).foldr partialDeriv (u n) z) ^ 2 ≤ K := by
        intro M
        obtain ⟨p, c, a, I, hc, ha, hinv, hrep⟩ := rep M
        obtain ⟨K, hK⟩ := l2 p c a (hc.continuousOn.mono hKsub)
          (fun i => (ha i).continuousOn.mono hKsub) (max C₁ Cm)
        refine ⟨K, fun n hn hM hMl => hK (fun i => (I i).foldr partialDeriv (u n)) _
          (fun i => (iterPD (u n) (hu n) (I i)).continuousOn.mono hKsub) (fun i => ?_)
          (fun z hz => hrep n hn z (hHb z hz) hz.2)⟩
        rcases hinv i with h | ⟨h1, h2⟩
        · exact le_trans (hlow n hn (I i) (by omega)) (le_max_left _ _)
        · exact le_trans (hCm n hn (I i) (by omega) (by omega)) (le_max_right _ _)
      choose K hK using hK
      have hfin : (K '' {M : List (Fin 3) | M.length = k - 1}).Finite :=
        (List.finite_length_eq (Fin 3) (k - 1)).image K
      obtain ⟨C', hC'⟩ := hfin.bddAbove
      refine ⟨max Cm C', fun n hn L hL hc => ?_⟩
      rcases Nat.lt_or_ge (L.count 0) (m + 2) with h | h
      · exact le_trans (hCm n hn L hL (by omega)) (le_max_left _ _)
      · have hmem : (0 : Fin 3) ∈ L := List.count_pos_iff.mp (by omega)
        have hp1 := List.perm_cons_erase hmem
        have hc1 : (L.erase 0).count 0 = m + 1 := by rw [List.count_erase_self]; omega
        have hl1 : (L.erase 0).length = k := by rw [List.length_erase_of_mem hmem]; omega
        have hmem1 : (0 : Fin 3) ∈ L.erase 0 := List.count_pos_iff.mp (by omega)
        have hp2 := List.perm_cons_erase hmem1
        have hcM : ((L.erase 0).erase 0).count 0 = m := by rw [List.count_erase_self]; omega
        have hk1 : 1 ≤ k := by
          have := List.count_le_length (a := (0 : Fin 3)) (l := L.erase 0); omega
        have hlM : ((L.erase 0).erase 0).length = k - 1 := by
          rw [List.length_erase_of_mem hmem1]; omega
        have hpM : L.Perm (((L.erase 0).erase 0) ++ [0, 0]) :=
          hp1.trans ((hp2.cons 0).trans
            (List.perm_append_comm (l₁ := [0, 0]) (l₂ := (L.erase 0).erase 0)))
        calc ∫ z in H, (L.foldr partialDeriv (u n) z) ^ 2
            = ∫ z in H, ((((L.erase 0).erase 0) ++ [0, 0]).foldr partialDeriv (u n) z) ^ 2 := by
              apply setIntegral_congr_fun hHm
              intro z hz
              simp only
              rw [perm (u n) (iterPD (u n) (hu n)) L _ hpM z (hHb z hz)]
          _ ≤ K ((L.erase 0).erase 0) := hK _ n hn hcM (by omega)
          _ ≤ C' := hC' ⟨_, hlM, rfl⟩
          _ ≤ max Cm C' := le_max_right _ _
  obtain ⟨C, hC⟩ := P k
  exact ⟨C, fun n hn L hL => hC n hn L hL
    (by have := List.count_le_length (a := (0 : Fin 3)) (l := L); omega)⟩

theorem conormal_halfball_estimates (r : ℝ) (hr : 0 < r)
    (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => A z i j) (Metric.ball (0 : E3) r))
    (hsymm : ∀ z ∈ Metric.ball (0 : E3) r, ∀ i j : Fin 3, A z i j = A z j i)
    (hpd : ∀ z ∈ Metric.ball (0 : E3) r, (A z).PosDef)
    (b : E3 → Fin 3 → ℝ) (hb : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun z => b z l) (Metric.ball (0 : E3) r))
    (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f (Metric.ball (0 : E3) r)) (B : ℝ)
    (u : ℕ → E3 → ℝ) (hu : ∀ n, ContDiffOn ℝ ∞ (u n) (Metric.ball (0 : E3) r)) (N₀ : ℕ)
    (heq : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 ≤ z 0 →
      ∑ i : Fin 3, ∑ j : Fin 3, A z i j * partialDeriv i (partialDeriv j (u n)) z
        + ∑ l : Fin 3, b z l * partialDeriv l (u n) z = f z)
    (hbc : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 →
      ∑ i : Fin 3, A z i 0 * partialDeriv i (u n) z = 0)
    (hbd : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 ≤ z 0 → |u n z| ≤ B) :
    ∃ s : ℝ, 0 < s ∧ s < r ∧ ∀ m : ℕ, ∃ C : ℝ, ∀ n, N₀ ≤ n → ∀ z : E3, ‖z‖ < s → 0 ≤ z 0 →
      ‖iteratedFDeriv ℝ m (u n) z‖ ≤ C :=
by
  classical
  have hball : IsOpen (Metric.ball (0 : E3) r) := Metric.isOpen_ball
  
  have iterPD : ∀ (v : E3 → ℝ), ContDiffOn ℝ ∞ v (Metric.ball (0 : E3) r) →
      ∀ L : List (Fin 3), ContDiffOn ℝ ∞ (L.foldr partialDeriv v) (Metric.ball (0 : E3) r) := by
    intro v hv L
    induction L with
    | nil => simpa using hv
    | cons a L ih =>
      rw [List.foldr_cons]
      have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (L.foldr partialDeriv v)) (Metric.ball (0 : E3) r) :=
        ((contDiffOn_infty_iff_fderiv_of_isOpen hball).mp ih).2
      show ContDiffOn ℝ ∞ (fun y => fderiv ℝ (L.foldr partialDeriv v) y (e a)) _
      exact h1.clm_apply contDiffOn_const
  
  have mono : ∀ (g : E3 → ℝ), ContDiffOn ℝ ∞ g (Metric.ball (0 : E3) r) →
      ∀ (ρ₀ : ℝ), ρ₀ < r → ∀ S T : Set E3, S ⊆ T → T ⊆ Metric.closedBall 0 ρ₀ →
      ∫ z in S, (g z) ^ 2 ≤ ∫ z in T, (g z) ^ 2 := by
    intro g hg ρ₀ hρ₀ S T hST hT
    have hsub : Metric.closedBall (0 : E3) ρ₀ ⊆ Metric.ball 0 r :=
      Metric.closedBall_subset_ball hρ₀
    have hcont : ContinuousOn (fun z => (g z) ^ 2) (Metric.closedBall (0 : E3) ρ₀) :=
      (hg.continuousOn.mono hsub).pow 2
    have hint : IntegrableOn (fun z => (g z) ^ 2) (Metric.closedBall (0 : E3) ρ₀) :=
      hcont.integrableOn_compact (isCompact_closedBall 0 ρ₀)
    exact setIntegral_mono_set (hint.mono_set hT)
      (Filter.Eventually.of_forall (fun z => sq_nonneg (g z))) hST.eventuallyLE
  
  obtain ⟨ρ, hρdef⟩ : ∃ ρ : ℕ → ℝ, ρ = fun k => r / 4 + r / 4 * (1 / 2 : ℝ) ^ k := ⟨_, rfl⟩
  have hρlo : ∀ k, r / 4 < ρ k := by
    intro k
    rw [hρdef]
    have : 0 < (1 / 2 : ℝ) ^ k := by positivity
    show r / 4 < r / 4 + r / 4 * (1 / 2 : ℝ) ^ k
    nlinarith
  have hρhi : ∀ k, ρ k ≤ r / 2 := by
    intro k
    rw [hρdef]
    have : (1 / 2 : ℝ) ^ k ≤ 1 := pow_le_one₀ (by norm_num) (by norm_num)
    show r / 4 + r / 4 * (1 / 2 : ℝ) ^ k ≤ r / 2
    nlinarith
  have hρdec : ∀ k, ρ (k + 1) < ρ k := by
    intro k
    rw [hρdef]
    have : 0 < (1 / 2 : ℝ) ^ k := by positivity
    show r / 4 + r / 4 * (1 / 2 : ℝ) ^ (k + 1) < r / 4 + r / 4 * (1 / 2 : ℝ) ^ k
    rw [pow_succ]
    nlinarith
  have hρr : ∀ k, ρ k < r := fun k => by linarith [hρhi k]
  have hρpos : ∀ k, 0 < ρ k := fun k => by linarith [hρlo k]
  
  have P : ∀ k : ℕ, ∃ C : ℝ, ∀ n, N₀ ≤ n → ∀ L : List (Fin 3), L.length ≤ k →
      ∫ z in {z : E3 | ‖z‖ < ρ k ∧ 0 < z 0}, (L.foldr partialDeriv (u n) z) ^ 2 ≤ C := by
    intro k
    induction k with
    | zero =>
      refine ⟨B ^ 2 * (volume.real {z : E3 | ‖z‖ < ρ 0 ∧ 0 < z 0}), ?_⟩
      intro n hn L hL
      have hL0 : L = [] := List.eq_nil_of_length_eq_zero (Nat.le_zero.mp hL)
      subst hL0
      simp only [List.foldr_nil]
      have hHb : {z : E3 | ‖z‖ < ρ 0 ∧ 0 < z 0} ⊆ Metric.ball (0 : E3) r := by
        intro z hz
        have hz' : ‖z‖ < ρ 0 ∧ 0 < z 0 := hz
        rw [Metric.mem_ball, dist_zero_right]
        exact lt_trans hz'.1 (hρr 0)
      have hfin : volume {z : E3 | ‖z‖ < ρ 0 ∧ 0 < z 0} < ⊤ :=
        lt_of_le_of_lt (measure_mono hHb) measure_ball_lt_top
      have h1 := norm_setIntegral_le_of_norm_le_const (f := fun z => (u n z) ^ 2) (C := B ^ 2)
        hfin (by
          intro z hz
          have hz' : ‖z‖ < ρ 0 ∧ 0 < z 0 := hz
          have h2 := hbd n hn z (hHb hz) (le_of_lt hz'.2)
          rw [Real.norm_eq_abs, abs_pow]
          exact pow_le_pow_left₀ (abs_nonneg _) h2 2)
      rw [Real.norm_eq_abs] at h1
      exact le_trans (le_abs_self _) h1
    | succ k ih =>
      obtain ⟨Ck, hCk⟩ := ih
      obtain ⟨CT, hCT⟩ := conormal_tangential_step r hr A hA hsymm hpd b hb f hf u hu N₀ heq hbc
        k (ρ k) (ρ (k + 1)) (hρpos (k + 1)) (hρdec k) (hρr k) Ck hCk
      have hlow : ∀ n, N₀ ≤ n → ∀ L : List (Fin 3), L.length ≤ k →
          ∫ z in {z : E3 | ‖z‖ < ρ (k + 1) ∧ 0 < z 0}, (L.foldr partialDeriv (u n) z) ^ 2
            ≤ Ck := by
        intro n hn L hL
        refine le_trans (mono _ (iterPD (u n) (hu n) L) (ρ k) (hρr k) _ _ ?_ ?_) (hCk n hn L hL)
        · intro z hz
          have hz' : ‖z‖ < ρ (k + 1) ∧ 0 < z 0 := hz
          exact ⟨lt_trans hz'.1 (hρdec k), hz'.2⟩
        · intro z hz
          have hz' : ‖z‖ < ρ k ∧ 0 < z 0 := hz
          rw [Metric.mem_closedBall, dist_zero_right]
          exact le_of_lt hz'.1
      obtain ⟨CN, hCN⟩ := conormal_normal_step r hr A hA hsymm hpd b hb f hf u hu N₀ heq
        k (ρ (k + 1)) (hρpos (k + 1)) (hρr (k + 1)) Ck CT hlow hCT
      refine ⟨max Ck CN, fun n hn L hL => ?_⟩
      rcases Nat.lt_or_ge L.length (k + 1) with h | h
      · exact le_trans (hlow n hn L (Nat.lt_succ_iff.mp h)) (le_max_left _ _)
      · exact le_trans (hCN n hn L (le_antisymm hL h)) (le_max_right _ _)
  
  obtain ⟨K, hK0, hK⟩ := box_sobolev_sup (r / 16) (by positivity)
  refine ⟨r / 8, by positivity, by linarith, fun m => ?_⟩
  obtain ⟨C, hC⟩ := P (m + 3)
  refine ⟨∑ _L : Fin m → Fin 3, Real.sqrt (K * (8 * C)), ?_⟩
  intro n hn z hz hz0
  have hzb : z ∈ Metric.ball (0 : E3) r := by
    rw [Metric.mem_ball, dist_zero_right]; linarith
  refine le_trans (iteratedFDeriv_norm_le_partials _ hball (u n) (hu n) m z hzb) ?_
  refine Finset.sum_le_sum (fun L _ => ?_)
  apply Real.abs_le_sqrt
  have hgs : ContDiffOn ℝ ∞ ((List.ofFn L).foldr partialDeriv (u n)) (Metric.ball 0 r) :=
    iterPD (u n) (hu n) _
  have hboxnorm : ∀ y : E3, (∀ i : Fin 3, z i ≤ y i ∧ y i ≤ z i + r / 16) → ‖y‖ < r / 4 := by
    intro y hy
    have e1 : ∀ i : Fin 3, ‖(y - z) i‖ ^ 2 ≤ (r / 16) ^ 2 := by
      intro i
      have h3 : (y - z) i = y i - z i := by simp
      rw [h3, Real.norm_eq_abs, sq_abs]
      exact pow_le_pow_left₀ (by linarith [(hy i).1]) (by linarith [(hy i).2]) 2
    have h1 : ‖y - z‖ ^ 2 ≤ 3 * (r / 16) ^ 2 := by
      rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_three]
      linarith [e1 0, e1 1, e1 2]
    have h2 : ‖y - z‖ < r / 8 := by
      have h0 : 0 ≤ ‖y - z‖ := norm_nonneg _
      by_contra hcon
      push_neg at hcon
      nlinarith [mul_le_mul hcon hcon (by positivity) h0]
    calc ‖y‖ = ‖(y - z) + z‖ := by rw [sub_add_cancel]
      _ ≤ ‖y - z‖ + ‖z‖ := norm_add_le _ _
      _ < r / 4 := by linarith
  have hclosed : {y : E3 | ∀ i : Fin 3, z i ≤ y i ∧ y i ≤ z i + r / 16} ⊆
      Metric.ball (0 : E3) r := by
    intro y hy
    rw [Metric.mem_ball, dist_zero_right]
    have := hboxnorm y hy
    linarith
  have hopenbox : {y : E3 | ∀ i : Fin 3, z i < y i ∧ y i < z i + r / 16} ⊆
      {y : E3 | ‖y‖ < ρ (m + 3) ∧ 0 < y 0} := by
    intro y hy
    have hy' : ∀ i : Fin 3, z i < y i ∧ y i < z i + r / 16 := hy
    refine ⟨lt_trans (hboxnorm y (fun i => ⟨le_of_lt (hy' i).1, le_of_lt (hy' i).2⟩))
      (hρlo _), ?_⟩
    linarith [(hy' 0).1]
  have hHsub : {y : E3 | ‖y‖ < ρ (m + 3) ∧ 0 < y 0} ⊆ Metric.closedBall 0 (ρ (m + 3)) := by
    intro y hy
    have hy' : ‖y‖ < ρ (m + 3) ∧ 0 < y 0 := hy
    rw [Metric.mem_closedBall, dist_zero_right]
    exact le_of_lt hy'.1
  have hsob := hK z ((List.ofFn L).foldr partialDeriv (u n)) _ hball hgs hclosed
  have hlens : ∀ S ∈ ([[], [0], [1], [1, 0], [2], [2, 0], [2, 1], [2, 1, 0]] :
      List (List (Fin 3))), S.length ≤ 3 := by decide
  have hterm : ∀ S ∈ ([[], [0], [1], [1, 0], [2], [2, 0], [2, 1], [2, 1, 0]] :
      List (List (Fin 3))),
      ∫ y in {y : E3 | ∀ i : Fin 3, z i < y i ∧ y i < z i + r / 16},
        (S.foldr partialDeriv ((List.ofFn L).foldr partialDeriv (u n)) y) ^ 2 ≤ C := by
    intro S hS
    have hlen := hlens S hS
    have heqf : S.foldr partialDeriv ((List.ofFn L).foldr partialDeriv (u n)) =
        (S ++ List.ofFn L).foldr partialDeriv (u n) := by
      rw [List.foldr_append]
    rw [heqf]
    refine le_trans (mono _ (iterPD (u n) (hu n) _) (ρ (m + 3)) (hρr _) _ _ hopenbox hHsub) ?_
    apply hC n hn
    rw [List.length_append, List.length_ofFn]
    omega
  have hsum : (([[], [0], [1], [1, 0], [2], [2, 0], [2, 1], [2, 1, 0]] :
      List (List (Fin 3))).map
      (fun S => ∫ y in {y : E3 | ∀ i : Fin 3, z i < y i ∧ y i < z i + r / 16},
        (S.foldr partialDeriv ((List.ofFn L).foldr partialDeriv (u n)) y) ^ 2)).sum
        ≤ 8 * C := by
    have h := List.sum_le_card_nsmul _ C (by
      intro x hx
      obtain ⟨S, hS, rfl⟩ := List.mem_map.mp hx
      exact hterm S hS)
    have h8 : (([[], [0], [1], [1, 0], [2], [2, 0], [2, 1], [2, 1, 0]] :
        List (List (Fin 3))).map
        (fun S => ∫ y in {y : E3 | ∀ i : Fin 3, z i < y i ∧ y i < z i + r / 16},
          (S.foldr partialDeriv ((List.ofFn L).foldr partialDeriv (u n)) y) ^ 2)).length = 8 := by
      simp
    rw [h8, nsmul_eq_mul] at h
    calc _ ≤ ((8 : ℕ) : ℝ) * C := h
      _ = 8 * C := by norm_num
  calc ((List.ofFn L).foldr partialDeriv (u n) z) ^ 2 ≤ K * _ := hsob
    _ ≤ K * (8 * C) := mul_le_mul_of_nonneg_left hsum hK0

theorem halfball_cutoff_family (s : ℝ) (hs : 0 < s) (v : ℕ → E3 → ℝ)
    (hv : ∀ n, ContDiffOn ℝ ∞ (v n) (Metric.ball (0 : E3) s)) (C : ℕ → ℝ)
    (hC : ∀ (m n : ℕ) (z : E3), ‖z‖ < s → 0 ≤ z 0 → ‖iteratedFDeriv ℝ m (v n) z‖ ≤ C m) :
    ∃ (w : ℕ → E3 → ℝ) (B : ℕ → ℝ), (∀ n, ContDiff ℝ ∞ (w n)) ∧
      (∀ (m n : ℕ) (y : E3), 0 ≤ y 0 → ‖iteratedFDeriv ℝ m (w n) y‖ ≤ B m) ∧
      ∀ (m n : ℕ) (z : E3), ‖z‖ < s / 4 → iteratedFDeriv ℝ m (w n) z = iteratedFDeriv ℝ m (v n) z :=
by
  classical
  have hs4 : 0 < s / 4 := by linarith
  have hs42 : s / 4 < s / 2 := by linarith
  let χ : ContDiffBump (0 : E3) := ⟨s / 4, s / 2, hs4, hs42⟩
  have hχs : ContDiff ℝ ∞ (⇑χ) := χ.contDiff
  have hχ1 : ∀ x : E3, ‖x‖ ≤ s / 4 → χ x = 1 := by
    intro x hx
    apply χ.one_of_mem_closedBall
    show x ∈ Metric.closedBall (0 : E3) (s / 4)
    rw [Metric.mem_closedBall, dist_zero_right]
    exact hx
  have hχ0 : ∀ x : E3, s / 2 ≤ ‖x‖ → χ x = 0 := by
    intro x hx
    apply χ.zero_of_le_dist
    show s / 2 ≤ dist x 0
    rw [dist_zero_right]
    exact hx
  have hK : ∀ i : ℕ, ∃ c : ℝ, ∀ y, ‖iteratedFDeriv ℝ i (⇑χ) y‖ ≤ c := by
    intro i
    have hcs : HasCompactSupport (iteratedFDeriv ℝ i (⇑χ)) :=
      χ.hasCompactSupport.iteratedFDeriv i
    have hcont : Continuous (iteratedFDeriv ℝ i (⇑χ)) :=
      hχs.continuous_iteratedFDeriv (by exact_mod_cast le_top)
    exact hcont.bounded_above_of_compact_support hcs
  choose c hc using hK
  have hKb : ∀ i y, ‖iteratedFDeriv ℝ i (⇑χ) y‖ ≤ max (c i) 0 :=
    fun i y => (hc i y).trans (le_max_left _ _)
  have hK0 : ∀ i, 0 ≤ max (c i) 0 := fun i => le_max_right _ _
  have hC0 : ∀ j, 0 ≤ C j := by
    intro j
    exact (norm_nonneg _).trans (hC j 0 0 (by simpa using hs) (by simp))
  have hfar : ∀ n (y : E3), s / 2 < ‖y‖ →
      (fun x => χ x * v n x) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
    intro n y hy
    filter_upwards [(isOpen_lt continuous_const continuous_norm).mem_nhds hy] with x hx
    rw [hχ0 x (le_of_lt hx), zero_mul]
  refine ⟨fun n y => χ y * v n y,
    fun m => ∑ i ∈ Finset.range (m + 1), (m.choose i : ℝ) * max (c i) 0 * C (m - i), ?_, ?_, ?_⟩
  · intro n
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : ‖y‖ < s
    · exact (hχs.contDiffOn.mul (hv n)).contDiffAt
        (Metric.isOpen_ball.mem_nhds (by simpa using hy))
    · push_neg at hy
      exact contDiffAt_const.congr_of_eventuallyEq (hfar n y (by linarith))
  · intro m n y hy0
    by_cases hy : ‖y‖ < s
    · have hyS : y ∈ Metric.ball (0 : E3) s := by simpa using hy
      have hL := norm_iteratedFDerivWithin_mul_le (N := ∞) hχs.contDiffOn (hv n)
        Metric.isOpen_ball.uniqueDiffOn hyS (n := m) (by exact_mod_cast le_top)
      rw [iteratedFDerivWithin_of_isOpen m Metric.isOpen_ball hyS] at hL
      have hrw : ∀ i, iteratedFDerivWithin ℝ i (⇑χ) (Metric.ball (0 : E3) s) y =
          iteratedFDeriv ℝ i (⇑χ) y :=
        fun i => iteratedFDerivWithin_of_isOpen i Metric.isOpen_ball hyS
      have hrw2 : ∀ i, iteratedFDerivWithin ℝ i (v n) (Metric.ball (0 : E3) s) y =
          iteratedFDeriv ℝ i (v n) y :=
        fun i => iteratedFDerivWithin_of_isOpen i Metric.isOpen_ball hyS
      simp only [hrw, hrw2] at hL
      refine hL.trans (Finset.sum_le_sum fun i _ => ?_)
      have h1 := hKb i y
      have h2 := hC (m - i) n y hy hy0
      have h3 : (0 : ℝ) ≤ (m.choose i : ℝ) := Nat.cast_nonneg _
      exact mul_le_mul (mul_le_mul_of_nonneg_left h1 h3) h2 (norm_nonneg _)
        (mul_nonneg h3 (hK0 i))
    · push_neg at hy
      have h := (hfar n y (by linarith)).iteratedFDeriv ℝ m
      rw [h.eq_of_nhds]
      simp only [iteratedFDeriv_zero_fun, Pi.zero_apply, norm_zero]
      exact Finset.sum_nonneg fun i _ =>
        mul_nonneg (mul_nonneg (Nat.cast_nonneg _) (hK0 i)) (hC0 _)
  · intro m n z hz
    have hev : (fun x => χ x * v n x) =ᶠ[𝓝 z] v n := by
      have hzb : z ∈ Metric.ball (0 : E3) (s / 4) := by simpa using hz
      filter_upwards [Metric.isOpen_ball.mem_nhds hzb] with x hx
      have hx' : ‖x‖ < s / 4 := by simpa using hx
      rw [hχ1 x (le_of_lt hx'), one_mul]
    exact (hev.iteratedFDeriv ℝ m).eq_of_nhds

theorem halfball_jet_compactness (s : ℝ) (hs : 0 < s) (v : ℕ → E3 → ℝ)
    (hv : ∀ n, ContDiffOn ℝ ∞ (v n) (Metric.ball (0 : E3) s)) (C : ℕ → ℝ)
    (hC : ∀ (m n : ℕ) (z : E3), ‖z‖ < s → 0 ≤ z 0 → ‖iteratedFDeriv ℝ m (v n) z‖ ≤ C m) :
    ∃ (ψ : ℕ → ℕ) (F : E3 → ℝ), StrictMono ψ ∧ ContDiff ℝ ∞ F ∧
      ∀ (m : ℕ) (z : E3), ‖z‖ < s / 4 → 0 ≤ z 0 →
        Tendsto (fun k => iteratedFDeriv ℝ m (v (ψ k)) z) atTop (𝓝 (iteratedFDeriv ℝ m F z)) :=
by
  classical
  
  obtain ⟨hbound, hsum⟩ := seeley_weight_bound
  obtain ⟨a, ha, hmom⟩ := seeley_weights_limit
    (fun i => Real.exp 4 * (4:ℝ) ^ i * (1 / 2 : ℝ) ^ (i * (i + 1) / 2))
    (fun K i => if i < K then ∏ j ∈ (Finset.range K).erase i,
        ((-1 - (2:ℝ) ^ j) / ((2:ℝ) ^ i - (2:ℝ) ^ j)) else 0)
    hsum
    (by
      intro K i
      by_cases h : i < K
      · simp only [if_pos h]
        exact hbound K i h
      · simp only [if_neg h, abs_zero]
        positivity)
    (by
      intro K i h
      simp only [if_neg (not_lt.mpr h)])
    (by
      intro K p hp
      refine Eq.trans ?_ (seeley_weight_moment K p hp)
      refine Finset.sum_congr rfl ?_
      intro i hi
      simp only [if_pos (Finset.mem_range.mp hi)])
  have hid := seeley_multilinear_identity a ha hmom
  have hglue : ∀ (m : ℕ) (h : E3 → ContinuousMultilinearMap ℝ (fun _ : Fin m => E3) ℝ)
      (Q : E3 → E3 →L[ℝ] ContinuousMultilinearMap ℝ (fun _ : Fin m => E3) ℝ),
      Continuous h → Continuous Q → (∀ y : E3, y 0 ≠ 0 → HasFDerivAt h (Q y) y) →
      ∀ y : E3, HasFDerivAt h (Q y) y :=
    fun m h Q hh hQ hoff y => halfspace_hasFDerivAt_glue h Q hh hQ hoff y
  
  obtain ⟨w, B, hw, hwB, hwv⟩ := halfball_cutoff_family s hs v hv C hC
  have hext : ∀ n, ∃ W : E3 → ℝ, ContDiff ℝ ∞ W ∧
      (∀ (m : ℕ) (y : E3), ‖iteratedFDeriv ℝ m W y‖ ≤
        (1 + ∑' k : ℕ, |a k| * ((2:ℝ) ^ k) ^ m) * B m) ∧
      ∀ (m : ℕ) (y : E3), 0 ≤ y 0 → iteratedFDeriv ℝ m W y = iteratedFDeriv ℝ m (w n) y :=
    fun n => seeley_halfspace_extension a ha hid hglue (w n) (hw n) B
      (fun m y hy => hwB m n y hy)
  choose Wf hWs hWb hWe using hext
  obtain ⟨φ, F, hφ, hF, -, hconv⟩ := smooth_arzela_ascoli_family (ι := Unit)
    (fun n _ => Wf n) (fun m => (1 + ∑' k : ℕ, |a k| * ((2:ℝ) ^ k) ^ m) * B m)
    (fun n _ => hWs n) (fun n _ m y => hWb n m y)
  refine ⟨φ, F (), hφ, hF (), ?_⟩
  intro m z hz hz0
  refine (hconv () m z).congr ?_
  intro k
  show iteratedFDeriv ℝ m (Wf (φ k)) z = iteratedFDeriv ℝ m (v (φ k)) z
  rw [hWe (φ k) m z hz0, hwv m (φ k) z hz]

theorem flat_limit_globalize [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (Ψ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (F : E3 → ℝ) (hF : ContDiff ℝ ∞ F)
    (t₁ t₂ : ℝ) (ht₁ : 0 < t₁) (ht : t₁ < t₂)
    (hsub : Metric.closedBall (0 : E3) t₂ ⊆ Ψ.source) :
    ∃ G : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ G ∧ ∀ z ∈ Metric.ball (0 : E3) t₁, G (Ψ z) = F z :=
by
  let χ : ContDiffBump (0 : E3) := ⟨t₁, t₂, ht₁, ht⟩
  have hχ : ContDiff ℝ ∞ (fun y : E3 => χ y) := χ.contDiff (n := ⊤)
  obtain ⟨F', hF'⟩ : ∃ F' : E3 → ℝ, F' = fun y => χ y * F y := ⟨_, rfl⟩
  have hF'smooth : ContDiff ℝ ∞ F' := by
    rw [hF']
    exact hχ.mul hF
  have hF'0 : ∀ y : E3, t₂ ≤ ‖y‖ → F' y = 0 := by
    intro y hy
    rw [hF']
    show χ y * F y = 0
    have : χ y = 0 := χ.zero_of_le_dist (by rw [dist_zero_right]; exact hy)
    rw [this, zero_mul]
  have hF'1 : ∀ y : E3, ‖y‖ ≤ t₁ → F' y = F y := by
    intro y hy
    rw [hF']
    show χ y * F y = F y
    have : χ y = 1 := χ.one_of_mem_closedBall (by
      rw [Metric.mem_closedBall, dist_zero_right]; exact hy)
    rw [this, one_mul]
  have hKc : IsCompact (Ψ '' Metric.closedBall (0 : E3) t₂) :=
    (isCompact_closedBall (0 : E3) t₂).image_of_continuousOn
      (Ψ.contMDiffOn.continuousOn.mono hsub)
  have hKcl : IsClosed (Ψ '' Metric.closedBall (0 : E3) t₂) := hKc.isClosed
  have hzero : ∀ p : M, p ∉ Ψ '' Metric.closedBall (0 : E3) t₂ →
      Ψ.target.indicator (fun p => F' (Ψ.symm p)) p = 0 := by
    intro p hp
    by_cases hpt : p ∈ Ψ.target
    · rw [Set.indicator_of_mem hpt]
      have hy : Ψ (Ψ.symm p) = p := Ψ.toPartialEquiv.right_inv hpt
      have hle : t₂ ≤ ‖Ψ.symm p‖ := by
        by_contra hlt
        push_neg at hlt
        apply hp
        refine ⟨Ψ.symm p, ?_, hy⟩
        rw [Metric.mem_closedBall, dist_zero_right]
        exact le_of_lt hlt
      exact hF'0 _ hle
    · exact Set.indicator_of_notMem hpt _
  refine ⟨Ψ.target.indicator (fun p => F' (Ψ.symm p)), ?_, ?_⟩
  · intro p
    by_cases hpt : p ∈ Ψ.target
    · have hT : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun p => F' (Ψ.symm p)) Ψ.target :=
        hF'smooth.contMDiff.comp_contMDiffOn Ψ.symm.contMDiffOn
      have hN : Ψ.target ∈ 𝓝 p := Ψ.open_target.mem_nhds hpt
      have hev : Ψ.target.indicator (fun p => F' (Ψ.symm p)) =ᶠ[𝓝 p]
          fun p => F' (Ψ.symm p) :=
        Filter.eventually_of_mem hN (fun q hq => Set.indicator_of_mem hq _)
      exact (hT.contMDiffAt hN).congr_of_eventuallyEq hev
    · have hpK : p ∈ (Ψ '' Metric.closedBall (0 : E3) t₂)ᶜ := by
        rintro ⟨y, hyK, rfl⟩
        exact hpt (Ψ.toPartialEquiv.map_source (hsub hyK))
      have hev : Ψ.target.indicator (fun p => F' (Ψ.symm p)) =ᶠ[𝓝 p]
          fun _ => (0 : ℝ) :=
        Filter.eventually_of_mem (hKcl.isOpen_compl.mem_nhds hpK) (fun q hq => hzero q hq)
      exact contMDiffAt_const.congr_of_eventuallyEq hev
  · intro z hz
    have hzn : ‖z‖ < t₁ := by
      rw [Metric.mem_ball, dist_zero_right] at hz
      exact hz
    have hzs : z ∈ Ψ.source := hsub (by
      rw [Metric.mem_closedBall, dist_zero_right]; linarith)
    have hzt : Ψ z ∈ Ψ.target := Ψ.toPartialEquiv.map_source hzs
    rw [Set.indicator_of_mem hzt]
    have hl : Ψ.symm (Ψ z) = z := Ψ.toPartialEquiv.left_inv hzs
    show F' (Ψ.symm (Ψ z)) = F z
    rw [hl]
    exact hF'1 z (le_of_lt hzn)

theorem jet2_transfer [IsManifold 𝓘(ℝ, E3) ∞ M]
    (Ψ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (z : E3) (hz : z ∈ Ψ.source)
    (u : ℕ → M → ℝ) (hu : ∀ n, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u n))
    (v : M → ℝ) (hv : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ v)
    (hconv : ∀ m : ℕ, m ≤ 2 → Tendsto (fun n => iteratedFDeriv ℝ m (fun y => u n (Ψ y)) z) atTop
      (𝓝 (iteratedFDeriv ℝ m (fun y => v (Ψ y)) z))) :
    Tendsto (fun n => u n (Ψ z)) atTop (𝓝 (v (Ψ z))) ∧
    (∀ i : Fin 3, Tendsto (fun n => partialDeriv i
        (fun y => u n ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z))) atTop
      (𝓝 (partialDeriv i (fun y => v ((chartAt E3 (Ψ z)).symm y)) (chartAt E3 (Ψ z) (Ψ z))))) ∧
    (∀ i j : Fin 3, Tendsto (fun n => partialDeriv i (partialDeriv j
        (fun y => u n ((chartAt E3 (Ψ z)).symm y))) (chartAt E3 (Ψ z) (Ψ z))) atTop
      (𝓝 (partialDeriv i (partialDeriv j (fun y => v ((chartAt E3 (Ψ z)).symm y)))
        (chartAt E3 (Ψ z) (Ψ z))))) :=
by
  classical
  
  have hev : ∀ (m : ℕ) (hm : m ≤ 2) (w : Fin m → E3),
      Tendsto (fun n => iteratedFDeriv ℝ m (fun y => u n (Ψ y)) z w) atTop
        (𝓝 (iteratedFDeriv ℝ m (fun y => v (Ψ y)) z w)) := fun m hm w =>
    ((continuous_eval_const w).tendsto _).comp (hconv m hm)
  have ha : Tendsto (fun n => u n (Ψ z)) atTop (𝓝 (v (Ψ z))) := by
    have h0 := hev 0 (by norm_num) Fin.elim0
    simpa only [iteratedFDeriv_zero_apply] using h0
  refine ⟨ha, ?_⟩
  
  have hS : IsOpen Ψ.source := Ψ.open_source
  have hcomp : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      ContDiffOn ℝ ∞ (fun y => w (Ψ y)) Ψ.source := fun w hw =>
    contMDiffOn_iff_contDiffOn.mp (hw.comp_contMDiffOn Ψ.contMDiffOn)
  set q := Ψ z with hqdef
  set c := chartAt E3 q with hcdef
  set y₀ := c q with hy₀def
  have hq : q ∈ Ψ.target := Ψ.toPartialEquiv.map_source hz
  have hΨsq : Ψ.symm q = z := Ψ.toPartialEquiv.left_inv hz
  have hcq : c.symm y₀ = q := c.left_inv (mem_chart_source E3 q)
  
  obtain ⟨O, hOdef⟩ : ∃ O : Set E3, O = c.target ∩ c.symm ⁻¹' Ψ.target := ⟨_, rfl⟩
  have hO : IsOpen O := by
    rw [hOdef]
    exact c.continuousOn_symm.isOpen_inter_preimage c.open_target Ψ.open_target
  have hy₀O : y₀ ∈ O := by
    rw [hOdef]
    refine ⟨mem_chart_target E3 q, ?_⟩
    show c.symm y₀ ∈ Ψ.target
    rw [hcq]; exact hq
  obtain ⟨τ, hτdef⟩ : ∃ τ : E3 → E3, τ = fun y => Ψ.symm (c.symm y) := ⟨_, rfl⟩
  have hτ : ContDiffOn ℝ ∞ τ O := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (Ψ.symm ∘ c.symm) O := by
      rw [hOdef]
      exact Ψ.symm.contMDiffOn.comp (contMDiffOn_chart_symm.mono Set.inter_subset_left)
        (fun y hy => hy.2)
    rw [hτdef]
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hτS : ∀ y ∈ O, τ y ∈ Ψ.source := by
    intro y hy
    rw [hOdef] at hy
    rw [hτdef]
    exact Ψ.toPartialEquiv.map_target hy.2
  have hΨτ : ∀ y ∈ O, Ψ (τ y) = c.symm y := by
    intro y hy
    rw [hOdef] at hy
    rw [hτdef]
    exact Ψ.toPartialEquiv.right_inv hy.2
  have hτy₀ : τ y₀ = z := by
    rw [hτdef]
    show Ψ.symm (c.symm y₀) = z
    rw [hcq, hΨsq]
  
  have jet : ∀ U : E3 → ℝ, ContDiffOn ℝ ∞ U Ψ.source →
      (∀ i : Fin 3, partialDeriv i (fun y => U (τ y)) y₀ =
          iteratedFDeriv ℝ 1 U z (fun _ => fderiv ℝ τ y₀ (e i))) ∧
      (∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun y => U (τ y))) y₀ =
          iteratedFDeriv ℝ 2 U z ![fderiv ℝ τ y₀ (e i), fderiv ℝ τ y₀ (e j)] +
          iteratedFDeriv ℝ 1 U z (fun _ => fderiv ℝ (fun y => fderiv ℝ τ y (e j)) y₀ (e i))) := by
    intro U hU
    have hUd : ∀ x ∈ Ψ.source, DifferentiableAt ℝ U x := fun x hx =>
      (hU.differentiableOn (by simp)).differentiableAt (hS.mem_nhds hx)
    have hDU : ContDiffOn ℝ ∞ (fderiv ℝ U) Ψ.source := hU.fderiv_of_isOpen hS (by simp)
    have hDUd : ∀ x ∈ Ψ.source, DifferentiableAt ℝ (fderiv ℝ U) x := fun x hx =>
      (hDU.differentiableOn (by simp)).differentiableAt (hS.mem_nhds hx)
    have hτd : ∀ y ∈ O, DifferentiableAt ℝ τ y := fun y hy =>
      (hτ.differentiableOn (by simp)).differentiableAt (hO.mem_nhds hy)
    have hA : ContDiffOn ℝ ∞ (fderiv ℝ τ) O := hτ.fderiv_of_isOpen hO (by simp)
    have hAd : DifferentiableAt ℝ (fderiv ℝ τ) y₀ :=
      (hA.differentiableOn (by simp)).differentiableAt (hO.mem_nhds hy₀O)
    have hwd : ∀ j : Fin 3, DifferentiableAt ℝ (fun y => fderiv ℝ τ y (e j)) y₀ := fun j =>
      hAd.clm_apply (differentiableAt_const _)
    have hC : DifferentiableAt ℝ (fun y => fderiv ℝ U (τ y)) y₀ :=
      (hDUd (τ y₀) (hτS y₀ hy₀O)).comp y₀ (hτd y₀ hy₀O)
    have hCd : fderiv ℝ (fun y => fderiv ℝ U (τ y)) y₀ =
        (fderiv ℝ (fderiv ℝ U) (τ y₀)).comp (fderiv ℝ τ y₀) :=
      fderiv_comp y₀ (hDUd (τ y₀) (hτS y₀ hy₀O)) (hτd y₀ hy₀O)
    have hfirst : ∀ y ∈ O, ∀ j : Fin 3, partialDeriv j (fun y => U (τ y)) y =
        fderiv ℝ U (τ y) (fderiv ℝ τ y (e j)) := by
      intro y hy j
      show fderiv ℝ (U ∘ τ) y (e j) = _
      rw [fderiv_comp y (hUd (τ y) (hτS y hy)) (hτd y hy)]
      rfl
    refine ⟨fun i => ?_, fun i j => ?_⟩
    · rw [hfirst y₀ hy₀O i, iteratedFDeriv_one_apply, hτy₀]
    · have hevj : partialDeriv j (fun y => U (τ y)) =ᶠ[𝓝 y₀]
          fun y => fderiv ℝ U (τ y) (fderiv ℝ τ y (e j)) := by
        filter_upwards [hO.mem_nhds hy₀O] with y hy
        exact hfirst y hy j
      show fderiv ℝ (partialDeriv j (fun y => U (τ y))) y₀ (e i) = _
      rw [hevj.fderiv_eq, fderiv_clm_apply hC (hwd j), hCd, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.comp_apply, ContinuousLinearMap.flip_apply,
        ContinuousLinearMap.comp_apply, iteratedFDeriv_two_apply, iteratedFDeriv_one_apply, hτy₀]
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons]
      ring
  
  have hloc : ∀ F₁ F₂ : E3 → ℝ, F₁ =ᶠ[𝓝 y₀] F₂ →
      (∀ i : Fin 3, partialDeriv i F₁ y₀ = partialDeriv i F₂ y₀) ∧
      (∀ i j : Fin 3, partialDeriv i (partialDeriv j F₁) y₀ =
        partialDeriv i (partialDeriv j F₂) y₀) := by
    intro F₁ F₂ hF
    refine ⟨fun i => ?_, fun i j => ?_⟩
    · show fderiv ℝ F₁ y₀ (e i) = fderiv ℝ F₂ y₀ (e i)
      rw [hF.fderiv_eq]
    · have hevj : partialDeriv j F₁ =ᶠ[𝓝 y₀] partialDeriv j F₂ := by
        filter_upwards [hF.eventuallyEq_nhds] with y hy
        show fderiv ℝ F₁ y (e j) = fderiv ℝ F₂ y (e j)
        rw [hy.fderiv_eq]
      show fderiv ℝ (partialDeriv j F₁) y₀ (e i) = fderiv ℝ (partialDeriv j F₂) y₀ (e i)
      rw [hevj.fderiv_eq]
  have hgerm : ∀ w : M → ℝ, (fun y => w (c.symm y)) =ᶠ[𝓝 y₀] (fun y => w (Ψ (τ y))) := by
    intro w
    filter_upwards [hO.mem_nhds hy₀O] with y hy
    rw [hΨτ y hy]
  have hJ : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      (∀ i : Fin 3, partialDeriv i (fun y => w (c.symm y)) y₀ =
          iteratedFDeriv ℝ 1 (fun y => w (Ψ y)) z (fun _ => fderiv ℝ τ y₀ (e i))) ∧
      (∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun y => w (c.symm y))) y₀ =
          iteratedFDeriv ℝ 2 (fun y => w (Ψ y)) z ![fderiv ℝ τ y₀ (e i), fderiv ℝ τ y₀ (e j)] +
          iteratedFDeriv ℝ 1 (fun y => w (Ψ y)) z
            (fun _ => fderiv ℝ (fun y => fderiv ℝ τ y (e j)) y₀ (e i))) := by
    intro w hw
    obtain ⟨h1, h2⟩ := jet (fun y => w (Ψ y)) (hcomp w hw)
    obtain ⟨l1, l2⟩ := hloc _ _ (hgerm w)
    exact ⟨fun i => (l1 i).trans (h1 i), fun i j => (l2 i j).trans (h2 i j)⟩
  obtain ⟨hJv1, hJv2⟩ := hJ v hv
  refine ⟨fun i => ?_, fun i j => ?_⟩
  · rw [hJv1 i]
    exact Tendsto.congr (fun n => ((hJ (u n) (hu n)).1 i).symm)
      (hev 1 (by norm_num) (fun _ => fderiv ℝ τ y₀ (e i)))
  · rw [hJv2 i j]
    exact Tendsto.congr (fun n => ((hJ (u n) (hu n)).2 i j).symm)
      ((hev 2 (by norm_num) ![fderiv ℝ τ y₀ (e i), fderiv ℝ τ y₀ (e j)]).add
        (hev 1 (by norm_num) (fun _ => fderiv ℝ (fun y => fderiv ℝ τ y (e j)) y₀ (e i))))

theorem neumann_local_boundary [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (h : M → ℝ) (hh : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ h) (B : ℝ)
    (ρs : ℕ → ℝ) (hρs : ∀ n : ℕ, (n : ℝ) ≤ ρs n) (W : ℕ → M → ℝ)
    (hW : ∀ n : ℕ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (W n))
    (hlap : ∀ (n : ℕ) (p : M), 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρs n ≤ ‖y‖} →
      g.lapM (W n) p = h p)
    (hneu : ∀ (n : ℕ) (p : M), β p = 0 → g.gradInner (W n) β p = 0)
    (hbd : ∀ (n : ℕ) (p : M), 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρs n < ‖y‖} →
      |W n p| ≤ B)
    (p : M) (hp : β p = 0) :
    ∃ V : Set M, IsOpen V ∧ p ∈ V ∧ ∀ φ : ℕ → ℕ, StrictMono φ →
      ∃ (ψ : ℕ → ℕ) (G : M → ℝ), StrictMono ψ ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ G ∧
        ∀ q ∈ V, 0 ≤ β q →
          Tendsto (fun m => W (φ (ψ m)) q) atTop (𝓝 (G q)) ∧
          (∀ i : Fin 3, Tendsto (fun m => partialDeriv i
              (fun y => W (φ (ψ m)) ((chartAt E3 q).symm y)) (chartAt E3 q q)) atTop
            (𝓝 (partialDeriv i (fun y => G ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
          (∀ i j : Fin 3, Tendsto (fun m => partialDeriv i (partialDeriv j
              (fun y => W (φ (ψ m)) ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
            (𝓝 (partialDeriv i (partialDeriv j (fun y => G ((chartAt E3 q).symm y)))
              (chartAt E3 q q)))) :=
by
  classical
  have hβs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β := hβ.1
  have hreg := hβ.2.1
  
  obtain ⟨Ψ, r₀, hr₀, hsrc, hΨ0, hβΨ⟩ := boundary_flat_chart β hβs p hp (hreg p hp)
  
  obtain ⟨ρ, N, hN, hesc⟩ := end_chart_escape g hAF k p
  have h0 : (0 : E3) ∈ Ψ.source := by rw [hsrc]; exact Metric.mem_ball_self hr₀
  have hΨc : ContinuousAt Ψ 0 :=
    Ψ.contMDiffOn.continuousOn.continuousAt (Ψ.open_source.mem_nhds h0)
  have hΨN : ∀ᶠ z in 𝓝 (0 : E3), Ψ z ∈ N :=
    hΨc.preimage_mem_nhds (by rw [hΨ0]; exact hN)
  obtain ⟨ε, hε, hεN⟩ := Metric.eventually_nhds_iff.mp hΨN
  obtain ⟨r, hrdef⟩ : ∃ r : ℝ, r = min ε r₀ := ⟨_, rfl⟩
  have hr : 0 < r := by rw [hrdef]; exact lt_min hε hr₀
  have hrr₀ : r ≤ r₀ := by rw [hrdef]; exact min_le_right _ _
  have hrε : r ≤ ε := by rw [hrdef]; exact min_le_left _ _
  have hballsub : Metric.ball (0 : E3) r ⊆ Ψ.source := by
    rw [hsrc]; exact Metric.ball_subset_ball hrr₀
  have hinN : ∀ z ∈ Metric.ball (0 : E3) r, Ψ z ∈ N := by
    intro z hz
    apply hεN
    have : dist z 0 < r := hz
    linarith
  obtain ⟨N₀, hN₀⟩ := exists_nat_gt ρ
  have hfar : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r,
      Ψ z ∉ (hAF.ends k).Φ '' {y : E3 | ρs n ≤ ‖y‖} ∧
      Ψ z ∉ (hAF.ends k).Φ '' {y : E3 | ρs n < ‖y‖} := by
    intro n hn z hz
    have h1 : ρ < ρs n := by
      have h2 : (N₀ : ℝ) ≤ (n : ℝ) := by exact_mod_cast hn
      linarith [hρs n]
    constructor
    · rintro ⟨y, hy, hyz⟩
      have hy' : ρs n ≤ ‖y‖ := hy
      exact hesc y (lt_of_lt_of_le h1 hy') (by rw [hyz]; exact hinN z hz)
    · rintro ⟨y, hy, hyz⟩
      have hy' : ρs n < ‖y‖ := hy
      exact hesc y (lt_trans h1 hy') (by rw [hyz]; exact hinN z hz)
  
  obtain ⟨hAs, hAsymm, hApd, hΓs⟩ := flat_coeff_regular g Ψ
  have hcomp : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      ContDiffOn ℝ ∞ (fun z => w (Ψ z)) Ψ.source := by
    intro w hw
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (w ∘ Ψ) Ψ.source :=
      hw.comp_contMDiffOn Ψ.contMDiffOn
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hbS : ∀ l : Fin 3, ContDiffOn ℝ ∞ (fun z => -∑ i : Fin 3, ∑ j : Fin 3,
      (g.coeff Ψ z)⁻¹ i j * christoffel (g.coeff Ψ) l i j z) (Metric.ball (0 : E3) r) := by
    intro l
    refine ContDiffOn.neg ?_
    refine ContDiffOn.sum (fun i _ => ContDiffOn.sum (fun j _ => ?_))
    exact ((hAs i j).mul (hΓs l i j)).mono hballsub
  have heqS : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 ≤ z 0 →
      ∑ i : Fin 3, ∑ j : Fin 3, (g.coeff Ψ z)⁻¹ i j *
          partialDeriv i (partialDeriv j (fun y => W n (Ψ y))) z
        + ∑ l : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3,
            (g.coeff Ψ z)⁻¹ i j * christoffel (g.coeff Ψ) l i j z) *
          partialDeriv l (fun y => W n (Ψ y)) z = h (Ψ z) := by
    intro n hn z hz hz0
    have hzs : z ∈ Ψ.source := hballsub hz
    have hβz : 0 ≤ β (Ψ z) := by
      rw [hβΨ z (Metric.ball_subset_ball hrr₀ hz)]; exact hz0
    have h1 := hlap n (Ψ z) hβz (hfar n hn z hz).1
    have hinv := lapLocal_chart_invariant g Ψ (W n) Set.univ isOpen_univ
      (hW n).contMDiffOn z hzs trivial
    have e2 : lapM g (W n) (Ψ z) = g.lapM (W n) (Ψ z) := rfl
    rw [e2, h1] at hinv
    rw [← hinv]
    unfold lapLocal
    simp only [Function.comp_def, Fin.sum_univ_three]
    ring
  have hπ : ∀ z ∈ Metric.ball (0 : E3) r, ∀ j : Fin 3,
      partialDeriv j (fun y => β (Ψ y)) z = if j = 0 then (1 : ℝ) else 0 := by
    intro z hz j
    have hev : (fun y => β (Ψ y)) =ᶠ[𝓝 z] (fun y : E3 => y 0) := by
      filter_upwards [Metric.isOpen_ball.mem_nhds (Metric.ball_subset_ball hrr₀ hz)] with y hy
      exact hβΨ y hy
    show fderiv ℝ (fun y => β (Ψ y)) z (e j) = _
    rw [hev.fderiv_eq]
    show fderiv ℝ (⇑(EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ)) z (e j) = _
    rw [ContinuousLinearMap.fderiv]
    show (e j) 0 = _
    simp [EuclideanSpace.single_apply, eq_comm]
  have hbcS : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, z 0 = 0 →
      ∑ i : Fin 3, (g.coeff Ψ z)⁻¹ i 0 * partialDeriv i (fun y => W n (Ψ y)) z = 0 := by
    intro n _ z hz hz0
    have hzs : z ∈ Ψ.source := hballsub hz
    have hβz : β (Ψ z) = 0 := by
      rw [hβΨ z (Metric.ball_subset_ball hrr₀ hz)]; exact hz0
    have h1 := hneu n (Ψ z) hβz
    rw [gradInner_flat_chart g Ψ (W n) β (hW n) hβs z hzs] at h1
    simp only [hπ z hz] at h1
    simp only [Fin.sum_univ_three] at h1 ⊢
    simpa using h1
  have hbdS : ∀ n, N₀ ≤ n → ∀ z ∈ Metric.ball (0 : E3) r, 0 ≤ z 0 → |W n (Ψ z)| ≤ B := by
    intro n hn z hz hz0
    have hβz : 0 ≤ β (Ψ z) := by
      rw [hβΨ z (Metric.ball_subset_ball hrr₀ hz)]; exact hz0
    exact hbd n (Ψ z) hβz (hfar n hn z hz).2
  
  obtain ⟨s, hs, hsr, hCm⟩ := conormal_halfball_estimates r hr (fun z => (g.coeff Ψ z)⁻¹)
    (fun i j => (hAs i j).mono hballsub) (fun z hz i j => hAsymm z (hballsub hz) i j)
    (fun z hz => hApd z (hballsub hz))
    (fun z l => -∑ i : Fin 3, ∑ j : Fin 3, (g.coeff Ψ z)⁻¹ i j * christoffel (g.coeff Ψ) l i j z)
    hbS (fun z => h (Ψ z)) ((hcomp h hh).mono hballsub) B (fun n z => W n (Ψ z))
    (fun n => (hcomp (W n) (hW n)).mono hballsub) N₀ heqS hbcS hbdS
  choose C hC using hCm
  
  have hs₁pos : 0 < s / 4 := by linarith
  refine ⟨Ψ.target ∩ Ψ.symm ⁻¹' Metric.ball (0 : E3) (s / 4), ?_, ?_, ?_⟩
  · exact Ψ.symm.contMDiffOn.continuousOn.isOpen_inter_preimage Ψ.open_target
      Metric.isOpen_ball
  · rw [← hΨ0]
    refine ⟨Ψ.toPartialEquiv.map_source h0, ?_⟩
    show Ψ.symm (Ψ 0) ∈ Metric.ball (0 : E3) (s / 4)
    rw [show Ψ.symm (Ψ 0) = 0 from Ψ.toPartialEquiv.left_inv h0]
    exact Metric.mem_ball_self hs₁pos
  · intro φ hφ
    have hφN : ∀ n, N₀ ≤ φ (n + N₀) := fun n =>
      le_trans (Nat.le_add_left N₀ n) (hφ.id_le (n + N₀))
    have hballs : Metric.ball (0 : E3) s ⊆ Ψ.source := fun z hz =>
      hballsub (Metric.ball_subset_ball hsr.le hz)
    obtain ⟨ψ', F, hψ', hF, hconv⟩ := halfball_jet_compactness s hs
      (fun n z => W (φ (n + N₀)) (Ψ z))
      (fun n => (hcomp (W (φ (n + N₀))) (hW _)).mono hballs) C
      (fun m n z hz hz0 => hC m (φ (n + N₀)) (hφN n) z hz hz0)
    have hsub2 : Metric.closedBall (0 : E3) (s / 2) ⊆ Ψ.source := by
      intro z hz
      apply hballsub
      have : dist z 0 ≤ s / 2 := hz
      show dist z 0 < r
      linarith
    obtain ⟨G, hG, hGF⟩ := flat_limit_globalize Ψ F hF (s / 4) (s / 2) hs₁pos (by linarith) hsub2
    refine ⟨fun m => ψ' m + N₀, G, ?_, hG, ?_⟩
    · intro a b hab
      show ψ' a + N₀ < ψ' b + N₀
      exact Nat.add_lt_add_right (hψ' hab) N₀
    · rintro q ⟨hqt, hqs⟩ hq0
      obtain ⟨z, hzdef⟩ : ∃ z : E3, z = Ψ.symm q := ⟨_, rfl⟩
      have hzq : Ψ z = q := by rw [hzdef]; exact Ψ.toPartialEquiv.right_inv hqt
      have hzball : z ∈ Metric.ball (0 : E3) (s / 4) := by rw [hzdef]; exact hqs
      have hzr : z ∈ Metric.ball (0 : E3) r := Metric.ball_subset_ball (by linarith) hzball
      have hzs : z ∈ Ψ.source := hballsub hzr
      have hz0 : 0 ≤ z 0 := by
        rw [← hβΨ z (Metric.ball_subset_ball hrr₀ hzr), hzq]; exact hq0
      have hnorm : ‖z‖ < s / 4 := by
        have := hzball
        rw [Metric.mem_ball, dist_zero_right] at this
        exact this
      have hevG : (fun y => G (Ψ y)) =ᶠ[𝓝 z] F := by
        filter_upwards [Metric.isOpen_ball.mem_nhds hzball] with y hy
        exact hGF y hy
      have hconv' : ∀ m : ℕ, m ≤ 2 → Tendsto (fun n => iteratedFDeriv ℝ m
          (fun y => W (φ (ψ' n + N₀)) (Ψ y)) z) atTop
          (𝓝 (iteratedFDeriv ℝ m (fun y => G (Ψ y)) z)) := by
        intro m _
        rw [(hevG.iteratedFDeriv ℝ m).eq_of_nhds]
        exact hconv m z hnorm hz0
      have key := jet2_transfer Ψ z hzs (fun n => W (φ (ψ' n + N₀))) (fun n => hW _) G hG hconv'
      rw [hzq] at key
      exact key

theorem subseq_diagonal (Q : ℕ → (ℕ → ℕ) → Prop)
    (hsub : ∀ (j : ℕ) (φ τ : ℕ → ℕ), StrictMono τ → Q j φ → Q j (φ ∘ τ))
    (hshift : ∀ (j : ℕ) (φ : ℕ → ℕ) (m : ℕ), Q j (fun n => φ (n + m)) → Q j φ)
    (hext : ∀ (j : ℕ) (φ : ℕ → ℕ), StrictMono φ → ∃ ψ : ℕ → ℕ, StrictMono ψ ∧ Q j (φ ∘ ψ)) :
    ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∀ j, Q j φ :=
by
  classical
  have hext' : ∀ (j : ℕ) (f : ℕ → ℕ), ∃ ψ : ℕ → ℕ,
      StrictMono f → StrictMono ψ ∧ Q j (f ∘ ψ) := by
    intro j f
    by_cases hf : StrictMono f
    · obtain ⟨ψ, h1, h2⟩ := hext j f hf
      exact ⟨ψ, fun _ => ⟨h1, h2⟩⟩
    · exact ⟨id, fun h => absurd h hf⟩
  choose ψ hψ using hext'
  obtain ⟨Θ, hΘ0, hΘs⟩ : ∃ Θ : ℕ → ℕ → ℕ, Θ 0 = id ∧ ∀ j, Θ (j + 1) = Θ j ∘ ψ j (Θ j) :=
    ⟨fun j => Nat.rec (motive := fun _ => ℕ → ℕ) id (fun i f => f ∘ ψ i f) j, rfl,
      fun _ => rfl⟩
  have hA : ∀ j, StrictMono (Θ j) := by
    intro j
    induction j with
    | zero => rw [hΘ0]; exact strictMono_id
    | succ i ih => rw [hΘs]; exact ih.comp (hψ i (Θ i) ih).1
  have hB : ∀ j, Q j (Θ (j + 1)) := fun j => by
    rw [hΘs]; exact (hψ j (Θ j) (hA j)).2
  have hC : ∀ j n, n ≤ ψ j (Θ j) n := fun j n => StrictMono.id_le (hψ j (Θ j) (hA j)).1 n
  have hR : ∀ j l n, ∃ m, Θ (j + l) n = Θ j m := by
    intro j l
    induction l with
    | zero => intro n; exact ⟨n, rfl⟩
    | succ l ih =>
      intro n
      obtain ⟨m, hm⟩ := ih (ψ (j + l) (Θ (j + l)) n)
      refine ⟨m, ?_⟩
      rw [show j + (l + 1) = (j + l) + 1 from rfl, hΘs, Function.comp_apply]
      exact hm
  obtain ⟨φ, hφdef⟩ : ∃ φ : ℕ → ℕ, ∀ n, φ n = Θ (n + 1) n := ⟨_, fun _ => rfl⟩
  have hφ : StrictMono φ := by
    refine strictMono_nat_of_lt_succ fun n => ?_
    rw [hφdef, hφdef, hΘs (n + 1), Function.comp_apply]
    exact hA (n + 1) (lt_of_lt_of_le (Nat.lt_succ_self n) (hC (n + 1) (n + 1)))
  refine ⟨φ, hφ, fun j => ?_⟩
  choose σ hσ using fun l => hR (j + 1) l (l + j)
  have e : ∀ l, φ (l + j) = Θ (j + 1) (σ l) := by
    intro l
    rw [hφdef, ← hσ l, show l + j + 1 = j + 1 + l by omega]
  have hσm : StrictMono σ := by
    refine strictMono_nat_of_lt_succ fun l => ?_
    have h : φ (l + j) < φ (l + 1 + j) := hφ (by omega)
    rw [e, e] at h
    exact (hA (j + 1)).lt_iff_lt.mp h
  have htail : (fun n => φ (n + j)) = Θ (j + 1) ∘ σ := funext fun l => e l
  apply hshift j φ j
  rw [htail]
  exact hsub j _ σ hσm (hB j)

theorem jet2_partition_glue [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] [SigmaCompactSpace M]
    (E : Set M) (hE : IsClosed E) (u : ℕ → M → ℝ)
    (hu : ∀ n, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u n))
    (V : ℕ → Set M) (hV : ∀ j, IsOpen (V j)) (hcov : E ⊆ ⋃ j, V j)
    (G : ℕ → M → ℝ) (hG : ∀ j, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (G j))
    (hconv : ∀ j, ∀ q ∈ V j, q ∈ E →
      Tendsto (fun n => u n q) atTop (𝓝 (G j q)) ∧
      (∀ i : Fin 3, Tendsto (fun n => partialDeriv i (fun y => u n ((chartAt E3 q).symm y))
          (chartAt E3 q q)) atTop
        (𝓝 (partialDeriv i (fun y => G j ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
      (∀ i l : Fin 3, Tendsto (fun n => partialDeriv i (partialDeriv l
          (fun y => u n ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
        (𝓝 (partialDeriv i (partialDeriv l (fun y => G j ((chartAt E3 q).symm y)))
          (chartAt E3 q q))))) :
    ∃ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w ∧ ∀ q ∈ E,
      Tendsto (fun n => u n q) atTop (𝓝 (w q)) ∧
      (∀ i : Fin 3, Tendsto (fun n => partialDeriv i (fun y => u n ((chartAt E3 q).symm y))
          (chartAt E3 q q)) atTop
        (𝓝 (partialDeriv i (fun y => w ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
      (∀ i l : Fin 3, Tendsto (fun n => partialDeriv i (partialDeriv l
          (fun y => u n ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
        (𝓝 (partialDeriv i (partialDeriv l (fun y => w ((chartAt E3 q).symm y)))
          (chartAt E3 q q)))) :=
by
  classical
  
  have hpd1 : ∀ (f₁ f₂ : E3 → ℝ) (y : E3) (k : Fin 3), f₁ =ᶠ[𝓝 y] f₂ →
      partialDeriv k f₁ y = partialDeriv k f₂ y := by
    intro f₁ f₂ y k h
    show fderiv ℝ f₁ y (e k) = fderiv ℝ f₂ y (e k)
    rw [h.fderiv_eq]
  have hjet : ∀ (f₁ f₂ : E3 → ℝ) (y : E3), f₁ =ᶠ[𝓝 y] f₂ →
      f₁ y = f₂ y ∧ (∀ k : Fin 3, partialDeriv k f₁ y = partialDeriv k f₂ y) ∧
      ∀ k l : Fin 3, partialDeriv k (partialDeriv l f₁) y = partialDeriv k (partialDeriv l f₂) y := by
    intro f₁ f₂ y h
    refine ⟨h.eq_of_nhds, fun k => hpd1 f₁ f₂ y k h, fun k l => ?_⟩
    apply hpd1
    filter_upwards [h.eventuallyEq_nhds] with z hz
    exact hpd1 f₁ f₂ z l hz
  have hadd : ∀ (A B : E3 → ℝ) (y : E3) (k : Fin 3), DifferentiableAt ℝ A y →
      DifferentiableAt ℝ B y →
      partialDeriv k (fun z => A z + B z) y = partialDeriv k A y + partialDeriv k B y := by
    intro A B y k hA hB
    show fderiv ℝ (fun z => A z + B z) y (e k) = fderiv ℝ A y (e k) + fderiv ℝ B y (e k)
    rw [fderiv_fun_add hA hB]
    rfl
  
  have hleib : ∀ (S : Finset (Option ℕ)) (a f : Option ℕ → E3 → ℝ) (W : Set E3), IsOpen W →
      ∀ y ∈ W, (∀ i ∈ S, ContDiffOn ℝ ∞ (a i) W) → (∀ i ∈ S, ContDiffOn ℝ ∞ (f i) W) →
      (∀ k : Fin 3, partialDeriv k (fun z => ∑ i ∈ S, a i z * f i z) y =
          ∑ i ∈ S, (a i y * partialDeriv k (f i) y + partialDeriv k (a i) y * f i y)) ∧
      (∀ k l : Fin 3, partialDeriv k (partialDeriv l (fun z => ∑ i ∈ S, a i z * f i z)) y =
          ∑ i ∈ S, (a i y * partialDeriv k (partialDeriv l (f i)) y
            + partialDeriv k (a i) y * partialDeriv l (f i) y
            + partialDeriv l (a i) y * partialDeriv k (f i) y
            + partialDeriv k (partialDeriv l (a i)) y * f i y)) := by
    intro S a f W hW y hy ha hf
    have hD : ∀ g : E3 → ℝ, ContDiffOn ℝ ∞ g W → ∀ z ∈ W, DifferentiableAt ℝ g z :=
      fun g hg z hz => (hg.contDiffAt (hW.mem_nhds hz)).differentiableAt (by simp)
    have hP : ∀ g : E3 → ℝ, ContDiffOn ℝ ∞ g W → ∀ l : Fin 3,
        ContDiffOn ℝ ∞ (partialDeriv l g) W := by
      intro g hg l
      have h1 : ContDiffOn ℝ ∞ (fun z => fderiv ℝ g z) W := hg.fderiv_of_isOpen hW (by simp)
      exact h1.clm_apply contDiffOn_const
    have hfirst : ∀ (b c : Option ℕ → E3 → ℝ), (∀ i ∈ S, ContDiffOn ℝ ∞ (b i) W) →
        (∀ i ∈ S, ContDiffOn ℝ ∞ (c i) W) → ∀ z ∈ W, ∀ l : Fin 3,
        partialDeriv l (fun z => ∑ i ∈ S, b i z * c i z) z =
          ∑ i ∈ S, (b i z * partialDeriv l (c i) z + partialDeriv l (b i) z * c i z) := by
      intro b c hb hc z hz l
      unfold partialDeriv
      rw [fderiv_fun_sum (A := fun i y => b i y * c i y)
        (fun i hi => (hD _ (hb i hi) z hz).mul (hD _ (hc i hi) z hz))]
      rw [ContinuousLinearMap.sum_apply]
      refine Finset.sum_congr rfl (fun i hi => ?_)
      rw [fderiv_fun_mul (hD _ (hb i hi) z hz) (hD _ (hc i hi) z hz)]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    refine ⟨fun k => hfirst a f ha hf y hy k, fun k l => ?_⟩
    have hev : partialDeriv l (fun z => ∑ i ∈ S, a i z * f i z) =ᶠ[𝓝 y]
        fun z => (∑ i ∈ S, a i z * partialDeriv l (f i) z) +
          ∑ i ∈ S, partialDeriv l (a i) z * f i z := by
      filter_upwards [hW.mem_nhds hy] with z hz
      rw [hfirst a f ha hf z hz l, Finset.sum_add_distrib]
    have hA : DifferentiableAt ℝ (fun z => ∑ i ∈ S, a i z * partialDeriv l (f i) z) y := by
      apply DifferentiableAt.fun_sum
      intro i hi
      exact (hD _ (ha i hi) y hy).mul (hD _ (hP _ (hf i hi) l) y hy)
    have hB : DifferentiableAt ℝ (fun z => ∑ i ∈ S, partialDeriv l (a i) z * f i z) y := by
      apply DifferentiableAt.fun_sum
      intro i hi
      exact (hD _ (hP _ (ha i hi) l) y hy).mul (hD _ (hf i hi) y hy)
    have h1 := hfirst a (fun i => partialDeriv l (f i)) ha (fun i hi => hP _ (hf i hi) l) y hy k
    have h2 := hfirst (fun i => partialDeriv l (a i)) f (fun i hi => hP _ (ha i hi) l) hf y hy k
    rw [hpd1 _ _ y k hev, hadd _ _ y k hA hB, h1, h2, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    ring
  
  obtain ⟨U, hUn, hUs⟩ : ∃ U : Option ℕ → Set M, U none = Eᶜ ∧ ∀ j, U (some j) = V j :=
    ⟨fun i => Option.elim i Eᶜ V, rfl, fun j => rfl⟩
  have hUo : ∀ i, IsOpen (U i) := by
    intro i
    cases i with
    | none => rw [hUn]; exact hE.isOpen_compl
    | some j => rw [hUs]; exact hV j
  have hUc : (Set.univ : Set M) ⊆ ⋃ i, U i := by
    intro x _
    by_cases hx : x ∈ E
    · obtain ⟨j, hj⟩ := Set.mem_iUnion.mp (hcov hx)
      exact Set.mem_iUnion.mpr ⟨some j, by rw [hUs]; exact hj⟩
    · exact Set.mem_iUnion.mpr ⟨none, by rw [hUn]; exact hx⟩
  obtain ⟨χ, hχ⟩ := SmoothPartitionOfUnity.exists_isSubordinate 𝓘(ℝ, E3) isClosed_univ U hUo hUc
  
  obtain ⟨Gh, hGn, hGs⟩ : ∃ Gh : Option ℕ → M → ℝ, Gh none = (fun _ => 0) ∧
      ∀ j, Gh (some j) = G j :=
    ⟨fun i => Option.elim i (fun _ => 0) G, rfl, fun j => rfl⟩
  have hGsm : ∀ i, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (Gh i) := by
    intro i
    cases i with
    | none => rw [hGn]; exact contMDiff_const
    | some j => rw [hGs]; exact hG j
  
  obtain ⟨w, hwdef⟩ : ∃ w : M → ℝ, w = fun x => ∑ᶠ i, χ i x • Gh i x := ⟨_, rfl⟩
  refine ⟨w, ?_, ?_⟩
  · rw [hwdef]
    exact χ.contMDiff_finsum_smul (n := ⊤) (fun i x _ => (hGsm i).contMDiffAt)
  intro q hqE
  
  have hloc : ∀ᶠ x in 𝓝 q, (∑ i ∈ χ.fintsupport q, χ i x = 1) ∧
      ∀ F : Option ℕ → M → ℝ, ∑ᶠ i, χ i x * F i x = ∑ i ∈ χ.fintsupport q, χ i x * F i x := by
    filter_upwards [χ.eventually_fintsupport_subset q] with x hx
    have hsupp : ∀ F : Option ℕ → M → ℝ,
        ∑ᶠ i, χ i x * F i x = ∑ i ∈ χ.fintsupport q, χ i x * F i x := by
      intro F
      apply finsum_eq_sum_of_support_subset
      intro i hi
      have h1 : χ i x ≠ 0 := left_ne_zero_of_mul hi
      exact hx ((χ.mem_fintsupport_iff x i).mpr (subset_tsupport _ h1))
    refine ⟨?_, hsupp⟩
    have h1 := hsupp (fun _ _ => 1)
    simp only [mul_one] at h1
    rw [← h1]
    exact χ.sum_eq_one (Set.mem_univ x)
  
  have hS : ∀ i ∈ χ.fintsupport q, ∃ j, i = some j ∧ q ∈ V j := by
    intro i hi
    have h1 : q ∈ tsupport (χ i) := (χ.mem_fintsupport_iff q i).mp hi
    have h2 := hχ i h1
    cases i with
    | none => rw [hUn] at h2; exact absurd hqE h2
    | some j => rw [hUs] at h2; exact ⟨j, rfl, h2⟩
  
  have hy₀t : chartAt E3 q q ∈ (chartAt E3 q).target := mem_chart_target E3 q
  have hcq : (chartAt E3 q).symm (chartAt E3 q q) = q :=
    (chartAt E3 q).left_inv (mem_chart_source E3 q)
  have htend : Tendsto (chartAt E3 q).symm (𝓝 (chartAt E3 q q)) (𝓝 q) := by
    have := ((chartAt E3 q).continuousAt_symm hy₀t).tendsto
    rwa [hcq] at this
  have hloc' := htend.eventually hloc
  have hpb : ∀ f : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f →
      ContDiffOn ℝ ∞ (fun z => f ((chartAt E3 q).symm z)) (chartAt E3 q).target :=
    fun f hf => contMDiffOn_iff_contDiffOn.mp (hf.comp_contMDiffOn contMDiffOn_chart_symm)
  have hJ : ∀ i ∈ χ.fintsupport q,
      Tendsto (fun n => u n q) atTop (𝓝 (Gh i q)) ∧
      (∀ k : Fin 3, Tendsto (fun n => partialDeriv k (fun y => u n ((chartAt E3 q).symm y))
          (chartAt E3 q q)) atTop
        (𝓝 (partialDeriv k (fun y => Gh i ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
      (∀ k l : Fin 3, Tendsto (fun n => partialDeriv k (partialDeriv l
          (fun y => u n ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
        (𝓝 (partialDeriv k (partialDeriv l (fun y => Gh i ((chartAt E3 q).symm y)))
          (chartAt E3 q q)))) := by
    intro i hi
    obtain ⟨j, rfl, hqV⟩ := hS i hi
    rw [hGs]
    exact hconv j q hqV hqE
  
  have hw_ev : (fun y => w ((chartAt E3 q).symm y)) =ᶠ[𝓝 (chartAt E3 q q)]
      fun z => ∑ i ∈ χ.fintsupport q,
        χ i ((chartAt E3 q).symm z) * Gh i ((chartAt E3 q).symm z) := by
    filter_upwards [hloc'] with z hz
    rw [hwdef]
    simp only [smul_eq_mul]
    exact hz.2 Gh
  have hu_ev : ∀ n, (fun y => u n ((chartAt E3 q).symm y)) =ᶠ[𝓝 (chartAt E3 q q)]
      fun z => ∑ i ∈ χ.fintsupport q,
        χ i ((chartAt E3 q).symm z) * u n ((chartAt E3 q).symm z) := by
    intro n
    filter_upwards [hloc'] with z hz
    rw [← Finset.sum_mul, hz.1, one_mul]
  have hχs : ∀ i ∈ χ.fintsupport q,
      ContDiffOn ℝ ∞ (fun z => χ i ((chartAt E3 q).symm z)) (chartAt E3 q).target :=
    fun i _ => hpb _ (χ i).contMDiff
  have hLw := hleib (χ.fintsupport q) (fun i z => χ i ((chartAt E3 q).symm z))
    (fun i z => Gh i ((chartAt E3 q).symm z)) (chartAt E3 q).target (chartAt E3 q).open_target
    (chartAt E3 q q) hy₀t hχs (fun i _ => hpb _ (hGsm i))
  have hLu := fun n => hleib (χ.fintsupport q) (fun i z => χ i ((chartAt E3 q).symm z))
    (fun _ z => u n ((chartAt E3 q).symm z)) (chartAt E3 q).target (chartAt E3 q).open_target
    (chartAt E3 q q) hy₀t hχs (fun _ _ => hpb _ (hu n))
  have hcw := hjet _ _ _ hw_ev
  have hcu := fun n => hjet _ _ _ (hu_ev n)
  have hval : ∀ i ∈ χ.fintsupport q, Tendsto (fun n => u n ((chartAt E3 q).symm (chartAt E3 q q)))
      atTop (𝓝 (Gh i ((chartAt E3 q).symm (chartAt E3 q q)))) := by
    intro i hi
    rw [hcq]
    exact (hJ i hi).1
  refine ⟨?_, fun k => ?_, fun k l => ?_⟩
  · 
    have hwq : w q = ∑ i ∈ χ.fintsupport q, χ i q * Gh i q := by
      have := (hloc.self_of_nhds).2 Gh
      rw [hwdef]
      simp only [smul_eq_mul]
      exact this
    rw [hwq]
    refine Tendsto.congr (fun n => ?_) (tendsto_finset_sum _ (fun i hi => ((hJ i hi).1.const_mul (χ i q))))
    rw [← Finset.sum_mul, (hloc.self_of_nhds).1, one_mul]
  · 
    rw [hcw.2.1 k, hLw.1 k]
    refine Tendsto.congr (fun n => (((hcu n).2.1 k).trans ((hLu n).1 k)).symm) ?_
    refine tendsto_finset_sum _ (fun i hi => ?_)
    exact (((hJ i hi).2.1 k).const_mul _).add ((hval i hi).const_mul _)
  · 
    rw [hcw.2.2 k l, hLw.2 k l]
    refine Tendsto.congr (fun n => (((hcu n).2.2 k l).trans ((hLu n).2 k l)).symm) ?_
    refine tendsto_finset_sum _ (fun i hi => ?_)
    exact (((((hJ i hi).2.2 k l).const_mul _).add (((hJ i hi).2.1 l).const_mul _)).add
      (((hJ i hi).2.1 k).const_mul _)).add ((hval i hi).const_mul _)

theorem neumann_limit [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (h : M → ℝ) (hh : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ h) (B : ℝ)
    (ρs : ℕ → ℝ) (hρs : ∀ n : ℕ, (n : ℝ) ≤ ρs n) (W : ℕ → M → ℝ)
    (hW : ∀ n : ℕ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (W n))
    (hlap : ∀ (n : ℕ) (p : M), 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρs n ≤ ‖y‖} →
      g.lapM (W n) p = h p)
    (hneu : ∀ (n : ℕ) (p : M), β p = 0 → g.gradInner (W n) β p = 0)
    (hbd : ∀ (n : ℕ) (p : M), 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρs n < ‖y‖} →
      |W n p| ≤ B) :
    ∃ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w ∧
      (∀ p : M, 0 ≤ β p → g.lapM w p = h p) ∧
      (∀ p : M, β p = 0 → g.gradInner w β p = 0) ∧
      (∀ p : M, 0 ≤ β p → |w p| ≤ B) :=
by
  classical
  
  have hjet : ∀ (u : ℕ → M → ℝ) (v : M → ℝ) (p : M),
      (∀ i : Fin 3, Tendsto (fun n => partialDeriv i (fun y => u n ((chartAt E3 p).symm y))
          (chartAt E3 p p)) atTop
        (𝓝 (partialDeriv i (fun y => v ((chartAt E3 p).symm y)) (chartAt E3 p p)))) →
      (∀ i j : Fin 3, Tendsto (fun n => partialDeriv i (partialDeriv j
          (fun y => u n ((chartAt E3 p).symm y))) (chartAt E3 p p)) atTop
        (𝓝 (partialDeriv i (partialDeriv j (fun y => v ((chartAt E3 p).symm y)))
          (chartAt E3 p p)))) →
      Tendsto (fun n => g.lapM (u n) p) atTop (𝓝 (g.lapM v p)) ∧
      Tendsto (fun n => g.gradInner (u n) β p) atTop (𝓝 (g.gradInner v β p)) := by
    intro u v p h1 h2
    constructor
    · unfold RiemannianMetric3.lapM lapLoc hessLoc
      refine tendsto_finset_sum _ (fun i _ => tendsto_finset_sum _ (fun j _ => ?_))
      refine Tendsto.const_mul _ ?_
      refine (h2 i j).sub ?_
      refine tendsto_finset_sum _ (fun l _ => ?_)
      exact (h1 l).const_mul _
    · unfold RiemannianMetric3.gradInner
      refine tendsto_finset_sum _ (fun i _ => tendsto_finset_sum _ (fun j _ => ?_))
      exact ((h1 i).const_mul _).mul_const _
  
  have hβc : Continuous β := hβ.1.continuous
  have hEcl : IsClosed {p : M | 0 ≤ β p} := isClosed_le continuous_const hβc
  by_cases hne : Nonempty M
  swap
  · refine ⟨fun _ => 0, contMDiff_const, ?_, ?_, ?_⟩ <;> intro p <;> exact (hne ⟨p⟩).elim
  haveI := hne
  
  haveI : SigmaCompactSpace M := af_sigmaCompactSpace g hAF
  have hEL : IsLindelof {p : M | 0 ≤ β p} := hEcl.isLindelof
  
  have hloc : ∀ p : M, ∃ V : Set M, IsOpen V ∧ (0 ≤ β p → p ∈ V) ∧ ∀ φ : ℕ → ℕ, StrictMono φ →
      ∃ (ψ : ℕ → ℕ) (G : M → ℝ), StrictMono ψ ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ G ∧
        ∀ q ∈ V, 0 ≤ β q →
          Tendsto (fun m => W (φ (ψ m)) q) atTop (𝓝 (G q)) ∧
          (∀ i : Fin 3, Tendsto (fun m => partialDeriv i
              (fun y => W (φ (ψ m)) ((chartAt E3 q).symm y)) (chartAt E3 q q)) atTop
            (𝓝 (partialDeriv i (fun y => G ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
          (∀ i j : Fin 3, Tendsto (fun m => partialDeriv i (partialDeriv j
              (fun y => W (φ (ψ m)) ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
            (𝓝 (partialDeriv i (partialDeriv j (fun y => G ((chartAt E3 q).symm y)))
              (chartAt E3 q q)))) := by
    intro p
    rcases lt_trichotomy (β p) 0 with hp | hp | hp
    · refine ⟨∅, isOpen_empty, fun h0 => absurd h0 (not_le.mpr hp), fun φ _ =>
        ⟨id, fun _ => 0, strictMono_id, contMDiff_const, fun q hq _ => ?_⟩⟩
      exact absurd hq (by simp)
    · obtain ⟨V, hV, hpV, hX⟩ :=
        neumann_local_boundary g hAF k β Re hβ h hh B ρs hρs W hW hlap hneu hbd p hp
      exact ⟨V, hV, fun _ => hpV, hX⟩
    · obtain ⟨V, hV, hpV, hX⟩ :=
        neumann_local_interior g hAF k β Re hβ h hh B ρs hρs W hW hlap hbd p hp
      exact ⟨V, hV, fun _ => hpV, hX⟩
  choose V hVo hpV hX using hloc
  have hcov : {p : M | 0 ≤ β p} ⊆ ⋃ p, V p := fun p hp => Set.mem_iUnion.mpr ⟨p, hpV p hp⟩
  obtain ⟨f, hf⟩ := hEL.indexed_countable_subcover V hVo hcov
  
  have hdiag := subseq_diagonal
    (fun (j : ℕ) (φ : ℕ → ℕ) => ∃ G : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ G ∧
      ∀ q ∈ V (f j), 0 ≤ β q →
        Tendsto (fun m => W (φ m) q) atTop (𝓝 (G q)) ∧
        (∀ i : Fin 3, Tendsto (fun m => partialDeriv i
            (fun y => W (φ m) ((chartAt E3 q).symm y)) (chartAt E3 q q)) atTop
          (𝓝 (partialDeriv i (fun y => G ((chartAt E3 q).symm y)) (chartAt E3 q q)))) ∧
        (∀ i l : Fin 3, Tendsto (fun m => partialDeriv i (partialDeriv l
            (fun y => W (φ m) ((chartAt E3 q).symm y))) (chartAt E3 q q)) atTop
          (𝓝 (partialDeriv i (partialDeriv l (fun y => G ((chartAt E3 q).symm y)))
            (chartAt E3 q q)))))
    (by
      intro j φ τ hτ hQ
      obtain ⟨G, hG, hc⟩ := hQ
      refine ⟨G, hG, fun q hq hq0 => ?_⟩
      obtain ⟨c0, c1, c2⟩ := hc q hq hq0
      exact ⟨c0.comp hτ.tendsto_atTop, fun i => (c1 i).comp hτ.tendsto_atTop,
        fun i l => (c2 i l).comp hτ.tendsto_atTop⟩)
    (by
      intro j φ m hQ
      obtain ⟨G, hG, hc⟩ := hQ
      refine ⟨G, hG, fun q hq hq0 => ?_⟩
      obtain ⟨c0, c1, c2⟩ := hc q hq hq0
      refine ⟨(Filter.tendsto_add_atTop_iff_nat (f := fun n => W (φ n) q) m).1 c0,
        fun i => ?_, fun i l => ?_⟩
      · exact (Filter.tendsto_add_atTop_iff_nat (f := fun n => partialDeriv i
          (fun y => W (φ n) ((chartAt E3 q).symm y)) (chartAt E3 q q)) m).1 (c1 i)
      · exact (Filter.tendsto_add_atTop_iff_nat (f := fun n => partialDeriv i (partialDeriv l
          (fun y => W (φ n) ((chartAt E3 q).symm y))) (chartAt E3 q q)) m).1 (c2 i l))
    (by
      intro j φ hφ
      obtain ⟨ψ, G, hψ, hG, hc⟩ := hX (f j) φ hφ
      exact ⟨ψ, hψ, G, hG, hc⟩)
  obtain ⟨φ, hφ, hQ⟩ := hdiag
  choose Gj hGj hcj using hQ
  
  obtain ⟨w, hw, hwc⟩ := jet2_partition_glue {p : M | 0 ≤ β p} hEcl (fun n => W (φ n))
    (fun n => hW (φ n)) (fun j => V (f j)) (fun j => hVo (f j)) hf Gj hGj
    (fun j q hq hqE => hcj j q hq hqE)
  
  have hev : ∀ p : M, ∀ᶠ n in atTop,
      p ∉ (hAF.ends k).Φ '' {y : E3 | ρs (φ n) ≤ ‖y‖} ∧
      p ∉ (hAF.ends k).Φ '' {y : E3 | ρs (φ n) < ‖y‖} := by
    intro p
    obtain ⟨ρ, N, hN, hesc⟩ := end_chart_escape g hAF k p
    obtain ⟨N0, hN0⟩ := exists_nat_gt ρ
    filter_upwards [hφ.tendsto_atTop.eventually_ge_atTop N0] with n hn
    have h1 : ρ < ρs (φ n) := by
      have h2 : (N0 : ℝ) ≤ (φ n : ℝ) := by exact_mod_cast hn
      linarith [hρs (φ n)]
    have hpN : p ∈ N := mem_of_mem_nhds hN
    constructor
    · rintro ⟨y, hy, hyp⟩
      have hy' : ρs (φ n) ≤ ‖y‖ := hy
      exact hesc y (lt_of_lt_of_le h1 hy') (hyp ▸ hpN)
    · rintro ⟨y, hy, hyp⟩
      have hy' : ρs (φ n) < ‖y‖ := hy
      exact hesc y (lt_trans h1 hy') (hyp ▸ hpN)
  refine ⟨w, hw, ?_, ?_, ?_⟩
  · intro p hp
    obtain ⟨_, h1, h2⟩ := hwc p hp
    have hT := (hjet (fun n => W (φ n)) w p h1 h2).1
    have hT' : Tendsto (fun n => g.lapM (W (φ n)) p) atTop (𝓝 (h p)) := by
      refine tendsto_const_nhds.congr' ?_
      filter_upwards [hev p] with n hn
      exact (hlap (φ n) p hp hn.1).symm
    exact tendsto_nhds_unique hT hT'
  · intro p hp
    have hp' : 0 ≤ β p := le_of_eq hp.symm
    obtain ⟨_, h1, h2⟩ := hwc p hp'
    have hT := (hjet (fun n => W (φ n)) w p h1 h2).2
    have hT' : Tendsto (fun n => g.gradInner (W (φ n)) β p) atTop (𝓝 0) := by
      have he : (fun n => g.gradInner (W (φ n)) β p) = fun _ => (0 : ℝ) :=
        funext fun n => hneu (φ n) p hp
      rw [he]
      exact tendsto_const_nhds
    exact tendsto_nhds_unique hT hT'
  · intro p hp
    obtain ⟨h0, _, _⟩ := hwc p hp
    refine le_of_tendsto h0.abs ?_
    filter_upwards [hev p] with n hn
    exact hbd (φ n) p hp hn.2

theorem barrier_profile (ε T : ℝ) (hε : 0 < ε) (hε1 : ε < 1) (hT : 1 ≤ T) :
    ∃ P : ℝ → ℝ, ContDiff ℝ ∞ P ∧
      (∀ t : ℝ, t ≤ T → P t = P T) ∧
      (∀ t : ℝ, 0 ≤ P t ∧ P t ≤ P T) ∧
      (∀ t : ℝ, 0 < t →
        0 ≤ -(deriv (deriv P) t + 2 * deriv P t / t) ∧
        |deriv (deriv P) t| + |deriv P t| / t ≤
          3 / (1 - ε) * (-(deriv (deriv P) t + 2 * deriv P t / t))) ∧
      (∀ t : ℝ, T + 1 ≤ t →
        -(deriv (deriv P) t + 2 * deriv P t / t) = ε * (1 - ε) * t ^ (-2 - ε)) :=
by
  have hT0 : 0 < T := by linarith
  have h1ε : (1 - ε) ≠ 0 := by intro h; linarith
  have hσC : ContDiff ℝ ∞ Real.smoothTransition := Real.smoothTransition.contDiff
  have hσdiff : Differentiable ℝ Real.smoothTransition := hσC.differentiable (by simp)
  have hσ'nn : ∀ x : ℝ, 0 ≤ deriv Real.smoothTransition x :=
    fun x => Real.smoothTransition.monotone.deriv_nonneg
  have hσ'1 : ∀ x : ℝ, 1 ≤ x → deriv Real.smoothTransition x = 0 := by
    intro x hx
    apply IsLocalMax.deriv_eq_zero
    exact Filter.Eventually.of_forall (fun y => by
      rw [Real.smoothTransition.one_of_one_le hx]; exact Real.smoothTransition.le_one y)
  obtain ⟨f, hfdef⟩ : ∃ f : ℝ → ℝ,
      f = fun s => ε * Real.smoothTransition (s - T) * s ^ (-1 - ε) := ⟨_, rfl⟩
  have hf0 : ∀ s : ℝ, s ≤ T → f s = 0 := by
    intro s hs
    rw [hfdef]
    simp only [Real.smoothTransition.zero_of_nonpos (by linarith : s - T ≤ 0)]
    ring
  have hfnn : ∀ s : ℝ, 0 ≤ f s := by
    intro s
    rcases le_or_gt s T with hs | hs
    · rw [hf0 s hs]
    · rw [hfdef]
      exact mul_nonneg (mul_nonneg hε.le (Real.smoothTransition.nonneg _))
        (Real.rpow_pos_of_pos (by linarith) _).le
  have hftail : ∀ s : ℝ, T + 1 ≤ s → f s = ε * s ^ (-1 - ε) := by
    intro s hs
    rw [hfdef]
    simp only [Real.smoothTransition.one_of_one_le (by linarith : 1 ≤ s - T)]
    ring
  have hfC : ContDiff ℝ ∞ f := by
    rw [contDiff_iff_contDiffAt]
    intro s
    rcases lt_or_ge 0 s with hs | hs
    · rw [hfdef]
      exact (contDiffAt_const.mul ((hσC.comp (contDiff_id.sub contDiff_const)).contDiffAt)).mul
        (Real.contDiffAt_rpow_const_of_ne hs.ne')
    · apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
      filter_upwards [isOpen_Iio.mem_nhds (show s ∈ Set.Iio T by
        simp only [Set.mem_Iio]; linarith)] with u hu
      exact hf0 u (le_of_lt hu)
  have hfd : ∀ t : ℝ, 0 < t → HasDerivAt f
      (ε * deriv Real.smoothTransition (t - T) * t ^ (-1 - ε)
        - ε * (1 + ε) * Real.smoothTransition (t - T) * t ^ (-2 - ε)) t := by
    intro t ht
    have h1 : HasDerivAt (fun s => ε * Real.smoothTransition (s - T))
        (ε * deriv Real.smoothTransition (t - T)) t :=
      ((hσdiff (t - T)).hasDerivAt.comp_sub_const t T).const_mul ε
    have h2 : HasDerivAt (fun s : ℝ => s ^ (-1 - ε)) ((-1 - ε) * t ^ (-1 - ε - 1)) t :=
      Real.hasDerivAt_rpow_const (Or.inl ht.ne')
    have h3 := h1.mul h2
    have he : (-1 - ε - 1 : ℝ) = -2 - ε := by ring
    rw [he] at h3
    rw [hfdef]
    convert h3 using 1
    ring
  have hfc : Continuous f := hfC.continuous
  obtain ⟨P, hPdef⟩ : ∃ P : ℝ → ℝ,
      P = fun u => (T + 1) ^ (-ε) + ∫ s in u..(T + 1), f s := ⟨_, rfl⟩
  have hPd : ∀ t : ℝ, HasDerivAt P (-f t) t := by
    intro t
    have hF : HasDerivAt (fun u => ∫ s in (T + 1)..u, f s) (f t) t :=
      (hfc.integral_hasStrictDerivAt (T + 1) t).hasDerivAt
    have heq : P = fun u => (T + 1) ^ (-ε) - ∫ s in (T + 1)..u, f s := by
      rw [hPdef]
      funext u
      rw [intervalIntegral.integral_symm]
      ring
    rw [heq]
    exact hF.const_sub _
  have hderiv : deriv P = fun t => -f t := funext fun t => (hPd t).deriv
  have hPdiff : Differentiable ℝ P := fun t => (hPd t).differentiableAt
  have hPc : ∀ t : ℝ, t ≤ T → P t = P T := by
    intro t ht
    have hz : ∫ s in t..T, f s = 0 := by
      rw [intervalIntegral.integral_congr (g := fun _ => (0 : ℝ)) ?_]
      · simp
      intro s hs
      rw [Set.uIcc_of_le ht] at hs
      exact hf0 s hs.2
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (hfc.intervalIntegrable (μ := MeasureTheory.volume) t T)
      (hfc.intervalIntegrable (μ := MeasureTheory.volume) T (T + 1))
    rw [hPdef]
    show (T + 1) ^ (-ε) + ∫ s in t..(T + 1), f s = (T + 1) ^ (-ε) + ∫ s in T..(T + 1), f s
    rw [← hadd, hz, zero_add]
  have hPtail : ∀ t : ℝ, T + 1 ≤ t → P t = t ^ (-ε) := by
    intro t ht
    have hint : ∫ s in t..(T + 1), f s = -(T + 1) ^ (-ε) - -(t ^ (-ε)) := by
      apply intervalIntegral.integral_eq_sub_of_hasDerivAt (f := fun s => -(s ^ (-ε)))
      · intro s hs
        rw [Set.uIcc_of_ge ht] at hs
        have hs0 : 0 < s := by linarith [hs.1]
        have h := (Real.hasDerivAt_rpow_const (p := -ε) (Or.inl hs0.ne')).neg
        rw [hftail s hs.1]
        convert h using 1
        rw [show (-ε - 1 : ℝ) = -1 - ε by ring]
        ring
      · exact hfc.intervalIntegrable _ _
    rw [hPdef]
    show (T + 1) ^ (-ε) + ∫ s in t..(T + 1), f s = t ^ (-ε)
    rw [hint]
    ring
  have hPanti : Antitone P :=
    antitone_of_deriv_nonpos hPdiff (fun t => by rw [(hPd t).deriv]; linarith [hfnn t])
  have hPb : ∀ t : ℝ, 0 ≤ P t ∧ P t ≤ P T := by
    intro t
    constructor
    · have h1 := hPanti (le_max_left t (T + 1))
      rw [hPtail _ (le_max_right t (T + 1))] at h1
      have h2 : 0 < (max t (T + 1)) ^ (-ε) :=
        Real.rpow_pos_of_pos (by linarith [le_max_right t (T + 1)]) _
      linarith
    · rcases le_total t T with h | h
      · rw [hPc t h]
      · exact hPanti h
  have key : ∀ t : ℝ, 0 < t →
      -(deriv (deriv P) t + 2 * deriv P t / t) =
        ε * deriv Real.smoothTransition (t - T) * t ^ (-1 - ε)
          + ε * (1 - ε) * Real.smoothTransition (t - T) * t ^ (-2 - ε) ∧
      0 ≤ -(deriv (deriv P) t + 2 * deriv P t / t) ∧
      |deriv (deriv P) t| + |deriv P t| / t ≤
        3 / (1 - ε) * (-(deriv (deriv P) t + 2 * deriv P t / t)) := by
    intro t ht
    have hP1t : deriv P t = -(ε * Real.smoothTransition (t - T) * t ^ (-1 - ε)) := by
      rw [(hPd t).deriv, hfdef]
    have hP2t : deriv (deriv P) t = -(ε * deriv Real.smoothTransition (t - T) * t ^ (-1 - ε)
        - ε * (1 + ε) * Real.smoothTransition (t - T) * t ^ (-2 - ε)) := by
      rw [hderiv]
      exact (hfd t ht).neg.deriv
    obtain ⟨χ, hχ⟩ : ∃ χ, χ = Real.smoothTransition (t - T) := ⟨_, rfl⟩
    obtain ⟨χ', hχ'⟩ : ∃ χ', χ' = deriv Real.smoothTransition (t - T) := ⟨_, rfl⟩
    obtain ⟨B, hB⟩ : ∃ B, B = t ^ (-2 - ε) := ⟨_, rfl⟩
    have hA : t ^ (-1 - ε) = t * B := by
      rw [hB, show (-2 - ε : ℝ) = (-1 - ε) - 1 by ring, Real.rpow_sub_one ht.ne']
      field_simp
    have hB0 : 0 < B := by rw [hB]; exact Real.rpow_pos_of_pos ht _
    have hχ0 : 0 ≤ χ := by rw [hχ]; exact Real.smoothTransition.nonneg _
    have hχ'0 : 0 ≤ χ' := by rw [hχ']; exact hσ'nn _
    rw [hP1t, hP2t, ← hχ, ← hχ', ← hB, hA]
    have e1 : 2 * -(ε * χ * (t * B)) / t = -(2 * ε * χ * B) := by
      field_simp
    rw [e1]
    have hu : 0 ≤ ε * χ' * (t * B) := by positivity
    have hv : 0 ≤ ε * χ * B := by positivity
    have h1e : 0 ≤ 1 - ε := by linarith
    refine ⟨by ring, ?_, ?_⟩
    · nlinarith [mul_nonneg h1e hv]
    · have habs1 : |-(ε * χ * (t * B))| / t = ε * χ * B := by
        rw [abs_neg, abs_of_nonneg (by positivity)]
        field_simp
      have habs2 : |-(ε * χ' * (t * B) - ε * (1 + ε) * χ * B)| ≤
          ε * χ' * (t * B) + ε * (1 + ε) * χ * B := by
        rw [abs_le]
        constructor <;> nlinarith
      have hK : 1 ≤ 3 / (1 - ε) := by
        rw [le_div_iff₀ (by linarith)]
        linarith
      have hK2 : 3 * (ε * χ * B) = 3 / (1 - ε) * ((1 - ε) * (ε * χ * B)) := by
        field_simp
      rw [habs1]
      calc _ ≤ ε * χ' * (t * B) + ε * (1 + ε) * χ * B + ε * χ * B := by linarith
        _ ≤ 3 / (1 - ε) * (ε * χ' * (t * B)) + 3 * (ε * χ * B) := by
          nlinarith [mul_le_mul_of_nonneg_right hK hu, mul_nonneg h1e hv]
        _ = _ := by rw [hK2]; ring
  refine ⟨P, ?_, hPc, hPb, fun t ht => (key t ht).2, ?_⟩
  · exact contDiff_infty_iff_deriv.mpr ⟨hPdiff, by rw [hderiv]; exact hfC.neg⟩
  · intro t ht
    have ht0 : 0 < t := by linarith
    rw [(key t ht0).1, hσ'1 _ (by linarith), Real.smoothTransition.one_of_one_le (by linarith)]
    ring

theorem radial_lapLoc_bound (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (q : ℝ) (hq : 0 < q)
    (R C : ℝ) (hR : 1 ≤ R) (hC : 0 ≤ C)
    (hb : ∀ x : E3, R < ‖x‖ → (1 / 2 : ℝ) ≤ (G x).det ∧ ∀ i j k : Fin 3,
      |G x i j - (if i = j then (1 : ℝ) else 0)| ≤ C * ‖x‖ ^ (-q) ∧
      ‖fderiv ℝ (fun y => G y i j) x‖ ≤ C * ‖x‖ ^ (-q - 1) ∧
      ‖fderiv ℝ (fun y => partialDeriv k (fun z => G z i j) y) x‖ ≤ C * ‖x‖ ^ (-q - 2)) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ (P : ℝ → ℝ), ContDiff ℝ ∞ P → ∀ y : E3, R < ‖y‖ →
      lapLoc G (fun z => P ‖z‖) y ≤
        (deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖) +
          K * ‖y‖ ^ (-q) * (|deriv (deriv P) ‖y‖| + |deriv P ‖y‖| / ‖y‖) :=
by
  
  
  have hpert : ∃ K₂ : ℝ, 0 ≤ K₂ ∧ ∀ (w : E3 → ℝ) (x : E3), R < ‖x‖ →
      |lapLoc G w x - ∑ i : Fin 3, partialDeriv i (partialDeriv i w) x| ≤
        K₂ * (‖x‖ ^ (-q) * ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j w) x|
          + ‖x‖ ^ (-q - 1) * ∑ k : Fin 3, |partialDeriv k w x|) := by
    obtain ⟨B, hBdef⟩ : ∃ B : ℝ, B = 1 + C := ⟨_, rfl⟩
    obtain ⟨b, hbdef⟩ : ∃ b : ℝ, b = 4 * B ^ 2 := ⟨_, rfl⟩
    have hB1 : 1 ≤ B := by rw [hBdef]; linarith
    have hB0 : 0 ≤ B := by linarith
    have hb0 : 0 ≤ b := by rw [hbdef]; positivity
    have hK0 : 0 ≤ 3 * b * C + 81 / 2 * b ^ 2 * C := by
      have h1 : 0 ≤ 3 * b * C := by positivity
      have h2 : 0 ≤ 81 / 2 * b ^ 2 * C := by positivity
      linarith
    refine ⟨3 * b * C + 81 / 2 * b ^ 2 * C, hK0, ?_⟩
    intro w x hx
    have hr1 : 1 < ‖x‖ := lt_of_le_of_lt hR hx
    have hr0 : 0 < ‖x‖ := by linarith
    obtain ⟨hdet, hbx⟩ := hb x hx
    obtain ⟨ρ, hρ⟩ : ∃ ρ : ℝ, ρ = ‖x‖ ^ (-q) := ⟨_, rfl⟩
    obtain ⟨u, hu⟩ : ∃ u : ℝ, u = ‖x‖ ^ (-q - 1) := ⟨_, rfl⟩
    have hρ0 : 0 ≤ ρ := by rw [hρ]; exact Real.rpow_nonneg hr0.le _
    have hu0 : 0 ≤ u := by rw [hu]; exact Real.rpow_nonneg hr0.le _
    have hρ1 : ρ ≤ 1 := by
      rw [hρ]; exact Real.rpow_le_one_of_one_le_of_nonpos hr1.le (by linarith)
    rw [← hρ, ← hu]
    have hPD : ∀ (c : Fin 3) (f : E3 → ℝ), |partialDeriv c f x| ≤ ‖fderiv ℝ f x‖ := by
      intro c f
      have hn : ‖e c‖ = 1 := by simp [e]
      calc |partialDeriv c f x| = ‖fderiv ℝ f x (e c)‖ := (Real.norm_eq_abs _).symm
        _ ≤ ‖fderiv ℝ f x‖ * ‖e c‖ := (fderiv ℝ f x).le_opNorm _
        _ = ‖fderiv ℝ f x‖ := by rw [hn, mul_one]
    have hd1 : ∀ c a b' : Fin 3, |partialDeriv c (fun z => G z a b') x| ≤ C * u := by
      intro c a b'
      rw [hu]; exact (hPD c _).trans (hbx a b' 0).2.1
    have hGε : ∀ i j : Fin 3, |G x i j - (if i = j then (1 : ℝ) else 0)| ≤ C * ρ := by
      intro i j; rw [hρ]; exact (hbx i j 0).1
    have hGB : ∀ i j : Fin 3, |G x i j| ≤ B := by
      intro i j
      have h1 := hGε i j
      have h2 : |(if i = j then (1 : ℝ) else 0)| ≤ 1 := by split_ifs <;> simp
      have h3 := abs_sub_abs_le_abs_sub (G x i j) (if i = j then (1 : ℝ) else 0)
      have h4 : C * ρ ≤ C := by nlinarith
      rw [hBdef]; linarith
    have hdetpos : 0 < (G x).det := by linarith
    have hm : ∀ a1 a2 a3 a4 : ℝ, |a1| ≤ B → |a2| ≤ B → |a3| ≤ B → |a4| ≤ B →
        |a1 * a2 - a3 * a4| ≤ 2 * B ^ 2 ∧ |-(a1 * a2) + a3 * a4| ≤ 2 * B ^ 2 := by
      intro a1 a2 a3 a4 h1 h2 h3 h4
      have e1 : |a1 * a2| ≤ B ^ 2 := by
        rw [abs_mul, sq]; exact mul_le_mul h1 h2 (abs_nonneg _) hB0
      have e2 : |a3 * a4| ≤ B ^ 2 := by
        rw [abs_mul, sq]; exact mul_le_mul h3 h4 (abs_nonneg _) hB0
      have f1 := abs_le.mp e1
      have f2 := abs_le.mp e2
      constructor
      · rw [abs_le]; constructor <;> linarith
      · rw [abs_le]; constructor <;> linarith
    have hadj : ∀ k l : Fin 3, |(G x).adjugate k l| ≤ 2 * B ^ 2 := by
      intro k l
      rw [Matrix.adjugate_fin_three]
      fin_cases k <;> fin_cases l <;> simp <;>
        first
        | exact (hm _ _ _ _ (hGB _ _) (hGB _ _) (hGB _ _) (hGB _ _)).1
        | exact (hm _ _ _ _ (hGB _ _) (hGB _ _) (hGB _ _) (hGB _ _)).2
    have hinv2 : (G x).det⁻¹ ≤ 2 := by
      calc (G x).det⁻¹ ≤ (1 / 2 : ℝ)⁻¹ := inv_anti₀ (by norm_num) hdet
        _ = 2 := by norm_num
    have hPb : ∀ k l : Fin 3, |(G x)⁻¹ k l| ≤ b := by
      intro k l
      rw [Matrix.inv_def, Matrix.smul_apply, smul_eq_mul, Ring.inverse_eq_inv', abs_mul,
        abs_inv, abs_of_pos hdetpos, hbdef]
      calc (G x).det⁻¹ * |(G x).adjugate k l| ≤ 2 * (2 * B ^ 2) :=
            mul_le_mul hinv2 (hadj k l) (abs_nonneg _) (by norm_num)
        _ = 4 * B ^ 2 := by ring
    have hPA : (G x)⁻¹ * G x = 1 :=
      Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hdetpos.ne')
    have hPe : ∀ k l : Fin 3,
        |(G x)⁻¹ k l - (if k = l then (1 : ℝ) else 0)| ≤ 3 * (b * (C * ρ)) := by
      intro k l
      have heq : (G x)⁻¹ k l - (if k = l then (1 : ℝ) else 0) =
          ∑ m : Fin 3, (G x)⁻¹ k m * ((if m = l then (1 : ℝ) else 0) - G x m l) := by
        have h1 : (G x)⁻¹ * (1 - G x) = (G x)⁻¹ - 1 := by
          rw [Matrix.mul_sub, hPA, Matrix.mul_one]
        have h2 := congrFun (congrFun h1 k) l
        rw [Matrix.mul_apply] at h2
        simp only [Matrix.sub_apply, Matrix.one_apply] at h2
        exact h2.symm
      rw [heq]
      calc |∑ m : Fin 3, (G x)⁻¹ k m * ((if m = l then (1 : ℝ) else 0) - G x m l)|
          ≤ ∑ m : Fin 3, |(G x)⁻¹ k m * ((if m = l then (1 : ℝ) else 0) - G x m l)| :=
            Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ m : Fin 3, b * (C * ρ) := Finset.sum_le_sum fun m _ => by
            rw [abs_mul, abs_sub_comm]
            exact mul_le_mul (hPb k m) (hGε m l) (abs_nonneg _) hb0
        _ = 3 * (b * (C * ρ)) := by rw [Fin.sum_univ_three]; ring
    have hΓ : ∀ k i j : Fin 3, |christoffel G k i j x| ≤ 9 / 2 * b * (C * u) := by
      intro k i j
      show |(1 / 2 : ℝ) * ∑ l : Fin 3, (G x)⁻¹ k l *
        (partialDeriv i (fun z => G z j l) x + partialDeriv j (fun z => G z i l) x
          - partialDeriv l (fun z => G z i j) x)| ≤ _
      rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
      have hs : |∑ l : Fin 3, (G x)⁻¹ k l *
          (partialDeriv i (fun z => G z j l) x + partialDeriv j (fun z => G z i l) x
            - partialDeriv l (fun z => G z i j) x)| ≤ ∑ l : Fin 3, b * (3 * (C * u)) :=
        (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun l _ => by
          rw [abs_mul]
          refine mul_le_mul (hPb k l) ?_ (abs_nonneg _) hb0
          have h1 := abs_le.mp (hd1 i j l)
          have h2 := abs_le.mp (hd1 j i l)
          have h3 := abs_le.mp (hd1 l i j)
          rw [abs_le]; constructor <;> linarith [h1.1, h1.2, h2.1, h2.2, h3.1, h3.2])
      have hc : ∑ l : Fin 3, b * (3 * (C * u)) = 9 * b * (C * u) := by
        rw [Fin.sum_univ_three]; ring
      rw [hc] at hs
      linarith
    have hdiag : ∑ i : Fin 3, partialDeriv i (partialDeriv i w) x =
        ∑ i : Fin 3, ∑ j : Fin 3,
          (if i = j then (1 : ℝ) else 0) * partialDeriv i (partialDeriv j w) x := by
      refine Finset.sum_congr rfl fun i _ => ?_
      simp [ite_mul]
    have hid : lapLoc G w x - ∑ i : Fin 3, partialDeriv i (partialDeriv i w) x =
        ∑ i : Fin 3, ∑ j : Fin 3,
            ((G x)⁻¹ i j - (if i = j then (1 : ℝ) else 0)) * partialDeriv i (partialDeriv j w) x
          - ∑ i : Fin 3, ∑ j : Fin 3,
            (G x)⁻¹ i j * ∑ k : Fin 3, christoffel G k i j x * partialDeriv k w x := by
      rw [hdiag]
      simp only [lapLoc, hessLoc, Fin.sum_univ_three]
      ring
    rw [hid]
    obtain ⟨S2, hS2⟩ : ∃ S : ℝ,
        S = ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j w) x| := ⟨_, rfl⟩
    obtain ⟨S1, hS1⟩ : ∃ S : ℝ, S = ∑ k : Fin 3, |partialDeriv k w x| := ⟨_, rfl⟩
    have hS20 : 0 ≤ S2 := by
      rw [hS2]; exact Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun j _ => abs_nonneg _
    have hS10 : 0 ≤ S1 := by
      rw [hS1]; exact Finset.sum_nonneg fun k _ => abs_nonneg _
    rw [← hS2, ← hS1]
    have hT1 : |∑ i : Fin 3, ∑ j : Fin 3,
        ((G x)⁻¹ i j - (if i = j then (1 : ℝ) else 0)) * partialDeriv i (partialDeriv j w) x|
          ≤ 3 * (b * (C * ρ)) * S2 := by
      rw [hS2, Finset.mul_sum]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [Finset.mul_sum]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun j _ => ?_)
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (hPe i j) (abs_nonneg _)
    have hinner : ∀ i j : Fin 3,
        |∑ k : Fin 3, christoffel G k i j x * partialDeriv k w x| ≤ 9 / 2 * b * (C * u) * S1 := by
      intro i j
      rw [hS1, Finset.mul_sum]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_right (hΓ k i j) (abs_nonneg _)
    have hT2 : |∑ i : Fin 3, ∑ j : Fin 3,
        (G x)⁻¹ i j * ∑ k : Fin 3, christoffel G k i j x * partialDeriv k w x|
          ≤ ∑ i : Fin 3, ∑ j : Fin 3, b * (9 / 2 * b * (C * u) * S1) := by
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun j _ => ?_)
      rw [abs_mul]
      exact mul_le_mul (hPb i j) (hinner i j) (abs_nonneg _) hb0
    have hT2' : ∑ i : Fin 3, ∑ j : Fin 3, b * (9 / 2 * b * (C * u) * S1)
        = 9 * (b * (9 / 2 * b * (C * u) * S1)) := by
      simp only [Fin.sum_univ_three]; ring
    rw [hT2'] at hT2
    have a1 := abs_le.mp hT1
    have a2 := abs_le.mp hT2
    have k1 : 0 ≤ 3 * b * C * (u * S1) :=
      mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) hb0) hC) (mul_nonneg hu0 hS10)
    have k2 : 0 ≤ 81 / 2 * b ^ 2 * C * (ρ * S2) :=
      mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) (sq_nonneg b)) hC) (mul_nonneg hρ0 hS20)
    have hexp : (3 * b * C + 81 / 2 * b ^ 2 * C) * (ρ * S2 + u * S1) =
        3 * (b * (C * ρ)) * S2 + 9 * (b * (9 / 2 * b * (C * u) * S1))
          + 3 * b * C * (u * S1) + 81 / 2 * b ^ 2 * C * (ρ * S2) := by ring
    rw [abs_le]
    constructor <;> linarith
  obtain ⟨K₂, hK₂, hpert⟩ := hpert
  refine ⟨21 * K₂, by positivity, ?_⟩
  intro P hP y hy
  have hr0 : 0 < ‖y‖ := by linarith
  have hy0 : y ≠ 0 := norm_pos_iff.mp hr0
  have hr : ‖y‖ ≠ 0 := hr0.ne'
  
  have hd1 := contDiff_infty_iff_deriv.mp hP
  have hdP : Differentiable ℝ P := hd1.1
  have hd2 := contDiff_infty_iff_deriv.mp hd1.2
  have hdP' : Differentiable ℝ (deriv P) := hd2.1
  have hN : ∀ z : E3, z ≠ 0 → ∃ L : E3 →L[ℝ] ℝ, HasFDerivAt (fun w : E3 => ‖w‖) L z ∧
      ∀ k : Fin 3, L (e k) = z k / ‖z‖ := by
    intro z hz
    have hz0 : ‖z‖ ^ 2 ≠ 0 := pow_ne_zero 2 (norm_ne_zero_iff.mpr hz)
    have h1 : HasFDerivAt (fun w : E3 => ‖w‖ ^ 2) (2 • innerSL ℝ z) z :=
      (hasStrictFDerivAt_norm_sq z).hasFDerivAt
    have h2 := h1.sqrt hz0
    have hfun : (fun w : E3 => Real.sqrt (‖w‖ ^ 2)) = fun w => ‖w‖ := by
      funext w; exact Real.sqrt_sq (norm_nonneg w)
    rw [hfun] at h2
    refine ⟨_, h2, fun k => ?_⟩
    rw [Real.sqrt_sq (norm_nonneg z)]
    have hzn : ‖z‖ ≠ 0 := norm_ne_zero_iff.mpr hz
    simp [EuclideanSpace.inner_single_right]
    field_simp
  have hP1 : ∀ z : E3, z ≠ 0 → ∀ k : Fin 3,
      partialDeriv k (fun w => P ‖w‖) z = deriv P ‖z‖ * z k / ‖z‖ := by
    intro z hz k
    obtain ⟨L, hL, hLe⟩ := hN z hz
    have h : HasFDerivAt (fun w : E3 => P ‖w‖) (deriv P ‖z‖ • L) z :=
      (hdP ‖z‖).hasDerivAt.comp_hasFDerivAt z hL
    unfold partialDeriv
    rw [h.fderiv]
    simp only [ContinuousLinearMap.smul_apply, hLe, smul_eq_mul]
    ring
  have h1 : ∀ k : Fin 3, partialDeriv k (fun z => P ‖z‖) y = deriv P ‖y‖ * y k / ‖y‖ :=
    hP1 y hy0
  have h2 : ∀ i j : Fin 3, partialDeriv i (partialDeriv j (fun z => P ‖z‖)) y =
      deriv (deriv P) ‖y‖ * (y i * y j / ‖y‖ ^ 2) +
        deriv P ‖y‖ * ((if i = j then (1 : ℝ) else 0) / ‖y‖ - y i * y j / ‖y‖ ^ 3) := by
    intro i j
    have hev : partialDeriv j (fun w => P ‖w‖) =ᶠ[𝓝 y] fun z => deriv P ‖z‖ / ‖z‖ * z j := by
      filter_upwards [isOpen_ne.mem_nhds hy0] with z hz
      rw [hP1 z hz j]
      ring
    have hQd : HasDerivAt (fun t => deriv P t / t)
        ((deriv (deriv P) ‖y‖ * ‖y‖ - deriv P ‖y‖ * 1) / ‖y‖ ^ 2) ‖y‖ :=
      (hdP' ‖y‖).hasDerivAt.div (hasDerivAt_id' ‖y‖) hr
    obtain ⟨L, hL, hLe⟩ := hN y hy0
    have hc := hQd.comp_hasFDerivAt y hL
    have hpj : HasFDerivAt (fun z : E3 => z j) (EuclideanSpace.proj j : E3 →L[ℝ] ℝ) y :=
      (EuclideanSpace.proj j : E3 →L[ℝ] ℝ).hasFDerivAt
    have hm := hc.mul hpj
    have hm' : HasFDerivAt (fun z : E3 => deriv P ‖z‖ / ‖z‖ * z j) _ y := hm
    have hpe : (EuclideanSpace.proj j : E3 →L[ℝ] ℝ) (e i) = if i = j then 1 else 0 := by
      show (e i) j = _
      simp [EuclideanSpace.single_apply, eq_comm]
    show fderiv ℝ (partialDeriv j (fun w => P ‖w‖)) y (e i) = _
    rw [hev.fderiv_eq, hm'.fderiv]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, hLe,
      hpe, Function.comp]
    split_ifs <;> field_simp <;> ring
  
  have hyk : ∀ k : Fin 3, |y k| ≤ ‖y‖ := by
    intro k
    have := PiLp.norm_apply_le y k
    rwa [Real.norm_eq_abs] at this
  have hS : y 0 * y 0 + y 1 * y 1 + y 2 * y 2 = ‖y‖ ^ 2 := by
    have := EuclideanSpace.norm_sq_eq y
    rw [Fin.sum_univ_three] at this
    simp only [Real.norm_eq_abs, sq_abs] at this
    rw [this]; ring
  have e1 : ∑ k : Fin 3, |partialDeriv k (fun z => P ‖z‖) y| ≤ 3 * |deriv P ‖y‖| := by
    have hk : ∀ k : Fin 3, |deriv P ‖y‖ * y k / ‖y‖| ≤ |deriv P ‖y‖| := by
      intro k
      rw [abs_div, abs_mul, abs_of_pos hr0, div_le_iff₀ hr0]
      exact mul_le_mul_of_nonneg_left (hyk k) (abs_nonneg _)
    calc ∑ k : Fin 3, |partialDeriv k (fun z => P ‖z‖) y|
        ≤ ∑ k : Fin 3, |deriv P ‖y‖| := Finset.sum_le_sum (fun k _ => by rw [h1 k]; exact hk k)
      _ = 3 * |deriv P ‖y‖| := by rw [Fin.sum_univ_three]; ring
  have hentry : ∀ t d a b : ℝ, |t| ≤ 1 → |d| ≤ 1 →
      |b * t + a * (d / ‖y‖ - t / ‖y‖)| ≤ |b| + 2 * (|a| / ‖y‖) := by
    intro t d a b ht hd
    have k1 : |b * t| ≤ |b| := by
      rw [abs_mul]; exact mul_le_of_le_one_right (abs_nonneg _) ht
    have k2 : |d / ‖y‖ - t / ‖y‖| ≤ 2 / ‖y‖ := by
      rw [← sub_div, abs_div, abs_of_pos hr0]
      apply div_le_div_of_nonneg_right _ hr0.le
      have := abs_add_le d (-t)
      rw [abs_neg, ← sub_eq_add_neg] at this
      linarith
    have k3 : |a * (d / ‖y‖ - t / ‖y‖)| ≤ 2 * (|a| / ‖y‖) := by
      rw [abs_mul]
      calc |a| * |d / ‖y‖ - t / ‖y‖| ≤ |a| * (2 / ‖y‖) :=
            mul_le_mul_of_nonneg_left k2 (abs_nonneg _)
        _ = 2 * (|a| / ‖y‖) := by ring
    calc |b * t + a * (d / ‖y‖ - t / ‖y‖)| ≤ |b * t| + |a * (d / ‖y‖ - t / ‖y‖)| :=
          abs_add_le _ _
      _ ≤ |b| + 2 * (|a| / ‖y‖) := add_le_add k1 k3
  have ht : ∀ i j : Fin 3, |y i * y j / ‖y‖ ^ 2| ≤ 1 := by
    intro i j
    have hp2 : (0 : ℝ) < ‖y‖ ^ 2 := pow_pos hr0 2
    rw [abs_div, abs_mul, abs_of_pos hp2, div_le_one hp2]
    calc |y i| * |y j| ≤ ‖y‖ * ‖y‖ := mul_le_mul (hyk i) (hyk j) (abs_nonneg _) hr0.le
      _ = ‖y‖ ^ 2 := by ring
  have hδ : ∀ i j : Fin 3, |(if i = j then (1 : ℝ) else 0)| ≤ 1 := by
    intro i j; split_ifs <;> simp
  have hcube : ∀ i j : Fin 3, y i * y j / ‖y‖ ^ 3 = y i * y j / ‖y‖ ^ 2 / ‖y‖ := by
    intro i j
    ring
  have e2 : ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j (fun z => P ‖z‖)) y|
      ≤ 9 * |deriv (deriv P) ‖y‖| + 18 * (|deriv P ‖y‖| / ‖y‖) := by
    calc ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j (fun z => P ‖z‖)) y|
        ≤ ∑ i : Fin 3, ∑ j : Fin 3, (|deriv (deriv P) ‖y‖| + 2 * (|deriv P ‖y‖| / ‖y‖)) :=
          Finset.sum_le_sum (fun i _ => Finset.sum_le_sum (fun j _ => by
            rw [h2 i j, hcube i j]
            exact hentry _ _ _ _ (ht i j) (hδ i j)))
      _ = 9 * |deriv (deriv P) ‖y‖| + 18 * (|deriv P ‖y‖| / ‖y‖) := by
          simp only [Fin.sum_univ_three]; ring
  have e3 : ∑ i : Fin 3, partialDeriv i (partialDeriv i (fun z => P ‖z‖)) y =
      deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖ := by
    rw [Fin.sum_univ_three, h2, h2, h2, if_pos rfl, if_pos rfl, if_pos rfl]
    calc _ = deriv (deriv P) ‖y‖ * ((y 0 * y 0 + y 1 * y 1 + y 2 * y 2) / ‖y‖ ^ 2)
          + 3 * deriv P ‖y‖ / ‖y‖
          - deriv P ‖y‖ * ((y 0 * y 0 + y 1 * y 1 + y 2 * y 2) / ‖y‖ ^ 3) := by ring
      _ = deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖ := by
          rw [hS]; field_simp; ring
  
  have hw := hpert (fun z => P ‖z‖) y hy
  rw [e3, Real.rpow_sub_one hr] at hw
  have hw' := (abs_le.mp hw).2
  have hρ0 : 0 ≤ ‖y‖ ^ (-q) := Real.rpow_nonneg hr0.le _
  have hρr : 0 ≤ ‖y‖ ^ (-q) / ‖y‖ := div_nonneg hρ0 hr0.le
  have t1 : K₂ * (‖y‖ ^ (-q) *
        ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j (fun z => P ‖z‖)) y|)
      ≤ K₂ * (‖y‖ ^ (-q) * (9 * |deriv (deriv P) ‖y‖| + 18 * (|deriv P ‖y‖| / ‖y‖))) :=
    mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left e2 hρ0) hK₂
  have t2 : K₂ * (‖y‖ ^ (-q) / ‖y‖ * ∑ k : Fin 3, |partialDeriv k (fun z => P ‖z‖) y|)
      ≤ K₂ * (‖y‖ ^ (-q) / ‖y‖ * (3 * |deriv P ‖y‖|)) :=
    mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left e1 hρr) hK₂
  have t3 : 0 ≤ K₂ * ‖y‖ ^ (-q) * |deriv (deriv P) ‖y‖| :=
    mul_nonneg (mul_nonneg hK₂ hρ0) (abs_nonneg _)
  have hexp1 : K₂ * (‖y‖ ^ (-q) *
        ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j (fun z => P ‖z‖)) y|
      + ‖y‖ ^ (-q) / ‖y‖ * ∑ k : Fin 3, |partialDeriv k (fun z => P ‖z‖) y|)
      = K₂ * (‖y‖ ^ (-q) *
        ∑ i : Fin 3, ∑ j : Fin 3, |partialDeriv i (partialDeriv j (fun z => P ‖z‖)) y|)
      + K₂ * (‖y‖ ^ (-q) / ‖y‖ * ∑ k : Fin 3, |partialDeriv k (fun z => P ‖z‖) y|) := by ring
  have hexp2 : K₂ * (‖y‖ ^ (-q) * (9 * |deriv (deriv P) ‖y‖| + 18 * (|deriv P ‖y‖| / ‖y‖)))
      + K₂ * (‖y‖ ^ (-q) / ‖y‖ * (3 * |deriv P ‖y‖|))
      = 9 * (K₂ * ‖y‖ ^ (-q) * |deriv (deriv P) ‖y‖|)
        + 21 * (K₂ * ‖y‖ ^ (-q) * (|deriv P ‖y‖| / ‖y‖)) := by ring
  have hexp3 : 21 * K₂ * ‖y‖ ^ (-q) * (|deriv (deriv P) ‖y‖| + |deriv P ‖y‖| / ‖y‖)
      = 21 * (K₂ * ‖y‖ ^ (-q) * |deriv (deriv P) ‖y‖|)
        + 21 * (K₂ * ‖y‖ ^ (-q) * (|deriv P ‖y‖| / ‖y‖)) := by ring
  linarith

theorem neumann_barrier [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) (Rmin : ℝ) :
    ∃ (ψ : M → ℝ) (Rb c P₀ : ℝ), Rmin ≤ Rb ∧ Re < Rb ∧ 0 < c ∧
      ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ ∧
      (∀ p : M, 0 ≤ ψ p ∧ ψ p ≤ P₀) ∧
      (∀ p : M, g.lapM ψ p ≤ 0) ∧
      (∀ p : M, β p = 0 → g.gradInner ψ β p = 0) ∧
      (∀ y : E3, Rb < ‖y‖ → g.lapM ψ ((hAF.ends k).Φ y) ≤ -c * ‖y‖ ^ (-2 - ε)) :=
by
  classical
  
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hsmooth : ∀ i j : Fin 3,
      ContDiffOn ℝ ∞ (fun x => g.coeff (hAF.ends k).Φ x i j) {x : E3 | 1 < ‖x‖} := by
    intro i j
    rw [← hsrc]
    exact coeff_contDiffOn_source g (hAF.ends k).Φ i j
  have hq0 : 0 < hAF.q := lt_trans (by norm_num) hAF.q_gt
  obtain ⟨R₀, C₀, hR₀, hC₀, hb⟩ :=
    metric_coeff_bounds (g.coeff (hAF.ends k).Φ) hAF.q hq0 hsmooth (hAF.decay k)
  obtain ⟨K, hK, hrad⟩ :=
    radial_lapLoc_bound (g.coeff (hAF.ends k).Φ) hAF.q hq0 R₀ C₀ hR₀ hC₀ hb
  obtain ⟨ρc, hρc2, hcl⟩ := endChart_far_isClosed g hAF k
  have hRe2 : (2 : ℝ) ≤ Re := hβ.2.2.1
  have hβpos : ∀ y : E3, Re < ‖y‖ → 0 < β ((hAF.ends k).Φ y) := hβ.2.2.2.1
  obtain ⟨δ, hδdef⟩ : ∃ δ : ℝ, δ = (1 - ε) / (6 * (K + 1)) := ⟨_, rfl⟩
  have h1ε : (0 : ℝ) < 1 - ε := by linarith
  have hK1 : (0 : ℝ) < K + 1 := by linarith
  have hδ : 0 < δ := by
    rw [hδdef]
    exact div_pos h1ε (by linarith)
  have hevq : ∀ᶠ x in atTop, x ^ (-hAF.q) < δ :=
    (tendsto_rpow_neg_atTop hq0).eventually (Iio_mem_nhds hδ)
  obtain ⟨a, ha⟩ := Filter.eventually_atTop.mp hevq
  obtain ⟨m, hmdef⟩ : ∃ m : ℝ, m = max (max (max Rmin Re) (max R₀ ρc)) (max a 2) := ⟨_, rfl⟩
  have hmRmin : Rmin ≤ m := by
    rw [hmdef]
    exact le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) (le_max_left _ _)
  have hmRe : Re ≤ m := by
    rw [hmdef]
    exact le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) (le_max_left _ _)
  have hmR₀ : R₀ ≤ m := by
    rw [hmdef]
    exact le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) (le_max_left _ _)
  have hmρc : ρc ≤ m := by
    rw [hmdef]
    exact le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) (le_max_left _ _)
  have hma : a ≤ m := by
    rw [hmdef]
    exact le_trans (le_max_left _ _) (le_max_right _ _)
  have hm2 : (2 : ℝ) ≤ m := by
    rw [hmdef]
    exact le_trans (le_max_right _ _) (le_max_right _ _)
  obtain ⟨T, hTdef⟩ : ∃ T : ℝ, T = m + 1 := ⟨_, rfl⟩
  
  obtain ⟨P, hP, hPc, hPb, hPD, hPtail⟩ := barrier_profile ε T hε hε1 (by linarith)
  
  have hF : ContDiff ℝ ∞ (fun z : E3 => P ‖z‖) := by
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : ‖y‖ < T
    · have hV : {z : E3 | ‖z‖ < T} ∈ 𝓝 y :=
        (isOpen_lt continuous_norm continuous_const).mem_nhds hy
      have hev : (fun z : E3 => P ‖z‖) =ᶠ[𝓝 y] fun _ => P T :=
        Filter.eventually_of_mem hV (fun z hz => hPc _ (le_of_lt hz))
      exact contDiffAt_const.congr_of_eventuallyEq hev
    · have hy0 : y ≠ 0 := by
        intro h0
        apply hy
        rw [h0, norm_zero]
        linarith
      exact hP.contDiffAt.comp y (contDiffAt_norm ℝ hy0)
  
  have hclosedT : IsClosed ((hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖}) := hcl T (by linarith)
  obtain ⟨ψ, hψdef⟩ : ∃ ψ : M → ℝ, ψ = fun p =>
      if p ∈ (hAF.ends k).Φ.target then P ‖(hAF.ends k).Φ.symm p‖ else P T := ⟨_, rfl⟩
  have hψΦ : ∀ y : E3, 1 < ‖y‖ → ψ ((hAF.ends k).Φ y) = P ‖y‖ := by
    intro y hy
    have hys : y ∈ (hAF.ends k).Φ.source := by
      rw [hsrc]
      exact hy
    have hyt : (hAF.ends k).Φ y ∈ (hAF.ends k).Φ.target :=
      (hAF.ends k).Φ.toPartialEquiv.map_source hys
    have hl : (hAF.ends k).Φ.symm ((hAF.ends k).Φ y) = y :=
      (hAF.ends k).Φ.toPartialEquiv.left_inv hys
    rw [hψdef]
    dsimp only
    rw [if_pos hyt, hl]
  have hψc : ∀ p : M, p ∉ (hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖} → ψ p = P T := by
    intro p hp
    rw [hψdef]
    dsimp only
    split_ifs with hpt
    · have hy : (hAF.ends k).Φ ((hAF.ends k).Φ.symm p) = p :=
        (hAF.ends k).Φ.toPartialEquiv.right_inv hpt
      have hle : ‖(hAF.ends k).Φ.symm p‖ ≤ T := by
        by_contra hlt
        push_neg at hlt
        exact hp ⟨(hAF.ends k).Φ.symm p, le_of_lt hlt, hy⟩
      exact hPc _ hle
    · rfl
  have hψ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ := by
    intro p
    by_cases hpt : p ∈ (hAF.ends k).Φ.target
    · have hT' : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun p => P ‖(hAF.ends k).Φ.symm p‖)
          (hAF.ends k).Φ.target :=
        hF.contMDiff.comp_contMDiffOn (hAF.ends k).Φ.symm.contMDiffOn
      have hN : (hAF.ends k).Φ.target ∈ 𝓝 p := (hAF.ends k).Φ.open_target.mem_nhds hpt
      have hev : ψ =ᶠ[𝓝 p] fun p => P ‖(hAF.ends k).Φ.symm p‖ :=
        Filter.eventually_of_mem hN (fun q hq => by
          rw [hψdef]
          dsimp only
          rw [if_pos hq])
      exact (hT'.contMDiffAt hN).congr_of_eventuallyEq hev
    · have hpK : p ∈ ((hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖})ᶜ := by
        rintro ⟨y, hyK, rfl⟩
        apply hpt
        have hys : y ∈ (hAF.ends k).Φ.source := by
          rw [hsrc]
          show (1 : ℝ) < ‖y‖
          have : T ≤ ‖y‖ := hyK
          linarith
        exact (hAF.ends k).Φ.toPartialEquiv.map_source hys
      have hev : ψ =ᶠ[𝓝 p] fun _ => P T :=
        Filter.eventually_of_mem (hclosedT.isOpen_compl.mem_nhds hpK) (fun q hq => hψc q hq)
      exact contMDiffAt_const.congr_of_eventuallyEq hev
  
  have hpd0 : ∀ (c : ℝ) (j : Fin 3) (y : E3), partialDeriv j (fun _ : E3 => c) y = 0 := by
    intro c j y
    simp [partialDeriv]
  have hpd00 : ∀ (c : ℝ) (i j : Fin 3) (y : E3),
      partialDeriv i (partialDeriv j (fun _ : E3 => c)) y = 0 := by
    intro c i j y
    have h : partialDeriv j (fun _ : E3 => c) = fun _ => 0 := funext (hpd0 c j)
    rw [h]
    exact hpd0 0 i y
  have hconst : ∀ (c : ℝ) (p : M) (w : M → ℝ),
      g.lapM (fun _ => c) p = 0 ∧ g.gradInner (fun _ => c) w p = 0 := by
    intro c p w
    constructor
    · simp only [RiemannianMetric3.lapM, lapLoc, hessLoc, hpd0, hpd00]
      simp
    · simp only [RiemannianMetric3.gradInner, hpd0]
      simp
  have hoff : ∀ p : M, p ∉ (hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖} →
      g.lapM ψ p = 0 ∧ g.gradInner ψ β p = 0 := by
    intro p hp
    obtain ⟨h1, h2⟩ := (lapM_gradInner_linear_local g ψ (fun _ => P T) β p).2 _
      hclosedT.isOpen_compl hp (fun q hq => hψc q hq)
    exact ⟨h1.trans (hconst (P T) p β).1, h2.trans (hconst (P T) p β).2⟩
  
  have hlocG : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f₁ f₂ : E3 → ℝ) (y : E3),
      f₁ =ᶠ[𝓝 y] f₂ → lapLoc G f₁ y = lapLoc G f₂ y := by
    intro G f₁ f₂ y hfe
    have h1 : ∀ j : Fin 3, partialDeriv j f₁ y = partialDeriv j f₂ y := by
      intro j
      show fderiv ℝ f₁ y (e j) = fderiv ℝ f₂ y (e j)
      rw [hfe.fderiv_eq]
    have h2 : ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j f₁) y = partialDeriv i (partialDeriv j f₂) y := by
      intro i j
      have hev : partialDeriv j f₁ =ᶠ[𝓝 y] partialDeriv j f₂ := by
        filter_upwards [hfe.eventuallyEq_nhds] with z hz
        show fderiv ℝ f₁ z (e j) = fderiv ℝ f₂ z (e j)
        rw [hz.fderiv_eq]
      show fderiv ℝ (partialDeriv j f₁) y (e i) = fderiv ℝ (partialDeriv j f₂) y (e i)
      rw [hev.fderiv_eq]
    simp only [lapLoc, hessLoc, h1, h2]
  have hkey : ∀ y : E3, T ≤ ‖y‖ →
      g.lapM ψ ((hAF.ends k).Φ y) ≤
        -(1 / 2) * (-(deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖)) := by
    intro y hy
    have hy1 : (1 : ℝ) < ‖y‖ := by linarith
    have hys : y ∈ (hAF.ends k).Φ.source := by
      rw [hsrc]
      exact hy1
    have hinv := lapLocal_chart_invariant g (hAF.ends k).Φ ψ Set.univ isOpen_univ
      hψ.contMDiffOn y hys trivial
    have e1 : lapLoc (g.coeff (hAF.ends k).Φ) (fun z => ψ ((hAF.ends k).Φ z)) y =
        lapLocal (g.coeff (hAF.ends k).Φ) (ψ ∘ (hAF.ends k).Φ) y := rfl
    have e2 : lapM g ψ ((hAF.ends k).Φ y) = g.lapM ψ ((hAF.ends k).Φ y) := rfl
    have hU1 : {z : E3 | 1 < ‖z‖} ∈ 𝓝 y :=
      (isOpen_lt continuous_const continuous_norm).mem_nhds hy1
    have hfe : (fun z => ψ ((hAF.ends k).Φ z)) =ᶠ[𝓝 y] (fun z => P ‖z‖) :=
      Filter.eventually_of_mem hU1 (fun z hz => hψΦ z hz)
    have hmain : g.lapM ψ ((hAF.ends k).Φ y) =
        lapLoc (g.coeff (hAF.ends k).Φ) (fun z => P ‖z‖) y := by
      rw [← e2, ← hinv, ← e1, hlocG _ _ _ y hfe]
    have hRy : R₀ < ‖y‖ := by linarith
    have hb1 := hrad P hP y hRy
    obtain ⟨hD0, hX⟩ := hPD ‖y‖ (by linarith)
    have hsmall : ‖y‖ ^ (-hAF.q) < δ := ha ‖y‖ (by linarith)
    have hX0 : 0 ≤ |deriv (deriv P) ‖y‖| + |deriv P ‖y‖| / ‖y‖ :=
      add_nonneg (abs_nonneg _) (div_nonneg (abs_nonneg _) (norm_nonneg _))
    have s1 : K * ‖y‖ ^ (-hAF.q) * (|deriv (deriv P) ‖y‖| + |deriv P ‖y‖| / ‖y‖) ≤
        K * δ * (|deriv (deriv P) ‖y‖| + |deriv P ‖y‖| / ‖y‖) := by
      apply mul_le_mul_of_nonneg_right _ hX0
      exact mul_le_mul_of_nonneg_left (le_of_lt hsmall) hK
    have s2 : K * δ * (|deriv (deriv P) ‖y‖| + |deriv P ‖y‖| / ‖y‖) ≤
        K * δ * (3 / (1 - ε) * (-(deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖))) :=
      mul_le_mul_of_nonneg_left hX (mul_nonneg hK (le_of_lt hδ))
    have s3 : K * δ * (3 / (1 - ε) * (-(deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖))) =
        K / (2 * (K + 1)) * (-(deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖)) := by
      rw [hδdef]
      field_simp [h1ε.ne', hK1.ne']
      ring
    have s4 : K / (2 * (K + 1)) * (-(deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖)) ≤
        1 / 2 * (-(deriv (deriv P) ‖y‖ + 2 * deriv P ‖y‖ / ‖y‖)) := by
      apply mul_le_mul_of_nonneg_right _ hD0
      rw [div_le_iff₀ (by linarith)]
      linarith
    rw [hmain]
    linarith
  
  refine ⟨ψ, T + 1, ε * (1 - ε) / 2, P T, by linarith, by linarith, ?_, hψ, ?_, ?_, ?_, ?_⟩
  · have := mul_pos hε h1ε
    linarith
  · intro p
    by_cases hp : p ∈ (hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖}
    · obtain ⟨y, hy, rfl⟩ := hp
      have hy' : T ≤ ‖y‖ := hy
      rw [hψΦ y (by linarith)]
      exact hPb _
    · rw [hψc p hp]
      exact ⟨(hPb T).1, le_rfl⟩
  · intro p
    by_cases hp : p ∈ (hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖}
    · obtain ⟨y, hy, rfl⟩ := hp
      have hy' : T ≤ ‖y‖ := hy
      have h1 := hkey y hy'
      have h2 := (hPD ‖y‖ (by linarith)).1
      linarith
    · rw [(hoff p hp).1]
  · intro p hp0
    have hp : p ∉ (hAF.ends k).Φ '' {y : E3 | T ≤ ‖y‖} := by
      rintro ⟨y, hy, rfl⟩
      have hy' : T ≤ ‖y‖ := hy
      have h3 := hβpos y (by linarith)
      rw [hp0] at h3
      exact lt_irrefl _ h3
    exact (hoff p hp).2
  · intro y hy
    have hy' : T ≤ ‖y‖ := by linarith
    have h1 := hkey y hy'
    rw [hPtail ‖y‖ (by linarith)] at h1
    have h2 : -(ε * (1 - ε) / 2) * ‖y‖ ^ (-2 - ε) =
        -(1 / 2) * (ε * (1 - ε) * ‖y‖ ^ (-2 - ε)) := by ring
    rw [h2]
    exact h1

theorem euclid_hopf_lemma (A : E3 → Matrix (Fin 3) (Fin 3) ℝ) (bv : E3 → Fin 3 → ℝ)
    (U : Set E3) (hU : IsOpen U)
    (hA : ∀ i j : Fin 3, ContinuousOn (fun x => A x i j) U)
    (hb : ∀ k : Fin 3, ContinuousOn (fun x => bv x k) U)
    (hpos : ∀ x ∈ U, (A x).PosDef) (f : E3 → ℝ) (hf : ContDiffOn ℝ 2 f U)
    (c x₀ : E3) (R : ℝ) (hR : 0 < R) (hball : Metric.closedBall c R ⊆ U)
    (hx₀ : dist x₀ c = R)
    (hL : ∀ x ∈ Metric.ball c R, 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3,
        A x i j * partialDeriv i (fun z => partialDeriv j f z) x +
      ∑ k : Fin 3, bv x k * partialDeriv k f x)
    (hlt : ∀ x ∈ Metric.ball c R, f x < f x₀) :
    0 < fderiv ℝ f x₀ (x₀ - c) :=
by
  classical
  
  have hess : ∀ (w : E3 → ℝ) (z : E3), ContDiffAt ℝ 2 w z → IsLocalMax w z →
      ∀ ξ : Fin 3 → ℝ,
      ∑ i : Fin 3, ∑ j : Fin 3, ξ i * ξ j * partialDeriv i (fun y => partialDeriv j w y) z ≤ 0 := by
    intro w z hw hmax ξ
    have hev : ∀ᶠ y in 𝓝 z, DifferentiableAt ℝ w y :=
      (hw.eventually (by simp)).mono fun y hy => hy.differentiableAt (by simp)
    have hD1 : DifferentiableAt ℝ (fderiv ℝ w) z :=
      (hw.fderiv_right (m := 1) (by norm_num)).differentiableAt (by simp)
    set D := fderiv ℝ (fderiv ℝ w) z with hDdef
    have hentry : ∀ i j : Fin 3,
        partialDeriv i (fun y => partialDeriv j w y) z = D (e i) (e j) := by
      intro i j
      have h1 : HasFDerivAt (fun y => fderiv ℝ w y (e j)) (D.flip (e j)) z := by
        have := hD1.hasFDerivAt.clm_apply (hasFDerivAt_const (e j) z)
        simpa using this
      show fderiv ℝ (fun y => fderiv ℝ w y (e j)) z (e i) = _
      rw [h1.fderiv]
      rfl
    set v : E3 := ∑ i : Fin 3, ξ i • e i with hv
    have hsum : ∑ i : Fin 3, ∑ j : Fin 3,
        ξ i * ξ j * partialDeriv i (fun y => partialDeriv j w y) z = D v v := by
      simp only [hentry, hv, Fin.sum_univ_three, map_add, map_smul, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    rw [hsum]
    set ℓ : ℝ → E3 := fun s => z + s • v with hℓ
    have hℓd : ∀ s, HasDerivAt ℓ v s := by
      intro s
      have := ((hasDerivAt_id s).smul_const v).const_add z
      simpa [hℓ] using this
    have hℓ0 : ℓ 0 = z := by simp [hℓ]
    have hℓc : Continuous ℓ := by fun_prop
    have hℓt : Tendsto ℓ (𝓝 0) (𝓝 z) := by
      have := hℓc.tendsto 0
      rwa [hℓ0] at this
    set φ : ℝ → ℝ := fun s => w (ℓ s) with hφ
    set ψ : ℝ → ℝ := fun s => fderiv ℝ w (ℓ s) v with hψ
    have hφd : ∀ᶠ s in 𝓝 (0:ℝ), HasDerivAt φ (ψ s) s := by
      filter_upwards [hℓt.eventually hev] with s hs
      exact hs.hasFDerivAt.comp_hasDerivAt s (hℓd s)
    have hdφ : deriv φ =ᶠ[𝓝 0] ψ := by
      filter_upwards [hφd] with s hs
      exact hs.deriv
    have hψd : HasDerivAt ψ (D v v) 0 := by
      have h1 : HasFDerivAt (fderiv ℝ w) D (ℓ 0) := by
        rw [hℓ0]; exact hD1.hasFDerivAt
      have h2 := h1.comp_hasDerivAt (0:ℝ) (hℓd 0)
      have h3 := h2.clm_apply (hasDerivAt_const (0:ℝ) v)
      simpa using h3
    have hdd : deriv (deriv φ) 0 = D v v := by
      rw [hdφ.deriv_eq]; exact hψd.deriv
    have hd0 : deriv φ 0 = 0 := by
      rw [hdφ.eq_of_nhds]
      simp only [hψ, hℓ0, hmax.fderiv_eq_zero, ContinuousLinearMap.zero_apply]
    have hφmax : IsLocalMax φ 0 := by
      have h1 : IsLocalMax w (ℓ 0) := by rw [hℓ0]; exact hmax
      exact h1.comp_continuous hℓc.continuousAt
    have hφc : ContinuousAt φ 0 := by
      have h1 : ContinuousAt w (ℓ 0) := by rw [hℓ0]; exact hw.continuousAt
      exact h1.comp hℓc.continuousAt
    by_contra hcon
    push_neg at hcon
    have hmin : IsLocalMin φ 0 :=
      isLocalMin_of_deriv_deriv_pos (by rw [hdd]; exact hcon) hd0 hφc
    have hconst : ∀ᶠ s in 𝓝 (0:ℝ), φ s = φ 0 :=
      (hmin.and hφmax).mono fun s hs => le_antisymm hs.2 hs.1
    have hdz : deriv φ =ᶠ[𝓝 0] fun _ => (0:ℝ) := by
      filter_upwards [hconst.eventually_nhds] with s hs
      have : φ =ᶠ[𝓝 s] fun _ => φ 0 := hs
      rw [this.deriv_eq, deriv_const]
    have : deriv (deriv φ) 0 = 0 := by
      rw [hdz.deriv_eq, deriv_const]
    linarith
  
  have htrace : ∀ (A₀ : Matrix (Fin 3) (Fin 3) ℝ), A₀.PosSemidef →
      ∀ (H : Matrix (Fin 3) (Fin 3) ℝ),
      (∀ ξ : Fin 3 → ℝ, ∑ i : Fin 3, ∑ j : Fin 3, ξ i * ξ j * H i j ≤ 0) →
      ∑ i : Fin 3, ∑ j : Fin 3, A₀ i j * H i j ≤ 0 := by
    intro A₀ hA₀ H hH
    obtain ⟨B, hB⟩ := Matrix.posSemidef_iff_eq_conjTranspose_mul_self.mp hA₀
    have : ∑ i : Fin 3, ∑ j : Fin 3, A₀ i j * H i j =
        ∑ k : Fin 3, ∑ i : Fin 3, ∑ j : Fin 3, B k i * B k j * H i j := by
      rw [hB]
      simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, star_trivial, Fin.sum_univ_three]
      ring
    rw [this]
    exact Finset.sum_nonpos fun k _ => hH (fun i => B k i)
  
  have hlin : ∀ (A₀ : Matrix (Fin 3) (Fin 3) ℝ) (b₀ : Fin 3 → ℝ) (F G : E3 → ℝ) (ε a : ℝ) (z : E3),
      ContDiffAt ℝ 2 F z → ContDiffAt ℝ 2 G z →
      ∑ i : Fin 3, ∑ j : Fin 3, A₀ i j *
          partialDeriv i (fun y => partialDeriv j (fun x => F x + ε * G x + a) y) z +
        ∑ k : Fin 3, b₀ k * partialDeriv k (fun x => F x + ε * G x + a) z =
      (∑ i : Fin 3, ∑ j : Fin 3, A₀ i j * partialDeriv i (fun y => partialDeriv j F y) z +
        ∑ k : Fin 3, b₀ k * partialDeriv k F z) +
      ε * (∑ i : Fin 3, ∑ j : Fin 3, A₀ i j * partialDeriv i (fun y => partialDeriv j G y) z +
        ∑ k : Fin 3, b₀ k * partialDeriv k G z) := by
    intro A₀ b₀ F G ε a z hF hG
    have hFev : ∀ᶠ y in 𝓝 z, DifferentiableAt ℝ F y :=
      (hF.eventually (by simp)).mono fun y hy => hy.differentiableAt (by simp)
    have hGev : ∀ᶠ y in 𝓝 z, DifferentiableAt ℝ G y :=
      (hG.eventually (by simp)).mono fun y hy => hy.differentiableAt (by simp)
    have hW1 : ∀ᶠ y in 𝓝 z, ∀ j : Fin 3, partialDeriv j (fun x => F x + ε * G x + a) y =
        partialDeriv j F y + ε * partialDeriv j G y := by
      filter_upwards [hFev, hGev] with y hy1 hy2
      intro j
      have hd : HasFDerivAt (fun x => F x + ε * G x + a) (fderiv ℝ F y + ε • fderiv ℝ G y) y :=
        (hy1.hasFDerivAt.add (hy2.hasFDerivAt.const_mul ε)).add_const a
      show fderiv ℝ (fun x => F x + ε * G x + a) y (e j) = fderiv ℝ F y (e j) + ε * fderiv ℝ G y (e j)
      rw [hd.fderiv]
      simp
    have hpd : ∀ (P : E3 → ℝ), ContDiffAt ℝ 2 P z → ∀ j : Fin 3,
        DifferentiableAt ℝ (fun y => partialDeriv j P y) z := by
      intro P hP j
      have h1 : DifferentiableAt ℝ (fderiv ℝ P) z :=
        (hP.fderiv_right (m := 1) (by norm_num)).differentiableAt (by simp)
      exact h1.clm_apply (differentiableAt_const _)
    have h2 : ∀ i j : Fin 3,
        partialDeriv i (fun y => partialDeriv j (fun x => F x + ε * G x + a) y) z =
        partialDeriv i (fun y => partialDeriv j F y) z +
          ε * partialDeriv i (fun y => partialDeriv j G y) z := by
      intro i j
      have hev : (fun y => partialDeriv j (fun x => F x + ε * G x + a) y) =ᶠ[𝓝 z]
          (fun y => partialDeriv j F y + ε * partialDeriv j G y) := hW1.mono fun y hy => hy j
      have hd : HasFDerivAt (fun y => partialDeriv j F y + ε * partialDeriv j G y)
          (fderiv ℝ (fun y => partialDeriv j F y) z +
            ε • fderiv ℝ (fun y => partialDeriv j G y) z) z :=
        (hpd F hF j).hasFDerivAt.add ((hpd G hG j).hasFDerivAt.const_mul ε)
      show fderiv ℝ (fun y => partialDeriv j (fun x => F x + ε * G x + a) y) z (e i) =
        fderiv ℝ (fun y => partialDeriv j F y) z (e i) +
          ε * fderiv ℝ (fun y => partialDeriv j G y) z (e i)
      rw [hev.fderiv_eq, hd.fderiv]
      simp
    have h1 : ∀ k : Fin 3, partialDeriv k (fun x => F x + ε * G x + a) z =
        partialDeriv k F z + ε * partialDeriv k G z := fun k => hW1.self_of_nhds k
    simp only [h1, h2, Fin.sum_univ_three]
    ring
  
  have hLmax : ∀ (w : E3 → ℝ) (z : E3), z ∈ U → ContDiffAt ℝ 2 w z → IsLocalMax w z →
      ∑ i : Fin 3, ∑ j : Fin 3, A z i j * partialDeriv i (fun y => partialDeriv j w y) z +
        ∑ k : Fin 3, bv z k * partialDeriv k w z ≤ 0 := by
    intro w z hzU hw hmax
    have h0 : ∀ k : Fin 3, partialDeriv k w z = 0 := by
      intro k
      show fderiv ℝ w z (e k) = 0
      rw [hmax.fderiv_eq_zero, ContinuousLinearMap.zero_apply]
    have h2 := htrace (A z) (hpos z hzU).posSemidef
      (fun i j => partialDeriv i (fun y => partialDeriv j w y) z) (hess w z hw hmax)
    simp only [h0, mul_zero, Finset.sum_const_zero, add_zero]
    exact h2
  
  set D : Set E3 := closedBall c R ∩ {x | R / 2 ≤ dist x c} with hD
  have hDc : IsCompact D := (isCompact_closedBall c R).inter_right
    (isClosed_le continuous_const (continuous_id.dist continuous_const))
  have hDU : D ⊆ U := fun x hx => hball hx.1
  have hx₀D : x₀ ∈ D := ⟨by rw [mem_closedBall, hx₀], by
    show R / 2 ≤ dist x₀ c
    rw [hx₀]; linarith⟩
  have hcoord : ∀ i : Fin 3, Continuous (fun x : E3 => x i) := fun i => by fun_prop
  have hA' : ∀ i j, ContinuousOn (fun x => A x i j) D := fun i j => (hA i j).mono hDU
  have hb' : ∀ k, ContinuousOn (fun x => bv x k) D := fun k => (hb k).mono hDU
  set q : E3 → ℝ := fun x => ∑ i : Fin 3, ∑ j : Fin 3, (x i - c i) * A x i j * (x j - c j)
    with hq
  set T : E3 → ℝ := fun x => ∑ i : Fin 3, A x i i + ∑ k : Fin 3, bv x k * (x k - c k) with hT
  have hqc : ContinuousOn q D := by
    simp only [hq]
    fun_prop
  have hTc : ContinuousOn T D := by
    simp only [hT]
    fun_prop
  have hqpos : ∀ x ∈ D, 0 < q x := by
    intro x hx
    have hne : (fun i => x i - c i) ≠ 0 := by
      intro h0
      have hxc : x = c := by
        ext i
        have := congrFun h0 i
        simp only [Pi.zero_apply] at this
        linarith
      have := hx.2
      simp only [Set.mem_setOf_eq, hxc, dist_self] at this
      linarith
    have h1 := (hpos x (hDU hx)).dotProduct_mulVec_pos hne
    have h2 : star (fun i => x i - c i) ⬝ᵥ (A x).mulVec (fun i => x i - c i) = q x := by
      simp only [dotProduct, Matrix.mulVec, star_trivial, hq, Fin.sum_univ_three]
      ring
    rw [h2] at h1
    exact h1
  obtain ⟨xm, hxmD, hxm⟩ := hDc.exists_isMinOn ⟨x₀, hx₀D⟩ hqc
  obtain ⟨xM, hxMD, hxM⟩ := hDc.exists_isMaxOn ⟨x₀, hx₀D⟩ hTc
  set m := q xm with hmdef
  set K := max 0 (T xM) with hKdef
  have hm : 0 < m := hqpos xm hxmD
  have hK : 0 ≤ K := le_max_left _ _
  have hqm : ∀ x ∈ D, m ≤ q x := fun x hx => isMinOn_iff.mp hxm x hx
  have hTK : ∀ x ∈ D, T x ≤ K := fun x hx => le_trans (isMaxOn_iff.mp hxM x hx) (le_max_right _ _)
  set α := K / (2 * m) + 1 with hαdef
  have hα : 0 < α := by positivity
  have hαm : 2 * α * m - K = 2 * m := by
    rw [hαdef]; field_simp; ring
  have hE : ∀ x ∈ D, 0 < 4 * α ^ 2 * q x - 2 * α * T x := by
    intro x hx
    have h1 := hqm x hx
    have h2 := hTK x hx
    have h3 : 4 * α ^ 2 * m ≤ 4 * α ^ 2 * q x :=
      mul_le_mul_of_nonneg_left h1 (by positivity)
    have h4 : 2 * α * T x ≤ 2 * α * K := mul_le_mul_of_nonneg_left h2 (by positivity)
    have h5 : 4 * α ^ 2 * m - 2 * α * K = 4 * α * m := by
      have : 4 * α ^ 2 * m - 2 * α * K = 2 * α * (2 * α * m - K) := by ring
      rw [this, hαm]; ring
    have h6 : 0 < 4 * α * m := by positivity
    linarith
  
  set h : E3 → ℝ := fun x => Real.exp (-α * ‖x - c‖ ^ 2) with hh
  have hd : ∀ y : E3, HasFDerivAt h (Real.exp (-α * ‖y - c‖ ^ 2) •
      ((-α) • (2 • (innerSL ℝ (y - c)).comp (ContinuousLinearMap.id ℝ E3)))) y := by
    intro y
    have h1 := ((hasFDerivAt_id y).sub_const c).norm_sq
    have h2 := h1.const_mul (-α)
    exact h2.exp
  have hval : ∀ y u : E3, fderiv ℝ h y u =
      Real.exp (-α * ‖y - c‖ ^ 2) * (-α * (2 * inner ℝ (y - c) u)) := by
    intro y u
    rw [(hd y).fderiv]
    simp [smul_eq_mul, inner_sub_left]
  have hp1 : ∀ (y : E3) (k : Fin 3), partialDeriv k h y =
      -2 * α * (y k - c k) * Real.exp (-α * ‖y - c‖ ^ 2) := by
    intro y k
    show fderiv ℝ h y (e k) = _
    rw [hval]
    simp [EuclideanSpace.inner_single_right]
    ring
  have hcd : ContDiff ℝ 2 h := Real.contDiff_exp.comp (contDiff_const.mul
      ((contDiff_norm_sq ℝ).comp (contDiff_id.sub contDiff_const)))
  have hp2 : ∀ (y : E3) (i j : Fin 3),
      partialDeriv i (fun z => partialDeriv j h z) y =
      (4 * α ^ 2 * (y i - c i) * (y j - c j) - 2 * α * (if i = j then 1 else 0)) *
        Real.exp (-α * ‖y - c‖ ^ 2) := by
    intro y i j
    have hfun : (fun z => partialDeriv j h z) =
        fun z => (-2 * α * (z j - c j)) * h z := by
      funext z; rw [hp1]
    rw [hfun]
    have hlin' : HasFDerivAt (fun z : E3 => -2 * α * (z j - c j))
        ((-2 * α) • (EuclideanSpace.proj (𝕜 := ℝ) (ι := Fin 3) j)) y := by
      have h1 : HasFDerivAt (fun z : E3 => z j - c j)
          (EuclideanSpace.proj (𝕜 := ℝ) (ι := Fin 3) j) y := by
        have := ((EuclideanSpace.proj (𝕜 := ℝ) (ι := Fin 3) j).hasFDerivAt (x := y)).sub_const (c j)
        simpa using this
      exact h1.const_mul (-2 * α)
    have hprod : HasFDerivAt (fun z : E3 => -2 * α * (z j - c j) * h z) _ y :=
      hlin'.mul (hd y)
    show fderiv ℝ _ y (e i) = _
    rw [hprod.fderiv]
    simp [smul_eq_mul, EuclideanSpace.inner_single_right, EuclideanSpace.single_apply, hh]
    split_ifs with h1 h2 h2
    · subst h1; ring
    · exact absurd h1.symm h2
    · exact absurd h2.symm h1
    · ring
  have hp3 : ∀ y : E3, fderiv ℝ h y (c - y) =
      2 * α * ‖y - c‖ ^ 2 * Real.exp (-α * ‖y - c‖ ^ 2) := by
    intro y
    rw [hval]
    have : inner ℝ (y - c) (c - y) = -‖y - c‖ ^ 2 := by
      rw [show c - y = -(y - c) by abel, inner_neg_right, real_inner_self_eq_norm_sq]
    rw [this]
    ring
  
  have hLh : ∀ z ∈ D, 0 < ∑ i : Fin 3, ∑ j : Fin 3,
      A z i j * partialDeriv i (fun y => partialDeriv j h y) z +
        ∑ k : Fin 3, bv z k * partialDeriv k h z := by
    intro z hz
    have hid : ∑ i : Fin 3, ∑ j : Fin 3,
        A z i j * partialDeriv i (fun y => partialDeriv j h y) z +
          ∑ k : Fin 3, bv z k * partialDeriv k h z =
        Real.exp (-α * ‖z - c‖ ^ 2) * (4 * α ^ 2 * q z - 2 * α * T z) := by
      simp only [hp2]
      simp only [hp1, hq, hT, Fin.sum_univ_three, Fin.isValue, Fin.reduceEq, ↓reduceIte]
      ring
    rw [hid]
    exact mul_pos (Real.exp_pos _) (hE z hz)
  
  have hfc : ContinuousOn f (closedBall c R) := hf.continuousOn.mono hball
  obtain ⟨y, hyS, hymax⟩ := (isCompact_sphere c (R / 2)).exists_isMaxOn
    (NormedSpace.sphere_nonempty.mpr (by linarith))
    (hfc.mono (sphere_subset_closedBall.trans (closedBall_subset_closedBall (by linarith))))
  have hyb : y ∈ ball c R := by
    rw [mem_ball, mem_sphere.mp hyS]; linarith
  set δ := f x₀ - f y with hδ
  have hδpos : 0 < δ := by have := hlt y hyb; linarith
  have hinner : ∀ x : E3, dist x c = R / 2 → f x ≤ f y := fun x hx =>
    isMaxOn_iff.mp hymax x (mem_sphere.mpr hx)
  have hle : ∀ x ∈ closedBall c R, f x ≤ f x₀ := by
    intro x hx
    rw [← closure_ball c hR.ne'] at hx
    exact le_on_closure (fun x hx => (hlt x hx).le)
      (by rw [closure_ball c hR.ne']; exact hfc) continuousOn_const hx
  
  set ε := δ / 2 with hε
  have hεpos : 0 < ε := by positivity
  set h₀ := Real.exp (-α * R ^ 2) with hh₀
  have hh₀pos : 0 < h₀ := Real.exp_pos _
  have hhle1 : ∀ x, h x ≤ 1 := by
    intro x
    exact Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hα.le) (sq_nonneg _))
  have hhR : ∀ x, dist x c = R → h x = h₀ := by
    intro x hx
    simp only [hh, hh₀]
    rw [← dist_eq_norm, hx]
  set a := -f x₀ - ε * h₀ with ha
  set w : E3 → ℝ := fun x => f x + ε * h x + a with hw
  have hwc : ContinuousOn w D :=
    ((hfc.mono fun x hx => hx.1).add (continuousOn_const.mul hcd.continuous.continuousOn)).add
      continuousOn_const
  have hfcd : ∀ z ∈ closedBall c R, ContDiffAt ℝ 2 f z :=
    fun z hz => hf.contDiffAt (hU.mem_nhds (hball hz))
  have hwcd : ∀ z ∈ closedBall c R, ContDiffAt ℝ 2 w z := fun z hz =>
    ((hfcd z hz).add (contDiffAt_const.mul hcd.contDiffAt)).add contDiffAt_const
  have hwx₀ : w x₀ = 0 := by
    simp only [hw, ha, hhR x₀ hx₀]; ring
  
  obtain ⟨z, hzD, hzmax⟩ := hDc.exists_isMaxOn ⟨x₀, hx₀D⟩ hwc
  have hwz : w z ≤ 0 := by
    by_contra hcon
    push_neg at hcon
    have hz1 : dist z c ≠ R / 2 := by
      intro hzc
      have h1 := hinner z hzc
      have h2 := hhle1 z
      have h3 : w z ≤ f y + ε * 1 + a := by
        simp only [hw]
        have := mul_le_mul_of_nonneg_left h2 hεpos.le
        linarith
      have h4 : f y + ε * 1 + a < 0 := by
        simp only [ha, hε, hδ]
        nlinarith
      linarith
    have hz2 : dist z c ≠ R := by
      intro hzc
      have h1 := hle z hzD.1
      have h2 : w z = f z - f x₀ := by
        simp only [hw, ha, hhR z hzc]; ring
      linarith
    have hzlo : R / 2 < dist z c := lt_of_le_of_ne hzD.2 (Ne.symm hz1)
    have hzhi : dist z c < R := lt_of_le_of_ne (mem_closedBall.mp hzD.1) hz2
    have hDn : D ∈ 𝓝 z := by
      have hO : IsOpen ({x : E3 | R / 2 < dist x c} ∩ ball c R) :=
        (isOpen_lt continuous_const (continuous_id.dist continuous_const)).inter isOpen_ball
      exact Filter.mem_of_superset (hO.mem_nhds ⟨hzlo, mem_ball.mpr hzhi⟩)
        (fun x hx => ⟨ball_subset_closedBall hx.2, show R / 2 ≤ dist x c from le_of_lt hx.1⟩)
    have hzloc : IsLocalMax w z := hzmax.isLocalMax hDn
    have hLw := hLmax w z (hDU hzD) (hwcd z hzD.1) hzloc
    have hsplit := hlin (A z) (bv z) f h ε a z (hfcd z hzD.1) hcd.contDiffAt
    have hLf := hL z (mem_ball.mpr hzhi)
    have hLhz := hLh z hzD
    have hwdef : w = fun x => f x + ε * h x + a := rfl
    rw [hwdef, hsplit] at hLw
    have := mul_pos hεpos hLhz
    linarith
  have hmaxD : IsMaxOn w D x₀ := isMaxOn_iff.mpr fun x hx => by
    rw [hwx₀]; exact (isMaxOn_iff.mp hzmax x hx).trans hwz
  
  have hx₀cb : x₀ ∈ closedBall c R := hx₀D.1
  have hfd : DifferentiableAt ℝ f x₀ := (hfcd x₀ hx₀cb).differentiableAt (by simp)
  have hW : HasFDerivAt w (fderiv ℝ f x₀ + ε • fderiv ℝ h x₀) x₀ :=
    (hfd.hasFDerivAt.add ((hcd.differentiable (by simp) x₀).hasFDerivAt.const_mul ε)).add_const a
  have hseg : segment ℝ x₀ (x₀ + (1 / 2 : ℝ) • (c - x₀)) ⊆ D := by
    rw [segment_eq_image']
    rintro _ ⟨θ, ⟨hθ0, hθ1⟩, rfl⟩
    have hdist : dist (x₀ + θ • (x₀ + (1 / 2 : ℝ) • (c - x₀) - x₀)) c = (1 - θ / 2) * R := by
      rw [dist_eq_norm, show x₀ + θ • (x₀ + (1 / 2 : ℝ) • (c - x₀) - x₀) - c =
        (1 - θ / 2) • (x₀ - c) by module, norm_smul, Real.norm_eq_abs,
        abs_of_nonneg (by linarith : (0:ℝ) ≤ 1 - θ / 2), ← dist_eq_norm, hx₀]
    refine ⟨?_, ?_⟩
    · rw [mem_closedBall, hdist]; nlinarith
    · show R / 2 ≤ _
      rw [hdist]; nlinarith
  have hcone := mem_posTangentConeAt_of_segment_subset hseg
  have hle0 := hmaxD.localize.hasFDerivWithinAt_nonpos hW.hasFDerivWithinAt hcone
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, map_smul,
    smul_eq_mul] at hle0
  
  have hnorm : ‖x₀ - c‖ = R := by rw [← dist_eq_norm, hx₀]
  have h3 := hp3 x₀
  rw [hnorm] at h3
  have hneg : fderiv ℝ f x₀ (x₀ - c) = -fderiv ℝ f x₀ (c - x₀) := by
    rw [← map_neg, neg_sub]
  rw [h3] at hle0
  rw [hneg]
  have hprod : 0 < ε * (2 * α * R ^ 2 * Real.exp (-α * R ^ 2)) := by positivity
  nlinarith

theorem euclid_strong_max_principle (A : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (bv : E3 → Fin 3 → ℝ) (Ω : Set E3) (hΩ : IsOpen Ω) (hconn : IsPreconnected Ω)
    (hA : ∀ i j : Fin 3, ContinuousOn (fun x => A x i j) Ω)
    (hb : ∀ k : Fin 3, ContinuousOn (fun x => bv x k) Ω)
    (hpos : ∀ x ∈ Ω, (A x).PosDef) (f : E3 → ℝ) (hf : ContDiffOn ℝ 2 f Ω)
    (hL : ∀ x ∈ Ω, 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3,
        A x i j * partialDeriv i (fun z => partialDeriv j f z) x +
      ∑ k : Fin 3, bv x k * partialDeriv k f x)
    (x₁ : E3) (hx₁ : x₁ ∈ Ω) (hmax : ∀ x ∈ Ω, f x ≤ f x₁) :
    ∀ x ∈ Ω, f x = f x₁ :=
by
  have hfc : ContinuousOn f Ω := hf.continuousOn
  
  have hloc : ∀ xb ∈ Ω, f xb = f x₁ → ∀ᶠ z in 𝓝 xb, f z = f x₁ := by
    intro xb hxb hfxb
    obtain ⟨ε, hε, hballε⟩ := Metric.isOpen_iff.mp hΩ xb hxb
    have hr : 0 < ε / 2 := by linarith
    refine Metric.eventually_nhds_iff_ball.mpr ⟨ε / 2, hr, ?_⟩
    intro y hy
    by_contra hne
    have hyb : dist y xb < ε / 2 := hy
    have hyΩ : y ∈ Ω := hballε (by
      show dist y xb < ε
      linarith)
    have hfy : f y < f x₁ := lt_of_le_of_ne (hmax y hyΩ) hne
    
    have hsub : Metric.closedBall y (ε / 2) ⊆ Ω := by
      intro x hx
      apply hballε
      have h1 : dist x y ≤ ε / 2 := hx
      show dist x xb < ε
      have := dist_triangle x y xb
      linarith
    set C := Metric.closedBall y (ε / 2) ∩ f ⁻¹' {f x₁} with hCdef
    have hCcl : IsClosed C :=
      (hfc.mono hsub).preimage_isClosed_of_isClosed Metric.isClosed_closedBall isClosed_singleton
    have hCc : IsCompact C :=
      (isCompact_closedBall y (ε / 2)).of_isClosed_subset hCcl Set.inter_subset_left
    have hxbC : xb ∈ C := by
      refine ⟨?_, hfxb⟩
      show dist xb y ≤ ε / 2
      rw [dist_comm]; linarith
    obtain ⟨xs, hxsC, hxsmin⟩ := hCc.exists_isMinOn ⟨xb, hxbC⟩
      ((continuous_id.dist continuous_const).continuousOn (s := C) (f := fun x => dist x y))
    have hmin : ∀ x ∈ C, dist xs y ≤ dist x y := fun x hx => hxsmin hx
    set R := dist xs y with hRdef
    have hfxs : f xs = f x₁ := hxsC.2
    have hRle : R ≤ ε / 2 := hxsC.1
    have hRpos : 0 < R := by
      rcases (dist_nonneg : 0 ≤ dist xs y).lt_or_eq with h | h
      · exact h
      · exfalso
        have hxy : xs = y := dist_eq_zero.mp h.symm
        rw [hxy] at hfxs
        exact hne hfxs
    have hcb : Metric.closedBall y R ⊆ Ω :=
      (Metric.closedBall_subset_closedBall hRle).trans hsub
    have hlt : ∀ x ∈ Metric.ball y R, f x < f xs := by
      intro x hx
      have hxR : dist x y < R := hx
      have hxΩ : x ∈ Ω := hcb (Metric.ball_subset_closedBall hx)
      rw [hfxs]
      refine lt_of_le_of_ne (hmax x hxΩ) ?_
      intro hfx
      have hxC : x ∈ C := ⟨show dist x y ≤ ε / 2 by linarith, hfx⟩
      have := hmin x hxC
      linarith
    have hhopf := euclid_hopf_lemma A bv Ω hΩ hA hb hpos f hf y xs R hRpos hcb rfl
      (fun x hx => hL x (hcb (Metric.ball_subset_closedBall hx))) hlt
    have hxsΩ : xs ∈ Ω := hcb (Metric.mem_closedBall.mpr le_rfl)
    have hlm : IsLocalMax f xs :=
      Filter.eventually_of_mem (hΩ.mem_nhds hxsΩ) (fun x hx => by rw [hfxs]; exact hmax x hx)
    rw [hlm.fderiv_eq_zero, ContinuousLinearMap.zero_apply] at hhopf
    exact lt_irrefl _ hhopf
  
  set u : Set E3 := {x | ∀ᶠ z in 𝓝 x, f z = f x₁} with hudef
  have hu : IsOpen u := isOpen_setOf_eventually_nhds
  have hv : IsOpen (Ω ∩ f ⁻¹' Set.Iio (f x₁)) := hfc.isOpen_inter_preimage hΩ isOpen_Iio
  have hcover : Ω ⊆ u ∪ (Ω ∩ f ⁻¹' Set.Iio (f x₁)) := by
    intro x hx
    rcases (hmax x hx).lt_or_eq with h | h
    · exact Or.inr ⟨hx, h⟩
    · exact Or.inl (hloc x hx h)
  have hne : (Ω ∩ u).Nonempty := ⟨x₁, hx₁, hloc x₁ hx₁ rfl⟩
  have hsubu : Ω ⊆ u := hconn.subset_left_of_subset_union hu hv
    (Set.disjoint_left.mpr (fun x hxu hxv => by
      have hxu' : ∀ᶠ z in 𝓝 x, f z = f x₁ := hxu
      have h1 : f x = f x₁ := hxu'.self_of_nhds
      have h2 : f x < f x₁ := hxv.2
      linarith)) hcover hne
  intro x hx
  have hxu' : ∀ᶠ z in 𝓝 x, f z = f x₁ := hsubu hx
  exact hxu'.self_of_nhds

theorem subharmonic_local_const_interior [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u) (p : M)
    (hsub : ∀ᶠ q in 𝓝 p, 0 ≤ g.lapM u q) (hmax : IsLocalMax u p) :
    ∀ᶠ q in 𝓝 p, u q = u p :=
by
  classical
  set ψ := chartAt E3 p with hψ
  have hpS : p ∈ ψ.source := mem_chart_source E3 p
  have hx₀T : ψ p ∈ ψ.target := ψ.map_source hpS
  have hψp : ψ.symm (ψ p) = p := ψ.left_inv hpS
  set G : E3 → Matrix (Fin 3) (Fin 3) ℝ := g.coeff ψ.symm with hG
  set f : E3 → ℝ := fun y => u (ψ.symm y) with hfdef
  
  have hfS : ContDiffOn ℝ ∞ f ψ.target := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u ∘ ψ.symm) ψ.target :=
      hu.comp_contMDiffOn contMDiffOn_chart_symm
    exact contMDiffOn_iff_contDiffOn.mp h1
  
  have hlap : ∀ x ∈ ψ.target, lapLocal G f x = g.lapM u (ψ.symm x) := by
    intro x hx
    let Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞ :=
      ⟨ψ.symm.toPartialEquiv, ψ.open_target, ψ.open_source, contMDiffOn_chart_symm,
        contMDiffOn_chart⟩
    have h1 := lapLocal_chart_invariant g Φ u Set.univ isOpen_univ hu.contMDiffOn x hx
      (Set.mem_univ _)
    have h2 : lapM g u (Φ x) = g.lapM u (Φ x) := by
      simp only [lapM, RiemannianMetric3.lapM, lapLoc, lapLocal, hessLoc, Function.comp_def]
    exact h1.trans h2
  
  have hop : ∀ (h : E3 → ℝ) (x : E3), lapLocal G h x =
      ∑ i : Fin 3, ∑ j : Fin 3,
          (G x)⁻¹ i j * partialDeriv i (fun z => partialDeriv j h z) x +
        ∑ k : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) *
          partialDeriv k h x := by
    intro h x
    simp only [lapLocal, Fin.sum_univ_three]
    ring
  
  have hposT : ∀ x ∈ ψ.target, (G x).PosDef := fun x hx => coeff_chart_symm_posDef g p x hx
  have hGc : ∀ i j : Fin 3, ContinuousOn (fun x => G x i j) ψ.target :=
    fun i j => (g.smooth p i j).continuousOn
  have hGm : ContinuousOn G ψ.target :=
    continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => hGc i j
  have hinvc : ∀ i j : Fin 3, ContinuousOn (fun x => (G x)⁻¹ i j) ψ.target := by
    intro i j x hx
    have hdet : (G x).det ≠ 0 := (hposT x hx).det_pos.ne'
    have hinvAt : ContinuousAt Ring.inverse (G x).det := by
      rw [Ring.inverse_eq_inv']
      exact continuousAt_inv₀ hdet
    have h1 : ContinuousWithinAt (fun y => (G y)⁻¹) ψ.target x :=
      (continuousAt_matrix_inv (G x) hinvAt).comp_continuousWithinAt (hGm x hx)
    exact continuousWithinAt_pi.1 (continuousWithinAt_pi.1 h1 i) j
  have hdGc : ∀ i j l : Fin 3,
      ContinuousOn (fun x => partialDeriv l (fun z => G z i j) x) ψ.target := by
    intro i j l
    have hGs : ContDiffOn ℝ ∞ (fun z => G z i j) ψ.target := g.smooth p i j
    have h1 := hGs.continuousOn_fderiv_of_isOpen ψ.open_target (by simp)
    show ContinuousOn (fun x => fderiv ℝ (fun z => G z i j) x (e l)) ψ.target
    exact h1.clm_apply (continuousOn_const (c := e l))
  have hchc : ∀ k i j : Fin 3, ContinuousOn (fun x => christoffel G k i j x) ψ.target := by
    intro k i j
    simp only [christoffel]
    exact continuousOn_const.mul (continuousOn_finset_sum _ fun l _ =>
      (hinvc k l).mul (((hdGc j l i).add (hdGc i l j)).sub (hdGc i j l)))
  have hbvc : ∀ k : Fin 3, ContinuousOn
      (fun x => -∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) ψ.target := by
    intro k
    refine ContinuousOn.neg ?_
    refine continuousOn_finset_sum _ fun i _ => ?_
    refine continuousOn_finset_sum _ fun j _ => ?_
    exact (hinvc i j).mul (hchc k i j)
  
  have hcont : Tendsto ψ.symm (𝓝 (ψ p)) (𝓝 p) := by
    have h := ψ.continuousAt_symm hx₀T
    rw [ContinuousAt, hψp] at h
    exact h
  have hfx₀ : f (ψ p) = u p := by
    show u (ψ.symm (ψ p)) = u p
    rw [hψp]
  have hsubT : ∀ᶠ x in 𝓝 (ψ p), 0 ≤ lapLocal G f x := by
    filter_upwards [hcont.eventually hsub, ψ.open_target.mem_nhds hx₀T] with x hx hxT
    rw [hlap x hxT]
    exact hx
  have hmaxT : ∀ᶠ x in 𝓝 (ψ p), f x ≤ f (ψ p) := by
    filter_upwards [hcont.eventually hmax] with x hx
    rw [hfx₀]
    exact hx
  have hT : ∀ᶠ x in 𝓝 (ψ p), x ∈ ψ.target := ψ.open_target.mem_nhds hx₀T
  obtain ⟨r, hr, hball⟩ := Metric.eventually_nhds_iff_ball.1 ((hT.and hsubT).and hmaxT)
  have hΩT : Metric.ball (ψ p) r ⊆ ψ.target := fun x hx => (hball x hx).1.1
  
  have hconst := euclid_strong_max_principle (fun x => (G x)⁻¹)
    (fun x k => -∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x)
    (Metric.ball (ψ p) r) Metric.isOpen_ball (convex_ball (ψ p) r).isPreconnected
    (fun i j => (hinvc i j).mono hΩT) (fun k => (hbvc k).mono hΩT)
    (fun x hx => (hposT x (hΩT hx)).inv) f
    ((hfS.of_le (by norm_cast)).mono hΩT)
    (fun x hx => by
      have h0 := (hball x hx).1.2
      rw [hop f x] at h0
      exact h0)
    (ψ p) (Metric.mem_ball_self hr) (fun x hx => (hball x hx).2)
  have hloc : ∀ᶠ x in 𝓝 (ψ p), f x = f (ψ p) :=
    Metric.eventually_nhds_iff_ball.2 ⟨r, hr, hconst⟩
  
  filter_upwards [(ψ.continuousAt hpS).eventually hloc, ψ.eventually_left_inverse hpS]
    with q hq1 hq2
  have h3 : u q = f (ψ q) := by
    show u q = u (ψ.symm (ψ q))
    rw [hq2]
  rw [h3, hq1, hfx₀]

theorem lap_coeff_continuousOn (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U : Set E3)
    (hU : IsOpen U) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => G x i j) U)
    (hpos : ∀ x ∈ U, (G x).PosDef) :
    (∀ i j : Fin 3, ContinuousOn (fun x => (G x)⁻¹ i j) U) ∧
    (∀ k : Fin 3, ContinuousOn
      (fun x => -∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) U) :=
by
  have hGc : ContinuousOn G U :=
    continuousOn_pi.2 (fun i => continuousOn_pi.2 (fun j => (hG i j).continuousOn))
  have hdet : ContinuousOn (fun x => (G x).det) U :=
    (continuous_id.matrix_det).comp_continuousOn hGc
  have hadj : ∀ i j : Fin 3, ContinuousOn (fun x => (G x).adjugate i j) U := by
    intro i j
    exact ((continuous_id.matrix_adjugate).matrix_elem i j).comp_continuousOn hGc
  have hdet0 : ∀ x ∈ U, (G x).det ≠ 0 := fun x hx => (Matrix.PosDef.det_pos (hpos x hx)).ne'
  have hinv : ∀ i j : Fin 3, ContinuousOn (fun x => (G x)⁻¹ i j) U := by
    intro i j
    have heq : (fun x => (G x)⁻¹ i j) = fun x => ((G x).det)⁻¹ * (G x).adjugate i j := by
      funext x
      rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
    rw [heq]
    exact (hdet.inv₀ hdet0).mul (hadj i j)
  have h1 : (1 : WithTop ℕ∞) ≤ ∞ := WithTop.coe_le_coe.mpr le_top
  have hpd : ∀ l a b : Fin 3,
      ContinuousOn (fun x => partialDeriv l (fun z => G z a b) x) U := by
    intro l a b
    have hf := (hG a b).continuousOn_fderiv_of_isOpen hU h1
    exact hf.clm_apply continuousOn_const
  have hchr : ∀ k i j : Fin 3, ContinuousOn (fun x => christoffel G k i j x) U := by
    intro k i j
    unfold christoffel
    exact continuousOn_const.mul (continuousOn_finset_sum _ (fun l _ => (hinv k l).mul
      (((hpd i j l).add (hpd j i l)).sub (hpd l i j))))
  refine ⟨hinv, fun k => ?_⟩
  exact (continuousOn_finset_sum _ fun i _ => continuousOn_finset_sum _ fun j _ =>
    (hinv i j).mul (hchr k i j)).neg

theorem boundary_max_critical_ineq [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u β : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (p : M) (hβp : β p = 0)
    (hdβ : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0) (hneu : 0 ≤ g.gradInner u β p)
    (hmax : IsLocalMaxOn u {q : M | 0 ≤ β q} p) :
    mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p = 0 :=
by
  
  have hmf : ∀ (h : M → ℝ) (q : M), MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q → ∀ ξ : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q ξ =
        fderiv ℝ (fun y => h ((chartAt E3 q).symm y)) (chartAt E3 q q) ξ := by
    intro h q hh ξ
    rw [hh.mfderiv]
    simp [writtenInExtChartAt, Function.comp_def]
    rfl
  
  have hray : ∀ (F B : E3 → ℝ) (x₀ v : E3), DifferentiableAt ℝ F x₀ →
      DifferentiableAt ℝ B x₀ → B x₀ = 0 → (∀ᶠ x in 𝓝 x₀, 0 ≤ B x → F x ≤ F x₀) →
      0 < fderiv ℝ B x₀ v → fderiv ℝ F x₀ v ≤ 0 := by
    intro F B x₀ v hF hB hB0 hmx hv
    have hγ : HasDerivAt (fun t : ℝ => x₀ + t • v) v 0 := by
      simpa using ((hasDerivAt_id (0 : ℝ)).smul_const v).const_add x₀
    have hγ0 : x₀ = (fun t : ℝ => x₀ + t • v) 0 := by simp
    have hFd : HasDerivAt (fun t : ℝ => F (x₀ + t • v)) (fderiv ℝ F x₀ v) 0 :=
      hF.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hγ hγ0
    have hBd : HasDerivAt (fun t : ℝ => B (x₀ + t • v)) (fderiv ℝ B x₀ v) 0 :=
      hB.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hγ hγ0
    have hFs := hFd.tendsto_slope_zero_right
    have hBs := hBd.tendsto_slope_zero_right
    have hev1 := hBs.eventually (lt_mem_nhds hv)
    have hev2 : ∀ᶠ t in 𝓝[>] (0 : ℝ), 0 < t := self_mem_nhdsWithin
    have hc : Continuous (fun t : ℝ => x₀ + t • v) := by fun_prop
    have hcont : Tendsto (fun t : ℝ => x₀ + t • v) (𝓝[>] 0) (𝓝 x₀) := by
      have := hc.tendsto 0
      simp only [zero_smul, add_zero] at this
      exact this.mono_left nhdsWithin_le_nhds
    have hev3 := hcont.eventually hmx
    refine le_of_tendsto hFs ?_
    filter_upwards [hev1, hev2, hev3] with t h1 h2 h3
    simp only [zero_add, zero_smul, add_zero, smul_eq_mul, hB0, sub_zero] at h1 ⊢
    have hbpos : 0 < B (x₀ + t • v) := by
      have := mul_pos h2 h1
      rwa [← mul_assoc, mul_inv_cancel₀ h2.ne', one_mul] at this
    have h4 := h3 hbpos.le
    exact mul_nonpos_of_nonneg_of_nonpos (inv_nonneg.mpr h2.le) (by linarith)
  
  have hlin : ∀ (Df Db : E3 →L[ℝ] ℝ) (A : Matrix (Fin 3) (Fin 3) ℝ), A.PosDef → Db ≠ 0 →
      0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, A i j * Df (e i) * Db (e j) →
      (∀ v : E3, 0 < Db v → Df v ≤ 0) → Df = 0 := by
    intro Df Db A hA hDb hneu0 hdir
    have hdecomp : ∀ w : E3, w = ∑ i : Fin 3, w i • e i := by
      intro w
      have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr w
      simp only [EuclideanSpace.basisFun_apply, EuclideanSpace.basisFun_repr] at this
      exact this.symm
    have hL : ∀ (L : E3 →L[ℝ] ℝ) (w : E3), L w = ∑ i : Fin 3, w i * L (e i) := by
      intro L w
      conv_lhs => rw [hdecomp w]
      rw [map_sum]
      simp only [map_smul, smul_eq_mul]
    have hx : (fun i => Db (e i)) ≠ 0 := by
      intro h0
      apply hDb
      refine ContinuousLinearMap.ext fun w => ?_
      rw [hL Db w, ContinuousLinearMap.zero_apply]
      have h0' : ∀ i, Db (e i) = 0 := fun i => congrFun h0 i
      simp [h0']
    have hLζ : ∀ L : E3 →L[ℝ] ℝ,
        L (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) =
          ∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) * L (e i) := by
      intro L
      simp only [map_sum, map_smul, smul_eq_mul]
    have hζpos : 0 < Db (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) := by
      have hq := hA.dotProduct_mulVec_pos hx
      rw [hLζ]
      simp only [dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
        Fin.sum_univ_three] at hq ⊢
      linear_combination hq
    have hDfζge : 0 ≤ Df (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) := by
      rw [hLζ]
      simp only [Fin.sum_univ_three] at hneu0 ⊢
      linarith
    have hDfζ : Df (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) = 0 :=
      le_antisymm (hdir _ hζpos) hDfζge
    have hle : ∀ w : E3, Df w ≤ 0 := by
      intro w
      have hpos : 0 < Db (w + ((|Db w| + 1) /
          Db (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i)) •
            (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i)) := by
        rw [map_add, map_smul, smul_eq_mul, div_mul_cancel₀ _ hζpos.ne']
        have := neg_abs_le (Db w)
        linarith
      have := hdir _ hpos
      rwa [map_add, map_smul, hDfζ, smul_zero, add_zero] at this
    refine ContinuousLinearMap.ext fun w => ?_
    have h1 := hle w
    have h2 := hle (-w)
    rw [map_neg] at h2
    rw [ContinuousLinearMap.zero_apply]
    linarith
  
  have hx₀T : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
  have hsymm0 : (chartAt E3 p).symm (chartAt E3 p p) = p :=
    (chartAt E3 p).left_inv (mem_chart_source E3 p)
  have hfT : ContDiffOn ℝ ∞ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
    contMDiffOn_iff_contDiffOn.mp (hu.comp_contMDiffOn contMDiffOn_chart_symm)
  have hbT : ContDiffOn ℝ ∞ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
    contMDiffOn_iff_contDiffOn.mp (hβ.comp_contMDiffOn contMDiffOn_chart_symm)
  have hTn : (chartAt E3 p).target ∈ 𝓝 (chartAt E3 p p) :=
    (chartAt E3 p).open_target.mem_nhds hx₀T
  have hfd : DifferentiableAt ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) :=
    (hfT.differentiableOn (by simp)).differentiableAt hTn
  have hbd : DifferentiableAt ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) :=
    (hbT.differentiableOn (by simp)).differentiableAt hTn
  have hdb : fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ≠ 0 := by
    intro h0
    apply hdβ
    refine ContinuousLinearMap.ext fun ξ => ?_
    rw [hmf β p (hβ.mdifferentiableAt (by simp)) ξ, h0]
    rfl
  have hb0 : (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
    show β ((chartAt E3 p).symm (chartAt E3 p p)) = 0
    rw [hsymm0]; exact hβp
  have hmaxE : ∀ᶠ x in 𝓝 (chartAt E3 p p), 0 ≤ (fun y => β ((chartAt E3 p).symm y)) x →
      (fun y => u ((chartAt E3 p).symm y)) x ≤
        (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) := by
    have h1 : ∀ᶠ q in 𝓝 p, q ∈ {q : M | 0 ≤ β q} → u q ≤ u p :=
      eventually_nhdsWithin_iff.mp hmax
    have ht : Tendsto (chartAt E3 p).symm (𝓝 (chartAt E3 p p)) (𝓝 p) := by
      have := (chartAt E3 p).continuousAt_symm hx₀T
      rw [ContinuousAt, hsymm0] at this
      exact this
    filter_upwards [ht.eventually h1] with x hx hbx
    show u ((chartAt E3 p).symm x) ≤ u ((chartAt E3 p).symm (chartAt E3 p p))
    rw [hsymm0]
    exact hx hbx
  have hGpos : (g.coeff (chartAt E3 p).symm (chartAt E3 p p)).PosDef := by
    classical
    have hy := hx₀T
    have hq : (chartAt E3 p).symm (chartAt E3 p p) ∈ (chartAt E3 p).source :=
      (chartAt E3 p).map_target hy
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
        ((chartAt E3 p).symm (chartAt E3 p p)) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 p) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm)
        (chartAt E3 p p) =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm (chartAt E3 p p))).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)) :=
      mfderiv_comp (chartAt E3 p p) hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm)
        (chartAt E3 p p) = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id (chartAt E3 p p) := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 p).eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
        ((chartAt E3 p).symm (chartAt E3 p p))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    have hDinj : ∀ w : E3,
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) w = 0 → w = 0 := by
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
      have hpos := g.posDef ((chartAt E3 p).symm (chartAt E3 p p)) _ hDv
      have key : star x ⬝ᵥ (g.coeff (chartAt E3 p).symm (chartAt E3 p p)).mulVec x =
          g.g ((chartAt E3 p).symm (chartAt E3 p p))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)
              (∑ i, x i • e i : E3))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)
              (∑ i, x i • e i : E3)) := by
        simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
          ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
          RiemannianMetric3.coeff, coeffMatrix]
        ring
      rw [key]
      exact hpos
  have hApos : ((g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹).PosDef := hGpos.inv
  have hneu' : 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ i j *
      fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) (e i) *
      fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) (e j) := hneu
  have hdir : ∀ v : E3, 0 < fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) v →
      fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) v ≤ 0 :=
    fun v hv => hray (fun y => u ((chartAt E3 p).symm y)) (fun y => β ((chartAt E3 p).symm y))
      (chartAt E3 p p) v hfd hbd hb0 hmaxE hv
  have hfd0 := hlin _ _ _ hApos hdb hneu' hdir
  refine ContinuousLinearMap.ext fun ξ => ?_
  rw [hmf u p (hu.mdifferentiableAt (by simp)) ξ, hfd0]
  rfl

theorem regular_collar (b : E3 → ℝ) (V : Set E3) (hV : IsOpen V) (x₀ : E3) (hx₀ : x₀ ∈ V)
    (hb : ContDiffOn ℝ 1 b V) (hb0 : b x₀ = 0) (hdb : fderiv ℝ b x₀ ≠ 0) :
    ∃ Q : Set E3, IsOpen Q ∧ x₀ ∈ Q ∧ Q ⊆ V ∧ IsPreconnected (Q ∩ {x | 0 < b x}) ∧
      Q ∩ {x | 0 ≤ b x} ⊆ closure (Q ∩ {x | 0 < b x}) :=
by
  set D := fderiv ℝ b x₀ with hD
  
  obtain ⟨v, hv⟩ : ∃ v, D v ≠ 0 := by
    by_contra h
    push_neg at h
    exact hdb (ContinuousLinearMap.ext h)
  obtain ⟨n, hn⟩ : ∃ n : E3, n = (D v)⁻¹ • v := ⟨_, rfl⟩
  have hDn : D n = 1 := by
    rw [hn, map_smul, smul_eq_mul, inv_mul_cancel₀ hv]
  
  have hcont : ContinuousAt (fderiv ℝ b) x₀ :=
    (hb.continuousOn_fderiv_of_isOpen hV le_rfl).continuousAt (hV.mem_nhds hx₀)
  obtain ⟨ε₁, hε₁, hε₁n⟩ : ∃ ε₁ : ℝ, 0 < ε₁ ∧ ε₁ * ‖n‖ < 1 / 2 := by
    refine ⟨1 / (2 * (‖n‖ + 1)), by positivity, ?_⟩
    rw [div_mul_eq_mul_div, one_mul, div_lt_iff₀ (by positivity)]
    nlinarith [norm_nonneg n]
  obtain ⟨r₁, hr₁, hr₁'⟩ := Metric.continuousAt_iff.mp hcont ε₁ hε₁
  obtain ⟨r₂, hr₂, hr₂'⟩ := Metric.isOpen_iff.mp hV x₀ hx₀
  obtain ⟨r, hr_def⟩ : ∃ r : ℝ, r = min r₁ r₂ := ⟨_, rfl⟩
  have hr : 0 < r := by rw [hr_def]; exact lt_min hr₁ hr₂
  have hballV : ball x₀ r ⊆ V := by
    rw [hr_def]; exact (ball_subset_ball (min_le_right _ _)).trans hr₂'
  have hstar : ∀ y ∈ ball x₀ r, 1 / 2 < fderiv ℝ b y n := by
    intro y hy
    have hy1 : dist y x₀ < r₁ := lt_of_lt_of_le hy (by rw [hr_def]; exact min_le_left _ _)
    have h1 := hr₁' hy1
    rw [dist_eq_norm] at h1
    have h2 : |fderiv ℝ b y n - 1| ≤ ‖fderiv ℝ b y - D‖ * ‖n‖ := by
      rw [← hDn, ← ContinuousLinearMap.sub_apply, ← Real.norm_eq_abs]
      exact ContinuousLinearMap.le_opNorm _ _
    have h3 : ‖fderiv ℝ b y - D‖ * ‖n‖ ≤ ε₁ * ‖n‖ :=
      mul_le_mul_of_nonneg_right h1.le (norm_nonneg _)
    have h4 := (abs_lt.mp (lt_of_le_of_lt (h2.trans h3) hε₁n)).1
    linarith
  
  obtain ⟨σ, hσ, hσn⟩ : ∃ σ : ℝ, 0 < σ ∧ σ * ‖n‖ < r / 2 := by
    refine ⟨r / (2 * (‖n‖ + 1)), by positivity, ?_⟩
    rw [div_mul_eq_mul_div, div_lt_iff₀ (by positivity)]
    nlinarith [norm_nonneg n]
  have hline_mem : ∀ w : E3, ‖w‖ < r / 2 → ∀ τ : ℝ, |τ| < σ →
      x₀ + w + τ • n ∈ ball x₀ r := by
    intro w hw τ hτ
    rw [mem_ball, dist_eq_norm, add_assoc, add_sub_cancel_left]
    calc ‖w + τ • n‖ ≤ ‖w‖ + ‖τ • n‖ := norm_add_le _ _
      _ = ‖w‖ + |τ| * ‖n‖ := by rw [norm_smul, Real.norm_eq_abs]
      _ < r := by nlinarith [abs_nonneg τ, norm_nonneg n]
  
  have hmono : ∀ w : E3, ‖w‖ < r / 2 →
      StrictMonoOn (fun τ : ℝ => b (x₀ + w + τ • n)) (Set.Ioo (-σ) σ) := by
    intro w hw
    have hderiv : ∀ τ ∈ Set.Ioo (-σ) σ, HasDerivAt (fun τ : ℝ => b (x₀ + w + τ • n))
        (fderiv ℝ b (x₀ + w + τ • n) n) τ := by
      intro τ hτ
      have hτ' : |τ| < σ := abs_lt.mpr ⟨hτ.1, hτ.2⟩
      have hm := hline_mem w hw τ hτ'
      have hdiff : DifferentiableAt ℝ b (x₀ + w + τ • n) :=
        (hb.differentiableOn one_ne_zero).differentiableAt (hV.mem_nhds (hballV hm))
      have hl : HasDerivAt (fun τ : ℝ => x₀ + w + τ • n) n τ := by
        simpa using ((hasDerivAt_id τ).smul_const n).const_add (x₀ + w)
      exact hdiff.hasFDerivAt.comp_hasDerivAt τ hl
    apply strictMonoOn_of_deriv_pos (convex_Ioo (-σ) σ)
    · intro τ hτ
      exact (hderiv τ hτ).continuousAt.continuousWithinAt
    · intro τ hτ
      rw [interior_Ioo] at hτ
      rw [(hderiv τ hτ).deriv]
      have hτ' : |τ| < σ := abs_lt.mpr ⟨hτ.1, hτ.2⟩
      linarith [hstar _ (hline_mem w hw τ hτ')]
  
  have hr2 : (0 : ℝ) < r / 2 := half_pos hr
  have h0norm : ‖(0 : E3)‖ < r / 2 := by simpa using hr2
  have hσ2 : σ / 2 ∈ Set.Ioo (-σ) σ := ⟨by linarith, by linarith⟩
  have h0mem : (0 : ℝ) ∈ Set.Ioo (-σ) σ := ⟨by linarith, hσ⟩
  have hbxs : 0 < b (x₀ + (σ / 2) • n) := by
    have h := hmono 0 h0norm h0mem hσ2 (by linarith)
    have e1 : x₀ + 0 + (0 : ℝ) • n = x₀ := by simp
    have e2 : x₀ + 0 + (σ / 2) • n = x₀ + (σ / 2) • n := by simp
    have h' : b (x₀ + 0 + (0 : ℝ) • n) < b (x₀ + 0 + (σ / 2) • n) := h
    rw [e1, e2, hb0] at h'
    exact h'
  have hxs_ball : x₀ + (σ / 2) • n ∈ ball x₀ r := by
    have h := hline_mem 0 h0norm (σ / 2) (by rw [abs_of_pos (by linarith)]; linarith)
    rwa [add_zero] at h
  have hbcont : ContinuousAt b (x₀ + (σ / 2) • n) :=
    hb.continuousOn.continuousAt (hV.mem_nhds (hballV hxs_ball))
  obtain ⟨δ₀, hδ₀, hδ₀'⟩ := Metric.continuousAt_iff.mp hbcont _ hbxs
  have hP : ∀ x, dist x (x₀ + (σ / 2) • n) < δ₀ → 0 < b x := by
    intro x hx
    have h := hδ₀' hx
    rw [Real.dist_eq] at h
    linarith [(abs_lt.mp h).1]
  obtain ⟨δ, hδ_def⟩ : ∃ δ : ℝ, δ = min δ₀ (r / 2) := ⟨_, rfl⟩
  have hδ : 0 < δ := by rw [hδ_def]; exact lt_min hδ₀ hr2
  have hδr : δ ≤ r / 2 := by rw [hδ_def]; exact min_le_right _ _
  have hδδ₀ : δ ≤ δ₀ := by rw [hδ_def]; exact min_le_left _ _
  
  obtain ⟨s, hs⟩ : ∃ s : E3 → ℝ, ∀ x, s x = D (x - x₀) := ⟨_, fun _ => rfl⟩
  obtain ⟨wf, hwf⟩ : ∃ wf : E3 → E3, ∀ x, wf x = (x - x₀) - (s x) • n := ⟨_, fun _ => rfl⟩
  have hs_cont : Continuous s := by
    have : s = fun x => D (x - x₀) := funext hs
    rw [this]; exact D.continuous.comp (continuous_id.sub continuous_const)
  have hwf_cont : Continuous wf := by
    have : wf = fun x => (x - x₀) - (s x) • n := funext hwf
    rw [this]; exact (continuous_id.sub continuous_const).sub (hs_cont.smul continuous_const)
  have hc1 : ∀ x, D (wf x) = 0 := by
    intro x
    rw [hwf, map_sub, map_smul, hDn, smul_eq_mul, mul_one, hs, sub_self]
  have hc2 : ∀ x, x = x₀ + wf x + s x • n := by
    intro x; rw [hwf]; abel
  have hc3 : ∀ w', D w' = 0 → ∀ τ : ℝ,
      s (x₀ + w' + τ • n) = τ ∧ wf (x₀ + w' + τ • n) = w' := by
    intro w' hw' τ
    have h1 : s (x₀ + w' + τ • n) = τ := by
      rw [hs, add_assoc, add_sub_cancel_left, map_add, map_smul, hw', hDn, smul_eq_mul,
        mul_one, zero_add]
    refine ⟨h1, ?_⟩
    rw [hwf, h1]; abel
  
  obtain ⟨Q, hQ⟩ : ∃ Q : Set E3, Q = {x | ‖wf x‖ < δ} ∩ {x | |s x| < σ} := ⟨_, rfl⟩
  have hQmem : ∀ x, x ∈ Q ↔ ‖wf x‖ < δ ∧ |s x| < σ := by
    intro x; rw [hQ]; rfl
  have hQopen : IsOpen Q := by
    rw [hQ]
    exact (isOpen_lt (continuous_norm.comp hwf_cont) continuous_const).inter
      (isOpen_lt (continuous_abs.comp hs_cont) continuous_const)
  have hQball : ∀ x ∈ Q, x ∈ ball x₀ r := by
    intro x hx
    rw [hQmem] at hx
    have h := hline_mem (wf x) (lt_of_lt_of_le hx.1 hδr) (s x) hx.2
    rwa [← hc2 x] at h
  have hc5 : ∀ w', D w' = 0 → ‖w'‖ < δ → ∀ τ : ℝ, |τ| < σ → x₀ + w' + τ • n ∈ Q := by
    intro w' hw' hw'δ τ hτ
    rw [hQmem, (hc3 w' hw' τ).1, (hc3 w' hw' τ).2]
    exact ⟨hw'δ, hτ⟩
  have hx₀Q : x₀ ∈ Q := by
    have h := hc5 0 (map_zero D) (by simpa using hδ) 0 (by simpa using hσ)
    have e1 : x₀ + 0 + (0 : ℝ) • n = x₀ := by simp
    rwa [e1] at h
  
  have hpre : IsPreconnected (Q ∩ {x | 0 < b x}) := by
    apply isPreconnected_of_forall (x₀ + (σ / 2) • n)
    intro y hy
    obtain ⟨hyQ, hyb⟩ := hy
    have hyb' : 0 < b y := hyb
    have hyQ' := (hQmem y).mp hyQ
    have hDw' : D (wf y) = 0 := hc1 y
    have hw'r : ‖wf y‖ < r / 2 := lt_of_lt_of_le hyQ'.1 hδr
    have hτI : s y ∈ Set.Ioo (-σ) σ := abs_lt.mp hyQ'.2
    have hmw := hmono (wf y) hw'r
    have hyeq : y = x₀ + wf y + s y • n := hc2 y
    have hy'b : 0 < b (x₀ + wf y + (σ / 2) • n) := by
      apply hP
      rw [dist_eq_norm]
      have e : x₀ + wf y + (σ / 2) • n - (x₀ + (σ / 2) • n) = wf y := by abel
      rw [e]; exact lt_of_lt_of_le hyQ'.1 hδδ₀
    have hAc : IsPreconnected ((fun l : ℝ => x₀ + wf y + l • n) '' Set.uIcc (s y) (σ / 2)) :=
      isPreconnected_uIcc.image _
        (by fun_prop : Continuous fun l : ℝ => x₀ + wf y + l • n).continuousOn
    have hBc : IsPreconnected
        ((fun μ : ℝ => x₀ + μ • wf y + (σ / 2) • n) '' Set.Icc (0 : ℝ) 1) :=
      isPreconnected_Icc.image _
        (by fun_prop : Continuous fun μ : ℝ => x₀ + μ • wf y + (σ / 2) • n).continuousOn
    have hAsub : (fun l : ℝ => x₀ + wf y + l • n) '' Set.uIcc (s y) (σ / 2) ⊆
        Q ∩ {x | 0 < b x} := by
      rintro _ ⟨l, hl, rfl⟩
      have hlI : l ∈ Set.Ioo (-σ) σ := Set.ordConnected_Ioo.uIcc_subset hτI hσ2 hl
      refine ⟨hc5 (wf y) hDw' hyQ'.1 l (abs_lt.mpr hlI), ?_⟩
      show 0 < b (x₀ + wf y + l • n)
      rcases Set.mem_uIcc.mp hl with ⟨h1, _⟩ | ⟨h1, _⟩
      · have h : b (x₀ + wf y + s y • n) ≤ b (x₀ + wf y + l • n) := hmw.monotoneOn hτI hlI h1
        rw [← hyeq] at h
        linarith
      · have h : b (x₀ + wf y + (σ / 2) • n) ≤ b (x₀ + wf y + l • n) :=
          hmw.monotoneOn hσ2 hlI h1
        linarith
    have hBsub : (fun μ : ℝ => x₀ + μ • wf y + (σ / 2) • n) '' Set.Icc (0 : ℝ) 1 ⊆
        Q ∩ {x | 0 < b x} := by
      rintro _ ⟨μ, hμ, rfl⟩
      have hμn : ‖μ • wf y‖ ≤ ‖wf y‖ := by
        rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg hμ.1]
        exact mul_le_of_le_one_left (norm_nonneg _) hμ.2
      refine ⟨hc5 (μ • wf y) (by rw [map_smul, hDw', smul_zero]) (lt_of_le_of_lt hμn hyQ'.1)
        (σ / 2) (abs_lt.mpr hσ2), ?_⟩
      show 0 < b (x₀ + μ • wf y + (σ / 2) • n)
      apply hP
      rw [dist_eq_norm]
      have e : x₀ + μ • wf y + (σ / 2) • n - (x₀ + (σ / 2) • n) = μ • wf y := by abel
      rw [e]; exact lt_of_le_of_lt hμn (lt_of_lt_of_le hyQ'.1 hδδ₀)
    refine ⟨_ ∪ _, Set.union_subset hAsub hBsub,
      Or.inr ⟨0, ⟨le_refl _, zero_le_one⟩, by simp⟩,
      Or.inl ⟨s y, Set.left_mem_uIcc, hyeq.symm⟩, ?_⟩
    exact IsPreconnected.union (x₀ + wf y + (σ / 2) • n) ⟨σ / 2, Set.right_mem_uIcc, rfl⟩
      ⟨1, ⟨zero_le_one, le_refl _⟩, by simp⟩ hAc hBc
  
  have hdense : Q ∩ {x | 0 ≤ b x} ⊆ closure (Q ∩ {x | 0 < b x}) := by
    rintro x ⟨hxQ, hxb⟩
    have hxb' : 0 ≤ b x := hxb
    have hxQ' := (hQmem x).mp hxQ
    have hτI : s x ∈ Set.Ioo (-σ) σ := abs_lt.mp hxQ'.2
    have hmw := hmono (wf x) (lt_of_lt_of_le hxQ'.1 hδr)
    rw [Metric.mem_closure_iff]
    intro ε hε
    obtain ⟨h₁, hh₁, hh₁n⟩ : ∃ h₁ : ℝ, 0 < h₁ ∧ h₁ * ‖n‖ < ε := by
      refine ⟨ε / (‖n‖ + 1), by positivity, ?_⟩
      rw [div_mul_eq_mul_div, div_lt_iff₀ (by positivity)]
      nlinarith [norm_nonneg n]
    obtain ⟨h, hh⟩ : ∃ h : ℝ, h = min h₁ ((σ - s x) / 2) := ⟨_, rfl⟩
    have hpos : 0 < h := by rw [hh]; exact lt_min hh₁ (by linarith [hτI.2])
    have hle1 : h ≤ h₁ := by rw [hh]; exact min_le_left _ _
    have hle2 : h ≤ (σ - s x) / 2 := by rw [hh]; exact min_le_right _ _
    have hI : s x + h ∈ Set.Ioo (-σ) σ := ⟨by linarith [hτI.1], by linarith [hτI.2]⟩
    refine ⟨x₀ + wf x + (s x + h) • n, ⟨hc5 (wf x) (hc1 x) hxQ'.1 _ (abs_lt.mpr hI), ?_⟩, ?_⟩
    · show 0 < b (x₀ + wf x + (s x + h) • n)
      have h1 : b (x₀ + wf x + s x • n) < b (x₀ + wf x + (s x + h) • n) :=
        hmw hτI hI (by linarith)
      rw [← hc2 x] at h1
      linarith
    · rw [dist_eq_norm]
      have e : x - (x₀ + wf x + (s x + h) • n) = -(h • n) := by
        have e0 := hc2 x
        calc x - (x₀ + wf x + (s x + h) • n)
            = (x₀ + wf x + s x • n) - (x₀ + wf x + (s x + h) • n) := by rw [← e0]
          _ = -(h • n) := by rw [add_smul]; abel
      rw [e, norm_neg, norm_smul, Real.norm_eq_abs, abs_of_pos hpos]
      nlinarith [norm_nonneg n]
  exact ⟨Q, hQopen, hx₀Q, fun x hx => hballV (hQball x hx), hpre, hdense⟩

theorem interior_ball_of_regular (b : E3 → ℝ) (V : Set E3) (hV : IsOpen V) (x₀ : E3)
    (hx₀ : x₀ ∈ V) (hb : ContDiffOn ℝ 2 b V) (hb0 : b x₀ = 0) (hdb : fderiv ℝ b x₀ ≠ 0)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ (c : E3) (s : ℝ), 0 < s ∧ dist x₀ c = s ∧
      Metric.closedBall c s ⊆ Metric.ball x₀ ε ∩ V ∧
      ∀ x ∈ Metric.closedBall c s, x ≠ x₀ → 0 < b x :=
by
  
  have hbx : ContDiffAt ℝ 2 b x₀ := hb.contDiffAt (hV.mem_nhds hx₀)
  have hd1 : ContDiffAt ℝ 1 (fderiv ℝ b) x₀ := hbx.fderiv_right (m := 1) (by norm_num)
  obtain ⟨K', t, ht, hlip⟩ := hd1.exists_lipschitzOnWith
  obtain ⟨r, hr, hrsub⟩ := Metric.mem_nhds_iff.mp (Filter.inter_mem ht (hV.mem_nhds hx₀))
  have hK0 : (0 : ℝ) ≤ (K' : ℝ) := K'.2
  have hdiff : ∀ y ∈ V, DifferentiableAt ℝ b y := fun y hy =>
    (hb.differentiableOn (by norm_num) y hy).differentiableAt (hV.mem_nhds hy)
  have taylor : ∀ x ∈ Metric.ball x₀ r,
      |b x - fderiv ℝ b x₀ (x - x₀)| ≤ (K' : ℝ) * ‖x - x₀‖ ^ 2 := by
    intro x hx
    have hxr : ‖x - x₀‖ < r := by rwa [Metric.mem_ball, dist_eq_norm] at hx
    have hS : Metric.closedBall x₀ ‖x - x₀‖ ⊆ Metric.ball x₀ r :=
      Metric.closedBall_subset_ball hxr
    have hderiv : ∀ y ∈ Metric.closedBall x₀ ‖x - x₀‖,
        HasFDerivWithinAt (fun y => b y - fderiv ℝ b x₀ (y - x₀))
          (fderiv ℝ b y - fderiv ℝ b x₀) (Metric.closedBall x₀ ‖x - x₀‖) y := by
      intro y hy
      have hyV : y ∈ V := (hrsub (hS hy)).2
      have h1 := (hdiff y hyV).hasFDerivAt
      have h2 : HasFDerivAt (fun y => fderiv ℝ b x₀ (y - x₀)) (fderiv ℝ b x₀) y := by
        refine (((fderiv ℝ b x₀).hasFDerivAt (x := y)).sub_const
          (fderiv ℝ b x₀ x₀)).congr_of_eventuallyEq ?_
        exact Filter.Eventually.of_forall fun z => map_sub (fderiv ℝ b x₀) z x₀
      exact (h1.sub h2).hasFDerivWithinAt
    have hbound : ∀ y ∈ Metric.closedBall x₀ ‖x - x₀‖,
        ‖fderiv ℝ b y - fderiv ℝ b x₀‖ ≤ (K' : ℝ) * ‖x - x₀‖ := by
      intro y hy
      have hyt : y ∈ t := (hrsub (hS hy)).1
      have hx0t : x₀ ∈ t := (hrsub (Metric.mem_ball_self hr)).1
      have h := hlip.dist_le_mul y hyt x₀ hx0t
      rw [dist_eq_norm] at h
      calc ‖fderiv ℝ b y - fderiv ℝ b x₀‖ ≤ (K' : ℝ) * dist y x₀ := h
        _ ≤ (K' : ℝ) * ‖x - x₀‖ := mul_le_mul_of_nonneg_left (Metric.mem_closedBall.mp hy) hK0
    have hxmem : x ∈ Metric.closedBall x₀ ‖x - x₀‖ := by
      rw [Metric.mem_closedBall, dist_eq_norm]
    have hmv := (convex_closedBall x₀ ‖x - x₀‖).norm_image_sub_le_of_norm_hasFDerivWithin_le
      hderiv hbound (Metric.mem_closedBall_self (norm_nonneg _)) hxmem
    simp only [sub_self, map_zero, sub_zero, hb0] at hmv
    rw [Real.norm_eq_abs] at hmv
    calc |b x - fderiv ℝ b x₀ (x - x₀)| ≤ (K' : ℝ) * ‖x - x₀‖ * ‖x - x₀‖ := hmv
      _ = (K' : ℝ) * ‖x - x₀‖ ^ 2 := by ring
  
  obtain ⟨v, hv⟩ : ∃ v : E3, v = (InnerProductSpace.toDual ℝ E3).symm (fderiv ℝ b x₀) := ⟨_, rfl⟩
  have hvL : ∀ y, inner ℝ v y = fderiv ℝ b x₀ y := fun y => by
    rw [hv, InnerProductSpace.toDual_symm_apply]
  have hvnorm : ‖v‖ = ‖fderiv ℝ b x₀‖ := by rw [hv, LinearIsometryEquiv.norm_map]
  have hvpos : 0 < ‖v‖ := by rw [hvnorm]; exact norm_pos_iff.mpr hdb
  
  obtain ⟨s, hs⟩ : ∃ s : ℝ, s = min (min (ε / 4) (r / 4)) (‖v‖ / (4 * ((K' : ℝ) + 1))) :=
    ⟨_, rfl⟩
  have hs0 : 0 < s := by
    rw [hs]
    exact lt_min (lt_min (by linarith) (by linarith)) (div_pos hvpos (by linarith))
  have hs1 : s ≤ ε / 4 := by rw [hs]; exact le_trans (min_le_left _ _) (min_le_left _ _)
  have hs2 : s ≤ r / 4 := by rw [hs]; exact le_trans (min_le_left _ _) (min_le_right _ _)
  have hs3 : s ≤ ‖v‖ / (4 * ((K' : ℝ) + 1)) := by rw [hs]; exact min_le_right _ _
  have hs3' : s * (4 * ((K' : ℝ) + 1)) ≤ ‖v‖ := (le_div_iff₀ (by linarith)).mp hs3
  obtain ⟨a, ha⟩ : ∃ a : ℝ, a = s / ‖v‖ := ⟨_, rfl⟩
  have hav : a * ‖v‖ = s := by rw [ha]; exact div_mul_cancel₀ s hvpos.ne'
  have ha0 : 0 < a := by rw [ha]; exact div_pos hs0 hvpos
  have hnav : ‖a • v‖ = s := by rw [norm_smul, Real.norm_eq_abs, abs_of_pos ha0, hav]
  have hcont : ∀ x ∈ Metric.closedBall (x₀ + a • v) s, ‖x - x₀‖ ≤ 2 * s := by
    intro x hx
    have hxc : ‖x - (x₀ + a • v)‖ ≤ s := by rwa [Metric.mem_closedBall, dist_eq_norm] at hx
    have hsplit : x - x₀ = (x - (x₀ + a • v)) + a • v := by abel
    rw [hsplit]
    calc ‖(x - (x₀ + a • v)) + a • v‖ ≤ ‖x - (x₀ + a • v)‖ + ‖a • v‖ := norm_add_le _ _
      _ ≤ s + s := by rw [hnav]; linarith
      _ = 2 * s := by ring
  refine ⟨x₀ + a • v, s, hs0, ?_, ?_, ?_⟩
  · rw [dist_eq_norm, sub_add_cancel_left, norm_neg, hnav]
  · intro x hx
    have hn := hcont x hx
    refine ⟨?_, ?_⟩
    · rw [Metric.mem_ball, dist_eq_norm]; linarith
    · exact (hrsub (by rw [Metric.mem_ball, dist_eq_norm]; linarith)).2
  · intro x hx hne
    have hn := hcont x hx
    have hxr : x ∈ Metric.ball x₀ r := by rw [Metric.mem_ball, dist_eq_norm]; linarith
    have hT := taylor x hxr
    rw [← hvL] at hT
    have hTl : inner ℝ v (x - x₀) - (K' : ℝ) * ‖x - x₀‖ ^ 2 ≤ b x := by
      have := (abs_le.mp hT).1
      linarith
    have hxc : ‖(x - x₀) - a • v‖ ≤ s := by
      have hsplit : x - (x₀ + a • v) = (x - x₀) - a • v := by abel
      rw [← hsplit]
      rwa [Metric.mem_closedBall, dist_eq_norm] at hx
    have hsq : ‖(x - x₀) - a • v‖ ^ 2 ≤ s ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hxc 2
    rw [norm_sub_sq_real, real_inner_smul_right, hnav, real_inner_comm] at hsq
    have hle : ‖x - x₀‖ ^ 2 ≤ 2 * (a * inner ℝ v (x - x₀)) := by linarith
    have hgeo : ‖v‖ * ‖x - x₀‖ ^ 2 ≤ 2 * s * inner ℝ v (x - x₀) := by
      calc ‖v‖ * ‖x - x₀‖ ^ 2 ≤ ‖v‖ * (2 * (a * inner ℝ v (x - x₀))) :=
            mul_le_mul_of_nonneg_left hle hvpos.le
        _ = 2 * (a * ‖v‖) * inner ℝ v (x - x₀) := by ring
        _ = 2 * s * inner ℝ v (x - x₀) := by rw [hav]
    have hnpos : 0 < ‖x - x₀‖ := norm_pos_iff.mpr (sub_ne_zero.mpr hne)
    have hn2 : 0 < ‖x - x₀‖ ^ 2 := by positivity
    have h1 : 2 * s * (inner ℝ v (x - x₀) - (K' : ℝ) * ‖x - x₀‖ ^ 2) ≤ 2 * s * b x :=
      mul_le_mul_of_nonneg_left hTl (by linarith)
    have h2 : s * (4 * ((K' : ℝ) + 1)) * ‖x - x₀‖ ^ 2 ≤ ‖v‖ * ‖x - x₀‖ ^ 2 :=
      mul_le_mul_of_nonneg_right hs3' hn2.le
    have h3 : 0 < s * ‖x - x₀‖ ^ 2 := mul_pos hs0 hn2
    have h4 : 0 ≤ s * (K' : ℝ) * ‖x - x₀‖ ^ 2 := by positivity
    have h5 : 0 < s * b x := by nlinarith
    by_contra hcon
    push_neg at hcon
    nlinarith

theorem subharmonic_local_const_boundary [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u β : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (p : M)
    (hsub : ∀ᶠ q in 𝓝 p, 0 < β q → 0 ≤ g.lapM u q) (hβp : β p = 0)
    (hdβ : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0) (hneu : 0 ≤ g.gradInner u β p)
    (hmax : IsLocalMaxOn u {q : M | 0 ≤ β q} p) :
    ∀ᶠ q in 𝓝[{q : M | 0 ≤ β q}] p, u q = u p :=
by
  
  have h1le : (1 : WithTop ℕ∞) ≤ ∞ := by exact_mod_cast le_top
  have h2le : (2 : WithTop ℕ∞) ≤ ∞ := WithTop.coe_le_coe.mpr le_top
  
  have hmf : ∀ (h : M → ℝ) (q : M), MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q → ∀ ξ : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q ξ =
        fderiv ℝ (fun y => h ((chartAt E3 q).symm y)) (chartAt E3 q q) ξ := by
    intro h q hh ξ
    rw [hh.mfderiv]
    simp [writtenInExtChartAt, Function.comp_def]
    rfl
  
  have hchartlap : ∀ x ∈ (chartAt E3 p).target,
      lapLocal (g.coeff (chartAt E3 p).symm) (fun y => u ((chartAt E3 p).symm y)) x =
        g.lapM u ((chartAt E3 p).symm x) := by
    intro x hx
    let Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞ :=
      { toPartialEquiv := (chartAt E3 p).symm.toPartialEquiv
        open_source := (chartAt E3 p).open_target
        open_target := (chartAt E3 p).open_source
        contMDiffOn_toFun := contMDiffOn_chart_symm
        contMDiffOn_invFun := contMDiffOn_chart }
    exact lapLocal_chart_invariant g Φ u Set.univ isOpen_univ hu.contMDiffOn x hx trivial
  
  have hop : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (F : E3 → ℝ) (x : E3),
      lapLocal G F x = ∑ i : Fin 3, ∑ j : Fin 3,
          (G x)⁻¹ i j * partialDeriv i (fun z => partialDeriv j F z) x +
        ∑ k : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) *
          partialDeriv k F x := by
    intro G F x
    simp only [lapLocal, Fin.sum_univ_three]
    ring
  
  have hx₀T : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
  have hsymm0 : (chartAt E3 p).symm (chartAt E3 p p) = p :=
    (chartAt E3 p).left_inv (mem_chart_source E3 p)
  have hfT : ContDiffOn ℝ ∞ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
    contMDiffOn_iff_contDiffOn.mp (hu.comp_contMDiffOn contMDiffOn_chart_symm)
  have hbT : ContDiffOn ℝ ∞ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
    contMDiffOn_iff_contDiffOn.mp (hβ.comp_contMDiffOn contMDiffOn_chart_symm)
  have hGT : ∀ i j : Fin 3, ContDiffOn ℝ ∞
      (fun y => g.coeff (chartAt E3 p).symm y i j) (chartAt E3 p).target := g.smooth p
  have hpos : ∀ y ∈ (chartAt E3 p).target, (g.coeff (chartAt E3 p).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p y hy
  have hposA : ∀ y ∈ (chartAt E3 p).target,
      ((g.coeff (chartAt E3 p).symm y)⁻¹).PosDef :=
    fun y hy => (hpos y hy).inv
  have hcont := lap_coeff_continuousOn (g.coeff (chartAt E3 p).symm) (chartAt E3 p).target
    (chartAt E3 p).open_target hGT hpos
  have hdb : fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ≠ 0 := by
    intro h0
    apply hdβ
    refine ContinuousLinearMap.ext fun ξ => ?_
    rw [hmf β p (hβ.mdifferentiableAt (by simp)) ξ, h0]
    rfl
  
  have hdu : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p = 0 :=
    boundary_max_critical_ineq g u β hu hβ p hβp hdβ hneu hmax
  have hfd0 : fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
    refine ContinuousLinearMap.ext fun ξ => ?_
    rw [← hmf u p (hu.mdifferentiableAt (by simp)) ξ, hdu]
    rfl
  have hb0 : (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
    show β ((chartAt E3 p).symm (chartAt E3 p p)) = 0
    rw [hsymm0]; exact hβp
  
  have h1 : ∀ᶠ q in 𝓝 p, q ∈ {q : M | 0 ≤ β q} → u q ≤ u p :=
    eventually_nhdsWithin_iff.mp hmax
  have ht : Tendsto (chartAt E3 p).symm (𝓝 (chartAt E3 p p)) (𝓝 p) := by
    have := (chartAt E3 p).continuousAt_symm hx₀T
    rw [ContinuousAt, hsymm0] at this
    exact this
  have h2 := ((ht.eventually h1).and (ht.eventually hsub)).and
    ((chartAt E3 p).open_target.mem_nhds hx₀T)
  obtain ⟨ε, hε, hεsub⟩ := Metric.mem_nhds_iff.mp h2
  have hballT : Metric.ball (chartAt E3 p p) ε ⊆ (chartAt E3 p).target :=
    fun x hx => (hεsub hx).2
  have hLT : ∀ x ∈ Metric.ball (chartAt E3 p p) ε, 0 < β ((chartAt E3 p).symm x) →
      0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
          partialDeriv i (fun z => partialDeriv j (fun y => u ((chartAt E3 p).symm y)) z) x +
        ∑ k : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
            christoffel (g.coeff (chartAt E3 p).symm) k i j x) *
          partialDeriv k (fun y => u ((chartAt E3 p).symm y)) x := by
    intro x hx hbx
    rw [← hop, hchartlap x (hballT hx)]
    exact (hεsub hx).1.2 hbx
  
  obtain ⟨Q, hQo, hx₀Q, hQV, hQconn, hQcl⟩ :=
    regular_collar (fun y => β ((chartAt E3 p).symm y)) (Metric.ball (chartAt E3 p p) ε)
      Metric.isOpen_ball (chartAt E3 p p) (Metric.mem_ball_self hε)
      ((hbT.mono hballT).of_le h1le) hb0 hdb
  have hQT : Q ⊆ (chartAt E3 p).target := fun x hx => hballT (hQV hx)
  have hQle : ∀ x ∈ Q, 0 ≤ β ((chartAt E3 p).symm x) →
      u ((chartAt E3 p).symm x) ≤ u ((chartAt E3 p).symm (chartAt E3 p p)) := by
    intro x hx hbx
    rw [hsymm0]
    exact (hεsub (hQV hx)).1.1 hbx
  have hQpT : Q ∩ {x | 0 < β ((chartAt E3 p).symm x)} ⊆ (chartAt E3 p).target :=
    fun x hx => hQT hx.1
  have hQpo : IsOpen (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) :=
    (hbT.continuousOn.mono hQT).isOpen_inter_preimage hQo isOpen_Ioi
  
  have hconst : ∀ x ∈ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)},
      u ((chartAt E3 p).symm x) = u ((chartAt E3 p).symm (chartAt E3 p p)) := by
    by_cases hex : ∃ x₁ ∈ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)},
        u ((chartAt E3 p).symm x₁) = u ((chartAt E3 p).symm (chartAt E3 p p))
    · obtain ⟨x₁, hx₁, hfx₁⟩ := hex
      have hsmp := euclid_strong_max_principle
        (fun x => (g.coeff (chartAt E3 p).symm x)⁻¹)
        (fun x k => -∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
            christoffel (g.coeff (chartAt E3 p).symm) k i j x)
        (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) hQpo hQconn
        (fun i j => (hcont.1 i j).mono hQpT) (fun k => (hcont.2 k).mono hQpT)
        (fun x hx => hposA x (hQpT hx)) (fun y => u ((chartAt E3 p).symm y))
        ((hfT.mono hQpT).of_le h2le)
        (fun x hx => hLT x (hQV hx.1) hx.2) x₁ hx₁
        (fun x hx => by
          have hle := hQle x hx.1 hx.2.le
          rw [← hfx₁] at hle
          exact hle)
      intro x hx
      rw [← hfx₁]
      exact hsmp x hx
    · push_neg at hex
      exfalso
      have hlt : ∀ x ∈ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)},
          u ((chartAt E3 p).symm x) < u ((chartAt E3 p).symm (chartAt E3 p p)) :=
        fun x hx => lt_of_le_of_ne (hQle x hx.1 hx.2.le) (hex x hx)
      obtain ⟨ε', hε', hε'Q⟩ := Metric.isOpen_iff.mp hQo (chartAt E3 p p) hx₀Q
      obtain ⟨c, s, hs, hdist, hcb, hbpos⟩ :=
        interior_ball_of_regular (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target
          (chartAt E3 p).open_target (chartAt E3 p p) hx₀T (hbT.of_le h2le) hb0 hdb ε' hε'
      have hballQp : Metric.ball c s ⊆ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)} := by
        intro x hx
        have hx' := Metric.ball_subset_closedBall hx
        refine ⟨hε'Q (hcb hx').1, hbpos x hx' ?_⟩
        intro hxx
        rw [hxx, Metric.mem_ball] at hx
        linarith
      have hH := euclid_hopf_lemma
        (fun x => (g.coeff (chartAt E3 p).symm x)⁻¹)
        (fun x k => -∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
            christoffel (g.coeff (chartAt E3 p).symm) k i j x)
        (chartAt E3 p).target (chartAt E3 p).open_target hcont.1 hcont.2 hposA
        (fun y => u ((chartAt E3 p).symm y)) (hfT.of_le h2le) c (chartAt E3 p p) s hs
        (fun x hx => (hcb hx).2) hdist
        (fun x hx => hLT x (hQV (hballQp hx).1) (hballQp hx).2)
        (fun x hx => hlt x (hballQp hx))
      rw [hfd0] at hH
      simp at hH
  
  have hconstQ : ∀ x ∈ Q, 0 ≤ β ((chartAt E3 p).symm x) →
      u ((chartAt E3 p).symm x) = u ((chartAt E3 p).symm (chartAt E3 p p)) := by
    intro x hxQ hbx
    have hxcl : x ∈ closure (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) := hQcl ⟨hxQ, hbx⟩
    have hfc : ContinuousAt (fun y => u ((chartAt E3 p).symm y)) x :=
      hfT.continuousOn.continuousAt ((chartAt E3 p).open_target.mem_nhds (hQT hxQ))
    have himg := mem_closure_image hfc hxcl
    have hsub' : (fun y => u ((chartAt E3 p).symm y)) ''
        (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) ⊆
          {u ((chartAt E3 p).symm (chartAt E3 p p))} := by
      rintro _ ⟨y, hy, rfl⟩
      exact hconst y hy
    have := closure_mono hsub' himg
    rwa [closure_singleton] at this
  
  have hN : (chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Q ∈ 𝓝 p :=
    ((chartAt E3 p).continuousOn.isOpen_inter_preimage (chartAt E3 p).open_source hQo).mem_nhds
      ⟨mem_chart_source E3 p, hx₀Q⟩
  rw [eventually_nhdsWithin_iff]
  filter_upwards [hN] with q hq hqE
  have hl : (chartAt E3 p).symm (chartAt E3 p q) = q := (chartAt E3 p).left_inv hq.1
  have hbq : 0 ≤ β ((chartAt E3 p).symm (chartAt E3 p q)) := by
    rw [hl]; exact hqE
  have := hconstQ (chartAt E3 p q) hq.2 hbq
  rw [hl, hsymm0] at this
  exact this

theorem neumann_comparison [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (ρ : ℝ) (hρ : Re + 1 < ρ) (z : M → ℝ) (hz : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ z)
    (hlap : ∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} → 0 ≤ g.lapM z p)
    (hneu : ∀ p : M, β p = 0 → 0 ≤ g.gradInner z β p)
    (hS : ∀ y : E3, ‖y‖ = ρ → z ((hAF.ends k).Φ y) ≤ 0)
    (hoff : ∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} →
        p ∉ connectedComponentIn ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖})
          ((hAF.ends k).Φ (ρ • e 0)) → z p ≤ 0) :
    ∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} → z p ≤ 0 :=
by
  classical
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hRe2 : (2 : ℝ) ≤ Re := hβ.2.2.1
  have hρ1 : (1 : ℝ) < ρ := by linarith
  have hβc : Continuous β := hβ.1.continuous
  have hzc : Continuous z := hz.continuous
  have hΦc : ContinuousOn (hAF.ends k).Φ (hAF.ends k).Φ.source :=
    (hAF.ends k).Φ.contMDiffOn.continuousOn
  
  have hannK : ∀ a b : ℝ, 1 < a →
      IsCompact ((hAF.ends k).Φ '' {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b}) := by
    intro a b ha
    have hc : IsCompact {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} := by
      have heq : {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} =
          Metric.closedBall (0 : E3) b ∩ {y : E3 | a ≤ ‖y‖} := by
        ext y
        simp only [Set.mem_setOf_eq, Set.mem_inter_iff, Metric.mem_closedBall, dist_zero_right]
        tauto
      rw [heq]
      exact (isCompact_closedBall (0 : E3) b).inter_right
        (isClosed_le continuous_const continuous_norm)
    refine hc.image_of_continuousOn (hΦc.mono ?_)
    intro y hy
    obtain ⟨hy1, _⟩ := hy
    rw [hsrc]
    show (1 : ℝ) < ‖y‖
    linarith
  
  have hFopen : IsOpen ((hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) := by
    have heq : (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} =
        (hAF.ends k).Φ.target ∩ (hAF.ends k).Φ.symm ⁻¹' {y : E3 | ρ < ‖y‖} := by
      ext p
      constructor
      · intro hp
        obtain ⟨y, hy, hyp⟩ := hp
        have hy' : ρ < ‖y‖ := hy
        have hys : y ∈ (hAF.ends k).Φ.source := by
          rw [hsrc]
          show (1 : ℝ) < ‖y‖
          linarith
        rw [← hyp]
        refine ⟨(hAF.ends k).Φ.toPartialEquiv.map_source hys, ?_⟩
        show ρ < ‖(hAF.ends k).Φ.symm ((hAF.ends k).Φ y)‖
        have hl : (hAF.ends k).Φ.symm ((hAF.ends k).Φ y) = y :=
          (hAF.ends k).Φ.toPartialEquiv.left_inv hys
        rw [hl]
        exact hy'
      · intro hp
        obtain ⟨hpt, hp'⟩ := hp
        exact ⟨(hAF.ends k).Φ.symm p, hp', (hAF.ends k).Φ.toPartialEquiv.right_inv hpt⟩
    rw [heq]
    exact (hAF.ends k).Φ.symm.contMDiffOn.continuousOn.isOpen_inter_preimage
      (hAF.ends k).Φ.open_target (isOpen_lt continuous_const continuous_norm)
  
  have hFcl : IsClosed ((hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖}) := by
    obtain ⟨ρc, _, hcl⟩ := endChart_far_isClosed g hAF k
    by_cases h : ρc ≤ ρ
    · exact hcl ρ h
    · push_neg at h
      have heq : (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} =
          (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖ ∧ ‖y‖ ≤ ρc} ∪
            (hAF.ends k).Φ '' {y : E3 | ρc ≤ ‖y‖} := by
        rw [← Set.image_union]
        congr 1
        ext y
        simp only [Set.mem_setOf_eq, Set.mem_union]
        constructor
        · intro hy
          rcases le_total ‖y‖ ρc with h' | h'
          · exact Or.inl ⟨hy, h'⟩
          · exact Or.inr h'
        · rintro (⟨hy, _⟩ | hy)
          · exact hy
          · linarith
      rw [heq]
      exact (hannK ρ ρc hρ1).isClosed.union (hcl ρc le_rfl)
  have hsubF : ∀ q : M, q ∈ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} →
      q ∈ (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} := by
    intro q hq
    obtain ⟨y, hy, hyq⟩ := hq
    exact ⟨y, le_of_lt (show ρ < ‖y‖ from hy), hyq⟩
  
  have hΩc : IsCompact ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) := by
    have hKE : IsCompact ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}) :=
      hβ.2.2.2.2
    have hsub : {q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} ⊆
        ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}) ∪
          (hAF.ends k).Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ ρ} := by
      intro q hq
      obtain ⟨hq1, hq2⟩ := hq
      by_cases hqR : q ∈ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}
      · obtain ⟨y, hy, hyq⟩ := hqR
        right
        refine ⟨y, ⟨le_of_lt (show Re < ‖y‖ from hy), ?_⟩, hyq⟩
        by_contra hc
        push_neg at hc
        exact hq2 ⟨y, hc, hyq⟩
      · exact Or.inl ⟨hq1, hqR⟩
    have hcl : IsClosed ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) :=
      (isClosed_le continuous_const hβc).inter hFopen.isClosed_compl
    exact (hKE.union (hannK Re ρ (by linarith))).of_isClosed_subset hcl hsub
  
  have hdir : ∀ q : M, q ∈ {q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} →
      q ∈ (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} → z q ≤ 0 := by
    intro q hq hqF
    obtain ⟨_, hq2⟩ := hq
    obtain ⟨y, hy, hyq⟩ := hqF
    have hy' : ρ ≤ ‖y‖ := hy
    rcases lt_or_eq_of_le hy' with h | h
    · exact absurd ⟨y, h, hyq⟩ hq2
    · rw [← hyq]
      exact hS y h.symm
  have hnorm : ‖ρ • e 0‖ = ρ := by
    have h1 : ‖ρ • e 0‖ = |ρ| := by simp [norm_smul, EuclideanSpace.norm_single]
    rw [h1, abs_of_pos (by linarith)]
  have hzx₀ : z ((hAF.ends k).Φ (ρ • e 0)) ≤ 0 := hS _ hnorm
  
  intro p hp hpF
  by_contra hpos
  push_neg at hpos
  obtain ⟨ps, hps, hmax⟩ := hΩc.exists_isMaxOn ⟨p, hp, hpF⟩ hzc.continuousOn
  have hmax' : ∀ q ∈ {q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖},
      z q ≤ z ps := isMaxOn_iff.mp hmax
  have hmpos : 0 < z ps := lt_of_lt_of_le hpos (hmax' p ⟨hp, hpF⟩)
  have hpsC : ps ∈ connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0)) := by
    by_contra h
    have := hoff ps hps.1 hps.2 h
    linarith
  have hx₀C : (hAF.ends k).Φ (ρ • e 0) ∈ connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0)) :=
    mem_connectedComponentIn (connectedComponentIn_nonempty_iff.mp ⟨ps, hpsC⟩)
  
  have hkey : ∀ q ∈ {q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖},
      z q = z ps → ∀ᶠ r in 𝓝 q, 0 ≤ β r → z r = z ps := by
    intro q hqΩ hqm
    have hqN : q ∉ (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} := by
      intro h
      have := hdir q hqΩ h
      linarith
    have hN : ((hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖})ᶜ ∈ 𝓝 q :=
      hFcl.isOpen_compl.mem_nhds hqN
    have hloc : ∀ r ∈ ((hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖})ᶜ, 0 ≤ β r →
        z r ≤ z q ∧ 0 ≤ g.lapM z r := by
      intro r hr hβr
      have hrΩ : r ∈ {q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} :=
        ⟨hβr, fun h => hr (hsubF r h)⟩
      refine ⟨?_, hlap r hβr hr⟩
      rw [hqm]
      exact hmax' r hrΩ
    rcases lt_or_eq_of_le (show (0 : ℝ) ≤ β q from hqΩ.1) with hβq | hβq
    · have hO : {r : M | 0 < β r} ∈ 𝓝 q := (isOpen_lt continuous_const hβc).mem_nhds hβq
      have hmaxq : IsLocalMax z q := by
        show ∀ᶠ r in 𝓝 q, z r ≤ z q
        filter_upwards [hN, hO] with r hr hr'
        exact (hloc r hr (le_of_lt hr')).1
      have hsubq : ∀ᶠ r in 𝓝 q, 0 ≤ g.lapM z r := by
        filter_upwards [hN, hO] with r hr hr'
        exact (hloc r hr (le_of_lt hr')).2
      have hc := subharmonic_local_const_interior g z hz q hsubq hmaxq
      filter_upwards [hc] with r hr _
      rw [hr, hqm]
    · have hβq' : β q = 0 := hβq.symm
      have hsubq : ∀ᶠ r in 𝓝 q, 0 < β r → 0 ≤ g.lapM z r := by
        filter_upwards [hN] with r hr hr'
        exact (hloc r hr (le_of_lt hr')).2
      have hmaxq : IsLocalMaxOn z {r : M | 0 ≤ β r} q := by
        show ∀ᶠ r in 𝓝[{r : M | 0 ≤ β r}] q, z r ≤ z q
        rw [eventually_nhdsWithin_iff]
        filter_upwards [hN] with r hr hr'
        exact (hloc r hr hr').1
      have hc := subharmonic_local_const_boundary g z β hz hβ.1 q hsubq hβq' (hβ.2.1 q hβq')
        (hneu q hβq') hmaxq
      rw [eventually_nhdsWithin_iff] at hc
      filter_upwards [hc] with r hr hr'
      rw [hr hr', hqm]
  
  have hUo : IsOpen {x : M | ∀ᶠ r in 𝓝 x, 0 ≤ β r → z r = z ps} :=
    isOpen_setOf_eventually_nhds
  have hVo : IsOpen {x : M | z x < z ps} := isOpen_lt hzc continuous_const
  have hCsub : connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0)) ⊆
      {x : M | ∀ᶠ r in 𝓝 x, 0 ≤ β r → z r = z ps} ∪ {x : M | z x < z ps} := by
    intro x hx
    have hxΩ := connectedComponentIn_subset _ _ hx
    rcases lt_or_eq_of_le (hmax' x hxΩ) with h | h
    · exact Or.inr h
    · exact Or.inl (hkey x hxΩ h)
  have hdisj : connectedComponentIn
      ({q : M | 0 ≤ β q} \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ((hAF.ends k).Φ (ρ • e 0)) ∩
      ({x : M | ∀ᶠ r in 𝓝 x, 0 ≤ β r → z r = z ps} ∩ {x : M | z x < z ps}) = ∅ := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_empty_iff_false, iff_false]
    rintro ⟨hx, hxU, hxV⟩
    have hxΩ := connectedComponentIn_subset _ _ hx
    have h1 : z x = z ps := (show ∀ᶠ r in 𝓝 x, 0 ≤ β r → z r = z ps from hxU).self_of_nhds hxΩ.1
    have h2 : z x < z ps := hxV
    linarith
  rcases isPreconnected_iff_subset_of_disjoint.mp isPreconnected_connectedComponentIn _ _
      hUo hVo hCsub hdisj with h | h
  · have hx := h hx₀C
    have hx₀Ω := connectedComponentIn_subset _ _ hx₀C
    have h1 : z ((hAF.ends k).Φ (ρ • e 0)) = z ps :=
      (show ∀ᶠ r in 𝓝 ((hAF.ends k).Φ (ρ • e 0)), 0 ≤ β r → z r = z ps from hx).self_of_nhds
        hx₀Ω.1
    linarith
  · have h2 : z ps < z ps := h hpsC
    exact lt_irrefl _ h2

theorem neumann_harmonic_correction [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (u₀ : M → ℝ) (hu₀ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u₀)
    (ρ₀ : ℝ) (hρ₀ : Re < ρ₀)
    (hsupp : ∀ p : M, p ∉ (hAF.ends k).Φ '' {y : E3 | ρ₀ < ‖y‖} → u₀ p = 0)
    (ε A ρ₁ : ℝ) (hε : 0 < ε) (hε1 : ε < 1)
    (hdec : ∀ y : E3, ρ₁ < ‖y‖ →
      |lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u₀ ((hAF.ends k).Φ z)) y| ≤ A * ‖y‖ ^ (-2 - ε)) :
    ∃ (u : M → ℝ) (B : ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u ∧
      (∀ p : M, 0 ≤ β p → g.lapM u p = 0) ∧
      (∀ p : M, β p = 0 → g.gradInner u β p = 0) ∧
      (∀ p : M, 0 ≤ β p → |u p - u₀ p| ≤ B) :=
by
  classical
  
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hRe2 : (2 : ℝ) ≤ Re := hβ.2.2.1
  have hβpos : ∀ y : E3, Re < ‖y‖ → 0 < β ((hAF.ends k).Φ y) := hβ.2.2.2.1
  have hKE : IsCompact ({p : M | 0 ≤ β p} \ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}) :=
    hβ.2.2.2.2
  have hΦc : ContinuousOn (hAF.ends k).Φ (hAF.ends k).Φ.source :=
    (hAF.ends k).Φ.contMDiffOn.continuousOn
  
  have hopen : ∀ ρ : ℝ, 1 ≤ ρ → IsOpen ((hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) := by
    intro ρ hρ
    have heq : (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖} =
        (hAF.ends k).Φ.target ∩ (hAF.ends k).Φ.symm ⁻¹' {y : E3 | ρ < ‖y‖} := by
      ext p
      constructor
      · intro hp
        obtain ⟨y, hy, hyp⟩ := hp
        have hy' : ρ < ‖y‖ := hy
        have hys : y ∈ (hAF.ends k).Φ.source := by
          rw [hsrc]
          show (1 : ℝ) < ‖y‖
          linarith
        rw [← hyp]
        refine ⟨(hAF.ends k).Φ.toPartialEquiv.map_source hys, ?_⟩
        show ρ < ‖(hAF.ends k).Φ.symm ((hAF.ends k).Φ y)‖
        have hl : (hAF.ends k).Φ.symm ((hAF.ends k).Φ y) = y :=
          (hAF.ends k).Φ.toPartialEquiv.left_inv hys
        rw [hl]
        exact hy'
      · intro hp
        obtain ⟨hpt, hp'⟩ := hp
        exact ⟨(hAF.ends k).Φ.symm p, hp', (hAF.ends k).Φ.toPartialEquiv.right_inv hpt⟩
    rw [heq]
    exact (hAF.ends k).Φ.symm.contMDiffOn.continuousOn.isOpen_inter_preimage
      (hAF.ends k).Φ.open_target (isOpen_lt continuous_const continuous_norm)
  
  have hannK : ∀ a b : ℝ, 1 < a →
      IsCompact ((hAF.ends k).Φ '' {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b}) := by
    intro a b ha
    have hc : IsCompact {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} := by
      have heq : {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} =
          Metric.closedBall (0 : E3) b ∩ {y : E3 | a ≤ ‖y‖} := by
        ext y
        simp only [Set.mem_setOf_eq, Set.mem_inter_iff, Metric.mem_closedBall, dist_zero_right]
        tauto
      rw [heq]
      exact (isCompact_closedBall (0 : E3) b).inter_right
        (isClosed_le continuous_const continuous_norm)
    refine hc.image_of_continuousOn (hΦc.mono ?_)
    intro y hy
    obtain ⟨hy1, _⟩ := hy
    rw [hsrc]
    show (1 : ℝ) < ‖y‖
    linarith
  
  obtain ⟨ρc, _, hcl⟩ := endChart_far_isClosed g hAF k
  have hclosed : ∀ ρ : ℝ, 1 < ρ → IsClosed ((hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖}) := by
    intro ρ hρ
    by_cases h : ρc ≤ ρ
    · exact hcl ρ h
    · push_neg at h
      have heq : (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖} =
          (hAF.ends k).Φ '' {y : E3 | ρ ≤ ‖y‖ ∧ ‖y‖ ≤ ρc} ∪
            (hAF.ends k).Φ '' {y : E3 | ρc ≤ ‖y‖} := by
        rw [← Set.image_union]
        congr 1
        ext y
        simp only [Set.mem_setOf_eq, Set.mem_union]
        constructor
        · intro hy
          rcases le_total ‖y‖ ρc with h' | h'
          · exact Or.inl ⟨hy, h'⟩
          · exact Or.inr h'
        · rintro (⟨hy, _⟩ | hy)
          · exact hy
          · linarith
      rw [heq]
      exact (hannK ρ ρc hρ).isClosed.union (hcl ρc le_rfl)
  
  have hmono : ∀ a b : ℝ, a ≤ b → ∀ p : M, p ∈ (hAF.ends k).Φ '' {y : E3 | b < ‖y‖} →
      p ∈ (hAF.ends k).Φ '' {y : E3 | a < ‖y‖} := by
    intro a b hab p hp
    obtain ⟨y, hy, hyp⟩ := hp
    have hy' : b < ‖y‖ := hy
    exact ⟨y, lt_of_le_of_lt hab hy', hyp⟩
  have hmono' : ∀ a b : ℝ, a < b → ∀ p : M, p ∈ (hAF.ends k).Φ '' {y : E3 | b ≤ ‖y‖} →
      p ∈ (hAF.ends k).Φ '' {y : E3 | a < ‖y‖} := by
    intro a b hab p hp
    obtain ⟨y, hy, hyp⟩ := hp
    have hy' : b ≤ ‖y‖ := hy
    exact ⟨y, lt_of_lt_of_le hab hy', hyp⟩
  have hsubcl : ∀ (a : ℝ) (p : M), p ∈ (hAF.ends k).Φ '' {y : E3 | a < ‖y‖} →
      p ∈ (hAF.ends k).Φ '' {y : E3 | a ≤ ‖y‖} := by
    intro a p hp
    obtain ⟨y, hy, hyp⟩ := hp
    have hy' : a < ‖y‖ := hy
    exact ⟨y, le_of_lt hy', hyp⟩
  have hbdry : ∀ p : M, β p = 0 → p ∉ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} := by
    intro p hp hpF
    obtain ⟨y, hy, hyp⟩ := hpF
    have h1 := hβpos y hy
    rw [hyp, hp] at h1
    exact lt_irrefl _ h1
  
  have hzero : ∀ (p : M) (w : M → ℝ),
      g.lapM (fun _ => (0 : ℝ)) p = 0 ∧ g.gradInner (fun _ => (0 : ℝ)) w p = 0 := by
    intro p w
    have h := (lapM_gradInner_linear_local g (fun _ => (0 : ℝ)) (fun _ => (0 : ℝ)) w p).1
      contMDiff_const contMDiff_const 0 0
    simp only [zero_mul, add_zero] at h
    exact h
  have hvan : ∀ (u : M → ℝ) (U : Set M), IsOpen U → (∀ q ∈ U, u q = 0) → ∀ p ∈ U,
      ∀ w : M → ℝ, g.lapM u p = 0 ∧ g.gradInner u w p = 0 := by
    intro u U hU hu p hp w
    obtain ⟨h1, h2⟩ := (lapM_gradInner_linear_local g u (fun _ => (0 : ℝ)) w p).2 U hU hp hu
    exact ⟨h1.trans (hzero p w).1, h2.trans (hzero p w).2⟩
  have hadd : ∀ (u v : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u →
      ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ v → ∀ (p : M) (w : M → ℝ),
      g.lapM (fun q => u q + v q) p = g.lapM u p + g.lapM v p ∧
        g.gradInner (fun q => u q + v q) w p = g.gradInner u w p + g.gradInner v w p := by
    intro u v hu hv p w
    have h := (lapM_gradInner_linear_local g u v w p).1 hu hv 1 1
    simp only [one_mul] at h
    exact h
  have hchart : ∀ (u : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u → ∀ y : E3, 1 < ‖y‖ →
      g.lapM u ((hAF.ends k).Φ y) =
        lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u ((hAF.ends k).Φ z)) y := by
    intro u hu y hy
    have hys : y ∈ (hAF.ends k).Φ.source := by
      rw [hsrc]
      exact hy
    have hinv := lapLocal_chart_invariant g (hAF.ends k).Φ u Set.univ isOpen_univ
      hu.contMDiffOn y hys trivial
    have e1 : lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u ((hAF.ends k).Φ z)) y =
        lapLocal (g.coeff (hAF.ends k).Φ) (u ∘ (hAF.ends k).Φ) y := rfl
    have e2 : lapM g u ((hAF.ends k).Φ y) = g.lapM u ((hAF.ends k).Φ y) := rfl
    rw [e1, hinv, e2]
  
  have hρ₀1 : (1 : ℝ) < ρ₀ := by linarith
  have hU₀open : IsOpen ((hAF.ends k).Φ '' {y : E3 | ρ₀ ≤ ‖y‖})ᶜ :=
    (hclosed ρ₀ hρ₀1).isOpen_compl
  have hu₀U : ∀ q ∈ ((hAF.ends k).Φ '' {y : E3 | ρ₀ ≤ ‖y‖})ᶜ, u₀ q = 0 := by
    intro q hq
    exact hsupp q (fun h => hq (hsubcl ρ₀ q h))
  have hinU₀ : ∀ p : M, p ∉ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} →
      p ∈ ((hAF.ends k).Φ '' {y : E3 | ρ₀ ≤ ‖y‖})ᶜ := by
    intro p hp hp'
    exact hp (hmono' Re ρ₀ hρ₀ p hp')
  
  obtain ⟨f, hfdef⟩ : ∃ f : M → ℝ, f = fun p => -g.lapM u₀ p := ⟨_, rfl⟩
  have hfp : ∀ p : M, f p = -g.lapM u₀ p := fun p => by rw [hfdef]
  have hf : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f := by
    rw [hfdef]
    exact (lapM_contMDiff g u₀ hu₀).neg
  have hf0 : ∀ p : M, p ∉ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} → f p = 0 := by
    intro p hp
    rw [hfp, (hvan u₀ _ hU₀open hu₀U p (hinU₀ p hp) β).1, neg_zero]
  have hfdecay : ∀ y : E3, ρ₁ < ‖y‖ → 1 < ‖y‖ →
      |f ((hAF.ends k).Φ y)| ≤ A * ‖y‖ ^ (-2 - ε) := by
    intro y hy1 hy2
    rw [hfp, abs_neg, hchart u₀ hu₀ y hy2]
    exact hdec y hy1
  have hu₀neu : ∀ p : M, β p = 0 → g.gradInner u₀ β p = 0 := fun p hp =>
    (hvan u₀ _ hU₀open hu₀U p (hinU₀ p (hbdry p hp)) β).2
  
  obtain ⟨ψ, Rb, c, P₀, hRbmin, hRbRe, hc, hψ, hψb, hψlap, hψneu, hψdec⟩ :=
    neumann_barrier g hAF k β Re hβ ε hε hε1 ρ₁
  have hRb1 : (1 : ℝ) ≤ Rb := by linarith
  
  obtain ⟨ζ', hζ', hζ'0, hζ'1⟩ := end_cutoff_extension (hAF.ends k) (fun _ => (1 : ℝ)) Rb
    (Rb + 3) hRb1 (by linarith) contDiffOn_const (hclosed (Rb + 3) (by linarith))
  have hζ'one : ∀ y : E3, Rb + 4 ≤ ‖y‖ → ζ' ((hAF.ends k).Φ y) = 1 := fun y hy =>
    hζ'1 y (by linarith)
  
  obtain ⟨z₁, hz₁, hz₁lap, hz₁neu, -, -⟩ :=
    neumann_dirichlet_solve g hAF k β Re hβ (Rb + 4) (by linarith) f hf
      (fun p _ hp => hf0 p hp)
  obtain ⟨zh, hzhdef⟩ : ∃ zh : M → ℝ, zh = fun p => (1 - ζ' p) * z₁ p := ⟨_, rfl⟩
  have hzhp : ∀ p : M, zh p = (1 - ζ' p) * z₁ p := fun p => by rw [hzhdef]
  have hzh : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ zh := by
    have h := ((contMDiff_const (c := (1 : ℝ))).sub hζ').mul hz₁
    rw [hzhdef]
    exact h
  have hV₁open : IsOpen ((hAF.ends k).Φ '' {y : E3 | Rb + 3 ≤ ‖y‖})ᶜ :=
    (hclosed (Rb + 3) (by linarith)).isOpen_compl
  have hzhV₁ : ∀ q ∈ ((hAF.ends k).Φ '' {y : E3 | Rb + 3 ≤ ‖y‖})ᶜ, zh q = z₁ q := by
    intro q hq
    rw [hzhp, hζ'0 q (fun h => hq (hsubcl (Rb + 3) q h)), sub_zero, one_mul]
  have hFopen4 : IsOpen ((hAF.ends k).Φ '' {y : E3 | Rb + 4 < ‖y‖}) :=
    hopen (Rb + 4) (by linarith)
  have hzhF : ∀ q ∈ (hAF.ends k).Φ '' {y : E3 | Rb + 4 < ‖y‖}, zh q = 0 := by
    intro q hq
    obtain ⟨y, hy, hyq⟩ := hq
    have hy' : Rb + 4 < ‖y‖ := hy
    rw [← hyq, hzhp, hζ'one y (le_of_lt hy'), sub_self, zero_mul]
  
  obtain ⟨K₁, hK₁⟩ := (hKE.union (hannK Re (Rb + 4) (by linarith))).exists_bound_of_continuousOn
    hzh.continuous.continuousOn
  have hzhbd : ∀ p : M, 0 ≤ β p → |zh p| ≤ max K₁ 0 := by
    intro p hp
    by_cases hpF : p ∈ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}
    · obtain ⟨y, hy, hyp⟩ := hpF
      have hy' : Re < ‖y‖ := hy
      by_cases hy4 : ‖y‖ ≤ Rb + 4
      · have hmem : p ∈ ({p : M | 0 ≤ β p} \ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}) ∪
            (hAF.ends k).Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ Rb + 4} :=
          Or.inr ⟨y, ⟨le_of_lt hy', hy4⟩, hyp⟩
        have h1 := hK₁ p hmem
        rw [Real.norm_eq_abs] at h1
        exact le_trans h1 (le_max_left _ _)
      · push_neg at hy4
        rw [hzhF p ⟨y, hy4, hyp⟩, abs_zero]
        exact le_max_right _ _
    · have hmem : p ∈ ({p : M | 0 ≤ β p} \ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖}) ∪
          (hAF.ends k).Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ Rb + 4} := Or.inl ⟨hp, hpF⟩
      have h1 := hK₁ p hmem
      rw [Real.norm_eq_abs] at h1
      exact le_trans h1 (le_max_left _ _)
  have hzhneu : ∀ p : M, β p = 0 → g.gradInner zh β p = 0 := by
    intro p hp
    have hpV : p ∈ ((hAF.ends k).Φ '' {y : E3 | Rb + 3 ≤ ‖y‖})ᶜ := fun h =>
      hbdry p hp (hmono' Re (Rb + 3) (by linarith) p h)
    rw [((lapM_gradInner_linear_local g zh z₁ β p).2 _ hV₁open hpV hzhV₁).2]
    exact hz₁neu p hp
  
  obtain ⟨ft, hftdef⟩ : ∃ ft : M → ℝ, ft = fun p => f p - g.lapM zh p := ⟨_, rfl⟩
  have hftp : ∀ p : M, ft p = f p - g.lapM zh p := fun p => by rw [hftdef]
  have hft : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ft := by
    have h := hf.sub (lapM_contMDiff g zh hzh)
    rw [hftdef]
    exact h
  have hft0 : ∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | Rb + 1 < ‖y‖} →
      ft p = 0 := by
    intro p hp hpF
    have hpV : p ∈ ((hAF.ends k).Φ '' {y : E3 | Rb + 3 ≤ ‖y‖})ᶜ := fun h =>
      hpF (hmono' (Rb + 1) (Rb + 3) (by linarith) p h)
    have hpV4 : p ∉ (hAF.ends k).Φ '' {y : E3 | Rb + 4 ≤ ‖y‖} := fun h =>
      hpF (hmono' (Rb + 1) (Rb + 4) (by linarith) p h)
    have h1 : g.lapM zh p = g.lapM z₁ p :=
      ((lapM_gradInner_linear_local g zh z₁ β p).2 _ hV₁open hpV hzhV₁).1
    rw [hftp, h1, hz₁lap p hp hpV4, sub_self]
  have hft0' : ∀ p : M, 0 ≤ β p → p ∉ (hAF.ends k).Φ '' {y : E3 | Re < ‖y‖} → ft p = 0 :=
    fun p hp hpF => hft0 p hp (fun h => hpF (hmono Re (Rb + 1) (by linarith) p h))
  
  obtain ⟨K₂, hK₂⟩ := (hannK (Rb + 1) (Rb + 4) (by linarith)).exists_bound_of_continuousOn
    hft.continuous.continuousOn
  have hRb4 : (0 : ℝ) < Rb + 4 := by linarith
  obtain ⟨A₂, hA₂def⟩ : ∃ A₂ : ℝ, A₂ = max A 0 + max K₂ 0 * (Rb + 4) ^ (2 + ε) := ⟨_, rfl⟩
  have hA₂ : 0 ≤ A₂ := by
    rw [hA₂def]
    exact add_nonneg (le_max_right _ _)
      (mul_nonneg (le_max_right _ _) (Real.rpow_nonneg (le_of_lt hRb4) _))
  have hftdec : ∀ y : E3, Rb + 1 < ‖y‖ → |ft ((hAF.ends k).Φ y)| ≤ A₂ * ‖y‖ ^ (-2 - ε) := by
    intro y hy
    have hy0 : (0 : ℝ) < ‖y‖ := by linarith
    have hpow0 : 0 ≤ ‖y‖ ^ (-2 - ε) := Real.rpow_nonneg (le_of_lt hy0) _
    by_cases hy4 : ‖y‖ ≤ Rb + 4
    · have hb := hK₂ ((hAF.ends k).Φ y) ⟨y, ⟨le_of_lt hy, hy4⟩, rfl⟩
      rw [Real.norm_eq_abs] at hb
      have h1 : (Rb + 4) ^ (-2 - ε) ≤ ‖y‖ ^ (-2 - ε) :=
        Real.rpow_le_rpow_of_nonpos hy0 hy4 (by linarith)
      have h2 : (Rb + 4) ^ (2 + ε) * (Rb + 4) ^ (-2 - ε) = 1 := by
        rw [← Real.rpow_add hRb4]
        have he : (2 + ε + (-2 - ε) : ℝ) = 0 := by ring
        rw [he, Real.rpow_zero]
      have h3 : 0 ≤ (Rb + 4) ^ (2 + ε) := Real.rpow_nonneg (le_of_lt hRb4) _
      have hkey : 1 ≤ (Rb + 4) ^ (2 + ε) * ‖y‖ ^ (-2 - ε) := by
        calc (1 : ℝ) = (Rb + 4) ^ (2 + ε) * (Rb + 4) ^ (-2 - ε) := h2.symm
          _ ≤ (Rb + 4) ^ (2 + ε) * ‖y‖ ^ (-2 - ε) := mul_le_mul_of_nonneg_left h1 h3
      have hK : |ft ((hAF.ends k).Φ y)| ≤ max K₂ 0 := le_trans hb (le_max_left _ _)
      have hm : 0 ≤ max K₂ 0 := le_max_right _ _
      have hA0 : 0 ≤ max A 0 * ‖y‖ ^ (-2 - ε) := mul_nonneg (le_max_right _ _) hpow0
      have h4 : max K₂ 0 * 1 ≤ max K₂ 0 * ((Rb + 4) ^ (2 + ε) * ‖y‖ ^ (-2 - ε)) :=
        mul_le_mul_of_nonneg_left hkey hm
      rw [hA₂def, add_mul, mul_assoc]
      linarith
    · push_neg at hy4
      have hz0 : g.lapM zh ((hAF.ends k).Φ y) = 0 :=
        (hvan zh _ hFopen4 hzhF _ ⟨y, hy4, rfl⟩ β).1
      have hfd := hfdecay y (by linarith) (by linarith)
      rw [hftp, hz0, sub_zero, hA₂def]
      have h1 : A * ‖y‖ ^ (-2 - ε) ≤ max A 0 * ‖y‖ ^ (-2 - ε) :=
        mul_le_mul_of_nonneg_right (le_max_left _ _) hpow0
      have h2 : 0 ≤ max K₂ 0 * (Rb + 4) ^ (2 + ε) * ‖y‖ ^ (-2 - ε) :=
        mul_nonneg (mul_nonneg (le_max_right _ _) (Real.rpow_nonneg (le_of_lt hRb4) _)) hpow0
      rw [add_mul]
      linarith
  
  have hρn : ∀ n : ℕ, Re + 1 < Rb + 4 + (n : ℝ) := by
    intro n
    have := (Nat.cast_nonneg n : (0 : ℝ) ≤ n)
    linarith
  choose W hW hWlap hWneu hWS hWoff using
    (fun n : ℕ => neumann_dirichlet_solve g hAF k β Re hβ (Rb + 4 + (n : ℝ)) (hρn n) ft hft hft0')
  obtain ⟨lam, hlamdef⟩ : ∃ lam : ℝ, lam = A₂ / c := ⟨_, rfl⟩
  have hlam : 0 ≤ lam := by
    rw [hlamdef]
    exact div_nonneg hA₂ (le_of_lt hc)
  have hlamc : lam * c = A₂ := by
    rw [hlamdef]
    field_simp
  have hWbd : ∀ (n : ℕ) (p : M), 0 ≤ β p →
      p ∉ (hAF.ends k).Φ '' {y : E3 | Rb + 4 + (n : ℝ) < ‖y‖} → |W n p| ≤ lam * P₀ := by
    intro n p hp hpF
    have hcmp : ∀ σ : ℝ, (σ = 1 ∨ σ = -1) → σ * W n p + (-lam) * ψ p ≤ 0 := by
      intro σ hσ
      have hσabs : |σ| = 1 := by
        rcases hσ with h | h <;> simp [h]
      have hzs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun q => σ * W n q + (-lam) * ψ q) := by
        have h := ((contMDiff_const (c := σ)).mul (hW n)).add
          ((contMDiff_const (c := -lam)).mul hψ)
        exact h
      refine neumann_comparison g hAF k β Re hβ (Rb + 4 + (n : ℝ)) (hρn n)
        (fun q => σ * W n q + (-lam) * ψ q) hzs ?_ ?_ ?_ ?_ p hp hpF
      · intro q hq hqF
        have hl := ((lapM_gradInner_linear_local g (W n) ψ β q).1 (hW n) hψ σ (-lam)).1
        rw [hl, hWlap n q hq hqF]
        by_cases hqF1 : q ∈ (hAF.ends k).Φ '' {y : E3 | Rb + 1 < ‖y‖}
        · obtain ⟨y, hy, hyq⟩ := hqF1
          have hy' : Rb + 1 < ‖y‖ := hy
          rw [← hyq]
          have h1 := hftdec y hy'
          have h2 := hψdec y (by linarith)
          have h3 : -(|ft ((hAF.ends k).Φ y)|) ≤ σ * ft ((hAF.ends k).Φ y) := by
            have := neg_abs_le (σ * ft ((hAF.ends k).Φ y))
            rw [abs_mul, hσabs, one_mul] at this
            exact this
          have h4 : lam * (c * ‖y‖ ^ (-2 - ε)) = A₂ * ‖y‖ ^ (-2 - ε) := by
            rw [← mul_assoc, hlamc]
          have h5 : lam * g.lapM ψ ((hAF.ends k).Φ y) ≤ lam * (-c * ‖y‖ ^ (-2 - ε)) :=
            mul_le_mul_of_nonneg_left h2 hlam
          nlinarith
        · rw [hft0 q hq hqF1, mul_zero, zero_add]
          have := mul_nonneg hlam (neg_nonneg.mpr (hψlap q))
          nlinarith
      · intro q hq
        have hl := ((lapM_gradInner_linear_local g (W n) ψ β q).1 (hW n) hψ σ (-lam)).2
        rw [hl, hWneu n q hq, hψneu q hq]
        simp
      · intro y hy
        show σ * W n ((hAF.ends k).Φ y) + (-lam) * ψ ((hAF.ends k).Φ y) ≤ 0
        rw [hWS n y hy, mul_zero, zero_add]
        have := mul_nonneg hlam (hψb ((hAF.ends k).Φ y)).1
        nlinarith
      · intro q hq hqF hqC
        show σ * W n q + (-lam) * ψ q ≤ 0
        rw [hWoff n q hq hqF hqC, mul_zero, zero_add]
        have := mul_nonneg hlam (hψb q).1
        nlinarith
    have h1 := hcmp 1 (Or.inl rfl)
    have h2 := hcmp (-1) (Or.inr rfl)
    have hψP : lam * ψ p ≤ lam * P₀ := mul_le_mul_of_nonneg_left (hψb p).2 hlam
    rw [abs_le]
    constructor <;> nlinarith
  
  have hρs : ∀ n : ℕ, (n : ℝ) ≤ Rb + 4 + (n : ℝ) := fun n => by linarith
  obtain ⟨Wl, hWl, hWllap, hWlneu, hWlbd⟩ :=
    neumann_limit g hAF k β Re hβ ft hft (lam * P₀) (fun n => Rb + 4 + (n : ℝ)) hρs W hW
      hWlap hWneu hWbd
  
  have hsum : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun q => zh q + Wl q) := by
    have h := hzh.add hWl
    exact h
  have hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun q => u₀ q + (zh q + Wl q)) := by
    have h := hu₀.add hsum
    exact h
  refine ⟨fun q => u₀ q + (zh q + Wl q), max K₁ 0 + lam * P₀, hu, ?_, ?_, ?_⟩
  · intro p hp
    rw [(hadd u₀ (fun q => zh q + Wl q) hu₀ hsum p β).1, (hadd zh Wl hzh hWl p β).1,
      hWllap p hp, hftp, hfp]
    ring
  · intro p hp
    rw [(hadd u₀ (fun q => zh q + Wl q) hu₀ hsum p β).2, (hadd zh Wl hzh hWl p β).2,
      hu₀neu p hp, hzhneu p hp, hWlneu p hp]
    ring
  · intro p hp
    show |u₀ p + (zh p + Wl p) - u₀ p| ≤ max K₁ 0 + lam * P₀
    have h1 := hzhbd p hp
    have h2 := hWlbd p hp
    calc |u₀ p + (zh p + Wl p) - u₀ p| = |zh p + Wl p| := by
          congr 1
          ring
      _ ≤ |zh p| + |Wl p| := abs_add_le _ _
      _ ≤ max K₁ 0 + lam * P₀ := add_le_add h1 h2

theorem neumann_harmonic_exists [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re) :
    ∃ (u : M → ℝ) (R C : ℝ), Re ≤ R ∧ 0 < C ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u ∧
      (∀ p : M, 0 ≤ β p → g.lapM u p = 0) ∧
      (∀ p : M, β p = 0 → g.gradInner u β p = 0) ∧
      ∀ y : E3, R < ‖y‖ →
        lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u ((hAF.ends k).Φ z)) y = 0 ∧
        |u ((hAF.ends k).Φ y) - y 0| ≤ C * ‖y‖ ^ (1 - min hAF.q (3 / 4)) ∧
        (∀ i : Fin 3, |partialDeriv i (fun z => u ((hAF.ends k).Φ z)) y
            - (if i = 0 then (1 : ℝ) else 0)| ≤ C * ‖y‖ ^ (-(min hAF.q (3 / 4)))) ∧
        (∀ i j : Fin 3, |partialDeriv i (fun z => partialDeriv j (fun w => u ((hAF.ends k).Φ w)) z) y|
            ≤ C * ‖y‖ ^ (-(min hAF.q (3 / 4)) - 1)) :=
by
  classical
  
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hsmooth : ∀ i j : Fin 3,
      ContDiffOn ℝ ∞ (fun x => g.coeff (hAF.ends k).Φ x i j) {x : E3 | 1 < ‖x‖} := by
    intro i j
    rw [← hsrc]
    exact coeff_contDiffOn_source g (hAF.ends k).Φ i j
  have hRe2 : (2 : ℝ) ≤ Re := hβ.2.2.1
  have hβpos : ∀ y : E3, Re < ‖y‖ → 0 < β ((hAF.ends k).Φ y) := hβ.2.2.2.1
  have hq0 : 0 < hAF.q := lt_trans (by norm_num) hAF.q_gt
  set q' := min hAF.q (3 / 4) with hq'def
  have hq'half : (1 / 2 : ℝ) < q' := lt_min hAF.q_gt (by norm_num)
  have hq'le : q' ≤ hAF.q := min_le_left _ _
  have hq'34 : q' ≤ 3 / 4 := min_le_right _ _
  have hq'lt1 : q' < 1 := by linarith
  have hopen : ∀ ρ : ℝ, IsOpen {z : E3 | ρ < ‖z‖} :=
    fun ρ => isOpen_lt continuous_const continuous_norm
  obtain ⟨RG, CG, hRG1, hCG0, hb⟩ :=
    metric_coeff_bounds (g.coeff (hAF.ends k).Φ) hAF.q hq0 hsmooth (hAF.decay k)
  
  obtain ⟨C₀, hC₀, -, hF₀⟩ :=
    coord_lap_bounds (g.coeff (hAF.ends k).Φ) hAF.q hq0 hsmooth RG CG hRG1 hCG0 hb
  
  obtain ⟨R₁, C₁, h, hRGR₁, hC₁, hh, hhb⟩ :=
    far_approx_harmonic (g.coeff (hAF.ends k).Φ) hAF.q q' hq'half hq'lt1 hq'le hsmooth
      RG CG hRG1 hCG0 hb
  
  obtain ⟨ρc, -, hcl⟩ := endChart_far_isClosed g hAF k
  obtain ⟨a, ha_def⟩ : ∃ a : ℝ, a = max (max (R₁ + 1) (Re + 1)) ρc := ⟨_, rfl⟩
  have haR₁ : R₁ + 1 ≤ a := by rw [ha_def]; exact le_trans (le_max_left _ _) (le_max_left _ _)
  have haRe : Re + 1 ≤ a := by rw [ha_def]; exact le_trans (le_max_right _ _) (le_max_left _ _)
  have haρ : ρc ≤ a := by rw [ha_def]; exact le_max_right _ _
  have hR₁1 : 1 ≤ R₁ := le_trans hRG1 hRGR₁
  
  obtain ⟨u₀, hu₀, hu₀supp, hu₀h⟩ :=
    end_cutoff_extension (hAF.ends k) h R₁ a hR₁1 (by linarith) hh (hcl a haρ)
  
  have hloc : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f₁ f₂ : E3 → ℝ) (y : E3),
      f₁ =ᶠ[𝓝 y] f₂ → lapLoc G f₁ y = lapLoc G f₂ y := by
    intro G f₁ f₂ y hfe
    have h1 : ∀ j : Fin 3, partialDeriv j f₁ y = partialDeriv j f₂ y := by
      intro j
      show fderiv ℝ f₁ y (e j) = fderiv ℝ f₂ y (e j)
      rw [hfe.fderiv_eq]
    have h2 : ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j f₁) y = partialDeriv i (partialDeriv j f₂) y := by
      intro i j
      have hev : partialDeriv j f₁ =ᶠ[𝓝 y] partialDeriv j f₂ := by
        filter_upwards [hfe.eventuallyEq_nhds] with z hz
        show fderiv ℝ f₁ z (e j) = fderiv ℝ f₂ z (e j)
        rw [hz.fderiv_eq]
      show fderiv ℝ (partialDeriv j f₁) y (e i) = fderiv ℝ (partialDeriv j f₂) y (e i)
      rw [hev.fderiv_eq]
    simp only [lapLoc, hessLoc, h1, h2]
  
  have hdec : ∀ y : E3, a + 1 < ‖y‖ →
      |lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u₀ ((hAF.ends k).Φ z)) y|
        ≤ C₁ * ‖y‖ ^ (-2 - (2 * q' - 1)) := by
    intro y hy
    have hev : (fun z => u₀ ((hAF.ends k).Φ z)) =ᶠ[𝓝 y] h := by
      filter_upwards [(hopen (a + 1)).mem_nhds hy] with z hz
      exact hu₀h z (le_of_lt (show a + 1 < ‖z‖ from hz))
    rw [hloc _ _ _ y hev]
    have hexp : (-2 - (2 * q' - 1) : ℝ) = -1 - 2 * q' := by ring
    rw [hexp]
    exact (hhb y (by linarith)).2
  
  obtain ⟨u, B, hu, hharm, hneu, hbd⟩ :=
    neumann_harmonic_correction g hAF k β Re hβ u₀ hu₀ a (by linarith) hu₀supp
      (2 * q' - 1) C₁ (a + 1) (by linarith) (by linarith) hdec
  have hB : 0 ≤ B := by
    have hn : ‖(Re + 1) • e 0‖ = |Re + 1| := by
      simp [norm_smul, EuclideanSpace.norm_single]
    have hy0 : Re < ‖(Re + 1) • e 0‖ := by
      rw [hn, abs_of_pos (by linarith)]
      linarith
    exact le_trans (abs_nonneg _) (hbd _ (le_of_lt (hβpos _ hy0)))
  
  have hf : ContDiffOn ℝ ∞ (fun z => u ((hAF.ends k).Φ z)) {y : E3 | 1 < ‖y‖} := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u ∘ (hAF.ends k).Φ) (hAF.ends k).Φ.source :=
      hu.comp_contMDiffOn (hAF.ends k).Φ.contMDiffOn
    have h2 := contMDiffOn_iff_contDiffOn.mp h1
    rw [hsrc] at h2
    exact h2
  
  have hharmEnd : ∀ y : E3, Re < ‖y‖ →
      lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u ((hAF.ends k).Φ z)) y = 0 := by
    intro y hy
    have hys : y ∈ (hAF.ends k).Φ.source := by
      rw [hsrc]
      show (1 : ℝ) < ‖y‖
      linarith
    have hinv := lapLocal_chart_invariant g (hAF.ends k).Φ u Set.univ isOpen_univ
      hu.contMDiffOn y hys trivial
    have h0 : g.lapM u ((hAF.ends k).Φ y) = 0 := hharm _ (le_of_lt (hβpos y hy))
    have e1 : lapLoc (g.coeff (hAF.ends k).Φ) (fun z => u ((hAF.ends k).Φ z)) y =
        lapLocal (g.coeff (hAF.ends k).Φ) (u ∘ (hAF.ends k).Φ) y := rfl
    have e2 : lapM g u ((hAF.ends k).Φ y) = g.lapM u ((hAF.ends k).Φ y) := rfl
    rw [e1, hinv, e2, h0]
  
  have hC0b : ∀ y : E3, a + 1 < ‖y‖ →
      |u ((hAF.ends k).Φ y) - y 0| ≤ (B + C₁) * ‖y‖ ^ (1 - q') := by
    intro y hy
    have hy1 : (1 : ℝ) ≤ ‖y‖ := by linarith
    have hpow : 1 ≤ ‖y‖ ^ (1 - q') := Real.one_le_rpow hy1 (by linarith)
    have h1 : |u ((hAF.ends k).Φ y) - u₀ ((hAF.ends k).Φ y)| ≤ B :=
      hbd _ (le_of_lt (hβpos y (by linarith)))
    have h2 : |h y - y 0| ≤ C₁ * ‖y‖ ^ (1 - q') := (hhb y (by linarith)).1
    rw [hu₀h y (le_of_lt hy)] at h1
    have h3 : B ≤ B * ‖y‖ ^ (1 - q') := by
      have := mul_le_mul_of_nonneg_left hpow hB
      linarith
    calc |u ((hAF.ends k).Φ y) - y 0|
        = |(u ((hAF.ends k).Φ y) - h y) + (h y - y 0)| := by rw [sub_add_sub_cancel]
      _ ≤ |u ((hAF.ends k).Φ y) - h y| + |h y - y 0| := abs_add_le _ _
      _ ≤ B + C₁ * ‖y‖ ^ (1 - q') := add_le_add h1 h2
      _ ≤ B * ‖y‖ ^ (1 - q') + C₁ * ‖y‖ ^ (1 - q') := by linarith
      _ = (B + C₁) * ‖y‖ ^ (1 - q') := by ring
  
  have hπ : ContDiff ℝ ∞ (fun z : E3 => z 0) :=
    (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).contDiff
  have hπ1 : ∀ (j : Fin 3) (z : E3),
      partialDeriv j (fun z : E3 => z 0) z = if j = 0 then (1 : ℝ) else 0 := by
    intro j z
    show fderiv ℝ (⇑(EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ)) z (e j) = _
    rw [ContinuousLinearMap.fderiv]
    show (e j) 0 = _
    simp [EuclideanSpace.single_apply, eq_comm]
  have hπ2 : ∀ (i j : Fin 3) (z : E3),
      partialDeriv i (partialDeriv j (fun z : E3 => z 0)) z = 0 := by
    intro i j z
    have hc : partialDeriv j (fun z : E3 => z 0) = fun _ => if j = 0 then (1 : ℝ) else 0 :=
      funext (hπ1 j)
    rw [hc]
    show fderiv ℝ (fun _ : E3 => if j = 0 then (1 : ℝ) else 0) z (e i) = 0
    rw [fderiv_const_apply]
    rfl
  have hfd : ∀ z : E3, 1 < ‖z‖ → DifferentiableAt ℝ (fun z => u ((hAF.ends k).Φ z)) z := by
    intro z hz
    exact (hf.differentiableOn (by simp)).differentiableAt ((hopen 1).mem_nhds hz)
  have hv1 : ∀ z : E3, 1 < ‖z‖ → ∀ j : Fin 3,
      partialDeriv j (fun w => u ((hAF.ends k).Φ w) - w 0) z =
        partialDeriv j (fun w => u ((hAF.ends k).Φ w)) z - (if j = 0 then (1 : ℝ) else 0) := by
    intro z hz j
    rw [← hπ1 j z]
    show fderiv ℝ ((fun w => u ((hAF.ends k).Φ w)) - (fun w : E3 => w 0)) z (e j) =
      fderiv ℝ (fun w => u ((hAF.ends k).Φ w)) z (e j) - fderiv ℝ (fun w : E3 => w 0) z (e j)
    have hπdz : DifferentiableAt ℝ (fun w : E3 => w 0) z :=
      (EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ).differentiableAt
    rw [fderiv_sub (hfd z hz) hπdz]
    rfl
  have hv2 : ∀ x : E3, 1 < ‖x‖ → ∀ i j : Fin 3,
      partialDeriv i (partialDeriv j (fun w => u ((hAF.ends k).Φ w) - w 0)) x =
        partialDeriv i (partialDeriv j (fun w => u ((hAF.ends k).Φ w))) x := by
    intro x hx i j
    have hev : partialDeriv j (fun w => u ((hAF.ends k).Φ w) - w 0) =ᶠ[𝓝 x]
        fun z => partialDeriv j (fun w => u ((hAF.ends k).Φ w)) z
          - (if j = 0 then (1 : ℝ) else 0) := by
      filter_upwards [(hopen 1).mem_nhds hx] with z hz
      exact hv1 z hz j
    show fderiv ℝ (partialDeriv j (fun w => u ((hAF.ends k).Φ w) - w 0)) x (e i) =
      fderiv ℝ (partialDeriv j (fun w => u ((hAF.ends k).Φ w))) x (e i)
    rw [hev.fderiv_eq, fderiv_sub_const]
  have hlapv : ∀ z : E3, a + 1 < ‖z‖ →
      lapLoc (g.coeff (hAF.ends k).Φ) (fun w => u ((hAF.ends k).Φ w) - w 0) z =
        -lapLoc (g.coeff (hAF.ends k).Φ) (fun w : E3 => w 0) z := by
    intro z hz
    have hz1 : 1 < ‖z‖ := by linarith
    have h0 := hharmEnd z (by linarith)
    unfold lapLoc hessLoc at h0 ⊢
    simp only [hv1 z hz1, hv2 z hz1, hπ1, hπ2] at h0 ⊢
    simp only [Fin.sum_univ_three] at h0 ⊢
    linear_combination h0
  
  have hA₀ : 0 ≤ B + C₁ + C₀ := by linarith
  have hvs : ContDiffOn ℝ ∞ (fun w => u ((hAF.ends k).Φ w) - w 0) {x : E3 | a + 1 < ‖x‖} :=
    (hf.mono (fun x (hx : a + 1 < ‖x‖) => (show (1 : ℝ) < ‖x‖ by linarith))).sub hπ.contDiffOn
  have hv0 : ∀ x : E3, a + 1 < ‖x‖ →
      |u ((hAF.ends k).Φ x) - x 0| ≤ (B + C₁ + C₀) * ‖x‖ ^ (1 - q') := by
    intro x hx
    have h1 := hC0b x hx
    have hp : 0 ≤ ‖x‖ ^ (1 - q') := Real.rpow_nonneg (norm_nonneg _) _
    calc _ ≤ (B + C₁) * ‖x‖ ^ (1 - q') := h1
      _ ≤ (B + C₁ + C₀) * ‖x‖ ^ (1 - q') := mul_le_mul_of_nonneg_right (by linarith) hp
  have hL0 : ∀ x : E3, a + 1 < ‖x‖ →
      |lapLoc (g.coeff (hAF.ends k).Φ) (fun w => u ((hAF.ends k).Φ w) - w 0) x|
        ≤ (B + C₁ + C₀) * ‖x‖ ^ (1 - q' - 2) := by
    intro x hx
    rw [hlapv x hx, abs_neg]
    have hx1 : (1 : ℝ) ≤ ‖x‖ := by linarith
    have h1 := (hF₀ x (by linarith)).1
    have h2 : ‖x‖ ^ (-hAF.q - 1) ≤ ‖x‖ ^ (1 - q' - 2) :=
      Real.rpow_le_rpow_of_exponent_le hx1 (by linarith)
    have hp : 0 ≤ ‖x‖ ^ (1 - q' - 2) := Real.rpow_nonneg (norm_nonneg _) _
    calc _ ≤ C₀ * ‖x‖ ^ (-hAF.q - 1) := h1
      _ ≤ C₀ * ‖x‖ ^ (1 - q' - 2) := mul_le_mul_of_nonneg_left h2 hC₀
      _ ≤ (B + C₁ + C₀) * ‖x‖ ^ (1 - q' - 2) := mul_le_mul_of_nonneg_right (by linarith) hp
  have hL1 : ∀ x : E3, a + 1 < ‖x‖ →
      ‖fderiv ℝ (lapLoc (g.coeff (hAF.ends k).Φ) (fun w => u ((hAF.ends k).Φ w) - w 0)) x‖
        ≤ (B + C₁ + C₀) * ‖x‖ ^ (1 - q' - 3) := by
    intro x hx
    have hev : lapLoc (g.coeff (hAF.ends k).Φ) (fun w => u ((hAF.ends k).Φ w) - w 0) =ᶠ[𝓝 x]
        -lapLoc (g.coeff (hAF.ends k).Φ) (fun w : E3 => w 0) := by
      filter_upwards [(hopen (a + 1)).mem_nhds hx] with z hz
      exact hlapv z hz
    rw [hev.fderiv_eq, fderiv_neg, norm_neg]
    have hx1 : (1 : ℝ) ≤ ‖x‖ := by linarith
    have h1 := (hF₀ x (by linarith)).2
    have h2 : ‖x‖ ^ (-hAF.q - 2) ≤ ‖x‖ ^ (1 - q' - 3) :=
      Real.rpow_le_rpow_of_exponent_le hx1 (by linarith)
    have hp : 0 ≤ ‖x‖ ^ (1 - q' - 3) := Real.rpow_nonneg (norm_nonneg _) _
    calc _ ≤ C₀ * ‖x‖ ^ (-hAF.q - 2) := h1
      _ ≤ C₀ * ‖x‖ ^ (1 - q' - 3) := mul_le_mul_of_nonneg_left h2 hC₀
      _ ≤ (B + C₁ + C₀) * ‖x‖ ^ (1 - q' - 3) := mul_le_mul_of_nonneg_right (by linarith) hp
  obtain ⟨R', C', hR', hC', hd⟩ :=
    exterior_scaled_estimate (g.coeff (hAF.ends k).Φ) hAF.q hq0 hsmooth RG CG hRG1 hCG0 hb
      (fun w => u ((hAF.ends k).Φ w) - w 0) (1 - q') (B + C₁ + C₀) (a + 1) (by linarith) hA₀
      hvs hv0 hL0 hL1
  
  refine ⟨u, R', B + C₁ + C' + 1, by linarith, by linarith, hu, hharm, hneu, ?_⟩
  intro y hy
  have hy2 : a + 1 < ‖y‖ := lt_of_le_of_lt hR' hy
  have hy1 : (1 : ℝ) < ‖y‖ := by linarith
  have hyR : Re < ‖y‖ := by linarith
  have hp1 : 0 ≤ ‖y‖ ^ (1 - q') := Real.rpow_nonneg (norm_nonneg _) _
  have hp2 : 0 ≤ ‖y‖ ^ (-q') := Real.rpow_nonneg (norm_nonneg _) _
  have hp3 : 0 ≤ ‖y‖ ^ (-q' - 1) := Real.rpow_nonneg (norm_nonneg _) _
  refine ⟨hharmEnd y hyR, ?_, ?_, ?_⟩
  · calc _ ≤ (B + C₁) * ‖y‖ ^ (1 - q') := hC0b y hy2
      _ ≤ (B + C₁ + C' + 1) * ‖y‖ ^ (1 - q') := mul_le_mul_of_nonneg_right (by linarith) hp1
  · intro i
    have h1 := (hd y hy).1 i
    rw [hv1 y hy1 i] at h1
    have he : (1 - q' - 1 : ℝ) = -q' := by ring
    rw [he] at h1
    calc _ ≤ C' * ‖y‖ ^ (-q') := h1
      _ ≤ (B + C₁ + C' + 1) * ‖y‖ ^ (-q') := mul_le_mul_of_nonneg_right (by linarith) hp2
  · intro i j
    have h2 : |partialDeriv i (partialDeriv j (fun w => u ((hAF.ends k).Φ w))) y|
        ≤ C' * ‖y‖ ^ (1 - q' - 2) := by
      rw [← hv2 y hy1 i j]
      exact (hd y hy).2 i j
    have he : (1 - q' - 2 : ℝ) = -q' - 1 := by ring
    rw [he] at h2
    calc _ ≤ C' * ‖y‖ ^ (-q' - 1) := h2
      _ ≤ (B + C₁ + C' + 1) * ‖y‖ ^ (-q' - 1) := mul_le_mul_of_nonneg_right (by linarith) hp3

theorem exists_transverse_direction [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u β : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (p : M)
    (hdu : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p ≠ 0) (hneu : g.gradInner u β p = 0) :
    ∃ ξ : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p ξ ≠ 0 ∧ mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ξ = 0 :=
by
  simp only [RiemannianMetric3.gradInner, partialDeriv] at hneu
  
  have hchart : ∀ h : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ h →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h p =
        fderiv ℝ (fun y => h ((chartAt E3 p).symm y)) (chartAt E3 p p) := by
    intro h hh
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h p := hh.mdifferentiableAt (by simp)
    rw [hmd.mfderiv]
    simp only [writtenInExtChartAt, extChartAt_coe, extChartAt_coe_symm, chartAt_self_eq,
      modelWithCornersSelf_coe, modelWithCornersSelf_coe_symm, Set.range_id, fderivWithin_univ,
      OpenPartialHomeomorph.refl_apply, Function.comp_def, id]
  
  have hp : (chartAt E3 p).symm (chartAt E3 p p) = p :=
    (chartAt E3 p).left_inv (mem_chart_source E3 p)
  have hD : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) =
      ContinuousLinearMap.id ℝ E3 := by
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) (mem_chart_target E3 p)
    rw [hmd.mfderiv]
    simp only [writtenInExtChartAt, extChartAt_coe, extChartAt_coe_symm, chartAt_self_eq,
      modelWithCornersSelf_coe, modelWithCornersSelf_coe_symm, Set.range_id, fderivWithin_univ,
      OpenPartialHomeomorph.refl_apply, OpenPartialHomeomorph.refl_symm, Function.comp_def, id, hp]
    have hev : (fun x => (chartAt E3 p) ((chartAt E3 p).symm x)) =ᶠ[𝓝 (chartAt E3 p p)]
        (fun x => x) := by
      filter_upwards [(chartAt E3 p).open_target.mem_nhds (mem_chart_target E3 p)] with y hy
      exact (chartAt E3 p).right_inv hy
    rw [hev.fderiv_eq]
    exact fderiv_id'
  
  have hGij : ∀ i j : Fin 3, g.coeff (chartAt E3 p).symm (chartAt E3 p p) i j =
      g.g p (e i) (e j) := by
    intro i j
    show g.g ((chartAt E3 p).symm (chartAt E3 p p))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) (e j)) = _
    rw [hD, hp]
    rfl
  have hGpd : (g.coeff (chartAt E3 p).symm (chartAt E3 p p)).PosDef := by
    rw [Matrix.posDef_iff_dotProduct_mulVec]
    refine ⟨Matrix.IsHermitian.ext fun i j => ?_, fun x hx => ?_⟩
    · rw [star_trivial, hGij, hGij, g.symm]
    · have hv : (∑ i : Fin 3, x i • e i) ≠ 0 := by
        intro hv
        apply hx
        funext j
        have h1 := congrArg (fun w : E3 => w j) hv
        fin_cases j <;> simpa [Fin.sum_univ_three, EuclideanSpace.single_apply] using h1
      have hpos := g.posDef p _ hv
      convert hpos using 1
      simp only [Fin.sum_univ_three, map_add, map_smul, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.coe_smul', Pi.smul_apply, smul_eq_mul, dotProduct, Matrix.mulVec,
        star_trivial, hGij]
      ring
  
  have hL : ∀ L : E3 →L[ℝ] ℝ, (∀ i, L (e i) = 0) → L = 0 := by
    intro L hL
    apply ContinuousLinearMap.coe_injective
    refine (EuclideanSpace.basisFun (Fin 3) ℝ).toBasis.ext fun i => ?_
    simp [hL i]
  
  have hduf : ∀ ξ : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p ξ =
      fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) ξ := by
    intro ξ; rw [hchart u hu]; rfl
  have hdβf : ∀ ξ : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ξ =
      fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ξ := by
    intro ξ; rw [hchart β hβ]; rfl
  have ha : (fun i => fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) (e i)) ≠ 0 := by
    intro h0
    apply hdu
    rw [hchart u hu]
    exact hL _ fun i => congrFun h0 i
  have hpos := hGpd.inv.dotProduct_mulVec_pos ha
  refine ⟨∑ j : Fin 3, (∑ i : Fin 3, (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ i j *
      fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) (e i)) • e j, ?_, ?_⟩
  · rw [hduf, map_sum]
    simp only [map_smul, smul_eq_mul]
    refine ne_of_gt (α := ℝ) ?_
    convert hpos using 1
    simp only [dotProduct, Matrix.mulVec, star_trivial, Fin.sum_univ_three]
    ring
  · rw [hdβf, map_sum]
    simp only [map_smul, smul_eq_mul]
    rw [← hneu]
    simp only [Fin.sum_univ_three]
    ring_nf

theorem mfderiv_eq_zero_of_const_on_closure_interior [IsManifold 𝓘(ℝ, E3) ∞ M]
    (u : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u) (K : Set M) (c : ℝ)
    (hK : ∀ q ∈ K, u q = c) (p : M) (hp : p ∈ closure (interior K)) :
    mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p = 0 :=
by
  have hpS : p ∈ (chartAt E3 p).source := mem_chart_source E3 p
  have hx₀ : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
  
  have hf : ContDiffOn ℝ 1 (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p).target := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u ∘ (chartAt E3 p).symm) (chartAt E3 p).target :=
      hu.comp_contMDiffOn contMDiffOn_chart_symm
    have h2 := contMDiffOn_iff_contDiffOn.mp h1
    exact h2.of_le (by exact_mod_cast le_top)
  
  have hD : fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
    have hVo : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior K) :=
      (chartAt E3 p).continuousOn_symm.isOpen_inter_preimage (chartAt E3 p).open_target
        isOpen_interior
    have hzero : ∀ y ∈ (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior K,
        fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) y = 0 := by
      intro y hy
      have hev : (fun y => u ((chartAt E3 p).symm y)) =ᶠ[𝓝 y] fun _ => c :=
        Filter.eventually_of_mem (hVo.mem_nhds hy)
          (fun z hz => hK _ (interior_subset hz.2))
      rw [hev.fderiv_eq]
      exact fderiv_const_apply c
    have hx₀V : chartAt E3 p p ∈
        closure ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior K) := by
      rw [_root_.mem_closure_iff]
      intro W hW hxW
      have hU'o : IsOpen ((chartAt E3 p).source ∩ chartAt E3 p ⁻¹' W) :=
        (chartAt E3 p).continuousOn.isOpen_inter_preimage (chartAt E3 p).open_source hW
      obtain ⟨q, hqU, hqK⟩ := _root_.mem_closure_iff.mp hp _ hU'o ⟨hpS, hxW⟩
      refine ⟨chartAt E3 p q, hqU.2, (chartAt E3 p).map_source hqU.1, ?_⟩
      show (chartAt E3 p).symm (chartAt E3 p q) ∈ interior K
      rw [(chartAt E3 p).left_inv hqU.1]
      exact hqK
    have hcont : ContinuousOn (fderiv ℝ (fun y => u ((chartAt E3 p).symm y)))
        (chartAt E3 p).target :=
      hf.continuousOn_fderiv_of_isOpen (chartAt E3 p).open_target le_rfl
    have hcw := (hcont.continuousAt ((chartAt E3 p).open_target.mem_nhds hx₀)).continuousWithinAt
      (s := (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior K)
    have hmem := hcw.mem_closure_image hx₀V
    have hsub : fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) ''
        ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior K) ⊆ {0} := by
      rintro _ ⟨y, hy, rfl⟩
      exact hzero y hy
    have h3 := closure_mono hsub hmem
    rw [closure_singleton] at h3
    exact h3
  
  have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p := hu.mdifferentiableAt (by simp)
  rw [hmd.mfderiv]
  have hw : writtenInExtChartAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) p u = fun y => u ((chartAt E3 p).symm y) := by
    funext y
    simp [writtenInExtChartAt, extChartAt_model_space_eq_id, extChartAt_coe_symm]
  have hpt : extChartAt 𝓘(ℝ, E3) p p = chartAt E3 p p := by simp [extChartAt_coe]
  rw [hw, hpt, modelWithCornersSelf_coe, Set.range_id, fderivWithin_univ]
  exact hD

theorem exterior_nbhd_subset [IsManifold 𝓘(ℝ, E3) ∞ M] (β : M → ℝ)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β)
    (hreg : ∀ p : M, β p = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0)
    (K S : Set M) (hK : IsClosed K) (hS : IsClosed S) (hKE : K ⊆ {p : M | 0 ≤ β p})
    (hfr : frontier K ⊆ S ∪ {p : M | β p = 0}) (hKcl : K ⊆ closure (interior K))
    (p : M) (hpK : p ∈ K) (hpS : p ∉ S) :
    ∃ W : Set M, IsOpen W ∧ p ∈ W ∧ W ∩ {q : M | 0 ≤ β q} ⊆ K :=
by
  
  have s4 : ∀ W : Set M, IsOpen W → p ∈ W → (∀ x ∈ W, x ∉ S) →
      IsPreconnected (W ∩ {q : M | 0 < β q}) →
      W ∩ {q : M | 0 ≤ β q} ⊆ closure (W ∩ {q : M | 0 < β q}) →
      W ∩ {q : M | 0 ≤ β q} ⊆ K := by
    intro W hWo hpW hWS hconn hcl
    have h1 : W ∩ {q : M | 0 < β q} ⊆ interior K ∪ Kᶜ := by
      intro x hx
      by_cases hxK : x ∈ K
      · by_cases hxi : x ∈ interior K
        · exact Or.inl hxi
        · exfalso
          have hxf : x ∈ frontier K := by rw [hK.frontier_eq]; exact ⟨hxK, hxi⟩
          rcases hfr hxf with h | h
          · exact hWS x hx.1 h
          · have h0 : (0:ℝ) < β x := hx.2
            have h0' : β x = 0 := h
            linarith
      · exact Or.inr hxK
    have h2 : (W ∩ {q : M | 0 < β q} ∩ interior K).Nonempty := by
      obtain ⟨q, hqW, hqi⟩ := _root_.mem_closure_iff.mp (hKcl hpK) W hWo hpW
      have hq : q ∈ closure (W ∩ {q : M | 0 < β q}) := hcl ⟨hqW, hKE (interior_subset hqi)⟩
      obtain ⟨x, ⟨_, hxi⟩, hxU⟩ :=
        _root_.mem_closure_iff.mp hq (W ∩ interior K) (hWo.inter isOpen_interior) ⟨hqW, hqi⟩
      exact ⟨x, hxU, hxi⟩
    have hdisj : Disjoint (interior K) Kᶜ :=
      Disjoint.mono_left interior_subset disjoint_compl_right
    have h3 : W ∩ {q : M | 0 < β q} ⊆ interior K :=
      hconn.subset_left_of_subset_union isOpen_interior hK.isOpen_compl hdisj h1 h2
    intro x hx
    have hx1 : x ∈ closure (W ∩ {q : M | 0 < β q}) := hcl hx
    have hx2 : x ∈ closure (interior K) := closure_mono h3 hx1
    have hx3 : x ∈ closure K := closure_mono interior_subset hx2
    rwa [hK.closure_eq] at hx3
  
  have s3 : ∀ (e : OpenPartialHomeomorph M E3) (Q : Set E3), IsOpen Q → Q ⊆ e.target →
      IsPreconnected (Q ∩ {y : E3 | 0 < β (e.symm y)}) →
      Q ∩ {y : E3 | 0 ≤ β (e.symm y)} ⊆ closure (Q ∩ {y : E3 | 0 < β (e.symm y)}) →
      IsOpen (e.source ∩ e ⁻¹' Q) ∧
      IsPreconnected ((e.source ∩ e ⁻¹' Q) ∩ {q : M | 0 < β q}) ∧
      (e.source ∩ e ⁻¹' Q) ∩ {q : M | 0 ≤ β q} ⊆
        closure ((e.source ∩ e ⁻¹' Q) ∩ {q : M | 0 < β q}) := by
    intro e Q hQo hQt hconn hcl
    have key : ∀ P : ℝ → Prop, (e.source ∩ e ⁻¹' Q) ∩ {q : M | P (β q)} =
        e.symm '' (Q ∩ {y : E3 | P (β (e.symm y))}) := by
      intro P
      ext x
      constructor
      · rintro ⟨⟨hxs, hxQ⟩, hP⟩
        refine ⟨e x, ⟨hxQ, ?_⟩, e.left_inv hxs⟩
        show P (β (e.symm (e x)))
        rw [e.left_inv hxs]; exact hP
      · rintro ⟨y, ⟨hyQ, hP⟩, rfl⟩
        refine ⟨⟨e.map_target (hQt hyQ), ?_⟩, hP⟩
        show e (e.symm y) ∈ Q
        rw [e.right_inv (hQt hyQ)]; exact hyQ
    have k1 : (e.source ∩ e ⁻¹' Q) ∩ {q : M | 0 < β q} =
        e.symm '' (Q ∩ {y : E3 | 0 < β (e.symm y)}) := key (fun r => 0 < r)
    have k2 : (e.source ∩ e ⁻¹' Q) ∩ {q : M | 0 ≤ β q} =
        e.symm '' (Q ∩ {y : E3 | 0 ≤ β (e.symm y)}) := key (fun r => 0 ≤ r)
    refine ⟨e.isOpen_inter_preimage hQo, ?_, ?_⟩
    · rw [k1]
      exact hconn.image e.symm (e.continuousOn_symm.mono (Set.inter_subset_left.trans hQt))
    · rw [k1, k2]
      rintro x ⟨y, hy, rfl⟩
      exact mem_closure_image (e.continuousAt_symm (hQt hy.1)) (hcl hy)
  
  have s1 : ∀ ξ : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ξ =
      fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ξ := by
    intro ξ
    rw [(hβ.mdifferentiableAt (by simp)).mfderiv]
    simp [writtenInExtChartAt, fderivWithin_univ]
    rfl
  
  have s2 : ∀ (b : E3 → ℝ) (V : Set E3), IsOpen V → ∀ x₀ ∈ V, ContDiffOn ℝ 1 b V →
      b x₀ = 0 → fderiv ℝ b x₀ ≠ 0 →
      ∃ Q : Set E3, IsOpen Q ∧ x₀ ∈ Q ∧ Q ⊆ V ∧ IsPreconnected (Q ∩ {x | 0 < b x}) ∧
        Q ∩ {x | 0 ≤ b x} ⊆ closure (Q ∩ {x | 0 < b x}) := by
    intro b V hV x₀ hx₀ hb hb0 hdb
    obtain ⟨w, hw⟩ : ∃ w, fderiv ℝ b x₀ w ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      exact hdb (ContinuousLinearMap.ext hcon)
    set v : E3 := (fderiv ℝ b x₀ w)⁻¹ • w with hv
    have hLv : fderiv ℝ b x₀ v = 1 := by
      rw [hv, map_smul, smul_eq_mul, inv_mul_cancel₀ hw]
    have hv0 : v ≠ 0 := by
      intro h; rw [h, map_zero] at hLv; exact zero_ne_one hLv
    set c := ‖v‖ with hc
    have hcpos : 0 < c := norm_pos_iff.mpr hv0
    have hcont : ContinuousOn (fderiv ℝ b) V := hb.continuousOn_fderiv_of_isOpen hV le_rfl
    have hgc : ContinuousAt (fun y => fderiv ℝ b y v) x₀ :=
      (hcont.continuousAt (hV.mem_nhds hx₀)).clm_apply continuousAt_const
    have hev : ∀ᶠ y in 𝓝 x₀, (1/2 : ℝ) < fderiv ℝ b y v :=
      hgc.eventually (lt_mem_nhds (by show (1/2 : ℝ) < fderiv ℝ b x₀ v; rw [hLv]; norm_num))
    obtain ⟨r, hr, hrsub⟩ := Metric.mem_nhds_iff.mp (Filter.inter_mem hev (hV.mem_nhds hx₀))
    have hrV : ∀ y ∈ ball x₀ r, y ∈ V := fun y hy => (hrsub hy).2
    have hrd : ∀ y ∈ ball x₀ r, (1/2 : ℝ) < fderiv ℝ b y v := fun y hy => (hrsub hy).1
    have hdiff : ∀ y ∈ ball x₀ r, DifferentiableAt ℝ b y := fun y hy =>
      (hb.differentiableOn one_ne_zero y (hrV y hy)).differentiableAt (hV.mem_nhds (hrV y hy))
    set δ := r / (4 * c) with hδ
    have hδpos : 0 < δ := div_pos hr (by positivity)
    have hδc : δ * c = r / 4 := by rw [hδ]; field_simp
    have hbc : ContinuousAt b x₀ := (hdiff x₀ (mem_ball_self hr)).continuousAt
    obtain ⟨a₁, ha₁, hba₁⟩ := Metric.continuousAt_iff.mp hbc (δ/4) (by positivity)
    set a := min a₁ (r/4) with ha
    have hapos : 0 < a := lt_min ha₁ (by positivity)
    have hbz : ∀ z ∈ ball x₀ a, |b z| < δ / 4 := by
      intro z hz
      have hz' : dist z x₀ < a₁ := lt_of_lt_of_le hz (min_le_left _ _)
      have h := hba₁ hz'
      rw [hb0, Real.dist_eq, sub_zero] at h
      exact h
    have hline : ∀ z ∈ ball x₀ a, ∀ τ : ℝ, |τ| ≤ δ → z + τ • v ∈ ball x₀ r := by
      intro z hz τ hτ
      rw [mem_ball, dist_eq_norm] at hz ⊢
      have h1 : ‖z + τ • v - x₀‖ ≤ ‖z - x₀‖ + ‖τ • v‖ := by
        rw [show z + τ • v - x₀ = (z - x₀) + τ • v by abel]; exact norm_add_le _ _
      rw [norm_smul, Real.norm_eq_abs] at h1
      have h2 : |τ| * c ≤ δ * c := mul_le_mul_of_nonneg_right hτ hcpos.le
      have h3 : a ≤ r / 4 := min_le_right _ _
      linarith
    have hM : ∀ z ∈ ball x₀ a, ∀ s s' : ℝ, -δ ≤ s → s ≤ s' → s' ≤ δ →
        (s' - s) / 2 ≤ b (z + s' • v) - b (z + s • v) := by
      intro z hz s s' hs hss' hs'
      have hderiv : ∀ τ ∈ Set.Icc (-δ) δ,
          HasDerivAt (fun τ : ℝ => b (z + τ • v)) (fderiv ℝ b (z + τ • v) v) τ := by
        intro τ hτ
        have hτ' : |τ| ≤ δ := abs_le.mpr hτ
        have h1 : HasDerivAt (fun τ : ℝ => z + τ • v) v τ := by
          simpa using ((hasDerivAt_id τ).smul_const v).const_add z
        exact (hdiff _ (hline z hz τ hτ')).hasFDerivAt.comp_hasDerivAt τ h1
      have hcontOn : ContinuousOn (fun τ : ℝ => b (z + τ • v)) (Set.Icc (-δ) δ) :=
        fun τ hτ => (hderiv τ hτ).continuousAt.continuousWithinAt
      have hdiffOn : DifferentiableOn ℝ (fun τ : ℝ => b (z + τ • v))
          (interior (Set.Icc (-δ) δ)) :=
        fun τ hτ => (hderiv τ (interior_subset hτ)).differentiableAt.differentiableWithinAt
      have hle : ∀ τ ∈ interior (Set.Icc (-δ) δ),
          (1/2 : ℝ) ≤ deriv (fun τ : ℝ => b (z + τ • v)) τ := by
        intro τ hτ
        rw [(hderiv τ (interior_subset hτ)).deriv]
        have hτI : τ ∈ Set.Icc (-δ) δ := interior_subset hτ
        exact (hrd _ (hline z hz τ (abs_le.mpr hτI))).le
      have hmvt := Convex.mul_sub_le_image_sub_of_le_deriv (convex_Icc (-δ) δ) hcontOn hdiffOn
        hle s ⟨hs, hss'.trans hs'⟩ s' ⟨hs.trans hss', hs'⟩ hss'
      linarith
    set Q : Set E3 := ⋃ t ∈ Set.Ioo (-δ) δ, (fun y => y - t • v) ⁻¹' ball x₀ a with hQ
    have hmemQ : ∀ y, y ∈ Q ↔ ∃ t, t ∈ Set.Ioo (-δ) δ ∧ y - t • v ∈ ball x₀ a := by
      intro y; simp only [hQ, Set.mem_iUnion, Set.mem_preimage, exists_prop]
    have hQ' : ∀ z ∈ ball x₀ a, ∀ t, t ∈ Set.Ioo (-δ) δ → z + t • v ∈ Q := by
      intro z hz t ht
      rw [hmemQ]; exact ⟨t, ht, by simpa using hz⟩
    have hQo : IsOpen Q :=
      isOpen_biUnion fun t _ => isOpen_ball.preimage (continuous_id.sub continuous_const)
    have hx₀Q : x₀ ∈ Q := by
      simpa using hQ' x₀ (mem_ball_self hapos) 0 ⟨by linarith, hδpos⟩
    have hQV : Q ⊆ V := by
      intro y hy
      obtain ⟨t, ht, hz⟩ := (hmemQ y).mp hy
      have hh := hline _ hz t (abs_le.mpr ⟨ht.1.le, ht.2.le⟩)
      rw [sub_add_cancel] at hh
      exact hrV _ hh
    have hM2 : ∀ z ∈ ball x₀ a, ∀ s : ℝ, δ / 2 ≤ s → s ≤ δ → 0 < b (z + s • v) := by
      intro z hz s hs1 hs2
      have h := hM z hz 0 s (by linarith) (by linarith) hs2
      rw [zero_smul, add_zero] at h
      have hh := (abs_lt.mp (hbz z hz)).1
      linarith
    refine ⟨Q, hQo, hx₀Q, hQV, ?_, ?_⟩
    · apply isPreconnected_of_forall (x₀ + (3 * δ / 4) • v)
      intro y hy
      obtain ⟨t, ht, hz⟩ := (hmemQ y).mp hy.1
      have hyz : y - t • v + t • v = y := sub_add_cancel y (t • v)
      refine ⟨((fun s : ℝ => (y - t • v) + s • v) '' Set.uIcc t (3 * δ / 4)) ∪
        ((fun w => w + (3 * δ / 4) • v) '' ball x₀ a), ?_, ?_, ?_, ?_⟩
      · rintro x (⟨s, hs, rfl⟩ | ⟨w', hw', rfl⟩)
        · rcases Set.mem_uIcc.mp hs with ⟨h1, h2⟩ | ⟨h1, h2⟩
          · refine ⟨hQ' _ hz s ⟨by linarith [ht.1], by linarith⟩, ?_⟩
            have hm := hM _ hz t s ht.1.le h1 (by linarith)
            rw [hyz] at hm
            have hy0 : 0 < b y := hy.2
            show 0 < b (y - t • v + s • v)
            linarith
          · refine ⟨hQ' _ hz s ⟨by linarith, by linarith [ht.2]⟩, ?_⟩
            exact hM2 _ hz s (by linarith) (by linarith [ht.2])
        · exact ⟨hQ' _ hw' _ ⟨by linarith, by linarith⟩, hM2 _ hw' _ (by linarith) (by linarith)⟩
      · exact Or.inr ⟨x₀, mem_ball_self hapos, rfl⟩
      · exact Or.inl ⟨t, Set.left_mem_uIcc, hyz⟩
      · exact IsPreconnected.union ((y - t • v) + (3 * δ / 4) • v)
          ⟨3 * δ / 4, Set.right_mem_uIcc, rfl⟩ ⟨y - t • v, hz, rfl⟩
          (isPreconnected_uIcc.image _ (by fun_prop))
          ((convex_ball x₀ a).isPreconnected.image _ (by fun_prop))
    · rintro y ⟨hyQ, hy0⟩
      obtain ⟨t, ht, hz⟩ := (hmemQ y).mp hyQ
      have hyz : y - t • v + t • v = y := sub_add_cancel y (t • v)
      have htend : Tendsto (fun s : ℝ => (y - t • v) + s • v) (𝓝[>] t) (𝓝 y) := by
        have hc' : Continuous (fun s : ℝ => (y - t • v) + s • v) := by fun_prop
        have h := (hc'.tendsto t).mono_left (nhdsWithin_le_nhds (s := Set.Ioi t))
        rwa [hyz] at h
      apply mem_closure_of_tendsto htend
      filter_upwards [Ioo_mem_nhdsGT ht.2] with s hs
      refine ⟨hQ' _ hz s ⟨by linarith [ht.1, hs.1], hs.2⟩, ?_⟩
      have h := hM _ hz t s ht.1.le hs.1.le hs.2.le
      rw [hyz] at h
      have hy0' : 0 ≤ b y := hy0
      show 0 < b (y - t • v + s • v)
      linarith [hs.1]
  
  by_cases hpi : p ∈ interior K
  · exact ⟨interior K, isOpen_interior, hpi, Set.inter_subset_left.trans interior_subset⟩
  have hβp : β p = 0 := by
    have hpf : p ∈ frontier K := by rw [hK.frontier_eq]; exact ⟨hpK, hpi⟩
    rcases hfr hpf with h | h
    · exact absurd h hpS
    · exact h
  have hb : ContDiffOn ℝ ∞ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target := by
    have h1 := hβ.comp_contMDiffOn (contMDiffOn_chart_symm (x := p))
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hVo : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ) :=
    (chartAt E3 p).isOpen_inter_preimage_symm hS.isOpen_compl
  have hpsrc : p ∈ (chartAt E3 p).source := mem_chart_source E3 p
  have hleft : (chartAt E3 p).symm (chartAt E3 p p) = p := (chartAt E3 p).left_inv hpsrc
  have hx₀V : chartAt E3 p p ∈ (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ := by
    refine ⟨mem_chart_target E3 p, ?_⟩
    show (chartAt E3 p).symm (chartAt E3 p p) ∉ S
    rw [hleft]; exact hpS
  have hb1 : ContDiffOn ℝ 1 (fun y => β ((chartAt E3 p).symm y))
      ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ) :=
    (hb.mono Set.inter_subset_left).of_le (by exact_mod_cast le_top)
  have hb0 : β ((chartAt E3 p).symm (chartAt E3 p p)) = 0 := by rw [hleft]; exact hβp
  have hdb : fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ≠ 0 := by
    intro h0
    apply hreg p hβp
    ext ξ
    rw [s1 ξ, h0]
    rfl
  obtain ⟨Q, hQo, hx₀Q, hQV, hconn, hcl⟩ := s2 _ _ hVo _ hx₀V hb1 hb0 hdb
  obtain ⟨hWo, hWconn, hWcl⟩ :=
    s3 (chartAt E3 p) Q hQo (hQV.trans Set.inter_subset_left) hconn hcl
  refine ⟨(chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Q, hWo, ⟨hpsrc, hx₀Q⟩, ?_⟩
  refine s4 _ hWo ⟨hpsrc, hx₀Q⟩ ?_ hWconn hWcl
  intro x hx hxS
  have h : (chartAt E3 p).symm (chartAt E3 p x) ∉ S := (hQV hx.2).2
  rw [(chartAt E3 p).left_inv hx.1] at h
  exact h hxS

theorem harmonic_local_const_interior [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u) (p : M)
    (hharm : ∀ᶠ q in 𝓝 p, g.lapM u q = 0) (hext : IsLocalMax u p ∨ IsLocalMin u p) :
    ∀ᶠ q in 𝓝 p, u q = u p :=
by
  classical
  set ψ := chartAt E3 p with hψ
  have hpS : p ∈ ψ.source := mem_chart_source E3 p
  have hx₀T : ψ p ∈ ψ.target := ψ.map_source hpS
  have hψp : ψ.symm (ψ p) = p := ψ.left_inv hpS
  set G : E3 → Matrix (Fin 3) (Fin 3) ℝ := g.coeff ψ.symm with hG
  set f : E3 → ℝ := fun y => u (ψ.symm y) with hfdef
  
  have hfS : ContDiffOn ℝ ∞ f ψ.target := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (u ∘ ψ.symm) ψ.target :=
      hu.comp_contMDiffOn contMDiffOn_chart_symm
    exact contMDiffOn_iff_contDiffOn.mp h1
  
  have hlap : ∀ x ∈ ψ.target, lapLocal G f x = g.lapM u (ψ.symm x) := by
    intro x hx
    let Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞ :=
      ⟨ψ.symm.toPartialEquiv, ψ.open_target, ψ.open_source, contMDiffOn_chart_symm,
        contMDiffOn_chart⟩
    have h1 := lapLocal_chart_invariant g Φ u Set.univ isOpen_univ hu.contMDiffOn x hx
      (Set.mem_univ _)
    have h2 : lapM g u (Φ x) = g.lapM u (Φ x) := by
      simp only [lapM, RiemannianMetric3.lapM, lapLoc, lapLocal, hessLoc, Function.comp_def]
    exact h1.trans h2
  
  have hop : ∀ (h : E3 → ℝ) (x : E3), lapLocal G h x =
      ∑ i : Fin 3, ∑ j : Fin 3,
          (G x)⁻¹ i j * partialDeriv i (fun z => partialDeriv j h z) x +
        ∑ k : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) *
          partialDeriv k h x := by
    intro h x
    simp only [lapLocal, Fin.sum_univ_three]
    ring
  
  have hposT : ∀ x ∈ ψ.target, (G x).PosDef := fun x hx => coeff_chart_symm_posDef g p x hx
  have hGc : ∀ i j : Fin 3, ContinuousOn (fun x => G x i j) ψ.target :=
    fun i j => (g.smooth p i j).continuousOn
  have hGm : ContinuousOn G ψ.target :=
    continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => hGc i j
  have hinvc : ∀ i j : Fin 3, ContinuousOn (fun x => (G x)⁻¹ i j) ψ.target := by
    intro i j x hx
    have hdet : (G x).det ≠ 0 := (hposT x hx).det_pos.ne'
    have hinvAt : ContinuousAt Ring.inverse (G x).det := by
      rw [Ring.inverse_eq_inv']
      exact continuousAt_inv₀ hdet
    have h1 : ContinuousWithinAt (fun y => (G y)⁻¹) ψ.target x :=
      (continuousAt_matrix_inv (G x) hinvAt).comp_continuousWithinAt (hGm x hx)
    exact continuousWithinAt_pi.1 (continuousWithinAt_pi.1 h1 i) j
  have hdGc : ∀ i j l : Fin 3,
      ContinuousOn (fun x => partialDeriv l (fun z => G z i j) x) ψ.target := by
    intro i j l
    have hGs : ContDiffOn ℝ ∞ (fun z => G z i j) ψ.target := g.smooth p i j
    have h1 := hGs.continuousOn_fderiv_of_isOpen ψ.open_target (by simp)
    show ContinuousOn (fun x => fderiv ℝ (fun z => G z i j) x (e l)) ψ.target
    exact h1.clm_apply (continuousOn_const (c := e l))
  have hchc : ∀ k i j : Fin 3, ContinuousOn (fun x => christoffel G k i j x) ψ.target := by
    intro k i j
    simp only [christoffel]
    exact continuousOn_const.mul (continuousOn_finset_sum _ fun l _ =>
      (hinvc k l).mul (((hdGc j l i).add (hdGc i l j)).sub (hdGc i j l)))
  have hbvc : ∀ k : Fin 3, ContinuousOn
      (fun x => -∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) ψ.target := by
    intro k
    refine ContinuousOn.neg ?_
    refine continuousOn_finset_sum _ fun i _ => ?_
    refine continuousOn_finset_sum _ fun j _ => ?_
    exact (hinvc i j).mul (hchc k i j)
  
  have hmain : ∀ F : E3 → ℝ, ContDiffOn ℝ ∞ F ψ.target →
      (∀ᶠ x in 𝓝 (ψ p), lapLocal G F x = 0) →
      (∀ᶠ x in 𝓝 (ψ p), F x ≤ F (ψ p)) →
      ∀ᶠ x in 𝓝 (ψ p), F x = F (ψ p) := by
    intro F hF hFlap hFmax
    have hT : ∀ᶠ x in 𝓝 (ψ p), x ∈ ψ.target := ψ.open_target.mem_nhds hx₀T
    obtain ⟨r, hr, hball⟩ := Metric.eventually_nhds_iff_ball.1 ((hT.and hFlap).and hFmax)
    have hΩT : Metric.ball (ψ p) r ⊆ ψ.target := fun x hx => (hball x hx).1.1
    have hconst := euclid_strong_max_principle (fun x => (G x)⁻¹)
      (fun x k => -∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x)
      (Metric.ball (ψ p) r) Metric.isOpen_ball (convex_ball (ψ p) r).isPreconnected
      (fun i j => (hinvc i j).mono hΩT) (fun k => (hbvc k).mono hΩT)
      (fun x hx => (hposT x (hΩT hx)).inv) F
      ((hF.of_le (by norm_cast)).mono hΩT)
      (fun x hx => by
        have h1 := hop F x
        rw [(hball x hx).1.2] at h1
        exact h1.le)
      (ψ p) (Metric.mem_ball_self hr) (fun x hx => (hball x hx).2)
    exact Metric.eventually_nhds_iff_ball.2 ⟨r, hr, hconst⟩
  
  have hcont : Tendsto ψ.symm (𝓝 (ψ p)) (𝓝 p) := by
    have h := ψ.continuousAt_symm hx₀T
    rw [ContinuousAt, hψp] at h
    exact h
  have hharmT : ∀ᶠ x in 𝓝 (ψ p), lapLocal G f x = 0 := by
    filter_upwards [hcont.eventually hharm, ψ.open_target.mem_nhds hx₀T] with x hx hxT
    rw [hlap x hxT]
    exact hx
  have hfx₀ : f (ψ p) = u p := by
    show u (ψ.symm (ψ p)) = u p
    rw [hψp]
  
  have hback : (∀ᶠ x in 𝓝 (ψ p), f x = f (ψ p)) → ∀ᶠ q in 𝓝 p, u q = u p := by
    intro h
    filter_upwards [(ψ.continuousAt hpS).eventually h, ψ.eventually_left_inverse hpS]
      with q hq1 hq2
    have h3 : u q = f (ψ q) := by
      show u q = u (ψ.symm (ψ q))
      rw [hq2]
    rw [h3, hq1, hfx₀]
  rcases hext with hmax | hmin
  · 
    apply hback
    refine hmain f hfS hharmT ?_
    filter_upwards [hcont.eventually hmax] with x hx
    rw [hfx₀]
    exact hx
  · 
    have hneg : ∀ (h : E3 → ℝ) (k : Fin 3) (x : E3),
        partialDeriv k (fun y => -h y) x = -partialDeriv k h x := by
      intro h k x
      show fderiv ℝ (fun y => -h y) x (e k) = -(fderiv ℝ h x (e k))
      rw [show (fun y => -h y) = -h from rfl, fderiv_neg]; rfl
    have hlapneg : ∀ x, lapLocal G (fun y => -f y) x = -lapLocal G f x := by
      intro x
      have h2 : ∀ j : Fin 3, (fun z => partialDeriv j (fun y => -f y) z) =
          fun z => -partialDeriv j f z := fun j => funext fun z => hneg f j z
      simp only [lapLocal, h2, hneg, Fin.sum_univ_three]
      ring
    have h := hmain (fun y => -f y) hfS.neg
      (by
        filter_upwards [hharmT] with x hx
        rw [hlapneg x, hx, neg_zero])
      (by
        filter_upwards [hcont.eventually hmin] with x hx
        show -f x ≤ -f (ψ p)
        rw [hfx₀]
        exact neg_le_neg hx)
    apply hback
    filter_upwards [h] with x hx
    exact neg_inj.mp hx

theorem boundary_max_critical [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u β : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (p : M) (hβp : β p = 0)
    (hdβ : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0) (hneu : g.gradInner u β p = 0)
    (hmax : IsLocalMaxOn u {q : M | 0 ≤ β q} p) :
    mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p = 0 :=
by
  
  have hmf : ∀ (h : M → ℝ) (q : M), MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q → ∀ ξ : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q ξ =
        fderiv ℝ (fun y => h ((chartAt E3 q).symm y)) (chartAt E3 q q) ξ := by
    intro h q hh ξ
    rw [hh.mfderiv]
    simp [writtenInExtChartAt, Function.comp_def]
    rfl
  
  have hray : ∀ (F B : E3 → ℝ) (x₀ v : E3), DifferentiableAt ℝ F x₀ →
      DifferentiableAt ℝ B x₀ → B x₀ = 0 → (∀ᶠ x in 𝓝 x₀, 0 ≤ B x → F x ≤ F x₀) →
      0 < fderiv ℝ B x₀ v → fderiv ℝ F x₀ v ≤ 0 := by
    intro F B x₀ v hF hB hB0 hmx hv
    have hγ : HasDerivAt (fun t : ℝ => x₀ + t • v) v 0 := by
      simpa using ((hasDerivAt_id (0 : ℝ)).smul_const v).const_add x₀
    have hγ0 : x₀ = (fun t : ℝ => x₀ + t • v) 0 := by simp
    have hFd : HasDerivAt (fun t : ℝ => F (x₀ + t • v)) (fderiv ℝ F x₀ v) 0 :=
      hF.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hγ hγ0
    have hBd : HasDerivAt (fun t : ℝ => B (x₀ + t • v)) (fderiv ℝ B x₀ v) 0 :=
      hB.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hγ hγ0
    have hFs := hFd.tendsto_slope_zero_right
    have hBs := hBd.tendsto_slope_zero_right
    have hev1 := hBs.eventually (lt_mem_nhds hv)
    have hev2 : ∀ᶠ t in 𝓝[>] (0 : ℝ), 0 < t := self_mem_nhdsWithin
    have hc : Continuous (fun t : ℝ => x₀ + t • v) := by fun_prop
    have hcont : Tendsto (fun t : ℝ => x₀ + t • v) (𝓝[>] 0) (𝓝 x₀) := by
      have := hc.tendsto 0
      simp only [zero_smul, add_zero] at this
      exact this.mono_left nhdsWithin_le_nhds
    have hev3 := hcont.eventually hmx
    refine le_of_tendsto hFs ?_
    filter_upwards [hev1, hev2, hev3] with t h1 h2 h3
    simp only [zero_add, zero_smul, add_zero, smul_eq_mul, hB0, sub_zero] at h1 ⊢
    have hbpos : 0 < B (x₀ + t • v) := by
      have := mul_pos h2 h1
      rwa [← mul_assoc, mul_inv_cancel₀ h2.ne', one_mul] at this
    have h4 := h3 hbpos.le
    exact mul_nonpos_of_nonneg_of_nonpos (inv_nonneg.mpr h2.le) (by linarith)
  
  have hlin : ∀ (Df Db : E3 →L[ℝ] ℝ) (A : Matrix (Fin 3) (Fin 3) ℝ), A.PosDef → Db ≠ 0 →
      ∑ i : Fin 3, ∑ j : Fin 3, A i j * Df (e i) * Db (e j) = 0 →
      (∀ v : E3, 0 < Db v → Df v ≤ 0) → Df = 0 := by
    intro Df Db A hA hDb hneu0 hdir
    have hdecomp : ∀ w : E3, w = ∑ i : Fin 3, w i • e i := by
      intro w
      have := (EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr w
      simp only [EuclideanSpace.basisFun_apply, EuclideanSpace.basisFun_repr] at this
      exact this.symm
    have hL : ∀ (L : E3 →L[ℝ] ℝ) (w : E3), L w = ∑ i : Fin 3, w i * L (e i) := by
      intro L w
      conv_lhs => rw [hdecomp w]
      rw [map_sum]
      simp only [map_smul, smul_eq_mul]
    have hx : (fun i => Db (e i)) ≠ 0 := by
      intro h0
      apply hDb
      refine ContinuousLinearMap.ext fun w => ?_
      rw [hL Db w, ContinuousLinearMap.zero_apply]
      have h0' : ∀ i, Db (e i) = 0 := fun i => congrFun h0 i
      simp [h0']
    have hLζ : ∀ L : E3 →L[ℝ] ℝ,
        L (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) =
          ∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) * L (e i) := by
      intro L
      simp only [map_sum, map_smul, smul_eq_mul]
    have hDfζ : Df (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) = 0 := by
      rw [hLζ]
      simp only [Fin.sum_univ_three] at hneu0 ⊢
      linear_combination hneu0
    have hζpos : 0 < Db (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i) := by
      have hq := hA.dotProduct_mulVec_pos hx
      rw [hLζ]
      simp only [dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
        Fin.sum_univ_three] at hq ⊢
      linear_combination hq
    have hle : ∀ w : E3, Df w ≤ 0 := by
      intro w
      have hpos : 0 < Db (w + ((|Db w| + 1) /
          Db (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i)) •
            (∑ i : Fin 3, (∑ j : Fin 3, A i j * Db (e j)) • e i)) := by
        rw [map_add, map_smul, smul_eq_mul, div_mul_cancel₀ _ hζpos.ne']
        have := neg_abs_le (Db w)
        linarith
      have := hdir _ hpos
      rwa [map_add, map_smul, hDfζ, smul_zero, add_zero] at this
    refine ContinuousLinearMap.ext fun w => ?_
    have h1 := hle w
    have h2 := hle (-w)
    rw [map_neg] at h2
    rw [ContinuousLinearMap.zero_apply]
    linarith
  
  have hx₀T : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
  have hsymm0 : (chartAt E3 p).symm (chartAt E3 p p) = p :=
    (chartAt E3 p).left_inv (mem_chart_source E3 p)
  have hfT : ContDiffOn ℝ ∞ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
    contMDiffOn_iff_contDiffOn.mp (hu.comp_contMDiffOn contMDiffOn_chart_symm)
  have hbT : ContDiffOn ℝ ∞ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
    contMDiffOn_iff_contDiffOn.mp (hβ.comp_contMDiffOn contMDiffOn_chart_symm)
  have hTn : (chartAt E3 p).target ∈ 𝓝 (chartAt E3 p p) :=
    (chartAt E3 p).open_target.mem_nhds hx₀T
  have hfd : DifferentiableAt ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) :=
    (hfT.differentiableOn (by simp)).differentiableAt hTn
  have hbd : DifferentiableAt ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) :=
    (hbT.differentiableOn (by simp)).differentiableAt hTn
  have hdb : fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ≠ 0 := by
    intro h0
    apply hdβ
    refine ContinuousLinearMap.ext fun ξ => ?_
    rw [hmf β p (hβ.mdifferentiableAt (by simp)) ξ, h0]
    rfl
  have hb0 : (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
    show β ((chartAt E3 p).symm (chartAt E3 p p)) = 0
    rw [hsymm0]; exact hβp
  have hmaxE : ∀ᶠ x in 𝓝 (chartAt E3 p p), 0 ≤ (fun y => β ((chartAt E3 p).symm y)) x →
      (fun y => u ((chartAt E3 p).symm y)) x ≤
        (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) := by
    have h1 : ∀ᶠ q in 𝓝 p, q ∈ {q : M | 0 ≤ β q} → u q ≤ u p :=
      eventually_nhdsWithin_iff.mp hmax
    have ht : Tendsto (chartAt E3 p).symm (𝓝 (chartAt E3 p p)) (𝓝 p) := by
      have := (chartAt E3 p).continuousAt_symm hx₀T
      rw [ContinuousAt, hsymm0] at this
      exact this
    filter_upwards [ht.eventually h1] with x hx hbx
    show u ((chartAt E3 p).symm x) ≤ u ((chartAt E3 p).symm (chartAt E3 p p))
    rw [hsymm0]
    exact hx hbx
  have hGpos : (g.coeff (chartAt E3 p).symm (chartAt E3 p p)).PosDef := by
    classical
    have hy := hx₀T
    have hq : (chartAt E3 p).symm (chartAt E3 p p) ∈ (chartAt E3 p).source :=
      (chartAt E3 p).map_target hy
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
        ((chartAt E3 p).symm (chartAt E3 p p)) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 p) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm)
        (chartAt E3 p p) =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm (chartAt E3 p p))).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)) :=
      mfderiv_comp (chartAt E3 p p) hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm)
        (chartAt E3 p p) = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id (chartAt E3 p p) := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 p).eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
        ((chartAt E3 p).symm (chartAt E3 p p))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    have hDinj : ∀ w : E3,
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) w = 0 → w = 0 := by
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
      have hpos := g.posDef ((chartAt E3 p).symm (chartAt E3 p p)) _ hDv
      have key : star x ⬝ᵥ (g.coeff (chartAt E3 p).symm (chartAt E3 p p)).mulVec x =
          g.g ((chartAt E3 p).symm (chartAt E3 p p))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)
              (∑ i, x i • e i : E3))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)
              (∑ i, x i • e i : E3)) := by
        simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
          ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
          RiemannianMetric3.coeff, coeffMatrix]
        ring
      rw [key]
      exact hpos
  have hApos : ((g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹).PosDef := hGpos.inv
  have hneu' : ∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ i j *
      fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) (e i) *
      fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) (e j) = 0 := hneu
  have hdir : ∀ v : E3, 0 < fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) v →
      fderiv ℝ (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p) v ≤ 0 :=
    fun v hv => hray (fun y => u ((chartAt E3 p).symm y)) (fun y => β ((chartAt E3 p).symm y))
      (chartAt E3 p p) v hfd hbd hb0 hmaxE hv
  have hfd0 := hlin _ _ _ hApos hdb hneu' hdir
  refine ContinuousLinearMap.ext fun ξ => ?_
  rw [hmf u p (hu.mdifferentiableAt (by simp)) ξ, hfd0]
  rfl

theorem harmonic_local_const_boundary [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (u β : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β)
    (hharm : ∀ q : M, 0 < β q → g.lapM u q = 0) (p : M) (hβp : β p = 0)
    (hdβ : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0) (hneu : g.gradInner u β p = 0)
    (hext : IsLocalMaxOn u {q : M | 0 ≤ β q} p ∨ IsLocalMinOn u {q : M | 0 ≤ β q} p) :
    ∀ᶠ q in 𝓝[{q : M | 0 ≤ β q}] p, u q = u p :=
by
  
  have h1le : (1 : WithTop ℕ∞) ≤ ∞ := by exact_mod_cast le_top
  have h2le : (2 : WithTop ℕ∞) ≤ ∞ := WithTop.coe_le_coe.mpr le_top
  
  have hpdneg : ∀ (F : E3 → ℝ) (k : Fin 3),
      partialDeriv k (fun y => -F y) = fun y => -partialDeriv k F y := by
    intro F k
    funext y
    show fderiv ℝ (fun y => -F y) y (e k) = -(fderiv ℝ F y (e k))
    first
      | (rw [fderiv_neg]; rfl)
      | (rw [show (fun y => -F y) = -F from rfl, fderiv_neg]; rfl)
  have hlapneg : ∀ (w : M → ℝ) (q : M), g.lapM (fun q => -w q) q = -g.lapM w q := by
    intro w q
    simp only [RiemannianMetric3.lapM, lapLoc, hessLoc, hpdneg]
    simp only [Fin.sum_univ_three]
    ring
  have hgineg : ∀ (w v : M → ℝ) (q : M),
      g.gradInner (fun q => -w q) v q = -g.gradInner w v q := by
    intro w v q
    simp only [RiemannianMetric3.gradInner, hpdneg, Fin.sum_univ_three]
    ring
  
  have hmf : ∀ (h : M → ℝ) (q : M), MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q → ∀ ξ : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) h q ξ =
        fderiv ℝ (fun y => h ((chartAt E3 q).symm y)) (chartAt E3 q q) ξ := by
    intro h q hh ξ
    rw [hh.mfderiv]
    simp [writtenInExtChartAt, Function.comp_def]
    rfl
  
  have hchartlap : ∀ (w : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      ∀ x ∈ (chartAt E3 p).target,
      lapLocal (g.coeff (chartAt E3 p).symm) (fun y => w ((chartAt E3 p).symm y)) x =
        g.lapM w ((chartAt E3 p).symm x) := by
    intro w hw x hx
    let Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞ :=
      { toPartialEquiv := (chartAt E3 p).symm.toPartialEquiv
        open_source := (chartAt E3 p).open_target
        open_target := (chartAt E3 p).open_source
        contMDiffOn_toFun := contMDiffOn_chart_symm
        contMDiffOn_invFun := contMDiffOn_chart }
    exact lapLocal_chart_invariant g Φ w Set.univ isOpen_univ hw.contMDiffOn x hx trivial
  
  have hop : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (F : E3 → ℝ) (x : E3),
      lapLocal G F x = ∑ i : Fin 3, ∑ j : Fin 3,
          (G x)⁻¹ i j * partialDeriv i (fun z => partialDeriv j F z) x +
        ∑ k : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3, (G x)⁻¹ i j * christoffel G k i j x) *
          partialDeriv k F x := by
    intro G F x
    simp only [lapLocal, Fin.sum_univ_three]
    ring
  
  have key : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
      (∀ q : M, 0 < β q → g.lapM w q = 0) → g.gradInner w β p = 0 →
      IsLocalMaxOn w {q : M | 0 ≤ β q} p →
      ∀ᶠ q in 𝓝[{q : M | 0 ≤ β q}] p, w q = w p := by
    intro w hw hharmw hneuw hmaxw
    
    have hx₀T : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
    have hsymm0 : (chartAt E3 p).symm (chartAt E3 p p) = p :=
      (chartAt E3 p).left_inv (mem_chart_source E3 p)
    have hfT : ContDiffOn ℝ ∞ (fun y => w ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
      contMDiffOn_iff_contDiffOn.mp (hw.comp_contMDiffOn contMDiffOn_chart_symm)
    have hbT : ContDiffOn ℝ ∞ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
      contMDiffOn_iff_contDiffOn.mp (hβ.comp_contMDiffOn contMDiffOn_chart_symm)
    have hGT : ∀ i j : Fin 3, ContDiffOn ℝ ∞
        (fun y => g.coeff (chartAt E3 p).symm y i j) (chartAt E3 p).target := g.smooth p
    have hpos : ∀ y ∈ (chartAt E3 p).target, (g.coeff (chartAt E3 p).symm y).PosDef :=
      fun y hy => coeff_chart_symm_posDef g p y hy
    have hposA : ∀ y ∈ (chartAt E3 p).target,
        ((g.coeff (chartAt E3 p).symm y)⁻¹).PosDef :=
      fun y hy => (hpos y hy).inv
    have hcont := lap_coeff_continuousOn (g.coeff (chartAt E3 p).symm) (chartAt E3 p).target
      (chartAt E3 p).open_target hGT hpos
    have hdb : fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) ≠ 0 := by
      intro h0
      apply hdβ
      refine ContinuousLinearMap.ext fun ξ => ?_
      rw [hmf β p (hβ.mdifferentiableAt (by simp)) ξ, h0]
      rfl
    have hdu : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w p = 0 :=
      boundary_max_critical g w β hw hβ p hβp hdβ hneuw hmaxw
    have hfd0 : fderiv ℝ (fun y => w ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
      refine ContinuousLinearMap.ext fun ξ => ?_
      rw [← hmf w p (hw.mdifferentiableAt (by simp)) ξ, hdu]
      rfl
    have hb0 : (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
      show β ((chartAt E3 p).symm (chartAt E3 p p)) = 0
      rw [hsymm0]; exact hβp
    have hLT : ∀ x ∈ (chartAt E3 p).target, 0 < β ((chartAt E3 p).symm x) →
        ∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
            partialDeriv i (fun z => partialDeriv j (fun y => w ((chartAt E3 p).symm y)) z) x +
          ∑ k : Fin 3, (-∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
              christoffel (g.coeff (chartAt E3 p).symm) k i j x) *
            partialDeriv k (fun y => w ((chartAt E3 p).symm y)) x = 0 := by
      intro x hx hbx
      rw [← hop, hchartlap w hw x hx]
      exact hharmw _ hbx
    
    have h1 : ∀ᶠ q in 𝓝 p, q ∈ {q : M | 0 ≤ β q} → w q ≤ w p :=
      eventually_nhdsWithin_iff.mp hmaxw
    have ht : Tendsto (chartAt E3 p).symm (𝓝 (chartAt E3 p p)) (𝓝 p) := by
      have := (chartAt E3 p).continuousAt_symm hx₀T
      rw [ContinuousAt, hsymm0] at this
      exact this
    have h2 := (ht.eventually h1).and ((chartAt E3 p).open_target.mem_nhds hx₀T)
    obtain ⟨ε, hε, hεsub⟩ := Metric.mem_nhds_iff.mp h2
    
    obtain ⟨Q, hQo, hx₀Q, hQV, hQconn, hQcl⟩ :=
      regular_collar (fun y => β ((chartAt E3 p).symm y)) (Metric.ball (chartAt E3 p p) ε)
        Metric.isOpen_ball (chartAt E3 p p) (Metric.mem_ball_self hε)
        ((hbT.mono (fun x hx => (hεsub hx).2)).of_le h1le) hb0 hdb
    have hQT : Q ⊆ (chartAt E3 p).target := fun x hx => (hεsub (hQV hx)).2
    have hQle : ∀ x ∈ Q, 0 ≤ β ((chartAt E3 p).symm x) →
        w ((chartAt E3 p).symm x) ≤ w ((chartAt E3 p).symm (chartAt E3 p p)) := by
      intro x hx hbx
      rw [hsymm0]
      exact (hεsub (hQV hx)).1 hbx
    have hQpT : Q ∩ {x | 0 < β ((chartAt E3 p).symm x)} ⊆ (chartAt E3 p).target :=
      fun x hx => hQT hx.1
    have hQpo : IsOpen (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) :=
      (hbT.continuousOn.mono hQT).isOpen_inter_preimage hQo isOpen_Ioi
    
    have hconst : ∀ x ∈ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)},
        w ((chartAt E3 p).symm x) = w ((chartAt E3 p).symm (chartAt E3 p p)) := by
      by_cases hex : ∃ x₁ ∈ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)},
          w ((chartAt E3 p).symm x₁) = w ((chartAt E3 p).symm (chartAt E3 p p))
      · obtain ⟨x₁, hx₁, hfx₁⟩ := hex
        have hsmp := euclid_strong_max_principle
          (fun x => (g.coeff (chartAt E3 p).symm x)⁻¹)
          (fun x k => -∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
              christoffel (g.coeff (chartAt E3 p).symm) k i j x)
          (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) hQpo hQconn
          (fun i j => (hcont.1 i j).mono hQpT) (fun k => (hcont.2 k).mono hQpT)
          (fun x hx => hposA x (hQpT hx)) (fun y => w ((chartAt E3 p).symm y))
          ((hfT.mono hQpT).of_le h2le)
          (fun x hx => (hLT x (hQpT hx) hx.2).ge) x₁ hx₁
          (fun x hx => by
            have hle := hQle x hx.1 hx.2.le
            rw [← hfx₁] at hle
            exact hle)
        intro x hx
        rw [← hfx₁]
        exact hsmp x hx
      · push_neg at hex
        exfalso
        have hlt : ∀ x ∈ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)},
            w ((chartAt E3 p).symm x) < w ((chartAt E3 p).symm (chartAt E3 p p)) :=
          fun x hx => lt_of_le_of_ne (hQle x hx.1 hx.2.le) (hex x hx)
        obtain ⟨ε', hε', hε'Q⟩ := Metric.isOpen_iff.mp hQo (chartAt E3 p p) hx₀Q
        obtain ⟨c, s, hs, hdist, hcb, hbpos⟩ :=
          interior_ball_of_regular (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p).target
            (chartAt E3 p).open_target (chartAt E3 p p) hx₀T (hbT.of_le h2le) hb0 hdb ε' hε'
        have hballQp : Metric.ball c s ⊆ Q ∩ {x | 0 < β ((chartAt E3 p).symm x)} := by
          intro x hx
          have hx' := Metric.ball_subset_closedBall hx
          refine ⟨hε'Q (hcb hx').1, hbpos x hx' ?_⟩
          intro hxx
          rw [hxx, Metric.mem_ball] at hx
          linarith
        have hH := euclid_hopf_lemma
          (fun x => (g.coeff (chartAt E3 p).symm x)⁻¹)
          (fun x k => -∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 p).symm x)⁻¹ i j *
              christoffel (g.coeff (chartAt E3 p).symm) k i j x)
          (chartAt E3 p).target (chartAt E3 p).open_target hcont.1 hcont.2 hposA
          (fun y => w ((chartAt E3 p).symm y)) (hfT.of_le h2le) c (chartAt E3 p p) s hs
          (fun x hx => (hcb hx).2) hdist
          (fun x hx => (hLT x (hQpT (hballQp hx)) (hballQp hx).2).ge)
          (fun x hx => hlt x (hballQp hx))
        rw [hfd0] at hH
        simp at hH
    
    have hconstQ : ∀ x ∈ Q, 0 ≤ β ((chartAt E3 p).symm x) →
        w ((chartAt E3 p).symm x) = w ((chartAt E3 p).symm (chartAt E3 p p)) := by
      intro x hxQ hbx
      have hxcl : x ∈ closure (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) := hQcl ⟨hxQ, hbx⟩
      have hfc : ContinuousAt (fun y => w ((chartAt E3 p).symm y)) x :=
        hfT.continuousOn.continuousAt ((chartAt E3 p).open_target.mem_nhds (hQT hxQ))
      have himg := mem_closure_image hfc hxcl
      have hsub : (fun y => w ((chartAt E3 p).symm y)) ''
          (Q ∩ {x | 0 < β ((chartAt E3 p).symm x)}) ⊆
            {w ((chartAt E3 p).symm (chartAt E3 p p))} := by
        rintro _ ⟨y, hy, rfl⟩
        exact hconst y hy
      have := closure_mono hsub himg
      rwa [closure_singleton] at this
    
    have hN : (chartAt E3 p).source ∩ (chartAt E3 p) ⁻¹' Q ∈ 𝓝 p :=
      ((chartAt E3 p).continuousOn.isOpen_inter_preimage (chartAt E3 p).open_source hQo).mem_nhds
        ⟨mem_chart_source E3 p, hx₀Q⟩
    rw [eventually_nhdsWithin_iff]
    filter_upwards [hN] with q hq hqE
    have hl : (chartAt E3 p).symm (chartAt E3 p q) = q := (chartAt E3 p).left_inv hq.1
    have hbq : 0 ≤ β ((chartAt E3 p).symm (chartAt E3 p q)) := by
      rw [hl]; exact hqE
    have := hconstQ (chartAt E3 p q) hq.2 hbq
    rw [hl, hsymm0] at this
    exact this
  
  rcases hext with h | h
  · exact key u hu hharm hneu h
  · have hk := key (fun q => -u q) hu.neg
      (fun q hq => by rw [hlapneg u q, hharm q hq, neg_zero])
      (by rw [hgineg u β p, hneu, neg_zero]) h.neg
    exact hk.mono fun q hq => neg_inj.mp hq

theorem max_propagation_on_compact {X : Type*} [TopologicalSpace X] (K S : Set X)
    (u : X → ℝ) (t : ℝ) (hK : IsCompact K) (hSK : S ⊆ K) (hu : Continuous u)
    (huS : ∀ p ∈ S, u p = t) (hconn : IsPreconnected (K \ S)) (p₀ : X) (hp₀S : p₀ ∈ S)
    (hp₀ : p₀ ∈ closure (K \ S))
    (hloc : ∀ p ∈ K \ S, (IsLocalMaxOn u K p ∨ IsLocalMinOn u K p) →
      ∀ᶠ q in 𝓝[K] p, u q = u p) :
    ∀ p ∈ K, u p = t :=
by
  classical
  
  have L1 : ∀ c : ℝ, (∃ q ∈ K \ S, u q = c) →
      (∀ q ∈ K \ S, u q = c → ∀ᶠ x in 𝓝[K] q, u x = c) →
      ∀ x ∈ closure (K \ S), u x = c := by
    intro c hne hlc
    have hUo : IsOpen (⋃₀ {W : Set X | IsOpen W ∧ W ∩ K ⊆ u ⁻¹' {c}}) :=
      isOpen_sUnion (fun W hW => hW.1)
    have hVo : IsOpen (u ⁻¹' {y : ℝ | y ≠ c}) := hu.isOpen_preimage _ isOpen_ne
    have key : ∀ x ∈ ⋃₀ {W : Set X | IsOpen W ∧ W ∩ K ⊆ u ⁻¹' {c}}, x ∈ K → u x = c := by
      intro x hxU hxK
      obtain ⟨W, hW, hxW⟩ := Set.mem_sUnion.mp hxU
      exact hW.2 ⟨hxW, hxK⟩
    have hcover : K \ S ⊆ (⋃₀ {W : Set X | IsOpen W ∧ W ∩ K ⊆ u ⁻¹' {c}}) ∪
        u ⁻¹' {y : ℝ | y ≠ c} := by
      intro x hx
      by_cases hxc : u x = c
      · left
        obtain ⟨v, hv, hvc⟩ := (hlc x hx hxc).exists_mem
        obtain ⟨W, hWo, hxW, hWv⟩ := mem_nhdsWithin.mp hv
        exact Set.mem_sUnion.mpr ⟨W, ⟨hWo, fun y hy => hvc y (hWv hy)⟩, hxW⟩
      · right
        exact hxc
    have hdisj : K \ S ∩ ((⋃₀ {W : Set X | IsOpen W ∧ W ∩ K ⊆ u ⁻¹' {c}}) ∩
        u ⁻¹' {y : ℝ | y ≠ c}) = ∅ := by
      ext x
      simp only [Set.mem_inter_iff, Set.mem_empty_iff_false, iff_false]
      rintro ⟨hx, hxU, hxV⟩
      exact hxV (key x hxU hx.1)
    rcases isPreconnected_iff_subset_of_disjoint.mp hconn _ _ hUo hVo hcover hdisj with h | h
    · have hD : K \ S ⊆ u ⁻¹' {c} := fun x hx => key x (h hx) hx.1
      have hcl : closure (K \ S) ⊆ u ⁻¹' {c} :=
        closure_minimal hD (isClosed_singleton.preimage hu)
      intro x hx
      exact hcl hx
    · obtain ⟨q, hq, hqc⟩ := hne
      exact absurd hqc (h hq)
  
  have hK0 : K.Nonempty := ⟨p₀, hSK hp₀S⟩
  obtain ⟨a, haK, hamax⟩ := hK.exists_isMaxOn hK0 hu.continuousOn
  obtain ⟨b, hbK, hbmin⟩ := hK.exists_isMinOn hK0 hu.continuousOn
  
  have hMa : u a = t := by
    by_cases haS : a ∈ S
    · exact huS a haS
    · have hloc' : ∀ q ∈ K \ S, u q = u a → ∀ᶠ x in 𝓝[K] q, u x = u a := by
        intro q hq hqc
        have hqmax : IsMaxOn u K q := by
          rw [isMaxOn_iff]
          intro x hx
          rw [hqc]
          exact isMaxOn_iff.mp hamax x hx
        filter_upwards [hloc q hq (Or.inl hqmax.localize)] with x hx
        rw [hx, hqc]
      have h := L1 (u a) ⟨a, ⟨haK, haS⟩, rfl⟩ hloc' p₀ hp₀
      rw [← h]
      exact huS p₀ hp₀S
  
  have hmb : u b = t := by
    by_cases hbS : b ∈ S
    · exact huS b hbS
    · have hloc' : ∀ q ∈ K \ S, u q = u b → ∀ᶠ x in 𝓝[K] q, u x = u b := by
        intro q hq hqc
        have hqmin : IsMinOn u K q := by
          rw [isMinOn_iff]
          intro x hx
          rw [hqc]
          exact isMinOn_iff.mp hbmin x hx
        filter_upwards [hloc q hq (Or.inr hqmin.localize)] with x hx
        rw [hx, hqc]
      have h := L1 (u b) ⟨b, ⟨hbK, hbS⟩, rfl⟩ hloc' p₀ hp₀
      rw [← h]
      exact huS p₀ hp₀S
  
  intro p hp
  have h1 := isMaxOn_iff.mp hamax p hp
  have h2 := isMinOn_iff.mp hbmin p hp
  linarith

theorem no_compact_regular_level [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Φ : EndChart M) (β : M → ℝ) (Re : ℝ)
    (hβ : IsExteriorDomain Φ β Re) (hsep : SeparatesLevelComponents β)
    (u : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hharm : ∀ p : M, 0 ≤ β p → g.lapM u p = 0)
    (hneu : ∀ p : M, β p = 0 → g.gradInner u β p = 0) :
    NoCompactRegularLevel β u :=
by
  intro t p₀ hp₀ hcpt
  have hSF : connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀ ⊆
      {p : M | 0 ≤ β p} ∩ u ⁻¹' {t} := connectedComponentIn_subset _ p₀
  have hp₀S : p₀ ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀ :=
    mem_connectedComponentIn hp₀
  have huS : ∀ p ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀, u p = t :=
    fun p hp => (hSF hp).2
  by_contra hno
  push_neg at hno
  have hβs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β := hβ.1
  have hreg : ∀ p : M, β p = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0 := hβ.2.1
  
  have htrans : ∀ p ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀, ∃ ξ : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p ξ ≠ 0 ∧
        (β p = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ξ = 0) := by
    intro p hp
    by_cases hb : β p = 0
    · obtain ⟨ξ, h1, h2⟩ :=
        exists_transverse_direction g u β hu hβs p (hno p hp) (hneu p hb)
      exact ⟨ξ, h1, fun _ => h2⟩
    · by_contra hcon
      push_neg at hcon
      apply hno p hp
      refine ContinuousLinearMap.ext fun ξ => ?_
      rw [ContinuousLinearMap.zero_apply]
      by_contra h
      exact hb (hcon ξ h).1
  obtain ⟨K, hKc, hSK, hKE, hfr, hconn, hKcl⟩ := hsep u t p₀ hu hp₀ hcpt htrans
  have hScl : IsClosed (connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) :=
    hcpt.isClosed
  have hKcl' : IsClosed K := hKc.isClosed
  
  have hp₀cl : p₀ ∈ closure (K \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) := by
    by_contra hnot
    rw [_root_.mem_closure_iff] at hnot
    push_neg at hnot
    obtain ⟨N, hNo, hp₀N, hNe⟩ := hnot
    have hp₀K : p₀ ∈ closure (interior K) := hKcl (hSK hp₀S)
    obtain ⟨q, hqN, hqint⟩ := _root_.mem_closure_iff.mp hp₀K N hNo hp₀N
    have hOo : IsOpen (N ∩ interior K) := hNo.inter isOpen_interior
    have hOS : N ∩ interior K ⊆ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀ := by
      intro x hx
      by_contra hxS
      have hmem : x ∈ N ∩ (K \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) :=
        ⟨hx.1, interior_subset hx.2, hxS⟩
      rw [hNe] at hmem
      exact hmem
    have hqO : q ∈ N ∩ interior K := ⟨hqN, hqint⟩
    have hq0 := mfderiv_eq_zero_of_const_on_closure_interior u hu (N ∩ interior K) t
      (fun x hx => huS x (hOS hx)) q
      (subset_closure (by rw [hOo.interior_eq]; exact hqO))
    exact hno q (hOS hqO) hq0
  
  have hloc : ∀ p ∈ K \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀,
      (IsLocalMaxOn u K p ∨ IsLocalMinOn u K p) → ∀ᶠ q in 𝓝[K] p, u q = u p := by
    intro p hp hext
    obtain ⟨W, hWo, hpW, hWE⟩ :=
      exterior_nbhd_subset β hβs hreg K _ hKcl' hScl hKE hfr hKcl p hp.1 hp.2
    have hle : 𝓝[{q : M | 0 ≤ β q}] p ≤ 𝓝[K] p := by
      rw [nhdsWithin_restrict' _ (hWo.mem_nhds hpW)]
      exact nhdsWithin_mono _ (fun x hx => hWE ⟨hx.2, hx.1⟩)
    have hextE : IsLocalMaxOn u {q : M | 0 ≤ β q} p ∨ IsLocalMinOn u {q : M | 0 ≤ β q} p := by
      rcases hext with h | h
      · exact Or.inl (IsMaxFilter.filter_mono h hle)
      · exact Or.inr (IsMinFilter.filter_mono h hle)
    have hβp : 0 ≤ β p := hKE hp.1
    rcases hβp.lt_or_eq with hpos | hzero
    · have hEn : {q : M | 0 ≤ β q} ∈ 𝓝 p := by
        have hopen : IsOpen {q : M | 0 < β q} := isOpen_lt continuous_const hβs.continuous
        exact Filter.mem_of_superset (hopen.mem_nhds hpos)
          (fun x (hx : 0 < β x) => show 0 ≤ β x from le_of_lt hx)
      have hext' : IsLocalMax u p ∨ IsLocalMin u p := by
        rcases hextE with h | h
        · exact Or.inl (h.isLocalMax hEn)
        · exact Or.inr (h.isLocalMin hEn)
      have hharm' : ∀ᶠ q in 𝓝 p, g.lapM u q = 0 :=
        Filter.mem_of_superset hEn (fun x hx => hharm x hx)
      exact (harmonic_local_const_interior g u hu p hharm' hext').filter_mono nhdsWithin_le_nhds
    · have hb0 : β p = 0 := hzero.symm
      have h := harmonic_local_const_boundary g u β hu hβs (fun q hq => hharm q hq.le) p hb0
        (hreg p hb0) (hneu p hb0) hextE
      exact h.filter_mono (nhdsWithin_mono _ hKE)
  
  have hall := max_propagation_on_compact K _ u t hKc hSK hu.continuous huS
    hconn.isPreconnected p₀ hp₀S hp₀cl hloc
  exact hno p₀ hp₀S
    (mfderiv_eq_zero_of_const_on_closure_interior u hu K t hall p₀ (hKcl (hSK hp₀S)))

theorem coordChange_regularity (G : E3 → Matrix (Fin 3) (Fin 3) ℝ)
    (hsmooth : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) {y : E3 | 1 < ‖y‖})
    (X Y : E3 → E3) (q R₀ R₁ C : ℝ) (hXY : CoordChange X Y q R₀ R₁ C) :
    (∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => pullbackMetric G Y x a b) {x : E3 | R₁ < ‖x‖}) ∧
    ∀ x : E3, R₁ < ‖x‖ →
      DifferentiableAt ℝ Y x ∧ DifferentiableAt ℝ X (Y x) ∧
      (∀ a i : Fin 3, DifferentiableAt ℝ (fun z => (fderiv ℝ Y z (e a)) i) x) ∧
      (∀ d i : Fin 3,
        DifferentiableAt ℝ (fun w => partialDeriv i (fun w' => X w' d) w) (Y x)) ∧
      (∀ i j : Fin 3, DifferentiableAt ℝ (fun w => G w i j) (Y x)) :=
by
  obtain ⟨hR0, hR01, hC, hXs, hYs, hinv, hinj, hbd⟩ := hXY
  have hU : IsOpen {x : E3 | R₁ < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hV : IsOpen {y : E3 | R₀ < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hW : IsOpen {y : E3 | 1 < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hmapsW : Set.MapsTo Y {x : E3 | R₁ < ‖x‖} {y : E3 | 1 < ‖y‖} := by
    intro x hx
    have h1 := (hinv x hx).1
    show (1 : ℝ) < ‖Y x‖
    linarith
  have hne : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  have hcoord : ∀ (F : E3 → E3) (S : Set E3), ContDiffOn ℝ ∞ F S →
      ∀ d : Fin 3, ContDiffOn ℝ ∞ (fun w => F w d) S := by
    intro F S hF d
    have h := (EuclideanSpace.proj d : E3 →L[ℝ] ℝ).contDiff.comp_contDiffOn hF
    exact h
  have hfd : ∀ (F : E3 → E3) (S : Set E3), IsOpen S → ContDiffOn ℝ ∞ F S →
      ∀ a i : Fin 3, ContDiffOn ℝ ∞ (fun z => (fderiv ℝ F z (e a)) i) S := by
    intro F S hS hF a i
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ F) S := hF.fderiv_of_isOpen hS le_rfl
    have h2 : ContDiffOn ℝ ∞ (fun z => fderiv ℝ F z (e a)) S :=
      h1.clm_apply contDiffOn_const
    exact hcoord _ S h2 i
  have hpd : ∀ (f : E3 → ℝ) (S : Set E3), IsOpen S → ContDiffOn ℝ ∞ f S →
      ∀ i : Fin 3, ContDiffOn ℝ ∞ (fun w => partialDeriv i f w) S := by
    intro f S hS hf i
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ f) S := hf.fderiv_of_isOpen hS le_rfl
    have h2 : ContDiffOn ℝ ∞ (fun z => fderiv ℝ f z (e i)) S :=
      h1.clm_apply contDiffOn_const
    exact h2
  refine ⟨fun a b => ?_, fun x hx => ?_⟩
  · have hB := hfd Y _ hU hYs
    have hGY : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => G (Y x) i j) {x : E3 | R₁ < ‖x‖} :=
      fun i j => (hsmooth i j).comp hYs hmapsW
    show ContDiffOn ℝ ∞ (fun x => ∑ i : Fin 3, ∑ j : Fin 3,
      (fderiv ℝ Y x (e a)) i * G (Y x) i j * (fderiv ℝ Y x (e b)) j) _
    exact ContDiffOn.sum (fun i _ => ContDiffOn.sum (fun j _ =>
      ((hB a i).mul (hGY i j)).mul (hB b j)))
  · have hxU : x ∈ {x : E3 | R₁ < ‖x‖} := hx
    have hyV : Y x ∈ {y : E3 | R₀ < ‖y‖} := (hinv x hx).1
    have hyW : Y x ∈ {y : E3 | 1 < ‖y‖} := hmapsW hxU
    refine ⟨(hYs.contDiffAt (hU.mem_nhds hxU)).differentiableAt hne,
      (hXs.contDiffAt (hV.mem_nhds hyV)).differentiableAt hne,
      fun a i => ((hfd Y _ hU hYs a i).contDiffAt (hU.mem_nhds hxU)).differentiableAt hne,
      fun d i => ((hpd _ _ hV (hcoord X _ hXs d) i).contDiffAt
        (hV.mem_nhds hyV)).differentiableAt hne,
      fun i j => ((hsmooth i j).contDiffAt (hW.mem_nhds hyW)).differentiableAt hne⟩

theorem inverse_jacobian_identities (X Y : E3 → E3) (U : Set E3) (hU : IsOpen U)
    (hinv : ∀ z ∈ U, X (Y z) = z) (hY : ∀ z ∈ U, DifferentiableAt ℝ Y z)
    (hX : ∀ z ∈ U, DifferentiableAt ℝ X (Y z)) (x : E3) (hx : x ∈ U)
    (hA : ∀ d i : Fin 3,
      DifferentiableAt ℝ (fun w => partialDeriv i (fun w' => X w' d) w) (Y x))
    (hB : ∀ a i : Fin 3, DifferentiableAt ℝ (fun z => (fderiv ℝ Y z (e a)) i) x) :
    (∀ d a : Fin 3, ∑ i : Fin 3, partialDeriv i (fun w => X w d) (Y x) * (fderiv ℝ Y x (e a)) i
        = if d = a then 1 else 0) ∧
    (∀ c d a : Fin 3, ∑ i : Fin 3,
        ((∑ k : Fin 3, (fderiv ℝ Y x (e c)) k *
            partialDeriv k (fun z => partialDeriv i (fun w => X w d) z) (Y x)) *
            (fderiv ℝ Y x (e a)) i
          + partialDeriv i (fun w => X w d) (Y x) *
            partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x) = 0) :=
by
  
  have s1 : ∀ (f : E3 → ℝ) (y v : E3),
      fderiv ℝ f y v = ∑ k : Fin 3, v k * partialDeriv k f y := by
    intro f y v
    have hv : v = ∑ k : Fin 3, v k • e k := by
      ext i
      fin_cases i <;> simp [Fin.sum_univ_three]
    conv_lhs => rw [hv]
    rw [map_sum]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [map_smul, smul_eq_mul]
    rfl
  
  have s2 : ∀ (y v : E3) (d : Fin 3), DifferentiableAt ℝ X y →
      (fderiv ℝ X y v) d = fderiv ℝ (fun w => X w d) y v := by
    intro y v d hXy
    have h : HasFDerivAt (fun w => X w d)
        ((EuclideanSpace.proj d : E3 →L[ℝ] ℝ).comp (fderiv ℝ X y)) y :=
      (EuclideanSpace.proj d : E3 →L[ℝ] ℝ).hasFDerivAt.comp y hXy.hasFDerivAt
    rw [h.fderiv]
    rfl
  
  have s3 : ∀ z ∈ U, ∀ v : E3, fderiv ℝ X (Y z) (fderiv ℝ Y z v) = v := by
    intro z hz v
    have heq : X ∘ Y =ᶠ[𝓝 z] id :=
      Filter.eventually_of_mem (hU.mem_nhds hz) (fun w hw => hinv w hw)
    have h1 : fderiv ℝ (X ∘ Y) z = (fderiv ℝ X (Y z)).comp (fderiv ℝ Y z) :=
      fderiv_comp z (hX z hz) (hY z hz)
    have h2 : fderiv ℝ (X ∘ Y) z = ContinuousLinearMap.id ℝ E3 := by
      rw [heq.fderiv_eq, fderiv_id]
    have h3 := congrArg (fun L : E3 →L[ℝ] E3 => L v) (h1.symm.trans h2)
    simpa using h3
  
  have s5 : ∀ z ∈ U, ∀ d a : Fin 3,
      ∑ i : Fin 3, partialDeriv i (fun w => X w d) (Y z) * (fderiv ℝ Y z (e a)) i
        = if d = a then 1 else 0 := by
    intro z hz d a
    have h : (fderiv ℝ X (Y z) (fderiv ℝ Y z (e a))) d = (e a) d := by
      rw [s3 z hz (e a)]
    rw [s2 _ _ _ (hX z hz), s1 (fun w => X w d) (Y z)] at h
    have hr : (e a) d = if d = a then (1 : ℝ) else 0 := by
      simp [EuclideanSpace.single_apply]
    rw [← hr, ← h]
    exact Finset.sum_congr rfl (fun i _ => mul_comm _ _)
  refine ⟨fun d a => s5 x hx d a, ?_⟩
  intro c d a
  have hconst : (fun z => ∑ i : Fin 3,
      partialDeriv i (fun w => X w d) (Y z) * (fderiv ℝ Y z (e a)) i)
      =ᶠ[𝓝 x] fun _ => (if d = a then (1 : ℝ) else 0) :=
    Filter.eventually_of_mem (hU.mem_nhds hx) (fun z hz => s5 z hz d a)
  have hderiv : HasFDerivAt (fun z => ∑ i : Fin 3,
      partialDeriv i (fun w => X w d) (Y z) * (fderiv ℝ Y z (e a)) i)
      (∑ i : Fin 3, (partialDeriv i (fun w => X w d) (Y x) •
          fderiv ℝ (fun z => (fderiv ℝ Y z (e a)) i) x
        + (fderiv ℝ Y x (e a)) i •
          (fderiv ℝ (fun w => partialDeriv i (fun w' => X w' d) w) (Y x)).comp
            (fderiv ℝ Y x))) x := by
    apply HasFDerivAt.fun_sum
    intro i _
    have hc : HasFDerivAt (fun z => partialDeriv i (fun w => X w d) (Y z))
        ((fderiv ℝ (fun w => partialDeriv i (fun w' => X w' d) w) (Y x)).comp
          (fderiv ℝ Y x)) x :=
      (hA d i).hasFDerivAt.comp x (hY x hx).hasFDerivAt
    exact hc.mul (hB a i).hasFDerivAt
  have key : (∑ i : Fin 3, (partialDeriv i (fun w => X w d) (Y x) •
          fderiv ℝ (fun z => (fderiv ℝ Y z (e a)) i) x
        + (fderiv ℝ Y x (e a)) i •
          (fderiv ℝ (fun w => partialDeriv i (fun w' => X w' d) w) (Y x)).comp
            (fderiv ℝ Y x))) (e c) = 0 := by
    rw [← hderiv.fderiv, hconst.fderiv_eq]
    simp
  rw [← key, ContinuousLinearMap.sum_apply]
  refine Finset.sum_congr rfl (fun i _ => ?_)
  rw [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.smul_apply, ContinuousLinearMap.comp_apply, smul_eq_mul, smul_eq_mul,
    s1 (fun w => partialDeriv i (fun w' => X w' d) w) (Y x) (fderiv ℝ Y x (e c))]
  have hp : partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x
      = fderiv ℝ (fun z => (fderiv ℝ Y z (e a)) i) x (e c) := rfl
  rw [hp]
  ring

theorem pullbackMetric_partialDeriv (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (Y : E3 → E3) (x : E3)
    (hY : DifferentiableAt ℝ Y x)
    (hB : ∀ a i : Fin 3, DifferentiableAt ℝ (fun z => (fderiv ℝ Y z (e a)) i) x)
    (hG : ∀ i j : Fin 3, DifferentiableAt ℝ (fun w => G w i j) (Y x)) (a b c : Fin 3) :
    partialDeriv c (fun z => pullbackMetric G Y z a b) x =
      ∑ i : Fin 3, ∑ j : Fin 3,
        (partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x * G (Y x) i j * (fderiv ℝ Y x (e b)) j
          + (fderiv ℝ Y x (e a)) i *
              (∑ k : Fin 3, (fderiv ℝ Y x (e c)) k * partialDeriv k (fun w => G w i j) (Y x)) *
              (fderiv ℝ Y x (e b)) j
          + (fderiv ℝ Y x (e a)) i * G (Y x) i j *
              partialDeriv c (fun z => (fderiv ℝ Y z (e b)) j) x) :=
by
  
  have hchain : ∀ i j : Fin 3, fderiv ℝ (fun z => G (Y z) i j) x (e c) =
      ∑ k : Fin 3, (fderiv ℝ Y x (e c)) k * partialDeriv k (fun w => G w i j) (Y x) := by
    intro i j
    have hcomp : fderiv ℝ (fun z => G (Y z) i j) x =
        (fderiv ℝ (fun w => G w i j) (Y x)).comp (fderiv ℝ Y x) :=
      fderiv_comp x (hG i j) hY
    rw [hcomp, ContinuousLinearMap.comp_apply]
    have hw : fderiv ℝ Y x (e c) = ∑ k : Fin 3, (fderiv ℝ Y x (e c)) k • e k := by
      ext l
      simp [EuclideanSpace.single_apply, Pi.single_apply]
    conv_lhs => rw [hw]
    simp only [map_sum, map_smul, smul_eq_mul]
    rfl
  
  have hterm : ∀ i j : Fin 3, HasFDerivAt
      (fun z => (fderiv ℝ Y z (e a)) i * G (Y z) i j * (fderiv ℝ Y z (e b)) j)
      (((fderiv ℝ Y x (e a)) i * G (Y x) i j) • fderiv ℝ (fun z => (fderiv ℝ Y z (e b)) j) x
        + (fderiv ℝ Y x (e b)) j • ((fderiv ℝ Y x (e a)) i • fderiv ℝ (fun z => G (Y z) i j) x
          + G (Y x) i j • fderiv ℝ (fun z => (fderiv ℝ Y z (e a)) i) x)) x := by
    intro i j
    have hγ : HasFDerivAt (fun z => G (Y z) i j) (fderiv ℝ (fun z => G (Y z) i j) x) x :=
      ((hG i j).comp x hY).hasFDerivAt
    exact ((hB a i).hasFDerivAt.fun_mul hγ).fun_mul (hB b j).hasFDerivAt
  have hS := HasFDerivAt.fun_sum (u := Finset.univ)
    (A := fun i z => ∑ j : Fin 3,
      (fderiv ℝ Y z (e a)) i * G (Y z) i j * (fderiv ℝ Y z (e b)) j)
    (fun i _ => HasFDerivAt.fun_sum (u := Finset.univ)
      (A := fun j z => (fderiv ℝ Y z (e a)) i * G (Y z) i j * (fderiv ℝ Y z (e b)) j)
      (fun j _ => hterm i j))
  have hD : HasFDerivAt (fun z => pullbackMetric G Y z a b) _ x := hS
  show fderiv ℝ (fun z => pullbackMetric G Y z a b) x (e c) = _
  rw [hD.fderiv]
  simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.add_apply,
    ContinuousLinearMap.smul_apply, smul_eq_mul, hchain]
  refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
  unfold partialDeriv
  ring

theorem gauge_of_harmonic_first_coord (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (v : E3 → ℝ)
    (q R R₀ R₁ C : ℝ) (Y : E3 → E3)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) {y : E3 | R < ‖y‖})
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i)
    (hdet : ∀ y : E3, R < ‖y‖ → (G y).det ≠ 0)
    (hv : ContDiffOn ℝ ∞ v {y : E3 | R < ‖y‖})
    (hharm : ∀ y : E3, R < ‖y‖ → lapLoc G v y = 0)
    (hXY : CoordChange (fun y => cylPt (v y) (y 1) (y 2)) Y q R₀ R₁ C)
    (hRR₀ : R ≤ R₀) :
    ∀ x : E3, R₁ < ‖x‖ →
      ∑ i : Fin 3, ∑ j : Fin 3,
        (pullbackMetric G Y x)⁻¹ i j * christoffel (pullbackMetric G Y) 0 i j x = 0 :=
by
  
  have fderiv_entry_partialDeriv_symm : ∀ (Y : E3 → E3) (U : Set E3) (hU : IsOpen U)
      (hY : ContDiffOn ℝ ∞ Y U) (x : E3) (hx : x ∈ U) (a c i : Fin 3),
      partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x =
        partialDeriv a (fun z => (fderiv ℝ Y z (e c)) i) x := by
    intro Y U hU hY x hx a c i
    have hYx : ContDiffAt ℝ ∞ Y x := hY.contDiffAt (hU.mem_nhds hx)
    have hS : IsSymmSndFDerivAt ℝ Y x := hYx.isSymmSndFDerivAt (by
      rw [minSmoothness_of_isRCLikeNormedField]
      exact WithTop.coe_le_coe.mpr le_top)
    have hD1 : ContDiffAt ℝ 1 (fderiv ℝ Y) x := hYx.fderiv_right (m := 1) (by
      change ((2 : ℕ∞) : WithTop ℕ∞) ≤ ((⊤ : ℕ∞) : WithTop ℕ∞)
      exact WithTop.coe_le_coe.mpr le_top)
    have hD : DifferentiableAt ℝ (fderiv ℝ Y) x := hD1.differentiableAt one_ne_zero
    have key : ∀ (u : E3) (k : Fin 3), partialDeriv k (fun z => (fderiv ℝ Y z u) i) x =
        (fderiv ℝ (fderiv ℝ Y) x (e k) u) i := by
      intro u k
      let L : (E3 →L[ℝ] E3) →L[ℝ] ℝ :=
        (EuclideanSpace.proj i).comp (ContinuousLinearMap.apply ℝ E3 u)
      have h := L.hasFDerivAt.comp x hD.hasFDerivAt
      have hfun : (fun z => (fderiv ℝ Y z u) i) = L ∘ fderiv ℝ Y := rfl
      unfold partialDeriv
      rw [hfun, h.fderiv]
      rfl
    rw [key (e a) c, key (e c) a, hS (e c) (e a)]
  
  have pullback_christoffel_algebra : ∀ (J A P g : Matrix (Fin 3) (Fin 3) ℝ)
      (dG M dH : Fin 3 → Fin 3 → Fin 3 → ℝ)
      (hJA : J * A = 1) (hPg : P * g = 1)
      (hg : ∀ i j : Fin 3, g i j = g j i)
      (hM : ∀ c i a : Fin 3, M c i a = M a i c)
      (hdH : ∀ c a b : Fin 3, dH c a b = ∑ i : Fin 3, ∑ j : Fin 3,
        (M c i a * g i j * J j b + J i a * (∑ k : Fin 3, J k c * dG k i j) * J j b
          + J i a * g i j * M c j b)) (c a b : Fin 3),
      (1 / 2 : ℝ) * ∑ l : Fin 3, (A * P * A.transpose) c l * (dH a b l + dH b a l - dH l a b) =
        ∑ p : Fin 3, A c p * (∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b *
          ((1 / 2 : ℝ) * ∑ l : Fin 3, P p l * (dG i j l + dG j i l - dG l i j)) + M a p b) := by
    intro J A P g dG M dH hJA hPg hg hM hdH c a b
    set Hi := A * P * A.transpose with hHi
    have hdH' : ∀ c a b, dH c a b = (∑ i : Fin 3, ∑ j : Fin 3, M c i a * g i j * J j b)
        + (∑ i : Fin 3, ∑ j : Fin 3, ∑ k : Fin 3, J i a * J k c * dG k i j * J j b)
        + (∑ i : Fin 3, ∑ j : Fin 3, M c i b * g i j * J j a) := by
      intro c a b
      rw [hdH]
      simp only [Fin.sum_univ_three]
      rw [hg 1 0, hg 2 0, hg 2 1]
      ring
    have hN : ∀ c a b, (∑ i : Fin 3, ∑ j : Fin 3, M c i a * g i j * J j b)
        = ∑ i : Fin 3, ∑ j : Fin 3, M a i c * g i j * J j b := by
      intro c a b
      refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
      rw [hM]
    have hK : ∀ l, dH a b l + dH b a l - dH l a b
        = 2 * (∑ i : Fin 3, ∑ j : Fin 3, M a i b * g i j * J j l)
          + ((∑ i : Fin 3, ∑ j : Fin 3, ∑ k : Fin 3, J i b * J k a * dG k i j * J j l)
            + (∑ i : Fin 3, ∑ j : Fin 3, ∑ k : Fin 3, J i a * J k b * dG k i j * J j l)
            - (∑ i : Fin 3, ∑ j : Fin 3, ∑ k : Fin 3, J i a * J k l * dG k i j * J j b)) := by
      intro l
      rw [hdH' a b l, hdH' b a l, hdH' l a b, hN a l b, hN b l a, hN b a l]
      ring
    have hgT : g.transpose = g := by
      ext i j
      rw [Matrix.transpose_apply, hg j i]
    have HJ : Hi * J.transpose = A * P := by
      rw [hHi, Matrix.mul_assoc, ← Matrix.transpose_mul, hJA, Matrix.transpose_one,
        Matrix.mul_one]
    have HJg : Hi * J.transpose * g.transpose = A := by
      rw [HJ, hgT, Matrix.mul_assoc, hPg, Matrix.mul_one]
    have hf : ∀ m, ∑ l : Fin 3, Hi c l * J m l = ∑ p : Fin 3, A c p * P p m := by
      intro m
      have h := congrFun (congrFun HJ c) m
      simp only [Matrix.mul_apply, Matrix.transpose_apply] at h
      exact h
    have he : ∀ i, ∑ j : Fin 3, (∑ l : Fin 3, Hi c l * J j l) * g i j = A c i := by
      intro i
      have h := congrFun (congrFun HJg c) i
      simp only [Matrix.mul_apply, Matrix.transpose_apply] at h
      exact h
    simp only [hK]
    linear_combination (norm := skip) (M a 0 b) * he 0 + (M a 1 b) * he 1 + (M a 2 b) * he 2
      + ((1 / 2 : ℝ) * ∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * (dG i j 0 + dG j i 0 - dG 0 i j))
        * hf 0
      + ((1 / 2 : ℝ) * ∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * (dG i j 1 + dG j i 1 - dG 1 i j))
        * hf 1
      + ((1 / 2 : ℝ) * ∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * (dG i j 2 + dG j i 2 - dG 2 i j))
        * hf 2
    simp only [Fin.sum_univ_three]
    ring
  
  have gauge_contraction_algebra : ∀ (J A P : Matrix (Fin 3) (Fin 3) ℝ)
      (Γ M : Fin 3 → Fin 3 → Fin 3 → ℝ) (D : Fin 3 → Fin 3 → ℝ) (w : Fin 3 → ℝ)
      (hJA : J * A = 1)
      (hid : ∀ c a : Fin 3, ∑ i : Fin 3,
        ((∑ k : Fin 3, J k c * D k i) * J i a + w i * M c i a) = 0),
      ∑ a : Fin 3, ∑ b : Fin 3, (A * P * A.transpose) a b *
        ∑ p : Fin 3, w p * (∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * Γ p i j + M a p b) =
      -(∑ i : Fin 3, ∑ j : Fin 3, P i j * (D i j - ∑ k : Fin 3, Γ k i j * w k)) := by
    intro J A P Γ M D w hJA hid
    set Hi := A * P * A.transpose with hHi
    have hmat : J * Hi * J.transpose = P := by
      rw [hHi, show J * (A * P * A.transpose) * J.transpose = (J * A) * P * (J * A).transpose by
        simp only [Matrix.transpose_mul, Matrix.mul_assoc]]
      rw [hJA, Matrix.one_mul, Matrix.transpose_one, Matrix.mul_one]
    have hsand : ∀ i j, ∑ a : Fin 3, ∑ b : Fin 3, J i a * Hi a b * J j b = P i j := by
      intro i j
      have h := congrFun (congrFun hmat i) j
      rw [← h]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_three]
      ring
    have hF : ∀ a b, ∑ p : Fin 3, w p *
          (∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * Γ p i j + M a p b)
        = ∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * (∑ p : Fin 3, w p * Γ p i j - D i j) := by
      intro a b
      have h := hid a b
      simp only [Fin.sum_univ_three] at h ⊢
      linear_combination h
    calc _ = ∑ a : Fin 3, ∑ b : Fin 3, Hi a b *
          ∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * (∑ p : Fin 3, w p * Γ p i j - D i j) := by
            simp only [hF]
      _ = ∑ i : Fin 3, ∑ j : Fin 3, (∑ a : Fin 3, ∑ b : Fin 3, J i a * Hi a b * J j b) *
            (∑ p : Fin 3, w p * Γ p i j - D i j) := by
            simp only [Fin.sum_univ_three]; ring
      _ = _ := by
            simp only [hsand]
            simp only [Fin.sum_univ_three]
            ring
  intro x hx
  set X : E3 → E3 := fun y => cylPt (v y) (y 1) (y 2) with hXdef
  have hXY' := hXY
  obtain ⟨_hR0, _hR01, _hC, _hXs, hYs, hinv, _hinj, _hbd⟩ := hXY'
  have hU : IsOpen {z : E3 | R₁ < ‖z‖} := isOpen_lt continuous_const continuous_norm
  have hW : IsOpen {y : E3 | R < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hyV : R₀ < ‖Y x‖ := (hinv x hx).1
  have hyW : R < ‖Y x‖ := lt_of_le_of_lt hRR₀ hyV
  
  have hX0 : (fun w' => X w' 0) = v := by
    funext w'
    simp [hXdef, cylPt, e, EuclideanSpace.single_apply]
  
  have hdetG : (G (Y x)).det ≠ 0 := hdet (Y x) hyW
  have hu : IsUnit (G (Y x)).det := isUnit_iff_ne_zero.mpr hdetG
  have hPg : (G (Y x))⁻¹ * G (Y x) = 1 := Matrix.nonsing_inv_mul (G (Y x)) hu
  have hgP : G (Y x) * (G (Y x))⁻¹ = 1 := Matrix.mul_nonsing_inv (G (Y x)) hu
  have hg : ∀ i j : Fin 3, G (Y x) i j = G (Y x) j i := hsymm (Y x)
  
  obtain ⟨-, hreg⟩ := coordChange_regularity (fun _ => (0 : Matrix (Fin 3) (Fin 3) ℝ))
    (fun _ _ => contDiffOn_const) X Y q R₀ R₁ C hXY
  obtain ⟨hYx, _hXYx, hB, hA, -⟩ := hreg x hx
  have hGd : ∀ i j : Fin 3, DifferentiableAt ℝ (fun w => G w i j) (Y x) := fun i j =>
    ((hG i j).contDiffAt (hW.mem_nhds hyW)).differentiableAt (by simp)
  obtain ⟨hid1, hid2⟩ := inverse_jacobian_identities X Y {z : E3 | R₁ < ‖z‖} hU
    (fun z hz => (hinv z hz).2) (fun z hz => (hreg z hz).1) (fun z hz => (hreg z hz).2.1)
    x hx hA hB
  
  set J : Matrix (Fin 3) (Fin 3) ℝ := Matrix.of fun i a => (fderiv ℝ Y x (e a)) i with hJ
  set A : Matrix (Fin 3) (Fin 3) ℝ :=
    Matrix.of fun d i => partialDeriv i (fun w' => X w' d) (Y x) with hAdef
  have hAJ : A * J = 1 := by
    ext d a
    rw [Matrix.mul_apply]
    simpa [hJ, hAdef, Matrix.one_apply] using hid1 d a
  have hJA : J * A = 1 := mul_eq_one_comm.mp hAJ
  have hHx : pullbackMetric G Y x = J.transpose * G (Y x) * J := by
    ext a b
    simp only [pullbackMetric, Matrix.mul_apply, Matrix.transpose_apply, hJ, Matrix.of_apply,
      Finset.sum_mul]
    rw [Finset.sum_comm]
  have hHinv : (pullbackMetric G Y x)⁻¹ = A * (G (Y x))⁻¹ * A.transpose := by
    rw [hHx]
    apply Matrix.inv_eq_right_inv
    calc J.transpose * G (Y x) * J * (A * (G (Y x))⁻¹ * A.transpose)
        = J.transpose * (G (Y x) * ((J * A) * ((G (Y x))⁻¹ * A.transpose))) := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by
          rw [hJA, Matrix.one_mul, ← Matrix.mul_assoc (G (Y x)), hgP, Matrix.one_mul,
            ← Matrix.transpose_mul, hAJ, Matrix.transpose_one]
  
  have hM : ∀ c i a : Fin 3, partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x
      = partialDeriv a (fun z => (fderiv ℝ Y z (e c)) i) x := fun c i a =>
    fderiv_entry_partialDeriv_symm Y {z : E3 | R₁ < ‖z‖} hU hYs x hx a c i
  have hc : ∀ a b : Fin 3, christoffel (pullbackMetric G Y) 0 a b x =
      ∑ p : Fin 3, A 0 p * (∑ i : Fin 3, ∑ j : Fin 3, J i a * J j b * christoffel G p i j (Y x)
        + partialDeriv a (fun z => (fderiv ℝ Y z (e b)) p) x) := by
    intro a b
    have h5 := pullback_christoffel_algebra J A (G (Y x))⁻¹ (G (Y x))
      (fun k i j => partialDeriv k (fun w => G w i j) (Y x))
      (fun c i a => partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x)
      (fun c a b => partialDeriv c (fun z => pullbackMetric G Y z a b) x)
      hJA hPg hg hM (fun c a b => pullbackMetric_partialDeriv G Y x hYx hB hGd a b c) 0 a b
    unfold christoffel
    rw [hHinv]
    exact h5
  
  have h6 := gauge_contraction_algebra J A (G (Y x))⁻¹
    (fun p i j => christoffel G p i j (Y x))
    (fun c i a => partialDeriv c (fun z => (fderiv ℝ Y z (e a)) i) x)
    (fun k i => partialDeriv k (fun z => partialDeriv i (fun w' => X w' 0) z) (Y x))
    (fun p => A 0 p) hJA (fun c a => hid2 c 0 a)
  have hlap := hharm (Y x) hyW
  calc ∑ a : Fin 3, ∑ b : Fin 3,
        (pullbackMetric G Y x)⁻¹ a b * christoffel (pullbackMetric G Y) 0 a b x
      = ∑ a : Fin 3, ∑ b : Fin 3, (A * (G (Y x))⁻¹ * A.transpose) a b *
          ∑ p : Fin 3, A 0 p * (∑ i : Fin 3, ∑ j : Fin 3,
            J i a * J j b * christoffel G p i j (Y x)
              + partialDeriv a (fun z => (fderiv ℝ Y z (e b)) p) x) := by
        rw [hHinv]
        simp only [hc]
    _ = -(∑ i : Fin 3, ∑ j : Fin 3, (G (Y x))⁻¹ i j *
          (partialDeriv i (fun z => partialDeriv j (fun w' => X w' 0) z) (Y x)
            - ∑ k : Fin 3, christoffel G k i j (Y x) * A 0 k)) := h6
    _ = -(lapLoc G v (Y x)) := by
        simp only [lapLoc, hessLoc, hAdef, Matrix.of_apply, hX0]
    _ = 0 := by rw [hlap, neg_zero]

theorem stern_domain_facts [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (Φ : EndChart M) (β u : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain Φ β Re)
    (X Y : E3 → E3) (q R₀ R₁ C : ℝ) (hq0 : 0 < q) (hq1 : q < 1)
    (hXY : CoordChange X Y q R₀ R₁ C) (hRe : Re ≤ R₀)
    (hX : ∀ y : E3, R₀ < ‖y‖ → X y = cylPt (u (Φ.Φ y)) (y 1) (y 2))
    (hesc : ∀ p : M, ∃ ρ : ℝ, ∃ N ∈ 𝓝 p, ∀ y : E3, ρ < ‖y‖ → Φ.Φ y ∉ N) :
    (∀ x : E3, R₁ < ‖x‖ → u (sternPsi Φ Y x) = x 0 ∧ 0 < β (sternPsi Φ Y x)) ∧
    ∀ L : ℝ, R₁ < L → IsCompact (sternDomain Φ β Y L) ∧ IsOpen (sternOuter Φ Y L) ∧
      IsClosed (sternOuterClosed Φ Y L) ∧
      ∀ t : ℝ, |t| < L → IsCompact (sternSide Φ Y L ∩ u ⁻¹' {t}) :=
by
  obtain ⟨hR0, hR01, hC, hXc, hYc, hYU, hXinj, hXb⟩ := hXY
  obtain ⟨hβs, -, hRe2, hβpos, hβcpt⟩ := hβ
  have hβc : Continuous β := hβs.continuous
  have hsrc : Φ.Φ.source = {y : E3 | 1 < ‖y‖} := Φ.source_eq
  have hΦc : ContinuousOn Φ.Φ {y : E3 | 1 < ‖y‖} := by
    rw [← hsrc]; exact Φ.Φ.contMDiffOn.continuousOn
  have hmaps : Set.MapsTo Y {x : E3 | R₁ < ‖x‖} {y : E3 | 1 < ‖y‖} := by
    intro x hx
    have := (hYU x hx).1
    show (1 : ℝ) < ‖Y x‖
    linarith
  have hΨc : ContinuousOn (sternPsi Φ Y) {x : E3 | R₁ < ‖x‖} :=
    hΦc.comp hYc.continuousOn hmaps
  
  have hnorm : ∀ x : E3, ‖x‖ ^ 2 = x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 := by
    intro x
    rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_three]
    simp only [Real.norm_eq_abs, sq_abs]
  have hcoord : ∀ x : E3, |x 0| ≤ ‖x‖ := by
    intro x
    have := PiLp.norm_apply_le x 0
    rwa [Real.norm_eq_abs] at this
  have hcont : ∀ i : Fin 3, Continuous (fun x : E3 => x i) := by
    intro i; fun_prop
  have hcyl0 : ∀ t a b : ℝ, (cylPt t a b) 0 = t := by
    intro t a b
    simp [cylPt, e, EuclideanSpace.single_apply]
  
  have hN1 : ∀ x : E3, R₁ < ‖x‖ → ‖x‖ ≤ (1 + C) * ‖Y x‖ := by
    intro x hx
    obtain ⟨hy, hxy⟩ := hYU x hx
    have h1 : (1 : ℝ) ≤ ‖Y x‖ := by linarith
    have h2 : ‖Y x‖ ^ (1 - q) ≤ ‖Y x‖ := by
      calc ‖Y x‖ ^ (1 - q) ≤ ‖Y x‖ ^ (1 : ℝ) :=
            Real.rpow_le_rpow_of_exponent_le h1 (by linarith)
        _ = ‖Y x‖ := Real.rpow_one _
    have h3 := (hXb (Y x) hy).1
    have h4 : ‖X (Y x)‖ - ‖Y x‖ ≤ ‖X (Y x) - Y x‖ := norm_sub_norm_le _ _
    rw [hxy] at h4 h3
    nlinarith [mul_le_mul_of_nonneg_left h2 hC.le]
  have hN2 : ∀ y : E3, max R₀ ((2 * C) ^ q⁻¹) < ‖y‖ → ‖y‖ / 2 ≤ ‖X y‖ := by
    intro y hy
    rw [max_lt_iff] at hy
    obtain ⟨hy0, hy1⟩ := hy
    have hr0 : 0 < ‖y‖ := by linarith
    have hrq : 2 * C ≤ ‖y‖ ^ q := by
      have := Real.rpow_le_rpow (Real.rpow_nonneg (by linarith : (0 : ℝ) ≤ 2 * C) q⁻¹)
        hy1.le hq0.le
      rwa [Real.rpow_inv_rpow (by linarith) hq0.ne'] at this
    have hsplit : ‖y‖ ^ (1 - q) * ‖y‖ ^ q = ‖y‖ := by
      rw [← Real.rpow_add hr0]; simp
    have hpos : 0 ≤ ‖y‖ ^ (1 - q) := (Real.rpow_pos_of_pos hr0 _).le
    have h3 : C * ‖y‖ ^ (1 - q) ≤ ‖y‖ / 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hrq hpos]
    have h4 : ‖y‖ - ‖X y‖ ≤ ‖y - X y‖ := norm_sub_norm_le _ _
    rw [norm_sub_rev] at h4
    linarith [(hXb y hy0).1]
  have hInj : ∀ x y : E3, R₁ < ‖x‖ → R₀ < ‖y‖ → X y = x → Y x = y := by
    intro x y hx hy hxy
    obtain ⟨h1, h2⟩ := hYU x hx
    exact hXinj h1 hy (h2.trans hxy.symm)
  
  have hcl : ∀ T : Set E3, IsClosed T → T ⊆ {x : E3 | R₁ < ‖x‖} →
      (∀ p : M, ∃ r : ℝ, ∃ N ∈ 𝓝 p, ∀ x ∈ T, r < ‖x‖ → sternPsi Φ Y x ∉ N) →
      IsClosed (sternPsi Φ Y '' T) := by
    intro T hT hTU hfar
    rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
    intro p hp
    obtain ⟨r, N, hN, hr⟩ := hfar p
    have hK : IsCompact (sternPsi Φ Y '' (T ∩ closedBall 0 r)) :=
      ((isCompact_closedBall (0 : E3) r).inter_left hT).image_of_continuousOn
        (hΨc.mono (Set.inter_subset_left.trans hTU))
    have hpK : p ∉ sternPsi Φ Y '' (T ∩ closedBall 0 r) :=
      fun h => hp (Set.image_mono Set.inter_subset_left h)
    filter_upwards [hN, hK.isClosed.isOpen_compl.mem_nhds hpK] with z hzN hzK
    rintro ⟨x, hxT, rfl⟩
    by_cases hxr : ‖x‖ ≤ r
    · exact hzK ⟨x, ⟨hxT, mem_closedBall_zero_iff.mpr hxr⟩, rfl⟩
    · exact hr x hxT (lt_of_not_ge hxr) hzN
  
  have hA : ∀ x : E3, R₁ < ‖x‖ → u (sternPsi Φ Y x) = x 0 ∧ 0 < β (sternPsi Φ Y x) := by
    intro x hx
    obtain ⟨hy, hxy⟩ := hYU x hx
    refine ⟨?_, hβpos (Y x) (lt_of_le_of_lt hRe hy)⟩
    have h1 := hX (Y x) hy
    rw [hxy] at h1
    calc u (sternPsi Φ Y x) = (cylPt (u (Φ.Φ (Y x))) (Y x 1) (Y x 2)) 0 := (hcyl0 _ _ _).symm
      _ = x 0 := by rw [← h1]
  refine ⟨hA, fun L hL => ?_⟩
  have hL0 : 0 < L := by linarith
  
  have c1 : ∀ x : E3, ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2) → L < ‖x‖ := by
    intro x hx
    rcases not_and_or.mp hx with h | h
    · push_neg at h
      linarith [hcoord x]
    · push_neg at h
      have h' : L ^ 2 < ‖x‖ ^ 2 := by nlinarith [hnorm x, sq_nonneg (x 0)]
      exact lt_of_le_of_lt (le_abs_self L) (abs_lt_of_sq_lt_sq h' (norm_nonneg _))
  have c2 : ∀ x : E3, ¬ (|x 0| < L ∧ (x 1) ^ 2 + (x 2) ^ 2 < L ^ 2) → L ≤ ‖x‖ := by
    intro x hx
    rcases not_and_or.mp hx with h | h
    · push_neg at h
      linarith [hcoord x]
    · push_neg at h
      have h' : L ^ 2 ≤ ‖x‖ ^ 2 := by nlinarith [hnorm x, sq_nonneg (x 0)]
      exact le_trans (le_abs_self L) (abs_le_of_sq_le_sq h' (norm_nonneg _))
  have c3 : ∀ x : E3, 2 * L < ‖x‖ → ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2) := by
    rintro x hx ⟨h1, h2⟩
    have h0 : (x 0) ^ 2 ≤ L ^ 2 := by
      rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) h1 2
    have hn := hnorm x
    nlinarith [mul_self_lt_mul_self (by linarith : (0 : ℝ) ≤ 2 * L) hx]
  have c4 : IsOpen {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)} := by
    have : {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)} =
        ({x : E3 | |x 0| ≤ L} ∩ {x : E3 | (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2})ᶜ := rfl
    rw [this, isOpen_compl_iff]
    exact IsClosed.inter (isClosed_le (continuous_abs.comp (hcont 0)) continuous_const)
      (isClosed_le (((hcont 1).pow 2).add ((hcont 2).pow 2)) continuous_const)
  have c5 : IsClosed {x : E3 | ¬ (|x 0| < L ∧ (x 1) ^ 2 + (x 2) ^ 2 < L ^ 2)} := by
    have : {x : E3 | ¬ (|x 0| < L ∧ (x 1) ^ 2 + (x 2) ^ 2 < L ^ 2)} =
        ({x : E3 | |x 0| < L} ∩ {x : E3 | (x 1) ^ 2 + (x 2) ^ 2 < L ^ 2})ᶜ := rfl
    rw [this, isClosed_compl_iff]
    exact IsOpen.inter (isOpen_lt (continuous_abs.comp (hcont 0)) continuous_const)
      (isOpen_lt (((hcont 1).pow 2).add ((hcont 2).pow 2)) continuous_const)
  have c6 : ∀ t : ℝ, IsCompact {x : E3 | x 0 = t ∧ (x 1) ^ 2 + (x 2) ^ 2 = L ^ 2} := by
    intro t
    have hcl6 : IsClosed {x : E3 | x 0 = t ∧ (x 1) ^ 2 + (x 2) ^ 2 = L ^ 2} :=
      IsClosed.inter (isClosed_eq (hcont 0) continuous_const)
        (isClosed_eq (((hcont 1).pow 2).add ((hcont 2).pow 2)) continuous_const)
    refine (isCompact_closedBall (0 : E3) (|t| + L)).of_isClosed_subset hcl6 ?_
    rintro x ⟨hx0, hx1⟩
    rw [mem_closedBall_zero_iff]
    have hn := hnorm x
    have hsq : ‖x‖ ^ 2 ≤ (|t| + L) ^ 2 := by
      rw [hn, hx0]
      nlinarith [sq_abs t, abs_nonneg t]
    have := abs_le_of_sq_le_sq hsq (by positivity)
    rwa [abs_norm] at this
  have hAU : ∀ x ∈ {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)}, R₁ < ‖x‖ :=
    fun x hx => lt_trans hL (c1 x hx)
  
  have hO : IsOpen (sternOuter Φ Y L) := by
    have himg : Y '' {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)} =
        {y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)} := by
      ext y
      constructor
      · rintro ⟨x, hx, rfl⟩
        obtain ⟨h1, h2⟩ := hYU x (hAU x hx)
        refine ⟨h1, ?_⟩
        rw [Set.mem_preimage, h2]; exact hx
      · rintro ⟨hy, hXy⟩
        exact ⟨X y, hXy, hInj (X y) y (hAU _ hXy) hy rfl⟩
    have hopen : IsOpen ({y : E3 | R₀ < ‖y‖} ∩
        X ⁻¹' {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)}) :=
      hXc.continuousOn.isOpen_inter_preimage (isOpen_lt continuous_const continuous_norm) c4
    have hsub : {y : E3 | R₀ < ‖y‖} ∩
        X ⁻¹' {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)} ⊆ Φ.Φ.source := by
      rw [hsrc]
      intro y hy
      have : R₀ < ‖y‖ := hy.1
      show (1 : ℝ) < ‖y‖
      linarith
    have heq : sternOuter Φ Y L = Φ.Φ '' (Y '' {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)}) := by
      rw [Set.image_image]; rfl
    rw [heq, himg]
    exact Φ.Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source hopen hsub
  
  have hCl : IsClosed (sternOuterClosed Φ Y L) := by
    refine hcl _ c5 (fun x hx => lt_of_lt_of_le hL (c2 x hx)) ?_
    intro p
    obtain ⟨ρ, N, hN, hρ⟩ := hesc p
    refine ⟨(1 + C) * |ρ|, N, hN, fun x hx hxr => ?_⟩
    have hxU : R₁ < ‖x‖ := lt_of_lt_of_le hL (c2 x hx)
    have h1 := hN1 x hxU
    have h2 : |ρ| < ‖Y x‖ := by
      by_contra h
      push_neg at h
      have := mul_le_mul_of_nonneg_left h (by linarith : (0 : ℝ) ≤ 1 + C)
      linarith
    exact hρ (Y x) (lt_of_le_of_lt (le_abs_self ρ) h2)
  
  have hD : IsCompact (sternDomain Φ β Y L) := by
    have hclosed : IsClosed (sternDomain Φ β Y L) :=
      (isClosed_le continuous_const hβc).sdiff hO
    have hfarOuter : ∀ y : E3, max (max R₀ (4 * L)) ((2 * C) ^ q⁻¹) < ‖y‖ →
        Φ.Φ y ∈ sternOuter Φ Y L := by
      intro y hy
      simp only [max_lt_iff] at hy
      obtain ⟨⟨hy0, hy4⟩, hy2⟩ := hy
      have h1 := hN2 y (max_lt hy0 hy2)
      have h2 : X y ∈ {x : E3 | ¬ (|x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2)} :=
        c3 (X y) (by linarith)
      have h3 : R₁ < ‖X y‖ := hAU _ h2
      have h4 := hInj (X y) y h3 hy0 rfl
      refine ⟨X y, h2, ?_⟩
      show Φ.Φ (Y (X y)) = Φ.Φ y
      rw [h4]
    have hann : IsCompact {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ max (max R₀ (4 * L)) ((2 * C) ^ q⁻¹)} :=
      (isCompact_closedBall (0 : E3) (max (max R₀ (4 * L)) ((2 * C) ^ q⁻¹))).of_isClosed_subset
        ((isClosed_le continuous_const continuous_norm).inter
          (isClosed_le continuous_norm continuous_const))
        (fun y hy => mem_closedBall_zero_iff.mpr hy.2)
    have hK2 := hann.image_of_continuousOn (hΦc.mono (fun y hy => by
      have : Re ≤ ‖y‖ := hy.1
      show (1 : ℝ) < ‖y‖
      linarith))
    have hsub : sternDomain Φ β Y L ⊆ ({p : M | 0 ≤ β p} \ Φ.Φ '' {y : E3 | Re < ‖y‖}) ∪
        Φ.Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ max (max R₀ (4 * L)) ((2 * C) ^ q⁻¹)} := by
      rintro p ⟨hp0, hpo⟩
      by_cases hpi : p ∈ Φ.Φ '' {y : E3 | Re < ‖y‖}
      · obtain ⟨y, hy, rfl⟩ := hpi
        right
        refine ⟨y, ⟨le_of_lt hy, ?_⟩, rfl⟩
        by_contra h
        push_neg at h
        exact hpo (hfarOuter y h)
      · left
        exact ⟨hp0, hpi⟩
    exact (hβcpt.union hK2).of_isClosed_subset hclosed hsub
  
  have hE : ∀ t : ℝ, |t| < L → IsCompact (sternSide Φ Y L ∩ u ⁻¹' {t}) := by
    intro t ht
    have hside : ∀ x : E3, (x 1) ^ 2 + (x 2) ^ 2 = L ^ 2 → R₁ < ‖x‖ := by
      intro x hx1
      refine lt_of_lt_of_le hL (c2 x ?_)
      intro h
      rw [hx1] at h
      exact lt_irrefl _ h.2
    have heq : sternSide Φ Y L ∩ u ⁻¹' {t} =
        sternPsi Φ Y '' {x : E3 | x 0 = t ∧ (x 1) ^ 2 + (x 2) ^ 2 = L ^ 2} := by
      ext p
      constructor
      · rintro ⟨⟨x, ⟨hx0, hx1⟩, rfl⟩, hut⟩
        have hut' : u (sternPsi Φ Y x) = t := hut
        refine ⟨x, ⟨?_, hx1⟩, rfl⟩
        rw [← (hA x (hside x hx1)).1]
        exact hut'
      · rintro ⟨x, ⟨hx0, hx1⟩, rfl⟩
        refine ⟨⟨x, ⟨by rw [hx0]; exact ht, hx1⟩, rfl⟩, ?_⟩
        show u (sternPsi Φ Y x) = t
        rw [(hA x (hside x hx1)).1, hx0]
    rw [heq]
    exact (c6 t).image_of_continuousOn (hΨc.mono (fun x hx => hside x hx.2))
  exact ⟨hD, hO, hCl, hE⟩

theorem level_components_reach_side [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (Φ : EndChart M) (β u : M → ℝ) (Y : E3 → E3) (R₁ L t : ℝ)
    (hβc : Continuous β) (huc : Continuous u) (hL : R₁ < L) (ht : |t| < L)
    (hΨu : ∀ x : E3, R₁ < ‖x‖ → u (sternPsi Φ Y x) = x 0)
    (hK : IsCompact (sternDomain Φ β Y L)) (hcl : IsClosed (sternOuterClosed Φ Y L))
    (hside : IsCompact (sternSide Φ Y L ∩ u ⁻¹' {t}))
    (hlev : NoCompactRegularLevel β u)
    (hreg : ∀ p ∈ sternDomain Φ β Y L ∩ u ⁻¹' {t}, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p ≠ 0) :
    ∀ p₀ ∈ sternDomain Φ β Y L ∩ u ⁻¹' {t},
      (connectedComponentIn (sternDomain Φ β Y L ∩ u ⁻¹' {t}) p₀ ∩
        sternSide Φ Y L).Nonempty :=
by
  intro p₀ hp₀
  classical
  
  have hsep : ∀ (S T : Set M), IsCompact S → IsClosed T → ∀ q₀ (hq₀ : q₀ ∈ S),
      connectedComponentIn S q₀ ∩ T = ∅ →
      ∃ Q : Set M, Q ⊆ S ∧ q₀ ∈ Q ∧ IsClosed Q ∧ IsClosed (S \ Q) ∧ Q ∩ T = ∅ := by
    intro S T hSc hTc q₀ hq₀ hne
    haveI : CompactSpace S := isCompact_iff_compactSpace.mp hSc
    let x₀ : S := ⟨q₀, hq₀⟩
    have hcc := connectedComponent_eq_iInter_isClopen x₀
    let T' : Set S := Subtype.val ⁻¹' T
    have hT'c : IsClosed T' := hTc.preimage continuous_subtype_val
    have hdisj : T' ∩ ⋂ (s : {s : Set S // IsClopen s ∧ x₀ ∈ s}), (s : Set S) = ∅ := by
      rw [← hcc]
      ext z
      simp only [Set.mem_inter_iff, Set.mem_empty_iff_false, iff_false, not_and]
      intro hzT hzc
      have h1 : z.1 ∈ connectedComponentIn S q₀ := by
        rw [connectedComponentIn_eq_image hq₀]
        exact ⟨z, hzc, rfl⟩
      have h2 : z.1 ∈ connectedComponentIn S q₀ ∩ T := ⟨h1, hzT⟩
      rw [hne] at h2
      exact h2
    obtain ⟨F, hF⟩ := hT'c.isCompact.elim_finite_subfamily_closed
      (fun s : {s : Set S // IsClopen s ∧ x₀ ∈ s} => (s : Set S)) (fun s => s.2.1.isClosed) hdisj
    let Q' : Set S := ⋂ s ∈ F, (s : Set S)
    have hQ' : IsClopen Q' := isClopen_biInter_finset (fun s _ => s.2.1)
    have hx₀Q' : x₀ ∈ Q' := Set.mem_iInter₂.mpr (fun s _ => s.2.2)
    refine ⟨Subtype.val '' Q', ?_, ⟨x₀, hx₀Q', rfl⟩,
      hSc.isClosed.isClosedMap_subtype_val _ hQ'.isClosed, ?_, ?_⟩
    · rintro _ ⟨z, _, rfl⟩
      exact z.2
    · have heq : S \ Subtype.val '' Q' = Subtype.val '' Q'ᶜ := by
        ext p
        constructor
        · rintro ⟨hpS, hpQ⟩
          exact ⟨⟨p, hpS⟩, fun h => hpQ ⟨⟨p, hpS⟩, h, rfl⟩, rfl⟩
        · rintro ⟨z, hz, rfl⟩
          refine ⟨z.2, ?_⟩
          rintro ⟨w, hw, hwz⟩
          have hwz' : w = z := Subtype.ext hwz
          subst hwz'
          exact hz hw
      rw [heq]
      exact hSc.isClosed.isClosedMap_subtype_val _ hQ'.compl.isClosed
    · ext p
      simp only [Set.mem_inter_iff, Set.mem_empty_iff_false, iff_false, not_and]
      rintro ⟨z, hz, rfl⟩ hzT
      have h3 : z ∈ T' ∩ ⋂ s ∈ F, (s : Set S) := ⟨hzT, hz⟩
      rw [hF] at h3
      exact h3
  
  have hnormsq : ∀ x : E3, ‖x‖ ^ 2 = x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 := by
    intro x
    rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => by positivity)),
      Fin.sum_univ_three]
    simp [Real.norm_eq_abs, sq_abs]
  have hs2 : ∀ p ∈ sternDomain Φ β Y L ∩ u ⁻¹' {t}, p ∈ sternOuterClosed Φ Y L →
      p ∈ sternSide Φ Y L := by
    intro p hpS hpOC
    have hpOut : p ∉ sternOuter Φ Y L := hpS.1.2
    have hup : u p = t := hpS.2
    obtain ⟨x, hx, rfl⟩ := hpOC
    have hx' : ¬ (|x 0| < L ∧ x 1 ^ 2 + x 2 ^ 2 < L ^ 2) := hx
    have hL0 : 0 < L := lt_of_le_of_lt (abs_nonneg t) ht
    have hLx : L ≤ ‖x‖ := by
      have h1 := hnormsq x
      have h2 : L ^ 2 ≤ ‖x‖ ^ 2 := by
        by_cases h0 : |x 0| < L
        · have h3 : L ^ 2 ≤ x 1 ^ 2 + x 2 ^ 2 := by
            by_contra h4
            exact hx' ⟨h0, lt_of_not_ge h4⟩
          nlinarith [sq_nonneg (x 0)]
        · have h3 : L ≤ |x 0| := le_of_not_gt h0
          have h4 : L ^ 2 ≤ |x 0| ^ 2 := pow_le_pow_left₀ hL0.le h3 2
          rw [sq_abs] at h4
          nlinarith [sq_nonneg (x 1), sq_nonneg (x 2)]
      nlinarith [norm_nonneg x]
    have hx0 : x 0 = t := by
      have h5 := hΨu x (lt_of_lt_of_le hL hLx)
      linarith
    have habs : |x 0| < L := by rw [hx0]; exact ht
    have hr : L ^ 2 ≤ x 1 ^ 2 + x 2 ^ 2 := by
      by_contra h4
      exact hx' ⟨habs, lt_of_not_ge h4⟩
    have hr' : x 1 ^ 2 + x 2 ^ 2 = L ^ 2 := by
      by_contra hne
      have hlt : L ^ 2 < x 1 ^ 2 + x 2 ^ 2 := lt_of_le_of_ne hr (Ne.symm hne)
      exact hpOut ⟨x, fun h => absurd h.2 (not_le.mpr hlt), rfl⟩
    exact ⟨x, ⟨habs, hr'⟩, rfl⟩
  
  have hSc : IsCompact (sternDomain Φ β Y L ∩ u ⁻¹' {t}) :=
    hK.inter_right (isClosed_singleton.preimage huc)
  have hA : IsClosed ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) :=
    (isClosed_le continuous_const hβc).inter (isClosed_singleton.preimage huc)
  have hTc : IsClosed (sternSide Φ Y L ∩ u ⁻¹' {t}) := hside.isClosed
  by_contra hne
  rw [Set.not_nonempty_iff_eq_empty] at hne
  have hdis : connectedComponentIn (sternDomain Φ β Y L ∩ u ⁻¹' {t}) p₀ ∩
      (sternSide Φ Y L ∩ u ⁻¹' {t}) = ∅ := by
    apply Set.eq_empty_of_subset_empty
    intro z hz
    have hz' : z ∈ connectedComponentIn (sternDomain Φ β Y L ∩ u ⁻¹' {t}) p₀ ∩
        sternSide Φ Y L := ⟨hz.1, hz.2.1⟩
    rw [hne] at hz'
    exact hz'
  obtain ⟨Q, hQS, hp₀Q, hQc, hSQc, hQT⟩ := hsep _ _ hSc hTc p₀ hp₀ hdis
  have hQOC : ∀ p ∈ Q, p ∉ sternOuterClosed Φ Y L := by
    intro p hpQ hpOC
    have hpS := hQS hpQ
    have hpSide := hs2 p hpS hpOC
    have h6 : p ∈ Q ∩ (sternSide Φ Y L ∩ u ⁻¹' {t}) := ⟨hpQ, hpSide, hpS.2⟩
    rw [hQT] at h6
    exact h6
  have hOutsub : sternOuter Φ Y L ⊆ sternOuterClosed Φ Y L := by
    rintro _ ⟨x, hx, rfl⟩
    exact ⟨x, fun h => hx ⟨h.1.le, h.2.le⟩, rfl⟩
  have hAQ : IsClosed (({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) \ Q) := by
    have heq : ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) \ Q =
        ((sternDomain Φ β Y L ∩ u ⁻¹' {t}) \ Q) ∪
          (({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) ∩ sternOuterClosed Φ Y L) := by
      ext p
      constructor
      · rintro ⟨hpA, hpQ⟩
        by_cases hpD : p ∈ sternDomain Φ β Y L
        · exact Or.inl ⟨⟨hpD, hpA.2⟩, hpQ⟩
        · right
          refine ⟨hpA, hOutsub ?_⟩
          by_contra hno
          exact hpD ⟨hpA.1, hno⟩
      · rintro (⟨hpS, hpQ⟩ | ⟨hpA, hpOC⟩)
        · exact ⟨⟨hpS.1.1, hpS.2⟩, hpQ⟩
        · exact ⟨hpA, fun hpQ => hQOC p hpQ hpOC⟩
    rw [heq]
    exact hSQc.union (hA.inter hcl)
  have hp₀A : p₀ ∈ {p : M | 0 ≤ β p} ∩ u ⁻¹' {t} := ⟨hp₀.1.1, hp₀.2⟩
  have hpc : IsPreconnected (connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) :=
    isPreconnected_connectedComponentIn
  have hC'Q : connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀ ⊆ Q := by
    have hsub : connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀ ⊆
        Q ∪ (({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) \ Q) := fun z hz => by
      by_cases h : z ∈ Q
      · exact Or.inl h
      · exact Or.inr ⟨connectedComponentIn_subset _ _ hz, h⟩
    rcases isPreconnected_iff_subset_of_disjoint_closed.mp hpc Q _ hQc hAQ hsub
      (by rw [Set.inter_diff_self, Set.inter_empty]) with h | h
    · exact h
    · exact absurd hp₀Q (h (mem_connectedComponentIn hp₀A)).2
  have hC'cl : IsClosed (connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) := by
    have h1 : closure (connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) ⊆
        {p : M | 0 ≤ β p} ∩ u ⁻¹' {t} :=
      closure_minimal (connectedComponentIn_subset _ _) hA
    have h2 := hpc.closure.subset_connectedComponentIn
      (subset_closure (mem_connectedComponentIn hp₀A)) h1
    exact closure_subset_iff_isClosed.mp h2
  have hQcpt : IsCompact Q := hSc.of_isClosed_subset hQc hQS
  have hC'cpt : IsCompact (connectedComponentIn ({p : M | 0 ≤ β p} ∩ u ⁻¹' {t}) p₀) :=
    hQcpt.of_isClosed_subset hC'cl hC'Q
  obtain ⟨p, hpC, hp0⟩ := hlev t p₀ hp₀A hC'cpt
  exact hreg p (hQS (hC'Q hpC)) hp0

theorem stern_grad_derivs (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3) (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V) (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef) (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f V) (y : E3) (hy : y ∈ V) : (∀ i a : Fin 3, partialDeriv i (fun z => gradUpLoc G f z a) y = ∑ c : Fin 3, (G y)⁻¹ a c * hessLoc G f i c y - ∑ e : Fin 3, christoffel G a i e y * gradUpLoc G f y e) ∧ (∀ j : Fin 3, partialDeriv j (gradSqLoc G f) y = 2 * ∑ a : Fin 3, gradUpLoc G f y a * hessLoc G f j a y) :=
by
  have hUy : V ∈ 𝓝 y := hV.mem_nhds hy
  have hpdv : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w V → ∀ i : Fin 3,
      ContDiffOn ℝ ∞ (partialDeriv i w) V := by
    intro w hw i
    have hD := ((contDiffOn_infty_iff_fderiv_of_isOpen hV).1 hw).2
    exact hD.clm_apply contDiffOn_const
  have hdet3 : ∀ H : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      (∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun y => H y a b) V) →
      ContDiffOn ℝ ∞ (fun y => (H y).det) V := by
    intro H hH
    have hfun : (fun y => (H y).det) = fun y =>
        H y 0 0 * H y 1 1 * H y 2 2 - H y 0 0 * H y 1 2 * H y 2 1
          - H y 0 1 * H y 1 0 * H y 2 2 + H y 0 1 * H y 1 2 * H y 2 0
          + H y 0 2 * H y 1 0 * H y 2 1 - H y 0 2 * H y 1 1 * H y 2 0 := by
      funext y
      exact Matrix.det_fin_three (H y)
    rw [hfun]
    have t1 := ((hH 0 0).mul (hH 1 1)).mul (hH 2 2)
    have t2 := ((hH 0 0).mul (hH 1 2)).mul (hH 2 1)
    have t3 := ((hH 0 1).mul (hH 1 0)).mul (hH 2 2)
    have t4 := ((hH 0 1).mul (hH 1 2)).mul (hH 2 0)
    have t5 := ((hH 0 2).mul (hH 1 0)).mul (hH 2 1)
    have t6 := ((hH 0 2).mul (hH 1 1)).mul (hH 2 0)
    exact ((((t1.sub t2).sub t3).add t4).add t5).sub t6
  have hdetU : ∀ z ∈ V, (G z).det ≠ 0 := fun z hz => (hpd z hz).det_pos.ne'
  have hGi : ∀ k l : Fin 3, ContDiffOn ℝ ∞ (fun y => (G y)⁻¹ k l) V := by
    intro k l
    have h1 : ContDiffOn ℝ ∞ (fun y => (G y).det) V := hdet3 G hG
    have h2 : ContDiffOn ℝ ∞ (fun y => ((G y).updateRow l (Pi.single k 1)).det) V := by
      apply hdet3
      intro a b
      by_cases hab : a = l
      · subst hab
        simp only [Matrix.updateRow_self]
        exact contDiffOn_const
      · simp only [Matrix.updateRow_ne hab]
        exact hG a b
    refine ((h1.inv hdetU).mul h2).congr ?_
    intro z _
    rw [Matrix.inv_def, Matrix.smul_apply, Matrix.adjugate_apply, Ring.inverse_eq_inv,
      smul_eq_mul]
  have hdiff : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w V → DifferentiableAt ℝ w y :=
    fun w hw => (hw.differentiableOn (by simp)).differentiableAt hUy
  have hAd : ∀ i j : Fin 3, DifferentiableAt ℝ (fun z => G z i j) y :=
    fun i j => hdiff _ (hG i j)
  have hBd : ∀ i j : Fin 3, DifferentiableAt ℝ (fun z => (G z)⁻¹ i j) y :=
    fun i j => hdiff _ (hGi i j)
  have hφd : ∀ b : Fin 3, DifferentiableAt ℝ (partialDeriv b f) y :=
    fun b => hdiff _ (hpdv f hf b)
  have hwd : ∀ a : Fin 3, DifferentiableAt ℝ (fun z => gradUpLoc G f z a) y := by
    intro a
    refine hdiff _ ?_
    exact (ContDiffOn.sum fun b _ => (hGi a b).mul (hpdv f hf b)).congr (fun z _ => rfl)
  
  have hR1 : ∀ (p q : Fin 3 → E3 → ℝ) (a : Fin 3), (∀ b, DifferentiableAt ℝ (p b) y) →
      (∀ b, DifferentiableAt ℝ (q b) y) →
      partialDeriv a (fun z => ∑ b : Fin 3, p b z * q b z) y =
        ∑ b : Fin 3, (partialDeriv a (p b) y * q b y + p b y * partialDeriv a (q b) y) := by
    intro p q a hp hq
    unfold partialDeriv
    have hsum := fderiv_fun_sum (u := Finset.univ) (A := fun b z => p b z * q b z) (x := y)
      (fun b _ => ((hp b).mul (hq b) : DifferentiableAt ℝ (fun z => p b z * q b z) y))
    beta_reduce at hsum
    rw [hsum, ContinuousLinearMap.sum_apply]
    refine Finset.sum_congr rfl (fun b _ => ?_)
    rw [fderiv_fun_mul (hp b) (hq b)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hinvsym : ∀ i j : Fin 3, (G y)⁻¹ i j = (G y)⁻¹ j i := by
    intro i j
    have hT : Matrix.transpose (G y) = G y := Matrix.ext (fun i j => hsymm y j i)
    have h := Matrix.transpose_nonsing_inv (G y)
    rw [hT] at h
    have h' := congrFun (congrFun h j) i
    rw [Matrix.transpose_apply] at h'
    exact h'
  have hdAsym : ∀ m i j : Fin 3, partialDeriv m (fun z => G z i j) y =
      partialDeriv m (fun z => G z j i) y := by
    intro m i j
    have hf' : (fun z => G z i j) = (fun z => G z j i) := funext fun z => hsymm z i j
    rw [hf']
  have hE : ∀ m k l : Fin 3, ∑ c : Fin 3, (partialDeriv m (fun z => (G z)⁻¹ k c) y * G y c l
      + (G y)⁻¹ k c * partialDeriv m (fun z => G z c l) y) = 0 := by
    intro m k l
    have h1 := hR1 (fun c z => (G z)⁻¹ k c) (fun c z => G z c l) m (fun c => hBd k c)
      (fun c => hAd c l)
    beta_reduce at h1
    have hev : (fun z => ∑ c : Fin 3, (G z)⁻¹ k c * G z c l) =ᶠ[𝓝 y]
        fun _ => (1 : Matrix (Fin 3) (Fin 3) ℝ) k l := by
      filter_upwards [hUy] with z hz
      rw [← Matrix.mul_apply, Matrix.nonsing_inv_mul _ ((isUnit_iff_ne_zero).2 (hdetU z hz))]
    have h0 : partialDeriv m (fun z => ∑ c : Fin 3, (G z)⁻¹ k c * G z c l) y = 0 := by
      unfold partialDeriv
      rw [hev.fderiv_eq]
      simp
    rw [h1] at h0
    exact h0
  have hinvd : ∀ m k l : Fin 3, partialDeriv m (fun z => (G z)⁻¹ k l) y =
      -∑ a : Fin 3, ∑ b : Fin 3,
        (G y)⁻¹ k a * partialDeriv m (fun z => G z a b) y * (G y)⁻¹ b l := by
    intro m k l
    obtain ⟨D, hD⟩ : ∃ D : Matrix (Fin 3) (Fin 3) ℝ,
        D = Matrix.of fun k l => partialDeriv m (fun z => (G z)⁻¹ k l) y := ⟨_, rfl⟩
    obtain ⟨dA, hdA⟩ : ∃ dA : Matrix (Fin 3) (Fin 3) ℝ,
        dA = Matrix.of fun i j => partialDeriv m (fun z => G z i j) y := ⟨_, rfl⟩
    have hM : D * G y + (G y)⁻¹ * dA = 0 := by
      ext k' l'
      simp only [Matrix.add_apply, Matrix.mul_apply, hD, hdA, Matrix.of_apply,
        Matrix.zero_apply]
      rw [← Finset.sum_add_distrib]
      exact hE m k' l'
    have hAB : G y * (G y)⁻¹ = 1 :=
      Matrix.mul_nonsing_inv _ ((isUnit_iff_ne_zero).2 (hdetU y hy))
    have hDe : D = -((G y)⁻¹ * dA * (G y)⁻¹) := by
      calc D = D * (G y * (G y)⁻¹) := by rw [hAB, Matrix.mul_one]
        _ = (D * G y) * (G y)⁻¹ := by rw [Matrix.mul_assoc]
        _ = (-((G y)⁻¹ * dA)) * (G y)⁻¹ := by rw [eq_neg_of_add_eq_zero_left hM]
        _ = -((G y)⁻¹ * dA * (G y)⁻¹) := by rw [Matrix.neg_mul]
    have h' := congrFun (congrFun hDe k) l
    simp only [hD, hdA, Matrix.neg_apply, Matrix.mul_apply, Matrix.of_apply] at h'
    rw [h']
    simp only [Fin.sum_univ_three]
    ring
  have hcomp : ∀ m k l : Fin 3, partialDeriv m (fun z => (G z)⁻¹ k l) y =
      -∑ a : Fin 3, (christoffel G k m a y * (G y)⁻¹ a l
        + christoffel G l m a y * (G y)⁻¹ k a) := by
    intro m k l
    rw [hinvd m k l]
    simp only [christoffel, Fin.sum_univ_three]
    simp only [hinvsym l 0, hinvsym l 1, hinvsym l 2, hdAsym m 1 0, hdAsym m 2 0,
      hdAsym m 2 1]
    ring
  
  have hi : ∀ i a : Fin 3, partialDeriv i (fun z => gradUpLoc G f z a) y =
      ∑ c : Fin 3, (G y)⁻¹ a c * hessLoc G f i c y
        - ∑ e : Fin 3, christoffel G a i e y * gradUpLoc G f y e := by
    intro i a
    have h1 := hR1 (fun b z => (G z)⁻¹ a b) (fun b => partialDeriv b f) i (fun b => hBd a b) hφd
    beta_reduce at h1
    have hwfun : (fun z => gradUpLoc G f z a) =
        fun z => ∑ b : Fin 3, (G z)⁻¹ a b * partialDeriv b f z := rfl
    rw [hwfun, h1]
    simp only [hcomp]
    simp only [hessLoc, gradUpLoc, Fin.sum_univ_three]
    ring
  
  have hNfun : gradSqLoc G f = fun z => ∑ a : Fin 3, partialDeriv a f z * gradUpLoc G f z a := by
    funext z
    simp only [gradSqLoc, gradInnerLoc, gradUpLoc, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
    ring
  have hii : ∀ j : Fin 3, partialDeriv j (gradSqLoc G f) y =
      2 * ∑ a : Fin 3, gradUpLoc G f y a * hessLoc G f j a y := by
    intro j
    have h1 := hR1 (fun a => partialDeriv a f) (fun a z => gradUpLoc G f z a) j hφd hwd
    beta_reduce at h1
    rw [hNfun, h1]
    simp only [hi]
    simp only [hessLoc, gradUpLoc, Fin.sum_univ_three]
    simp only [hinvsym 1 0, hinvsym 2 0, hinvsym 2 1]
    ring
  exact ⟨hi, hii⟩

theorem stern_sqrt_lap (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3) (hV : IsOpen V) (F : E3 → ℝ) (hF : ContDiffOn ℝ ∞ F V) (c : ℝ) (hpos : ∀ z ∈ V, 0 < F z + c) (y : E3) (hy : y ∈ V) : Real.sqrt (F y + c) * lapLoc G (fun z => Real.sqrt (F z + c)) y = (1 / 2 : ℝ) * lapLoc G F y - (∑ i : Fin 3, ∑ j : Fin 3, (G y)⁻¹ i j * partialDeriv i F y * partialDeriv j F y) / (4 * (F y + c)) :=
by
  obtain ⟨φ, hφ⟩ : ∃ φ : E3 → ℝ, φ = fun z => Real.sqrt (F z + c) := ⟨_, rfl⟩
  rw [← hφ]
  have hφz : ∀ z, φ z = Real.sqrt (F z + c) := fun z => by rw [hφ]
  have hφs : ContDiffOn ℝ ∞ φ V := by
    rw [hφ]
    exact (hF.add contDiffOn_const).sqrt (fun z hz => (hpos z hz).ne')
  have hdiff : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w V → ∀ z ∈ V, DifferentiableAt ℝ w z :=
    fun w hw z hz => (hw.contDiffAt (hV.mem_nhds hz)).differentiableAt (by simp)
  
  have h1 : ∀ z ∈ V, ∀ j : Fin 3, 2 * φ z * partialDeriv j φ z = partialDeriv j F z := by
    intro z hz j
    have hd : DifferentiableAt ℝ (fun w => F w + c) z := (hdiff F hF z hz).add_const c
    have hfd := fderiv_sqrt hd (hpos z hz).ne'
    have hsp : 0 < Real.sqrt (F z + c) := Real.sqrt_pos.mpr (hpos z hz)
    rw [hφz z, hφ]
    unfold partialDeriv
    rw [hfd, fderiv_add_const, ContinuousLinearMap.smul_apply, smul_eq_mul]
    field_simp
  
  have h2 : ∀ i j : Fin 3, φ y * partialDeriv i (partialDeriv j φ) y
      = (1 / 2 : ℝ) * partialDeriv i (partialDeriv j F) y
        - partialDeriv i φ y * partialDeriv j φ y := by
    intro i j
    have hφd := hdiff φ hφs y hy
    have had : DifferentiableAt ℝ (partialDeriv j φ) y := by
      have hca : ContDiffAt ℝ ∞ φ y := hφs.contDiffAt (hV.mem_nhds hy)
      have h1' : ContDiffAt ℝ 1 (fderiv ℝ φ) y := hca.fderiv_right (by norm_cast)
      have h2' : ContDiffAt ℝ 1 (fun z => fderiv ℝ φ z (e j)) y := h1'.clm_apply contDiffAt_const
      exact h2'.differentiableAt (by norm_num)
    have hev : (fun z => 2 * φ z * partialDeriv j φ z) =ᶠ[nhds y] partialDeriv j F :=
      Filter.eventually_of_mem (hV.mem_nhds hy) (fun z hz => h1 z hz j)
    have hfe := hev.fderiv_eq (𝕜 := ℝ)
    rw [fderiv_fun_mul (hφd.const_mul 2) had, fderiv_const_mul hφd] at hfe
    have key := congrArg (fun L => L (e i)) hfe
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul] at key
    have key' : 2 * φ y * partialDeriv i (partialDeriv j φ) y
        + partialDeriv j φ y * (2 * partialDeriv i φ y)
        = partialDeriv i (partialDeriv j F) y := key
    linear_combination key' / 2
  have hs2 : φ y ^ 2 = F y + c := by rw [hφz]; exact Real.sq_sqrt (hpos y hy).le
  have hu : F y + c ≠ 0 := (hpos y hy).ne'
  have h4 : ∀ i j : Fin 3, φ y * hessLoc G φ i j y
      = (1 / 2 : ℝ) * hessLoc G F i j y
        - partialDeriv i F y * partialDeriv j F y / (4 * (F y + c)) := by
    intro i j
    have hP2 : partialDeriv i φ y * partialDeriv j φ y
        = partialDeriv i F y * partialDeriv j F y / (4 * (F y + c)) := by
      rw [eq_div_iff (mul_ne_zero four_ne_zero hu)]
      linear_combination (-4 * partialDeriv i φ y * partialDeriv j φ y) * hs2
        + (2 * φ y * partialDeriv j φ y) * h1 y hy i + partialDeriv i F y * h1 y hy j
    simp only [hessLoc, Fin.sum_univ_three]
    linear_combination h2 i j - hP2 - (christoffel G 0 i j y / 2) * h1 y hy 0
      - (christoffel G 1 i j y / 2) * h1 y hy 1 - (christoffel G 2 i j y / 2) * h1 y hy 2
  rw [← hφz]
  simp only [lapLoc, Finset.mul_sum, Finset.sum_div, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  linear_combination (G y)⁻¹ i j * h4 i j

theorem stern_bochner_identity (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3) (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V) (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef) (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f V) (y : E3) (hy : y ∈ V) : (1 / 2 : ℝ) * lapLoc G (gradSqLoc G f) y = hessSqLoc G f y + ∑ b : Fin 3, gradUpLoc G f y b * partialDeriv b (lapLoc G f) y + ricGradLoc G f y :=
by
  have hUy : V ∈ 𝓝 y := hV.mem_nhds hy
  obtain ⟨-, hGi, -, hHs, hNs⟩ := ejp_coord_smooth G f V hV hG hpd hf
  have hdiff : ∀ w : E3 → ℝ, ContDiffOn ℝ ∞ w V → DifferentiableAt ℝ w y :=
    fun w hw => (hw.differentiableOn (by simp)).differentiableAt hUy
  have hwS : ∀ d : Fin 3, ContDiffOn ℝ ∞ (fun z => gradUpLoc G f z d) V := fun d => hNs d
  
  have hcongr : ∀ (i : Fin 3) (u v : E3 → ℝ), (∀ z ∈ V, u z = v z) →
      partialDeriv i u y = partialDeriv i v y := by
    intro i u v h
    have hev : u =ᶠ[𝓝 y] v := Filter.eventually_of_mem hUy h
    show fderiv ℝ u y (e i) = fderiv ℝ v y (e i)
    rw [hev.fderiv_eq]
  
  have hcm : ∀ (i : Fin 3) (c : ℝ) (u : E3 → ℝ), DifferentiableAt ℝ u y →
      partialDeriv i (fun z => c * u z) y = c * partialDeriv i u y := by
    intro i c u hu
    show fderiv ℝ (fun z => c * u z) y (e i) = c * fderiv ℝ u y (e i)
    rw [fderiv_const_mul hu]
    rfl
  
  have hR1 : ∀ (p q : Fin 3 → E3 → ℝ) (a : Fin 3), (∀ b, DifferentiableAt ℝ (p b) y) →
      (∀ b, DifferentiableAt ℝ (q b) y) →
      partialDeriv a (fun z => ∑ b : Fin 3, p b z * q b z) y =
        ∑ b : Fin 3, (partialDeriv a (p b) y * q b y + p b y * partialDeriv a (q b) y) := by
    intro p q a hp hq
    unfold partialDeriv
    have hsum := fderiv_fun_sum (u := Finset.univ) (A := fun b z => p b z * q b z) (x := y)
      (fun b _ => ((hp b).mul (hq b) : DifferentiableAt ℝ (fun z => p b z * q b z) y))
    beta_reduce at hsum
    rw [hsum, ContinuousLinearMap.sum_apply]
    refine Finset.sum_congr rfl (fun b _ => ?_)
    rw [fderiv_fun_mul (hp b) (hq b)]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have hAd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun z => G z a b) y := fun a b => hdiff _ (hG a b)
  have hdet : (G y).det ≠ 0 := (hpd y hy).det_pos.ne'
  
  have hs1a := (stern_grad_derivs G V hV hG hsymm hpd f hf y hy).1
  have hs1b := (stern_grad_derivs G V hV hG hsymm hpd f hf y hy).2
  
  obtain ⟨hA, -, hH, -⟩ := ejp_sym_facts G f V hV hsymm hf y hy
  have hD : ∀ i j k : Fin 3, partialDeriv i (hessLoc G f j k) y = partialDeriv i (hessLoc G f k j) y :=
    fun i j k => hcongr i _ _ (fun z hz => (ejp_sym_facts G f V hV hsymm hf z hz).2.2.1 j k)
  
  have hβ : ∀ i j : Fin 3, partialDeriv i (partialDeriv j (gradSqLoc G f)) y =
      2 * ∑ a : Fin 3, (partialDeriv i (fun z => gradUpLoc G f z a) y * hessLoc G f j a y
        + gradUpLoc G f y a * partialDeriv i (hessLoc G f j a) y) := by
    intro i j
    rw [hcongr i _ (fun z => 2 * ∑ a : Fin 3, gradUpLoc G f z a * hessLoc G f j a z)
      (fun z hz => (stern_grad_derivs G V hV hG hsymm hpd f hf z hz).2 j)]
    rw [hcm i 2 _ (hdiff _ (ContDiffOn.sum fun a _ => (hwS a).mul (hHs j a)))]
    have h1 := hR1 (fun a z => gradUpLoc G f z a) (fun a => hessLoc G f j a) i
      (fun a => hdiff _ (hwS a)) (fun a => hdiff _ (hHs j a))
    beta_reduce at h1
    rw [h1]
  have hlapN : lapLoc G (gradSqLoc G f) y = ∑ i : Fin 3, ∑ j : Fin 3, (G y)⁻¹ i j *
      (partialDeriv i (partialDeriv j (gradSqLoc G f)) y
        - ∑ k : Fin 3, christoffel G k i j y * partialDeriv k (gradSqLoc G f) y) := rfl
  
  have hS : ∀ m a b : Fin 3,
      partialDeriv m (fun z => ∑ c : Fin 3, (G z)⁻¹ a c * hessLoc G f b c z) y =
        ∑ c : Fin 3, ((-∑ e : Fin 3, (christoffel G a m e y * (G y)⁻¹ e c
          + christoffel G c m e y * (G y)⁻¹ a e)) * hessLoc G f b c y
          + (G y)⁻¹ a c * partialDeriv m (hessLoc G f b c) y) := by
    intro m a b
    have h1 := hR1 (fun c z => (G z)⁻¹ a c) (fun c => hessLoc G f b c) m
      (fun c => hdiff _ (hGi a c)) (fun c => hdiff _ (hHs b c))
    beta_reduce at h1
    rw [h1]
    simp only [ejp_inv_compat G y hAd hsymm hdet]
  
  have hK : ∀ z ∈ V, ∀ p q : Fin 3,
      partialDeriv p (fun w => gradUpLoc G f w q) z
        + ∑ d : Fin 3, christoffel G q p d z * gradUpLoc G f z d
        = ∑ c : Fin 3, (G z)⁻¹ q c * hessLoc G f p c z := by
    intro z hz p q
    rw [(stern_grad_derivs G V hV hG hsymm hpd f hf z hz).1 p q]
    ring
  have hX : ∀ b : Fin 3, ∑ a : Fin 3,
      (partialDeriv a (fun z => ∑ c : Fin 3, (G z)⁻¹ a c * hessLoc G f b c z) y
        + ∑ e : Fin 3, christoffel G a a e y * (∑ c : Fin 3, (G y)⁻¹ e c * hessLoc G f b c y)
        - ∑ e : Fin 3, christoffel G e a b y * (∑ c : Fin 3, (G y)⁻¹ a c * hessLoc G f e c y))
      = partialDeriv b (lapLoc G f) y + ∑ d : Fin 3, ricci G b d y * gradUpLoc G f y d := by
    intro b
    have hc := ejp_div_commutator G V hV hG hsymm hpd (fun d z => gradUpLoc G f z d) hwS y hy b
    beta_reduce at hc
    have e1 : ∑ a : Fin 3,
        (partialDeriv a (fun z => partialDeriv b (fun w => gradUpLoc G f w a) z
            + ∑ d : Fin 3, christoffel G a b d z * gradUpLoc G f z d) y
          + ∑ e : Fin 3, christoffel G a a e y * (partialDeriv b (fun w => gradUpLoc G f w e) y
            + ∑ d : Fin 3, christoffel G e b d y * gradUpLoc G f y d)
          - ∑ e : Fin 3, christoffel G e a b y * (partialDeriv e (fun w => gradUpLoc G f w a) y
            + ∑ d : Fin 3, christoffel G a e d y * gradUpLoc G f y d))
        = ∑ a : Fin 3,
          (partialDeriv a (fun z => ∑ c : Fin 3, (G z)⁻¹ a c * hessLoc G f b c z) y
            + ∑ e : Fin 3, christoffel G a a e y * (∑ c : Fin 3, (G y)⁻¹ e c * hessLoc G f b c y)
            - ∑ e : Fin 3, christoffel G e a b y * (∑ c : Fin 3, (G y)⁻¹ a c * hessLoc G f e c y)) := by
      refine Finset.sum_congr rfl (fun a _ => ?_)
      rw [hcongr a (fun z => partialDeriv b (fun w => gradUpLoc G f w a) z
            + ∑ d : Fin 3, christoffel G a b d z * gradUpLoc G f z d)
          (fun z => ∑ c : Fin 3, (G z)⁻¹ a c * hessLoc G f b c z) (fun z hz => hK z hz b a)]
      simp only [hK y hy]
    have e2 : partialDeriv b (fun z => ∑ a : Fin 3, (partialDeriv a (fun w => gradUpLoc G f w a) z
        + ∑ d : Fin 3, christoffel G a a d z * gradUpLoc G f z d)) y
        = partialDeriv b (lapLoc G f) y := by
      refine hcongr b _ _ (fun z hz => ?_)
      rw [Finset.sum_congr rfl (fun a _ => hK z hz a a)]
      rfl
    linarith [hc, e1, e2]
  
  have h0 := hX 0
  have h1 := hX 1
  have h2 := hX 2
  simp only [hS] at h0 h1 h2
  simp only [Fin.sum_univ_three] at h0 h1 h2
  rw [hlapN]
  simp only [hβ, hs1b, hs1a]
  simp only [hessSqLoc, ricGradLoc, Fin.sum_univ_three]
  simp only [hA 1 0, hA 2 0, hA 2 1, hH 1 0, hH 2 0, hH 2 1, hD 0 1 0, hD 0 2 0, hD 0 2 1,
    hD 1 1 0, hD 1 2 0, hD 1 2 1, hD 2 1 0, hD 2 2 0, hD 2 2 1] at h0 h1 h2 ⊢
  linear_combination gradUpLoc G f y 0 * h0 + gradUpLoc G f y 1 * h1 + gradUpLoc G f y 2 * h2

theorem stern_kato_alg (A H : Matrix (Fin 3) (Fin 3) ℝ) (hA : A.PosDef) (ξ w : Fin 3 → ℝ) (hw : ∀ a : Fin 3, w a = ∑ c : Fin 3, A a c * ξ c) : 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, A i j * ξ i * ξ j ∧ 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i a * A j b * H i j * H a b ∧ 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i j * (H i a * w a) * (H j b * w b) ∧ ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i j * (H i a * w a) * (H j b * w b) ≤ (∑ i : Fin 3, ∑ j : Fin 3, A i j * ξ i * ξ j) * ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i a * A j b * H i j * H a b :=
by
  obtain ⟨B, hB⟩ := Matrix.posSemidef_iff_eq_conjTranspose_mul_self.mp hA.posSemidef
  have hAij : ∀ i j : Fin 3, A i j = ∑ m : Fin 3, B m i * B m j := by
    intro i j
    rw [hB, Matrix.mul_apply]
    simp [Matrix.conjTranspose_apply]
  have hQ : ∀ x : Fin 3 → ℝ, ∑ i : Fin 3, ∑ j : Fin 3, A i j * x i * x j =
      ∑ m : Fin 3, (∑ i : Fin 3, B m i * x i) ^ 2 := by
    intro x
    simp only [hAij, Fin.sum_univ_three]
    ring
  obtain ⟨v, hv⟩ : ∃ v : Fin 3 → ℝ, ∀ i, v i = ∑ a : Fin 3, H i a * w a := ⟨_, fun _ => rfl⟩
  obtain ⟨u, hu⟩ : ∃ u : Fin 3 → ℝ, ∀ m, u m = ∑ i : Fin 3, B m i * ξ i := ⟨_, fun _ => rfl⟩
  obtain ⟨K, hK⟩ : ∃ K : Fin 3 → Fin 3 → ℝ, ∀ m n,
      K m n = ∑ i : Fin 3, ∑ j : Fin 3, B m i * H i j * B n j := ⟨_, fun _ _ => rfl⟩
  have hwB : ∀ a, w a = ∑ n : Fin 3, B n a * u n := by
    intro a
    rw [hw]
    simp only [hAij, hu, Fin.sum_univ_three]
    ring
  have hT1 : ∑ i : Fin 3, ∑ j : Fin 3, A i j * ξ i * ξ j = ∑ m : Fin 3, u m ^ 2 := by
    rw [hQ]
    simp only [hu]
  have hT3 : ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i j * (H i a * w a) * (H j b * w b)
      = ∑ i : Fin 3, ∑ j : Fin 3, A i j * v i * v j := by
    simp only [hv, Fin.sum_univ_three]
    ring
  have hzK : ∀ m : Fin 3, ∑ i : Fin 3, B m i * v i = ∑ n : Fin 3, K m n * u n := by
    intro m
    simp only [hv, hwB, hK, Fin.sum_univ_three]
    ring
  have hT2 : ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i a * A j b * H i j * H a b
      = ∑ m : Fin 3, ∑ n : Fin 3, K m n ^ 2 := by
    simp only [hK, hAij, Fin.sum_univ_three]
    ring
  have hT3' : ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i j * (H i a * w a) * (H j b * w b)
      = ∑ m : Fin 3, (∑ n : Fin 3, K m n * u n) ^ 2 := by
    rw [hT3, hQ v]
    simp only [hzK]
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [hT1]
    exact Finset.sum_nonneg (fun m _ => sq_nonneg _)
  · rw [hT2]
    exact Finset.sum_nonneg (fun m _ => Finset.sum_nonneg (fun n _ => sq_nonneg _))
  · rw [hT3']
    exact Finset.sum_nonneg (fun m _ => sq_nonneg _)
  · rw [hT3', hT1, hT2, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro m _
    exact (Finset.sum_mul_sq_le_sq_mul_sq Finset.univ (K m) u).trans (le_of_eq (mul_comm _ _))

theorem stern_bochner_local (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3) (hV : IsOpen V)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i)
    (hpd : ∀ y ∈ V, (G y).PosDef)
    (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f V) (hharm : ∀ y ∈ V, lapLoc G f y = 0)
    (ε : ℝ) (hε : 0 < ε) :
    ∀ y ∈ V, ricGradLoc G f y ≤ sternPhiLoc G f ε y * lapLoc G (sternPhiLoc G f ε) y ∧
      (0 < gradSqLoc G f y →
        (1 / 2 : ℝ) * hessSqLoc G f y +
            (1 / 2 : ℝ) * gradSqLoc G f y * (scalarCurvatureLocal G y - 2 * levelGaussLoc G f y)
          ≤ sternPhiLoc G f ε y * lapLoc G (sternPhiLoc G f ε) y) :=
by
  intro y hy
  
  obtain ⟨hpdv, hGi, -, -, -⟩ := ejp_coord_smooth G f V hV hG hpd hf
  have hNfun : gradSqLoc G f = fun z => ∑ i : Fin 3, ∑ j : Fin 3,
      (G z)⁻¹ i j * partialDeriv i f z * partialDeriv j f z := by
    funext z; rfl
  have hN : ContDiffOn ℝ ∞ (gradSqLoc G f) V := by
    rw [hNfun]
    apply ContDiffOn.sum
    intro i _
    apply ContDiffOn.sum
    intro j _
    exact ((hGi i j).mul (hpdv f hf i)).mul (hpdv f hf j)
  
  have hN0 : ∀ z ∈ V, 0 ≤ gradSqLoc G f z := by
    intro z hz
    exact (stern_kato_alg (G z)⁻¹ 0 (hpd z hz).inv (fun i => partialDeriv i f z)
      (gradUpLoc G f z) (fun _ => rfl)).1
  have hposN : ∀ z ∈ V, 0 < gradSqLoc G f z + ε := fun z hz => by
    have := hN0 z hz; linarith
  
  have hφ : sternPhiLoc G f ε = fun z => Real.sqrt (gradSqLoc G f z + ε) := by
    funext z; rfl
  have hc := stern_sqrt_lap G V hV (gradSqLoc G f) hN ε hposN y hy
  
  obtain ⟨-, hs1b⟩ := stern_grad_derivs G V hV hG hsymm hpd f hf y hy
  have hQ : (∑ i : Fin 3, ∑ j : Fin 3, (G y)⁻¹ i j * partialDeriv i (gradSqLoc G f) y *
      partialDeriv j (gradSqLoc G f) y) = 4 * hessGradSqLoc G f y := by
    simp only [hs1b, hessGradSqLoc, Fin.sum_univ_three]
    ring
  
  have hb := stern_bochner_identity G V hV hG hsymm hpd f hf y hy
  have hlap0 : ∀ b : Fin 3, partialDeriv b (lapLoc G f) y = 0 := by
    intro b
    have hev : lapLoc G f =ᶠ[𝓝 y] fun _ => (0 : ℝ) :=
      Filter.eventually_of_mem (hV.mem_nhds hy) (fun z hz => hharm z hz)
    unfold partialDeriv
    rw [hev.fderiv_eq]
    simp
  simp only [hlap0, mul_zero, Finset.sum_const_zero, add_zero] at hb
  
  have hP : sternPhiLoc G f ε y * lapLoc G (sternPhiLoc G f ε) y =
      hessSqLoc G f y + ricGradLoc G f y - hessGradSqLoc G f y / (gradSqLoc G f y + ε) := by
    rw [hφ]
    show Real.sqrt (gradSqLoc G f y + ε) * lapLoc G (fun z => Real.sqrt (gradSqLoc G f z + ε)) y = _
    rw [hc, hQ, hb]
    rw [mul_div_mul_left _ _ (by norm_num : (4 : ℝ) ≠ 0)]
  
  have hk := stern_kato_alg (G y)⁻¹ (Matrix.of fun i j => hessLoc G f i j y) (hpd y hy).inv
    (fun i => partialDeriv i f y) (gradUpLoc G f y) (fun _ => rfl)
  simp only [Matrix.of_apply] at hk
  have hk1 : 0 ≤ gradSqLoc G f y := hk.1
  have hk2 : 0 ≤ hessSqLoc G f y := hk.2.1
  have hk3 : 0 ≤ hessGradSqLoc G f y := hk.2.2.1
  have hk4 : hessGradSqLoc G f y ≤ gradSqLoc G f y * hessSqLoc G f y := hk.2.2.2
  have hpy := hposN y hy
  rw [hP]
  refine ⟨?_, ?_⟩
  · 
    have h1 : hessGradSqLoc G f y / (gradSqLoc G f y + ε) ≤ hessSqLoc G f y := by
      rw [div_le_iff₀ hpy]
      nlinarith [mul_nonneg hε.le hk2]
    linarith
  · 
    intro hN2
    have hK : levelGaussLoc G f y = (1 / 2 : ℝ) * (scalarCurvatureLocal G y
        - 2 * ricGradLoc G f y / gradSqLoc G f y
        + (lapLoc G f y - hessGGLoc G f f y / gradSqLoc G f y) ^ 2 / gradSqLoc G f y
        - (hessSqLoc G f y - 2 * hessGradSqLoc G f y / gradSqLoc G f y
            + hessGGLoc G f f y ^ 2 / gradSqLoc G f y ^ 2) / gradSqLoc G f y) := rfl
    rw [hK, hharm y hy]
    have alg : ∀ (N2 R Ric hgg hs hgs : ℝ), 0 < N2 →
        (1 / 2 : ℝ) * hs + (1 / 2 : ℝ) * N2 * (R - 2 * ((1 / 2 : ℝ) * (R - 2 * Ric / N2
          + (0 - hgg / N2) ^ 2 / N2 - (hs - 2 * hgs / N2 + hgg ^ 2 / N2 ^ 2) / N2)))
          = hs + Ric - hgs / N2 := by
      intro N2 R Ric hgg hs hgs hN2'
      have hne : N2 ≠ 0 := ne_of_gt hN2'
      field_simp
      ring
    rw [alg _ _ _ _ _ _ hN2]
    have h2 : hessGradSqLoc G f y / (gradSqLoc G f y + ε) ≤
        hessGradSqLoc G f y / gradSqLoc G f y :=
      div_le_div_of_nonneg_left hk3 hN2 (by linarith)
    linarith

theorem stern_neumann_local (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3) (hV : IsOpen V)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i)
    (hpd : ∀ y ∈ V, (G y).PosDef)
    (f b : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f V) (hb : ContDiffOn ℝ ∞ b V)
    (hneuV : ∀ z ∈ V, b z = 0 → gradInnerLoc G f b z = 0)
    (y : E3) (hy : y ∈ V) (hby : b y = 0) (hdb : 0 < gradSqLoc G b y)
    (ε : ℝ) (hε : 0 < ε) :
    -(gradInnerLoc G (sternPhiLoc G f ε) b y) = hessGGLoc G b f y / sternPhiLoc G f ε y :=
by
  have hVy : V ∈ 𝓝 y := hV.mem_nhds hy
  have hinf0 : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  have h1inf : (1 : WithTop ℕ∞) ≤ ∞ := by exact_mod_cast (le_top : (1 : ℕ∞) ≤ ⊤)
  
  have hGT : ∀ z, Matrix.transpose (G z) = G z := fun z => Matrix.ext fun i j => by
    rw [Matrix.transpose_apply]; exact hsymm z j i
  have hAsymG : ∀ z (i j : Fin 3), (G z)⁻¹ i j = (G z)⁻¹ j i := by
    intro z i j
    have h : Matrix.transpose ((G z)⁻¹) j i = (Matrix.transpose (G z))⁻¹ j i := by
      rw [Matrix.transpose_nonsing_inv]
    rw [Matrix.transpose_apply, hGT z] at h
    exact h
  have hdet : ∀ z ∈ V, (G z).det ≠ 0 := fun z hz => ((hpd z hz).det_pos).ne'
  
  have hinvC : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => (G z)⁻¹ i j) V := by
    have h00 := hG 0 0
    have h01 := hG 0 1
    have h02 := hG 0 2
    have h10 := hG 1 0
    have h11 := hG 1 1
    have h12 := hG 1 2
    have h20 := hG 2 0
    have h21 := hG 2 1
    have h22 := hG 2 2
    have hdC : ContDiffOn ℝ ∞ (fun z => (G z).det) V := by
      simp only [Matrix.det_fin_three]
      fun_prop
    have hdi : ContDiffOn ℝ ∞ (fun z => ((G z).det)⁻¹) V := hdC.inv hdet
    have key : ∀ z (i j : Fin 3), (G z)⁻¹ i j = ((G z).det)⁻¹ * (G z).adjugate i j := by
      intro z i j
      rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
    intro i j
    have hadj : ContDiffOn ℝ ∞ (fun z => (G z).adjugate i j) V := by
      fin_cases i <;> fin_cases j <;> simp [Matrix.adjugate_fin_three] <;> fun_prop
    exact (hdi.mul hadj).congr (fun z _ => key z i j)
  have hGd : ∀ i j : Fin 3, DifferentiableAt ℝ (fun z => G z i j) y := fun i j =>
    ((hG i j).contDiffAt hVy).differentiableAt hinf0
  have hAd : ∀ i j : Fin 3, DifferentiableAt ℝ (fun z => (G z)⁻¹ i j) y := fun i j =>
    ((hinvC i j).contDiffAt hVy).differentiableAt hinf0
  
  have hdA : ∀ k i l : Fin 3, partialDeriv k (fun z => (G z)⁻¹ i l) y =
      -∑ a : Fin 3, ∑ c : Fin 3,
        (G y)⁻¹ i a * partialDeriv k (fun z => G z a c) y * (G y)⁻¹ c l := by
    intro k i l
    have hstar : ∀ j : Fin 3, ∑ c : Fin 3, (partialDeriv k (fun z => (G z)⁻¹ i c) y * G y c j
        + (G y)⁻¹ i c * partialDeriv k (fun z => G z c j) y) = 0 := by
      intro j
      have hev : (fun z => ∑ c : Fin 3, (G z)⁻¹ i c * G z c j) =ᶠ[𝓝 y]
          (fun _ => if i = j then (1 : ℝ) else 0) := by
        filter_upwards [hVy] with z hz
        have h1 : (G z)⁻¹ * G z = 1 :=
          Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr (hdet z hz))
        have h2 := congrArg (fun M => M i j) h1
        simpa [Matrix.mul_apply, Matrix.one_apply] using h2
      have hD : HasFDerivAt (fun z => ∑ c : Fin 3, (G z)⁻¹ i c * G z c j)
          (∑ c : Fin 3, ((G y)⁻¹ i c • fderiv ℝ (fun z => G z c j) y
            + G y c j • fderiv ℝ (fun z => (G z)⁻¹ i c) y)) y := by
        apply HasFDerivAt.fun_sum
        intro c _
        exact (hAd i c).hasFDerivAt.mul (hGd c j).hasFDerivAt
      have hD0 : HasFDerivAt (fun z => ∑ c : Fin 3, (G z)⁻¹ i c * G z c j)
          (0 : E3 →L[ℝ] ℝ) y :=
        (hasFDerivAt_const _ y).congr_of_eventuallyEq hev
      have h3 := congrArg (fun L => L (e k)) (hD.unique hD0)
      simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul, ContinuousLinearMap.zero_apply] at h3
      refine Eq.trans (Finset.sum_congr rfl (fun c _ => ?_)) h3
      simp only [partialDeriv]
      ring
    have hGA : ∀ c : Fin 3, ∑ j : Fin 3, G y c j * (G y)⁻¹ j l = if c = l then 1 else 0 := by
      intro c
      have h1 : G y * (G y)⁻¹ = 1 :=
        Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr (hdet y hy))
      have h2 := congrArg (fun M => M c l) h1
      simpa [Matrix.mul_apply, Matrix.one_apply] using h2
    have e1 : partialDeriv k (fun z => (G z)⁻¹ i l) y = ∑ c : Fin 3,
        partialDeriv k (fun z => (G z)⁻¹ i c) y * ∑ j : Fin 3, G y c j * (G y)⁻¹ j l := by
      simp only [hGA, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    rw [e1]
    have e2 : ∀ j : Fin 3, ∑ c : Fin 3, partialDeriv k (fun z => (G z)⁻¹ i c) y * G y c j =
        -∑ c : Fin 3, (G y)⁻¹ i c * partialDeriv k (fun z => G z c j) y := by
      intro j
      have := hstar j
      rw [Finset.sum_add_distrib] at this
      linarith
    have e20 := e2 0
    have e21 := e2 1
    have e22 := e2 2
    simp only [Fin.sum_univ_three] at e20 e21 e22 ⊢
    linear_combination (G y)⁻¹ 0 l * e20 + (G y)⁻¹ 1 l * e21 + (G y)⁻¹ 2 l * e22
  
  have hpartC : ∀ (u : E3 → ℝ), ContDiffOn ℝ ∞ u V → ∀ i : Fin 3,
      ContDiffOn ℝ ∞ (partialDeriv i u) V := by
    intro u hu i
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ u) V := hu.fderiv_of_isOpen hV (le_of_eq rfl)
    exact h1.clm_apply contDiffOn_const
  have hgiC : ∀ u w : E3 → ℝ, ContDiffOn ℝ ∞ u V → ContDiffOn ℝ ∞ w V →
      ContDiffOn ℝ ∞ (gradInnerLoc G u w) V := by
    intro u w hu hw
    show ContDiffOn ℝ ∞ (fun z => ∑ i : Fin 3, ∑ j : Fin 3,
      (G z)⁻¹ i j * partialDeriv i u z * partialDeriv j w z) V
    apply ContDiffOn.sum
    intro i _
    apply ContDiffOn.sum
    intro j _
    exact ((hinvC i j).mul (hpartC u hu i)).mul (hpartC w hw j)
  
  have hlag : ∀ (F : E3 → ℝ), ContDiffAt ℝ 1 b y → ContDiffAt ℝ 1 F y →
      (∀ z ∈ V, b z = b y → F z = F y) → fderiv ℝ b y ≠ 0 →
      ∀ w : E3, fderiv ℝ b y w = 0 → fderiv ℝ F y w = 0 := by
    intro F hb1 hF1 hloc hne w hw
    have hext : IsLocalExtrOn F {z | b z = b y} y := by
      refine Or.inl ?_
      show ∀ᶠ z in 𝓝[{z | b z = b y}] y, F y ≤ F z
      filter_upwards [mem_nhdsWithin_of_mem_nhds hVy, self_mem_nhdsWithin] with z hz1 hz2
      exact le_of_eq (hloc z hz1 hz2).symm
    obtain ⟨a, c, hac, hsum⟩ := hext.exists_multipliers_of_hasStrictFDerivAt_1d
      (hb1.hasStrictFDerivAt one_ne_zero) (hF1.hasStrictFDerivAt one_ne_zero)
    have h := congrArg (fun L => L w) hsum
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul, hw,
      mul_zero, zero_add, ContinuousLinearMap.zero_apply] at h
    rcases mul_eq_zero.mp h with hc | hc
    · exfalso
      have ha : a ≠ 0 := by
        intro ha
        exact hac (by simp [ha, hc])
      apply hne
      have h5 : a • fderiv ℝ b y = 0 := by simpa [hc] using hsum
      exact (smul_eq_zero.mp h5).resolve_left ha
    · exact hc
  
  have hgiP : ∀ u w : E3 → ℝ, (∀ i : Fin 3, DifferentiableAt ℝ (partialDeriv i u) y) →
      (∀ j : Fin 3, DifferentiableAt ℝ (partialDeriv j w) y) → ∀ k : Fin 3,
      partialDeriv k (gradInnerLoc G u w) y = ∑ i : Fin 3, ∑ j : Fin 3,
        (partialDeriv k (fun z => (G z)⁻¹ i j) y * partialDeriv i u y * partialDeriv j w y
          + (G y)⁻¹ i j * partialDeriv k (partialDeriv i u) y * partialDeriv j w y
          + (G y)⁻¹ i j * partialDeriv i u y * partialDeriv k (partialDeriv j w) y) := by
    intro u w hu hw k
    have hD : HasFDerivAt (gradInnerLoc G u w) (∑ i : Fin 3, ∑ j : Fin 3,
        (((G y)⁻¹ i j * partialDeriv i u y) • fderiv ℝ (partialDeriv j w) y
          + partialDeriv j w y • ((G y)⁻¹ i j • fderiv ℝ (partialDeriv i u) y
            + partialDeriv i u y • fderiv ℝ (fun z => (G z)⁻¹ i j) y))) y := by
      have hfun : gradInnerLoc G u w = fun z => ∑ i : Fin 3, ∑ j : Fin 3,
          (G z)⁻¹ i j * partialDeriv i u z * partialDeriv j w z := rfl
      rw [hfun]
      apply HasFDerivAt.fun_sum
      intro i _
      apply HasFDerivAt.fun_sum
      intro j _
      exact ((hAd i j).hasFDerivAt.mul (hu i).hasFDerivAt).mul (hw j).hasFDerivAt
    rw [show partialDeriv k (gradInnerLoc G u w) y = fderiv ℝ (gradInnerLoc G u w) y (e k)
      from rfl, hD.fderiv]
    simp only [ContinuousLinearMap.sum_apply, ContinuousLinearMap.add_apply,
      ContinuousLinearMap.smul_apply, smul_eq_mul]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    simp only [partialDeriv]
    ring
  
  have hfy : ContDiffAt ℝ ∞ f y := hf.contDiffAt hVy
  have hsch : ∀ i k : Fin 3,
      partialDeriv k (partialDeriv i f) y = partialDeriv i (partialDeriv k f) y := by
    have h2 : ContDiffAt ℝ 1 (fderiv ℝ f) y :=
      (hfy.fderiv_right (m := ∞) (le_of_eq rfl)).of_le h1inf
    have hd : DifferentiableAt ℝ (fderiv ℝ f) y := h2.differentiableAt one_ne_zero
    have hsym := hfy.isSymmSndFDerivAt (by
      rw [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.mpr le_top)
    have hpp : ∀ i k : Fin 3,
        partialDeriv k (partialDeriv i f) y = fderiv ℝ (fderiv ℝ f) y (e k) (e i) := by
      intro i k
      show fderiv ℝ (fun z => fderiv ℝ f z (e i)) y (e k) = _
      rw [fderiv_clm_apply hd (differentiableAt_const (e i))]
      simp
    intro i k
    rw [hpp, hpp]
    exact hsym _ _
  
  have hSnn : 0 ≤ gradSqLoc G f y := by
    have hPS := (hpd y hy).inv.posSemidef
    have h3 := hPS.dotProduct_mulVec_nonneg (fun i => partialDeriv i f y)
    have heq : gradSqLoc G f y = star (fun i => partialDeriv i f y) ⬝ᵥ
        ((G y)⁻¹.mulVec (fun i => partialDeriv i f y)) := by
      simp only [gradSqLoc, gradInnerLoc, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
        Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      ring
    rw [heq]
    exact h3
  have hpos : 0 < gradSqLoc G f y + ε := by linarith
  have hφpos : 0 < sternPhiLoc G f ε y := Real.sqrt_pos.mpr hpos
  have hSd : DifferentiableAt ℝ (gradSqLoc G f) y :=
    ((hgiC f f hf hf).contDiffAt hVy).differentiableAt hinf0
  have hφP : ∀ k : Fin 3, partialDeriv k (sternPhiLoc G f ε) y =
      partialDeriv k (gradSqLoc G f) y / (2 * sternPhiLoc G f ε y) := by
    intro k
    have h1 : HasFDerivAt (fun z => gradSqLoc G f z + ε) (fderiv ℝ (gradSqLoc G f) y) y :=
      hSd.hasFDerivAt.add_const ε
    have h2 := h1.sqrt hpos.ne'
    have h3 : HasFDerivAt (sternPhiLoc G f ε)
        ((1 / (2 * Real.sqrt (gradSqLoc G f y + ε))) • fderiv ℝ (gradSqLoc G f) y) y := h2
    show fderiv ℝ (sternPhiLoc G f ε) y (e k) =
      fderiv ℝ (gradSqLoc G f) y (e k) / (2 * sternPhiLoc G f ε y)
    rw [h3.fderiv, ContinuousLinearMap.smul_apply, smul_eq_mul]
    simp only [sternPhiLoc]
    ring
  
  have halg : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ) (dA D : Fin 3 → Fin 3 → Fin 3 → ℝ)
      (f1 b1 : Fin 3 → ℝ) (f2 b2 : Fin 3 → Fin 3 → ℝ) (P Q : Fin 3 → ℝ),
      (∀ i j, A i j = A j i) →
      (∀ k i j, dA k i j = -∑ a : Fin 3, ∑ c : Fin 3, A i a * D k a c * A c j) →
      (∀ k i, f2 k i = f2 i k) →
      (∀ k, P k = ∑ i : Fin 3, ∑ j : Fin 3, (dA k i j * f1 i * b1 j + A i j * f2 k i * b1 j
        + A i j * f1 i * b2 k j)) →
      (∀ k, Q k = ∑ i : Fin 3, ∑ j : Fin 3, (dA k i j * f1 i * f1 j + A i j * f2 k i * f1 j
        + A i j * f1 i * f2 k j)) →
      ∑ k : Fin 3, (∑ a : Fin 3, A k a * f1 a) * P k =
        (1 / 2 : ℝ) * ∑ k : Fin 3, ∑ l : Fin 3, A k l * Q k * b1 l +
        ∑ i : Fin 3, ∑ j : Fin 3, (∑ a : Fin 3, A i a * f1 a) * (∑ a : Fin 3, A j a * f1 a) *
          (b2 i j - ∑ m : Fin 3,
            ((1 / 2 : ℝ) * ∑ l : Fin 3, A m l * (D i j l + D j i l - D l i j)) * b1 m) := by
    intro A dA D f1 b1 f2 b2 P Q hA hdA' hf2 hP hQ
    simp only [hP, hQ, hdA']
    simp only [Fin.sum_univ_three]
    rw [hA 1 0, hA 2 0, hA 2 1, hf2 1 0, hf2 2 0, hf2 2 1]
    ring
  
  have hpfd : ∀ i : Fin 3, DifferentiableAt ℝ (partialDeriv i f) y := fun i =>
    ((hpartC f hf i).contDiffAt hVy).differentiableAt hinf0
  have hpbd : ∀ i : Fin 3, DifferentiableAt ℝ (partialDeriv i b) y := fun i =>
    ((hpartC b hb i).contDiffAt hVy).differentiableAt hinf0
  have hb1 : ContDiffAt ℝ 1 b y := (hb.contDiffAt hVy).of_le h1inf
  have hFd1 : ContDiffAt ℝ 1 (gradInnerLoc G f b) y :=
    ((hgiC f b hf hb).contDiffAt hVy).of_le h1inf
  
  have hbne : fderiv ℝ b y ≠ 0 := by
    intro h0
    have h4 : gradSqLoc G b y = 0 := by
      simp only [gradSqLoc, gradInnerLoc, partialDeriv, h0, ContinuousLinearMap.zero_apply,
        mul_zero, Finset.sum_const_zero]
    linarith
  
  have hFnz : gradInnerLoc G f b y = 0 := hneuV y hy hby
  have hlin : ∀ (L : E3 →L[ℝ] ℝ), L (∑ i : Fin 3, gradUpLoc G f y i • e i) =
      ∑ i : Fin 3, gradUpLoc G f y i * L (e i) := by
    intro L
    simp only [map_sum, map_smul, smul_eq_mul]
  have hbw : fderiv ℝ b y (∑ i : Fin 3, gradUpLoc G f y i • e i) = 0 := by
    rw [hlin]
    have h4 : gradInnerLoc G f b y = ∑ i : Fin 3, gradUpLoc G f y i * fderiv ℝ b y (e i) := by
      simp only [gradInnerLoc, gradUpLoc, partialDeriv, Fin.sum_univ_three]
      rw [hAsymG y 1 0, hAsymG y 2 0, hAsymG y 2 1]
      ring
    rw [← h4, hFnz]
  
  have hFw := hlag (gradInnerLoc G f b) hb1 hFd1
    (fun z hz hbz => by rw [hneuV z hz (hbz.trans hby), hFnz]) hbne _ hbw
  rw [hlin] at hFw
  have hsum0 : ∑ k : Fin 3, gradUpLoc G f y k * partialDeriv k (gradInnerLoc G f b) y = 0 := hFw
  
  have hmain : ∑ k : Fin 3, gradUpLoc G f y k * partialDeriv k (gradInnerLoc G f b) y =
      (1 / 2 : ℝ) * ∑ k : Fin 3, ∑ l : Fin 3,
        (G y)⁻¹ k l * partialDeriv k (gradSqLoc G f) y * partialDeriv l b y +
      hessGGLoc G b f y :=
    halg (G y)⁻¹ (fun k i j => partialDeriv k (fun z => (G z)⁻¹ i j) y)
      (fun k a c => partialDeriv k (fun z => G z a c) y)
      (fun i => partialDeriv i f y) (fun j => partialDeriv j b y)
      (fun k i => partialDeriv k (partialDeriv i f) y)
      (fun k j => partialDeriv k (partialDeriv j b) y)
      (fun k => partialDeriv k (gradInnerLoc G f b) y)
      (fun k => partialDeriv k (gradSqLoc G f) y)
      (hAsymG y) hdA (fun k i => hsch i k)
      (hgiP f b hpfd hpbd) (hgiP f f hpfd hpfd)
  
  have hgφ : gradInnerLoc G (sternPhiLoc G f ε) b y = ((1 / 2 : ℝ) * ∑ k : Fin 3, ∑ l : Fin 3,
      (G y)⁻¹ k l * partialDeriv k (gradSqLoc G f) y * partialDeriv l b y) /
        sternPhiLoc G f ε y := by
    simp only [gradInnerLoc, hφP]
    rw [Finset.mul_sum, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro k _
    rw [Finset.mul_sum, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro l _
    ring
  rw [hgφ]
  have hS : (1 / 2 : ℝ) * ∑ k : Fin 3, ∑ l : Fin 3,
      (G y)⁻¹ k l * partialDeriv k (gradSqLoc G f) y * partialDeriv l b y =
        -hessGGLoc G b f y := by linarith [hmain, hsum0]
  rw [hS, neg_div, neg_neg]

theorem morse_sard_E3 (f : E3 → ℝ) (V : Set E3) (hV : IsOpen V) (hf : ContDiffOn ℝ ∞ f V) :
    MeasureTheory.volume (f '' {y | y ∈ V ∧ fderiv ℝ f y = 0}) = 0 :=
by
  
  have s1 : ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
      (f : E → ℝ) (U B : Set E) (hU : IsOpen U) (hf : ContDiffOn ℝ ∞ f U)
      (hBU : B ⊆ U) (hB : Convex ℝ B) (k : ℕ) (z : E) (hz : z ∈ B)
      (hflat : ∀ j : ℕ, 1 ≤ j → j ≤ k → iteratedFDeriv ℝ j f z = 0)
      (Mb : ℝ) (hM : ∀ v ∈ B, ‖iteratedFDeriv ℝ (k+1) f v‖ ≤ Mb),
      ∀ w ∈ B, |f w - f z| ≤ Mb * ‖w - z‖ ^ (k+1) := by
    intro E _ _ f U B hU hf hBU hB k z hz hflat Mb hM
    have hdiff : ∀ j : ℕ, ∀ v ∈ U, DifferentiableAt ℝ (iteratedFDeriv ℝ j f) v := by
      intro j v hv
      have h1 : ContDiffAt ℝ ∞ f v := hf.contDiffAt (hU.mem_nhds hv)
      have h2 : ContDiffAt ℝ ∞ (iteratedFDeriv ℝ j f) v :=
        h1.iteratedFDeriv_right (le_of_eq (by norm_cast))
      exact h2.differentiableAt (by simp)
    have hM0 : 0 ≤ Mb := le_trans (norm_nonneg _) (hM z hz)
    have R : ∀ i : ℕ, i ≤ k → ∀ w ∈ B,
        ‖iteratedFDeriv ℝ (k + 1 - i) f w‖ ≤ Mb * ‖w - z‖ ^ i := by
      intro i
      induction i with
      | zero => intro _ w hw; simpa using hM w hw
      | succ i ih =>
        intro hi w hw
        have hseg : segment ℝ z w ⊆ B := hB.segment_subset hz hw
        have hj : k + 1 - i = (k - i) + 1 := by omega
        have key : ‖iteratedFDeriv ℝ (k - i) f w - iteratedFDeriv ℝ (k - i) f z‖
            ≤ (Mb * ‖w - z‖ ^ i) * ‖w - z‖ := by
          apply Convex.norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℝ) (s := segment ℝ z w)
          · intro v hv; exact hdiff _ v (hBU (hseg hv))
          · intro v hv
            rw [norm_fderiv_iteratedFDeriv, ← hj]
            calc _ ≤ Mb * ‖v - z‖ ^ i := ih (by omega) v (hseg hv)
              _ ≤ Mb * ‖w - z‖ ^ i :=
                mul_le_mul_of_nonneg_left
                  (pow_le_pow_left₀ (norm_nonneg _) (norm_sub_le_of_mem_segment hv) i) hM0
          · exact convex_segment z w
          · exact left_mem_segment ℝ z w
          · exact right_mem_segment ℝ z w
        rw [hflat (k - i) (by omega) (by omega), sub_zero] at key
        have : k + 1 - (i + 1) = k - i := by omega
        rw [this, pow_succ, ← mul_assoc]
        exact key
    intro w hw
    have hseg : segment ℝ z w ⊆ B := hB.segment_subset hz hw
    have key : ‖f w - f z‖ ≤ (Mb * ‖w - z‖ ^ k) * ‖w - z‖ := by
      apply Convex.norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℝ) (s := segment ℝ z w)
      · intro v hv
        have h1 : ContDiffAt ℝ ∞ f v := hf.contDiffAt (hU.mem_nhds (hBU (hseg hv)))
        exact h1.differentiableAt (by simp)
      · intro v hv
        rw [← norm_iteratedFDeriv_one]
        have := R k le_rfl v (hseg hv)
        rw [show k + 1 - k = 1 by omega] at this
        calc _ ≤ Mb * ‖v - z‖ ^ k := this
          _ ≤ Mb * ‖w - z‖ ^ k :=
            mul_le_mul_of_nonneg_left
              (pow_le_pow_left₀ (norm_nonneg _) (norm_sub_le_of_mem_segment hv) k) hM0
      · exact convex_segment z w
      · exact left_mem_segment ℝ z w
      · exact right_mem_segment ℝ z w
    rw [← Real.norm_eq_abs, pow_succ, ← mul_assoc]
    exact key
  
  have s2 : ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
      [FiniteDimensional ℝ E] (f : E → ℝ) (s : Set E) (k : ℕ) (hk : Module.finrank ℝ E ≤ k)
      (hloc : ∀ x ∈ s, ∃ ρ : ℝ, 0 < ρ ∧ ∃ Mb : ℝ, ∀ y ∈ s, ∀ w ∈ s, dist y x < ρ → dist w x < ρ →
        |f y - f w| ≤ Mb * ‖y - w‖ ^ (k+1)),
      MeasureTheory.volume (f '' s) = 0 := by
    intro E _ _ _ f s k hk hloc
    have hr : (0 : NNReal) < (k + 1 : NNReal) := by positivity
    have hdim : dimH (f '' s) ≤ dimH s / ((k + 1 : NNReal) : ENNReal) := by
      apply dimH_image_le_of_locally_holder_on hr
      intro x hx
      obtain ⟨ρ, hρ, Mb, hM⟩ := hloc x hx
      refine ⟨Mb.toNNReal, s ∩ Metric.ball x ρ,
        inter_mem_nhdsWithin s (Metric.ball_mem_nhds x hρ), ?_⟩
      intro y hy w hw
      rw [edist_dist, edist_dist, Real.dist_eq, dist_eq_norm]
      have h1 := hM y hy.1 w hw.1 hy.2 hw.2
      have h2 : |f y - f w| ≤ (Mb.toNNReal : ℝ) * ‖y - w‖ ^ (k+1) :=
        h1.trans (mul_le_mul_of_nonneg_right (Real.le_coe_toNNReal Mb) (by positivity))
      calc ENNReal.ofReal |f y - f w|
          ≤ ENNReal.ofReal ((Mb.toNNReal : ℝ) * ‖y - w‖ ^ (k+1)) := ENNReal.ofReal_le_ofReal h2
        _ = (Mb.toNNReal : ENNReal) * ENNReal.ofReal ‖y - w‖ ^ (((k + 1 : NNReal)) : ℝ) := by
          rw [ENNReal.ofReal_mul (by positivity),
            ENNReal.ofReal_rpow_of_nonneg (norm_nonneg _) (by positivity),
            ENNReal.ofReal_coe_nnreal]
          congr 2
          rw [show (((k + 1 : NNReal)) : ℝ) = ((k + 1 : ℕ) : ℝ) by push_cast; ring,
            Real.rpow_natCast]
    have hs : dimH s ≤ (k : ENNReal) := by
      calc dimH s ≤ dimH (Set.univ : Set E) := dimH_mono (Set.subset_univ _)
        _ = Module.finrank ℝ E := Real.dimH_univ_eq_finrank E
        _ ≤ k := by exact_mod_cast hk
    have hlt : dimH (f '' s) < ((1 : NNReal) : ENNReal) := by
      calc dimH (f '' s) ≤ dimH s / ((k + 1 : NNReal) : ENNReal) := hdim
        _ ≤ (k : ENNReal) / ((k + 1 : NNReal) : ENNReal) := by gcongr
        _ < 1 := by
          apply ENNReal.div_lt_of_lt_mul
          rw [one_mul]
          push_cast
          exact ENNReal.lt_add_right (ENNReal.natCast_ne_top k) one_ne_zero
        _ = _ := by simp
    have := hausdorffMeasure_of_dimH_lt hlt
    rw [NNReal.coe_one, MeasureTheory.hausdorffMeasure_real] at this
    exact this
  
  have s5 : ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
      (f : E → ℝ) (U : Set E) (hU : IsOpen U) (hf : ContDiffOn ℝ ∞ f U) (k : ℕ) (z : E)
      (hzU : z ∈ U) (hz : iteratedFDeriv ℝ (k+1) f z ≠ 0),
      ∃ h : E → ℝ, ContDiffOn ℝ ∞ h U ∧ fderiv ℝ h z ≠ 0 ∧
        ∀ x, iteratedFDeriv ℝ k f x = 0 → h x = 0 := by
    intro E _ _ f U hU hf k z hzU hz
    obtain ⟨m, hm⟩ : ∃ m : Fin (k+1) → E, iteratedFDeriv ℝ (k+1) f z m ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      exact hz (ContinuousMultilinearMap.ext hcon)
    let A := ContinuousMultilinearMap.apply ℝ (fun _ : Fin k => E) ℝ (Fin.tail m)
    have hD : ∀ x ∈ U, ContDiffAt ℝ ∞ (iteratedFDeriv ℝ k f) x := fun x hx =>
      (hf.contDiffAt (hU.mem_nhds hx)).iteratedFDeriv_right (le_of_eq (by norm_cast))
    refine ⟨fun x => A (iteratedFDeriv ℝ k f x), ?_, ?_, ?_⟩
    · intro x hx
      exact (A.contDiff.contDiffAt.comp x (hD x hx)).contDiffWithinAt
    · intro h0
      have hd : DifferentiableAt ℝ (iteratedFDeriv ℝ k f) z :=
        (hD z hzU).differentiableAt (by simp)
      have hfd : fderiv ℝ (fun x => A (iteratedFDeriv ℝ k f x)) z =
          A.comp (fderiv ℝ (iteratedFDeriv ℝ k f) z) :=
        (A.hasFDerivAt.comp z hd.hasFDerivAt).fderiv
      apply hm
      rw [iteratedFDeriv_succ_apply_left]
      have h2 := congrArg (fun L => L (m 0)) (hfd.symm.trans h0)
      simpa [A] using h2
    · intro x hx
      simp [A, hx]
  
  have s6 : ∀ (E : Type) [TopologicalSpace E] [SecondCountableTopology E]
      (f : E → ℝ) (s : Set E)
      (hloc : ∀ x ∈ s, ∃ W : Set E, IsOpen W ∧ x ∈ W ∧ MeasureTheory.volume (f '' (s ∩ W)) = 0),
      MeasureTheory.volume (f '' s) = 0 := by
    intro E _ _ f s hloc
    choose! W hWo hxW hW0 using hloc
    obtain ⟨t, hts, htc, hcov⟩ := TopologicalSpace.countable_cover_nhdsWithin
      (f := fun x => s ∩ W x) (s := s)
      (fun x hx => inter_mem_nhdsWithin s ((hWo x hx).mem_nhds (hxW x hx)))
    apply measure_mono_null (Set.image_mono hcov)
    rw [Set.image_iUnion₂]
    exact (measure_biUnion_null_iff htc).2 (fun x hx => hW0 x (hts hx))
  
  have s4 : ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
      [FiniteDimensional ℝ E] (h : E → ℝ) (U : Set E) (hU : IsOpen U) (hh : ContDiffOn ℝ ∞ h U)
      (z : E) (hzU : z ∈ U) (hdz : fderiv ℝ h z ≠ 0),
      ∃ K : Submodule ℝ E, Module.finrank ℝ K + 1 = Module.finrank ℝ E ∧
        ∃ W : Set E, IsOpen W ∧ z ∈ W ∧ ∃ O : Set K, IsOpen O ∧ ∃ φ : K → E,
          ContDiffOn ℝ ∞ φ O ∧ Set.MapsTo φ O U ∧ ∀ x ∈ W, h x = 0 → ∃ u ∈ O, φ u = x := by
    intro E _ _ _ h U hU hh z hzU hdz
    set ℓ := fderiv ℝ h z with hℓ
    obtain ⟨v₀, hv₀⟩ : ∃ v₀, ℓ v₀ ≠ 0 := by
      by_contra hcon; push_neg at hcon; exact hdz (ContinuousLinearMap.ext hcon)
    set v : E := (ℓ v₀)⁻¹ • v₀ with hv
    have hℓv : ℓ v = 1 := by simp [hv, hv₀]
    set K : Submodule ℝ E := LinearMap.ker (ℓ : E →ₗ[ℝ] ℝ) with hK
    have hrange : LinearMap.range (ℓ : E →ₗ[ℝ] ℝ) = ⊤ := by
      rw [LinearMap.range_eq_top]
      intro t; exact ⟨t • v, by simp [hℓv]⟩
    have hfin : Module.finrank ℝ K + 1 = Module.finrank ℝ E := by
      have := LinearMap.finrank_range_add_finrank_ker (ℓ : E →ₗ[ℝ] ℝ)
      rw [hrange, finrank_top, Module.finrank_self] at this
      change 1 + Module.finrank ℝ K = _ at this
      omega
    refine ⟨K, hfin, ?_⟩
    have hπmem : ∀ y : E, (ContinuousLinearMap.id ℝ E - ℓ.smulRight v) y ∈ K := by
      intro y
      simp [hK, hℓv]
    set pr : E →L[ℝ] K := (ContinuousLinearMap.id ℝ E - ℓ.smulRight v).codRestrict K hπmem
      with hπ
    have hπapp : ∀ y, (pr y : E) = y - ℓ y • v := fun y => by simp [hπ]
    set Ψ : E → K × ℝ := fun x => (pr (x - z), h x) with hΨ
    set L : E →L[ℝ] K × ℝ := pr.prod ℓ with hL
    set L' : K × ℝ →L[ℝ] E :=
      (K.subtypeL).coprod (ContinuousLinearMap.smulRight (ContinuousLinearMap.id ℝ ℝ) v) with hL'
    have hL'app : ∀ p : K × ℝ, L' p = (p.1 : E) + p.2 • v := fun p => by simp [hL']
    have hLLi : Function.LeftInverse L' L := by
      intro y
      rw [hL'app]
      simp [hL, hπapp]
    have hLRi : Function.RightInverse L' L := by
      rintro ⟨u, t⟩
      have hu : ℓ u = 0 := u.2
      rw [hL'app]
      apply Prod.ext
      · apply Subtype.ext
        simp [hL, hπapp, hu, hℓv]
      · simp [hL, hu, hℓv]
    set eL := ContinuousLinearEquiv.equivOfInverse L L' hLLi hLRi with heL
    have hcoe : (eL : E →L[ℝ] K × ℝ) = L :=
      ContinuousLinearMap.ext (fun y => by
        rw [heL]; exact ContinuousLinearEquiv.equivOfInverse_apply L L' hLLi hLRi y)
    have hΨs : ContDiffOn ℝ ∞ Ψ U :=
      ((pr.contDiff.comp (contDiff_id.sub contDiff_const)).contDiffOn).prodMk hh
    have hΨc : ∀ x ∈ U, ContDiffAt ℝ ∞ Ψ x := fun x hx => hΨs.contDiffAt (hU.mem_nhds hx)
    have hΨz : HasFDerivAt Ψ (eL : E →L[ℝ] K × ℝ) z := by
      rw [hcoe, hL]
      have hhd : DifferentiableAt ℝ h z :=
        (hh.contDiffAt (hU.mem_nhds hzU)).differentiableAt (by simp)
      have h1 : HasFDerivAt (fun x => pr (x - z)) pr z := by
        have := pr.hasFDerivAt.comp z ((hasFDerivAt_id z).sub_const z)
        rw [ContinuousLinearMap.comp_id] at this
        exact this
      exact h1.prodMk hhd.hasFDerivAt
    set S0 : Set E := U ∩ (fderiv ℝ Ψ) ⁻¹'
      Set.range (ContinuousLinearEquiv.toContinuousLinearMap : (E ≃L[ℝ] K × ℝ) → (E →L[ℝ] K × ℝ))
      with hS0def
    have hS0 : IsOpen S0 :=
      (hΨs.continuousOn_fderiv_of_isOpen hU (by simp)).isOpen_inter_preimage hU
        ContinuousLinearEquiv.isOpen
    have hzS0 : z ∈ S0 := ⟨hzU, eL, hΨz.fderiv.symm⟩
    set P := ContDiffAt.toOpenPartialHomeomorph Ψ (hΨc z hzU) hΨz (by simp) with hP
    have hPcoe : (P : E → K × ℝ) = Ψ := ContDiffAt.toOpenPartialHomeomorph_coe _ _ _
    set T : Set (K × ℝ) := P.target ∩ P.symm ⁻¹' S0 with hT
    have hTo : IsOpen T := P.continuousOn_symm.isOpen_inter_preimage P.open_target hS0
    have hsymm : ∀ a ∈ T, ContDiffAt ℝ ∞ P.symm a := by
      intro a ha
      obtain ⟨e', he'⟩ := ha.2.2
      have hxU : P.symm a ∈ U := ha.2.1
      have hd : HasFDerivAt Ψ (e' : E →L[ℝ] K × ℝ) (P.symm a) := by
        rw [he']
        exact ((hΨc _ hxU).differentiableAt (by simp)).hasFDerivAt
      apply P.contDiffAt_symm ha.1 (f₀' := e')
      · rw [hPcoe]; exact hd
      · rw [hPcoe]; exact hΨc _ hxU
    set O : Set K := (fun u : K => ((u, 0) : K × ℝ)) ⁻¹' T with hO
    have hOo : IsOpen O := hTo.preimage (continuous_id.prodMk continuous_const)
    refine ⟨P.source ∩ S0, P.open_source.inter hS0,
      ⟨ContDiffAt.mem_toOpenPartialHomeomorph_source _ _ _, hzS0⟩, O, hOo,
      fun u => P.symm (u, 0), ?_, ?_, ?_⟩
    · intro u hu
      have h1 : ContDiffAt ℝ ∞ (fun u : K => ((u, 0) : K × ℝ)) u :=
        (contDiff_id.prodMk contDiff_const).contDiffAt
      exact ((hsymm _ hu).comp u h1).contDiffWithinAt
    · intro u hu
      exact hu.2.1
    · intro x hx hx0
      refine ⟨pr (x - z), ?_, ?_⟩
      · have hPx : P x = ((pr (x - z), 0) : K × ℝ) := by
          rw [hPcoe]; simp [hΨ, hx0]
        show ((pr (x - z), 0) : K × ℝ) ∈ T
        rw [← hPx]
        refine ⟨P.map_source hx.1, ?_⟩
        show P.symm (P x) ∈ S0
        rw [P.left_inv hx.1]; exact hx.2
      · have hPx : P x = ((pr (x - z), 0) : K × ℝ) := by
          rw [hPcoe]; simp [hΨ, hx0]
        show P.symm ((pr (x - z), 0) : K × ℝ) = x
        rw [← hPx, P.left_inv hx.1]
  
  have main : ∀ n : ℕ, ∀ (E : Type) [NormedAddCommGroup E] [NormedSpace ℝ E]
      [FiniteDimensional ℝ E], Module.finrank ℝ E = n → ∀ (f : E → ℝ) (U : Set E), IsOpen U →
      ContDiffOn ℝ ∞ f U → MeasureTheory.volume (f '' {x | x ∈ U ∧ fderiv ℝ f x = 0}) = 0 := by
    intro n
    refine Nat.strong_induction_on n ?_
    intro n IH E _ _ _ hE f U hU hf
    have hnN : n ≤ max n 1 := le_max_left _ _
    have hcontD : ∀ j : ℕ, ∀ x ∈ U, ContDiffAt ℝ ∞ (iteratedFDeriv ℝ j f) x := fun j x hx =>
      (hf.contDiffAt (hU.mem_nhds hx)).iteratedFDeriv_right (le_of_eq (by norm_cast))
    have F1 : ∀ x, iteratedFDeriv ℝ 1 f x = 0 ↔ fderiv ℝ f x = 0 := by
      intro x
      rw [← norm_eq_zero, norm_iteratedFDeriv_one, norm_eq_zero]
    
    have ha : MeasureTheory.volume (f '' {x | x ∈ U ∧ ∀ j : ℕ, 1 ≤ j → j ≤ max n 1 →
        iteratedFDeriv ℝ j f x = 0}) = 0 := by
      apply s2 E f _ (max n 1) (by rw [hE]; exact hnN)
      intro x hx
      obtain ⟨ρ₀, hρ₀, hball⟩ := Metric.isOpen_iff.mp hU x hx.1
      have hB : Metric.closedBall x (ρ₀ / 2) ⊆ U :=
        (Metric.closedBall_subset_ball (by linarith)).trans hball
      obtain ⟨Mb, hMb⟩ := (isCompact_closedBall x (ρ₀ / 2)).exists_bound_of_continuousOn
        (f := iteratedFDeriv ℝ (max n 1 + 1) f)
        (fun v hv => (hcontD (max n 1 + 1) v (hB hv)).continuousAt.continuousWithinAt)
      refine ⟨ρ₀ / 2, by linarith, Mb, ?_⟩
      intro y _ w hw hyx hwx
      exact s1 E f U _ hU hf hB (convex_closedBall x _) (max n 1) w
        (Metric.mem_closedBall.2 hwx.le) hw.2 Mb hMb y (Metric.mem_closedBall.2 hyx.le)
    
    have hb : ∀ k : ℕ, 1 ≤ k → MeasureTheory.volume (f '' {x | x ∈ U ∧
        (∀ j : ℕ, 1 ≤ j → j ≤ k → iteratedFDeriv ℝ j f x = 0) ∧
        iteratedFDeriv ℝ (k+1) f x ≠ 0}) = 0 := by
      intro k hk
      apply s6 E f
      intro z hz
      obtain ⟨hzU, _, hznz⟩ := hz
      obtain ⟨h, hhs, hdh, hvan⟩ := s5 E f U hU hf k z hzU hznz
      obtain ⟨K, hK, W, hWo, hzW, O, hOo, φ, hφ, hφU, hpar⟩ := s4 E h U hU hhs z hzU hdh
      refine ⟨W, hWo, hzW, ?_⟩
      have hlt : Module.finrank ℝ K < n := by omega
      have hIH := IH _ hlt K rfl (f ∘ φ) O hOo (hf.comp hφ hφU)
      apply MeasureTheory.measure_mono_null _ hIH
      rintro _ ⟨x, ⟨⟨hxU, hxflat, _⟩, hxW⟩, rfl⟩
      have hDk : iteratedFDeriv ℝ k f x = 0 := hxflat k hk le_rfl
      obtain ⟨u, huO, rfl⟩ := hpar x hxW (hvan x hDk)
      refine ⟨u, ⟨huO, ?_⟩, rfl⟩
      have hdf : fderiv ℝ f (φ u) = 0 := (F1 _).1 (hxflat 1 le_rfl hk)
      have hfd : DifferentiableAt ℝ f (φ u) :=
        (hf.contDiffAt (hU.mem_nhds hxU)).differentiableAt (by simp)
      have hφd : DifferentiableAt ℝ φ u :=
        (hφ.contDiffAt (hOo.mem_nhds huO)).differentiableAt (by simp)
      rw [fderiv_comp u hfd hφd, hdf, ContinuousLinearMap.zero_comp]
    
    have hcov : {x | x ∈ U ∧ fderiv ℝ f x = 0} ⊆
        {x | x ∈ U ∧ ∀ j : ℕ, 1 ≤ j → j ≤ max n 1 → iteratedFDeriv ℝ j f x = 0} ∪
        ⋃ k : ℕ, {x | x ∈ U ∧ (∀ j : ℕ, 1 ≤ j → j ≤ k + 1 → iteratedFDeriv ℝ j f x = 0) ∧
          iteratedFDeriv ℝ (k + 1 + 1) f x ≠ 0} := by
      rintro x ⟨hxU, hx0⟩
      have h1 : iteratedFDeriv ℝ 1 f x = 0 := (F1 x).2 hx0
      by_cases hflat : ∀ j : ℕ, 1 ≤ j → j ≤ max n 1 → iteratedFDeriv ℝ j f x = 0
      · exact Or.inl ⟨hxU, hflat⟩
      · right
        push_neg at hflat
        have hex : ∃ j, 1 ≤ j ∧ iteratedFDeriv ℝ j f x ≠ 0 := by
          obtain ⟨j, hj1, _, hj⟩ := hflat
          exact ⟨j, hj1, hj⟩
        classical
        have hj₀spec := Nat.find_spec hex
        have hj₀ne1 : Nat.find hex ≠ 1 := by
          intro h
          rw [h] at hj₀spec
          exact hj₀spec.2 h1
        have hj₀2 : 2 ≤ Nat.find hex := by
          have := hj₀spec.1
          omega
        rw [Set.mem_iUnion]
        refine ⟨Nat.find hex - 2, ?_⟩
        show x ∈ U ∧ _ ∧ _
        refine ⟨hxU, ?_, ?_⟩
        · intro i hi1 hik
          by_contra hne
          exact Nat.find_min hex (show i < Nat.find hex by omega) ⟨hi1, hne⟩
        · have : Nat.find hex - 2 + 1 + 1 = Nat.find hex := by omega
          rw [this]
          exact hj₀spec.2
    apply MeasureTheory.measure_mono_null (Set.image_mono hcov)
    rw [Set.image_union, Set.image_iUnion]
    apply MeasureTheory.measure_union_null ha
    exact MeasureTheory.measure_iUnion_null (fun k => hb (k + 1) (by omega))
  exact main 3 E3 (by simp) f V hV hf

theorem stern_chart_identities [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Φ : EndChart M) (u : M → ℝ)
    (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (X Y : E3 → E3) (q R₀ R₁ C : ℝ) (hXY : CoordChange X Y q R₀ R₁ C)
    (hΨu : ∀ x : E3, R₁ < ‖x‖ → u (sternPsi Φ Y x) = x 0)
    (hharmV : ∀ x : E3, R₁ < ‖x‖ → g.lapM u (sternPsi Φ Y x) = 0) :
    ∀ x : E3, R₁ < ‖x‖ →
      g.coeff (sternPsi Φ Y) x = pullbackMetric (g.coeff Φ.Φ) Y x ∧
      g.gradInner u u (sternPsi Φ Y x) = (pullbackMetric (g.coeff Φ.Φ) Y x)⁻¹ 0 0 ∧
      lapLoc (pullbackMetric (g.coeff Φ.Φ) Y) (fun z : E3 => z 0) x = 0 :=
by
  obtain ⟨hR02, hR01, hC, hXs, hYs, hYX, hXinj, -⟩ := hXY
  have hU₁ : IsOpen {x : E3 | R₁ < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hV₀ : IsOpen {y : E3 | R₀ < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hVsrc : ∀ y : E3, R₀ < ‖y‖ → y ∈ Φ.Φ.source := by
    intro y hy
    rw [Φ.source_eq]
    show (1 : ℝ) < ‖y‖
    linarith
  have hYsrc : ∀ z : E3, R₁ < ‖z‖ → Y z ∈ Φ.Φ.source := fun z hz => hVsrc _ (hYX z hz).1
  have hτ : ∀ z : E3, R₁ < ‖z‖ → DifferentiableAt ℝ Y z := fun z hz =>
    (hYs.contDiffAt (hU₁.mem_nhds hz)).differentiableAt (by simp)
  have hΦd : ∀ z : E3, R₁ < ‖z‖ → MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y z) := fun z hz =>
    (Φ.Φ.contMDiffOn.contMDiffAt (Φ.Φ.open_source.mem_nhds (hYsrc z hz))).mdifferentiableAt
      (by simp)
  
  have hc1 : ∀ z : E3, R₁ < ‖z‖ →
      g.coeff (sternPsi Φ Y) z = pullbackMetric (g.coeff Φ.Φ) Y z := by
    intro z hz
    ext i j
    exact coeff_comp_apply g Φ.Φ Y z (hτ z hz) (hΦd z hz) i j
  
  have hW : IsOpen ({y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖}) :=
    hXs.continuousOn.isOpen_inter_preimage hV₀ hU₁
  have hT : IsOpen (Φ.Φ.target ∩
      Φ.Φ.invFun ⁻¹' ({y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖})) :=
    Φ.Φ.contMDiffOn_invFun.continuousOn.isOpen_inter_preimage Φ.Φ.open_target hW
  have hΨex : ∃ Ψ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞,
      Ψ.source = {x : E3 | R₁ < ‖x‖} ∧ ∀ x : E3, Ψ x = sternPsi Φ Y x := by
    refine ⟨{ toFun := sternPsi Φ Y
              invFun := fun p => X (Φ.Φ.invFun p)
              source := {x : E3 | R₁ < ‖x‖}
              target := Φ.Φ.target ∩
                Φ.Φ.invFun ⁻¹' ({y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖})
              map_source' := ?_
              map_target' := ?_
              left_inv' := ?_
              right_inv' := ?_
              open_source := hU₁
              open_target := hT
              contMDiffOn_toFun := ?_
              contMDiffOn_invFun := ?_ }, rfl, fun x => rfl⟩
    · intro x hx
      have hy := hYsrc x hx
      have e1 : Φ.Φ.invFun (Φ.Φ (Y x)) = Y x := Φ.Φ.left_inv' hy
      refine ⟨Φ.Φ.map_source' hy, ?_⟩
      show Φ.Φ.invFun (Φ.Φ (Y x)) ∈ {y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖}
      rw [e1]
      refine ⟨(hYX x hx).1, ?_⟩
      show R₁ < ‖X (Y x)‖
      rw [(hYX x hx).2]
      exact hx
    · intro p hp
      obtain ⟨_, _, h⟩ := hp
      exact h
    · intro x hx
      have e1 : Φ.Φ.invFun (Φ.Φ (Y x)) = Y x := Φ.Φ.left_inv' (hYsrc x hx)
      show X (Φ.Φ.invFun (Φ.Φ (Y x))) = x
      rw [e1]
      exact (hYX x hx).2
    · intro p hp
      obtain ⟨hpt, hy0, hy1⟩ := hp
      have hy0' : R₀ < ‖Φ.Φ.invFun p‖ := hy0
      have hy1' : R₁ < ‖X (Φ.Φ.invFun p)‖ := hy1
      obtain ⟨h1, h2⟩ := hYX _ hy1'
      have h3 : Y (X (Φ.Φ.invFun p)) = Φ.Φ.invFun p := hXinj h1 hy0' h2
      have h4 : Φ.Φ (Φ.Φ.invFun p) = p := Φ.Φ.right_inv' hpt
      show Φ.Φ (Y (X (Φ.Φ.invFun p))) = p
      rw [h3, h4]
    · exact Φ.Φ.contMDiffOn.comp (contMDiffOn_iff_contDiffOn.mpr hYs)
        (fun x hx => hYsrc x hx)
    · exact (contMDiffOn_iff_contDiffOn.mpr hXs).comp
        (Φ.Φ.contMDiffOn_invFun.mono Set.inter_subset_left)
        (fun p hp => by obtain ⟨_, h, _⟩ := hp; exact h)
  obtain ⟨Ψ, hsrc, hΨ⟩ := hΨex
  have hfun : (⇑Ψ : E3 → M) = sternPsi Φ Y := funext hΨ
  
  have hfun0 : (fun w : E3 => w 0) = ⇑(EuclideanSpace.proj (0 : Fin 3) : E3 →L[ℝ] ℝ) := by
    funext w; rfl
  have hpd : ∀ (i : Fin 3) (z : E3),
      partialDeriv i (fun w : E3 => w 0) z = if i = 0 then 1 else 0 := by
    intro i z
    unfold partialDeriv
    rw [hfun0, ContinuousLinearMap.fderiv]
    fin_cases i <;> simp [EuclideanSpace.single_apply]
  
  have hcongr : ∀ (G₁ G₂ : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f₁ f₂ : E3 → ℝ) (y : E3),
      (∀ᶠ z in 𝓝 y, G₁ z = G₂ z) → (∀ᶠ z in 𝓝 y, f₁ z = f₂ z) →
      lapLoc G₁ f₁ y = lapLoc G₂ f₂ y := by
    intro G₁ G₂ f₁ f₂ y hG hf
    have h0 : G₁ y = G₂ y := hG.self_of_nhds
    have hdG : ∀ a b c : Fin 3,
        partialDeriv c (fun z => G₁ z a b) y = partialDeriv c (fun z => G₂ z a b) y := by
      intro a b c
      have hev : (fun z => G₁ z a b) =ᶠ[𝓝 y] (fun z => G₂ z a b) :=
        hG.mono (fun z hz => by simp only [hz])
      unfold partialDeriv
      rw [hev.fderiv_eq]
    have hchr : ∀ k i j : Fin 3, christoffel G₁ k i j y = christoffel G₂ k i j y := by
      intro k i j
      simp only [christoffel, h0, hdG]
    have hfe : f₁ =ᶠ[𝓝 y] f₂ := hf
    have hd1 : ∀ k : Fin 3, partialDeriv k f₁ y = partialDeriv k f₂ y := by
      intro k
      unfold partialDeriv
      rw [hfe.fderiv_eq]
    have hd2 : ∀ i j : Fin 3,
        partialDeriv i (partialDeriv j f₁) y = partialDeriv i (partialDeriv j f₂) y := by
      intro i j
      have hev : partialDeriv j f₁ =ᶠ[𝓝 y] partialDeriv j f₂ :=
        (hfe.fderiv (𝕜 := ℝ)).mono (fun z hz => by simp only [partialDeriv, hz])
      show fderiv ℝ (partialDeriv j f₁) y (e i) = fderiv ℝ (partialDeriv j f₂) y (e i)
      rw [hev.fderiv_eq]
    simp only [lapLoc, hessLoc, h0, hchr, hd1, hd2]
  intro x hx
  have hxs : x ∈ Ψ.source := by rw [hsrc]; exact hx
  have hnx : {z : E3 | R₁ < ‖z‖} ∈ 𝓝 x := hU₁.mem_nhds hx
  refine ⟨hc1 x hx, ?_, ?_⟩
  · 
    have hfh : ∀ᶠ z in 𝓝 x, u (Ψ z) = z 0 :=
      Filter.eventually_of_mem hnx (fun z hz => by rw [hΨ z]; exact hΨu z hz)
    have h2 := gradInner_eq_coord g Ψ u (fun z => z 0) hu x hxs hfh
    rw [hfun, hc1 x hx] at h2
    rw [h2]
    simp only [hpd, Fin.sum_univ_three]
    simp
  · 
    have hG : ∀ᶠ z in 𝓝 x, g.coeff (sternPsi Φ Y) z = pullbackMetric (g.coeff Φ.Φ) Y z :=
      Filter.eventually_of_mem hnx (fun z hz => hc1 z hz)
    have hf : ∀ᶠ z in 𝓝 x, (u ∘ sternPsi Φ Y) z = (fun w : E3 => w 0) z :=
      Filter.eventually_of_mem hnx (fun z hz => hΨu z hz)
    have h3 := lapLocal_chart_invariant g Ψ u Set.univ isOpen_univ hu.contMDiffOn x hxs
      (Set.mem_univ _)
    rw [hfun] at h3
    have e1 : lapLoc (g.coeff (sternPsi Φ Y)) (u ∘ sternPsi Φ Y) x =
        lapLocal (g.coeff (sternPsi Φ Y)) (u ∘ sternPsi Φ Y) x := rfl
    have e2 : lapM g u (sternPsi Φ Y x) = g.lapM u (sternPsi Φ Y x) := rfl
    rw [← hcongr (g.coeff (sternPsi Φ Y)) (pullbackMetric (g.coeff Φ.Φ) Y)
      (u ∘ sternPsi Φ Y) (fun w : E3 => w 0) x hG hf, e1, h3, e2]
    exact hharmV x hx

theorem level_gauss_equation (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3) (hV : IsOpen V)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i)
    (hpd : ∀ y ∈ V, (G y).PosDef)
    (f : E3 → ℝ) (hf : ContDiffOn ℝ ∞ f V)
    (F : E2 → E3) (W : Set E2) (hW : IsOpen W) (hF : ContDiffOn ℝ ∞ F W)
    (hFV : ∀ x ∈ W, F x ∈ V) (hinj : ∀ x ∈ W, Function.Injective (fderiv ℝ F x))
    (c : ℝ) (hlev : ∀ x ∈ W, f (F x) = c) (hreg : ∀ x ∈ W, 0 < gradSqLoc G f (F x)) :
    ∀ x ∈ W, gaussCurv2 (pullMetric2 G F) x = levelGaussLoc G f (F x) :=
by
  classical
  intro x hx
  have hy : F x ∈ V := hFV x hx
  
  have hgauss := gs_gauss_equation G V hV hG hsymm hpd F W hW hF hFV hinj x hx
  have hS0 : 0 < gradSqLoc G f (F x) := hreg x hx
  have hfx : ContDiffAt ℝ ∞ f (F x) := hf.contDiffAt (hV.mem_nhds hy)
  have hf2 : ContDiffAt ℝ 2 f (F x) := hfx.of_le (WithTop.coe_le_coe.mpr le_top)
  
  have hdf : fderiv ℝ f (F x) ≠ 0 := by
    intro h
    have h0 : gradSqLoc G f (F x) = 0 := by
      simp [gradSqLoc, gradInnerLoc, partialDeriv, h]
    linarith
  have hzero : ∀ᶠ z in 𝓝 x, f (F z) = c := Filter.eventually_of_mem (hW.mem_nhds hx) hlev
  have hs : IsOpen W := hW
  have hinjx : Function.Injective (fderiv ℝ F x) := hinj x hx
  have hGsymm := hsymm
  have hGpos : (G (F x)).PosDef := hpd (F x) hy
  
  have chain : (fun k : Fin 3 => partialDeriv k f (F x)) ≠ 0 ∧
      (∀ c : Fin 2, ∑ k : Fin 3, partialDeriv k f (F x) * gsTan F c x k = 0) ∧
      (∀ b c : Fin 2, ∑ j : Fin 3, ∑ k : Fin 3, gsTan F b x j *
        partialDeriv j (partialDeriv k f) (F x) * gsTan F c x k +
        ∑ k : Fin 3, partialDeriv k f (F x) * gsHessF F b c x k = 0) ∧
      (∀ b c : Fin 2, gsHessF F b c x = gsHessF F c b x) ∧
      (∀ i : Fin 2, fderiv ℝ f (F x) (fderiv ℝ F x (e2 i)) = 0) ∧
      (∀ j k : Fin 3, partialDeriv j (partialDeriv k f) (F x) =
        partialDeriv k (partialDeriv j f) (F x)) := by
    have hvec : ∀ v : E3, v = ∑ k : Fin 3, v k • e k := by
      intro v
      rw [Fin.sum_univ_three]
      apply PiLp.ext
      intro i
      fin_cases i <;> simp [e, EuclideanSpace.single_apply]
    have expand : ∀ (L : E3 →L[ℝ] ℝ) (v : E3), L v = ∑ k : Fin 3, v k * L (e k) := by
      intro L v
      conv_lhs => rw [hvec v]
      simp [map_sum, map_smul]
    have expand2 : ∀ (L : E3 →L[ℝ] (E3 →L[ℝ] ℝ)) (v : E3),
        L v = ∑ k : Fin 3, v k • L (e k) := by
      intro L v
      conv_lhs => rw [hvec v]
      simp [map_sum, map_smul]
    have hFx : ContDiffAt ℝ ∞ F x := hF.contDiffAt (hs.mem_nhds hx)
    have hFd : DifferentiableAt ℝ F x := hFx.differentiableAt (by simp)
    have hFev : ∀ᶠ z in 𝓝 x, ContDiffAt ℝ ∞ F z :=
      Filter.eventually_of_mem (hs.mem_nhds hx) fun z hz => hF.contDiffAt (hs.mem_nhds hz)
    have hfev : ∀ᶠ y in 𝓝 (F x), DifferentiableAt ℝ f y :=
      (hf2.eventually (by simp)).mono fun y hy => hy.differentiableAt (by simp)
    have hfF : ∀ᶠ z in 𝓝 x, DifferentiableAt ℝ f (F z) := hFd.continuousAt.eventually hfev
    have hDf : DifferentiableAt ℝ (fderiv ℝ f) (F x) :=
      (hf2.fderiv_right (m := 1) (by norm_num)).differentiableAt (by simp)
    have hF2 : ContDiffAt ℝ 2 F x := hFx.of_le (WithTop.coe_le_coe.mpr le_top)
    have hFd2 : DifferentiableAt ℝ (fderiv ℝ F) x :=
      (hF2.fderiv_right (m := 1) (by norm_num)).differentiableAt (by simp)
    have c1 : (fun k : Fin 3 => partialDeriv k f (F x)) ≠ 0 := by
      intro h
      apply hdf
      ext v
      rw [expand (fderiv ℝ f (F x)) v]
      have hk : ∀ k : Fin 3, fderiv ℝ f (F x) (e k) = 0 := fun k => congrFun h k
      simp [hk]
    have hφz : ∀ᶠ z in 𝓝 x, (fderiv ℝ f (F z)).comp (fderiv ℝ F z) = 0 := by
      filter_upwards [hzero.eventually_nhds, hfF, hFev] with z hz hfz hFz
      have h0 : fderiv ℝ (fun w => f (F w)) z = 0 := by
        rw [(show (fun w => f (F w)) =ᶠ[𝓝 z] fun _ => c from hz).fderiv_eq]
        exact fderiv_const_apply _
      have hc : fderiv ℝ (fun w => f (F w)) z = (fderiv ℝ f (F z)).comp (fderiv ℝ F z) :=
        fderiv_comp z hfz (hFz.differentiableAt (by simp))
      rw [← hc, h0]
    have hφx : (fderiv ℝ f (F x)).comp (fderiv ℝ F x) = 0 := hφz.self_of_nhds
    have c5 : ∀ i : Fin 2, fderiv ℝ f (F x) (fderiv ℝ F x (e2 i)) = 0 := by
      intro i
      have h := congrArg (fun L : E2 →L[ℝ] ℝ => L (e2 i)) hφx
      simpa using h
    have c2 : ∀ c : Fin 2, ∑ k : Fin 3, partialDeriv k f (F x) * gsTan F c x k = 0 := by
      intro c
      have h := congrArg (fun L : E2 →L[ℝ] ℝ => L (e2 c)) hφx
      simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.zero_apply] at h
      rw [expand] at h
      rw [← h]
      apply Finset.sum_congr rfl
      intro k _
      exact mul_comm _ _
    have hH : ∀ b c : Fin 2, gsHessF F b c x = fderiv ℝ (fderiv ℝ F) x (e2 b) (e2 c) := by
      intro b c
      unfold gsHessF
      rw [fderiv_clm_apply hFd2 (differentiableAt_const _)]
      simp
    have c4 : ∀ b c : Fin 2, gsHessF F b c x = gsHessF F c b x := by
      have hsymm := hF2.isSymmSndFDerivAt (by simp [minSmoothness_of_isRCLikeNormedField])
      intro b c
      rw [hH, hH]
      exact hsymm _ _
    have hP2 : ∀ j k : Fin 3, partialDeriv j (partialDeriv k f) (F x) =
        fderiv ℝ (fderiv ℝ f) (F x) (e j) (e k) := by
      intro j k
      show fderiv ℝ (fun z => fderiv ℝ f z (e k)) (F x) (e j) = _
      rw [fderiv_clm_apply hDf (differentiableAt_const _)]
      simp
    have c6 : ∀ j k : Fin 3, partialDeriv j (partialDeriv k f) (F x) =
        partialDeriv k (partialDeriv j f) (F x) := by
      have hsymf := hf2.isSymmSndFDerivAt (by simp [minSmoothness_of_isRCLikeNormedField])
      intro j k
      rw [hP2, hP2]
      exact hsymf _ _
    have c3 : ∀ b c : Fin 2, ∑ j : Fin 3, ∑ k : Fin 3, gsTan F b x j *
        partialDeriv j (partialDeriv k f) (F x) * gsTan F c x k +
        ∑ k : Fin 3, partialDeriv k f (F x) * gsHessF F b c x k = 0 := by
      intro b c
      have hψ : fderiv ℝ (fun z => fderiv ℝ f (F z) (fderiv ℝ F z (e2 c))) x = 0 := by
        have hev : (fun z => fderiv ℝ f (F z) (fderiv ℝ F z (e2 c))) =ᶠ[𝓝 x]
            fun _ => (0 : ℝ) := by
          filter_upwards [hφz] with z hz
          have := congrArg (fun L : E2 →L[ℝ] ℝ => L (e2 c)) hz
          simpa using this
        rw [hev.fderiv_eq]
        exact fderiv_const_apply _
      have hcd : DifferentiableAt ℝ (fun z => fderiv ℝ f (F z)) x := hDf.comp x hFd
      have hud : DifferentiableAt ℝ (fun z => fderiv ℝ F z (e2 c)) x :=
        hFd2.clm_apply (differentiableAt_const _)
      rw [fderiv_clm_apply hcd hud] at hψ
      have hc' : fderiv ℝ (fun z => fderiv ℝ f (F z)) x =
          (fderiv ℝ (fderiv ℝ f) (F x)).comp (fderiv ℝ F x) := fderiv_comp x hDf hFd
      rw [hc'] at hψ
      have h := congrArg (fun L : E2 →L[ℝ] ℝ => L (e2 b)) hψ
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.comp_apply,
        ContinuousLinearMap.flip_apply, ContinuousLinearMap.zero_apply] at h
      have hHb : fderiv ℝ (fun z => fderiv ℝ F z (e2 c)) x (e2 b) = gsHessF F b c x := rfl
      rw [hHb] at h
      rw [expand (fderiv ℝ f (F x)) (gsHessF F b c x)] at h
      rw [expand2 (fderiv ℝ (fderiv ℝ f) (F x)) (fderiv ℝ F x (e2 b))] at h
      rw [expand _ (fderiv ℝ F x (e2 c))] at h
      simp only [hP2]
      rw [← h]
      simp only [Fin.sum_univ_three, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.coe_smul', Pi.smul_apply, smul_eq_mul]
      unfold gsTan partialDeriv
      ring
    exact ⟨c1, c2, c3, c4, c5, c6⟩
  obtain ⟨hd0, hdT, hchain, hHsymm, htan, hschw⟩ := chain
  
  have hjcc := jcc_scalar_trace G V hV hG hsymm hpd f F x hy hinjx hdf htan
  
  have hN : gsCrossN F x ≠ 0 := by
    intro hN0
    have n0 : gsTan F 0 x 1 * gsTan F 1 x 2 - gsTan F 0 x 2 * gsTan F 1 x 1 = 0 :=
      congrFun hN0 0
    have n1 : gsTan F 0 x 2 * gsTan F 1 x 0 - gsTan F 0 x 0 * gsTan F 1 x 2 = 0 :=
      congrFun hN0 1
    have n2 : gsTan F 0 x 0 * gsTan F 1 x 1 - gsTan F 0 x 1 * gsTan F 1 x 0 = 0 :=
      congrFun hN0 2
    have key : ∀ u0 u1 u2 v0 v1 v2 : ℝ, u1 * v2 - u2 * v1 = 0 → u2 * v0 - u0 * v2 = 0 →
        u0 * v1 - u1 * v0 = 0 →
        (v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u0 - (u0 * v0 + u1 * v1 + u2 * v2) * v0 = 0 ∧
        (v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u1 - (u0 * v0 + u1 * v1 + u2 * v2) * v1 = 0 ∧
        (v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u2 - (u0 * v0 + u1 * v1 + u2 * v2) * v2 = 0 := by
      intro u0 u1 u2 v0 v1 v2 h0 h1 h2
      have hs : ((v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u0 - (u0 * v0 + u1 * v1 + u2 * v2) * v0) ^ 2 +
          ((v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u1 - (u0 * v0 + u1 * v1 + u2 * v2) * v1) ^ 2 +
          ((v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u2 - (u0 * v0 + u1 * v1 + u2 * v2) * v2) ^ 2 = 0 := by
        linear_combination (v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * (u1 * v2 - u2 * v1) * h0
          + (v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * (u2 * v0 - u0 * v2) * h1
          + (v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * (u0 * v1 - u1 * v0) * h2
      have a0 := sq_nonneg ((v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u0 - (u0 * v0 + u1 * v1 + u2 * v2) * v0)
      have a1 := sq_nonneg ((v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u1 - (u0 * v0 + u1 * v1 + u2 * v2) * v1)
      have a2 := sq_nonneg ((v0 ^ 2 + v1 ^ 2 + v2 ^ 2) * u2 - (u0 * v0 + u1 * v1 + u2 * v2) * v2)
      refine ⟨pow_eq_zero_iff two_ne_zero |>.mp (by linarith),
        pow_eq_zero_iff two_ne_zero |>.mp (by linarith),
        pow_eq_zero_iff two_ne_zero |>.mp (by linarith)⟩
    obtain ⟨z0, z1, z2⟩ := key _ _ _ _ _ _ n0 n1 n2
    have hw : fderiv ℝ F x
        ((gsTan F 1 x 0 ^ 2 + gsTan F 1 x 1 ^ 2 + gsTan F 1 x 2 ^ 2) • e2 0 -
          (gsTan F 0 x 0 * gsTan F 1 x 0 + gsTan F 0 x 1 * gsTan F 1 x 1 +
            gsTan F 0 x 2 * gsTan F 1 x 2) • e2 1) = fderiv ℝ F x 0 := by
      rw [map_sub, map_smul, map_smul, map_zero]
      apply PiLp.ext
      intro k
      simp only [PiLp.sub_apply, PiLp.smul_apply, smul_eq_mul, PiLp.zero_apply]
      fin_cases k
      · exact z0
      · exact z1
      · exact z2
    have hw0 := hinjx hw
    have hvv : gsTan F 1 x 0 ^ 2 + gsTan F 1 x 1 ^ 2 + gsTan F 1 x 2 ^ 2 = 0 := by
      have h := congrArg (fun w : E2 => w 0) hw0
      simp only [PiLp.sub_apply, PiLp.smul_apply, smul_eq_mul, PiLp.zero_apply, e2,
        EuclideanSpace.single_apply] at h
      simpa using h
    have q0 := sq_nonneg (gsTan F 1 x 0)
    have q1 := sq_nonneg (gsTan F 1 x 1)
    have q2 := sq_nonneg (gsTan F 1 x 2)
    have v0 : gsTan F 1 x 0 = 0 := pow_eq_zero_iff two_ne_zero |>.mp (by linarith)
    have v1 : gsTan F 1 x 1 = 0 := pow_eq_zero_iff two_ne_zero |>.mp (by linarith)
    have v2 : gsTan F 1 x 2 = 0 := pow_eq_zero_iff two_ne_zero |>.mp (by linarith)
    have hv : fderiv ℝ F x (e2 1) = fderiv ℝ F x 0 := by
      rw [map_zero]
      apply PiLp.ext
      intro k
      simp only [PiLp.zero_apply]
      fin_cases k
      · exact v0
      · exact v1
      · exact v2
    exact one_ne_zero (EuclideanSpace.single_eq_zero_iff.mp (hinjx hv))
  have hQ : 0 < ∑ k : Fin 3, ∑ l : Fin 3,
      (G (F x))⁻¹ k l * gsCrossN F x k * gsCrossN F x l := by
    have h := (Matrix.posDef_iff_dotProduct_mulVec.mp hGpos.inv).2 hN
    simp only [Fin.sum_univ_three, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial] at h ⊢
    linarith
  
  have projection : ∀ (Gm : Matrix (Fin 3) (Fin 3) ℝ), (∀ i j : Fin 3, Gm i j = Gm j i) →
      Gm.PosDef → ∀ (T : Fin 2 → Fin 3 → ℝ) (d : Fin 3 → ℝ),
      (![T 0 1 * T 1 2 - T 0 2 * T 1 1, T 0 2 * T 1 0 - T 0 0 * T 1 2,
        T 0 0 * T 1 1 - T 0 1 * T 1 0] : Fin 3 → ℝ) ≠ 0 → d ≠ 0 →
      (∀ c : Fin 2, ∑ k : Fin 3, d k * T c k = 0) →
      ∀ i j : Fin 3, Gm⁻¹ i j - (∑ a : Fin 3, Gm⁻¹ i a * d a) * (∑ b : Fin 3, Gm⁻¹ j b * d b) /
        (∑ a : Fin 3, ∑ b : Fin 3, Gm⁻¹ a b * d a * d b) =
        ∑ a : Fin 2, ∑ b : Fin 2, (Matrix.of fun a b : Fin 2 =>
          ∑ k : Fin 3, ∑ l : Fin 3, T a k * Gm k l * T b l)⁻¹ a b * T a i * T b j := by
    intro Gm hGsymm hGpos T d hN hd hdT
    obtain ⟨N, hNdef⟩ : ∃ N : Fin 3 → ℝ, N = ![T 0 1 * T 1 2 - T 0 2 * T 1 1,
        T 0 2 * T 1 0 - T 0 0 * T 1 2, T 0 0 * T 1 1 - T 0 1 * T 1 0] := ⟨_, rfl⟩
    rw [← hNdef] at hN
    have hN0 : N 0 = T 0 1 * T 1 2 - T 0 2 * T 1 1 := by rw [hNdef]; rfl
    have hN1 : N 1 = T 0 2 * T 1 0 - T 0 0 * T 1 2 := by rw [hNdef]; rfl
    have hN2 : N 2 = T 0 0 * T 1 1 - T 0 1 * T 1 0 := by rw [hNdef]; rfl
    have hdetpos : 0 < Gm.det := hGpos.det_pos
    have hdetu : IsUnit Gm.det := hdetpos.ne'.isUnit
    have hGA : Gm * Gm⁻¹ = 1 := Matrix.mul_nonsing_inv Gm hdetu
    have hAG : Gm⁻¹ * Gm = 1 := Matrix.nonsing_inv_mul Gm hdetu
    have hQpos : 0 < ∑ k : Fin 3, ∑ l : Fin 3, Gm⁻¹ k l * N k * N l := by
      have h := (Matrix.posDef_iff_dotProduct_mulVec.mp hGpos.inv).2 hN
      simp only [Fin.sum_univ_three, dotProduct, Matrix.mulVec, Pi.star_apply,
        star_trivial] at h ⊢
      linarith
    have hadj : Gm.adjugate = Gm.det • Gm⁻¹ := by
      calc Gm.adjugate = (Gm⁻¹ * Gm) * Gm.adjugate := by rw [hAG, Matrix.one_mul]
        _ = Gm⁻¹ * (Gm * Gm.adjugate) := Matrix.mul_assoc _ _ _
        _ = Gm⁻¹ * (Gm.det • (1 : Matrix (Fin 3) (Fin 3) ℝ)) := by rw [Matrix.mul_adjugate]
        _ = Gm.det • Gm⁻¹ := by rw [Matrix.mul_smul, Matrix.mul_one]
    generalize hAdef : Gm⁻¹ = A at hGA hAG hQpos hadj ⊢
    generalize hQdef : (∑ k : Fin 3, ∑ l : Fin 3, A k l * N k * N l) = Q at hQpos
    have hT0 := hdT 0
    have hT1 := hdT 1
    simp only [Fin.sum_univ_three] at hT0 hT1
    have hNN : 0 < N 0 ^ 2 + N 1 ^ 2 + N 2 ^ 2 := by
      by_contra hcon
      push_neg at hcon
      apply hN
      have h0 : N 0 ^ 2 = 0 := by nlinarith [sq_nonneg (N 0), sq_nonneg (N 1), sq_nonneg (N 2)]
      have h1 : N 1 ^ 2 = 0 := by nlinarith [sq_nonneg (N 0), sq_nonneg (N 1), sq_nonneg (N 2)]
      have h2 : N 2 ^ 2 = 0 := by nlinarith [sq_nonneg (N 0), sq_nonneg (N 1), sq_nonneg (N 2)]
      funext k
      fin_cases k
      · exact pow_eq_zero_iff two_ne_zero |>.mp h0
      · exact pow_eq_zero_iff two_ne_zero |>.mp h1
      · exact pow_eq_zero_iff two_ne_zero |>.mp h2
    have alg : ∀ u0 u1 u2 v0 v1 v2 d0 d1 d2 : ℝ, d0 * u0 + d1 * u1 + d2 * u2 = 0 →
        d0 * v0 + d1 * v1 + d2 * v2 = 0 →
        d0 * ((u1 * v2 - u2 * v1) ^ 2 + (u2 * v0 - u0 * v2) ^ 2 + (u0 * v1 - u1 * v0) ^ 2) =
            (d0 * (u1 * v2 - u2 * v1) + d1 * (u2 * v0 - u0 * v2) + d2 * (u0 * v1 - u1 * v0)) *
              (u1 * v2 - u2 * v1) ∧
        d1 * ((u1 * v2 - u2 * v1) ^ 2 + (u2 * v0 - u0 * v2) ^ 2 + (u0 * v1 - u1 * v0) ^ 2) =
            (d0 * (u1 * v2 - u2 * v1) + d1 * (u2 * v0 - u0 * v2) + d2 * (u0 * v1 - u1 * v0)) *
              (u2 * v0 - u0 * v2) ∧
        d2 * ((u1 * v2 - u2 * v1) ^ 2 + (u2 * v0 - u0 * v2) ^ 2 + (u0 * v1 - u1 * v0) ^ 2) =
            (d0 * (u1 * v2 - u2 * v1) + d1 * (u2 * v0 - u0 * v2) + d2 * (u0 * v1 - u1 * v0)) *
              (u0 * v1 - u1 * v0) := by
      intro u0 u1 u2 v0 v1 v2 d0 d1 d2 h0 h1
      refine ⟨?_, ?_, ?_⟩
      · linear_combination ((u2 * v0 - u0 * v2) * u2 - (u0 * v1 - u1 * v0) * u1) * h1
          - ((u2 * v0 - u0 * v2) * v2 - (u0 * v1 - u1 * v0) * v1) * h0
      · linear_combination ((u0 * v1 - u1 * v0) * u0 - (u1 * v2 - u2 * v1) * u2) * h1
          - ((u0 * v1 - u1 * v0) * v0 - (u1 * v2 - u2 * v1) * v2) * h0
      · linear_combination ((u1 * v2 - u2 * v1) * u1 - (u2 * v0 - u0 * v2) * u0) * h1
          - ((u1 * v2 - u2 * v1) * v1 - (u2 * v0 - u0 * v2) * v0) * h0
    obtain ⟨k0, k1, k2⟩ := alg _ _ _ _ _ _ _ _ _ hT0 hT1
    rw [← hN0, ← hN1, ← hN2] at k0 k1 k2
    obtain ⟨lam, hlam⟩ : ∃ lam : ℝ, ∀ k : Fin 3, d k = lam * N k := by
      refine ⟨(d 0 * N 0 + d 1 * N 1 + d 2 * N 2) / (N 0 ^ 2 + N 1 ^ 2 + N 2 ^ 2), ?_⟩
      intro k
      rw [div_mul_eq_mul_div, eq_div_iff hNN.ne']
      fin_cases k
      · exact k0
      · exact k1
      · exact k2
    have hlam0 : lam ≠ 0 := by
      intro h
      apply hd
      funext k
      rw [hlam k, h, zero_mul]
      rfl
    obtain ⟨n, hn⟩ : ∃ n : Fin 3 → ℝ, n = Matrix.mulVec A N := ⟨_, rfl⟩
    have hnent : ∀ i, n i = ∑ l : Fin 3, A i l * N l := fun i => by rw [hn]; rfl
    have hGnv : Matrix.mulVec Gm n = N := by
      rw [hn, Matrix.mulVec_mulVec, hGA, Matrix.one_mulVec]
    have hGn : ∀ j, ∑ l : Fin 3, Gm j l * n l = N j := by
      intro j
      have h := congrFun hGnv j
      simpa [Matrix.mulVec, dotProduct] using h
    have hnG : ∀ l, ∑ j : Fin 3, n j * Gm j l = N l := by
      intro l
      rw [← hGn l]
      apply Finset.sum_congr rfl
      intro j _
      rw [hGsymm j l]
      ring
    have hnN : n 0 * N 0 + n 1 * N 1 + n 2 * N 2 = Q := by
      rw [← hQdef]
      simp only [hnent, Fin.sum_univ_three]
      ring
    have t0 : N 0 * T 0 0 + N 1 * T 0 1 + N 2 * T 0 2 = 0 := by
      rw [hN0, hN1, hN2]
      ring
    have t1 : N 0 * T 1 0 + N 1 * T 1 1 + N 2 * T 1 2 = 0 := by
      rw [hN0, hN1, hN2]
      ring
    obtain ⟨hm, hhm⟩ : ∃ hm : Matrix (Fin 2) (Fin 2) ℝ,
        hm = Matrix.of fun a b : Fin 2 => ∑ k : Fin 3, ∑ l : Fin 3, T a k * Gm k l * T b l :=
      ⟨_, rfl⟩
    rw [← hhm]
    have hhme : ∀ a b, hm a b = ∑ k : Fin 3, ∑ l : Fin 3, T a k * Gm k l * T b l :=
      fun a b => by rw [hhm]; rfl
    have hdethm : hm.det = Gm.det * Q := by
      have h1 : hm.det = ∑ k : Fin 3, ∑ l : Fin 3, Gm.adjugate k l * N k * N l := by
        rw [Matrix.det_fin_two, Matrix.adjugate_fin_three]
        simp [hhme, Fin.sum_univ_three, hN0, hN1, hN2]
        ring
      rw [h1, hadj, ← hQdef]
      simp only [Matrix.smul_apply, smul_eq_mul, Fin.sum_univ_three]
      ring
    have hhmu : IsUnit hm.det := by
      rw [hdethm]
      exact (mul_pos hdetpos hQpos).ne'.isUnit
    have hKhm : hm⁻¹ * hm = 1 := Matrix.nonsing_inv_mul hm hhmu
    generalize hKdef : hm⁻¹ = K at hKhm ⊢
    have e00 : K 0 0 * hm 0 0 + K 0 1 * hm 1 0 = 1 := by
      have h := congrFun (congrFun hKhm 0) 0
      simpa [Matrix.mul_apply, Fin.sum_univ_two] using h
    have e01 : K 0 0 * hm 0 1 + K 0 1 * hm 1 1 = 0 := by
      have h := congrFun (congrFun hKhm 0) 1
      simpa [Matrix.mul_apply, Fin.sum_univ_two] using h
    have e10 : K 1 0 * hm 0 0 + K 1 1 * hm 1 0 = 0 := by
      have h := congrFun (congrFun hKhm 1) 0
      simpa [Matrix.mul_apply, Fin.sum_univ_two] using h
    have e11 : K 1 0 * hm 0 1 + K 1 1 * hm 1 1 = 1 := by
      have h := congrFun (congrFun hKhm 1) 1
      simpa [Matrix.mul_apply, Fin.sum_univ_two] using h
    simp only [hhme, Fin.sum_univ_three] at e00 e01 e10 e11
    obtain ⟨P, hP⟩ : ∃ P : Matrix (Fin 3) (Fin 3) ℝ, P = Matrix.of fun i j =>
        ∑ a : Fin 2, ∑ b : Fin 2, K a b * T a i * T b j + n i * n j / Q := ⟨_, rfl⟩
    have hPe : ∀ i j, P i j =
        ∑ a : Fin 2, ∑ b : Fin 2, K a b * T a i * T b j + n i * n j / Q :=
      fun i j => by rw [hP]; rfl
    obtain ⟨Wm, hWm⟩ : ∃ Wm : Matrix (Fin 3) (Fin 3) ℝ,
        Wm = Matrix.of fun l c => ![T 0 l, T 1 l, n l] c := ⟨_, rfl⟩
    have hW0 : ∀ l, Wm l 0 = T 0 l := fun l => by rw [hWm]; rfl
    have hW1 : ∀ l, Wm l 1 = T 1 l := fun l => by rw [hWm]; rfl
    have hW2 : ∀ l, Wm l 2 = n l := fun l => by rw [hWm]; rfl
    have hWdet : Wm.det = Q := by
      rw [Matrix.det_fin_three]
      simp only [hW0, hW1, hW2]
      rw [← hnN, hN0, hN1, hN2]
      ring
    have hQne : Q ≠ 0 := hQpos.ne'
    have hQQ : Q⁻¹ * Q = 1 := inv_mul_cancel₀ hQne
    have g0 := hGn 0
    have g1 := hGn 1
    have g2 := hGn 2
    have m0 := hnG 0
    have m1 := hnG 1
    have m2 := hnG 2
    simp only [Fin.sum_univ_three] at g0 g1 g2 m0 m1 m2
    have col0 : ∀ k, (P * Gm * Wm) k 0 = Wm k 0 := by
      intro k
      simp only [Matrix.mul_apply, Fin.sum_univ_three, Fin.sum_univ_two, hW0, hPe]
      linear_combination T 0 k * e00 + T 1 k * e10 +
        (n k / Q) * (T 0 0 * m0 + T 0 1 * m1 + T 0 2 * m2) + (n k / Q) * t0
    have col1 : ∀ k, (P * Gm * Wm) k 1 = Wm k 1 := by
      intro k
      simp only [Matrix.mul_apply, Fin.sum_univ_three, Fin.sum_univ_two, hW1, hPe]
      linear_combination T 0 k * e01 + T 1 k * e11 +
        (n k / Q) * (T 1 0 * m0 + T 1 1 * m1 + T 1 2 * m2) + (n k / Q) * t1
    have col2 : ∀ k, (P * Gm * Wm) k 2 = Wm k 2 := by
      intro k
      simp only [Matrix.mul_apply, Fin.sum_univ_three, Fin.sum_univ_two, hW2, hPe]
      linear_combination
        (K 0 0 * T 0 k * T 0 0 + K 0 1 * T 0 k * T 1 0 + K 1 0 * T 1 k * T 0 0 +
          K 1 1 * T 1 k * T 1 0 + n k * n 0 / Q) * g0 +
        (K 0 0 * T 0 k * T 0 1 + K 0 1 * T 0 k * T 1 1 + K 1 0 * T 1 k * T 0 1 +
          K 1 1 * T 1 k * T 1 1 + n k * n 1 / Q) * g1 +
        (K 0 0 * T 0 k * T 0 2 + K 0 1 * T 0 k * T 1 2 + K 1 0 * T 1 k * T 0 2 +
          K 1 1 * T 1 k * T 1 2 + n k * n 2 / Q) * g2 +
        (K 0 0 * T 0 k + K 1 0 * T 1 k) * t0 + (K 0 1 * T 0 k + K 1 1 * T 1 k) * t1 +
        (n k / Q) * hnN + n k * hQQ
    have hXW : P * Gm * Wm = Wm := by
      ext k c
      fin_cases c
      · exact col0 k
      · exact col1 k
      · exact col2 k
    have hWu : IsUnit Wm.det := by
      rw [hWdet]
      exact hQne.isUnit
    have hX : P * Gm = 1 := by
      calc P * Gm = P * Gm * (Wm * Wm⁻¹) := by
            rw [Matrix.mul_nonsing_inv Wm hWu, Matrix.mul_one]
        _ = (P * Gm * Wm) * Wm⁻¹ := (Matrix.mul_assoc (P * Gm) Wm Wm⁻¹).symm
        _ = Wm * Wm⁻¹ := by rw [hXW]
        _ = 1 := Matrix.mul_nonsing_inv Wm hWu
    have hAP : A = P := by
      rw [← hAdef]
      exact Matrix.inv_eq_left_inv hX
    have hν : ∀ i, ∑ a : Fin 3, A i a * d a = lam * n i := by
      intro i
      rw [hnent]
      simp only [hlam, Fin.sum_univ_three]
      ring
    have hSd : ∑ a : Fin 3, ∑ b : Fin 3, A a b * d a * d b = lam ^ 2 * Q := by
      rw [← hQdef]
      simp only [hlam, Fin.sum_univ_three]
      ring
    intro i j
    rw [hν i, hν j, hSd, hAP, hPe]
    field_simp
    ring
  have hP := projection (G (F x)) (hGsymm (F x)) hGpos (fun a k => gsTan F a x k)
    (fun k => partialDeriv k f (F x)) hN hd0 hdT
  have hof : (Matrix.of fun a b : Fin 2 => ∑ k : Fin 3, ∑ l : Fin 3,
      gsTan F a x k * G (F x) k l * gsTan F b x l) = pullMetric2 G F x := rfl
  simp only [hof] at hP
  
  have trace_cycle : ∀ (K : Matrix (Fin 2) (Fin 2) ℝ) (T : Fin 2 → Fin 3 → ℝ)
      (Hm : Fin 3 → Fin 3 → ℝ) (A : Matrix (Fin 3) (Fin 3) ℝ) (d : Fin 3 → ℝ) (S : ℝ),
      (∑ i : Fin 3, ∑ j : Fin 3, ∑ k : Fin 3, ∑ l : Fin 3,
        (∑ a : Fin 2, ∑ b : Fin 2, K a b * T a i * T b j) * Hm j k *
          (∑ c : Fin 2, ∑ q : Fin 2, K c q * T c k * T q l) * Hm l i) =
        ∑ a : Fin 2, ∑ b : Fin 2, ∑ c : Fin 2, ∑ q : Fin 2, K a b * K c q *
          (∑ j : Fin 3, ∑ k : Fin 3, T b j * Hm j k * T c k) *
          (∑ l : Fin 3, ∑ i : Fin 3, T q l * Hm l i * T a i) ∧
      (∑ i : Fin 3, ∑ j : Fin 3, (∑ a : Fin 2, ∑ b : Fin 2, K a b * T a i * T b j) * Hm i j) =
        ∑ a : Fin 2, ∑ b : Fin 2, K a b * (∑ i : Fin 3, ∑ j : Fin 3, T a i * Hm i j * T b j) ∧
      (∑ i : Fin 3, ∑ j : Fin 3,
        (A i j - (∑ a : Fin 3, A i a * d a) * (∑ b : Fin 3, A j b * d b) / S) * Hm i j) =
        (∑ i : Fin 3, ∑ j : Fin 3, A i j * Hm i j) -
          (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
            A i a * d a * (A j b * d b) * Hm i j) / S := by
    intro K T Hm A d S
    refine ⟨?_, ?_, ?_⟩
    · simp only [Fin.sum_univ_two, Fin.sum_univ_three]
      ring
    · simp only [Fin.sum_univ_two, Fin.sum_univ_three]
      ring
    · simp only [Fin.sum_univ_three]
      ring
  obtain ⟨c1, c2, c3⟩ := trace_cycle (pullMetric2 G F x)⁻¹ (fun a k => gsTan F a x k)
    (fun j k => hessLoc G f j k (F x)) (G (F x))⁻¹ (fun k => partialDeriv k f (F x))
    (∑ a : Fin 3, ∑ b : Fin 3, (G (F x))⁻¹ a b * partialDeriv a f (F x) * partialDeriv b f (F x))
  beta_reduce at c1 c2 c3
  
  have hNN : 0 < gsCrossN F x 0 ^ 2 + gsCrossN F x 1 ^ 2 + gsCrossN F x 2 ^ 2 := by
    by_contra hcon
    push_neg at hcon
    apply hN
    have h0 : gsCrossN F x 0 ^ 2 = 0 := by
      nlinarith [sq_nonneg (gsCrossN F x 0), sq_nonneg (gsCrossN F x 1), sq_nonneg (gsCrossN F x 2)]
    have h1 : gsCrossN F x 1 ^ 2 = 0 := by
      nlinarith [sq_nonneg (gsCrossN F x 0), sq_nonneg (gsCrossN F x 1), sq_nonneg (gsCrossN F x 2)]
    have h2 : gsCrossN F x 2 ^ 2 = 0 := by
      nlinarith [sq_nonneg (gsCrossN F x 0), sq_nonneg (gsCrossN F x 1), sq_nonneg (gsCrossN F x 2)]
    funext k
    fin_cases k
    · exact pow_eq_zero_iff two_ne_zero |>.mp h0
    · exact pow_eq_zero_iff two_ne_zero |>.mp h1
    · exact pow_eq_zero_iff two_ne_zero |>.mp h2
  have alg : ∀ u0 u1 u2 v0 v1 v2 d0 d1 d2 : ℝ, d0 * u0 + d1 * u1 + d2 * u2 = 0 →
      d0 * v0 + d1 * v1 + d2 * v2 = 0 →
      d0 * ((u1 * v2 - u2 * v1) ^ 2 + (u2 * v0 - u0 * v2) ^ 2 + (u0 * v1 - u1 * v0) ^ 2) =
          (d0 * (u1 * v2 - u2 * v1) + d1 * (u2 * v0 - u0 * v2) + d2 * (u0 * v1 - u1 * v0)) *
            (u1 * v2 - u2 * v1) ∧
      d1 * ((u1 * v2 - u2 * v1) ^ 2 + (u2 * v0 - u0 * v2) ^ 2 + (u0 * v1 - u1 * v0) ^ 2) =
          (d0 * (u1 * v2 - u2 * v1) + d1 * (u2 * v0 - u0 * v2) + d2 * (u0 * v1 - u1 * v0)) *
            (u2 * v0 - u0 * v2) ∧
      d2 * ((u1 * v2 - u2 * v1) ^ 2 + (u2 * v0 - u0 * v2) ^ 2 + (u0 * v1 - u1 * v0) ^ 2) =
          (d0 * (u1 * v2 - u2 * v1) + d1 * (u2 * v0 - u0 * v2) + d2 * (u0 * v1 - u1 * v0)) *
            (u0 * v1 - u1 * v0) := by
    intro u0 u1 u2 v0 v1 v2 d0 d1 d2 h0 h1
    refine ⟨?_, ?_, ?_⟩
    · linear_combination ((u2 * v0 - u0 * v2) * u2 - (u0 * v1 - u1 * v0) * u1) * h1
        - ((u2 * v0 - u0 * v2) * v2 - (u0 * v1 - u1 * v0) * v1) * h0
    · linear_combination ((u0 * v1 - u1 * v0) * u0 - (u1 * v2 - u2 * v1) * u2) * h1
        - ((u0 * v1 - u1 * v0) * v0 - (u1 * v2 - u2 * v1) * v2) * h0
    · linear_combination ((u1 * v2 - u2 * v1) * u1 - (u2 * v0 - u0 * v2) * u0) * h1
        - ((u1 * v2 - u2 * v1) * v1 - (u2 * v0 - u0 * v2) * v0) * h0
  have hT0 := hdT 0
  have hT1 := hdT 1
  simp only [Fin.sum_univ_three] at hT0 hT1
  obtain ⟨k0, k1, k2⟩ := alg _ _ _ _ _ _ _ _ _ hT0 hT1
  obtain ⟨lam, hlam⟩ : ∃ lam : ℝ, ∀ k : Fin 3, partialDeriv k f (F x) = lam * gsCrossN F x k := by
    refine ⟨(partialDeriv 0 f (F x) * gsCrossN F x 0 + partialDeriv 1 f (F x) * gsCrossN F x 1
      + partialDeriv 2 f (F x) * gsCrossN F x 2) /
        (gsCrossN F x 0 ^ 2 + gsCrossN F x 1 ^ 2 + gsCrossN F x 2 ^ 2), ?_⟩
    have k0' : partialDeriv 0 f (F x) *
        (gsCrossN F x 0 ^ 2 + gsCrossN F x 1 ^ 2 + gsCrossN F x 2 ^ 2) =
        (partialDeriv 0 f (F x) * gsCrossN F x 0 + partialDeriv 1 f (F x) * gsCrossN F x 1
          + partialDeriv 2 f (F x) * gsCrossN F x 2) * gsCrossN F x 0 := k0
    have k1' : partialDeriv 1 f (F x) *
        (gsCrossN F x 0 ^ 2 + gsCrossN F x 1 ^ 2 + gsCrossN F x 2 ^ 2) =
        (partialDeriv 0 f (F x) * gsCrossN F x 0 + partialDeriv 1 f (F x) * gsCrossN F x 1
          + partialDeriv 2 f (F x) * gsCrossN F x 2) * gsCrossN F x 1 := k1
    have k2' : partialDeriv 2 f (F x) *
        (gsCrossN F x 0 ^ 2 + gsCrossN F x 1 ^ 2 + gsCrossN F x 2 ^ 2) =
        (partialDeriv 0 f (F x) * gsCrossN F x 0 + partialDeriv 1 f (F x) * gsCrossN F x 1
          + partialDeriv 2 f (F x) * gsCrossN F x 2) * gsCrossN F x 2 := k2
    intro k
    rw [div_mul_eq_mul_div, eq_div_iff hNN.ne']
    fin_cases k
    · exact k0'
    · exact k1'
    · exact k2'
  have hlam0 : lam ≠ 0 := by
    intro h
    apply hd0
    funext k
    show partialDeriv k f (F x) = 0
    rw [hlam k, h, zero_mul]
  
  have hnLpos : 0 < gsNormLen G F x := Real.sqrt_pos.2 hQ
  have hnL2 : gsNormLen G F x ^ 2 =
      ∑ k : Fin 3, ∑ l : Fin 3, (G (F x))⁻¹ k l * gsCrossN F x k * gsCrossN F x l :=
    Real.sq_sqrt hQ.le
  have hlnL : lam * gsNormLen G F x ≠ 0 := mul_ne_zero hlam0 hnLpos.ne'
  have hS : (∑ a : Fin 3, ∑ b : Fin 3,
      (G (F x))⁻¹ a b * partialDeriv a f (F x) * partialDeriv b f (F x)) =
      (lam * gsNormLen G F x) ^ 2 := by
    rw [mul_pow, hnL2]
    simp only [hlam, Fin.sum_univ_three]
    ring
  
  have hΓ : ∀ m p n : Fin 3, christoffel G m p n (F x) = christoffel G m n p (F x) := by
    intro m p n
    have e1 : (fun z => G z n p) = (fun z => G z p n) := funext fun z => hGsymm z n p
    unfold christoffel
    rw [e1]
    congr 1
    apply Finset.sum_congr rfl
    intro l _
    ring
  have h10 : ∀ k : Fin 3, christoffel G k 1 0 (F x) = christoffel G k 0 1 (F x) :=
    fun k => hΓ k 1 0
  have h20 : ∀ k : Fin 3, christoffel G k 2 0 (F x) = christoffel G k 0 2 (F x) :=
    fun k => hΓ k 2 0
  have h21 : ∀ k : Fin 3, christoffel G k 2 1 (F x) = christoffel G k 1 2 (F x) :=
    fun k => hΓ k 2 1
  have hIIsymm : ∀ b c : Fin 2, gsSff G F b c x = gsSff G F c b x := by
    intro b c
    unfold gsSff gsCovHess
    rw [hHsymm b c]
    simp only [Fin.sum_univ_three, h10, h20, h21]
    ring
  have hhm : (pullMetric2 G F x).transpose = pullMetric2 G F x := by
    ext a b
    simp only [Matrix.transpose_apply, pullMetric2]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro k _
    apply Finset.sum_congr rfl
    intro l _
    rw [hGsymm (F x) l k]
    ring
  have hKsymm : ∀ a b : Fin 2, (pullMetric2 G F x)⁻¹ a b = (pullMetric2 G F x)⁻¹ b a := by
    intro a b
    have h := congrFun (congrFun (Matrix.transpose_nonsing_inv (pullMetric2 G F x)) a) b
    rw [hhm, Matrix.transpose_apply] at h
    exact h.symm
  
  have hHt : ∀ b c : Fin 2, (∑ j : Fin 3, ∑ k : Fin 3,
      gsTan F b x j * hessLoc G f j k (F x) * gsTan F c x k) =
      -(lam * gsNormLen G F x) * gsSff G F b c x := by
    intro b c
    have hII : gsSff G F b c x * gsNormLen G F x =
        ∑ k : Fin 3, gsCrossN F x k * gsCovHess G F b c x k := by
      unfold gsSff
      exact div_mul_cancel₀ _ hnLpos.ne'
    have hc := hchain b c
    simp only [hessLoc, gsCovHess, hlam, Fin.sum_univ_three] at hII hc ⊢
    linear_combination hc + lam * hII
  
  have h1 : secondFundSq G f (F x) = gsSffSq G F x := by
    unfold secondFundSq
    simp only [hP]
    rw [c1]
    simp only [hHt]
    rw [hS]
    unfold gsSffSq gsInner
    simp only [Fin.sum_univ_two]
    rw [hKsymm 1 0, hIIsymm 1 0]
    rw [div_eq_iff (pow_ne_zero 2 hlnL)]
    ring
  
  have hXY : (∑ i : Fin 3, ∑ j : Fin 3, (G (F x))⁻¹ i j * hessLoc G f i j (F x)) -
      (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
        (G (F x))⁻¹ i a * partialDeriv a f (F x) *
          ((G (F x))⁻¹ j b * partialDeriv b f (F x)) * hessLoc G f i j (F x)) /
      (∑ a : Fin 3, ∑ b : Fin 3,
        (G (F x))⁻¹ a b * partialDeriv a f (F x) * partialDeriv b f (F x)) =
      -(lam * gsNormLen G F x) * gsMeanCurv G F x := by
    rw [← c3]
    simp only [hP]
    rw [c2]
    simp only [hHt]
    unfold gsMeanCurv gsTrace
    simp only [Fin.sum_univ_two]
    ring
  have e1 : hessGGLoc G f f (F x) = ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
      (G (F x))⁻¹ i a * partialDeriv a f (F x) *
        ((G (F x))⁻¹ j b * partialDeriv b f (F x)) * hessLoc G f i j (F x) := by
    unfold hessGGLoc gradUpLoc
    simp only [Fin.sum_univ_three]
    ring
  have hmc' : lapLoc G f (F x) - hessGGLoc G f f (F x) / gradSqLoc G f (F x) =
      -(lam * gsNormLen G F x) * gsMeanCurv G F x := by
    rw [e1, ← hXY]
    rfl
  have hSeq : gradSqLoc G f (F x) = (lam * gsNormLen G F x) ^ 2 := hS
  have hmc : gsMeanCurv G F x ^ 2 =
      (lapLoc G f (F x) - hessGGLoc G f f (F x) / gradSqLoc G f (F x)) ^ 2 /
        gradSqLoc G f (F x) := by
    rw [hmc', hSeq, eq_div_iff (pow_ne_zero 2 hlnL)]
    ring
  
  have hRic : ejpRic G f (F x) = ricGradLoc G f (F x) / gradSqLoc G f (F x) := by
    have hS' : ejpS G f (F x) = gradSqLoc G f (F x) := rfl
    unfold ejpRic
    rw [hS']
    congr 1
    unfold ricGradLoc ejpN gradUpLoc
    apply Finset.sum_congr rfl
    intro j _
    apply Finset.sum_congr rfl
    intro k _
    ring
  
  have hGt : (G (F x)).transpose = G (F x) := by
    ext a b
    rw [Matrix.transpose_apply]
    exact hGsymm (F x) b a
  have hAsymm : ∀ i j : Fin 3, (G (F x))⁻¹ i j = (G (F x))⁻¹ j i := by
    intro i j
    have h := congrFun (congrFun (Matrix.transpose_nonsing_inv (G (F x))) i) j
    rw [hGt, Matrix.transpose_apply] at h
    exact h.symm
  have hHsym : ∀ i j : Fin 3, hessLoc G f i j (F x) = hessLoc G f j i (F x) := by
    intro i j
    unfold hessLoc
    rw [hschw i j]
    congr 1
    apply Finset.sum_congr rfl
    intro k _
    rw [hΓ k i j]
  
  have sffAlg : ∀ (A H : Fin 3 → Fin 3 → ℝ) (n : Fin 3 → ℝ) (S : ℝ),
      (∀ i j, A i j = A j i) → (∀ i j, H i j = H j i) →
      (∑ i : Fin 3, ∑ j : Fin 3, ∑ k : Fin 3, ∑ l : Fin 3,
        (A i j - n i * n j / S) * H j k * (A k l - n k * n l / S) * H l i) / S =
      ((∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3, A i a * A j b * H i j * H a b)
        - 2 * (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
            A i j * (H i a * n a) * (H j b * n b)) / S
        + (∑ i : Fin 3, ∑ j : Fin 3, n i * n j * H i j) ^ 2 / S ^ 2) / S := by
    intro A H n S hA hH
    simp only [Fin.sum_univ_three]
    rw [hA 1 0, hA 2 0, hA 2 1, hH 1 0, hH 2 0, hH 2 1]
    ring
  have hsffExp : secondFundSq G f (F x) =
      (hessSqLoc G f (F x) - 2 * hessGradSqLoc G f (F x) / gradSqLoc G f (F x)
        + hessGGLoc G f f (F x) ^ 2 / gradSqLoc G f (F x) ^ 2) / gradSqLoc G f (F x) :=
    sffAlg (fun i j => (G (F x))⁻¹ i j) (fun i j => hessLoc G f i j (F x))
      (gradUpLoc G f (F x)) (gradSqLoc G f (F x)) hAsymm hHsym
  
  show gaussCurv2 (pullMetric2 G F) x = levelGaussLoc G f (F x)
  simp only [levelGaussLoc]
  linear_combination hgauss - (1 / 2 : ℝ) * hjcc - hRic + (1 / 2 : ℝ) * h1
    - (1 / 2 : ℝ) * hsffExp + (1 / 2 : ℝ) * hmc

theorem sternPsi_partialDiffeomorph [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (Φ : EndChart M)
    (X Y : E3 → E3) (q R₀ R₁ C : ℝ) (hXY : CoordChange X Y q R₀ R₁ C) :
    ∃ P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞, P.source = {x : E3 | R₁ < ‖x‖} ∧
      ∀ x ∈ P.source, P x = sternPsi Φ Y x :=
by
  obtain ⟨hR02, hR01, hC, hXs, hYs, hYX, hXinj, -⟩ := hXY
  have hU₁ : IsOpen {x : E3 | R₁ < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hV₀ : IsOpen {y : E3 | R₀ < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hVsrc : ∀ y : E3, R₀ < ‖y‖ → y ∈ Φ.Φ.source := by
    intro y hy
    rw [Φ.source_eq]
    show (1 : ℝ) < ‖y‖
    linarith
  have hYsrc : ∀ z : E3, R₁ < ‖z‖ → Y z ∈ Φ.Φ.source := fun z hz => hVsrc _ (hYX z hz).1
  have hW : IsOpen ({y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖}) :=
    hXs.continuousOn.isOpen_inter_preimage hV₀ hU₁
  have hT : IsOpen (Φ.Φ.target ∩
      Φ.Φ.invFun ⁻¹' ({y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖})) :=
    Φ.Φ.contMDiffOn_invFun.continuousOn.isOpen_inter_preimage Φ.Φ.open_target hW
  refine ⟨{ toFun := sternPsi Φ Y
            invFun := fun p => X (Φ.Φ.invFun p)
            source := {x : E3 | R₁ < ‖x‖}
            target := Φ.Φ.target ∩
              Φ.Φ.invFun ⁻¹' ({y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖})
            map_source' := ?_
            map_target' := ?_
            left_inv' := ?_
            right_inv' := ?_
            open_source := hU₁
            open_target := hT
            contMDiffOn_toFun := ?_
            contMDiffOn_invFun := ?_ }, rfl, fun x _ => rfl⟩
  · intro x hx
    have hy := hYsrc x hx
    have e1 : Φ.Φ.invFun (Φ.Φ (Y x)) = Y x := Φ.Φ.left_inv' hy
    refine ⟨Φ.Φ.map_source' hy, ?_⟩
    show Φ.Φ.invFun (Φ.Φ (Y x)) ∈ {y : E3 | R₀ < ‖y‖} ∩ X ⁻¹' {x : E3 | R₁ < ‖x‖}
    rw [e1]
    refine ⟨(hYX x hx).1, ?_⟩
    show R₁ < ‖X (Y x)‖
    rw [(hYX x hx).2]
    exact hx
  · intro p hp
    obtain ⟨_, _, h⟩ := hp
    exact h
  · intro x hx
    have e1 : Φ.Φ.invFun (Φ.Φ (Y x)) = Y x := Φ.Φ.left_inv' (hYsrc x hx)
    show X (Φ.Φ.invFun (Φ.Φ (Y x))) = x
    rw [e1]
    exact (hYX x hx).2
  · intro p hp
    obtain ⟨hpt, hy0, hy1⟩ := hp
    have hy0' : R₀ < ‖Φ.Φ.invFun p‖ := hy0
    have hy1' : R₁ < ‖X (Φ.Φ.invFun p)‖ := hy1
    obtain ⟨h1, h2⟩ := hYX _ hy1'
    have h3 : Y (X (Φ.Φ.invFun p)) = Φ.Φ.invFun p := hXinj h1 hy0' h2
    have h4 : Φ.Φ (Φ.Φ.invFun p) = p := Φ.Φ.right_inv' hpt
    show Φ.Φ (Y (X (Φ.Φ.invFun p))) = p
    rw [h3, h4]
  · exact Φ.Φ.contMDiffOn.comp (contMDiffOn_iff_contDiffOn.mpr hYs)
      (fun x hx => hYsrc x hx)
  · exact (contMDiffOn_iff_contDiffOn.mpr hXs).comp
      (Φ.Φ.contMDiffOn_invFun.mono Set.inter_subset_left)
      (fun p hp => by obtain ⟨_, h, _⟩ := hp; exact h)

theorem sternPhiM_contMDiff [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (u : M → ℝ)
    (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u) (ε : ℝ) (hε : 0 < ε) :
    ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (sternPhiM g u ε) :=
by
  intro p₀
  obtain ⟨hf, hQ, -⟩ := chart_pullback_gradInner g u hu p₀
  have hpd : ∀ y ∈ (chartAt E3 p₀).target, (g.coeff (chartAt E3 p₀).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p₀ y hy
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p₀).symm y i j)
      (chartAt E3 p₀).target := fun i j => g.smooth p₀ i j
  have hinv := ginv_contDiffOn _ _ hG hpd
  have hT : IsOpen (chartAt E3 p₀).target := (chartAt E3 p₀).open_target
  have hdf : ContDiffOn ℝ ∞ (fderiv ℝ (fun y => u ((chartAt E3 p₀).symm y)))
      (chartAt E3 p₀).target := hf.fderiv_of_isOpen hT (by simp)
  have hpart : ∀ i : Fin 3, ContDiffOn ℝ ∞
      (partialDeriv i (fun y => u ((chartAt E3 p₀).symm y))) (chartAt E3 p₀).target := by
    intro i
    exact hdf.clm_apply contDiffOn_const
  obtain ⟨Q, hQdef⟩ : ∃ Q : E3 → ℝ, Q = fun y => ∑ i : Fin 3, ∑ j : Fin 3,
      (g.coeff (chartAt E3 p₀).symm y)⁻¹ i j *
        partialDeriv i (fun z => u ((chartAt E3 p₀).symm z)) y *
        partialDeriv j (fun z => u ((chartAt E3 p₀).symm z)) y := ⟨_, rfl⟩
  have hQ' : ∀ y ∈ (chartAt E3 p₀).target, g.gradInner u u ((chartAt E3 p₀).symm y) = Q y := by
    intro y hy
    rw [hQ y hy, hQdef]
  have hQs : ContDiffOn ℝ ∞ Q (chartAt E3 p₀).target := by
    rw [hQdef]
    apply ContDiffOn.sum
    intro i _
    apply ContDiffOn.sum
    intro j _
    exact ((hinv i j).mul (hpart i)).mul (hpart j)
  have hQnn : ∀ y ∈ (chartAt E3 p₀).target, 0 ≤ Q y := by
    intro y hy
    have hA := (hpd y hy).inv.posSemidef
    have h := hA.dotProduct_mulVec_nonneg
      (fun i => partialDeriv i (fun z => u ((chartAt E3 p₀).symm z)) y)
    simp only [Pi.star_apply, star_trivial, dotProduct, Matrix.mulVec, Finset.mul_sum] at h
    rw [hQdef]
    refine le_of_le_of_eq h ?_
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  have hF : ContDiffOn ℝ ∞ (fun y => sternPhiM g u ε ((chartAt E3 p₀).symm y))
      (chartAt E3 p₀).target := by
    have h1 : ContDiffOn ℝ ∞ (fun y => Real.sqrt (Q y + ε)) (chartAt E3 p₀).target :=
      (hQs.add contDiffOn_const).sqrt (fun y hy => by
        have := hQnn y hy
        exact ne_of_gt (by linarith))
    refine h1.congr ?_
    intro y hy
    show Real.sqrt (g.gradInner u u ((chartAt E3 p₀).symm y) + ε) = Real.sqrt (Q y + ε)
    rw [hQ' y hy]
  have hFm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞
      (fun y => sternPhiM g u ε ((chartAt E3 p₀).symm y)) (chartAt E3 p₀).target :=
    contMDiffOn_iff_contDiffOn.mpr hF
  have hcomp := hFm.comp (contMDiffOn_chart (x := p₀))
    (fun x hx => (chartAt E3 p₀).map_source hx)
  have hsrc : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (sternPhiM g u ε) (chartAt E3 p₀).source := by
    refine hcomp.congr ?_
    intro x hx
    show sternPhiM g u ε x = sternPhiM g u ε ((chartAt E3 p₀).symm (chartAt E3 p₀ x))
    rw [(chartAt E3 p₀).left_inv hx]
  exact hsrc.contMDiffAt ((chartAt E3 p₀).open_source.mem_nhds (mem_chart_source E3 p₀))

theorem weighted_gradient_field [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (a f : M → ℝ)
    (ha : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ a) (hf : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f) :
    ∃ Z : M → E3, calSmoothField Z ∧ (∀ p : M, a p = 0 → Z p = 0) ∧
      (∀ (q : M) (y : E3), y ∈ (chartAt E3 q).target → ∀ i : Fin 3,
        (show E3 from mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)
          (Z ((chartAt E3 q).symm y))) i =
          a ((chartAt E3 q).symm y) * ∑ k : Fin 3, (g.coeff (chartAt E3 q).symm y)⁻¹ i k *
            partialDeriv k (fun z => f ((chartAt E3 q).symm z)) y) ∧
      (∀ (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (x : E3), x ∈ P.source →
        ∀ w : E3, (∀ i : Fin 3, w i = a (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k *
          partialDeriv k (fun z => f (P z)) x) →
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x w = Z (P x)) :=
by
  classical
  
  have bilin_riesz : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ),
      (∀ v : E3, v ≠ 0 → 0 < B v v) → ∀ (ℓ : E3 →L[ℝ] ℝ), ∃ v : E3, ∀ w : E3, B v w = ℓ w := by
    intro B hpos ℓ
    let D := InnerProductSpace.toDual ℝ E3
    let Tm : E3 →ₗ[ℝ] E3 :=
      { toFun := fun v => D.symm (B v)
        map_add' := fun v w => by simp
        map_smul' := fun c v => by simp }
    have hinj : Function.Injective Tm := by
      intro v w hvw
      have h1 : B v = B w := by
        have := congrArg D hvw
        simpa [Tm] using this
      by_contra hne
      have h2 := hpos (v - w) (sub_ne_zero.mpr hne)
      have h3 : B (v - w) = 0 := by rw [map_sub, h1, sub_self]
      rw [h3] at h2
      simp at h2
    have hsurj := LinearMap.injective_iff_surjective.mp hinj
    obtain ⟨v, hv⟩ := hsurj (D.symm ℓ)
    refine ⟨v, fun w => ?_⟩
    have h1 : B v = ℓ := by
      have := congrArg D hv
      simpa [Tm] using this
    rw [h1]
  choose N hN0 using fun p : M => bilin_riesz (g.g p) (g.posDef p)
    (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f p : E3 →L[ℝ] ℝ)
  have hN : ∀ (p : M) (v : E3), g.g p (N p) v = (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f p v : ℝ) :=
    fun p v => hN0 p v
  
  have coeff_det : ∀ (Φ : E3 → M) (x : E3),
      Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x) → (g.coeff Φ x).det ≠ 0 := by
    intro Φ x hD h0
    obtain ⟨z, hz0, hz⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr h0
    have hvz : (∑ i, z i • e i : E3) ≠ 0 := by
      intro h0'
      apply hz0
      funext j
      have h1 := congrArg (fun v : E3 => v j) h0'
      fin_cases j <;> simpa [e, Fin.sum_univ_three, EuclideanSpace.single_apply] using h1
    have hDv : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x (∑ i, z i • e i : E3) ≠ 0 := by
      intro h
      apply hvz
      apply hD
      rw [h, map_zero]
    have hpos := g.posDef (Φ x) _ hDv
    have key : z ⬝ᵥ (g.coeff Φ x).mulVec z =
        g.g (Φ x) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x (∑ i, z i • e i : E3))
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x (∑ i, z i • e i : E3)) := by
      simp only [map_smul, ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three,
        map_add, ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec,
        RiemannianMetric3.coeff, coeffMatrix]
      ring
    rw [hz, dotProduct_zero] at key
    linarith
  
  have param : ∀ (Φ : E3 → M) (x : E3), MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x →
      Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x) → ∀ (c : ℝ) (w : E3),
      (∀ i : Fin 3, w i = c * ∑ k : Fin 3, (g.coeff Φ x)⁻¹ i k *
        partialDeriv k (fun z => f (Φ z)) x) →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x w = c • N (Φ x) := by
    intro Φ x hΦ hD c w hw
    obtain ⟨D, hDdef⟩ : ∃ D : E3 →L[ℝ] E3, D = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x := ⟨_, rfl⟩
    have hDi : Function.Injective D := by rw [hDdef]; exact hD
    have hDs : Function.Surjective (D : E3 →ₗ[ℝ] E3) := LinearMap.injective_iff_surjective.mp hDi
    obtain ⟨u, hu⟩ := hDs (N (Φ x))
    have hu' : D u = N (Φ x) := hu
    have hfd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f (Φ x) := hf.mdifferentiableAt (by simp)
    have hchain : ∀ b : Fin 3, partialDeriv b (fun z => f (Φ z)) x =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f (Φ x) (D (e b)) := by
      intro b
      have h1 := mfderiv_comp x hfd hΦ
      rw [mfderiv_eq_fderiv] at h1
      unfold partialDeriv
      rw [show (fun z => f (Φ z)) = f ∘ Φ from rfl, h1, hDdef]
      rfl
    have hexp : u = ∑ a : Fin 3, u a • e a := by
      ext j
      fin_cases j <;> simp [Fin.sum_univ_three, e, EuclideanSpace.single_apply]
    have h1 : ∀ b : Fin 3, g.g (Φ x) (D u) (D (e b)) =
        ∑ a : Fin 3, u a * g.coeff Φ x a b := by
      intro b
      conv_lhs => rw [hexp]
      simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
        smul_eq_mul, RiemannianMetric3.coeff, coeffMatrix, hDdef]
      try rfl
    have hsys : ∀ b : Fin 3, ∑ a : Fin 3, u a * g.coeff Φ x a b =
        partialDeriv b (fun z => f (Φ z)) x := by
      intro b
      rw [← h1 b, hu', hN, hchain b]
    have hmv : (g.coeff Φ x).mulVec (fun a => u a) =
        fun b => partialDeriv b (fun z => f (Φ z)) x := by
      funext b
      rw [← hsys b]
      simp only [Matrix.mulVec, dotProduct]
      refine Finset.sum_congr rfl (fun a _ => ?_)
      have hs : g.coeff Φ x b a = g.coeff Φ x a b := by
        simp only [RiemannianMetric3.coeff, coeffMatrix]
        exact g.symm _ _ _
      rw [hs]
      ring
    have hdet : IsUnit (g.coeff Φ x).det := isUnit_iff_ne_zero.mpr (coeff_det Φ x hD)
    have hsol : (fun a => u a) = ((g.coeff Φ x)⁻¹).mulVec
        (fun b => partialDeriv b (fun z => f (Φ z)) x) := by
      have h2 := congrArg (fun v => ((g.coeff Φ x)⁻¹).mulVec v) hmv
      simp only [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hdet, Matrix.one_mulVec] at h2
      exact h2
    have hwu : w = c • u := by
      refine PiLp.ext (fun i => ?_)
      rw [hw i, PiLp.smul_apply, smul_eq_mul]
      congr 1
      have h2 := congrFun hsol i
      simpa [Matrix.mulVec, dotProduct] using h2.symm
    rw [← hDdef, hwu, map_smul]
    exact congrArg (fun v : E3 => c • v) hu'
  
  have hinv : ∀ (q : M) (y : E3), y ∈ (chartAt E3 q).target → ∀ v : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y v) = v := by
    intro q y hy
    have hx : (chartAt E3 q).symm y ∈ (chartAt E3 q).source := (chartAt E3 q).map_target hy
    have hf' : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 q) hx
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 q) ∘ (chartAt E3 q).symm) y =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y) := mfderiv_comp y hg hf'
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 q) ∘ (chartAt E3 q).symm) y =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id y := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 q).eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    intro v
    have h1 := congrArg (fun L => L v) (hcomp.symm.trans hid)
    simpa using h1
  have hcinj : ∀ (q : M) (y : E3), y ∈ (chartAt E3 q).target →
      Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y) := by
    intro q y hy v1 v2 h
    have h2 := congrArg (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)) h
    rwa [hinv q y hy, hinv q y hy] at h2
  
  have hZ3 : ∀ (q : M) (y : E3), y ∈ (chartAt E3 q).target → ∀ i : Fin 3,
      (show E3 from mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)
        (a ((chartAt E3 q).symm y) • N ((chartAt E3 q).symm y))) i =
        a ((chartAt E3 q).symm y) * ∑ k : Fin 3, (g.coeff (chartAt E3 q).symm y)⁻¹ i k *
          partialDeriv k (fun z => f ((chartAt E3 q).symm z)) y := by
    intro q y hy i
    have hΦ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q) hy
    have hp := param (chartAt E3 q).symm y hΦ (hcinj q y hy) (a ((chartAt E3 q).symm y))
      (WithLp.toLp 2 (fun i => a ((chartAt E3 q).symm y) * ∑ k : Fin 3,
        (g.coeff (chartAt E3 q).symm y)⁻¹ i k *
          partialDeriv k (fun z => f ((chartAt E3 q).symm z)) y)) (fun i => rfl)
    have h2 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)
        (a ((chartAt E3 q).symm y) • N ((chartAt E3 q).symm y)) =
        WithLp.toLp 2 (fun i => a ((chartAt E3 q).symm y) * ∑ k : Fin 3,
          (g.coeff (chartAt E3 q).symm y)⁻¹ i k *
            partialDeriv k (fun z => f ((chartAt E3 q).symm z)) y) := by
      rw [← hp, hinv q y hy]
    exact congrArg (fun v : E3 => v i) h2
  
  have hZ1 : calSmoothField (fun p => a p • N p) := by
    intro q
    have hS : IsOpen (chartAt E3 q).target := (chartAt E3 q).open_target
    have hfc : ContDiffOn ℝ ∞ (fun z => f ((chartAt E3 q).symm z)) (chartAt E3 q).target := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (f ∘ (chartAt E3 q).symm)
          (chartAt E3 q).target :=
        hf.comp_contMDiffOn contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp h1
    have hac : ContDiffOn ℝ ∞ (fun z => a ((chartAt E3 q).symm z)) (chartAt E3 q).target := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (a ∘ (chartAt E3 q).symm)
          (chartAt E3 q).target :=
        ha.comp_contMDiffOn contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp h1
    have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => g.coeff (chartAt E3 q).symm z i j)
        (chartAt E3 q).target := fun i j => g.smooth q i j
    have hdet0 : ∀ z ∈ (chartAt E3 q).target, (g.coeff (chartAt E3 q).symm z).det ≠ 0 :=
      fun z hz => coeff_det _ z (hcinj q z hz)
    have hdetT : ContDiffOn ℝ ∞ (fun y => (g.coeff (chartAt E3 q).symm y).det)
        (chartAt E3 q).target := by
      have e1 : (fun y => (g.coeff (chartAt E3 q).symm y).det) = fun y =>
          g.coeff (chartAt E3 q).symm y 0 0 * g.coeff (chartAt E3 q).symm y 1 1 *
              g.coeff (chartAt E3 q).symm y 2 2
          - g.coeff (chartAt E3 q).symm y 0 0 * g.coeff (chartAt E3 q).symm y 1 2 *
              g.coeff (chartAt E3 q).symm y 2 1
          - g.coeff (chartAt E3 q).symm y 0 1 * g.coeff (chartAt E3 q).symm y 1 0 *
              g.coeff (chartAt E3 q).symm y 2 2
          + g.coeff (chartAt E3 q).symm y 0 1 * g.coeff (chartAt E3 q).symm y 1 2 *
              g.coeff (chartAt E3 q).symm y 2 0
          + g.coeff (chartAt E3 q).symm y 0 2 * g.coeff (chartAt E3 q).symm y 1 0 *
              g.coeff (chartAt E3 q).symm y 2 1
          - g.coeff (chartAt E3 q).symm y 0 2 * g.coeff (chartAt E3 q).symm y 1 1 *
              g.coeff (chartAt E3 q).symm y 2 0 := by
        funext y; exact Matrix.det_fin_three _
      rw [e1]
      have h := hG
      exact (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
        (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
        (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
    have hdinv : ContDiffOn ℝ ∞ (fun z => ((g.coeff (chartAt E3 q).symm z).det)⁻¹)
        (chartAt E3 q).target :=
      hdetT.inv (fun z hz => hdet0 z hz)
    have h00 := hG 0 0
    have h01 := hG 0 1
    have h02 := hG 0 2
    have h10 := hG 1 0
    have h11 := hG 1 1
    have h12 := hG 1 2
    have h20 := hG 2 0
    have h21 := hG 2 1
    have h22 := hG 2 2
    have hadj : ∀ i j : Fin 3, ContDiffOn ℝ ∞
        (fun z => (g.coeff (chartAt E3 q).symm z).adjugate i j) (chartAt E3 q).target := by
      intro i j
      fin_cases i <;> fin_cases j <;> simp [Matrix.adjugate_fin_three] <;> fun_prop
    have hinvE : ∀ i j : Fin 3, ContDiffOn ℝ ∞
        (fun z => (g.coeff (chartAt E3 q).symm z)⁻¹ i j) (chartAt E3 q).target := by
      intro i j
      have e1 : (fun z => (g.coeff (chartAt E3 q).symm z)⁻¹ i j) = fun z =>
          ((g.coeff (chartAt E3 q).symm z).det)⁻¹ *
            (g.coeff (chartAt E3 q).symm z).adjugate i j := by
        funext z
        rw [Matrix.inv_def, Ring.inverse_eq_inv', Matrix.smul_apply, smul_eq_mul]
      rw [e1]
      exact hdinv.mul (hadj i j)
    have hfd : ContDiffOn ℝ ∞ (fun y => fderiv ℝ (fun z => f ((chartAt E3 q).symm z)) y)
        (chartAt E3 q).target := hfc.fderiv_of_isOpen hS (by simp)
    have hpd : ∀ k : Fin 3, ContDiffOn ℝ ∞
        (fun z => partialDeriv k (fun z => f ((chartAt E3 q).symm z)) z)
        (chartAt E3 q).target := fun k => hfd.clm_apply contDiffOn_const
    rw [contDiffOn_piLp]
    intro i
    have hc : ContDiffOn ℝ ∞ (fun z => a ((chartAt E3 q).symm z) * ∑ k : Fin 3,
        (g.coeff (chartAt E3 q).symm z)⁻¹ i k *
          partialDeriv k (fun z => f ((chartAt E3 q).symm z)) z) (chartAt E3 q).target :=
      hac.mul (ContDiffOn.sum (fun k _ => (hinvE i k).mul (hpd k)))
    exact hc.congr (fun z hz => hZ3 q z hz i)
  
  have hZ4 : ∀ (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (x : E3), x ∈ P.source →
      ∀ w : E3, (∀ i : Fin 3, w i = a (P x) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k *
        partialDeriv k (fun z => f (P z)) x) →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x w = a (P x) • N (P x) := by
    intro P x hx w hw
    have hΦ : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x := P.mdifferentiableAt (by simp) hx
    have hloc := P.isLocalDiffeomorphAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ hx
    have key : ∀ v : E3, (hloc.mfderivToContinuousLinearEquiv (by simp)) v =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x v := fun v =>
      congrArg (fun L => L v) (hloc.mfderivToContinuousLinearEquiv_coe (by simp))
    have hD : Function.Injective (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x) := by
      intro v1 v2 h
      apply (hloc.mfderivToContinuousLinearEquiv (by simp)).injective
      rw [key, key]
      exact h
    exact param P x hΦ hD (a (P x)) w hw
  refine ⟨fun p => a p • N p, hZ1, fun p hp => ?_, hZ3, hZ4⟩
  show a p • N p = 0
  rw [hp, zero_smul]

theorem stern_far_cutoff [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) (X Y : E3 → E3) (q R₀ R₁ C : ℝ)
    (hq0 : 0 < q) (hq1 : q < 1) (hXY : CoordChange X Y q R₀ R₁ C)
    (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (hPs : P.source = {x : E3 | R₁ < ‖x‖})
    (hP : ∀ x ∈ P.source, P x = sternPsi (hAF.ends k) Y x) :
    ∃ χ : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ χ ∧ (∀ p, 0 ≤ χ p ∧ χ p ≤ 1) ∧
      (∀ x : E3, R₁ < ‖x‖ → χ (P x) = Real.smoothTransition (‖x‖ - (R₁ + 1))) ∧
      (∀ p : M, p ∉ P '' {x : E3 | R₁ + 1 ≤ ‖x‖} → ∀ᶠ z in 𝓝 p, χ z = 0) ∧
      (∀ L : ℝ, R₁ + 2 < L → ∀ p ∈ frontier (sternOuter (hAF.ends k) Y L),
        ∀ᶠ z in 𝓝 p, χ z = 1) :=
by
  classical
  
  
  
  have hfar : ∃ ρ₀ : ℝ, 2 ≤ ρ₀ ∧ ∀ ρ : ℝ, ρ₀ ≤ ρ →
      IsClosed ((hAF.ends k).Φ '' {x : E3 | ρ ≤ ‖x‖}) := by
    have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
    have hq : 0 < hAF.q := by linarith [hAF.q_gt]
    have hnormsq : ∀ v : E3, ‖v‖ ^ 2 = v 0 ^ 2 + v 1 ^ 2 + v 2 ^ 2 := by
      intro v
      rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_three]
      simp only [Real.norm_eq_abs, sq_abs]
    have s1 : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ),
        (∀ i j : Fin 3, |A i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6) →
        ∀ v : E3, ‖v‖ ^ 2 / 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, v i * v j * A i j := by
      intro A hA v
      have key : ∀ i j : Fin 3, (if i = j then (1 : ℝ) else 0) * (v i * v j)
          - 1 / 6 * (|v i| * |v j|) ≤ v i * v j * A i j := by
        intro i j
        have h1 : -|(A i j - (if i = j then (1 : ℝ) else 0)) * (v i * v j)| ≤
            (A i j - (if i = j then (1 : ℝ) else 0)) * (v i * v j) := neg_abs_le _
        have h2 : |(A i j - (if i = j then (1 : ℝ) else 0)) * (v i * v j)| ≤
            1 / 6 * (|v i| * |v j|) := by
          rw [abs_mul, abs_mul]
          exact mul_le_mul_of_nonneg_right (hA i j) (by positivity)
        nlinarith
      have k00 := key 0 0
      have k01 := key 0 1
      have k02 := key 0 2
      have k10 := key 1 0
      have k11 := key 1 1
      have k12 := key 1 2
      have k20 := key 2 0
      have k21 := key 2 1
      have k22 := key 2 2
      simp only [Fin.isValue, if_true, if_false, Fin.reduceEq] at k00 k01 k02 k10 k11 k12 k20 k21 k22
      rw [hnormsq]
      simp only [Fin.sum_univ_three]
      have a01 := two_mul_le_add_sq |v 0| |v 1|
      have a02 := two_mul_le_add_sq |v 0| |v 2|
      have a12 := two_mul_le_add_sq |v 1| |v 2|
      simp only [sq_abs] at a01 a02 a12
      have q0 : |v 0| * |v 0| = v 0 ^ 2 := by rw [← sq, sq_abs]
      have q1 : |v 1| * |v 1| = v 1 ^ 2 := by rw [← sq, sq_abs]
      have q2 : |v 2| * |v 2| = v 2 ^ 2 := by rw [← sq, sq_abs]
      nlinarith
    obtain ⟨R, hR2, hRb⟩ : ∃ R : ℝ, 2 ≤ R ∧ ∀ x : E3, R < ‖x‖ → ∀ i j : Fin 3,
        |g.coeff (hAF.ends k).Φ x i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6 := by
      have hev : ∀ i j : Fin 3, ∀ᶠ x in Bornology.cobounded E3,
          |g.coeff (hAF.ends k).Φ x i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6 := by
        intro i j
        have hO := hAF.decay k i j 0 (by norm_num)
        have ht : Tendsto (fun x : E3 => ‖x‖ ^ (-hAF.q - ((0 : ℕ) : ℝ)))
            (Bornology.cobounded E3) (𝓝 0) := by
          have := (tendsto_rpow_neg_atTop hq).comp (tendsto_norm_cobounded_atTop (E := E3))
          simpa using this
        have h2 := hO.trans_tendsto ht
        have h3 := h2.eventually (eventually_le_nhds (show (0 : ℝ) < 1 / 6 by norm_num))
        filter_upwards [h3] with x hx
        simpa [norm_iteratedFDeriv_zero, Real.norm_eq_abs] using hx
      have hall : ∀ᶠ x in Bornology.cobounded E3, ∀ i j : Fin 3,
          |g.coeff (hAF.ends k).Φ x i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 6 :=
        Filter.eventually_all.2 fun i => Filter.eventually_all.2 fun j => hev i j
      rw [← comap_norm_atTop, Filter.eventually_comap, Filter.eventually_atTop] at hall
      obtain ⟨R₁, hR₁⟩ := hall
      refine ⟨max R₁ 2, le_max_right _ _, fun x hx => ?_⟩
      exact hR₁ ‖x‖ (le_trans (le_max_left _ _) hx.le) x rfl
    have LB : ∀ x : E3, R < ‖x‖ → ∀ v : E3,
        ‖v‖ ^ 2 / 2 ≤ ∑ i : Fin 3, ∑ j : Fin 3, v i * v j * g.coeff (hAF.ends k).Φ x i j :=
      fun x hx v => s1 _ (hRb x hx) v
    have s6 : ∀ (U : Set ℝ) (h h' : ℝ → E3) (K : ℝ), IsOpen U → 0 ≤ K → (0 : ℝ) ∈ U →
        (∀ t ∈ Set.Icc (0 : ℝ) 1, t ∈ U → HasDerivAt h (h' t) t ∧ ‖h' t‖ ≤ K) →
        (∀ (s : ℕ → ℝ) (τ : ℝ) (xb : E3), τ ∈ Set.Icc (0 : ℝ) 1 →
          (∀ n, s n ∈ Set.Icc (0 : ℝ) 1 ∧ s n ∈ U) →
          Tendsto s atTop (𝓝 τ) → Tendsto (fun n => h (s n)) atTop (𝓝 xb) →
          dist xb (h 0) ≤ K → τ ∈ U) →
        (1 : ℝ) ∈ U := by
      intro U h h' K hU hK h0 hD hcl
      have hlip : ∀ a b : ℝ, 0 ≤ a → a ≤ b → b ≤ 1 → (∀ x ∈ Set.Icc a b, x ∈ U) →
          ‖h b - h a‖ ≤ K * (b - a) := by
        intro a b ha hab hb1 hU'
        exact norm_image_sub_le_of_norm_deriv_le_segment' (f := h) (f' := h') (C := K)
          (fun x hx => ((hD x ⟨le_trans ha hx.1, le_trans hx.2 hb1⟩ (hU' x hx)).1).hasDerivWithinAt)
          (fun x hx => (hD x ⟨le_trans ha hx.1, le_trans hx.2.le hb1⟩
            (hU' x ⟨hx.1, hx.2.le⟩)).2) b ⟨hab, le_rfl⟩
      obtain ⟨T, hT⟩ : ∃ T : Set ℝ, T = {t | t ∈ Set.Icc (0 : ℝ) 1 ∧ ∀ s ∈ Set.Icc (0 : ℝ) t, s ∈ U} :=
        ⟨_, rfl⟩
      have h0T : (0 : ℝ) ∈ T := by
        rw [hT]
        refine ⟨⟨le_rfl, zero_le_one⟩, fun s hs => ?_⟩
        have : s = 0 := le_antisymm hs.2 hs.1
        rw [this]; exact h0
      have hTsub : ∀ t ∈ T, t ∈ Set.Icc (0 : ℝ) 1 ∧ ∀ s ∈ Set.Icc (0 : ℝ) t, s ∈ U := by
        intro t ht; rw [hT] at ht; exact ht
      have hbdd : BddAbove T := ⟨1, fun t ht => (hTsub t ht).1.2⟩
      obtain ⟨τ, hτ⟩ : ∃ τ : ℝ, τ = sSup T := ⟨_, rfl⟩
      have hτ0 : 0 ≤ τ := by rw [hτ]; exact le_csSup hbdd h0T
      have hτ1 : τ ≤ 1 := by rw [hτ]; exact csSup_le ⟨0, h0T⟩ (fun t ht => (hTsub t ht).1.2)
      have ha : ∀ s, 0 ≤ s → s < τ → s ∈ Set.Icc (0 : ℝ) 1 ∧ ∀ u ∈ Set.Icc (0 : ℝ) s, u ∈ U := by
        intro s hs0 hsτ
        rw [hτ] at hsτ
        obtain ⟨t, htT, hst⟩ := exists_lt_of_lt_csSup ⟨0, h0T⟩ hsτ
        have ht := hTsub t htT
        exact ⟨⟨hs0, le_trans hst.le ht.1.2⟩, fun u hu => ht.2 u ⟨hu.1, le_trans hu.2 hst.le⟩⟩
      have hτU : τ ∈ U := by
        rcases eq_or_lt_of_le hτ0 with h | hpos
        · rw [← h]; exact h0
        obtain ⟨s, hs⟩ : ∃ s : ℕ → ℝ, s = fun n : ℕ => τ * (1 - 1 / ((n : ℝ) + 2)) := ⟨_, rfl⟩
        have hs0 : ∀ n, 0 ≤ s n := by
          intro n
          have : 1 / ((n : ℝ) + 2) ≤ 1 := by
            rw [div_le_one (by positivity)]; linarith [(Nat.cast_nonneg n : (0 : ℝ) ≤ n)]
          rw [hs]; exact mul_nonneg hτ0 (by linarith)
        have hsτ : ∀ n, s n < τ := by
          intro n
          have : 0 < 1 / ((n : ℝ) + 2) := by positivity
          rw [hs]; nlinarith
        have hsT : ∀ n, s n ∈ Set.Icc (0 : ℝ) 1 ∧ ∀ u ∈ Set.Icc (0 : ℝ) (s n), u ∈ U :=
          fun n => ha (s n) (hs0 n) (hsτ n)
        have hsU : ∀ n, s n ∈ Set.Icc (0 : ℝ) 1 ∧ s n ∈ U :=
          fun n => ⟨(hsT n).1, (hsT n).2 (s n) ⟨hs0 n, le_rfl⟩⟩
        have hmono : Monotone s := by
          intro n m hnm
          have : 1 / ((m : ℝ) + 2) ≤ 1 / ((n : ℝ) + 2) := by
            apply one_div_le_one_div_of_le (by positivity)
            have : (n : ℝ) ≤ m := by exact_mod_cast hnm
            linarith
          rw [hs]; simp only; nlinarith
        have hlim : Tendsto s atTop (𝓝 τ) := by
          have h1 : Tendsto (fun n : ℕ => 1 / ((n : ℝ) + 2)) atTop (𝓝 0) := by
            have : Tendsto (fun n : ℕ => (n : ℝ) + 2) atTop atTop :=
              tendsto_atTop_add_const_right _ 2 tendsto_natCast_atTop_atTop
            simpa [one_div] using this.inv_tendsto_atTop
          have := (tendsto_const_nhds (x := τ)).mul ((tendsto_const_nhds (x := (1 : ℝ))).sub h1)
          rw [hs]
          simpa using this
        have hpair : ∀ n m, n ≤ m → ‖h (s m) - h (s n)‖ ≤ K * (s m - s n) := by
          intro n m hnm
          exact hlip (s n) (s m) (hs0 n) (hmono hnm) (le_trans (hsτ m).le hτ1)
            (fun x hx => (hsT m).2 x ⟨le_trans (hs0 n) hx.1, hx.2⟩)
        have hcauchy : CauchySeq (fun n => h (s n)) := by
          refine cauchySeq_of_le_tendsto_0 (fun N => 2 * (K * (τ - s N))) ?_ ?_
          · intro n m N hn hm
            rw [dist_eq_norm]
            have e1 := hpair N n hn
            have e2 := hpair N m hm
            have : ‖h (s n) - h (s m)‖ ≤ ‖h (s n) - h (s N)‖ + ‖h (s m) - h (s N)‖ := by
              rw [← norm_neg (h (s m) - h (s N))]
              calc ‖h (s n) - h (s m)‖ = ‖(h (s n) - h (s N)) + -(h (s m) - h (s N))‖ := by
                    congr 1; abel
                _ ≤ _ := norm_add_le _ _
            have hsn := hsτ n
            have hsm := hsτ m
            nlinarith
          · have := ((tendsto_const_nhds (x := τ)).sub hlim).const_mul K |>.const_mul 2
            simpa using this
        obtain ⟨xb, hxb⟩ := cauchySeq_tendsto_of_complete hcauchy
        refine hcl s τ xb ⟨hτ0, hτ1⟩ hsU hlim hxb ?_
        have hle : ∀ n, dist (h (s n)) (h 0) ≤ K := by
          intro n
          rw [dist_eq_norm]
          have := hlip 0 (s n) le_rfl (hs0 n) (le_trans (hsτ n).le hτ1)
            (fun x hx => (hsT n).2 x hx)
          have h1 : s n ≤ 1 := le_trans (hsτ n).le hτ1
          nlinarith
        exact le_of_tendsto (hxb.dist tendsto_const_nhds) (Eventually.of_forall hle)
      have hall : ∀ s ∈ Set.Icc (0 : ℝ) τ, s ∈ U := by
        intro s hs
        rcases eq_or_lt_of_le hs.2 with h | h
        · rw [h]; exact hτU
        · exact (ha s hs.1 h).2 s ⟨hs.1, le_rfl⟩
      have hτeq : τ = 1 := by
        by_contra hne
        have hlt : τ < 1 := lt_of_le_of_ne hτ1 hne
        obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.mp hU τ hτU
        have hT' : min 1 (τ + ε / 2) ∈ T := by
          rw [hT]
          refine ⟨⟨le_min zero_le_one (by linarith), min_le_left _ _⟩, fun s hs => ?_⟩
          by_cases hsτ : s ≤ τ
          · exact hall s ⟨hs.1, hsτ⟩
          · push_neg at hsτ
            apply hball
            rw [Metric.mem_ball, Real.dist_eq, abs_lt]
            have := min_le_right 1 (τ + ε / 2)
            constructor <;> linarith [hs.2]
        have := le_csSup hbdd hT'
        have h2 : τ < min 1 (τ + ε / 2) := lt_min hlt (by linarith)
        rw [← hτ] at this
        linarith
      rw [← hτeq]; exact hτU
    have hw : ∀ w : E3, w = ∑ a : Fin 3, w a • e a := by
      intro w
      ext k
      simp [e, Pi.single_apply]
    have hexp : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (D : E3 →L[ℝ] E3) (w1 w2 : E3),
        B (D w1) (D w2) = ∑ a : Fin 3, ∑ b : Fin 3, w1 a * w2 b * B (D (e a)) (D (e b)) := by
      intro B D w1 w2
      calc B (D w1) (D w2)
          = B (D (∑ a : Fin 3, w1 a • e a)) (D (∑ b : Fin 3, w2 b • e b)) := by
            rw [← hw w1, ← hw w2]
        _ = ∑ a : Fin 3, ∑ b : Fin 3, w1 a * w2 b * B (D (e a)) (D (e b)) := by
            simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
              ContinuousLinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
            conv_lhs => rw [Finset.sum_comm]
            refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
            ring
    set Φ := (hAF.ends k).Φ with hΦdef
    have hRI : ∀ z ∈ Φ.target, Φ (Φ.symm z) = z := fun z hz => Φ.toPartialEquiv.right_inv hz
    have hLI : ∀ x ∈ Φ.source, Φ.symm (Φ x) = x := fun x hx => Φ.toPartialEquiv.left_inv hx
    have hMS : ∀ x ∈ Φ.source, Φ x ∈ Φ.target := fun x hx => Φ.toPartialEquiv.map_source hx
    have hMT : ∀ z ∈ Φ.target, Φ.symm z ∈ Φ.source := fun z hz => Φ.toPartialEquiv.map_target hz
    have hΦsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ Φ.source := Φ.contMDiffOn_toFun
    refine ⟨2, le_rfl, fun ρ hρ => ?_⟩
    have hSc : IsClosed {x : E3 | ρ ≤ ‖x‖} := isClosed_le continuous_const continuous_norm
    have hSsrc : {x : E3 | ρ ≤ ‖x‖} ⊆ Φ.source := by
      intro x hx
      rw [hsrc]
      show (1 : ℝ) < ‖x‖
      have : ρ ≤ ‖x‖ := hx
      linarith
    rw [← closure_subset_iff_isClosed]
    intro p hp
    by_cases hpt : p ∈ Φ.target
    · by_contra hnot
      have hxS : Φ.symm p ∉ {x : E3 | ρ ≤ ‖x‖} := fun h => hnot ⟨_, h, hRI p hpt⟩
      have hV : IsOpen (Φ.target ∩ Φ.symm ⁻¹' {x : E3 | ρ ≤ ‖x‖}ᶜ) :=
        Φ.toOpenPartialHomeomorph.isOpen_inter_preimage_symm hSc.isOpen_compl
      obtain ⟨q, hqV, x, hx, rfl⟩ := mem_closure_iff.1 hp _ hV ⟨hpt, hxS⟩
      apply hqV.2
      show Φ.symm (Φ x) ∈ {x : E3 | ρ ≤ ‖x‖}
      rw [hLI x (hSsrc hx)]
      exact hx
    · exfalso
      set ψ := chartAt E3 p with hψdef
      have hpψ : p ∈ ψ.source := mem_chart_source E3 p
      have hyp : ψ p ∈ ψ.target := mem_chart_target E3 p
      obtain ⟨ε, hε, hεsub⟩ := Metric.isOpen_iff.1 ψ.open_target (ψ p) hyp
      obtain ⟨r, hr⟩ : ∃ r : ℝ, r = ε / 2 := ⟨_, rfl⟩
      have hr0 : 0 < r := by rw [hr]; linarith
      have hcb : closedBall (ψ p) r ⊆ ψ.target :=
        (closedBall_subset_ball (by rw [hr]; linarith)).trans hεsub
      have hKex : ∀ a b : Fin 3, ∃ K : ℝ, ∀ y ∈ closedBall (ψ p) r,
          |g.coeff ψ.symm y a b| ≤ K := by
        intro a b
        have hc : ContinuousOn (fun y => g.coeff ψ.symm y a b) ψ.target :=
          (g.smooth p a b).continuousOn
        obtain ⟨K, hK⟩ := (isCompact_closedBall (ψ p) r).exists_bound_of_continuousOn (hc.mono hcb)
        exact ⟨K, fun y hy => by simpa [Real.norm_eq_abs] using hK y hy⟩
      choose Kf hKf using hKex
      obtain ⟨K, hK⟩ : ∃ K : ℝ, K = ∑ a : Fin 3, ∑ b : Fin 3, |Kf a b| := ⟨_, rfl⟩
      have hK0 : 0 ≤ K := by rw [hK]; positivity
      have hKab : ∀ a b : Fin 3, ∀ y ∈ closedBall (ψ p) r, |g.coeff ψ.symm y a b| ≤ K := by
        intro a b y hy
        have h1 : |Kf a b| ≤ ∑ b' : Fin 3, |Kf a b'| :=
          Finset.single_le_sum (f := fun b' => |Kf a b'|) (fun b' _ => abs_nonneg _)
            (Finset.mem_univ b)
        have h2 : ∑ b' : Fin 3, |Kf a b'| ≤ K := by
          rw [hK]
          exact Finset.single_le_sum (f := fun a' => ∑ b' : Fin 3, |Kf a' b'|)
            (fun a' _ => Finset.sum_nonneg (fun _ _ => abs_nonneg _)) (Finset.mem_univ a)
        linarith [hKf a b y hy, le_abs_self (Kf a b)]
      obtain ⟨Λ, hΛ⟩ : ∃ Λ : ℝ, Λ = 3 * K + 1 := ⟨_, rfl⟩
      have hΛ0 : 0 < Λ := by rw [hΛ]; linarith
      have UB : ∀ y ∈ closedBall (ψ p) r, ∀ w : E3,
          ∑ a : Fin 3, ∑ b : Fin 3, w a * w b * g.coeff ψ.symm y a b ≤ Λ * ‖w‖ ^ 2 := by
        intro y hy w
        have t : ∀ a b : Fin 3, w a * w b * g.coeff ψ.symm y a b ≤ K * (|w a| * |w b|) := by
          intro a b
          calc w a * w b * g.coeff ψ.symm y a b ≤ |w a * w b * g.coeff ψ.symm y a b| :=
                le_abs_self _
            _ = |w a| * |w b| * |g.coeff ψ.symm y a b| := by rw [abs_mul, abs_mul]
            _ ≤ |w a| * |w b| * K := mul_le_mul_of_nonneg_left (hKab a b y hy) (by positivity)
            _ = K * (|w a| * |w b|) := by ring
        have q0 : |w 0| * |w 0| = w 0 ^ 2 := by rw [← sq, sq_abs]
        have q1 : |w 1| * |w 1| = w 1 ^ 2 := by rw [← sq, sq_abs]
        have q2 : |w 2| * |w 2| = w 2 ^ 2 := by rw [← sq, sq_abs]
        have t00 := t 0 0
        have t01 := t 0 1
        have t02 := t 0 2
        have t10 := t 1 0
        have t11 := t 1 1
        have t12 := t 1 2
        have t20 := t 2 0
        have t21 := t 2 1
        have t22 := t 2 2
        rw [q0] at t00
        rw [q1] at t11
        rw [q2] at t22
        have a01 := mul_le_mul_of_nonneg_left (two_mul_le_add_sq |w 0| |w 1|) hK0
        have a02 := mul_le_mul_of_nonneg_left (two_mul_le_add_sq |w 0| |w 2|) hK0
        have a12 := mul_le_mul_of_nonneg_left (two_mul_le_add_sq |w 1| |w 2|) hK0
        simp only [sq_abs] at a01 a02 a12
        rw [hnormsq]
        simp only [Fin.sum_univ_three]
        rw [hΛ]
        nlinarith [sq_nonneg (w 0), sq_nonneg (w 1), sq_nonneg (w 2)]
      have hu : IsOpen (Φ.source ∩ Φ ⁻¹' ψ.source) :=
        hΦsm.continuousOn.isOpen_inter_preimage Φ.open_source ψ.open_source
      have hF : ContDiffOn ℝ ∞ (fun z => ψ (Φ z)) (Φ.source ∩ Φ ⁻¹' ψ.source) := by
        have h1 := (contMDiffOn_iff_target.mp hΦsm).2 p
        rw [extChartAt_source] at h1
        have h2 := contMDiffOn_iff_contDiffOn.mp h1
        simpa [extChartAt_coe, Function.comp_def] using h2
      have hu' : IsOpen (ψ.target ∩ ψ.symm ⁻¹' Φ.target) :=
        ψ.isOpen_inter_preimage_symm Φ.open_target
      have hGm : ContDiffOn ℝ ∞ (fun y => Φ.symm (ψ.symm y)) (ψ.target ∩ ψ.symm ⁻¹' Φ.target) := by
        have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (fun y => Φ.symm (ψ.symm y))
            (ψ.target ∩ ψ.symm ⁻¹' Φ.target) :=
          Φ.contMDiffOn_invFun.comp (contMDiffOn_chart_symm.mono Set.inter_subset_left)
            (fun y hy => hy.2)
        exact contMDiffOn_iff_contDiffOn.mp h1
      have DB : ∀ y, y ∈ ψ.target → ψ.symm y ∈ Φ.target → R < ‖Φ.symm (ψ.symm y)‖ →
          y ∈ closedBall (ψ p) r →
          DifferentiableAt ℝ (fun y => Φ.symm (ψ.symm y)) y ∧
          ‖fderiv ℝ (fun y => Φ.symm (ψ.symm y)) y‖ ≤ Real.sqrt (2 * Λ) := by
        intro y hyt hyΦ hyR hyb
        have hyu' : y ∈ ψ.target ∩ ψ.symm ⁻¹' Φ.target := ⟨hyt, hyΦ⟩
        obtain ⟨x, hxdef⟩ : ∃ x : E3, x = Φ.symm (ψ.symm y) := ⟨_, rfl⟩
        have hx : x ∈ Φ.source := by rw [hxdef]; exact hMT _ hyΦ
        have hΦx : Φ x = ψ.symm y := by rw [hxdef]; exact hRI _ hyΦ
        have hxR : R < ‖x‖ := by rw [hxdef]; exact hyR
        have hxp : Φ x ∈ ψ.source := by rw [hΦx]; exact ψ.map_target hyt
        have hxu : x ∈ Φ.source ∩ Φ ⁻¹' ψ.source := ⟨hx, hxp⟩
        have hFx : ψ (Φ x) = y := by rw [hΦx]; exact ψ.right_inv hyt
        have hFdiff : DifferentiableAt ℝ (fun z => ψ (Φ z)) x :=
          (hF.contDiffAt (hu.mem_nhds hxu)).differentiableAt (by simp)
        have hGdiff : DifferentiableAt ℝ (fun y => Φ.symm (ψ.symm y)) y :=
          (hGm.contDiffAt (hu'.mem_nhds hyu')).differentiableAt (by simp)
        have hFG : (fun z => ψ (Φ (Φ.symm (ψ.symm z)))) =ᶠ[𝓝 y] (fun z => z) := by
          filter_upwards [hu'.mem_nhds hyu'] with z hz
          rw [hRI _ hz.2, ψ.right_inv hz.1]
        have hcont : ContinuousAt Φ x := hΦsm.continuousOn.continuousAt (Φ.open_source.mem_nhds hx)
        have hFxt : ψ (Φ x) ∈ ψ.target := ψ.map_source hxp
        have hev : (Φ : E3 → M) =ᶠ[𝓝 x] (ψ.symm ∘ fun z => ψ (Φ z)) := by
          have hmem : (Φ : E3 → M) ⁻¹' ψ.source ∈ 𝓝 x :=
            hcont.preimage_mem_nhds (ψ.open_source.mem_nhds hxp)
          filter_upwards [hmem] with z hz
          simp only [Function.comp_apply]
          exact (ψ.left_inv hz).symm
        have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ.symm (ψ (Φ x)) :=
          ((contMDiffOn_chart_symm (n := ∞)).contMDiffAt
            (ψ.open_target.mem_nhds hFxt)).mdifferentiableAt (by simp)
        have hfac : ∀ v : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x v =
            mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ.symm (ψ (Φ x)) (fderiv ℝ (fun z => ψ (Φ z)) x v) := by
          intro v
          rw [hev.mfderiv_eq, mfderiv_comp x hg hFdiff.mdifferentiableAt, mfderiv_eq_fderiv]
          rfl
        have hpt' : ψ.symm (ψ (Φ x)) = Φ x := ψ.left_inv hxp
        have h2 : ∀ a b : Fin 3, g.coeff ψ.symm y a b = g.g (Φ x)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ.symm (ψ (Φ x)) (e a))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ.symm (ψ (Φ x)) (e b)) := by
          intro a b
          rw [← hFx]
          show g.g (ψ.symm (ψ (Φ x))) _ _ = _
          rw [show g.g (ψ.symm (ψ (Φ x))) = g.g (Φ x) from congrArg g.g hpt']
        have hquad : ∀ v : E3, ∑ i : Fin 3, ∑ j : Fin 3, v i * v j * g.coeff Φ x i j =
            ∑ a : Fin 3, ∑ b : Fin 3, (fderiv ℝ (fun z => ψ (Φ z)) x v) a *
              (fderiv ℝ (fun z => ψ (Φ z)) x v) b * g.coeff ψ.symm y a b := by
          intro v
          have h1 : ∑ i : Fin 3, ∑ j : Fin 3, v i * v j * g.coeff Φ x i j =
              g.g (Φ x) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x v) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x v) :=
            (hexp _ _ v v).symm
          rw [h1, hfac v]
          simp only [h2]
          exact hexp _ _ _ _
        have hcomp : ∀ w : E3, fderiv ℝ (fun z => ψ (Φ z)) x
            (fderiv ℝ (fun y => Φ.symm (ψ.symm y)) y w) = w := by
          intro w
          have hFd' : DifferentiableAt ℝ (fun z => ψ (Φ z)) (Φ.symm (ψ.symm y)) := by
            rw [← hxdef]; exact hFdiff
          have h1 := fderiv_comp y hFd' hGdiff
          have h3 : fderiv ℝ ((fun z => ψ (Φ z)) ∘ (fun y => Φ.symm (ψ.symm y))) y =
              ContinuousLinearMap.id ℝ E3 := by
            rw [show ((fun z => ψ (Φ z)) ∘ (fun y => Φ.symm (ψ.symm y))) =
              (fun z => ψ (Φ (Φ.symm (ψ.symm z)))) from rfl]
            rw [hFG.fderiv_eq, fderiv_id']
          rw [h1] at h3
          have := congrArg (fun T : E3 →L[ℝ] E3 => T w) h3
          simpa [hxdef] using this
        refine ⟨hGdiff, ContinuousLinearMap.opNorm_le_bound _ (Real.sqrt_nonneg _) (fun w => ?_)⟩
        have e1 := LB x hxR (fderiv ℝ (fun y => Φ.symm (ψ.symm y)) y w)
        rw [hquad, hcomp w] at e1
        have e2 := UB y hyb w
        have hsq : ‖fderiv ℝ (fun y => Φ.symm (ψ.symm y)) y w‖ ^ 2 ≤ 2 * Λ * ‖w‖ ^ 2 := by
          linarith
        have := Real.sqrt_le_sqrt hsq
        rw [Real.sqrt_sq (norm_nonneg _), Real.sqrt_mul' _ (sq_nonneg _),
          Real.sqrt_sq (norm_nonneg _)] at this
        exact this
      obtain ⟨L, hL⟩ : ∃ L : ℝ, L = Real.sqrt (2 * Λ) := ⟨_, rfl⟩
      have hL0 : 0 ≤ L := by rw [hL]; exact Real.sqrt_nonneg _
      rw [← hL] at DB
      obtain ⟨R'', hR''⟩ : ∃ R'' : ℝ, R'' = R + 1 + L * r := ⟨_, rfl⟩
      have hKc : IsCompact ({x : E3 | ρ ≤ ‖x‖} ∩ closedBall 0 R'') :=
        (isCompact_closedBall 0 R'').inter_left hSc
      have hKcsrc : {x : E3 | ρ ≤ ‖x‖} ∩ closedBall 0 R'' ⊆ Φ.source := fun x hx => hSsrc hx.1
      have hKcl : IsClosed (Φ '' ({x : E3 | ρ ≤ ‖x‖} ∩ closedBall 0 R'')) :=
        (hKc.image_of_continuousOn (hΦsm.continuousOn.mono hKcsrc)).isClosed
      have hpK : p ∉ Φ '' ({x : E3 | ρ ≤ ‖x‖} ∩ closedBall 0 R'') := by
        rintro ⟨x, hx, hxp⟩
        exact hpt (hxp ▸ hMS x (hKcsrc hx))
      have hNo : IsOpen ((ψ.source ∩ ψ ⁻¹' ball (ψ p) (r / 2)) ∩
          (Φ '' ({x : E3 | ρ ≤ ‖x‖} ∩ closedBall 0 R''))ᶜ) :=
        (ψ.isOpen_inter_preimage isOpen_ball).inter hKcl.isOpen_compl
      have hpN : p ∈ (ψ.source ∩ ψ ⁻¹' ball (ψ p) (r / 2)) ∩
          (Φ '' ({x : E3 | ρ ≤ ‖x‖} ∩ closedBall 0 R''))ᶜ :=
        ⟨⟨hpψ, mem_ball_self (by linarith)⟩, hpK⟩
      obtain ⟨q, ⟨⟨hqψ, hqb⟩, hqK⟩, x₀, hx₀S, hx₀q⟩ := mem_closure_iff.1 hp _ hNo hpN
      subst hx₀q
      have hx₀src : x₀ ∈ Φ.source := hSsrc hx₀S
      have hx₀R : R'' < ‖x₀‖ := by
        by_contra hcon
        push_neg at hcon
        exact hqK ⟨x₀, ⟨hx₀S, mem_closedBall_zero_iff.2 hcon⟩, rfl⟩
      obtain ⟨y₀, hy₀⟩ : ∃ y₀ : E3, y₀ = ψ (Φ x₀) := ⟨_, rfl⟩
      have hy₀b : dist y₀ (ψ p) < r / 2 := by rw [hy₀]; exact hqb
      have hy₀t : y₀ ∈ ψ.target := by rw [hy₀]; exact ψ.map_source hqψ
      have hy₀s : ψ.symm y₀ = Φ x₀ := by rw [hy₀]; exact ψ.left_inv hqψ
      have hGy₀ : Φ.symm (ψ.symm y₀) = x₀ := by rw [hy₀s]; exact hLI x₀ hx₀src
      have hLr : 0 ≤ L * r := mul_nonneg hL0 hr0.le
      have hσball : ∀ t ∈ Set.Icc (0 : ℝ) 1, dist (y₀ + t • (ψ p - y₀)) (ψ p) < r / 2 := by
        intro t ht
        rw [dist_eq_norm]
        have e : y₀ + t • (ψ p - y₀) - ψ p = (1 - t) • (y₀ - ψ p) := by
          simp only [smul_sub, sub_smul, one_smul]; abel
        rw [e, norm_smul, Real.norm_eq_abs, abs_of_nonneg (by linarith [ht.2]), ← dist_eq_norm]
        have := dist_nonneg (x := y₀) (y := ψ p)
        nlinarith [ht.1]
      have hcont_σ : Continuous (fun t : ℝ => y₀ + t • (ψ p - y₀)) :=
        continuous_const.add (continuous_id.smul continuous_const)
      set W := ψ.target ∩ ψ.symm ⁻¹' (Φ.target ∩ Φ.symm ⁻¹' {x : E3 | R < ‖x‖}) with hW
      have hWo : IsOpen W :=
        ψ.isOpen_inter_preimage_symm (Φ.toOpenPartialHomeomorph.isOpen_inter_preimage_symm
          (isOpen_lt continuous_const continuous_norm))
      have hnorm_y₀ : ‖ψ p - y₀‖ < r / 2 := by rw [← dist_eq_norm, dist_comm]; exact hy₀b
      have h1U := s6 {t : ℝ | y₀ + t • (ψ p - y₀) ∈ W}
        (fun t => Φ.symm (ψ.symm (y₀ + t • (ψ p - y₀))))
        (fun t => fderiv ℝ (fun y => Φ.symm (ψ.symm y)) (y₀ + t • (ψ p - y₀)) (ψ p - y₀))
        (L * ‖ψ p - y₀‖) (hWo.preimage hcont_σ) (by positivity) ?h0 ?hD ?hcl
      · have h1W : y₀ + (1 : ℝ) • (ψ p - y₀) ∈ W := h1U
        have hσ1 : y₀ + (1 : ℝ) • (ψ p - y₀) = ψ p := by rw [one_smul]; abel
        rw [hσ1] at h1W
        have := h1W.2.1
        rw [ψ.left_inv hpψ] at this
        exact hpt this
      case h0 =>
        show y₀ + (0 : ℝ) • (ψ p - y₀) ∈ W
        rw [zero_smul, add_zero]
        refine ⟨hy₀t, ?_, ?_⟩
        · rw [hy₀s]; exact hMS x₀ hx₀src
        · show R < ‖Φ.symm (ψ.symm y₀)‖
          rw [hGy₀]; linarith
      case hD =>
        intro t ht htU
        have htW : y₀ + t • (ψ p - y₀) ∈ W := htU
        obtain ⟨hdiff, hnorm⟩ := DB (y₀ + t • (ψ p - y₀)) htW.1 htW.2.1 htW.2.2
          (mem_closedBall.2 (by linarith [hσball t ht]))
        have hσd : HasDerivAt (fun t : ℝ => y₀ + t • (ψ p - y₀)) (ψ p - y₀) t := by
          simpa using ((hasDerivAt_id t).smul_const (ψ p - y₀)).const_add y₀
        have hcd := hdiff.hasFDerivAt.comp_hasDerivAt t hσd
        exact ⟨hcd,
          le_trans (ContinuousLinearMap.le_opNorm _ _)
            (mul_le_mul_of_nonneg_right hnorm (norm_nonneg _))⟩
      case hcl =>
        intro s τ xb hτ hs hsτ hxb hdist
        change dist xb (Φ.symm (ψ.symm (y₀ + (0 : ℝ) • (ψ p - y₀)))) ≤ _ at hdist
        rw [zero_smul, add_zero, hGy₀] at hdist
        have hKr : L * ‖ψ p - y₀‖ ≤ L * (r / 2) := mul_le_mul_of_nonneg_left hnorm_y₀.le hL0
        have hxbR : R + 1 < ‖xb‖ := by
          have := norm_sub_norm_le x₀ xb
          rw [← dist_eq_norm, dist_comm] at this
          linarith
        have hxbsrc : xb ∈ Φ.source := by
          rw [hsrc]; show (1 : ℝ) < ‖xb‖; linarith
        have hτt : y₀ + τ • (ψ p - y₀) ∈ ψ.target :=
          hcb (mem_closedBall.2 (by linarith [hσball τ hτ]))
        have hlim1 : Tendsto (fun n => Φ (Φ.symm (ψ.symm (y₀ + s n • (ψ p - y₀))))) atTop
            (𝓝 (Φ xb)) :=
          ((hΦsm.continuousOn.continuousAt (Φ.open_source.mem_nhds hxbsrc)).tendsto).comp hxb
        have heq : ∀ n, Φ (Φ.symm (ψ.symm (y₀ + s n • (ψ p - y₀)))) =
            ψ.symm (y₀ + s n • (ψ p - y₀)) := by
          intro n
          have hn : y₀ + s n • (ψ p - y₀) ∈ W := (hs n).2
          exact hRI _ hn.2.1
        have hlim2 : Tendsto (fun n => ψ.symm (y₀ + s n • (ψ p - y₀))) atTop
            (𝓝 (ψ.symm (y₀ + τ • (ψ p - y₀)))) :=
          ((ψ.continuousAt_symm hτt).tendsto).comp ((hcont_σ.tendsto τ).comp hsτ)
        have huniq : Φ xb = ψ.symm (y₀ + τ • (ψ p - y₀)) :=
          tendsto_nhds_unique (hlim1.congr heq) hlim2
        show y₀ + τ • (ψ p - y₀) ∈ W
        refine ⟨hτt, ?_, ?_⟩
        · show ψ.symm (y₀ + τ • (ψ p - y₀)) ∈ Φ.target
          rw [← huniq]; exact hMS xb hxbsrc
        · show R < ‖Φ.symm (ψ.symm (y₀ + τ • (ψ p - y₀)))‖
          rw [← huniq, hLI xb hxbsrc]; linarith
  
  
  obtain ⟨ρ₀, hρ₀2, hρ₀⟩ := hfar
  have hR02 : (2 : ℝ) ≤ R₀ := hXY.1
  have hR01 : R₀ ≤ R₁ := hXY.2.1
  have hC0 : 0 < C := hXY.2.2.1
  have hXs : ContDiffOn ℝ ∞ X {y : E3 | R₀ < ‖y‖} := hXY.2.2.2.1
  have hYX : ∀ x : E3, R₁ < ‖x‖ → R₀ < ‖Y x‖ ∧ X (Y x) = x := hXY.2.2.2.2.2.1
  have hXinj : Set.InjOn X {y : E3 | R₀ < ‖y‖} := hXY.2.2.2.2.2.2.1
  have hXb : ∀ y : E3, R₀ < ‖y‖ → ‖X y - y‖ ≤ C * ‖y‖ ^ (1 - q) :=
    fun y hy => (hXY.2.2.2.2.2.2.2 y hy).1
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hΦLI : ∀ y ∈ (hAF.ends k).Φ.source, (hAF.ends k).Φ.symm ((hAF.ends k).Φ y) = y :=
    fun y hy => (hAF.ends k).Φ.toPartialEquiv.left_inv hy
  have hΦMS : ∀ y ∈ (hAF.ends k).Φ.source, (hAF.ends k).Φ y ∈ (hAF.ends k).Φ.target :=
    fun y hy => (hAF.ends k).Φ.toPartialEquiv.map_source hy
  have hΦsc : ContinuousOn (hAF.ends k).Φ.symm (hAF.ends k).Φ.target :=
    (hAF.ends k).Φ.contMDiffOn_invFun.continuousOn
  have hPLI : ∀ x ∈ P.source, P.symm (P x) = x := fun x hx => P.toPartialEquiv.left_inv hx
  have hPRI : ∀ z ∈ P.target, P (P.symm z) = z := fun z hz => P.toPartialEquiv.right_inv hz
  have hPMS : ∀ x ∈ P.source, P x ∈ P.target := fun x hx => P.toPartialEquiv.map_source hx
  have hPMT : ∀ z ∈ P.target, P.symm z ∈ P.source := fun z hz => P.toPartialEquiv.map_target hz
  have hPc : ContinuousOn P P.source := P.contMDiffOn.continuousOn
  have hPsc : ContinuousOn P.symm P.target := P.contMDiffOn_invFun.continuousOn
  have hnsq : ∀ x : E3, ‖x‖ ^ 2 = x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 := by
    intro x
    rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => by positivity)),
      Fin.sum_univ_three]
    simp [Real.norm_eq_abs, sq_abs]
  
  
  have hXle : ∀ y : E3, R₀ < ‖y‖ → ‖X y‖ ≤ (1 + C) * ‖y‖ := by
    intro y hy
    have hy1 : (1 : ℝ) ≤ ‖y‖ := by linarith
    have h1 := hXb y hy
    have h2 : ‖y‖ ^ (1 - q) ≤ ‖y‖ := by
      calc ‖y‖ ^ (1 - q) ≤ ‖y‖ ^ (1 : ℝ) := Real.rpow_le_rpow_of_exponent_le hy1 (by linarith)
        _ = ‖y‖ := Real.rpow_one _
    have h3 : ‖X y‖ ≤ ‖y‖ + ‖X y - y‖ := by
      calc ‖X y‖ = ‖y + (X y - y)‖ := by congr 1; abel
        _ ≤ ‖y‖ + ‖X y - y‖ := norm_add_le _ _
    have h4 : C * ‖y‖ ^ (1 - q) ≤ C * ‖y‖ := mul_le_mul_of_nonneg_left h2 hC0.le
    linarith
  have hrec : ∀ y : E3, R₀ < ‖y‖ → R₁ < ‖X y‖ → Y (X y) = y := by
    intro y hy hxy
    obtain ⟨h1, h2⟩ := hYX (X y) hxy
    exact hXinj h1 hy h2
  
  
  have hclosed : ∀ ρ : ℝ, R₁ < ρ → IsClosed (P '' {x : E3 | ρ ≤ ‖x‖}) := by
    intro ρ hρ
    obtain ⟨ρs, hρs⟩ : ∃ ρs : ℝ, ρs = max ρ₀ (R₀ + 1) := ⟨_, rfl⟩
    have hρs0 : ρ₀ ≤ ρs := by rw [hρs]; exact le_max_left _ _
    have hρsR : R₀ + 1 ≤ ρs := by rw [hρs]; exact le_max_right _ _
    obtain ⟨R', hR'⟩ : ∃ R' : ℝ, R' = max ρ ((1 + C) * ρs) := ⟨_, rfl⟩
    have hR'ρ : ρ ≤ R' := by rw [hR']; exact le_max_left _ _
    have hR'C : (1 + C) * ρs ≤ R' := by rw [hR']; exact le_max_right _ _
    have hKc : IsCompact {x : E3 | ρ ≤ ‖x‖ ∧ ‖x‖ ≤ R'} := by
      refine Metric.isCompact_of_isClosed_isBounded ?_ ?_
      · exact (isClosed_le continuous_const continuous_norm).inter
          (isClosed_le continuous_norm continuous_const)
      · refine (Metric.isBounded_closedBall (x := (0 : E3)) (r := R')).subset ?_
        intro x hx
        rw [Metric.mem_closedBall, dist_zero_right]
        exact hx.2
    have hKs : {x : E3 | ρ ≤ ‖x‖ ∧ ‖x‖ ≤ R'} ⊆ P.source := by
      intro x hx
      rw [hPs]
      show R₁ < ‖x‖
      linarith [hx.1]
    have hK1 : IsClosed (P '' {x : E3 | ρ ≤ ‖x‖ ∧ ‖x‖ ≤ R'}) :=
      (hKc.image_of_continuousOn (hPc.mono hKs)).isClosed
    have hFc : IsClosed ((hAF.ends k).Φ '' {y : E3 | ρs ≤ ‖y‖}) := hρ₀ ρs hρs0
    have hFt : (hAF.ends k).Φ '' {y : E3 | ρs ≤ ‖y‖} ⊆ (hAF.ends k).Φ.target := by
      rintro _ ⟨y, hy, rfl⟩
      apply hΦMS
      rw [hsrc]
      show (1 : ℝ) < ‖y‖
      have : ρs ≤ ‖y‖ := hy
      linarith
    have hmaps : Set.MapsTo (hAF.ends k).Φ.symm ((hAF.ends k).Φ '' {y : E3 | ρs ≤ ‖y‖})
        {y : E3 | R₀ < ‖y‖} := by
      rintro _ ⟨y, hy, rfl⟩
      have hy' : ρs ≤ ‖y‖ := hy
      show R₀ < ‖(hAF.ends k).Φ.symm ((hAF.ends k).Φ y)‖
      rw [hΦLI y (by rw [hsrc]; show (1 : ℝ) < ‖y‖; linarith)]
      linarith
    have hhc : ContinuousOn (fun p => ‖X ((hAF.ends k).Φ.symm p)‖)
        ((hAF.ends k).Φ '' {y : E3 | ρs ≤ ‖y‖}) :=
      (hXs.continuousOn.comp (hΦsc.mono hFt) hmaps).norm
    have hK2 : IsClosed ((hAF.ends k).Φ '' {y : E3 | ρs ≤ ‖y‖} ∩
        (fun p => ‖X ((hAF.ends k).Φ.symm p)‖) ⁻¹' Set.Ici R') :=
      hhc.preimage_isClosed_of_isClosed hFc isClosed_Ici
    have heq : P '' {x : E3 | ρ ≤ ‖x‖} = P '' {x : E3 | ρ ≤ ‖x‖ ∧ ‖x‖ ≤ R'} ∪
        ((hAF.ends k).Φ '' {y : E3 | ρs ≤ ‖y‖} ∩
          (fun p => ‖X ((hAF.ends k).Φ.symm p)‖) ⁻¹' Set.Ici R') := by
      apply Set.Subset.antisymm
      · rintro _ ⟨x, hx, rfl⟩
        have hx' : ρ ≤ ‖x‖ := hx
        by_cases hxR : ‖x‖ ≤ R'
        · exact Or.inl ⟨x, ⟨hx', hxR⟩, rfl⟩
        · push_neg at hxR
          have hxR1 : R₁ < ‖x‖ := by linarith
          have hxs : x ∈ P.source := by rw [hPs]; exact hxR1
          obtain ⟨hY0, hXY'⟩ := hYX x hxR1
          have hbd := hXle (Y x) hY0
          rw [hXY'] at hbd
          have hYn : ρs ≤ ‖Y x‖ := by
            by_contra hc
            push_neg at hc
            have : (1 + C) * ‖Y x‖ < (1 + C) * ρs := mul_lt_mul_of_pos_left hc (by linarith)
            linarith
          have hPx : P x = (hAF.ends k).Φ (Y x) := hP x hxs
          have hYsrc : Y x ∈ (hAF.ends k).Φ.source := by
            rw [hsrc]; show (1 : ℝ) < ‖Y x‖; linarith
          refine Or.inr ⟨?_, ?_⟩
          · rw [hPx]; exact ⟨Y x, hYn, rfl⟩
          · show R' ≤ ‖X ((hAF.ends k).Φ.symm (P x))‖
            rw [hPx, hΦLI _ hYsrc, hXY']
            linarith
      · rintro p (⟨x, hx, rfl⟩ | ⟨⟨y, hy, rfl⟩, hh⟩)
        · exact ⟨x, hx.1, rfl⟩
        · have hy' : ρs ≤ ‖y‖ := hy
          have hysrc : y ∈ (hAF.ends k).Φ.source := by
            rw [hsrc]; show (1 : ℝ) < ‖y‖; linarith
          have hh' : R' ≤ ‖X y‖ := by
            have : R' ≤ ‖X ((hAF.ends k).Φ.symm ((hAF.ends k).Φ y))‖ := hh
            rwa [hΦLI y hysrc] at this
          have hy0 : R₀ < ‖y‖ := by linarith
          have hXy1 : R₁ < ‖X y‖ := by linarith
          have hr := hrec y hy0 hXy1
          have hxs : X y ∈ P.source := by rw [hPs]; exact hXy1
          refine ⟨X y, (show ρ ≤ ‖X y‖ by linarith), ?_⟩
          rw [hP (X y) hxs]
          show (hAF.ends k).Φ (Y (X y)) = (hAF.ends k).Φ y
          rw [hr]
    rw [heq]
    exact hK1.union hK2
  
  
  have hAc : IsClosed (P '' {x : E3 | R₁ + 1 ≤ ‖x‖}) := hclosed (R₁ + 1) (by linarith)
  have hAt : P '' {x : E3 | R₁ + 1 ≤ ‖x‖} ⊆ P.target := by
    rintro _ ⟨x, hx, rfl⟩
    have hx' : R₁ + 1 ≤ ‖x‖ := hx
    exact hPMS x (by rw [hPs]; show R₁ < ‖x‖; linarith)
  obtain ⟨χ, hχ⟩ : ∃ χ : M → ℝ,
      χ = P.target.indicator (fun p => Real.smoothTransition (‖P.symm p‖ - (R₁ + 1))) :=
    ⟨_, rfl⟩
  have hχin : ∀ z ∈ P.target, χ z = Real.smoothTransition (‖P.symm z‖ - (R₁ + 1)) := by
    intro z hz; rw [hχ]; exact Set.indicator_of_mem hz _
  have hχout : ∀ z, z ∉ P.target → χ z = 0 := by
    intro z hz; rw [hχ]; exact Set.indicator_of_notMem hz _
  have hχval : ∀ x : E3, R₁ < ‖x‖ → χ (P x) = Real.smoothTransition (‖x‖ - (R₁ + 1)) := by
    intro x hx
    have hxs : x ∈ P.source := by rw [hPs]; exact hx
    rw [hχin _ (hPMS x hxs), hPLI x hxs]
  have hχA : ∀ z, z ∉ P '' {x : E3 | R₁ + 1 ≤ ‖x‖} → χ z = 0 := by
    intro z hz
    by_cases hzt : z ∈ P.target
    · rw [hχin z hzt]
      apply Real.smoothTransition.zero_of_nonpos
      by_contra hc
      push_neg at hc
      exact hz ⟨P.symm z, (show R₁ + 1 ≤ ‖P.symm z‖ by linarith), hPRI z hzt⟩
    · exact hχout z hzt
  have hχ0 : ∀ p : M, p ∉ P '' {x : E3 | R₁ + 1 ≤ ‖x‖} → ∀ᶠ z in 𝓝 p, χ z = 0 := by
    intro p hp
    filter_upwards [hAc.isOpen_compl.mem_nhds hp] with z hz
    exact hχA z hz
  have hχs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ χ := by
    intro p
    by_cases hpt : p ∈ P.target
    · have hx0 : P.symm p ∈ P.source := hPMT p hpt
      have hxn : R₁ < ‖P.symm p‖ := by rw [hPs] at hx0; exact hx0
      have hne : P.symm p ≠ 0 := by
        intro h0
        rw [h0, norm_zero] at hxn
        linarith
      have hf : ContDiffAt ℝ ∞ (fun x : E3 => Real.smoothTransition (‖x‖ - (R₁ + 1)))
          (P.symm p) := by
        have h1 : ContDiffAt ℝ ∞ (fun x : E3 => ‖x‖ - (R₁ + 1)) (P.symm p) :=
          (contDiffAt_norm ℝ hne).sub contDiffAt_const
        exact Real.smoothTransition.contDiff.contDiffAt.comp (P.symm p) h1
      have hsymm : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ P.symm p :=
        P.contMDiffOn_invFun.contMDiffAt (P.open_target.mem_nhds hpt)
      have hcomp : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞
          ((fun x : E3 => Real.smoothTransition (‖x‖ - (R₁ + 1))) ∘ P.symm) p :=
        hf.contMDiffAt.comp p hsymm
      apply hcomp.congr_of_eventuallyEq
      filter_upwards [P.open_target.mem_nhds hpt] with z hz
      rw [hχin z hz]
      rfl
    · have hpA : p ∉ P '' {x : E3 | R₁ + 1 ≤ ‖x‖} := fun h => hpt (hAt h)
      exact contMDiffAt_const.congr_of_eventuallyEq (hχ0 p hpA)
  have hχb : ∀ p, 0 ≤ χ p ∧ χ p ≤ 1 := by
    intro p
    by_cases hpt : p ∈ P.target
    · rw [hχin p hpt]
      exact ⟨Real.smoothTransition.nonneg _, Real.smoothTransition.le_one _⟩
    · rw [hχout p hpt]
      exact ⟨le_rfl, zero_le_one⟩
  have hχ1 : ∀ L : ℝ, R₁ + 2 < L → ∀ p ∈ frontier (sternOuter (hAF.ends k) Y L),
      ∀ᶠ z in 𝓝 p, χ z = 1 := by
    intro L hL p hp
    have hL0 : 0 < L := by linarith
    have hsub : sternOuter (hAF.ends k) Y L ⊆ P '' {x : E3 | L ≤ ‖x‖} := by
      rintro _ ⟨x, hx, rfl⟩
      have hxL : L < ‖x‖ := by
        have hn := norm_nonneg x
        have hsq := hnsq x
        simp only [Set.mem_setOf_eq, not_and_or, not_le] at hx
        by_contra hcon
        push_neg at hcon
        have hlt : ‖x‖ ^ 2 ≤ L ^ 2 := by nlinarith
        rcases hx with h | h
        · have : L ^ 2 < x 0 ^ 2 := by
            rw [← sq_abs (x 0)]
            exact pow_lt_pow_left₀ h hL0.le (by norm_num)
          nlinarith [sq_nonneg (x 1), sq_nonneg (x 2)]
        · nlinarith [sq_nonneg (x 0)]
      have hxs : x ∈ P.source := by rw [hPs]; show R₁ < ‖x‖; linarith
      exact ⟨x, hxL.le, hP x hxs⟩
    have hcl : closure (sternOuter (hAF.ends k) Y L) ⊆ P '' {x : E3 | L ≤ ‖x‖} :=
      closure_minimal hsub (hclosed L (by linarith))
    obtain ⟨x₀, hx₀, hpx₀⟩ := hcl (frontier_subset_closure hp)
    have hx₀' : L ≤ ‖x₀‖ := hx₀
    have hWo : IsOpen (P.target ∩ P.symm ⁻¹' {x : E3 | R₁ + 2 < ‖x‖}) :=
      hPsc.isOpen_inter_preimage P.open_target (isOpen_lt continuous_const continuous_norm)
    have hx₀s : x₀ ∈ P.source := by rw [hPs]; show R₁ < ‖x₀‖; linarith
    have hpW : p ∈ P.target ∩ P.symm ⁻¹' {x : E3 | R₁ + 2 < ‖x‖} := by
      rw [← hpx₀]
      refine ⟨hPMS x₀ hx₀s, ?_⟩
      show R₁ + 2 < ‖P.symm (P x₀)‖
      rw [hPLI x₀ hx₀s]
      linarith
    filter_upwards [hWo.mem_nhds hpW] with z hz
    rw [hχin z hz.1]
    apply Real.smoothTransition.one_of_one_le
    have : R₁ + 2 < ‖P.symm z‖ := hz.2
    linarith
  exact ⟨χ, hχs, hχb, hχval, hχ0, hχ1⟩

theorem calDivSum_congr_set [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ω : Set M) {n : ℕ} (q : Fin n → M) (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω)
    (W : M → E3) (hW : calSmoothField W) (E E' : Set M) (hE : sepChartMeas E)
    (hE' : sepChartMeas E') (hEE' : E ⊆ E') (hvan : ∀ x ∈ E' \ E, ∀ᶠ z in 𝓝 x, W z = 0) :
    calDivSum g q φ E W = calDivSum g q φ E' W :=
by
  unfold calDivSum
  refine Finset.sum_congr rfl (fun j _ => ?_)
  set κ := chartAt E3 (q j) with hκ
  symm
  refine MeasureTheory.setIntegral_eq_of_subset_of_forall_diff_eq_zero (hE' (q j)) ?_ ?_
  · exact Set.image_mono (Set.inter_subset_inter_left _ hEE')
  · rintro y ⟨⟨x, ⟨hxE', hxs⟩, rfl⟩, hy⟩
    have hxE : x ∉ E := fun h => hy ⟨x, ⟨h, hxs⟩, rfl⟩
    have hv := hvan x ⟨hxE', hxE⟩
    have hmt : κ x ∈ κ.target := κ.map_source hxs
    have hc : ContinuousAt κ.symm (κ x) := κ.continuousAt_symm hmt
    rw [← κ.left_inv hxs] at hv
    have hv2 : ∀ᶠ z in 𝓝 (κ x), W (κ.symm z) = 0 := hc.eventually hv
    have hP : ∀ᶠ z in 𝓝 (κ x), calPiece (q j) (φ j) W z = 0 := by
      filter_upwards [hv2] with z hz
      unfold calPiece
      by_cases hzt : z ∈ (chartAt E3 (q j)).target
      · rw [Set.indicator_of_mem hzt]
        simp [← hκ, hz]
      · rw [Set.indicator_of_notMem hzt]
    unfold sepDensDiv
    refine Finset.sum_eq_zero (fun i _ => ?_)
    have heq : (fun z => Real.sqrt (g.coeff κ.symm z).det * calPiece (q j) (φ j) W z i)
        =ᶠ[𝓝 (κ x)] (fun _ => (0 : ℝ)) := by
      filter_upwards [hP] with z hz
      rw [hz]
      simp
    unfold partialDeriv
    rw [heq.fderiv_eq]
    simp

theorem calDivSum_cutoff [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ω : Set M) {n : ℕ} (q : Fin n → M) (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω)
    (W : M → E3) (hW : calSmoothField W) (χ : M → ℝ) (hχ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ χ)
    (E : Set M) (hE : sepChartMeas E) (hfr : ∀ x ∈ frontier E, ∀ᶠ z in 𝓝 x, χ z = 1) :
    calSmoothField (fun x => χ x • W x) ∧
      calDivSum g q φ E W = calDivSum g q φ E (fun x => χ x • W x) :=
by
  
  have hsmul : ∀ ψ : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ →
      calSmoothField (fun x => ψ x • W x) := by
    intro ψ hψ
    unfold calSmoothField
    intro q'
    have hΨ : ContDiffOn ℝ ∞ (fun z => ψ ((chartAt E3 q').symm z)) (chartAt E3 q').target := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (ψ ∘ (chartAt E3 q').symm)
          (chartAt E3 q').target :=
        hψ.comp_contMDiffOn contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp h1
    refine (hΨ.smul (hW q')).congr ?_
    intro y _
    exact ContinuousLinearMap.map_smul _ _ _
  
  have hadd : ∀ A B : M → E3, calSmoothField A → calSmoothField B →
      calDivSum g q φ E (fun x => A x + B x) = calDivSum g q φ E A + calDivSum g q φ E B := by
    intro A B hA hB
    unfold calDivSum
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    have hφs : tsupport (φ j) ⊆ (chartAt E3 (q j)).source :=
      (hφ.2.2.2 j).2.trans Set.inter_subset_right
    obtain ⟨hAr, hAi⟩ := calPiece_regular g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1 hφs A hA
    obtain ⟨hBr, hBi⟩ := calPiece_regular g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1 hφs B hB
    have hpiece : ∀ y, calPiece (q j) (φ j) (fun x => A x + B x) y =
        calPiece (q j) (φ j) A y + calPiece (q j) (φ j) B y := by
      intro y
      by_cases hy : y ∈ (chartAt E3 (q j)).target
      · simp only [calPiece, Set.indicator_of_mem hy]
        rw [ContinuousLinearMap.map_add, smul_add]
      · simp only [calPiece, Set.indicator_of_notMem hy, add_zero]
    have hdiv : ∀ y, sepDensDiv (g.coeff (chartAt E3 (q j)).symm)
        (calPiece (q j) (φ j) (fun x => A x + B x)) y =
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) A) y +
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) B) y := by
      intro y
      unfold sepDensDiv
      rw [← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl (fun i _ => ?_)
      have hfun : (fun z => Real.sqrt (g.coeff (chartAt E3 (q j)).symm z).det *
          calPiece (q j) (φ j) (fun x => A x + B x) z i) =
          (fun z => Real.sqrt (g.coeff (chartAt E3 (q j)).symm z).det *
              calPiece (q j) (φ j) A z i +
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm z).det * calPiece (q j) (φ j) B z i) := by
        funext z
        rw [hpiece z, PiLp.add_apply, mul_add]
      have dA : DifferentiableAt ℝ (fun z => Real.sqrt (g.coeff (chartAt E3 (q j)).symm z).det *
          calPiece (q j) (φ j) A z i) y :=
        ((hAr i).differentiable (by simp)).differentiableAt
      have dB : DifferentiableAt ℝ (fun z => Real.sqrt (g.coeff (chartAt E3 (q j)).symm z).det *
          calPiece (q j) (φ j) B z i) y :=
        ((hBr i).differentiable (by simp)).differentiableAt
      unfold partialDeriv
      rw [hfun]
      have hsum := (dA.hasFDerivAt.add dB.hasFDerivAt).fderiv
      exact congrArg (fun L : E3 →L[ℝ] ℝ => L (e i)) hsum
    rw [← MeasureTheory.integral_add hAi.integrableOn hBi.integrableOn]
    congr 1
    funext y
    exact hdiv y
  
  have hχW := hsmul χ hχ
  have h1χ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => 1 - χ x) := contMDiff_const.sub hχ
  have hV := hsmul (fun x => 1 - χ x) h1χ
  have hsplit : calDivSum g q φ E (fun x => χ x • W x + (1 - χ x) • W x) =
      calDivSum g q φ E (fun x => χ x • W x) + calDivSum g q φ E (fun x => (1 - χ x) • W x) :=
    hadd _ _ hχW hV
  have hsum : (fun x => χ x • W x + (1 - χ x) • W x) = W := by
    funext x
    rw [← add_smul]
    simp
  rw [hsum] at hsplit
  have hVfr : ∀ x ∈ frontier E, ∀ᶠ z in 𝓝 x, (fun x => (1 - χ x) • W x) z = 0 := by
    intro x hx
    filter_upwards [hfr x hx] with z hz
    simp [hz]
  have hdiff : ∀ x ∈ E \ interior E, ∀ᶠ z in 𝓝 x, (fun x => (1 - χ x) • W x) z = 0 := by
    intro x hx
    apply hVfr
    show x ∈ closure E \ interior E
    exact ⟨subset_closure hx.1, hx.2⟩
  have hmeasI : sepChartMeas (interior E) := by
    intro p
    exact ((chartAt E3 p).isOpen_image_of_subset_source
      (isOpen_interior.inter (chartAt E3 p).open_source) Set.inter_subset_right).measurableSet
  have hcongr := calDivSum_congr_set g Ω q φ hφ _ hV (interior E) E hmeasI hE interior_subset hdiff
  have hzero : calDivSum g q φ (interior E) (fun x => (1 - χ x) • W x) = 0 := by
    unfold calDivSum
    refine Finset.sum_eq_zero (fun j _ => ?_)
    exact (chart_flux_zero_of_vanishing g (interior E) isOpen_interior _ hV
      (fun x hx => hVfr x (frontier_interior_subset hx)) (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1
      ((hφ.2.2.2 j).2.trans Set.inter_subset_right)).1
  refine ⟨hχW, ?_⟩
  rw [hsplit, ← hcongr, hzero, add_zero]

theorem calDivSum_chart_transfer [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ω : Set M) {n : ℕ} (q : Fin n → M) (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω)
    (O : Set M) (hO : IsOpen O) (h1 : ∀ x ∈ O, ∑ j, φ j x = 1) (W : M → E3)
    (hW : calSmoothField W) (E : Set M) (hE : sepChartMeas E)
    (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (K : Set E3) (hK : IsCompact K)
    (hKs : K ⊆ P.source) (hKE : P '' K ⊆ E) (hKO : P '' K ⊆ O)
    (hvan : ∀ x ∈ E, x ∉ P '' K → ∀ᶠ z in 𝓝 x, W z = 0) (Wt : E3 → E3)
    (hWts : ContDiffOn ℝ ∞ Wt P.source)
    (hWt : ∀ x ∈ P.source, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x (Wt x) = W (P x)) :
    calDivSum g q φ E W = ∫ x in K, sepDensDiv (g.coeff P) Wt x :=
by
  classical
  obtain ⟨hφs, -, -, hφt⟩ := hφ
  have hPc : ContinuousOn P P.source := P.contMDiffOn.continuousOn
  have hKm : MeasurableSet K := hK.isClosed.measurableSet
  have hinf : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  
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
  have germ0 : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      X =ᶠ[𝓝 y] (fun _ => 0) → sepDensDiv G X y = 0 := by
    intro G X y h
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    have hev : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [h] with z hz
      simp [hz]
    unfold partialDeriv
    rw [hev.fderiv_eq]
    simp
  
  have star : ∀ (q₀ : M) (ψ : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ →
      IsCompact (tsupport ψ) → tsupport ψ ⊆ (chartAt E3 q₀).source →
      ∫ y in chartAt E3 q₀ '' (E ∩ (chartAt E3 q₀).source),
          sepDensDiv (g.coeff (chartAt E3 q₀).symm) (calPiece q₀ ψ W) y =
        ∫ x in K, sepDensDiv (g.coeff P) (fun z => ψ (P z) • Wt z) x := by
    intro q₀ ψ hψ hψc hψs
    
    have hA : ∫ y in chartAt E3 q₀ '' (E ∩ (chartAt E3 q₀).source),
          sepDensDiv (g.coeff (chartAt E3 q₀).symm) (calPiece q₀ ψ W) y =
        ∫ y in chartAt E3 q₀ '' (P '' K ∩ (chartAt E3 q₀).source),
          sepDensDiv (g.coeff (chartAt E3 q₀).symm) (calPiece q₀ ψ W) y := by
      refine MeasureTheory.setIntegral_eq_of_subset_of_forall_diff_eq_zero (hE q₀)
        (Set.image_mono (Set.inter_subset_inter_left _ hKE)) ?_
      rintro y ⟨⟨p, ⟨hpE, hpc⟩, rfl⟩, hns⟩
      have hpK : p ∉ P '' K := fun h => hns ⟨p, ⟨h, hpc⟩, rfl⟩
      obtain ⟨N, hNsub, hNo, hpN⟩ := eventually_nhds_iff.mp (hvan p hpE hpK)
      apply germ0
      have hU : (chartAt E3 q₀).target ∩ (chartAt E3 q₀).symm ⁻¹' N ∈ 𝓝 (chartAt E3 q₀ p) := by
        refine ((chartAt E3 q₀).isOpen_inter_preimage_symm hNo).mem_nhds
          ⟨(chartAt E3 q₀).map_source hpc, ?_⟩
        show (chartAt E3 q₀).symm (chartAt E3 q₀ p) ∈ N
        rw [(chartAt E3 q₀).left_inv hpc]
        exact hpN
      filter_upwards [hU] with y' hy'
      have hW0 : W ((chartAt E3 q₀).symm y') = 0 := hNsub _ hy'.2
      simp [calPiece, Set.indicator_of_mem hy'.1, hW0]
    
    have himg : chartAt E3 q₀ '' (P '' K ∩ (chartAt E3 q₀).source) =
        (fun z => chartAt E3 q₀ (P z)) '' (K ∩ (P.source ∩ P ⁻¹' (chartAt E3 q₀).source)) := by
      ext y
      constructor
      · rintro ⟨_, ⟨⟨x, hx, rfl⟩, hxc⟩, rfl⟩
        exact ⟨x, ⟨hx, hKs hx, hxc⟩, rfl⟩
      · rintro ⟨x, ⟨hx, -, hxc⟩, rfl⟩
        exact ⟨P x, ⟨⟨x, hx, rfl⟩, hxc⟩, rfl⟩
    
    have hO₀ : IsOpen (P.source ∩ P ⁻¹' (chartAt E3 q₀).source) :=
      hPc.isOpen_inter_preimage P.open_source (chartAt E3 q₀).open_source
    have hτs : ContDiffOn ℝ ∞ (fun z => chartAt E3 q₀ (P z))
        (P.source ∩ P ⁻¹' (chartAt E3 q₀).source) := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ ((chartAt E3 q₀ : M → E3) ∘ (P : E3 → M))
          (P.source ∩ P ⁻¹' (chartAt E3 q₀).source) :=
        (contMDiffOn_chart (x := q₀)).comp (P.contMDiffOn.mono Set.inter_subset_left)
          (fun z hz => hz.2)
      exact contMDiffOn_iff_contDiffOn.mp h1
    have hτd : ∀ x ∈ P.source ∩ P ⁻¹' (chartAt E3 q₀).source,
        DifferentiableAt ℝ (fun z => chartAt E3 q₀ (P z)) x :=
      fun x hx => (hτs.differentiableOn hinf).differentiableAt (hO₀.mem_nhds hx)
    have hτinj : Set.InjOn (fun z => chartAt E3 q₀ (P z))
        (P.source ∩ P ⁻¹' (chartAt E3 q₀).source) := by
      intro a ha b hb hab
      exact P.toPartialEquiv.injOn ha.1 hb.1 ((chartAt E3 q₀).injOn ha.2 hb.2 hab)
    
    have hK₀m : MeasurableSet (K ∩ (P.source ∩ P ⁻¹' (chartAt E3 q₀).source)) :=
      hKm.inter hO₀.measurableSet
    have hderiv : ∀ x ∈ K ∩ (P.source ∩ P ⁻¹' (chartAt E3 q₀).source),
        HasFDerivWithinAt (fun z => chartAt E3 q₀ (P z))
          (fderiv ℝ (fun z => chartAt E3 q₀ (P z)) x)
          (K ∩ (P.source ∩ P ⁻¹' (chartAt E3 q₀).source)) x :=
      fun x hx => (hτd x hx.2).hasFDerivAt.hasFDerivWithinAt
    have hcov := MeasureTheory.integral_image_eq_integral_abs_det_fderiv_smul volume hK₀m
      hderiv (hτinj.mono Set.inter_subset_right)
      (sepDensDiv (g.coeff (chartAt E3 q₀).symm) (calPiece q₀ ψ W))
    
    have hlaw : ∀ z ∈ P.source ∩ P ⁻¹' (chartAt E3 q₀).source, ∀ i j : Fin 3,
        g.coeff P z i j = ∑ a : Fin 3, ∑ b : Fin 3,
          fderiv ℝ (fun z => chartAt E3 q₀ (P z)) z (e i) a *
            g.coeff (chartAt E3 q₀).symm (chartAt E3 q₀ (P z)) a b *
            fderiv ℝ (fun z => chartAt E3 q₀ (P z)) z (e j) b := by
      intro z hz i j
      have hev : (P : E3 → M) =ᶠ[𝓝 z]
          ((chartAt E3 q₀).symm ∘ fun w => chartAt E3 q₀ (P w)) := by
        filter_upwards [hO₀.mem_nhds hz] with w hw
        simp only [Function.comp_apply, (chartAt E3 q₀).left_inv hw.2]
      have hcoeff : g.coeff P z i j =
          g.coeff ((chartAt E3 q₀).symm ∘ fun w => chartAt E3 q₀ (P w)) z i j := by
        simp only [RiemannianMetric3.coeff, coeffMatrix]
        rw [hev.mfderiv_eq, hev.eq_of_nhds]
      rw [hcoeff]
      exact coeff_comp_apply g _ _ z (hτd z hz)
        (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q₀)
          ((chartAt E3 q₀).map_source hz.2)) i j
    have hpos : ∀ z ∈ P.source ∩ P ⁻¹' (chartAt E3 q₀).source,
        0 ≤ (g.coeff (chartAt E3 q₀).symm (chartAt E3 q₀ (P z))).det :=
      fun z hz => (coeff_chart_symm_posDef g q₀ _
        ((chartAt E3 q₀).map_source hz.2)).det_pos.le
    have hvec : ∀ z ∈ P.source ∩ P ⁻¹' (chartAt E3 q₀).source,
        fderiv ℝ (fun z => chartAt E3 q₀ (P z)) z ((fun z => ψ (P z) • Wt z) z) =
          calPiece q₀ ψ W (chartAt E3 q₀ (P z)) := by
      intro z hz
      have hτt : chartAt E3 q₀ (P z) ∈ (chartAt E3 q₀).target :=
        (chartAt E3 q₀).map_source hz.2
      have hl : (chartAt E3 q₀).symm (chartAt E3 q₀ (P z)) = P z := (chartAt E3 q₀).left_inv hz.2
      have hPm : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) P z :=
        ((P.contMDiffOn z hz.1).contMDiffAt (P.open_source.mem_nhds hz.1)).mdifferentiableAt hinf
      have hcm : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) (P z) :=
        mdifferentiableAt_atlas (chart_mem_atlas E3 q₀) hz.2
      have hfd : fderiv ℝ (fun w => chartAt E3 q₀ (P w)) z =
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) (P z)).comp
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P z) := by
        rw [← mfderiv_eq_fderiv]
        exact mfderiv_comp z hcm hPm
      unfold calPiece
      rw [Set.indicator_of_mem hτt]
      simp only [hl]
      rw [hfd]
      show (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) (P z))
          ((mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P z) (ψ (P z) • Wt z)) = _
      rw [map_smul, map_smul, hWt z hz.1]
      exact congrArg (fun p : M => (ψ (P z) • (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q₀) p
        (W (P z)) : E3) : E3)) hl.symm
    have hdet : ∀ x ∈ P.source ∩ P ⁻¹' (chartAt E3 q₀).source,
        (fderiv ℝ (fun z => chartAt E3 q₀ (P z)) x).det ≠ 0 := by
      intro x hx
      have hτx : chartAt E3 q₀ (P x) ∈ (chartAt E3 q₀).target := (chartAt E3 q₀).map_source hx.2
      have hl : (chartAt E3 q₀).symm (chartAt E3 q₀ (P x)) = P x := (chartAt E3 q₀).left_inv hx.2
      have hPt : P x ∈ P.symm.source := P.toPartialEquiv.map_source hx.1
      have hσm : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3)
          (fun w => P.symm ((chartAt E3 q₀).symm w)) (chartAt E3 q₀ (P x)) := by
        have h1 : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) P.symm
            ((chartAt E3 q₀).symm (chartAt E3 q₀ (P x))) := by
          rw [hl]
          exact ((P.symm.contMDiffOn (P x) hPt).contMDiffAt
            (P.symm.open_source.mem_nhds hPt)).mdifferentiableAt hinf
        exact h1.comp _ (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q₀) hτx)
      have hσ : DifferentiableAt ℝ (fun w => P.symm ((chartAt E3 q₀).symm w))
          (chartAt E3 q₀ (P x)) :=
        mdifferentiableAt_iff_differentiableAt.mp hσm
      have hev : (fun w => P.symm ((chartAt E3 q₀).symm w)) ∘ (fun z => chartAt E3 q₀ (P z))
          =ᶠ[𝓝 x] id := by
        filter_upwards [hO₀.mem_nhds hx] with z hz
        simp only [Function.comp_apply, id, (chartAt E3 q₀).left_inv hz.2]
        exact P.toPartialEquiv.left_inv hz.1
      have hcomp : (fderiv ℝ (fun w => P.symm ((chartAt E3 q₀).symm w)) (chartAt E3 q₀ (P x))).comp
          (fderiv ℝ (fun z => chartAt E3 q₀ (P z)) x) = ContinuousLinearMap.id ℝ E3 := by
        rw [← fderiv_comp x hσ (hτd x hx), hev.fderiv_eq, fderiv_id]
      have hd := congrArg (fun L : E3 →L[ℝ] E3 => LinearMap.det (L : E3 →ₗ[ℝ] E3)) hcomp
      simp only [ContinuousLinearMap.coe_comp, LinearMap.det_comp, ContinuousLinearMap.coe_id,
        LinearMap.det_id] at hd
      exact right_ne_zero_of_mul_eq_one hd
    have hWd : ∀ x : E3, ∀ i : Fin 3, DifferentiableAt ℝ
        (fun z => Real.sqrt (g.coeff (chartAt E3 q₀).symm z).det * calPiece q₀ ψ W z i) x :=
      fun x i => ((calPiece_regular g q₀ ψ hψ hψc hψs W hW).1 i).differentiable hinf x
    have hpt : ∀ x ∈ P.source ∩ P ⁻¹' (chartAt E3 q₀).source,
        |(fderiv ℝ (fun z => chartAt E3 q₀ (P z)) x).det| •
            sepDensDiv (g.coeff (chartAt E3 q₀).symm) (calPiece q₀ ψ W) (chartAt E3 q₀ (P x)) =
          sepDensDiv (g.coeff P) (fun z => ψ (P z) • Wt z) x := by
      intro x hx
      rw [smul_eq_mul]
      exact (sepDensDiv_transition_pointwise _ hO₀ _ hτs (g.coeff P)
        (g.coeff (chartAt E3 q₀).symm) (fun z => ψ (P z) • Wt z) (calPiece q₀ ψ W)
        hlaw hpos hvec x hx (hdet x hx) (fun i => hWd _ i)).symm
    
    have hext : ∫ x in K ∩ (P.source ∩ P ⁻¹' (chartAt E3 q₀).source),
          sepDensDiv (g.coeff P) (fun z => ψ (P z) • Wt z) x =
        ∫ x in K, sepDensDiv (g.coeff P) (fun z => ψ (P z) • Wt z) x := by
      symm
      refine MeasureTheory.setIntegral_eq_of_subset_of_forall_diff_eq_zero hKm
        Set.inter_subset_left ?_
      rintro x ⟨hxK, hxn⟩
      have hxc : P x ∉ (chartAt E3 q₀).source := fun h => hxn ⟨hxK, hKs hxK, h⟩
      have hxψ : P x ∉ tsupport ψ := fun h => hxc (hψs h)
      apply germ0
      have hU : P.source ∩ P ⁻¹' (tsupport ψ)ᶜ ∈ 𝓝 x :=
        (hPc.isOpen_inter_preimage P.open_source (isClosed_tsupport ψ).isOpen_compl).mem_nhds
          ⟨hKs hxK, hxψ⟩
      filter_upwards [hU] with z hz
      show ψ (P z) • Wt z = 0
      rw [image_eq_zero_of_notMem_tsupport hz.2, zero_smul]
    rw [hA, himg, hcov, ← hext]
    exact MeasureTheory.setIntegral_congr_fun hK₀m (fun x hx => hpt x hx.2)
  
  have hsq : ContDiffOn ℝ ∞ (fun z => Real.sqrt (g.coeff P z).det) P.source :=
    ccs_sqrtdet_smooth (g.coeff P) P.source (coeff_contDiffOn_source g P)
      (fun z hz => (coeff_posDef g P z hz).det_pos)
  have hreg : ∀ (ψ : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ → ∀ i : Fin 3,
      ContDiffOn ℝ ∞ (fun z => Real.sqrt (g.coeff P z).det * (ψ (P z) • Wt z) i) P.source := by
    intro ψ hψ i
    have h1 : ContDiffOn ℝ ∞ (fun z => ψ (P z)) P.source :=
      contMDiffOn_iff_contDiffOn.mp (hψ.comp_contMDiffOn P.contMDiffOn)
    have h2 : ContDiffOn ℝ ∞ (fun z => Wt z i) P.source := by
      have := (EuclideanSpace.proj (𝕜 := ℝ) (ι := Fin 3) i).contDiff.comp_contDiffOn hWts
      exact this
    have h3 : (fun z => Real.sqrt (g.coeff P z).det * (ψ (P z) • Wt z) i) =
        fun z => Real.sqrt (g.coeff P z).det * (ψ (P z) * Wt z i) := by
      funext z
      simp
    rw [h3]
    exact hsq.mul (h1.mul h2)
  have hcont : ∀ (ψ : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ →
      ContinuousOn (sepDensDiv (g.coeff P) (fun z => ψ (P z) • Wt z)) P.source := by
    intro ψ hψ
    unfold sepDensDiv partialDeriv
    refine continuousOn_finset_sum _ fun i _ => ?_
    exact ((hreg ψ hψ i).continuousOn_fderiv_of_isOpen P.open_source (by simp)).clm_apply
      continuousOn_const
  
  have hstar := fun j => star (q j) (φ j) (hφs j) (hφt j).1 (fun x hx => ((hφt j).2 hx).2)
  unfold calDivSum
  rw [Finset.sum_congr rfl (fun j _ => hstar j)]
  rw [← MeasureTheory.integral_finset_sum Finset.univ
    (fun j _ => ((hcont (φ j) (hφs j)).mono hKs).integrableOn_compact hK)]
  refine MeasureTheory.setIntegral_congr_fun hKm ?_
  intro x hx
  show ∑ j, sepDensDiv (g.coeff P) (fun z => φ j (P z) • Wt z) x = sepDensDiv (g.coeff P) Wt x
  have hxs : x ∈ P.source := hKs hx
  have hd : ∀ j : Fin n, ∀ i : Fin 3, DifferentiableAt ℝ
      (fun z => Real.sqrt (g.coeff P z).det * (φ j (P z) • Wt z) i) x :=
    fun j i => ((hreg (φ j) (hφs j) i).differentiableOn hinf).differentiableAt
      (P.open_source.mem_nhds hxs)
  have hlin : ∑ j, sepDensDiv (g.coeff P) (fun z => φ j (P z) • Wt z) x =
      sepDensDiv (g.coeff P) (fun z => ∑ j, φ j (P z) • Wt z) x := by
    unfold sepDensDiv partialDeriv
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hfun : (fun z => Real.sqrt (g.coeff P z).det * (∑ j, φ j (P z) • Wt z) i) =
        fun z => ∑ j, Real.sqrt (g.coeff P z).det * (φ j (P z) • Wt z) i := by
      funext z
      rw [← Finset.mul_sum]
      congr 1
      simp
    rw [hfun, fderiv_fun_sum (fun j _ => hd j i), ContinuousLinearMap.sum_apply]
  rw [hlin]
  apply germ
  have hV : P.source ∩ P ⁻¹' O ∈ 𝓝 x :=
    (hPc.isOpen_inter_preimage P.open_source hO).mem_nhds ⟨hxs, hKO ⟨x, hx, rfl⟩⟩
  filter_upwards [hV] with z hz
  show ∑ j, φ j (P z) • Wt z = Wt z
  rw [← Finset.sum_smul, h1 (P z) hz.2, one_smul]

theorem stern_phi_chart_reps [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (u : M → ℝ)
    (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u) (ε : ℝ) (hε : 0 < ε) (q : M) :
    ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (sternPhiM g u ε) ∧
    ContinuousOn (fun y => g.lapM (sternPhiM g u ε) ((chartAt E3 q).symm y))
      (chartAt E3 q).target ∧
    IsOpen {x : M | mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u x ≠ 0} ∧
    ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => Real.sqrt (g.gradInner u u x))
      {x : M | mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u x ≠ 0} :=
by
  
  have hnn : ∀ p : M, 0 ≤ g.gradInner u u p := by
    intro p
    have hpd : (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹.PosDef :=
      (coeff_chart_symm_posDef g p _ (mem_chart_target E3 p)).inv
    have h0 := hpd.posSemidef.dotProduct_mulVec_nonneg
      (fun i => partialDeriv i (fun y => u ((chartAt E3 p).symm y)) (chartAt E3 p p))
    simp only [dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial, Finset.mul_sum] at h0
    refine le_of_le_of_eq h0 ?_
    unfold RiemannianMetric3.gradInner
    refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
    ring
  
  have hsm : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (g.gradInner u u) := by
    intro x
    obtain ⟨hut, hid, -⟩ := chart_pullback_gradInner g u hu x
    obtain ⟨hpart, hinv, -⟩ := ejp_coord_smooth (g.coeff (chartAt E3 x).symm)
      (fun y => u ((chartAt E3 x).symm y)) (chartAt E3 x).target (chartAt E3 x).open_target
      (fun i j => g.smooth x i j) (fun y hy => coeff_chart_symm_posDef g x y hy) hut
    have hF : ContDiffOn ℝ ∞ (fun y => ∑ i : Fin 3, ∑ j : Fin 3,
        (g.coeff (chartAt E3 x).symm y)⁻¹ i j *
          partialDeriv i (fun z => u ((chartAt E3 x).symm z)) y *
          partialDeriv j (fun z => u ((chartAt E3 x).symm z)) y) (chartAt E3 x).target := by
      refine ContDiffOn.sum (fun i _ => ContDiffOn.sum (fun j _ => ?_))
      exact ((hinv i j).mul (hpart _ hut i)).mul (hpart _ hut j)
    have hcomp := hF.contMDiffOn.comp (contMDiffOn_chart (x := x))
      (fun y hy => (chartAt E3 x).map_source hy)
    have hcongr : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (g.gradInner u u) (chartAt E3 x).source := by
      refine hcomp.congr (fun p hp => ?_)
      have := hid (chartAt E3 x p) ((chartAt E3 x).map_source hp)
      rw [(chartAt E3 x).left_inv hp] at this
      exact this
    exact hcongr.contMDiffAt (chart_source_mem_nhds E3 x)
  
  have ha : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (sternPhiM g u ε) := by
    intro x
    have hk : ContDiffAt ℝ ∞ (fun t : ℝ => Real.sqrt (t + ε)) (g.gradInner u u x) :=
      (contDiffAt_id.add contDiffAt_const).sqrt (ne_of_gt (add_pos_of_nonneg_of_pos (hnn x) hε))
    exact hk.comp_contMDiffAt (hsm x)
  
  have hb : ContinuousOn (fun y => g.lapM (sternPhiM g u ε) ((chartAt E3 q).symm y))
      (chartAt E3 q).target := by
    obtain ⟨hφt, -, -⟩ := chart_pullback_gradInner g (sternPhiM g u ε) ha q
    obtain ⟨hpart, hinv, hchr, -⟩ := ejp_coord_smooth (g.coeff (chartAt E3 q).symm)
      (fun y => sternPhiM g u ε ((chartAt E3 q).symm y)) (chartAt E3 q).target
      (chartAt E3 q).open_target (fun i j => g.smooth q i j)
      (fun y hy => coeff_chart_symm_posDef g q y hy) hφt
    have hE : ContinuousOn (fun y => ∑ i : Fin 3, ∑ j : Fin 3,
          (g.coeff (chartAt E3 q).symm y)⁻¹ i j *
          partialDeriv i (partialDeriv j (fun z => sternPhiM g u ε ((chartAt E3 q).symm z))) y
        + ∑ l : Fin 3, (-(∑ i : Fin 3, ∑ j : Fin 3, (g.coeff (chartAt E3 q).symm y)⁻¹ i j *
          christoffel (g.coeff (chartAt E3 q).symm) l i j y)) *
          partialDeriv l (fun z => sternPhiM g u ε ((chartAt E3 q).symm z)) y)
        (chartAt E3 q).target := by
      refine ContinuousOn.add ?_ ?_
      · refine continuousOn_finset_sum _ (fun i _ => continuousOn_finset_sum _ (fun j _ => ?_))
        exact (hinv i j).continuousOn.mul (hpart _ (hpart _ hφt j) i).continuousOn
      · refine continuousOn_finset_sum _ (fun l _ => ?_)
        refine ContinuousOn.mul ?_ (hpart _ hφt l).continuousOn
        refine ContinuousOn.neg ?_
        refine continuousOn_finset_sum _ (fun i _ => continuousOn_finset_sum _ (fun j _ => ?_))
        exact (hinv i j).continuousOn.mul (hchr l i j).continuousOn
    exact hE.congr (fun y hy => nli_chart_lapM_eq g q _ ha y hy)
  
  have hc : IsOpen {x : M | mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u x ≠ 0} := by
    rw [isOpen_iff_mem_nhds]
    intro x hx
    exact mfderiv_ne_zero_eventually Set.univ u isOpen_univ hu.contMDiffOn x (Set.mem_univ x) hx
  
  have hd : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => Real.sqrt (g.gradInner u u x))
      {x : M | mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u x ≠ 0} := by
    intro x hx
    have hpos : 0 < g.gradInner u u x := by
      have h1 := chart_Nsq_pos g u hu x (chartAt E3 x x) (mem_chart_target E3 x)
        (by rw [(chartAt E3 x).left_inv (mem_chart_source E3 x)]; exact hx)
      exact h1
    have hk : ContDiffAt ℝ ∞ (fun t : ℝ => Real.sqrt t) (g.gradInner u u x) :=
      contDiffAt_id.sqrt (ne_of_gt hpos)
    exact (hk.comp_contMDiffAt (hsm x)).contMDiffWithinAt
  exact ⟨ha, hb, hc, hd⟩

theorem bulk_collar_eq_calDivSum [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (β u : M → ℝ) (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (s ε : ℝ) (hs : 0 < s) (hε : 0 < ε) (Ω : Set M) {n : ℕ} (q : Fin n → M)
    (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω) (O : Set M) (hO : IsOpen O)
    (h1 : ∀ x ∈ O, ∑ j, φ j x = 1) (D : Set M) (hD : sepChartMeas D) (hDO : D ⊆ O)
    (Z : M → E3) (hZ : calSmoothField Z)
    (hZrep : ∀ (p : M) (y : E3), y ∈ (chartAt E3 p).target → ∀ i : Fin 3,
      (show E3 from mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
        (Z ((chartAt E3 p).symm y))) i =
        Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
          ∑ k : Fin 3, (g.coeff (chartAt E3 p).symm y)⁻¹ i k *
            partialDeriv k (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y) :
    sternBulk g β u q φ D ε s + sternCollar g β u q φ D ε s = calDivSum g q φ D Z :=
by
  classical
  
  
  
  have pd_mul : ∀ (i : Fin 3) (u v : E3 → ℝ) (y : E3), DifferentiableAt ℝ u y →
      DifferentiableAt ℝ v y →
      partialDeriv i (fun z => u z * v z) y =
        partialDeriv i u y * v y + u y * partialDeriv i v y := by
    intro i u v y hu hv
    unfold partialDeriv
    rw [fderiv_fun_mul hu hv]
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  have pd_sum : ∀ (i : Fin 3) (u : Fin 3 → E3 → ℝ) (y : E3), (∀ k, DifferentiableAt ℝ (u k) y) →
      partialDeriv i (fun z => ∑ k : Fin 3, u k z) y = ∑ k : Fin 3, partialDeriv i (u k) y := by
    intro i u y hu
    unfold partialDeriv
    rw [fderiv_fun_sum (fun k _ => hu k)]
    simp only [ContinuousLinearMap.sum_apply]
  have hpd_diff : ∀ (f : E3 → ℝ) (T : Set E3) (y : E3), T ∈ 𝓝 y → ContDiffOn ℝ ∞ f T →
      ∀ a : Fin 3, DifferentiableAt ℝ (partialDeriv a f) y := by
    intro f T y hTy hf a
    have h1 : ContDiffAt ℝ ∞ f y := hf.contDiffAt hTy
    have h2 : ContDiffAt ℝ 1 (fderiv ℝ f) y :=
      ((contDiffAt_infty.1 h1) 2).fderiv_right (m := 1) (by norm_num)
    have h3 : DifferentiableAt ℝ (fderiv ℝ f) y := h2.differentiableAt one_ne_zero
    exact h3.clm_apply (differentiableAt_const (e a))
  have hbasis : ∀ (h : E3 → ℝ) (y v : E3),
      fderiv ℝ h y v = ∑ i : Fin 3, v i * partialDeriv i h y := by
    intro h y v
    have hv : v = ∑ i : Fin 3, v i • e i := by
      simpa using ((EuclideanSpace.basisFun (Fin 3) ℝ).sum_repr v).symm
    conv_lhs => rw [hv]
    rw [map_sum]
    simp only [map_smul, smul_eq_mul, partialDeriv]
  have int3 : ∀ (S : Set E3) (L B C X : E3 → ℝ), MeasurableSet S → IntegrableOn L S →
      IntegrableOn B S → IntegrableOn X S → (∀ y ∈ S, L y = B y + C y + X y) →
      ∫ y in S, L y = (∫ y in S, B y) + (∫ y in S, C y) + ∫ y in S, X y := by
    intro S L B C X hS hL hB hX hEq
    have hC : IntegrableOn C S := by
      refine IntegrableOn.congr_fun ((hL.sub hB).sub hX) (fun y hy => ?_) hS
      simp only [Pi.sub_apply]
      rw [hEq y hy]
      ring
    rw [setIntegral_congr_fun hS hEq,
      integral_add (f := fun y => B y + C y) (Integrable.add hB hC) hX, integral_add hB hC]
  have hηd : ∀ t : ℝ, HasDerivAt Real.smoothTransition (deriv Real.smoothTransition t) t :=
    fun t => (((Real.smoothTransition.contDiff (n := 1)).differentiable one_ne_zero) t).hasDerivAt
  
  
  
  have core : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (T : Set E3), IsOpen T →
      (∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => G z i j) T) →
      (∀ (z : E3) (i j : Fin 3), G z i j = G z j i) →
      (∀ z ∈ T, (G z).PosDef) →
      ∀ (a f : E3 → ℝ) (X : E3 → E3) (y : E3), y ∈ T → DifferentiableAt ℝ a y →
      ContDiffOn ℝ ∞ f T →
      (∀ z ∈ T, ∀ i : Fin 3, X z i = a z * ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z) →
      sepDensDiv G X y =
        Real.sqrt (G y).det * (a y * lapLoc G f y + gradInnerLoc G a f y) := by
    intro G T hT hG hsymm hpd a f X y hy ha hf hX
    have hTy : T ∈ 𝓝 y := hT.mem_nhds hy
    have hdet : 0 < (G y).det := (hpd y hy).det_pos
    have hGd : ∀ a b : Fin 3, DifferentiableAt ℝ (fun z => G z a b) y := fun a b =>
      ((hG a b).differentiableOn (by simp)).differentiableAt hTy
    have hp : ∀ k : Fin 3, DifferentiableAt ℝ (partialDeriv k f) y := hpd_diff f T y hTy hf
    have hsymI : ∀ a b : Fin 3, (G y)⁻¹ a b = (G y)⁻¹ b a := by
      have hS : (G y).IsSymm := Matrix.IsSymm.ext (fun i j => hsymm y j i)
      have hSi := hS.inv
      intro a b
      exact hSi.apply b a
    
    have hs1 : ∀ i : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det) y ∧
        partialDeriv i (fun z => Real.sqrt (G z).det) y = Real.sqrt (G y).det / 2 *
          ∑ a : Fin 3, ∑ b : Fin 3, (G y)⁻¹ a b * partialDeriv i (fun z => G z a b) y := by
      intro i
      have hfun : (fun z => (G z).det) = fun z =>
          G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
            - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
            + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
        funext z; exact Matrix.det_fin_three (G z)
      have h00 := (hGd 0 0).hasFDerivAt
      have h01 := (hGd 0 1).hasFDerivAt
      have h02 := (hGd 0 2).hasFDerivAt
      have h10 := (hGd 1 0).hasFDerivAt
      have h11 := (hGd 1 1).hasFDerivAt
      have h12 := (hGd 1 2).hasFDerivAt
      have h20 := (hGd 2 0).hasFDerivAt
      have h21 := (hGd 2 1).hasFDerivAt
      have h22 := (hGd 2 2).hasFDerivAt
      have hD := (((((((h00.mul h11).mul h22).sub ((h00.mul h12).mul h21)).sub
        ((h01.mul h10).mul h22)).add ((h01.mul h12).mul h20)).add
        ((h02.mul h10).mul h21)).sub ((h02.mul h11).mul h20))
      have hD' : HasFDerivAt (fun z => (G z).det) _ y :=
        hD.congr_of_eventuallyEq (Filter.Eventually.of_forall fun z => congrFun hfun z)
      have hS := hD'.sqrt hdet.ne'
      refine ⟨hS.differentiableAt, ?_⟩
      unfold partialDeriv
      rw [hS.fderiv]
      have hinv : ∀ a b, (G y)⁻¹ a b = ((G y).det)⁻¹ * (G y).adjugate a b := by
        intro a b
        rw [Matrix.inv_def, Matrix.smul_apply, Ring.inverse_eq_inv', smul_eq_mul]
      simp only [hinv]
      have hs2 : Real.sqrt (G y).det * Real.sqrt (G y).det = (G y).det :=
        Real.mul_self_sqrt hdet.le
      have hspos : 0 < Real.sqrt (G y).det := Real.sqrt_pos.2 hdet
      have hfac : 1 / (2 * Real.sqrt (G y).det) = Real.sqrt (G y).det / 2 * ((G y).det)⁻¹ := by
        have aux : ∀ s d : ℝ, 0 < s → s * s = d → 1 / (2 * s) = s / 2 * d⁻¹ := by
          intro s d hs h
          subst h
          field_simp
        exact aux _ _ hspos hs2
      rw [hfac]
      set d := (G y).det with hd
      have f10 : fderiv ℝ (fun z => G z 1 0) y = fderiv ℝ (fun z => G z 0 1) y := by
        congr 1; funext z; exact hsymm z 1 0
      have f20 : fderiv ℝ (fun z => G z 2 0) y = fderiv ℝ (fun z => G z 0 2) y := by
        congr 1; funext z; exact hsymm z 2 0
      have f21 : fderiv ℝ (fun z => G z 2 1) y = fderiv ℝ (fun z => G z 1 2) y := by
        congr 1; funext z; exact hsymm z 2 1
      have e10 := hsymm y 1 0
      have e20 := hsymm y 2 0
      have e21 := hsymm y 2 1
      simp only [ContinuousLinearMap.smul_apply, ContinuousLinearMap.add_apply,
        ContinuousLinearMap.sub_apply, smul_eq_mul, Pi.mul_apply, Fin.sum_univ_three,
        Matrix.adjugate_fin_three, Matrix.of_apply, Matrix.cons_val', Matrix.empty_val',
        Matrix.cons_val_fin_one, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
        Matrix.head_cons, Matrix.tail_cons, Matrix.head_fin_const, f10, f20, f21, e10, e20, e21]
      ring
    have hs2 := fun m => inv_entry_partialDeriv G y hGd hdet.ne' m
    have hdS : ∀ i : Fin 3, partialDeriv i (fun z => Real.sqrt (G z).det) y =
        Real.sqrt (G y).det / 2 * ∑ a : Fin 3, ∑ b : Fin 3,
          (G y)⁻¹ a b * partialDeriv i (fun z => G z a b) y := fun i => (hs1 i).2
    have hdGi : ∀ m k l : Fin 3, partialDeriv m (fun z => (G z)⁻¹ k l) y =
        -∑ a : Fin 3, ∑ b : Fin 3,
          (G y)⁻¹ k a * partialDeriv m (fun z => G z a b) y * (G y)⁻¹ b l :=
      fun m k l => (hs2 m k l).2
    have hs : DifferentiableAt ℝ (fun z => Real.sqrt (G z).det) y := (hs1 0).1
    have hGi : ∀ a b : Fin 3, DifferentiableAt ℝ (fun z => (G z)⁻¹ a b) y :=
      fun a b => (hs2 0 a b).1
    have hUk : ∀ i k : Fin 3, DifferentiableAt ℝ
        (fun z => (G z)⁻¹ i k * partialDeriv k f z) y :=
      fun i k => (hGi i k).mul (hp k)
    have hU : ∀ i : Fin 3, DifferentiableAt ℝ
        (fun z => ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z) y :=
      fun i => DifferentiableAt.fun_sum (fun k _ => hUk i k)
    have hloc : ∀ i : Fin 3, partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y =
        partialDeriv i (fun z => Real.sqrt (G z).det *
          (a z * ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z)) y := by
      intro i
      have hev : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y]
          (fun z => Real.sqrt (G z).det *
            (a z * ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z)) :=
        Filter.eventually_of_mem hTy (fun z hz => by simp only [hX z hz i])
      exact congrArg (fun L : E3 →L[ℝ] ℝ => L (e i)) hev.fderiv_eq
    have hUpd : ∀ i : Fin 3,
        partialDeriv i (fun z => ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z) y =
        ∑ k : Fin 3, (partialDeriv i (fun z => (G z)⁻¹ i k) y * partialDeriv k f y +
          (G y)⁻¹ i k * partialDeriv i (partialDeriv k f) y) := by
      intro i
      rw [pd_sum i _ y (hUk i)]
      refine Finset.sum_congr rfl (fun k _ => ?_)
      rw [pd_mul i _ (partialDeriv k f) y (hGi i k) (hp k)]
    have hterm : ∀ i : Fin 3, partialDeriv i (fun z => Real.sqrt (G z).det *
          (a z * ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z)) y =
        partialDeriv i (fun z => Real.sqrt (G z).det) y *
            (a y * ∑ k : Fin 3, (G y)⁻¹ i k * partialDeriv k f y) +
          Real.sqrt (G y).det * (partialDeriv i a y * ∑ k : Fin 3, (G y)⁻¹ i k * partialDeriv k f y +
            a y * ∑ k : Fin 3, (partialDeriv i (fun z => (G z)⁻¹ i k) y * partialDeriv k f y +
              (G y)⁻¹ i k * partialDeriv i (partialDeriv k f) y)) := by
      intro i
      have haU : DifferentiableAt ℝ
          (fun z => a z * ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z) y := ha.mul (hU i)
      rw [pd_mul i (fun z => Real.sqrt (G z).det)
          (fun z => a z * ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z) y hs haU,
        pd_mul i a (fun z => ∑ k : Fin 3, (G z)⁻¹ i k * partialDeriv k f z) y ha (hU i), hUpd i]
    have e10 := hsymI 1 0
    have e20 := hsymI 2 0
    have e21 := hsymI 2 1
    have hA1 : ∑ i : Fin 3, partialDeriv i (fun z => Real.sqrt (G z).det) y *
          ∑ k : Fin 3, (G y)⁻¹ i k * partialDeriv k f y +
        Real.sqrt (G y).det * ∑ i : Fin 3, ∑ k : Fin 3,
          partialDeriv i (fun z => (G z)⁻¹ i k) y * partialDeriv k f y =
        -(Real.sqrt (G y).det * ∑ i : Fin 3, ∑ j : Fin 3, (G y)⁻¹ i j *
          ∑ k : Fin 3, christoffel G k i j y * partialDeriv k f y) := by
      simp only [hdS, hdGi, christoffel, Fin.sum_univ_three, e10, e20, e21]
      ring
    unfold sepDensDiv
    rw [Finset.sum_congr rfl (fun i _ => (hloc i).trans (hterm i))]
    simp only [lapLoc, hessLoc, gradInnerLoc, Fin.sum_univ_three] at hA1 ⊢
    linear_combination a y * hA1
  
  
  
  have hF : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (sternPhiM g u ε) := sternPhiM_contMDiff g u hu ε hε
  have perchart : ∀ (p : M) (ψ : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ →
      IsCompact (tsupport ψ) → tsupport ψ ⊆ (chartAt E3 p).source →
      ∀ S : Set E3, MeasurableSet S → S ⊆ (chartAt E3 p).target →
      ∫ y in S, sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ Z) y =
        (∫ y in S, ψ ((chartAt E3 p).symm y) *
            (Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
              g.lapM (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
            Real.sqrt (g.coeff (chartAt E3 p).symm y).det) +
        (∫ y in S, ψ ((chartAt E3 p).symm y) *
            (s⁻¹ * deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
              g.gradInner β (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
            Real.sqrt (g.coeff (chartAt E3 p).symm y).det) +
        ∫ y in S, Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            fderiv ℝ (fun z => ψ ((chartAt E3 p).symm z)) y
              (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
                (Z ((chartAt E3 p).symm y)) : E3) := by
    intro p ψ hψ hψc hψs S hS hST
    have hT : IsOpen (chartAt E3 p).target := (chartAt E3 p).open_target
    have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j)
        (chartAt E3 p).target := fun i j => g.smooth p i j
    have hsymm : ∀ (z : E3) (i j : Fin 3), g.coeff (chartAt E3 p).symm z i j =
        g.coeff (chartAt E3 p).symm z j i := fun z i j => g.symm _ _ _
    have hpdG : ∀ z ∈ (chartAt E3 p).target, (g.coeff (chartAt E3 p).symm z).PosDef :=
      fun z hz => coeff_chart_symm_posDef g p z hz
    have hσ : ContDiffOn ℝ ∞ (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det)
        (chartAt E3 p).target := ccs_sqrtdet_smooth _ _ hG (fun z hz => (hpdG z hz).det_pos)
    have hψs' : ContDiffOn ℝ ∞ (fun z => ψ ((chartAt E3 p).symm z)) (chartAt E3 p).target :=
      (chart_pullback_gradInner g ψ hψ p).1
    have hβs : ContDiffOn ℝ ∞ (fun z => β ((chartAt E3 p).symm z)) (chartAt E3 p).target :=
      (chart_pullback_gradInner g β hβ p).1
    have hFs : ContDiffOn ℝ ∞ (fun z => sternPhiM g u ε ((chartAt E3 p).symm z))
        (chartAt E3 p).target := (chart_pullback_gradInner g _ hF p).1
    
    have hPW : ∀ y ∈ (chartAt E3 p).target,
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ Z) y =
          ψ ((chartAt E3 p).symm y) *
            (Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
              g.lapM (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
            Real.sqrt (g.coeff (chartAt E3 p).symm y).det +
          ψ ((chartAt E3 p).symm y) *
            (s⁻¹ * deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
              g.gradInner β (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
            Real.sqrt (g.coeff (chartAt E3 p).symm y).det +
          Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            fderiv ℝ (fun z => ψ ((chartAt E3 p).symm z)) y
              (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
                (Z ((chartAt E3 p).symm y)) : E3) := by
      intro y hy
      have hTy : (chartAt E3 p).target ∈ 𝓝 y := hT.mem_nhds hy
      have hψd : DifferentiableAt ℝ (fun z => ψ ((chartAt E3 p).symm z)) y :=
        (hψs'.contDiffAt hTy).differentiableAt (by simp)
      have hβd : DifferentiableAt ℝ (fun z => β ((chartAt E3 p).symm z)) y :=
        (hβs.contDiffAt hTy).differentiableAt (by simp)
      have hAfd : HasFDerivAt (fun z => Real.smoothTransition (β ((chartAt E3 p).symm z) / s))
          (deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) •
            (s⁻¹ • fderiv ℝ (fun z => β ((chartAt E3 p).symm z)) y)) y := by
        have hbs : HasFDerivAt (fun z => β ((chartAt E3 p).symm z) / s)
            (s⁻¹ • fderiv ℝ (fun z => β ((chartAt E3 p).symm z)) y) y := by
          simpa only [div_eq_mul_inv] using hβd.hasFDerivAt.mul_const s⁻¹
        exact (hηd _).comp_hasFDerivAt y hbs
      have hAd : DifferentiableAt ℝ
          (fun z => Real.smoothTransition (β ((chartAt E3 p).symm z) / s)) y :=
        hAfd.differentiableAt
      have hApd : ∀ i : Fin 3,
          partialDeriv i (fun z => Real.smoothTransition (β ((chartAt E3 p).symm z) / s)) y =
            deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
              (s⁻¹ * partialDeriv i (fun z => β ((chartAt E3 p).symm z)) y) := by
        intro i
        unfold partialDeriv
        rw [hAfd.fderiv]
        simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
      have had : ∀ i : Fin 3, partialDeriv i (fun z => ψ ((chartAt E3 p).symm z) *
            Real.smoothTransition (β ((chartAt E3 p).symm z) / s)) y =
          partialDeriv i (fun z => ψ ((chartAt E3 p).symm z)) y *
              Real.smoothTransition (β ((chartAt E3 p).symm y) / s) +
            ψ ((chartAt E3 p).symm y) *
              (deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
                (s⁻¹ * partialDeriv i (fun z => β ((chartAt E3 p).symm z)) y)) := by
        intro i
        rw [pd_mul i _ _ y hψd hAd, hApd i]
      have hcore : sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ Z) y =
          Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            ((ψ ((chartAt E3 p).symm y) *
                Real.smoothTransition (β ((chartAt E3 p).symm y) / s)) *
              lapLoc (g.coeff (chartAt E3 p).symm)
                (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y +
            gradInnerLoc (g.coeff (chartAt E3 p).symm)
              (fun z => ψ ((chartAt E3 p).symm z) *
                Real.smoothTransition (β ((chartAt E3 p).symm z) / s))
              (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y) :=
        core (g.coeff (chartAt E3 p).symm) (chartAt E3 p).target hT hG hsymm hpdG
          (fun z => ψ ((chartAt E3 p).symm z) *
            Real.smoothTransition (β ((chartAt E3 p).symm z) / s))
          (fun z => sternPhiM g u ε ((chartAt E3 p).symm z))
          (calPiece p ψ Z) y hy (hψd.mul hAd) hFs (by
            intro z hz i
            simp only [calPiece]
            rw [Set.indicator_of_mem hz, mul_assoc]
            exact congrArg (fun t => ψ ((chartAt E3 p).symm z) * t) (hZrep p z hz i))
      have hlap : lapLoc (g.coeff (chartAt E3 p).symm)
          (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y =
          g.lapM (sternPhiM g u ε) ((chartAt E3 p).symm y) := by
        rw [nli_chart_lapM_eq g p _ hF y hy]
        simp only [lapLoc, hessLoc, Fin.sum_univ_three]
        ring
      have hgradA : gradInnerLoc (g.coeff (chartAt E3 p).symm)
          (fun z => ψ ((chartAt E3 p).symm z) *
            Real.smoothTransition (β ((chartAt E3 p).symm z) / s))
          (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y =
          ∑ i : Fin 3, partialDeriv i (fun z => ψ ((chartAt E3 p).symm z)) y *
              (Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
                ∑ k : Fin 3, (g.coeff (chartAt E3 p).symm y)⁻¹ i k *
                  partialDeriv k (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y) +
            ψ ((chartAt E3 p).symm y) *
              (s⁻¹ * deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
                gradInnerLoc (g.coeff (chartAt E3 p).symm) (fun z => β ((chartAt E3 p).symm z))
                  (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y) := by
        simp only [gradInnerLoc, had, Fin.sum_univ_three]
        ring
      have hgradB : gradInnerLoc (g.coeff (chartAt E3 p).symm) (fun z => β ((chartAt E3 p).symm z))
          (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y =
          g.gradInner β (sternPhiM g u ε) ((chartAt E3 p).symm y) := by
        obtain ⟨P, hPs, hPeq⟩ := partialDiffeomorph_of_injOn p (chartAt E3 p).target hT id
          contDiffOn_id (Set.injOn_id _) (fun z hz => hz)
          (fun z _ => by rw [fderiv_id]; exact fun a b h => by simpa using h)
        have hyP : y ∈ P.source := by rw [hPs]; exact hy
        have hPy : P y = (chartAt E3 p).symm y := by simp only [hPeq y hy, id_eq]
        have hev : (P : E3 → M) =ᶠ[𝓝 y] (chartAt E3 p).symm :=
          Filter.eventually_of_mem hTy (fun z hz => by simp only [hPeq z hz, id_eq])
        have hevβ : (fun z => β (P z)) =ᶠ[𝓝 y] (fun z => β ((chartAt E3 p).symm z)) :=
          Filter.eventually_of_mem hTy (fun z hz => by simp only [hPeq z hz, id_eq])
        have hevF : (fun z => sternPhiM g u ε (P z)) =ᶠ[𝓝 y]
            (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) :=
          Filter.eventually_of_mem hTy (fun z hz => by simp only [hPeq z hz, id_eq])
        have hcoeff : g.coeff P y = g.coeff (chartAt E3 p).symm y := by
          unfold RiemannianMetric3.coeff coeffMatrix
          rw [hPy, hev.mfderiv_eq]
        have hpdβ : ∀ i : Fin 3, partialDeriv i (fun z => β (P z)) y =
            partialDeriv i (fun z => β ((chartAt E3 p).symm z)) y := by
          intro i
          unfold partialDeriv
          rw [Filter.EventuallyEq.fderiv_eq hevβ]
        have hpdF : ∀ i : Fin 3, partialDeriv i (fun z => sternPhiM g u ε (P z)) y =
            partialDeriv i (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y := by
          intro i
          unfold partialDeriv
          rw [Filter.EventuallyEq.fderiv_eq hevF]
        have hform := gradInner_pdiffeo_formula g P β (sternPhiM g u ε) hβ hF y hyP
        rw [hPy] at hform
        rw [hform]
        simp only [gradInnerLoc, hcoeff, hpdβ, hpdF]
      have hfin : ∀ w : E3, w = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
          ((chartAt E3 p).symm y) (Z ((chartAt E3 p).symm y)) →
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ Z) y =
            ψ ((chartAt E3 p).symm y) *
              (Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
                g.lapM (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
              Real.sqrt (g.coeff (chartAt E3 p).symm y).det +
            ψ ((chartAt E3 p).symm y) *
              (s⁻¹ * deriv Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
                g.gradInner β (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
              Real.sqrt (g.coeff (chartAt E3 p).symm y).det +
            Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
              fderiv ℝ (fun z => ψ ((chartAt E3 p).symm z)) y w := by
        intro w hw
        have hwi : ∀ i : Fin 3, w i =
            Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
              ∑ k : Fin 3, (g.coeff (chartAt E3 p).symm y)⁻¹ i k *
                partialDeriv k (fun z => sternPhiM g u ε ((chartAt E3 p).symm z)) y := by
          intro i
          subst hw
          exact hZrep p y hy i
        rw [hcore, hlap, hgradA, hgradB, hbasis _ y w]
        simp only [Fin.sum_univ_three, hwi]
        ring
      exact hfin _ rfl
    
    have hSimg : S ⊆ chartAt E3 p '' (Set.univ ∩ (chartAt E3 p).source) := by
      intro y hy
      exact ⟨(chartAt E3 p).symm y, ⟨trivial, (chartAt E3 p).map_target (hST hy)⟩,
        (chartAt E3 p).right_inv (hST hy)⟩
    obtain ⟨-, hXint, hLint⟩ := chart_flux_zero_of_vanishing g Set.univ isOpen_univ Z hZ
      (fun x hx => by simp at hx) p ψ hψ hψc hψs
    have hXS := hXint.mono_set hSimg
    have hLS : IntegrableOn (sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ Z)) S :=
      hLint.integrableOn
    have hlapc := (stern_phi_chart_reps g u hu ε hε p).2.1
    have hK : IsCompact (chartAt E3 p '' tsupport ψ) :=
      hψc.image_of_continuousOn ((chartAt E3 p).continuousOn.mono hψs)
    have hKT : chartAt E3 p '' tsupport ψ ⊆ (chartAt E3 p).target := by
      rintro _ ⟨x, hx, rfl⟩
      exact (chartAt E3 p).map_source (hψs hx)
    have hBc : ContinuousOn (fun y => ψ ((chartAt E3 p).symm y) *
          (Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
            g.lapM (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
          Real.sqrt (g.coeff (chartAt E3 p).symm y).det) (chartAt E3 p).target :=
      (hψs'.continuousOn.mul
        ((Real.smoothTransition.continuous.comp_continuousOn
          (hβs.continuousOn.div_const s)).mul hlapc)).mul hσ.continuousOn
    have hBint : IntegrableOn (fun y => ψ ((chartAt E3 p).symm y) *
          (Real.smoothTransition (β ((chartAt E3 p).symm y) / s) *
            g.lapM (sternPhiM g u ε) ((chartAt E3 p).symm y)) *
          Real.sqrt (g.coeff (chartAt E3 p).symm y).det) S := by
      refine IntegrableOn.of_forall_diff_eq_zero
        (ContinuousOn.integrableOn_compact hK (hBc.mono hKT)) hS ?_
      rintro y ⟨hyS, hyK⟩
      have hy0 : ψ ((chartAt E3 p).symm y) = 0 := by
        apply image_eq_zero_of_notMem_tsupport
        intro hmem
        exact hyK ⟨_, hmem, (chartAt E3 p).right_inv (hST hyS)⟩
      simp only [hy0, zero_mul]
    exact int3 S _ _ _ _ hS hLS hBint hXS (fun y hy => hPW y (hST hy))
  
  
  
  have hX0 := cal_partition_div_cancel g Ω q φ hφ O hO h1 Z hZ D hD hDO
  have hj : ∀ j : Fin n,
      (∫ y in chartAt E3 (q j) '' (D ∩ (chartAt E3 (q j)).source),
          φ j ((chartAt E3 (q j)).symm y) *
            (Real.smoothTransition (β ((chartAt E3 (q j)).symm y) / s) *
              g.lapM (sternPhiM g u ε) ((chartAt E3 (q j)).symm y)) *
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det) +
        (∫ y in chartAt E3 (q j) '' (D ∩ (chartAt E3 (q j)).source),
          φ j ((chartAt E3 (q j)).symm y) *
            (s⁻¹ * deriv Real.smoothTransition (β ((chartAt E3 (q j)).symm y) / s) *
              g.gradInner β (sternPhiM g u ε) ((chartAt E3 (q j)).symm y)) *
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det) =
      (∫ y in chartAt E3 (q j) '' (D ∩ (chartAt E3 (q j)).source),
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Z) y) -
        ∫ y in chartAt E3 (q j) '' (D ∩ (chartAt E3 (q j)).source),
          Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det *
            fderiv ℝ (fun z => φ j ((chartAt E3 (q j)).symm z)) y
              (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (q j)) ((chartAt E3 (q j)).symm y)
                (Z ((chartAt E3 (q j)).symm y)) : E3) := by
    intro j
    have hsub : chartAt E3 (q j) '' (D ∩ (chartAt E3 (q j)).source) ⊆
        (chartAt E3 (q j)).target := by
      rintro _ ⟨x, hx, rfl⟩
      exact (chartAt E3 (q j)).map_source hx.2
    rw [perchart (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1
      ((hφ.2.2.2 j).2.trans Set.inter_subset_right) _ (hD (q j)) hsub]
    ring
  simp only [sternBulk, sternCollar, calVolSum, calDivSum]
  rw [← Finset.sum_add_distrib]
  refine (Finset.sum_congr rfl (fun j _ => hj j)).trans ?_
  rw [Finset.sum_sub_distrib, hX0, sub_zero]

theorem cyl_divergence_theorem (V : E3 → Fin 3 → ℝ) (hV : ∀ a : Fin 3, ContDiff ℝ 1 (fun x => V x a))
    (ℓ : ℝ) (hℓ : 0 < ℓ) :
    cylFlux V ℓ = ∫ x in {x : E3 | |x 0| ≤ ℓ ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ ℓ ^ 2},
      ∑ a : Fin 3, partialDeriv a (fun z => V z a) x :=
by
  
  have hVd : ∀ a : Fin 3, ∀ x : E3,
      HasFDerivAt (fun z => V z a) (fderiv ℝ (fun z => V z a) x) x :=
    fun a x => (((hV a).differentiable (by simp)) x).hasFDerivAt
  have hVc : ∀ a : Fin 3, Continuous (fun z => V z a) := fun a => (hV a).continuous
  have hVP : ∀ a i : Fin 3, Continuous (fun x => partialDeriv i (fun z => V z a) x) :=
    fun a i => ((hV a).continuous_fderiv (by simp)).clm_apply continuous_const
  
  have t_swap : ∀ (f : ℝ → ℝ → ℝ), Continuous (Function.uncurry f) → ∀ a₀ b₀ c₀ d₀ : ℝ,
      ∫ x in a₀..b₀, ∫ y in c₀..d₀, f x y = ∫ y in c₀..d₀, ∫ x in a₀..b₀, f x y := by
    intro f hf a₀ b₀ c₀ d₀
    have hint : Integrable (Function.uncurry f)
        ((volume.restrict (Set.uIoc a₀ b₀)).prod (volume.restrict (Set.uIoc c₀ d₀))) := by
      rw [Measure.prod_restrict, ← Measure.volume_eq_prod]
      exact (hf.continuousOn.integrableOn_compact (isCompact_uIcc.prod isCompact_uIcc)).mono_set
        (Set.prod_mono Set.uIoc_subset_uIcc Set.uIoc_subset_uIcc)
    have h1 : ∀ x, ∫ y in c₀..d₀, f x y =
        (if c₀ ≤ d₀ then (1:ℝ) else -1) • ∫ y in Set.uIoc c₀ d₀, f x y :=
      fun x => intervalIntegral.intervalIntegral_eq_integral_uIoc _ _ _ _
    simp only [h1]
    rw [intervalIntegral.integral_smul, MeasureTheory.intervalIntegral_integral_swap hint]
    conv_rhs => rw [intervalIntegral.intervalIntegral_eq_integral_uIoc]
  
  have t_chain : ∀ (f : E3 → ℝ) (T Y Z : ℝ → ℝ) (T' Y' Z' u : ℝ),
      HasDerivAt T T' u → HasDerivAt Y Y' u → HasDerivAt Z Z' u →
      HasFDerivAt f (fderiv ℝ f (cylPt (T u) (Y u) (Z u))) (cylPt (T u) (Y u) (Z u)) →
      HasDerivAt (fun v => f (cylPt (T v) (Y v) (Z v)))
        (T' * partialDeriv 0 f (cylPt (T u) (Y u) (Z u))
          + Y' * partialDeriv 1 f (cylPt (T u) (Y u) (Z u))
          + Z' * partialDeriv 2 f (cylPt (T u) (Y u) (Z u))) u := by
    intro f T Y Z T' Y' Z' u hT hY hZ hf
    have hγ : HasDerivAt (fun v => cylPt (T v) (Y v) (Z v))
        (T' • e 0 + Y' • e 1 + Z' • e 2) u := by
      unfold cylPt
      exact ((hT.smul_const (e 0)).add (hY.smul_const (e 1))).add (hZ.smul_const (e 2))
    have h := hf.comp_hasDerivAt u hγ
    convert h using 1
    simp only [partialDeriv, map_add, map_smul, smul_eq_mul]
  
  have s1 : ∀ k : ℝ × ℝ → ℝ, Continuous k →
      ∫ p in {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2}, k p =
        ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi),
          k (ρ * Real.cos s, ρ * Real.sin s) * ρ := by
    intro k hk
    have hDkm : MeasurableSet {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2} :=
      (isClosed_le (by fun_prop) (by fun_prop)).measurableSet
    have hS'm : MeasurableSet (Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi) :=
      measurableSet_Ioc.prod measurableSet_Ioo
    have hTm : MeasurableSet polarCoord.target := by
      rw [polarCoord_target]; exact measurableSet_Ioi.prod measurableSet_Ioo
    obtain ⟨H, hH⟩ : ∃ H : ℝ × ℝ → ℝ,
        H = fun p => p.1 * k (p.1 * Real.cos p.2, p.1 * Real.sin p.2) := ⟨_, rfl⟩
    have hHc : Continuous H := by subst hH; fun_prop
    have step1 : ∫ p in {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2}, k p =
        ∫ p in polarCoord.target,
          (Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi).indicator H p := by
      rw [← integral_indicator hDkm, ← integral_comp_polarCoord_symm]
      refine setIntegral_congr_fun hTm ?_
      intro p hp
      beta_reduce
      rw [polarCoord_target] at hp
      obtain ⟨hp1, hp2⟩ := hp
      simp only [Set.mem_Ioi] at hp1
      have hr : (p.1 * Real.cos p.2) ^ 2 + (p.1 * Real.sin p.2) ^ 2 = p.1 ^ 2 := by
        linear_combination p.1 ^ 2 * Real.sin_sq_add_cos_sq p.2
      by_cases hle : p.1 ≤ ℓ
      · have hm1 : polarCoord.symm p ∈ {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2} := by
          rw [polarCoord_symm_apply]
          show (p.1 * Real.cos p.2) ^ 2 + (p.1 * Real.sin p.2) ^ 2 ≤ ℓ ^ 2
          rw [hr]
          exact pow_le_pow_left₀ hp1.le hle 2
        have hm2 : p ∈ Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi := ⟨⟨hp1, hle⟩, hp2⟩
        rw [Set.indicator_of_mem hm1, Set.indicator_of_mem hm2, polarCoord_symm_apply,
          smul_eq_mul]
        subst hH
        rfl
      · have hm1 : polarCoord.symm p ∉ {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2} := by
          rw [polarCoord_symm_apply]
          show ¬ ((p.1 * Real.cos p.2) ^ 2 + (p.1 * Real.sin p.2) ^ 2 ≤ ℓ ^ 2)
          rw [hr, not_le]
          exact pow_lt_pow_left₀ (lt_of_not_ge hle) hℓ.le (by norm_num)
        have hm2 : p ∉ Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi := fun h => hle h.1.2
        rw [Set.indicator_of_notMem hm1, Set.indicator_of_notMem hm2, smul_zero]
    have step2 : ∫ p in polarCoord.target,
          (Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi).indicator H p
        = ∫ p in Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi, H p := by
      rw [setIntegral_indicator hS'm, Set.inter_eq_right.mpr]
      rw [polarCoord_target]
      exact Set.prod_mono Set.Ioc_subset_Ioi_self subset_rfl
    have hint : IntegrableOn H (Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi)
        ((volume : Measure ℝ).prod (volume : Measure ℝ)) := by
      rw [← Measure.volume_eq_prod]
      exact (hHc.continuousOn.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)).mono_set
        (Set.prod_mono Set.Ioc_subset_Icc_self Set.Ioo_subset_Icc_self)
    have step3 : ∫ p in Set.Ioc (0:ℝ) ℓ ×ˢ Set.Ioo (-Real.pi) Real.pi, H p
        = ∫ r in Set.Ioc (0:ℝ) ℓ, ∫ θ in Set.Ioo (-Real.pi) Real.pi, H (r, θ) := by
      rw [Measure.volume_eq_prod ℝ ℝ]
      exact setIntegral_prod H hint
    have step4 : ∀ r : ℝ, ∫ θ in Set.Ioo (-Real.pi) Real.pi, H (r, θ) =
        ∫ s in (0 : ℝ)..(2 * Real.pi), k (r * Real.cos s, r * Real.sin s) * r := by
      intro r
      have hper : Function.Periodic (fun θ => H (r, θ)) (2 * Real.pi) := by
        intro θ
        subst hH
        simp only [Real.cos_add_two_pi, Real.sin_add_two_pi]
      rw [← integral_Ioc_eq_integral_Ioo,
        ← intervalIntegral.integral_of_le (by linarith [Real.pi_pos] : -Real.pi ≤ Real.pi)]
      have h := hper.intervalIntegral_add_eq (-Real.pi) 0
      rw [show -Real.pi + 2 * Real.pi = Real.pi by ring, zero_add] at h
      rw [h]
      refine intervalIntegral.integral_congr (fun s _ => ?_)
      subst hH
      simp only
      ring
    rw [step1, step2, step3, intervalIntegral.integral_of_le hℓ.le]
    exact setIntegral_congr_fun measurableSet_Ioc (fun r _ => step4 r)
  
  have hc0 : ∀ a b c : ℝ, (cylPt a b c) 0 = a := by
    intro a b c; simp [cylPt, EuclideanSpace.single_apply]
  have hc1 : ∀ a b c : ℝ, (cylPt a b c) 1 = b := by
    intro a b c; simp [cylPt, EuclideanSpace.single_apply]
  have hc2 : ∀ a b c : ℝ, (cylPt a b c) 2 = c := by
    intro a b c; simp [cylPt, EuclideanSpace.single_apply]
  have s2 : ∀ h : E3 → ℝ, Continuous h →
      ∫ x in {x : E3 | |x 0| ≤ ℓ ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ ℓ ^ 2}, h x =
        ∫ t in (-ℓ)..ℓ, ∫ p in {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2},
          h (cylPt t p.1 p.2) := by
    intro h hh
    let E : E3 ≃ᵐ ℝ × (ℝ × ℝ) := (MeasurableEquiv.toLp 2 (Fin 3 → ℝ)).symm.trans
      ((MeasurableEquiv.piFinSuccAbove (fun _ : Fin 3 => ℝ) 0).trans
        (MeasurableEquiv.prodCongr (MeasurableEquiv.refl ℝ) MeasurableEquiv.finTwoArrow))
    have hE : MeasurePreserving E volume volume :=
      (EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp (Fin 3)).trans
        ((volume_preserving_piFinSuccAbove (fun _ : Fin 3 => ℝ) 0).trans
          ((MeasurePreserving.id volume).prod (volume_preserving_finTwoArrow ℝ)))
    have hEc : ∀ a b c : ℝ, E (cylPt a b c) = (a, (b, c)) := by
      intro a b c
      have h' : E (cylPt a b c) = ((cylPt a b c) 0, ((cylPt a b c) 1, (cylPt a b c) 2)) := rfl
      rw [h', hc0, hc1, hc2]
    have hEs : ∀ q, E.symm q = cylPt q.1 q.2.1 q.2.2 := by
      intro q
      have h' := E.symm_apply_apply (cylPt q.1 q.2.1 q.2.2)
      rw [hEc] at h'
      exact h'
    have hpre : E.symm ⁻¹' {x : E3 | |x 0| ≤ ℓ ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ ℓ ^ 2} =
        Set.Icc (-ℓ) ℓ ×ˢ {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2} := by
      ext q
      simp only [Set.mem_preimage, hEs, Set.mem_setOf_eq, Set.mem_prod, Set.mem_Icc, hc0, hc1,
        hc2, abs_le]
    rw [← (MeasurePreserving.symm E hE).setIntegral_preimage_emb E.symm.measurableEmbedding h _,
      hpre]
    simp only [hEs]
    have hcyl : Continuous (fun q : ℝ × (ℝ × ℝ) => h (cylPt q.1 q.2.1 q.2.2)) :=
      hh.comp (show Continuous (fun q : ℝ × (ℝ × ℝ) => cylPt q.1 q.2.1 q.2.2) by
        unfold cylPt; fun_prop)
    have hsub : Set.Icc (-ℓ) ℓ ×ˢ {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2} ⊆
        Set.Icc (-ℓ) ℓ ×ˢ (Set.Icc (-ℓ) ℓ ×ˢ Set.Icc (-ℓ) ℓ) := by
      rintro ⟨t, y, z⟩ ⟨ht, hyz⟩
      simp only [Set.mem_setOf_eq] at hyz
      have hy : y ^ 2 ≤ ℓ ^ 2 := by nlinarith [sq_nonneg z]
      have hz : z ^ 2 ≤ ℓ ^ 2 := by nlinarith [sq_nonneg y]
      exact ⟨ht, Set.mem_Icc.mpr (abs_le_of_sq_le_sq' hy hℓ.le),
        Set.mem_Icc.mpr (abs_le_of_sq_le_sq' hz hℓ.le)⟩
    have hint : IntegrableOn (fun q : ℝ × (ℝ × ℝ) => h (cylPt q.1 q.2.1 q.2.2))
        (Set.Icc (-ℓ) ℓ ×ˢ {p : ℝ × ℝ | p.1 ^ 2 + p.2 ^ 2 ≤ ℓ ^ 2})
        ((volume : Measure ℝ).prod (volume : Measure (ℝ × ℝ))) := by
      rw [← Measure.volume_eq_prod]
      exact (hcyl.continuousOn.integrableOn_compact
        (isCompact_Icc.prod (isCompact_Icc.prod isCompact_Icc))).mono_set hsub
    rw [Measure.volume_eq_prod ℝ (ℝ × ℝ), setIntegral_prod _ hint, integral_Icc_eq_integral_Ioc,
      intervalIntegral.integral_of_le (by linarith : -ℓ ≤ ℓ)]
  
  have s5 : ∀ h : E3 → ℝ, Continuous h →
      ∫ x in {x : E3 | |x 0| ≤ ℓ ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ ℓ ^ 2}, h x =
        ∫ t in (-ℓ)..ℓ, ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi),
          h (cylPt t (ρ * Real.cos s) (ρ * Real.sin s)) * ρ := by
    intro h hh
    rw [s2 h hh]
    refine intervalIntegral.integral_congr (fun t _ => ?_)
    exact s1 (fun p => h (cylPt t p.1 p.2))
      (hh.comp (show Continuous (fun p : ℝ × ℝ => cylPt t p.1 p.2) by unfold cylPt; fun_prop))
  
  have cP : Continuous (fun q : (ℝ × ℝ) × ℝ =>
      cylPt q.1.1 (q.1.2 * Real.cos q.2) (q.1.2 * Real.sin q.2)) := by
    unfold cylPt; fun_prop
  have cF : ∀ f : E3 → ℝ, Continuous f → Continuous (fun q : (ℝ × ℝ) × ℝ =>
      f (cylPt q.1.1 (q.1.2 * Real.cos q.2) (q.1.2 * Real.sin q.2)) * q.1.2) :=
    fun f hf => (hf.comp cP).mul (continuous_snd.comp continuous_fst)
  
  have lin3 : ∀ F G : ℝ → ℝ → ℝ → ℝ,
      Continuous (fun q : (ℝ × ℝ) × ℝ => F q.1.1 q.1.2 q.2) →
      Continuous (fun q : (ℝ × ℝ) × ℝ => G q.1.1 q.1.2 q.2) →
      ∫ t in (-ℓ)..ℓ, ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), (F t ρ s + G t ρ s) =
        (∫ t in (-ℓ)..ℓ, ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), F t ρ s) +
        ∫ t in (-ℓ)..ℓ, ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), G t ρ s := by
    intro F G hF hG
    have c2 : ∀ H : ℝ → ℝ → ℝ → ℝ, Continuous (fun q : (ℝ × ℝ) × ℝ => H q.1.1 q.1.2 q.2) →
        Continuous (fun p : ℝ × ℝ => ∫ s in (0 : ℝ)..(2 * Real.pi), H p.1 p.2 s) :=
      fun H hH => intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
        (f := fun (p : ℝ × ℝ) (s : ℝ) => H p.1 p.2 s) hH _ _
    have c1 : ∀ H : ℝ → ℝ → ℝ → ℝ, Continuous (fun q : (ℝ × ℝ) × ℝ => H q.1.1 q.1.2 q.2) →
        Continuous (fun t : ℝ => ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), H t ρ s) :=
      fun H hH => intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
        (f := fun t ρ => ∫ s in (0 : ℝ)..(2 * Real.pi), H t ρ s) (c2 H hH) _ _
    have sl2 : ∀ H : ℝ → ℝ → ℝ → ℝ, Continuous (fun q : (ℝ × ℝ) × ℝ => H q.1.1 q.1.2 q.2) →
        ∀ t, Continuous (fun ρ : ℝ => ∫ s in (0 : ℝ)..(2 * Real.pi), H t ρ s) :=
      fun H hH t => (c2 H hH).comp
        (continuous_const.prodMk continuous_id : Continuous fun ρ : ℝ => ((t, ρ) : ℝ × ℝ))
    have sl3 : ∀ H : ℝ → ℝ → ℝ → ℝ, Continuous (fun q : (ℝ × ℝ) × ℝ => H q.1.1 q.1.2 q.2) →
        ∀ t ρ, Continuous (fun s : ℝ => H t ρ s) :=
      fun H hH t ρ => hH.comp (continuous_const.prodMk continuous_id :
        Continuous fun s : ℝ => (((t, ρ), s) : (ℝ × ℝ) × ℝ))
    rw [← intervalIntegral.integral_add ((c1 F hF).intervalIntegrable _ _)
      ((c1 G hG).intervalIntegrable _ _)]
    refine intervalIntegral.integral_congr (fun t _ => ?_)
    try simp only
    rw [← intervalIntegral.integral_add ((sl2 F hF t).intervalIntegrable _ _)
      ((sl2 G hG t).intervalIntegrable _ _)]
    refine intervalIntegral.integral_congr (fun ρ _ => ?_)
    try simp only
    exact intervalIntegral.integral_add ((sl3 F hF t ρ).intervalIntegrable _ _)
      ((sl3 G hG t ρ).intervalIntegrable _ _)
  
  have t_cap : ∀ c : ℝ,
      ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi),
          (partialDeriv 1 (fun z => V z 1) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + partialDeriv 2 (fun z => V z 2) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))) * ρ =
        ∫ s in (0 : ℝ)..(2 * Real.pi),
          (V (cylPt c (ℓ * Real.cos s) (ℓ * Real.sin s)) 1 * Real.cos s
            + V (cylPt c (ℓ * Real.cos s) (ℓ * Real.sin s)) 2 * Real.sin s) * ℓ := by
    intro c
    have cPc : Continuous (fun q : ℝ × ℝ => cylPt c (q.1 * Real.cos q.2) (q.1 * Real.sin q.2)) := by
      unfold cylPt; fun_prop
    have cq : ∀ f : E3 → ℝ, Continuous f →
        Continuous (fun q : ℝ × ℝ => f (cylPt c (q.1 * Real.cos q.2) (q.1 * Real.sin q.2))) :=
      fun f hf => hf.comp cPc
    have cA := cq _ (hVc 1)
    have cB := cq _ (hVc 2)
    have cA1 := cq _ (hVP 1 1)
    have cA2 := cq _ (hVP 1 2)
    have cB1 := cq _ (hVP 2 1)
    have cB2 := cq _ (hVP 2 2)
    have cC : Continuous (fun q : ℝ × ℝ => Real.cos q.2) := by fun_prop
    have cS : Continuous (fun q : ℝ × ℝ => Real.sin q.2) := by fun_prop
    have cR : Continuous (fun q : ℝ × ℝ => q.1) := continuous_fst
    obtain ⟨Φ, hΦ⟩ : ∃ F : ℝ → ℝ → ℝ, F = fun ρ s =>
        ρ * (V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 1 * Real.cos s
          + V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 2 * Real.sin s) := ⟨_, rfl⟩
    obtain ⟨Ψ, hΨ⟩ : ∃ F : ℝ → ℝ → ℝ, F = fun ρ s =>
        V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 2 * Real.cos s
          - V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 1 * Real.sin s := ⟨_, rfl⟩
    obtain ⟨DΦ, hDΦ⟩ : ∃ F : ℝ → ℝ → ℝ, F = fun ρ s =>
        (V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 1 * Real.cos s
          + V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 2 * Real.sin s)
        + ρ * (Real.cos s * (Real.cos s * partialDeriv 1 (fun z => V z 1)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + Real.sin s * partialDeriv 2 (fun z => V z 1)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)))
          + Real.sin s * (Real.cos s * partialDeriv 1 (fun z => V z 2)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + Real.sin s * partialDeriv 2 (fun z => V z 2)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)))) :=
      ⟨_, rfl⟩
    obtain ⟨DΨ, hDΨ⟩ : ∃ F : ℝ → ℝ → ℝ, F = fun ρ s =>
        (-(ρ * Real.sin s) * partialDeriv 1 (fun z => V z 2)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + ρ * Real.cos s * partialDeriv 2 (fun z => V z 2)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)))
            * Real.cos s
          - V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 2 * Real.sin s
          - ((-(ρ * Real.sin s) * partialDeriv 1 (fun z => V z 1)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + ρ * Real.cos s * partialDeriv 2 (fun z => V z 1)
              (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)))
            * Real.sin s
          + V (cylPt c (ρ * Real.cos s) (ρ * Real.sin s)) 1 * Real.cos s) := ⟨_, rfl⟩
    have cDΦ : Continuous (fun q : ℝ × ℝ => DΦ q.1 q.2) := by
      subst hDΦ
      exact ((cA.mul cC).add (cB.mul cS)).add (cR.mul ((cC.mul ((cC.mul cA1).add
        (cS.mul cA2))).add (cS.mul ((cC.mul cB1).add (cS.mul cB2)))))
    have cDΨ : Continuous (fun q : ℝ × ℝ => DΨ q.1 q.2) := by
      subst hDΨ
      exact (((((cR.mul cS).neg.mul cB1).add ((cR.mul cC).mul cB2)).mul cC).sub
        (cB.mul cS)).sub
        (((((cR.mul cS).neg.mul cA1).add ((cR.mul cC).mul cA2)).mul cS).add (cA.mul cC))
    have hΦd : ∀ ρ s, HasDerivAt (fun r => Φ r s) (DΦ ρ s) ρ := by
      intro ρ s
      have hTa := t_chain (fun z => V z 1) (fun _ => c) (fun r => r * Real.cos s)
        (fun r => r * Real.sin s) 0 (Real.cos s) (Real.sin s) ρ (hasDerivAt_const _ _)
        (hasDerivAt_mul_const _) (hasDerivAt_mul_const _) (hVd 1 _)
      have hTb := t_chain (fun z => V z 2) (fun _ => c) (fun r => r * Real.cos s)
        (fun r => r * Real.sin s) 0 (Real.cos s) (Real.sin s) ρ (hasDerivAt_const _ _)
        (hasDerivAt_mul_const _) (hasDerivAt_mul_const _) (hVd 2 _)
      beta_reduce at hTa hTb
      have h := (hasDerivAt_id ρ).mul
        ((hTa.mul_const (Real.cos s)).add (hTb.mul_const (Real.sin s)))
      subst hΦ hDΦ
      refine h.congr_deriv ?_
      simp only [id, Pi.add_apply]
      ring
    have hΨd : ∀ ρ s, HasDerivAt (fun u => Ψ ρ u) (DΨ ρ s) s := by
      intro ρ s
      have hY : HasDerivAt (fun u => ρ * Real.cos u) (ρ * -Real.sin s) s :=
        (Real.hasDerivAt_cos s).const_mul ρ
      have hZ : HasDerivAt (fun u => ρ * Real.sin u) (ρ * Real.cos s) s :=
        (Real.hasDerivAt_sin s).const_mul ρ
      have hTa := t_chain (fun z => V z 1) (fun _ => c) (fun u => ρ * Real.cos u)
        (fun u => ρ * Real.sin u) 0 _ _ s (hasDerivAt_const _ _) hY hZ (hVd 1 _)
      have hTb := t_chain (fun z => V z 2) (fun _ => c) (fun u => ρ * Real.cos u)
        (fun u => ρ * Real.sin u) 0 _ _ s (hasDerivAt_const _ _) hY hZ (hVd 2 _)
      beta_reduce at hTa hTb
      have h := (hTb.mul (Real.hasDerivAt_cos s)).sub (hTa.mul (Real.hasDerivAt_sin s))
      subst hΨ hDΨ
      refine h.congr_deriv ?_
      ring
    have key : ∀ ρ s,
        (partialDeriv 1 (fun z => V z 1) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + partialDeriv 2 (fun z => V z 2) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))) * ρ
          = DΦ ρ s + DΨ ρ s := by
      intro ρ s
      subst hDΦ hDΨ
      linear_combination (-(ρ * (partialDeriv 1 (fun z => V z 1)
            (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + partialDeriv 2 (fun z => V z 2) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))))) *
        Real.sin_sq_add_cos_sq s
    have hΨper : ∀ ρ, Ψ ρ (2 * Real.pi) - Ψ ρ 0 = 0 := by
      intro ρ
      subst hΨ
      simp [Real.cos_two_pi, Real.sin_two_pi]
    have sl1 : ∀ ρ, Continuous (fun s => DΦ ρ s) := fun ρ =>
      cDΦ.comp (continuous_const.prodMk continuous_id)
    have sl2 : ∀ ρ, Continuous (fun s => DΨ ρ s) := fun ρ =>
      cDΨ.comp (continuous_const.prodMk continuous_id)
    have sl3 : ∀ s, Continuous (fun ρ => DΦ ρ s) := fun s =>
      cDΦ.comp (continuous_id.prodMk continuous_const)
    calc ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi),
          (partialDeriv 1 (fun z => V z 1) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))
            + partialDeriv 2 (fun z => V z 2) (cylPt c (ρ * Real.cos s) (ρ * Real.sin s))) * ρ
        = ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), (DΦ ρ s + DΨ ρ s) := by
          congr 1; funext ρ; congr 1; funext s; exact key ρ s
      _ = ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), DΦ ρ s := by
          congr 1; funext ρ
          rw [intervalIntegral.integral_add ((sl1 ρ).intervalIntegrable _ _)
            ((sl2 ρ).intervalIntegrable _ _),
            intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hΨd ρ s)
              ((sl2 ρ).intervalIntegrable _ _), hΨper ρ, add_zero]
      _ = ∫ s in (0 : ℝ)..(2 * Real.pi), ∫ ρ in (0 : ℝ)..ℓ, DΦ ρ s := t_swap DΦ cDΦ _ _ _ _
      _ = _ := by
          congr 1; funext s
          rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun ρ _ => hΦd ρ s)
              ((sl3 s).intervalIntegrable _ _)]
          subst hΦ
          ring
  
  obtain ⟨A, hA⟩ : ∃ A : ℝ → ℝ → ℝ → ℝ, A = fun t ρ s =>
      partialDeriv 0 (fun z => V z 0) (cylPt t (ρ * Real.cos s) (ρ * Real.sin s)) * ρ :=
    ⟨_, rfl⟩
  obtain ⟨B, hB⟩ : ∃ B : ℝ → ℝ → ℝ → ℝ, B = fun t ρ s =>
      (partialDeriv 1 (fun z => V z 1) (cylPt t (ρ * Real.cos s) (ρ * Real.sin s))
        + partialDeriv 2 (fun z => V z 2) (cylPt t (ρ * Real.cos s) (ρ * Real.sin s))) * ρ :=
    ⟨_, rfl⟩
  have cA : Continuous (fun q : (ℝ × ℝ) × ℝ => A q.1.1 q.1.2 q.2) := by
    subst hA; exact cF _ (hVP 0 0)
  have cB : Continuous (fun q : (ℝ × ℝ) × ℝ => B q.1.1 q.1.2 q.2) := by
    subst hB; exact cF _ ((hVP 1 1).add (hVP 2 2))
  have hsplit : ∀ t ρ s : ℝ,
      (∑ a : Fin 3, partialDeriv a (fun z => V z a) (cylPt t (ρ * Real.cos s) (ρ * Real.sin s)))
        * ρ = A t ρ s + B t ρ s := by
    intro t ρ s
    subst hA hB
    simp only [Fin.sum_univ_three]
    ring
  
  have hcap : ∫ t in (-ℓ)..ℓ, ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), A t ρ s
      = capFlux V ℓ := by
    have cG : Continuous (Function.uncurry fun t ρ => ∫ s in (0 : ℝ)..(2 * Real.pi), A t ρ s) :=
      intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
        (f := fun (p : ℝ × ℝ) (s : ℝ) => A p.1 p.2 s) cA _ _
    rw [t_swap _ cG]
    unfold capFlux
    refine intervalIntegral.integral_congr (fun ρ _ => ?_)
    have cAρ : Continuous (Function.uncurry fun t s => A t ρ s) :=
      cA.comp (((continuous_fst.prodMk continuous_const).prodMk continuous_snd) :
        Continuous fun p : ℝ × ℝ => (((p.1, ρ), p.2) : (ℝ × ℝ) × ℝ))
    show ∫ t in (-ℓ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), A t ρ s = _
    rw [t_swap _ cAρ]
    refine intervalIntegral.integral_congr (fun s _ => ?_)
    have hcont : Continuous (fun t => A t ρ s) :=
      cA.comp (((continuous_id.prodMk continuous_const).prodMk continuous_const) :
        Continuous fun t : ℝ => (((t, ρ), s) : (ℝ × ℝ) × ℝ))
    have hd : ∀ t, HasDerivAt (fun u => V (cylPt u (ρ * Real.cos s) (ρ * Real.sin s)) 0 * ρ)
        (A t ρ s) t := by
      intro t
      have h1 := t_chain (fun z => V z 0) (fun u => u) (fun _ => ρ * Real.cos s)
        (fun _ => ρ * Real.sin s) 1 0 0 t (hasDerivAt_id' t) (hasDerivAt_const _ _)
        (hasDerivAt_const _ _) (hVd 0 _)
      beta_reduce at h1
      subst hA
      exact (h1.mul_const ρ).congr_deriv (by ring)
    show ∫ t in (-ℓ)..ℓ, A t ρ s = _
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      (hcont.intervalIntegrable _ _)]
    ring
  
  have hside : ∫ t in (-ℓ)..ℓ, ∫ ρ in (0 : ℝ)..ℓ, ∫ s in (0 : ℝ)..(2 * Real.pi), B t ρ s
      = sideFlux V ℓ := by
    unfold sideFlux
    refine intervalIntegral.integral_congr (fun c _ => ?_)
    subst hB
    exact t_cap c
  
  have hDc : Continuous (fun x => ∑ a : Fin 3, partialDeriv a (fun z => V z a) x) :=
    continuous_finset_sum _ (fun a _ => hVP a a)
  unfold cylFlux
  rw [s5 _ hDc]
  simp only [hsplit]
  rw [lin3 A B cA cB, hcap, hside]

theorem stern_psi_side_flux [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Φ : EndChart M) (β u : M → ℝ)
    (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (X Y : E3 → E3) (q R₀ R₁ C : ℝ) (hXY : CoordChange X Y q R₀ R₁ C)
    (hchart : ∀ x : E3, R₁ < ‖x‖ →
      g.coeff (sternPsi Φ Y) x = pullbackMetric (g.coeff Φ.Φ) Y x ∧
      g.gradInner u u (sternPsi Φ Y x) = (pullbackMetric (g.coeff Φ.Φ) Y x)⁻¹ 0 0)
    (P : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (hPs : P.source = {x : E3 | R₁ < ‖x‖})
    (hP : ∀ x ∈ P.source, P x = sternPsi Φ Y x)
    (L s ε : ℝ) (hL : R₁ + 2 < L) (hs : 0 < s) (hε : 0 < ε)
    (hsβ : ∀ x ∈ sternKset R₁ L, s ≤ β (P x)) :
    ContDiffOn ℝ ∞ (sternWt g β u P R₁ s ε) P.source ∧
      ∫ x in sternKset R₁ L, sepDensDiv (g.coeff P) (sternWt g β u P R₁ s ε) x =
        cylFlux (sternVecEps (pullbackMetric (g.coeff Φ.Φ) Y) ε) L :=
by
  have hR0 : (0 : ℝ) ≤ R₁ := by
    have h1 := hXY.1
    have h2 := hXY.2.1
    linarith
  have hL0 : 0 < L := by linarith
  have hnsq : ∀ x : E3, ‖x‖ ^ 2 = x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 := by
    intro x
    rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => by positivity)),
      Fin.sum_univ_three]
    simp [Real.norm_eq_abs, sq_abs]
  have hcyl : ∀ t a b : ℝ, (cylPt t a b) 0 = t ∧ (cylPt t a b) 1 = a ∧ (cylPt t a b) 2 = b := by
    intro t a b
    simp [cylPt, EuclideanSpace.single_apply]
  
  have hnorm : ContDiffOn ℝ ∞ (fun x : E3 => ‖x‖) P.source := by
    intro x hx
    have hx' : R₁ < ‖x‖ := by rw [hPs] at hx; exact hx
    have hx0 : x ≠ 0 := by
      intro h
      rw [h, norm_zero] at hx'
      linarith
    exact (contDiffAt_norm ℝ hx0).contDiffWithinAt
  have hθ : ContDiffOn ℝ ∞ (sternTheta R₁) P.source := by
    have h := (Real.smoothTransition.contDiff (n := ⊤)).comp_contDiffOn
      (hnorm.sub (contDiffOn_const (c := R₁ + 1)))
    exact h
  have hβP : ContDiffOn ℝ ∞ (fun x => β (P x)) P.source :=
    contMDiffOn_iff_contDiffOn.mp (hβ.comp_contMDiffOn P.contMDiffOn)
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => g.coeff P x i j) P.source :=
    fun i j => coeff_contDiffOn_source g P i j
  have hGpd : ∀ y ∈ P.source, (g.coeff P y).PosDef := fun y hy => coeff_posDef g P y hy
  have hGinv := ginv_contDiffOn (g.coeff P) P.source hG hGpd
  have hφP : ContDiffOn ℝ ∞ (fun x => sternPhiM g u ε (P x)) P.source :=
    contMDiffOn_iff_contDiffOn.mp
      ((sternPhiM_contMDiff g u hu ε hε).comp_contMDiffOn P.contMDiffOn)
  have hpd : ∀ k : Fin 3, ContDiffOn ℝ ∞
      (fun x => partialDeriv k (fun z => sternPhiM g u ε (P z)) x) P.source := by
    intro k
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ (fun z => sternPhiM g u ε (P z))) P.source :=
      hφP.fderiv_of_isOpen P.open_source (by simp)
    exact h1.clm_apply contDiffOn_const
  have hη : ContDiffOn ℝ ∞ (fun x => Real.smoothTransition (β (P x) / s)) P.source :=
    (Real.smoothTransition.contDiff (n := ⊤)).comp_contDiffOn (hβP.div_const s)
  have hcomp : ContDiffOn ℝ ∞ (fun x => (fun i : Fin 3 =>
      Real.smoothTransition (β (P x) / s) * ∑ k : Fin 3, (g.coeff P x)⁻¹ i k *
        partialDeriv k (fun z => sternPhiM g u ε (P z)) x)) P.source := by
    apply contDiffOn_pi.mpr
    intro i
    exact hη.mul (ContDiffOn.sum (fun k _ => (hGinv i k).mul (hpd k)))
  have hWt : ContDiffOn ℝ ∞ (sternWt g β u P R₁ s ε) P.source := by
    have h2 := (EuclideanSpace.equiv (Fin 3) ℝ).symm.contDiff.comp_contDiffOn hcomp
    exact hθ.smul h2
  have hsd : ContDiffOn ℝ ∞ (fun x => Real.sqrt (g.coeff P x).det) P.source :=
    ccs_sqrtdet_smooth (g.coeff P) P.source hG (fun z hz => (hGpd z hz).det_pos)
  
  obtain ⟨V, hV⟩ : ∃ V : E3 → Fin 3 → ℝ, ∀ x a, V x a =
      if R₁ < ‖x‖ then Real.sqrt (g.coeff P x).det * (sternWt g β u P R₁ s ε x) a else 0 :=
    ⟨fun x a => if R₁ < ‖x‖ then Real.sqrt (g.coeff P x).det * (sternWt g β u P R₁ s ε x) a
      else 0, fun _ _ => rfl⟩
  have hθ0 : ∀ x : E3, ‖x‖ < R₁ + 1 → sternTheta R₁ x = 0 := by
    intro x hx
    unfold sternTheta
    exact Real.smoothTransition.zero_of_nonpos (by linarith)
  have hWt0 : ∀ x : E3, ‖x‖ < R₁ + 1 → sternWt g β u P R₁ s ε x = 0 := by
    intro x hx
    unfold sternWt
    rw [hθ0 x hx, zero_smul]
  have hV0 : ∀ x : E3, ‖x‖ < R₁ + 1 → V x = 0 := by
    intro x hx
    funext a
    rw [hV x a]
    split_ifs
    · rw [hWt0 x hx]
      simp
    · rfl
  have hfa : ∀ a : Fin 3, ContDiffOn ℝ ∞
      (fun x => Real.sqrt (g.coeff P x).det * (sternWt g β u P R₁ s ε x) a) P.source := by
    intro a
    refine hsd.mul ?_
    exact (ContinuousLinearMap.contDiff (EuclideanSpace.proj a : E3 →L[ℝ] ℝ)).comp_contDiffOn hWt
  have hVC1 : ∀ a : Fin 3, ContDiff ℝ 1 (fun x => V x a) := by
    intro a
    rw [contDiff_iff_contDiffAt]
    intro x
    by_cases hx : R₁ < ‖x‖
    · have hxU : x ∈ P.source := by rw [hPs]; exact hx
      have h1 : ContDiffAt ℝ ∞
          (fun x => Real.sqrt (g.coeff P x).det * (sternWt g β u P R₁ s ε x) a) x :=
        (hfa a).contDiffAt (P.open_source.mem_nhds hxU)
      have h1' : ContDiffAt ℝ 1
          (fun x => Real.sqrt (g.coeff P x).det * (sternWt g β u P R₁ s ε x) a) x :=
        h1.of_le (by exact_mod_cast le_top)
      refine h1'.congr_of_eventuallyEq ?_
      filter_upwards [P.open_source.mem_nhds hxU] with y hy
      have hy' : R₁ < ‖y‖ := by rw [hPs] at hy; exact hy
      rw [hV y a, if_pos hy']
    · have hx1 : ‖x‖ < R₁ + 1 := by push_neg at hx; linarith
      have h2 : {y : E3 | ‖y‖ < R₁ + 1} ∈ 𝓝 x :=
        (isOpen_lt continuous_norm continuous_const).mem_nhds hx1
      refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [h2] with y hy
      rw [hV0 y hy]
      rfl
  
  have hKU : ∀ x ∈ sternKset R₁ L, x ∈ P.source := by
    intro x hx
    rw [hPs]
    show R₁ < ‖x‖
    have := hx.2.2
    linarith
  have hdiv : Set.EqOn (fun x => sepDensDiv (g.coeff P) (sternWt g β u P R₁ s ε) x)
      (fun x => ∑ a : Fin 3, partialDeriv a (fun z => V z a) x) (sternKset R₁ L) := by
    intro x hx
    simp only [sepDensDiv]
    refine Finset.sum_congr rfl (fun a _ => ?_)
    unfold partialDeriv
    congr 1
    refine Filter.EventuallyEq.fderiv_eq ?_
    filter_upwards [P.open_source.mem_nhds (hKU x hx)] with y hy
    have hy' : R₁ < ‖y‖ := by rw [hPs] at hy; exact hy
    rw [hV y a, if_pos hy']
  
  have hCylm : MeasurableSet {x : E3 | |x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2} := by
    have hcl : IsClosed {x : E3 | |x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2} := by
      show IsClosed ({x : E3 | |x 0| ≤ L} ∩ {x : E3 | (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2})
      exact (isClosed_le (by fun_prop) continuous_const).inter
        (isClosed_le (by fun_prop) continuous_const)
    exact hcl.measurableSet
  have hKm : MeasurableSet (sternKset R₁ L) := by
    have hcl : IsClosed (sternKset R₁ L) := by
      show IsClosed ({x : E3 | |x 0| ≤ L} ∩ ({x : E3 | x 1 ^ 2 + x 2 ^ 2 ≤ L ^ 2} ∩
        {x : E3 | R₁ + 1 ≤ ‖x‖}))
      refine IsClosed.inter (isClosed_le (by fun_prop) continuous_const) ?_
      refine IsClosed.inter (isClosed_le (by fun_prop) continuous_const) ?_
      exact isClosed_le continuous_const continuous_norm
    exact hcl.measurableSet
  
  have hrestr : ∫ x in {x : E3 | |x 0| ≤ L ∧ (x 1) ^ 2 + (x 2) ^ 2 ≤ L ^ 2},
      ∑ a : Fin 3, partialDeriv a (fun z => V z a) x =
      ∫ x in sternKset R₁ L, ∑ a : Fin 3, partialDeriv a (fun z => V z a) x := by
    refine MeasureTheory.setIntegral_eq_of_subset_of_forall_diff_eq_zero hCylm
      (fun x hx => ⟨hx.1, hx.2.1⟩) ?_
    rintro x ⟨hxC, hxK⟩
    have hx : ‖x‖ < R₁ + 1 := by
      by_contra h
      push_neg at h
      exact hxK ⟨hxC.1, hxC.2, h⟩
    refine Finset.sum_eq_zero (fun a _ => ?_)
    have hev : (fun z => V z a) =ᶠ[𝓝 x] (fun _ => (0 : ℝ)) := by
      filter_upwards [(isOpen_lt continuous_norm continuous_const).mem_nhds hx] with y hy
      rw [hV0 y hy]
      rfl
    unfold partialDeriv
    rw [Filter.EventuallyEq.fderiv_eq (𝕜 := ℝ) hev]
    simp
  have hcylthm := cyl_divergence_theorem V hVC1 L hL0
  
  have hbd : ∀ x : E3, |x 0| ≤ L → x 1 ^ 2 + x 2 ^ 2 ≤ L ^ 2 → L ≤ ‖x‖ →
      V x = sternVecEps (pullbackMetric (g.coeff Φ.Φ) Y) ε x := by
    intro x h0 h12 hLx
    have hxR : R₁ < ‖x‖ := by linarith
    have hxU : x ∈ P.source := by rw [hPs]; exact hxR
    have hxK : x ∈ sternKset R₁ L := ⟨h0, h12, by linarith⟩
    have hθ1 : sternTheta R₁ x = 1 := by
      unfold sternTheta
      exact Real.smoothTransition.one_of_one_le (by linarith)
    have hη1 : Real.smoothTransition (β (P x) / s) = 1 :=
      Real.smoothTransition.one_of_one_le ((one_le_div hs).mpr (hsβ x hxK))
    have hev : (P : E3 → M) =ᶠ[𝓝 x] sternPsi Φ Y :=
      Filter.eventuallyEq_of_mem (P.open_source.mem_nhds hxU) hP
    have hcoeff : g.coeff P x = pullbackMetric (g.coeff Φ.Φ) Y x := by
      rw [← (hchart x hxR).1]
      unfold RiemannianMetric3.coeff coeffMatrix
      rw [Filter.EventuallyEq.mfderiv_eq (I := 𝓘(ℝ, E3)) (I' := 𝓘(ℝ, E3)) hev, hP x hxU]
    have hpd' : ∀ k : Fin 3, partialDeriv k (fun z => sternPhiM g u ε (P z)) x =
        partialDeriv k (fun z => Real.sqrt ((pullbackMetric (g.coeff Φ.Φ) Y z)⁻¹ 0 0 + ε)) x := by
      intro k
      unfold partialDeriv
      congr 1
      refine Filter.EventuallyEq.fderiv_eq ?_
      filter_upwards [P.open_source.mem_nhds hxU] with y hy
      have hyR : R₁ < ‖y‖ := by rw [hPs] at hy; exact hy
      unfold sternPhiM
      rw [hP y hy, (hchart y hyR).2]
    funext k
    rw [hV x k, if_pos hxR]
    unfold sternWt sternVecEps
    rw [hcoeff, hθ1, hη1]
    simp only [hpd', one_smul, one_mul]
    try rfl
  have hpt : ∀ t a b : ℝ, |t| ≤ L → a ^ 2 + b ^ 2 ≤ L ^ 2 → L ^ 2 ≤ t ^ 2 + a ^ 2 + b ^ 2 →
      V (cylPt t a b) = sternVecEps (pullbackMetric (g.coeff Φ.Φ) Y) ε (cylPt t a b) := by
    intro t a b ht hab hL2
    obtain ⟨h0, h1, h2⟩ := hcyl t a b
    refine hbd _ (by rw [h0]; exact ht) (by rw [h1, h2]; exact hab) ?_
    have hn := hnsq (cylPt t a b)
    rw [h0, h1, h2] at hn
    by_contra hc
    push_neg at hc
    nlinarith [norm_nonneg (cylPt t a b)]
  
  have hcong : cylFlux V L = cylFlux (sternVecEps (pullbackMetric (g.coeff Φ.Φ) Y) ε) L := by
    unfold cylFlux capFlux sideFlux
    congr 1
    · refine intervalIntegral.integral_congr (fun ρ hρ => ?_)
      rw [Set.uIcc_of_le hL0.le] at hρ
      refine intervalIntegral.integral_congr (fun w _ => ?_)
      have hcs : (ρ * Real.cos w) ^ 2 + (ρ * Real.sin w) ^ 2 = ρ ^ 2 := by
        have := Real.cos_sq_add_sin_sq w
        calc _ = ρ ^ 2 * (Real.cos w ^ 2 + Real.sin w ^ 2) := by ring
          _ = ρ ^ 2 := by rw [this, mul_one]
      have hρL : ρ ^ 2 ≤ L ^ 2 := by nlinarith [hρ.1, hρ.2]
      have e1 := hpt L (ρ * Real.cos w) (ρ * Real.sin w) (by rw [abs_of_pos hL0])
        (by linarith) (by nlinarith [sq_nonneg ρ])
      have e2 := hpt (-L) (ρ * Real.cos w) (ρ * Real.sin w) (by rw [abs_neg, abs_of_pos hL0])
        (by linarith) (by nlinarith [sq_nonneg ρ])
      simp only [e1, e2]
    · refine intervalIntegral.integral_congr (fun t ht => ?_)
      rw [Set.uIcc_of_le (by linarith)] at ht
      refine intervalIntegral.integral_congr (fun w _ => ?_)
      have hcs : (L * Real.cos w) ^ 2 + (L * Real.sin w) ^ 2 = L ^ 2 := by
        have := Real.cos_sq_add_sin_sq w
        calc _ = L ^ 2 * (Real.cos w ^ 2 + Real.sin w ^ 2) := by ring
          _ = L ^ 2 := by rw [this, mul_one]
      have e1 := hpt t (L * Real.cos w) (L * Real.sin w) (abs_le.mpr ⟨ht.1, ht.2⟩)
        (by linarith) (by nlinarith [sq_nonneg t])
      simp only [e1]
  refine ⟨hWt, ?_⟩
  calc ∫ x in sternKset R₁ L, sepDensDiv (g.coeff P) (sternWt g β u P R₁ s ε) x
      = ∫ x in sternKset R₁ L, ∑ a : Fin 3, partialDeriv a (fun z => V z a) x :=
        MeasureTheory.setIntegral_congr_fun hKm hdiv
    _ = cylFlux V L := by rw [hcylthm, hrestr]
    _ = cylFlux (sternVecEps (pullbackMetric (g.coeff Φ.Φ) Y) ε) L := hcong

theorem stern_cutoff_divergence [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (k : Fin hAF.numEnds)
    (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain (hAF.ends k) β Re)
    (hmin : ∀ p : M, β p = 0 → g.levelMeanCurv β p = 0)
    (u : M → ℝ) (hu : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ u)
    (hharm : ∀ p : M, 0 ≤ β p → g.lapM u p = 0)
    (hneu : ∀ p : M, β p = 0 → g.gradInner u β p = 0)
    (X Y : E3 → E3) (R₀ R₁ C : ℝ) (hXY : CoordChange X Y (min hAF.q (3 / 4)) R₀ R₁ C)
    (hRe : Re ≤ R₀)
    (hX : ∀ y : E3, R₀ < ‖y‖ → X y = cylPt (u ((hAF.ends k).Φ y)) (y 1) (y 2))
    (hdom : (∀ x : E3, R₁ < ‖x‖ →
        u (sternPsi (hAF.ends k) Y x) = x 0 ∧ 0 < β (sternPsi (hAF.ends k) Y x)) ∧
      ∀ L : ℝ, R₁ < L → IsCompact (sternDomain (hAF.ends k) β Y L) ∧
        IsOpen (sternOuter (hAF.ends k) Y L) ∧ IsClosed (sternOuterClosed (hAF.ends k) Y L) ∧
        ∀ t : ℝ, |t| < L → IsCompact (sternSide (hAF.ends k) Y L ∩ u ⁻¹' {t}))
    (hconn : ∀ L : ℝ, R₁ < L → ∀ t : ℝ, |t| < L →
      (∀ p ∈ sternDomain (hAF.ends k) β Y L ∩ u ⁻¹' {t},
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) u p ≠ 0) →
      IsConnected (sternDomain (hAF.ends k) β Y L ∩ u ⁻¹' {t}))
    (hchart : ∀ x : E3, R₁ < ‖x‖ →
      g.coeff (sternPsi (hAF.ends k) Y) x = pullbackMetric (g.coeff (hAF.ends k).Φ) Y x ∧
      g.gradInner u u (sternPsi (hAF.ends k) Y x) =
        (pullbackMetric (g.coeff (hAF.ends k).Φ) Y x)⁻¹ 0 0 ∧
      lapLoc (pullbackMetric (g.coeff (hAF.ends k).Φ) Y) (fun z : E3 => z 0) x = 0) :
    ∃ L₁ : ℝ, ∀ L : ℝ, L₁ ≤ L → ∃ (n : ℕ) (q : Fin n → M) (φ : Fin n → M → ℝ),
      sternAdmissible (sternDomain (hAF.ends k) β Y L) q φ ∧
      ∃ s₀ : ℝ, 0 < s₀ ∧ ∀ s : ℝ, 0 < s → s < s₀ → ∀ ε : ℝ, 0 < ε →
        cylFlux (sternVecEps (pullbackMetric (g.coeff (hAF.ends k).Φ) Y) ε) L =
          sternBulk g β u q φ (sternDomain (hAF.ends k) β Y L) ε s +
            sternCollar g β u q φ (sternDomain (hAF.ends k) β Y L) ε s :=
by
  obtain ⟨hΨ, hdomL⟩ := hdom
  have hR02 : (2 : ℝ) ≤ R₀ := hXY.1
  have hR01 : R₀ ≤ R₁ := hXY.2.1
  have hq0 : 0 < min hAF.q (3 / 4) := lt_min (lt_trans (by norm_num) hAF.q_gt) (by norm_num)
  have hq1 : min hAF.q (3 / 4) < 1 := lt_of_le_of_lt (min_le_right _ _) (by norm_num)
  have hnsq : ∀ x : E3, ‖x‖ ^ 2 = x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 := by
    intro x
    rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => by positivity)),
      Fin.sum_univ_three]
    simp [Real.norm_eq_abs, sq_abs]
  obtain ⟨P, hPs, hPeq⟩ := sternPsi_partialDiffeomorph (hAF.ends k) X Y _ R₀ R₁ C hXY
  obtain ⟨χ, hχs, -, hχv, hχ0, hχ1⟩ :=
    stern_far_cutoff g hAF k X Y _ R₀ R₁ C hq0 hq1 hXY P hPs hPeq
  have hβs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β := hβ.1
  have hβc : Continuous β := hβs.continuous
  have hmeas : ∀ S : Set M, IsClosed S → sepChartMeas S := by
    intro S hS p
    rw [(chartAt E3 p).image_eq_target_inter_inv_preimage Set.inter_subset_right]
    have hO1 : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ) :=
      (chartAt E3 p).continuousOn_symm.isOpen_inter_preimage (chartAt E3 p).open_target
        hS.isOpen_compl
    have heq : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' (S ∩ (chartAt E3 p).source) =
        (chartAt E3 p).target \ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_diff, Set.mem_compl_iff]
      constructor
      · rintro ⟨hy, hyS, -⟩
        exact ⟨hy, fun h => h.2 hyS⟩
      · rintro ⟨hy, hn⟩
        refine ⟨hy, ?_, (chartAt E3 p).map_target hy⟩
        by_contra hc
        exact hn ⟨hy, hc⟩
    rw [heq]
    exact (chartAt E3 p).open_target.measurableSet.diff hO1.measurableSet
  refine ⟨R₁ + 3, fun L hL => ?_⟩
  have hLR : R₁ + 2 < L := by linarith
  have hLR1 : R₁ < L := by linarith
  have hL0 : 0 < L := by linarith
  obtain ⟨hDc, hOo, -, -⟩ := hdomL L hLR1
  obtain ⟨Dt, hDtdef⟩ : ∃ Dt : Set M, Dt = (sternOuter (hAF.ends k) Y L)ᶜ := ⟨_, rfl⟩
  have hDcl : IsClosed (sternDomain (hAF.ends k) β Y L) := hDc.isClosed
  have hDtcl : IsClosed Dt := by rw [hDtdef]; exact hOo.isClosed_compl
  have hDDt : sternDomain (hAF.ends k) β Y L ⊆ Dt := fun p hp => by rw [hDtdef]; exact hp.2
  
  have hφ0 : calPartition (Fin.elim0 : Fin 0 → M) (Fin.elim0 : Fin 0 → M → ℝ)
      (Set.univ : Set M) :=
    ⟨fun j => Fin.elim0 j, fun j => Fin.elim0 j, fun x => by simp, fun j => Fin.elim0 j⟩
  obtain ⟨n, q, φ, O', hφ, hO'o, hDO', hO'1, -⟩ := calPartition_extend g Set.univ isOpen_univ
    (Fin.elim0 : Fin 0 → M) (Fin.elim0 : Fin 0 → M → ℝ) hφ0 ∅ isOpen_empty
    (fun x hx => absurd hx (Set.notMem_empty x)) (sternDomain (hAF.ends k) β Y L) hDc
    (Set.subset_univ _)
  have hDO : sternDomain (hAF.ends k) β Y L ⊆ O' := fun p hp => hDO' (Or.inl hp)
  
  have hKs : sternKset R₁ L ⊆ P.source := by
    intro x hx
    rw [hPs]
    show R₁ < ‖x‖
    have := hx.2.2
    linarith
  have hKcl : IsClosed (sternKset R₁ L) := by
    show IsClosed ({x : E3 | |x 0| ≤ L} ∩ ({x : E3 | x 1 ^ 2 + x 2 ^ 2 ≤ L ^ 2} ∩
      {x : E3 | R₁ + 1 ≤ ‖x‖}))
    refine IsClosed.inter (isClosed_le (by fun_prop) continuous_const) ?_
    refine IsClosed.inter (isClosed_le (by fun_prop) continuous_const) ?_
    exact isClosed_le continuous_const continuous_norm
  have hKb : Bornology.IsBounded (sternKset R₁ L) := by
    refine (Metric.isBounded_closedBall (x := (0 : E3)) (r := 2 * L)).subset ?_
    intro x hx
    rw [Metric.mem_closedBall, dist_zero_right]
    obtain ⟨h0, h12, -⟩ := hx
    have h0' : x 0 ^ 2 ≤ L ^ 2 := by nlinarith [sq_abs (x 0), abs_nonneg (x 0)]
    have hsq : ‖x‖ ^ 2 ≤ 2 * L ^ 2 := by rw [hnsq x]; linarith
    nlinarith [norm_nonneg x]
  have hKc : IsCompact (sternKset R₁ L) := Metric.isCompact_of_isClosed_isBounded hKcl hKb
  have hβK : ∀ x ∈ sternKset R₁ L, 0 < β (P x) := by
    intro x hx
    rw [hPeq x (hKs hx)]
    exact (hΨ x (by have := hx.2.2; linarith)).2
  obtain ⟨s₀, hs₀, hs₀K⟩ : ∃ s₀ : ℝ, 0 < s₀ ∧ ∀ x ∈ sternKset R₁ L, s₀ ≤ β (P x) := by
    rcases (sternKset R₁ L).eq_empty_or_nonempty with he | hne
    · refine ⟨1, one_pos, fun x hx => ?_⟩
      rw [he] at hx
      exact absurd hx (Set.notMem_empty x)
    · obtain ⟨x₀, hx₀, hmin⟩ := hKc.exists_isMinOn hne
        (hβc.comp_continuousOn (P.contMDiffOn.continuousOn.mono hKs))
      exact ⟨β (P x₀), hβK x₀ hx₀, fun x hx => isMinOn_iff.mp hmin x hx⟩
  refine ⟨n, q, φ, ⟨Set.univ, O', hφ, hO'o, hDO, hO'1⟩, s₀, hs₀, ?_⟩
  intro s hs hss ε hε
  have ha : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun p => Real.smoothTransition (β p / s)) :=
    (Real.smoothTransition.contDiff.comp (contDiff_id.div_const s)).comp_contMDiff hβs
  have hf := sternPhiM_contMDiff g u hu ε hε
  obtain ⟨Z, hZs, hZ0, hZrep, hZP⟩ :=
    weighted_gradient_field g (fun p => Real.smoothTransition (β p / s)) (sternPhiM g u ε) ha hf
  
  have e1 := bulk_collar_eq_calDivSum g β u hβs hu s ε hs hε Set.univ q φ hφ O' hO'o hO'1
    (sternDomain (hAF.ends k) β Y L) (hmeas _ hDcl) hDO Z hZs hZrep
  
  have hvan2 : ∀ x ∈ Dt \ sternDomain (hAF.ends k) β Y L, ∀ᶠ z in 𝓝 x, Z z = 0 := by
    rintro x ⟨hxDt, hxD⟩
    have hxDt' : x ∉ sternOuter (hAF.ends k) Y L := by rw [hDtdef] at hxDt; exact hxDt
    have hβx : β x < 0 := by
      by_contra hc
      push_neg at hc
      exact hxD ⟨hc, hxDt'⟩
    filter_upwards [(isOpen_lt hβc continuous_const).mem_nhds hβx] with z hz
    apply hZ0
    exact Real.smoothTransition.zero_of_nonpos
      (div_nonpos_of_nonpos_of_nonneg (le_of_lt hz) hs.le)
  have e2 := calDivSum_congr_set g Set.univ q φ hφ Z hZs (sternDomain (hAF.ends k) β Y L) Dt
    (hmeas _ hDcl) (hmeas Dt hDtcl) hDDt hvan2
  
  obtain ⟨hχZs, e3⟩ := calDivSum_cutoff g Set.univ q φ hφ Z hZs χ hχs Dt (hmeas Dt hDtcl)
    (fun x hx => hχ1 L hLR x (by rw [hDtdef, frontier_compl] at hx; exact hx))
  
  have hPKD : P '' sternKset R₁ L ⊆ sternDomain (hAF.ends k) β Y L := by
    rintro _ ⟨x, hx, rfl⟩
    refine ⟨le_of_lt (hβK x hx), ?_⟩
    rintro ⟨x', hx', hxe⟩
    have hx'U : R₁ < ‖x'‖ := by
      have hn := norm_nonneg x'
      simp only [Set.mem_setOf_eq, not_and_or, not_le] at hx'
      by_contra hcon
      push_neg at hcon
      have hlt : ‖x'‖ ^ 2 < L ^ 2 := by nlinarith
      rcases hx' with h | h
      · have : L ^ 2 < x' 0 ^ 2 := by
          rw [← sq_abs (x' 0)]
          exact pow_lt_pow_left₀ h hL0.le (by norm_num)
        nlinarith [hnsq x', sq_nonneg (x' 1), sq_nonneg (x' 2)]
      · nlinarith [hnsq x', sq_nonneg (x' 0)]
    have hx'P : x' ∈ P.source := by rw [hPs]; exact hx'U
    have hxx : x' = x := P.toPartialEquiv.injOn hx'P (hKs hx) (by rw [hPeq x' hx'P]; exact hxe)
    subst hxx
    exact hx' ⟨hx.1, hx.2.1⟩
  have hvan4 : ∀ x ∈ Dt, x ∉ P '' sternKset R₁ L → ∀ᶠ z in 𝓝 x, (fun z => χ z • Z z) z = 0 := by
    intro x hxDt hxK
    by_cases hA : x ∈ P '' {x : E3 | R₁ + 1 ≤ ‖x‖}
    · exfalso
      obtain ⟨x', hx', rfl⟩ := hA
      rw [hDtdef] at hxDt
      have hx'1 : R₁ + 1 ≤ ‖x'‖ := hx'
      have hcyl : |x' 0| ≤ L ∧ x' 1 ^ 2 + x' 2 ^ 2 ≤ L ^ 2 := by
        by_contra hc
        apply hxDt
        refine ⟨x', hc, ?_⟩
        exact (hPeq x' (by rw [hPs]; show R₁ < ‖x'‖; linarith)).symm
      exact hxK ⟨x', ⟨hcyl.1, hcyl.2, hx'1⟩, rfl⟩
    · filter_upwards [hχ0 x hA] with z hz
      simp [hz]
  have hWt : ∀ x ∈ P.source, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x (sternWt g β u P R₁ s ε x) =
      (fun z => χ z • Z z) (P x) := by
    intro x hx
    have hxU : R₁ < ‖x‖ := by rw [hPs] at hx; exact hx
    show (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) P x) (sternTheta R₁ x • _) = χ (P x) • Z (P x)
    rw [ContinuousLinearMap.map_smul, hZP P x hx _ (fun i => rfl), hχv x hxU]
    rfl
  obtain ⟨hWts, hflux⟩ := stern_psi_side_flux g (hAF.ends k) β u hβs hu X Y _ R₀ R₁ C hXY
    (fun x hx => ⟨(hchart x hx).1, (hchart x hx).2.1⟩) P hPs hPeq L s ε hLR hs hε
    (fun x hx => le_trans hss.le (hs₀K x hx))
  have e4 := calDivSum_chart_transfer g Set.univ q φ hφ O' hO'o hO'1 (fun z => χ z • Z z) hχZs
    Dt (hmeas Dt hDtcl) P (sternKset R₁ L) hKc hKs (fun p hp => hDDt (hPKD hp))
    (fun p hp => hDO (hPKD hp)) hvan4 (sternWt g β u P R₁ s ε) hWts hWt
  rw [e1, e2, e3, e4]
  exact hflux.symm

theorem cylFlux_sub_of_continuousOn (V W : E3 → Fin 3 → ℝ) (R L : ℝ) (hR : 0 ≤ R) (hRL : R < L)
    (hV : ∀ k : Fin 3, ContinuousOn (fun x => V x k) {x : E3 | R < ‖x‖})
    (hW : ∀ k : Fin 3, ContinuousOn (fun x => W x k) {x : E3 | R < ‖x‖}) :
    cylFlux (fun x => V x - W x) L = cylFlux V L - cylFlux W L :=
by
  have hnorm : ∀ t a b : ℝ, ‖cylPt t a b‖ ^ 2 = t ^ 2 + a ^ 2 + b ^ 2 := by
    intro t a b
    rw [EuclideanSpace.norm_sq_eq, Fin.sum_univ_three]
    simp [cylPt, EuclideanSpace.single_apply, Real.norm_eq_abs, sq_abs]
  have hmem : ∀ t a b : ℝ, L ^ 2 ≤ t ^ 2 + a ^ 2 + b ^ 2 →
      cylPt t a b ∈ {x : E3 | R < ‖x‖} := by
    intro t a b h
    show R < ‖cylPt t a b‖
    by_contra hc
    push_neg at hc
    have h1 := hnorm t a b
    have h2 : ‖cylPt t a b‖ ^ 2 ≤ R ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hc 2
    nlinarith
  have hcont : Continuous (fun p : ℝ × ℝ × ℝ => cylPt p.1 p.2.1 p.2.2) := by
    unfold cylPt
    fun_prop
  have hc : ∀ (U : E3 → Fin 3 → ℝ), (∀ k : Fin 3, ContinuousOn (fun x => U x k) {x : E3 | R < ‖x‖}) →
      ∀ (k : Fin 3) (φ : ℝ × ℝ → ℝ × ℝ × ℝ), Continuous φ →
      (∀ p, L ^ 2 ≤ (φ p).1 ^ 2 + (φ p).2.1 ^ 2 + (φ p).2.2 ^ 2) →
      Continuous (fun p => U (cylPt (φ p).1 (φ p).2.1 (φ p).2.2) k) := by
    intro U hU k φ hφ hφL
    exact (hU k).comp_continuous (hcont.comp hφ) (fun p => hmem _ _ _ (hφL p))
  have iter : ∀ (f g : ℝ → ℝ → ℝ) (a b c d : ℝ), Continuous (Function.uncurry f) →
      Continuous (Function.uncurry g) →
      (∫ x in a..b, ∫ y in c..d, (f x y - g x y)) =
        (∫ x in a..b, ∫ y in c..d, f x y) - ∫ x in a..b, ∫ y in c..d, g x y := by
    intro f g a b c d hf hg
    have h1 : (fun x => ∫ y in c..d, (f x y - g x y)) =
        fun x => (∫ y in c..d, f x y) - ∫ y in c..d, g x y := by
      funext x
      exact intervalIntegral.integral_sub ((hf.uncurry_left x).intervalIntegrable _ _)
        ((hg.uncurry_left x).intervalIntegrable _ _)
    rw [h1]
    exact intervalIntegral.integral_sub
      ((intervalIntegral.continuous_parametric_intervalIntegral_of_continuous' hf c d).intervalIntegrable _ _)
      ((intervalIntegral.continuous_parametric_intervalIntegral_of_continuous' hg c d).intervalIntegrable _ _)
  have capC : ∀ U : E3 → Fin 3 → ℝ,
      (∀ k : Fin 3, ContinuousOn (fun x => U x k) {x : E3 | R < ‖x‖}) →
      Continuous (Function.uncurry (fun ρ s : ℝ =>
        (U (cylPt L (ρ * Real.cos s) (ρ * Real.sin s)) 0
          - U (cylPt (-L) (ρ * Real.cos s) (ρ * Real.sin s)) 0) * ρ)) := by
    intro U hU
    have h1 := hc U hU 0 (fun p => (L, p.1 * Real.cos p.2, p.1 * Real.sin p.2)) (by fun_prop)
      (fun p => by
        show L ^ 2 ≤ L ^ 2 + (p.1 * Real.cos p.2) ^ 2 + (p.1 * Real.sin p.2) ^ 2
        nlinarith [sq_nonneg (p.1 * Real.cos p.2), sq_nonneg (p.1 * Real.sin p.2)])
    have h2 := hc U hU 0 (fun p => (-L, p.1 * Real.cos p.2, p.1 * Real.sin p.2)) (by fun_prop)
      (fun p => by
        show L ^ 2 ≤ (-L) ^ 2 + (p.1 * Real.cos p.2) ^ 2 + (p.1 * Real.sin p.2) ^ 2
        nlinarith [sq_nonneg (p.1 * Real.cos p.2), sq_nonneg (p.1 * Real.sin p.2)])
    exact Continuous.congr ((h1.sub h2).mul continuous_fst) (fun p => rfl)
  have sideC : ∀ U : E3 → Fin 3 → ℝ,
      (∀ k : Fin 3, ContinuousOn (fun x => U x k) {x : E3 | R < ‖x‖}) →
      Continuous (Function.uncurry (fun t s : ℝ =>
        (U (cylPt t (L * Real.cos s) (L * Real.sin s)) 1 * Real.cos s
          + U (cylPt t (L * Real.cos s) (L * Real.sin s)) 2 * Real.sin s) * L)) := by
    intro U hU
    have hφL : ∀ p : ℝ × ℝ,
        L ^ 2 ≤ ((p.1, L * Real.cos p.2, L * Real.sin p.2) : ℝ × ℝ × ℝ).1 ^ 2
          + ((p.1, L * Real.cos p.2, L * Real.sin p.2) : ℝ × ℝ × ℝ).2.1 ^ 2
          + ((p.1, L * Real.cos p.2, L * Real.sin p.2) : ℝ × ℝ × ℝ).2.2 ^ 2 := by
      intro p
      show L ^ 2 ≤ p.1 ^ 2 + (L * Real.cos p.2) ^ 2 + (L * Real.sin p.2) ^ 2
      have e : (L * Real.cos p.2) ^ 2 + (L * Real.sin p.2) ^ 2 = L ^ 2 := by
        rw [mul_pow, mul_pow, ← mul_add, Real.cos_sq_add_sin_sq, mul_one]
      nlinarith [sq_nonneg p.1]
    have h1 := hc U hU 1 (fun p => (p.1, L * Real.cos p.2, L * Real.sin p.2)) (by fun_prop) hφL
    have h2 := hc U hU 2 (fun p => (p.1, L * Real.cos p.2, L * Real.sin p.2)) (by fun_prop) hφL
    exact Continuous.congr
      (((h1.mul (Real.continuous_cos.comp continuous_snd)).add
        (h2.mul (Real.continuous_sin.comp continuous_snd))).mul continuous_const) (fun p => rfl)
  have hcap : capFlux (fun x => V x - W x) L = capFlux V L - capFlux W L := by
    have h := iter _ _ 0 L 0 (2 * Real.pi) (capC V hV) (capC W hW)
    beta_reduce at h
    unfold capFlux
    refine Eq.trans ?_ h
    congr 1; funext ρ; congr 1; funext s
    simp only [Pi.sub_apply]
    ring
  have hside : sideFlux (fun x => V x - W x) L = sideFlux V L - sideFlux W L := by
    have h := iter _ _ (-L) L 0 (2 * Real.pi) (sideC V hV) (sideC W hW)
    beta_reduce at h
    unfold sideFlux
    refine Eq.trans ?_ h
    congr 1; funext t; congr 1; funext s
    simp only [Pi.sub_apply]
    ring
  unfold cylFlux
  rw [hcap, hside]
  ring

theorem cylFlux_abs_le (V : E3 → Fin 3 → ℝ) (L M : ℝ) (hL : 0 ≤ L) (hM : 0 ≤ M)
    (hV : ∀ x : E3, L ≤ ‖x‖ → ∀ k : Fin 3, |V x k| ≤ M) :
    |cylFlux V L| ≤ 12 * Real.pi * L ^ 2 * M :=
by
  have hnorm : ∀ t a b : ℝ, ‖cylPt t a b‖ = Real.sqrt (t ^ 2 + a ^ 2 + b ^ 2) := by
    intro t a b
    rw [EuclideanSpace.norm_eq, Fin.sum_univ_three]
    simp [cylPt, e, EuclideanSpace.single_apply, sq_abs]
  have hge : ∀ t a b : ℝ, L ^ 2 ≤ t ^ 2 + a ^ 2 + b ^ 2 → L ≤ ‖cylPt t a b‖ := by
    intro t a b h
    rw [hnorm]
    exact (Real.le_sqrt hL (by positivity)).mpr h
  have hpi : |2 * Real.pi - 0| = 2 * Real.pi := by
    rw [sub_zero]; exact abs_of_pos (by positivity)
  
  have hcap : |capFlux V L| ≤ 4 * Real.pi * L ^ 2 * M := by
    have hpt : ∀ ρ s : ℝ, |V (cylPt L (ρ * Real.cos s) (ρ * Real.sin s)) 0| ≤ M ∧
        |V (cylPt (-L) (ρ * Real.cos s) (ρ * Real.sin s)) 0| ≤ M := by
      intro ρ s
      constructor
      · apply hV; apply hge
        nlinarith [sq_nonneg (ρ * Real.cos s), sq_nonneg (ρ * Real.sin s)]
      · apply hV; apply hge
        nlinarith [sq_nonneg (ρ * Real.cos s), sq_nonneg (ρ * Real.sin s)]
    unfold capFlux
    rw [← Real.norm_eq_abs]
    refine (intervalIntegral.norm_integral_le_of_norm_le_const (C := 2 * M * L * (2 * Real.pi))
      ?_).trans ?_
    · intro ρ hρ
      rw [Set.uIoc_of_le hL] at hρ
      obtain ⟨hρ0, hρL⟩ := hρ
      refine (intervalIntegral.norm_integral_le_of_norm_le_const (C := 2 * M * L) ?_).trans
        (le_of_eq (by rw [hpi]))
      intro s _
      obtain ⟨h1, h2⟩ := hpt ρ s
      have a1 := abs_le.mp h1
      have a2 := abs_le.mp h2
      rw [Real.norm_eq_abs, abs_mul, abs_of_pos hρ0]
      have h3 : |V (cylPt L (ρ * Real.cos s) (ρ * Real.sin s)) 0
          - V (cylPt (-L) (ρ * Real.cos s) (ρ * Real.sin s)) 0| ≤ 2 * M :=
        abs_le.mpr ⟨by linarith [a1.1, a1.2, a2.1, a2.2], by linarith [a1.1, a1.2, a2.1, a2.2]⟩
      calc _ ≤ 2 * M * ρ := mul_le_mul_of_nonneg_right h3 hρ0.le
        _ ≤ 2 * M * L := mul_le_mul_of_nonneg_left hρL (by linarith)
    · rw [sub_zero, abs_of_nonneg hL]
      ring_nf
      exact le_refl _
  
  have hside : |sideFlux V L| ≤ 8 * Real.pi * L ^ 2 * M := by
    have hpt : ∀ t s : ℝ, ∀ k : Fin 3,
        |V (cylPt t (L * Real.cos s) (L * Real.sin s)) k| ≤ M := by
      intro t s k
      apply hV; apply hge
      have hcs : (L * Real.cos s) ^ 2 + (L * Real.sin s) ^ 2 = L ^ 2 := by
        rw [mul_pow, mul_pow, ← mul_add, Real.cos_sq_add_sin_sq, mul_one]
      nlinarith [sq_nonneg t]
    unfold sideFlux
    rw [← Real.norm_eq_abs]
    refine (intervalIntegral.norm_integral_le_of_norm_le_const (C := 2 * M * L * (2 * Real.pi))
      ?_).trans ?_
    · intro t _
      refine (intervalIntegral.norm_integral_le_of_norm_le_const (C := 2 * M * L) ?_).trans
        (le_of_eq (by rw [hpi]))
      intro s _
      have h1 := hpt t s 1
      have h2 := hpt t s 2
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hL]
      have hc : |V (cylPt t (L * Real.cos s) (L * Real.sin s)) 1 * Real.cos s| ≤ M := by
        rw [abs_mul]
        calc _ ≤ M * 1 := mul_le_mul h1 (Real.abs_cos_le_one s) (abs_nonneg _) hM
          _ = M := mul_one M
      have hs : |V (cylPt t (L * Real.cos s) (L * Real.sin s)) 2 * Real.sin s| ≤ M := by
        rw [abs_mul]
        calc _ ≤ M * 1 := mul_le_mul h2 (Real.abs_sin_le_one s) (abs_nonneg _) hM
          _ = M := mul_one M
      have h3 : |V (cylPt t (L * Real.cos s) (L * Real.sin s)) 1 * Real.cos s
          + V (cylPt t (L * Real.cos s) (L * Real.sin s)) 2 * Real.sin s| ≤ 2 * M := by
        have := abs_add_le (V (cylPt t (L * Real.cos s) (L * Real.sin s)) 1 * Real.cos s)
          (V (cylPt t (L * Real.cos s) (L * Real.sin s)) 2 * Real.sin s)
        linarith
      exact mul_le_mul_of_nonneg_right h3 hL
    · have h2L : |L - -L| = 2 * L := by
        rw [sub_neg_eq_add, ← two_mul]; exact abs_of_nonneg (by linarith)
      rw [h2L]
      ring_nf
      exact le_refl _
  unfold cylFlux
  have := abs_add_le (capFlux V L) (sideFlux V L)
  linarith

theorem stern_flux_eps_limit [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Φ : EndChart M) (X Y : E3 → E3) (q R₀ R₁ C : ℝ)
    (hXY : CoordChange X Y q R₀ R₁ C) (L : ℝ) (hL : R₁ < L) :
    Tendsto (fun ε : ℝ => cylFlux (sternVecEps (pullbackMetric (g.coeff Φ.Φ) Y) ε) L)
      (𝓝[>] (0 : ℝ)) (𝓝 (cylFlux (gradVec (pullbackMetric (g.coeff Φ.Φ) Y)) L)) :=
by
  classical
  
  have s5 : ∀ (a P ε : ℝ), 0 < P → 0 ≤ ε →
      |a / (2 * Real.sqrt (P + ε)) - a / (2 * Real.sqrt P)| ≤
        |a| * ε / (4 * (P * Real.sqrt P)) := by
    intro a P ε hP hε
    have hs0 : 0 < Real.sqrt P := Real.sqrt_pos.mpr hP
    have hss : Real.sqrt P ^ 2 = P := Real.sq_sqrt hP.le
    have htt : Real.sqrt (P + ε) ^ 2 = P + ε := Real.sq_sqrt (by linarith)
    have hst : Real.sqrt P ≤ Real.sqrt (P + ε) := Real.sqrt_le_sqrt (by linarith)
    have ht0 : 0 < Real.sqrt (P + ε) := lt_of_lt_of_le hs0 hst
    generalize Real.sqrt P = s at hs0 hss hst ht0 ⊢
    generalize Real.sqrt (P + ε) = t at htt hst ht0 ⊢
    have heq : a / (2 * t) - a / (2 * s) = -(a * (t - s)) / (2 * s * t) := by
      field_simp
      ring
    have hts : 0 ≤ t - s := by linarith
    rw [heq, abs_div, abs_neg, abs_mul, abs_of_nonneg hts,
      abs_of_pos (by positivity : (0 : ℝ) < 2 * s * t)]
    rw [div_le_div_iff₀ (by positivity) (by positivity)]
    have hε' : ε = t ^ 2 - s ^ 2 := by linarith
    have hPs : P = s ^ 2 := hss.symm
    rw [hε', hPs]
    have key : (t - s) * (4 * (s ^ 2 * s)) ≤ (t ^ 2 - s ^ 2) * (2 * s * t) := by
      have h3 : 0 ≤ t ^ 2 + s * t - 2 * s ^ 2 := by nlinarith
      nlinarith [mul_nonneg hts (mul_nonneg hs0.le h3)]
    have ha := abs_nonneg a
    nlinarith [mul_le_mul_of_nonneg_left key ha]
  
  have s4 : ∀ (V W : E3 → Fin 3 → ℝ) (L : ℝ), 0 ≤ L →
      (∀ x : E3, L ≤ ‖x‖ → ‖x‖ ≤ 2 * L → V x = W x) → cylFlux V L = cylFlux W L := by
    intro V W L hL hVW
    have hnormsq : ∀ t a b : ℝ, ‖cylPt t a b‖ ^ 2 = t ^ 2 + a ^ 2 + b ^ 2 := by
      intro t a b
      rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => by positivity)),
        Fin.sum_univ_three]
      simp [cylPt, e, EuclideanSpace.single_apply]
    have hshell : ∀ t a b : ℝ, L ^ 2 ≤ t ^ 2 + a ^ 2 + b ^ 2 →
        t ^ 2 + a ^ 2 + b ^ 2 ≤ 2 * L ^ 2 → V (cylPt t a b) = W (cylPt t a b) := by
      intro t a b h1 h2
      have hn := hnormsq t a b
      have h0 := norm_nonneg (cylPt t a b)
      apply hVW
      · nlinarith
      · nlinarith
    have hcs : ∀ r s : ℝ, (r * Real.cos s) ^ 2 + (r * Real.sin s) ^ 2 = r ^ 2 := by
      intro r s
      rw [mul_pow, mul_pow, ← mul_add, Real.cos_sq_add_sin_sq, mul_one]
    unfold cylFlux capFlux sideFlux
    congr 1
    · apply intervalIntegral.integral_congr
      intro ρ hρ
      rw [Set.uIcc_of_le hL] at hρ
      obtain ⟨hρ0, hρL⟩ := hρ
      apply intervalIntegral.integral_congr
      intro s _
      have h := hcs ρ s
      have hρ2 : ρ ^ 2 ≤ L ^ 2 := by nlinarith
      simp only
      rw [hshell L _ _ (by nlinarith [sq_nonneg ρ]) (by nlinarith),
        hshell (-L) _ _ (by nlinarith [sq_nonneg ρ]) (by nlinarith)]
    · apply intervalIntegral.integral_congr
      intro t ht
      rw [Set.uIcc_of_le (by linarith)] at ht
      obtain ⟨ht0, ht1⟩ := ht
      apply intervalIntegral.integral_congr
      intro s _
      have h := hcs L s
      have ht2 : t ^ 2 ≤ L ^ 2 := by nlinarith
      simp only
      rw [hshell t _ _ (by nlinarith [sq_nonneg t]) (by nlinarith)]
  
  have hR02 : (2 : ℝ) ≤ R₀ := hXY.1
  have hR01 : R₀ ≤ R₁ := hXY.2.1
  have hR1 : 0 ≤ R₁ := by linarith
  have hL0 : 0 < L := by linarith
  have hUo : IsOpen {x : E3 | R₁ < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hYX := hXY.2.2.2.2.2.1
  
  have main : ∀ G : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      (∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => G x a b) {x : E3 | R₁ < ‖x‖}) →
      (∀ x ∈ {x : E3 | R₁ < ‖x‖}, (G x).PosDef) →
      Tendsto (fun ε : ℝ => cylFlux (sternVecEps G ε) L) (𝓝[>] (0 : ℝ))
        (𝓝 (cylFlux (gradVec G) L)) := by
    intro G hGs hpd
    obtain ⟨hdiff, hinvs, -, -, -⟩ :=
      ejp_coord_smooth G (fun _ => 0) {x : E3 | R₁ < ‖x‖} hUo hGs hpd contDiffOn_const
    have hPs : ContDiffOn ℝ ∞ (fun y => (G y)⁻¹ 0 0) {x : E3 | R₁ < ‖x‖} := hinvs 0 0
    have hdPs : ∀ l : Fin 3,
        ContDiffOn ℝ ∞ (partialDeriv l (fun y => (G y)⁻¹ 0 0)) {x : E3 | R₁ < ‖x‖} :=
      fun l => hdiff _ hPs l
    have hPpos : ∀ y ∈ {x : E3 | R₁ < ‖x‖}, 0 < (G y)⁻¹ 0 0 :=
      fun y hy => (hpd y hy).inv.diag_pos
    have hPc : ContinuousOn (fun y => (G y)⁻¹ 0 0) {x : E3 | R₁ < ‖x‖} := hPs.continuousOn
    have hGc : ContinuousOn G {x : E3 | R₁ < ‖x‖} :=
      continuousOn_pi.mpr (fun i => continuousOn_pi.mpr (fun j => (hGs i j).continuousOn))
    have hdetc0 : Continuous (fun A : Matrix (Fin 3) (Fin 3) ℝ => A.det) :=
      continuous_id.matrix_det
    have hdetc : ContinuousOn (fun y => (G y).det) {x : E3 | R₁ < ‖x‖} :=
      hdetc0.comp_continuousOn hGc
    let A : E3 → Fin 3 → ℝ := fun y k => Real.sqrt (G y).det *
      ∑ l : Fin 3, (G y)⁻¹ k l * partialDeriv l (fun z => (G z)⁻¹ 0 0) y
    have hAc : ∀ k : Fin 3, ContinuousOn (fun y => A y k) {x : E3 | R₁ < ‖x‖} := by
      intro k
      exact hdetc.sqrt.mul (continuousOn_finset_sum _
        (fun l _ => (hinvs k l).continuousOn.mul (hdPs l).continuousOn))
    have hPd : ∀ y ∈ {x : E3 | R₁ < ‖x‖}, DifferentiableAt ℝ (fun y => (G y)⁻¹ 0 0) y :=
      fun y hy => (hPs.contDiffAt (hUo.mem_nhds hy)).differentiableAt (by simp)
    have hform : ∀ ε : ℝ, 0 ≤ ε → ∀ y ∈ {x : E3 | R₁ < ‖x‖}, ∀ k : Fin 3,
        sternVecEps G ε y k = A y k / (2 * Real.sqrt ((G y)⁻¹ 0 0 + ε)) := by
      intro ε hε y hy k
      have hne : (G y)⁻¹ 0 0 + ε ≠ 0 := ne_of_gt (by linarith [hPpos y hy])
      have hfd : HasFDerivAt (fun z => Real.sqrt ((G z)⁻¹ 0 0 + ε))
          ((1 / (2 * Real.sqrt ((G y)⁻¹ 0 0 + ε))) • fderiv ℝ (fun z => (G z)⁻¹ 0 0) y) y :=
        ((hPd y hy).hasFDerivAt.add_const ε).sqrt hne
      have hpl : ∀ l : Fin 3, partialDeriv l (fun z => Real.sqrt ((G z)⁻¹ 0 0 + ε)) y =
          (1 / (2 * Real.sqrt ((G y)⁻¹ 0 0 + ε))) * partialDeriv l (fun z => (G z)⁻¹ 0 0) y := by
        intro l
        unfold partialDeriv
        rw [hfd.fderiv, ContinuousLinearMap.smul_apply, smul_eq_mul]
      simp only [sternVecEps, hpl, A]
      rw [Finset.mul_sum, Finset.mul_sum, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro l _
      ring
    have hgrad : ∀ y ∈ {x : E3 | R₁ < ‖x‖}, ∀ k : Fin 3,
        gradVec G y k = A y k / (2 * Real.sqrt ((G y)⁻¹ 0 0)) := by
      intro y hy k
      have hne : (G y)⁻¹ 0 0 ≠ 0 := ne_of_gt (hPpos y hy)
      have hfd : HasFDerivAt (fun z => Real.sqrt ((G z)⁻¹ 0 0))
          ((1 / (2 * Real.sqrt ((G y)⁻¹ 0 0))) • fderiv ℝ (fun z => (G z)⁻¹ 0 0) y) y :=
        (hPd y hy).hasFDerivAt.sqrt hne
      have hpl : ∀ l : Fin 3, partialDeriv l (fun z => Real.sqrt ((G z)⁻¹ 0 0)) y =
          (1 / (2 * Real.sqrt ((G y)⁻¹ 0 0))) * partialDeriv l (fun z => (G z)⁻¹ 0 0) y := by
        intro l
        unfold partialDeriv
        rw [hfd.fderiv, ContinuousLinearMap.smul_apply, smul_eq_mul]
      simp only [gradVec, hpl, A]
      rw [Finset.mul_sum, Finset.mul_sum, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro l _
      ring
    
    have hVc : ∀ ε : ℝ, 0 ≤ ε → ∀ k : Fin 3,
        ContinuousOn (fun x => sternVecEps G ε x k) {x : E3 | R₁ < ‖x‖} := by
      intro ε hε k
      have hden : ContinuousOn (fun y => 2 * Real.sqrt ((G y)⁻¹ 0 0 + ε)) {x : E3 | R₁ < ‖x‖} :=
        continuousOn_const.mul ((hPc.add continuousOn_const).sqrt)
      have h2 : ContinuousOn (fun y => A y k / (2 * Real.sqrt ((G y)⁻¹ 0 0 + ε)))
          {x : E3 | R₁ < ‖x‖} :=
        (hAc k).div hden (fun y hy =>
          ne_of_gt (mul_pos two_pos (Real.sqrt_pos.mpr (by linarith [hPpos y hy]))))
      exact h2.congr (fun y hy => hform ε hε y hy k)
    have hWc : ∀ k : Fin 3, ContinuousOn (fun x => gradVec G x k) {x : E3 | R₁ < ‖x‖} := by
      intro k
      have hden : ContinuousOn (fun y => 2 * Real.sqrt ((G y)⁻¹ 0 0)) {x : E3 | R₁ < ‖x‖} :=
        continuousOn_const.mul hPc.sqrt
      have h2 : ContinuousOn (fun y => A y k / (2 * Real.sqrt ((G y)⁻¹ 0 0)))
          {x : E3 | R₁ < ‖x‖} :=
        (hAc k).div hden (fun y hy =>
          ne_of_gt (mul_pos two_pos (Real.sqrt_pos.mpr (hPpos y hy))))
      exact h2.congr (fun y hy => hgrad y hy k)
    
    have hK : IsCompact (Metric.closedBall (0 : E3) (2 * L) ∩ {x : E3 | L ≤ ‖x‖}) :=
      (isCompact_closedBall 0 (2 * L)).inter_right (isClosed_le continuous_const continuous_norm)
    have hKU : Metric.closedBall (0 : E3) (2 * L) ∩ {x : E3 | L ≤ ‖x‖} ⊆ {x : E3 | R₁ < ‖x‖} :=
      fun x hx => lt_of_lt_of_le hL hx.2
    let H : E3 → ℝ := fun y =>
      ∑ k : Fin 3, |A y k| / (4 * ((G y)⁻¹ 0 0 * Real.sqrt ((G y)⁻¹ 0 0)))
    have hHc : ContinuousOn H {x : E3 | R₁ < ‖x‖} := by
      apply continuousOn_finset_sum
      intro k _
      apply ContinuousOn.div (hAc k).abs (continuousOn_const.mul (hPc.mul hPc.sqrt))
      intro y hy
      exact ne_of_gt (mul_pos (by norm_num) (mul_pos (hPpos y hy) (Real.sqrt_pos.mpr (hPpos y hy))))
    obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn (hHc.mono hKU)
    have hM0 : 0 ≤ max M 0 := le_max_right _ _
    have hbound : ∀ ε : ℝ, 0 ≤ ε →
        ∀ x ∈ Metric.closedBall (0 : E3) (2 * L) ∩ {x : E3 | L ≤ ‖x‖}, ∀ k : Fin 3,
        |sternVecEps G ε x k - gradVec G x k| ≤ max M 0 * ε := by
      intro ε hε x hx k
      have hxU := hKU hx
      rw [hform ε hε x hxU k, hgrad x hxU k]
      have hP := hPpos x hxU
      have h1 := s5 (A x k) _ ε hP hε
      have hden0 : 0 ≤ 4 * ((G x)⁻¹ 0 0 * Real.sqrt ((G x)⁻¹ 0 0)) :=
        mul_nonneg (by norm_num) (mul_nonneg hP.le (Real.sqrt_nonneg _))
      have hterm : |A x k| / (4 * ((G x)⁻¹ 0 0 * Real.sqrt ((G x)⁻¹ 0 0))) ≤ H x := by
        have hP' : ∀ i ∈ (Finset.univ : Finset (Fin 3)),
            0 ≤ |A x i| / (4 * ((G x)⁻¹ 0 0 * Real.sqrt ((G x)⁻¹ 0 0))) :=
          fun i _ => div_nonneg (abs_nonneg _) hden0
        exact Finset.single_le_sum hP' (Finset.mem_univ k)
      have hHM : H x ≤ max M 0 := by
        have := hM x hx
        rw [Real.norm_eq_abs] at this
        exact le_trans (le_abs_self _) (le_trans this (le_max_left _ _))
      calc _ ≤ |A x k| * ε / (4 * ((G x)⁻¹ 0 0 * Real.sqrt ((G x)⁻¹ 0 0))) := h1
        _ = |A x k| / (4 * ((G x)⁻¹ 0 0 * Real.sqrt ((G x)⁻¹ 0 0))) * ε := by ring
        _ ≤ max M 0 * ε := mul_le_mul_of_nonneg_right (hterm.trans hHM) hε
    
    have hflux : ∀ ε : ℝ, 0 < ε →
        |cylFlux (sternVecEps G ε) L - cylFlux (gradVec G) L| ≤
          12 * Real.pi * L ^ 2 * (max M 0 * ε) := by
      intro ε hε
      rw [← cylFlux_sub_of_continuousOn (sternVecEps G ε) (gradVec G) R₁ L hR1 hL
        (hVc ε hε.le) hWc]
      let D : E3 → Fin 3 → ℝ := fun x =>
        if ‖x‖ ≤ 2 * L then sternVecEps G ε x - gradVec G x else 0
      rw [s4 (fun x => sternVecEps G ε x - gradVec G x) D L hL0.le
        (fun x _ h2 => by simp only [D, if_pos h2])]
      apply cylFlux_abs_le D L (max M 0 * ε) hL0.le (mul_nonneg hM0 hε.le)
      intro x hx k
      by_cases h2 : ‖x‖ ≤ 2 * L
      · simp only [D, if_pos h2, Pi.sub_apply]
        exact hbound ε hε.le x ⟨mem_closedBall_zero_iff.mpr h2, hx⟩ k
      · simp only [D, if_neg h2, Pi.zero_apply, abs_zero]
        exact mul_nonneg hM0 hε.le
    
    rw [Metric.tendsto_nhds]
    intro η hη
    have hc0 : 0 ≤ 12 * Real.pi * L ^ 2 * max M 0 :=
      mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) Real.pi_pos.le) (sq_nonneg L)) hM0
    have hκ : 0 < 12 * Real.pi * L ^ 2 * max M 0 + 1 := by linarith
    filter_upwards [Ioo_mem_nhdsGT (div_pos hη hκ)] with ε hε
    obtain ⟨hε0, hε1⟩ := hε
    rw [Real.dist_eq]
    calc _ ≤ 12 * Real.pi * L ^ 2 * (max M 0 * ε) := hflux ε hε0
      _ ≤ (12 * Real.pi * L ^ 2 * max M 0 + 1) * ε := by nlinarith
      _ < (12 * Real.pi * L ^ 2 * max M 0 + 1) * (η / (12 * Real.pi * L ^ 2 * max M 0 + 1)) :=
          mul_lt_mul_of_pos_left hε1 hκ
      _ = η := by field_simp
  
  have hsmoothΦ : ∀ i j : Fin 3,
      ContDiffOn ℝ ∞ (fun y => g.coeff Φ.Φ y i j) {y : E3 | 1 < ‖y‖} := by
    intro i j
    rw [← Φ.source_eq]
    exact coeff_contDiffOn_source g Φ.Φ i j
  obtain ⟨hGs, hreg⟩ := coordChange_regularity (g.coeff Φ.Φ) hsmoothΦ X Y q R₀ R₁ C hXY
  
  have hpdU : ∀ x ∈ {x : E3 | R₁ < ‖x‖}, (pullbackMetric (g.coeff Φ.Φ) Y x).PosDef := by
    intro x hx
    obtain ⟨hYd, hXd, -⟩ := hreg x hx
    have hYx : Y x ∈ Φ.Φ.source := by
      rw [Φ.source_eq]
      show (1 : ℝ) < ‖Y x‖
      linarith [(hYX x hx).1]
    have hA := coeff_posDef g Φ.Φ (Y x) hYx
    have hinv : (X ∘ Y) =ᶠ[𝓝 x] id :=
      Filter.eventually_of_mem (hUo.mem_nhds hx) (fun z hz => (hYX z hz).2)
    have hid : HasFDerivAt (X ∘ Y) (ContinuousLinearMap.id ℝ E3) x :=
      (hasFDerivAt_id x).congr_of_eventuallyEq hinv
    have hcomp : HasFDerivAt (X ∘ Y) ((fderiv ℝ X (Y x)).comp (fderiv ℝ Y x)) x :=
      hXd.hasFDerivAt.comp x hYd.hasFDerivAt
    have hleft : ∀ w : E3, fderiv ℝ X (Y x) (fderiv ℝ Y x w) = w := by
      intro w
      have := congrArg (fun T : E3 →L[ℝ] E3 => T w) (hcomp.unique hid)
      simpa using this
    let B : Matrix (Fin 3) (Fin 3) ℝ := Matrix.of fun i a => (fderiv ℝ Y x (e a)) i
    have hmv : ∀ v : Fin 3 → ℝ, ∀ i : Fin 3,
        B.mulVec v i = (fderiv ℝ Y x (∑ a : Fin 3, v a • e a)) i := by
      intro v i
      simp [B, Matrix.mulVec, dotProduct, Fin.sum_univ_three, map_add, map_smul]
      ring
    have hw : ∀ v : Fin 3 → ℝ, ∀ i : Fin 3, (∑ a : Fin 3, v a • e a) i = v i := by
      intro v i
      fin_cases i <;> simp [Fin.sum_univ_three, EuclideanSpace.single_apply]
    have hBinj : Function.Injective B.mulVec := by
      intro v₁ v₂ hv
      have h1 : fderiv ℝ Y x (∑ a : Fin 3, v₁ a • e a) =
          fderiv ℝ Y x (∑ a : Fin 3, v₂ a • e a) := by
        ext i
        have := congrFun hv i
        rw [hmv, hmv] at this
        exact this
      have h2 := congrArg (fderiv ℝ X (Y x)) h1
      rw [hleft, hleft] at h2
      funext i
      rw [← hw v₁ i, ← hw v₂ i, h2]
    have hPD := hA.conjTranspose_mul_mul_same hBinj
    convert hPD using 1
    ext a b
    simp only [pullbackMetric, Matrix.mul_apply, Matrix.conjTranspose_apply, B, Matrix.of_apply,
      star_trivial, Finset.sum_mul]
    rw [Finset.sum_comm]
  exact main _ hGs hpdU

theorem stern_kappa_comparison [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Φ : EndChart M) (X Y : E3 → E3) (q R₀ R₁ C : ℝ)
    (hXY : CoordChange X Y q R₀ R₁ C) (L : ℝ) (hL : R₁ < L) (θ : ℝ) (hθ : 0 < θ) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ A : Set ℝ, MeasurableSet A → A ⊆ Set.Icc (-L) L →
      volume (Set.Icc (-L) L \ A) < ENNReal.ofReal δ →
      curvTerm (pullbackMetric (g.coeff Φ.Φ) Y) L - 4 * Real.pi * L - θ ≤
        ∫ t in A, (sternKappa (pullbackMetric (g.coeff Φ.Φ) Y) L t - 2 * Real.pi) :=
by
  classical
  
  have hcoeffS : ∀ (Φ : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 M ∞) (i j : Fin 3),
      ContDiffOn ℝ ∞ (fun x => g.coeff Φ x i j) Φ.source := by
    intro Φ i j
    have hw : ∀ w : E3, w = ∑ a : Fin 3, w a • e a := by
      intro w
      ext k
      simp [e, Pi.single_apply]
    have hexp : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (D : E3 →L[ℝ] E3) (w1 w2 : E3),
        B (D w1) (D w2) = ∑ a : Fin 3, ∑ b : Fin 3, w1 a * w2 b * B (D (e a)) (D (e b)) := by
      intro B D w1 w2
      calc B (D w1) (D w2)
          = B (D (∑ a : Fin 3, w1 a • e a)) (D (∑ b : Fin 3, w2 b • e b)) := by
            rw [← hw w1, ← hw w2]
        _ = ∑ a : Fin 3, ∑ b : Fin 3, w1 a * w2 b * B (D (e a)) (D (e b)) := by
            simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
              ContinuousLinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
            conv_lhs => rw [Finset.sum_comm]
            refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
            ring
    have hΦ : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ Φ.source := Φ.contMDiffOn_toFun
    apply contDiffOn_of_locally_contDiffOn
    intro x0 hx0
    have hu : IsOpen (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) :=
      hΦ.continuousOn.isOpen_inter_preimage Φ.open_source (chartAt E3 (Φ x0)).open_source
    have hF : ContDiffOn ℝ ∞ (fun y => chartAt E3 (Φ x0) (Φ y))
        (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) := by
      have h1 := (contMDiffOn_iff_target.mp hΦ).2 (Φ x0)
      rw [extChartAt_source] at h1
      have h2 := contMDiffOn_iff_contDiffOn.mp h1
      simpa [extChartAt_coe, Function.comp_def] using h2
    have hmaps : Set.MapsTo (fun y => chartAt E3 (Φ x0) (Φ y))
        (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) (chartAt E3 (Φ x0)).target :=
      fun y hy => (chartAt E3 (Φ x0)).map_source hy.2
    have hD : ContDiffOn ℝ ∞ (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)))
        (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) :=
      ((contDiffOn_infty_iff_fderiv_of_isOpen hu).mp hF).2
    have hcoord : ∀ k a : Fin 3, ContDiffOn ℝ ∞
        (fun x => (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x (e k)) a)
        (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) := by
      intro k a
      have h2 : ContDiffOn ℝ ∞ (fun x => fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x (e k))
          (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) := hD.clm_apply contDiffOn_const
      exact (EuclideanSpace.proj a : E3 →L[ℝ] ℝ).contDiff.comp_contDiffOn h2
    have hG : ∀ a b : Fin 3, ContDiffOn ℝ ∞
        (fun x => g.coeff (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) a b)
        (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) :=
      fun a b => (g.smooth (Φ x0) a b).comp hF hmaps
    have hR : ContDiffOn ℝ ∞ (fun x => ∑ a : Fin 3, ∑ b : Fin 3,
        (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x (e i)) a *
        (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x (e j)) b *
        g.coeff (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) a b)
        (Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source) := by
      apply ContDiffOn.sum
      intro a _
      apply ContDiffOn.sum
      intro b _
      exact ((hcoord i a).mul (hcoord j b)).mul (hG a b)
    have key : ∀ x ∈ Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source,
        g.coeff Φ x i j = ∑ a : Fin 3, ∑ b : Fin 3,
        (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x (e i)) a *
        (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x (e j)) b *
        g.coeff (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) a b := by
      intro x hx
      have hcont : ContinuousAt Φ x :=
        hΦ.continuousOn.continuousAt (Φ.open_source.mem_nhds hx.1)
      have hFdiff : DifferentiableAt ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x :=
        (hF.contDiffAt (hu.mem_nhds hx)).differentiableAt (by simp)
      have hFx : chartAt E3 (Φ x0) (Φ x) ∈ (chartAt E3 (Φ x0)).target := hmaps hx
      have hev : (Φ : E3 → M) =ᶠ[𝓝 x]
          ((chartAt E3 (Φ x0)).symm ∘ fun y => chartAt E3 (Φ x0) (Φ y)) := by
        have hmem : (Φ : E3 → M) ⁻¹' (chartAt E3 (Φ x0)).source ∈ 𝓝 x :=
          hcont.preimage_mem_nhds ((chartAt E3 (Φ x0)).open_source.mem_nhds hx.2)
        filter_upwards [hmem] with y hy
        simp only [Function.comp_apply]
        exact ((chartAt E3 (Φ x0)).left_inv hy).symm
      have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x0)).symm
          (chartAt E3 (Φ x0) (Φ x)) :=
        ((contMDiffOn_chart_symm (n := ∞)).contMDiffAt
          ((chartAt E3 (Φ x0)).open_target.mem_nhds hFx)).mdifferentiableAt (by simp)
      have hfac : ∀ v : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x v =
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x))
            (fderiv ℝ (fun y => chartAt E3 (Φ x0) (Φ y)) x v) := by
        intro v
        rw [hev.mfderiv_eq, mfderiv_comp x hg hFdiff.mdifferentiableAt, mfderiv_eq_fderiv]
        rfl
      have hpt : (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) = Φ x :=
        (chartAt E3 (Φ x0)).left_inv hx.2
      have h1 : g.coeff Φ x i j = g.g (Φ x) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x (e i))
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ x (e j)) := rfl
      have h2 : ∀ a b : Fin 3,
          g.coeff (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) a b =
          g.g (Φ x)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) (e a))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)) (e b)) := by
        intro a b
        show g.g ((chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x))) _ _ = _
        rw [show g.g ((chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x))) = g.g (Φ x) from
          congrArg g.g hpt]
      rw [h1, hfac, hfac]
      simp only [h2]
      exact hexp (g.g (Φ x))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (Φ x0)).symm (chartAt E3 (Φ x0) (Φ x)))
        _ _
    refine ⟨Φ.source ∩ Φ ⁻¹' (chartAt E3 (Φ x0)).source, hu,
      ⟨hx0, mem_chart_source E3 (Φ x0)⟩, ?_⟩
    rw [Set.inter_eq_right.mpr Set.inter_subset_left]
    exact hR.congr key
  
  have hw : ∀ w : E3, w = ∑ a : Fin 3, w a • e a := by
    intro w
    ext k
    simp [e, Pi.single_apply]
  have hexp : ∀ (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (D : E3 →L[ℝ] E3) (w1 w2 : E3),
      B (D w1) (D w2) = ∑ a : Fin 3, ∑ b : Fin 3, w1 a * w2 b * B (D (e a)) (D (e b)) := by
    intro B D w1 w2
    calc B (D w1) (D w2)
        = B (D (∑ a : Fin 3, w1 a • e a)) (D (∑ b : Fin 3, w2 b • e b)) := by
          rw [← hw w1, ← hw w2]
      _ = ∑ a : Fin 3, ∑ b : Fin 3, w1 a * w2 b * B (D (e a)) (D (e b)) := by
          simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
            ContinuousLinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
          conv_lhs => rw [Finset.sum_comm]
          refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
          ring
  set G := pullbackMetric (g.coeff Φ.Φ) Y with hGdef
  obtain ⟨hR0, hR01, hC, hXs, hYs, hinv, hinj, hbd⟩ := hXY
  have hL0 : 0 < L := by linarith
  have hU : IsOpen {x : E3 | R₁ < ‖x‖} := isOpen_lt continuous_const continuous_norm
  have hV : IsOpen {y : E3 | R₀ < ‖y‖} := isOpen_lt continuous_const continuous_norm
  have hne : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  have hmapsW : Set.MapsTo Y {x : E3 | R₁ < ‖x‖} {y : E3 | 1 < ‖y‖} := by
    intro x hx
    have h1 := (hinv x hx).1
    show (1 : ℝ) < ‖Y x‖
    linarith
  have hsmooth : ∀ i j : Fin 3,
      ContDiffOn ℝ ∞ (fun y => g.coeff Φ.Φ y i j) {y : E3 | 1 < ‖y‖} := by
    intro i j
    have h := hcoeffS Φ.Φ i j
    rwa [Φ.source_eq] at h
  
  have hcoordF : ∀ (F : E3 → E3) (S : Set E3), ContDiffOn ℝ ∞ F S →
      ∀ d : Fin 3, ContDiffOn ℝ ∞ (fun w => F w d) S := by
    intro F S hF d
    exact (EuclideanSpace.proj d : E3 →L[ℝ] ℝ).contDiff.comp_contDiffOn hF
  have hfd : ∀ a i : Fin 3, ContDiffOn ℝ ∞ (fun z => (fderiv ℝ Y z (e a)) i)
      {x : E3 | R₁ < ‖x‖} := by
    intro a i
    have h1 : ContDiffOn ℝ ∞ (fderiv ℝ Y) {x : E3 | R₁ < ‖x‖} := hYs.fderiv_of_isOpen hU le_rfl
    have h2 : ContDiffOn ℝ ∞ (fun z => fderiv ℝ Y z (e a)) {x : E3 | R₁ < ‖x‖} :=
      h1.clm_apply contDiffOn_const
    exact hcoordF _ _ h2 i
  have hGs : ∀ a b : Fin 3, ContDiffOn ℝ ∞ (fun x => G x a b) {x : E3 | R₁ < ‖x‖} := by
    intro a b
    have hGY : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun x => g.coeff Φ.Φ (Y x) i j)
        {x : E3 | R₁ < ‖x‖} := fun i j => (hsmooth i j).comp hYs hmapsW
    show ContDiffOn ℝ ∞ (fun x => ∑ i : Fin 3, ∑ j : Fin 3,
      (fderiv ℝ Y x (e a)) i * g.coeff Φ.Φ (Y x) i j * (fderiv ℝ Y x (e b)) j) _
    exact ContDiffOn.sum (fun i _ => ContDiffOn.sum (fun j _ =>
      ((hfd a i).mul (hGY i j)).mul (hfd b j)))
  
  have hnormsq : ∀ t a b : ℝ, ‖cylPt t a b‖ ^ 2 = t ^ 2 + a ^ 2 + b ^ 2 := by
    intro t a b
    rw [EuclideanSpace.norm_eq, Real.sq_sqrt (Finset.sum_nonneg (fun i _ => by positivity)),
      Fin.sum_univ_three]
    simp [cylPt, e, EuclideanSpace.single_apply]
  have hPU : ∀ p : ℝ × ℝ, R₁ < ‖cylPt p.1 (L * Real.cos p.2) (L * Real.sin p.2)‖ := by
    intro p
    have h1 := hnormsq p.1 (L * Real.cos p.2) (L * Real.sin p.2)
    have h2 : 0 ≤ ‖cylPt p.1 (L * Real.cos p.2) (L * Real.sin p.2)‖ := norm_nonneg _
    have h3 := Real.cos_sq_add_sin_sq p.2
    have h4 : L ^ 2 ≤ ‖cylPt p.1 (L * Real.cos p.2) (L * Real.sin p.2)‖ ^ 2 := by
      rw [h1]; nlinarith [sq_nonneg p.1]
    nlinarith
  have hPc : Continuous fun p : ℝ × ℝ => cylPt p.1 (L * Real.cos p.2) (L * Real.sin p.2) := by
    simp only [cylPt]
    fun_prop
  have hGc : ∀ a b : Fin 3, Continuous fun p : ℝ × ℝ =>
      G (cylPt p.1 (L * Real.cos p.2) (L * Real.sin p.2)) a b := fun a b =>
    (hGs a b).continuousOn.comp_continuous hPc hPU
  have hdGc : ∀ c a b : Fin 3, Continuous fun p : ℝ × ℝ =>
      partialDeriv c (fun z => G z a b) (cylPt p.1 (L * Real.cos p.2) (L * Real.sin p.2)) := by
    intro c a b
    have h1 : ContinuousOn (fun y => partialDeriv c (fun z => G z a b) y) {x : E3 | R₁ < ‖x‖} :=
      ((hGs a b).continuousOn_fderiv_of_isOpen hU (by simp)).clm_apply continuousOn_const
    exact h1.comp_continuous hPc hPU
  
  have hγpd : ∀ t s : ℝ, (cylGam G t L s).PosDef := by
    intro t s
    have hx : R₁ < ‖cylPt t (L * Real.cos s) (L * Real.sin s)‖ := hPU (t, s)
    set x := cylPt t (L * Real.cos s) (L * Real.sin s) with hxdef
    have hYx : Y x ∈ Φ.Φ.source := by rw [Φ.source_eq]; exact hmapsW hx
    have hloc := PartialDiffeomorph.isLocalDiffeomorphAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ.Φ hYx
    have hDinj : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x) w = 0 → w = 0 := by
      intro w hw0
      have hL : ∀ u : E3, (hloc.mfderivToContinuousLinearEquiv hne) u =
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x) u := by
        intro u
        rw [← hloc.mfderivToContinuousLinearEquiv_coe hne]
        rfl
      apply (hloc.mfderivToContinuousLinearEquiv hne).injective
      rw [hL, hw0, map_zero]
    have hYd : DifferentiableAt ℝ Y x := (hYs.contDiffAt (hU.mem_nhds hx)).differentiableAt hne
    have hXd : DifferentiableAt ℝ X (Y x) :=
      (hXs.contDiffAt (hV.mem_nhds (hinv x hx).1)).differentiableAt hne
    have hc2 : (fderiv ℝ X (Y x)).comp (fderiv ℝ Y x) = ContinuousLinearMap.id ℝ E3 := by
      rw [← fderiv_comp x hXd hYd]
      have hev : X ∘ Y =ᶠ[𝓝 x] id := by
        filter_upwards [hU.mem_nhds hx] with z hz
        exact (hinv z hz).2
      rw [hev.fderiv_eq, fderiv_id]
    have hJinj : ∀ v : E3, fderiv ℝ Y x v = 0 → v = 0 := by
      intro v hv
      have h := congrArg (fun T : E3 →L[ℝ] E3 => T v) hc2
      simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.id_apply, hv,
        map_zero] at h
      exact h.symm
    have hGform : ∀ a b : Fin 3, G x a b = g.g (Φ.Φ (Y x))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x) (fderiv ℝ Y x (e a)))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x) (fderiv ℝ Y x (e b))) := by
      intro a b
      have hh := hexp (g.g (Φ.Φ (Y x))) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x))
        (fderiv ℝ Y x (e a)) (fderiv ℝ Y x (e b))
      refine Eq.trans ?_ hh.symm
      show ∑ i : Fin 3, ∑ j : Fin 3,
        (fderiv ℝ Y x (e a)) i * g.coeff Φ.Φ (Y x) i j * (fderiv ℝ Y x (e b)) j = _
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      simp only [RiemannianMetric3.coeff, coeffMatrix]
      exact mul_right_comm _ _ _
    apply Matrix.PosDef.of_dotProduct_mulVec_pos
    · apply Matrix.IsHermitian.ext
      intro i j
      simp only [cylGam, star_trivial]
      rw [← hxdef, hGform, hGform]
      exact g.symm _ _ _
    · intro w hw0
      set v : E3 := w 0 • e (Fin.succ 0) + w 1 • e (Fin.succ 1) with hvdef
      have hv0 : v ≠ 0 := by
        intro h0
        apply hw0
        have h1 := congrArg (fun u : E3 => u 1) h0
        have h2 := congrArg (fun u : E3 => u 2) h0
        simp [v, e, EuclideanSpace.single_apply] at h1 h2
        funext k
        fin_cases k
        · simpa using h1
        · simpa using h2
      have hpos := g.posDef (Φ.Φ (Y x)) _ (fun h => hv0 (hJinj _ (hDinj _ h)))
      have key : star w ⬝ᵥ (cylGam G t L s).mulVec w =
          g.g (Φ.Φ (Y x)) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x) (fderiv ℝ Y x v))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) Φ.Φ (Y x) (fderiv ℝ Y x v)) := by
        have hγx : ∀ i j : Fin 2, cylGam G t L s i j = G x i.succ j.succ := fun i j => rfl
        simp only [dotProduct, Matrix.mulVec, Fin.sum_univ_two, Pi.star_apply, star_trivial,
          hγx, hGform, hvdef, map_add, map_smul, ContinuousLinearMap.add_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul]
        ring
      rw [key]
      exact hpos
  
  have hform : ∀ (Mt : Matrix (Fin 2) (Fin 2) ℝ) (w : Fin 2 → ℝ),
      star w ⬝ᵥ Mt.mulVec w = ∑ a : Fin 2, ∑ b : Fin 2, Mt a b * w a * w b := by
    intro Mt w
    simp only [dotProduct, Matrix.mulVec, Fin.sum_univ_two, star_trivial, Pi.star_apply]
    ring
  have hn0 : ∀ s : ℝ, (![Real.cos s, Real.sin s] : Fin 2 → ℝ) ≠ 0 := by
    intro s h
    have h0 := congrFun h 0
    have h1 := congrFun h 1
    simp at h0 h1
    have := Real.cos_sq_add_sin_sq s
    rw [h0, h1] at this
    norm_num at this
  have hv0 : ∀ s : ℝ, (![-(L * Real.sin s), L * Real.cos s] : Fin 2 → ℝ) ≠ 0 := by
    intro s h
    have h0 := congrFun h 0
    have h1 := congrFun h 1
    simp [hL0.ne'] at h0 h1
    have := Real.cos_sq_add_sin_sq s
    rw [h0, h1] at this
    norm_num at this
  
  have hcont : Continuous (fun p : ℝ × ℝ => curvIntegrand G p.1 L p.2) := by
    have hγ : Continuous fun p : ℝ × ℝ => cylGam G p.1 L p.2 :=
      continuous_pi fun a => continuous_pi fun b => hGc a.succ b.succ
    have hdet : ∀ p : ℝ × ℝ, (cylGam G p.1 L p.2).det ≠ 0 :=
      fun p => (hγpd p.1 p.2).det_pos.ne'
    have hγi : Continuous fun p : ℝ × ℝ => (cylGam G p.1 L p.2)⁻¹ := by
      have e1 : (fun p : ℝ × ℝ => (cylGam G p.1 L p.2)⁻¹) =
          fun p => (cylGam G p.1 L p.2).det⁻¹ • (cylGam G p.1 L p.2).adjugate := by
        funext p
        rw [Matrix.inv_def, Ring.inverse_eq_inv']
      rw [e1]
      exact (hγ.matrix_det.inv₀ hdet).smul hγ.matrix_adjugate
    have hd : ∀ c a b : Fin 2, Continuous fun p : ℝ × ℝ => cylDG G p.1 L p.2 c a b :=
      fun c a b => hdGc c.succ a.succ b.succ
    have hq1 : ∀ p : ℝ × ℝ, 0 < ∑ a : Fin 2, ∑ b : Fin 2, (cylGam G p.1 L p.2)⁻¹ a b *
        ![Real.cos p.2, Real.sin p.2] a * ![Real.cos p.2, Real.sin p.2] b := by
      intro p
      rw [← hform]
      exact (hγpd p.1 p.2).inv.dotProduct_mulVec_pos (hn0 p.2)
    have hq2 : ∀ p : ℝ × ℝ, 0 < ∑ a : Fin 2, ∑ b : Fin 2, cylGam G p.1 L p.2 a b *
        ![-(L * Real.sin p.2), L * Real.cos p.2] a *
        ![-(L * Real.sin p.2), L * Real.cos p.2] b := by
      intro p
      rw [← hform]
      exact (hγpd p.1 p.2).dotProduct_mulVec_pos (hv0 p.2)
    have hn : ∀ a : Fin 2, Continuous fun p : ℝ × ℝ => ![Real.cos p.2, Real.sin p.2] a := by
      intro a
      fin_cases a
      · simp only [Fin.zero_eta, Matrix.cons_val_zero]; fun_prop
      · simp only [Fin.mk_one, Matrix.cons_val_one, Matrix.cons_val_fin_one]; fun_prop
    have hv : ∀ a : Fin 2, Continuous fun p : ℝ × ℝ =>
        ![-(L * Real.sin p.2), L * Real.cos p.2] a := by
      intro a
      fin_cases a
      · simp only [Fin.zero_eta, Matrix.cons_val_zero]; fun_prop
      · simp only [Fin.mk_one, Matrix.cons_val_one, Matrix.cons_val_fin_one]; fun_prop
    have hq1c : Continuous fun p : ℝ × ℝ => ∑ a : Fin 2, ∑ b : Fin 2,
        (cylGam G p.1 L p.2)⁻¹ a b *
        ![Real.cos p.2, Real.sin p.2] a * ![Real.cos p.2, Real.sin p.2] b :=
      continuous_finset_sum _ fun a _ => continuous_finset_sum _ fun b _ =>
        ((hγi.matrix_elem a b).mul (hn a)).mul (hn b)
    have hq2c : Continuous fun p : ℝ × ℝ => ∑ a : Fin 2, ∑ b : Fin 2,
        cylGam G p.1 L p.2 a b *
        ![-(L * Real.sin p.2), L * Real.cos p.2] a *
        ![-(L * Real.sin p.2), L * Real.cos p.2] b :=
      continuous_finset_sum _ fun a _ => continuous_finset_sum _ fun b _ =>
        ((hγ.matrix_elem a b).mul (hv a)).mul (hv b)
    have hnum : Continuous fun p : ℝ × ℝ => L - ∑ a : Fin 2, ∑ b : Fin 2, ∑ c : Fin 2,
        ![Real.cos p.2, Real.sin p.2] a *
        ((1 / 2 : ℝ) * ∑ f : Fin 2, (cylGam G p.1 L p.2)⁻¹ a f *
          (cylDG G p.1 L p.2 b c f + cylDG G p.1 L p.2 c b f - cylDG G p.1 L p.2 f b c)) *
        ![-(L * Real.sin p.2), L * Real.cos p.2] b *
        ![-(L * Real.sin p.2), L * Real.cos p.2] c := by
      refine continuous_const.sub (continuous_finset_sum _ fun a _ =>
        continuous_finset_sum _ fun b _ => continuous_finset_sum _ fun c _ => ?_)
      exact (((hn a).mul (continuous_const.mul (continuous_finset_sum _ fun f _ =>
        (hγi.matrix_elem a f).mul (((hd b c f).add (hd c b f)).sub (hd f b c))))).mul
        (hv b)).mul (hv c)
    have hden : Continuous fun p : ℝ × ℝ =>
        Real.sqrt (∑ a : Fin 2, ∑ b : Fin 2, (cylGam G p.1 L p.2)⁻¹ a b *
          ![Real.cos p.2, Real.sin p.2] a * ![Real.cos p.2, Real.sin p.2] b) *
        Real.sqrt (∑ a : Fin 2, ∑ b : Fin 2, cylGam G p.1 L p.2 a b *
          ![-(L * Real.sin p.2), L * Real.cos p.2] a *
          ![-(L * Real.sin p.2), L * Real.cos p.2] b) :=
      hq1c.sqrt.mul hq2c.sqrt
    have hden0 : ∀ p : ℝ × ℝ,
        Real.sqrt (∑ a : Fin 2, ∑ b : Fin 2, (cylGam G p.1 L p.2)⁻¹ a b *
          ![Real.cos p.2, Real.sin p.2] a * ![Real.cos p.2, Real.sin p.2] b) *
        Real.sqrt (∑ a : Fin 2, ∑ b : Fin 2, cylGam G p.1 L p.2 a b *
          ![-(L * Real.sin p.2), L * Real.cos p.2] a *
          ![-(L * Real.sin p.2), L * Real.cos p.2] b) ≠ 0 :=
      fun p => (mul_pos (Real.sqrt_pos.2 (hq1 p)) (Real.sqrt_pos.2 (hq2 p))).ne'
    have hfin := hnum.mul (hden.inv₀ hden0)
    refine hfin.congr fun p => ?_
    show _ = curvKappa (cylGam G p.1 L p.2) (cylGam G p.1 L p.2)⁻¹ (cylDG G p.1 L p.2) L p.2
    simp only [curvKappa]
    exact (div_eq_mul_inv _ _).symm
  
  have hκ : Continuous fun t => sternKappa G L t := by
    have h := intervalIntegral.continuous_parametric_intervalIntegral_of_continuous'
      (μ := volume) (f := fun t s => curvIntegrand G t L s) hcont 0 (2 * Real.pi)
    exact h
  have hf : Continuous fun t => sternKappa G L t - 2 * Real.pi := hκ.sub continuous_const
  
  obtain ⟨C₀, hC₀⟩ := (isCompact_Icc (a := -L) (b := L)).exists_bound_of_continuousOn
    hf.continuousOn
  set B := max C₀ 0 with hBdef
  have hB0 : 0 ≤ B := le_max_right _ _
  have hB1 : 0 < B + 1 := by linarith
  refine ⟨θ / (B + 1), div_pos hθ hB1, fun A hA hAsub hvol => ?_⟩
  have hint : IntegrableOn (fun t => sternKappa G L t - 2 * Real.pi) (Set.Icc (-L) L) :=
    hf.integrableOn_Icc
  have hsplit := MeasureTheory.integral_inter_add_diff hA hint
  rw [Set.inter_eq_right.mpr hAsub] at hsplit
  have hfin : volume (Set.Icc (-L) L \ A) < ⊤ := hvol.trans ENNReal.ofReal_lt_top
  have hbd' := MeasureTheory.norm_setIntegral_le_of_norm_le_const hfin
    (f := fun t => sternKappa G L t - 2 * Real.pi) (C := B)
    (fun t ht => (hC₀ t ht.1).trans (le_max_left _ _))
  have hreal : volume.real (Set.Icc (-L) L \ A) < θ / (B + 1) := by
    rw [MeasureTheory.measureReal_def]
    exact ENNReal.toReal_lt_of_lt_ofReal hvol
  have hreal0 : 0 ≤ volume.real (Set.Icc (-L) L \ A) := MeasureTheory.measureReal_nonneg
  have hδeq : θ / (B + 1) * (B + 1) = θ := div_mul_cancel₀ θ hB1.ne'
  have hBθ : B * volume.real (Set.Icc (-L) L \ A) ≤ θ := by
    have : B * volume.real (Set.Icc (-L) L \ A) ≤ B * (θ / (B + 1)) :=
      mul_le_mul_of_nonneg_left hreal.le hB0
    have hδ0 : 0 < θ / (B + 1) := div_pos hθ hB1
    nlinarith
  have hdiff : ∫ t in Set.Icc (-L) L \ A, (sternKappa G L t - 2 * Real.pi) ≤ θ := by
    have h1 := le_abs_self (∫ t in Set.Icc (-L) L \ A, (sternKappa G L t - 2 * Real.pi))
    rw [← Real.norm_eq_abs] at h1
    linarith
  have hId1 : ∫ t in Set.Icc (-L) L, (sternKappa G L t - 2 * Real.pi) =
      ∫ t in (-L)..L, (sternKappa G L t - 2 * Real.pi) := by
    rw [intervalIntegral.integral_of_le (by linarith), MeasureTheory.integral_Icc_eq_integral_Ioc]
  have hId2 : ∫ t in (-L)..L, (sternKappa G L t - 2 * Real.pi) =
      curvTerm G L - 4 * Real.pi * L := by
    rw [intervalIntegral.integral_sub (hκ.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _), intervalIntegral.integral_const, smul_eq_mul]
    have hct : curvTerm G L = ∫ t in (-L)..L, sternKappa G L t := rfl
    rw [hct]
    ring
  linarith

theorem stern_gradInner_chart [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (f w : M → ℝ)
    (U : Set M) (hU : IsOpen U) (hf : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f)
    (hw : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w U) (q : M) :
    ContinuousOn (fun y => g.gradInner f w ((chartAt E3 q).symm y))
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
by
  
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
  
  have grad_alg : ∀ (A Gm Gt : Matrix (Fin 3) (Fin 3) ℝ) (P Q Pt Qt : Fin 3 → ℝ), A.det ≠ 0 →
      (∀ i j, Gt i j = ∑ a : Fin 3, ∑ b : Fin 3, A a i * Gm a b * A b j) →
      (∀ i, Pt i = ∑ a : Fin 3, P a * A a i) →
      (∀ i, Qt i = ∑ a : Fin 3, Q a * A a i) →
      ∑ i : Fin 3, ∑ j : Fin 3, Gt⁻¹ i j * Pt i * Qt j =
          ∑ i : Fin 3, ∑ j : Fin 3, Gm⁻¹ i j * P i * Q j := by
    intro A Gm Gt P Q Pt Qt hA hGt hPt hQt
    have hAu : IsUnit A.det := isUnit_iff_ne_zero.mpr hA
    have hGt' : Gt = Matrix.transpose A * Gm * A := by
      ext i j
      rw [hGt]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
    have hAB : A * A⁻¹ = 1 := Matrix.mul_nonsing_inv A hAu
    have hGtinv : Gt⁻¹ = A⁻¹ * Gm⁻¹ * Matrix.transpose A⁻¹ := by
      rw [hGt', Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.transpose_nonsing_inv]
      exact (mul_assoc _ _ _).symm
    have hM : A * Gt⁻¹ * Matrix.transpose A = Gm⁻¹ := by
      rw [hGtinv]
      calc A * (A⁻¹ * Gm⁻¹ * Matrix.transpose A⁻¹) * Matrix.transpose A
          = (A * A⁻¹) * Gm⁻¹ * (Matrix.transpose A⁻¹ * Matrix.transpose A) := by
            simp only [Matrix.mul_assoc]
        _ = Gm⁻¹ := by
            rw [hAB, ← Matrix.transpose_mul, hAB, Matrix.transpose_one, Matrix.one_mul,
              Matrix.mul_one]
    have hM' : ∀ a b, ∑ i : Fin 3, ∑ j : Fin 3, A a i * Gt⁻¹ i j * A b j = Gm⁻¹ a b := by
      intro a b
      rw [← hM]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Finset.sum_mul]
      rw [Finset.sum_comm]
    simp only [hPt, hQt, ← hM']
    simp only [Fin.sum_univ_three]
    ring
  
  have hinjG : ∀ y ∈ (chartAt E3 q).target, ∀ u : E3,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y u = 0 → u = 0 := by
    intro y hy u hu0
    have hev2 : ((chartAt E3 q) ∘ (chartAt E3 q).symm : E3 → E3) =ᶠ[𝓝 y] id := by
      filter_upwards [(chartAt E3 q).open_target.mem_nhds hy] with z hz
      exact (chartAt E3 q).right_inv hz
    have hcomp2 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 q) ∘ (chartAt E3 q).symm) y =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y) :=
      mfderiv_comp y
        (mdifferentiableAt_atlas (chart_mem_atlas E3 q) ((chartAt E3 q).map_target hy))
        (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q) hy)
    rw [hev2.mfderiv_eq, mfderiv_id] at hcomp2
    have h3 := congrArg (fun L => L u) hcomp2
    change u = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)
      (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y u) at h3
    rw [hu0, map_zero] at h3
    exact h3
  
  have hdetG : ∀ y ∈ (chartAt E3 q).target, (g.coeff (chartAt E3 q).symm y).det ≠ 0 := by
    intro y hy hd
    obtain ⟨v, hv0, hGv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hd
    have hx0 : (∑ i : Fin 3, v i • e i) ≠ 0 := by
      intro h
      apply hv0
      funext a
      rw [← hcomp_e v a, h]
      rfl
    have hA0 : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (∑ i : Fin 3, v i • e i) ≠ 0 :=
      fun h => hx0 (hinjG y hy _ h)
    have hpos := g.posDef ((chartAt E3 q).symm y) _ hA0
    have hrow : ∀ i, ∑ j : Fin 3, g.coeff (chartAt E3 q).symm y i j * v j = 0 := by
      intro i
      have := congrFun hGv i
      simpa [Matrix.mulVec, dotProduct] using this
    have hc : ∀ i j, g.coeff (chartAt E3 q).symm y i j =
        g.g ((chartAt E3 q).symm y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (e i))
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (e j)) := fun i j => rfl
    have hzero : g.g ((chartAt E3 q).symm y)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (∑ i : Fin 3, v i • e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (∑ i : Fin 3, v i • e i)) =
        ∑ i : Fin 3, v i * ∑ j : Fin 3, g.coeff (chartAt E3 q).symm y i j * v j := by
      simp only [hc, map_sum, map_smul, ContinuousLinearMap.sum_apply,
        ContinuousLinearMap.smul_apply, smul_eq_mul]
      simp only [Fin.sum_univ_three]
      ring
    rw [hzero] at hpos
    simp [hrow] at hpos
  
  have key : ∀ y ∈ {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U},
      g.gradInner f w ((chartAt E3 q).symm y) = ∑ i : Fin 3, ∑ j : Fin 3,
        (g.coeff (chartAt E3 q).symm y)⁻¹ i j *
          partialDeriv i (fun z => f ((chartAt E3 q).symm z)) y *
          partialDeriv j (fun z => w ((chartAt E3 q).symm z)) y := by
    rintro y ⟨hy, hyU⟩
    set p := (chartAt E3 q).symm y with hp
    set τ : E3 → E3 := fun z => chartAt E3 p ((chartAt E3 q).symm z) with hτdef
    have hΩo : IsOpen ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (chartAt E3 p).source) :=
      (chartAt E3 q).isOpen_inter_preimage_symm (chartAt E3 p).open_source
    have hyΩ : y ∈ (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (chartAt E3 p).source :=
      ⟨hy, mem_chart_source E3 p⟩
    have hτs : ContDiffOn ℝ ∞ τ
        ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (chartAt E3 p).source) := by
      have hc : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 p) (chartAt E3 p).source :=
        contMDiffOn_chart
      have hcs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 q).symm (chartAt E3 q).target :=
        contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp
        (hc.comp (hcs.mono Set.inter_subset_left) (fun z hz => hz.2))
    have hτd : DifferentiableAt ℝ τ y :=
      (hτs.contDiffAt (hΩo.mem_nhds hyΩ)).differentiableAt (by simp)
    have hev : ((chartAt E3 q).symm : E3 → M) =ᶠ[𝓝 y] ((chartAt E3 p).symm ∘ τ) := by
      filter_upwards [hΩo.mem_nhds hyΩ] with z hz
      exact ((chartAt E3 p).left_inv hz.2).symm
    have hpt : chartAt E3 p p ∈ (chartAt E3 p).target :=
      (chartAt E3 p).map_source (mem_chart_source E3 p)
    have hM1 : ∀ u : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y u =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p)
          (fderiv ℝ τ y u) := by
      intro u
      have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (τ y) :=
        mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) hpt
      rw [hev.mfderiv_eq, mfderiv_comp y hmd hτd.mdifferentiableAt, mfderiv_eq_fderiv]
      rfl
    
    have s1 : ∀ i j : Fin 3, g.coeff (chartAt E3 q).symm y i j = ∑ a : Fin 3, ∑ b : Fin 3,
        partialDeriv i (fun z => τ z a) y *
          g.coeff (chartAt E3 p).symm (chartAt E3 p p) a b *
            partialDeriv j (fun z => τ z b) y := by
      intro i j
      have hq' : (chartAt E3 p).symm (chartAt E3 p p) = p :=
        (chartAt E3 p).left_inv (mem_chart_source E3 p)
      have hgq : g.g ((chartAt E3 p).symm (chartAt E3 p p)) = g.g p := congrArg g.g hq'
      obtain ⟨D, hD⟩ : ∃ D : E3 →L[ℝ] E3,
          D = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm (chartAt E3 p p) := ⟨_, rfl⟩
      have hΦD : ∀ u : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y u =
          D (fderiv ℝ τ y u) := by
        intro u
        rw [hM1 u, hD]
        exact rfl
      have hcD : ∀ a b : Fin 3, g.coeff (chartAt E3 p).symm (chartAt E3 p p) a b
          = g.g p (D (e a)) (D (e b)) := by
        intro a b
        rw [← hgq, hD]
        rfl
      have hJ : ∀ k : Fin 3, fderiv ℝ τ y (e k)
          = ∑ d : Fin 3, partialDeriv k (fun z => τ z d) y • e d := by
        intro k
        rw [hu (fderiv ℝ τ y (e k))]
        simp only [hcompo τ y hτd]
      simp only [hcD]
      show g.g p (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (e i))
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (e j)) = _
      rw [hΦD, hΦD, hJ i, hJ j]
      simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply, ContinuousLinearMap.smul_apply,
        smul_eq_mul]
      simp only [Fin.sum_univ_three]
      ring
    
    have hinj := hinjG y hy
    
    have s3 : (Matrix.of fun a i : Fin 3 => partialDeriv i (fun z => τ z a) y).det ≠ 0 := by
      intro hdet
      obtain ⟨v, hv0, hJv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hdet
      have hw0 : fderiv ℝ τ y (∑ i : Fin 3, v i • e i) = 0 := by
        ext a
        rw [map_sum]
        simp only [map_smul]
        have := congrFun hJv a
        simp only [Matrix.mulVec, dotProduct, Matrix.of_apply, Pi.zero_apply,
          hcompo τ y hτd] at this
        simp only [WithLp.ofLp_sum, WithLp.ofLp_smul, Finset.sum_apply, Pi.smul_apply, smul_eq_mul,
          WithLp.ofLp_zero, Pi.zero_apply]
        rw [← this]
        apply Finset.sum_congr rfl
        intro i _
        ring
      have h0 : (∑ i : Fin 3, v i • e i) = 0 := by
        apply hinj
        rw [hM1, hw0]
        exact ContinuousLinearMap.map_zero _
      apply hv0
      funext a
      rw [← hcomp_e v a, h0]
      rfl
    
    have hPt : ∀ (h : M → ℝ) (W : Set M), IsOpen W → ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ h W →
        p ∈ W → ∀ i : Fin 3, partialDeriv i (fun z => h ((chartAt E3 q).symm z)) y =
          ∑ a : Fin 3, partialDeriv a (fun z => h ((chartAt E3 p).symm z)) (chartAt E3 p p) *
            (Matrix.of fun a i : Fin 3 => partialDeriv i (fun z => τ z a) y) a i := by
      intro h W hW hh hpW i
      have hWo : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' W) :=
        (chartAt E3 p).isOpen_inter_preimage_symm hW
      have hmem : chartAt E3 p p ∈ (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' W := by
        refine ⟨hpt, ?_⟩
        show (chartAt E3 p).symm (chartAt E3 p p) ∈ W
        rw [(chartAt E3 p).left_inv (mem_chart_source E3 p)]
        exact hpW
      have hhs : ContDiffOn ℝ ∞ (fun z => h ((chartAt E3 p).symm z))
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' W) := by
        have hcs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 p).symm (chartAt E3 p).target :=
          contMDiffOn_chart_symm
        exact contMDiffOn_iff_contDiffOn.mp
          (hh.comp (hcs.mono Set.inter_subset_left) (fun z hz => hz.2))
      have hhd : DifferentiableAt ℝ (fun z => h ((chartAt E3 p).symm z)) (chartAt E3 p p) :=
        (hhs.contDiffAt (hWo.mem_nhds hmem)).differentiableAt (by simp)
      have hequ : (fun z => h ((chartAt E3 q).symm z)) =ᶠ[𝓝 y]
          (fun z => h ((chartAt E3 p).symm (τ z))) := by
        filter_upwards [hΩo.mem_nhds hyΩ] with z hz
        show h ((chartAt E3 q).symm z) =
          h ((chartAt E3 p).symm (chartAt E3 p ((chartAt E3 q).symm z)))
        rw [(chartAt E3 p).left_inv hz.2]
      have e1 : partialDeriv i (fun z => h ((chartAt E3 q).symm z)) y =
          partialDeriv i (fun z => h ((chartAt E3 p).symm (τ z))) y := by
        show fderiv ℝ _ y (e i) = fderiv ℝ _ y (e i)
        rw [hequ.fderiv_eq]
      rw [e1, pd_comp (fun z => h ((chartAt E3 p).symm z)) τ y hτd hhd i]
      rfl
    have hL : g.gradInner f w p = ∑ i : Fin 3, ∑ j : Fin 3,
        (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ i j *
          partialDeriv i (fun z => f ((chartAt E3 p).symm z)) (chartAt E3 p p) *
          partialDeriv j (fun z => w ((chartAt E3 p).symm z)) (chartAt E3 p p) := rfl
    rw [hL]
    exact (grad_alg (Matrix.of fun a i : Fin 3 => partialDeriv i (fun z => τ z a) y)
      (g.coeff (chartAt E3 p).symm (chartAt E3 p p)) (g.coeff (chartAt E3 q).symm y)
      (fun a => partialDeriv a (fun z => f ((chartAt E3 p).symm z)) (chartAt E3 p p))
      (fun a => partialDeriv a (fun z => w ((chartAt E3 p).symm z)) (chartAt E3 p p))
      (fun i => partialDeriv i (fun z => f ((chartAt E3 q).symm z)) y)
      (fun i => partialDeriv i (fun z => w ((chartAt E3 q).symm z)) y)
      s3 (fun i j => s1 i j)
      (hPt f Set.univ isOpen_univ hf.contMDiffOn (Set.mem_univ _))
      (hPt w U hU hw hyU)).symm
  
  have hVo : IsOpen {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    (chartAt E3 q).isOpen_inter_preimage_symm hU
  have hGs : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 q).symm y i j)
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    fun i j => (g.smooth q i j).mono (fun y hy => hy.1)
  have hcs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 q).symm (chartAt E3 q).target :=
    contMDiffOn_chart_symm
  have hfc : ContDiffOn ℝ ∞ (fun z => f ((chartAt E3 q).symm z))
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    (contMDiffOn_iff_contDiffOn.mp (hf.comp_contMDiffOn hcs)).mono (fun y hy => hy.1)
  have hwc : ContDiffOn ℝ ∞ (fun z => w ((chartAt E3 q).symm z))
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    contMDiffOn_iff_contDiffOn.mp (hw.comp (hcs.mono (fun y hy => hy.1)) (fun y hy => hy.2))
  have hpd : ∀ (F : E3 → ℝ), ContDiffOn ℝ ∞ F
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} → ∀ i : Fin 3,
      ContinuousOn (fun y => partialDeriv i F y)
        {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    fun F hF i => (hF.continuousOn_fderiv_of_isOpen hVo (by simp)).clm_apply continuousOn_const
  have hGc : ContinuousOn (g.coeff (chartAt E3 q).symm)
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => (hGs i j).continuousOn
  have hinvM : ContinuousOn (fun y => (g.coeff (chartAt E3 q).symm y)⁻¹)
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} := by
    have h1 : ContinuousOn (fun y => (g.coeff (chartAt E3 q).symm y).det⁻¹ •
        (g.coeff (chartAt E3 q).symm y).adjugate)
        {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
      ((continuous_id.matrix_det.comp_continuousOn hGc).inv₀
        (fun y hy => hdetG y hy.1)).smul (continuous_id.matrix_adjugate.comp_continuousOn hGc)
    refine h1.congr (fun y _ => ?_)
    simp only [Matrix.inv_def, Ring.inverse_eq_inv']
  have hinv : ∀ i j : Fin 3, ContinuousOn (fun y => (g.coeff (chartAt E3 q).symm y)⁻¹ i j)
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} :=
    fun i j => (continuous_apply j).comp_continuousOn
      ((continuous_apply i).comp_continuousOn hinvM)
  have hcont : ContinuousOn (fun y => ∑ i : Fin 3, ∑ j : Fin 3,
      (g.coeff (chartAt E3 q).symm y)⁻¹ i j *
        partialDeriv i (fun z => f ((chartAt E3 q).symm z)) y *
        partialDeriv j (fun z => w ((chartAt E3 q).symm z)) y)
      {y | y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ U} := by
    apply continuousOn_finset_sum
    intro i _
    apply continuousOn_finset_sum
    intro j _
    exact ((hinv i j).mul (hpd _ hfc i)).mul (hpd _ hwc j)
  exact hcont.congr key

-- SOURCE_END: lines 200078..220162 from answer (1).lean

end PositiveMass
end
