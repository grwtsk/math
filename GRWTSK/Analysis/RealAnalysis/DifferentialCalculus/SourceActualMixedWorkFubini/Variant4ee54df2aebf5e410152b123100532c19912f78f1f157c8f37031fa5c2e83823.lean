import SourceJointMangoldtWork
import SourceMixedCurvatureCross
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Actual signed mixed-work Fubini preparation

PARTIAL, UNCOMPILED proof-text checkpoint. The signed error is proved integrable
after its actual exponential weight. Product integrability is constructed on a
finite box and extended in the source variable using the AE time-window carrier.
The cell Fubini identity and reflected mixed kernel have complete proof text.
The final J-prime/FTC/finite-exchange assembly remains outside this checkpoint.
No final public work-factorization theorem or new root is asserted here.

The two profile rows remain independent. No derivative alias, positivity,
uniform work estimate, integrability assumption on the actual error, or replacement
main term is introduced. PRIVATE34 and the uncompiled finite cross preparation
are separately graded prerequisites, not accepted-main imports.

AI attribution: OpenAI Codex proof-text preparation; native execution is held.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini

open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceMangoldtAbel SourceCorrelationCurvature SourceMixedCurvatureCross
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

private def errorExp (t : ℝ) : ℝ := mangoldtLogError t * Real.exp (t / 2)

private def cellKernel (r : ℝ → ℝ) (p : (ℝ × ℝ) × ℝ) : ℝ :=
  errorExp p.1.1 * r (p.2 - p.1.1) *
    (r (p.2 + Real.log p.1.2) / (p.1.2 * Real.sqrt p.1.2))

private theorem errorExp_intervalIntegrable (l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable errorExp volume l b := by
  let P : ℝ → ℝ := fun t => 2 * Real.exp (t / 2)
  have hp : ContDiff ℝ 1 P := by
    dsimp only [P]
    fun_prop
  have hd (t : ℝ) : deriv P t = Real.exp (t / 2) := by
    have h := (((hasDerivAt_id t).div_const 2).exp).const_mul 2
    convert h.deriv using 1 <;> dsimp only [P, id_eq] <;> ring
  have h := mangoldtLogError_mul_deriv_intervalIntegrable l b hlb P hp
  simpa only [errorExp, hd] using h

private theorem source_tsupport_subset {A : ℝ} (hA : 0 < A) :
    tsupport (normalizedTest explicitSecondDerivative A) ⊆ Icc (-A) A := by
  apply closure_minimal _ isClosed_Icc
  intro x hx
  by_contra hnot
  have habs : A ≤ |x| := by
    by_cases hleft : -A ≤ x
    · have hright : A < x := lt_of_not_ge (fun h => hnot ⟨hleft, h⟩)
      exact hright.le.trans (le_abs_self x)
    · have hleft' : x < -A := lt_of_not_ge hleft
      have h := neg_le_abs x
      linarith
  exact hx (normalizedTest_zero_of_le_abs A x hA habs)

private theorem deriv_source_tsupport_subset {A : ℝ} (hA : 0 < A) :
    tsupport (deriv (normalizedTest explicitSecondDerivative A)) ⊆ Icc (-A) A :=
  tsupport_deriv_subset.trans (source_tsupport_subset hA)

private theorem row_vanishes_outside_time_box
    (r : ℝ → ℝ) {A l b t v : ℝ} (hs : tsupport r ⊆ Icc (-A) A)
    (ht : t ∈ Ioc l b) (hv : v ∉ Icc (l - A) (b + A)) : r (v - t) = 0 := by
  by_contra hr
  have hi := hs (subset_tsupport r hr)
  apply hv
  exact ⟨by linarith [ht.1], by linarith [ht.2]⟩

private theorem cellKernel_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (cellKernel r)
      (((volume.restrict (Ioc l b)).prod
        (volume.restrict (Ioc k (k + 1)))).prod volume) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  let V := Icc (l - A) (b + A)
  let μv := volume.restrict V
  let clamp : ℝ → ℝ := fun u => max k u
  let g : (ℝ × ℝ) × ℝ → ℝ := fun p =>
    r (p.2 - p.1.1) * r (p.2 + Real.log (clamp p.1.2)) /
      (clamp p.1.2 * Real.sqrt (clamp p.1.2))
  have hcl : Continuous clamp := continuous_const.max continuous_id
  have hpos (u : ℝ) : 0 < clamp u := hk.trans_le (le_max_left _ _)
  have hlog : Continuous (fun u => Real.log (clamp u)) :=
    hcl.log (fun u => (hpos u).ne')
  have hg : Continuous g := by
    apply Continuous.div
    · dsimp only [g]
      fun_prop
    · exact (hcl.comp (continuous_snd.comp continuous_fst)).mul
        ((hcl.comp (continuous_snd.comp continuous_fst)).sqrt)
    · intro p
      exact mul_ne_zero (hpos p.1.2).ne' (Real.sqrt_ne_zero'.mpr (hpos p.1.2))
  let box := (Icc l b ×ˢ Icc k (k + 1)) ×ˢ V
  have hbox : IsCompact box := (isCompact_Icc.prod isCompact_Icc).prod isCompact_Icc
  obtain ⟨C, hC⟩ := hbox.exists_bound_of_continuousOn hg.continuousOn
  have hcarrier : ∀ᵐ p ∂(μt.prod μu).prod μv,
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ V := by
    simp only [μt, μu, μv, Measure.prod_restrict]
    exact ae_restrict_mem ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_Icc)
  have hbound : ∀ᵐ p ∂(μt.prod μu).prod μv, ‖g p‖ ≤ C := by
    filter_upwards [hcarrier] with p hp
    exact hC p ⟨⟨⟨hp.1.1.1.le, hp.1.1.2⟩,
      ⟨hp.1.2.1.le, hp.1.2.2⟩⟩, hp.2⟩
  have herror : Integrable errorExp μt := (errorExp_intervalIntegrable l b hlb).1
  have hbase := (herror.comp_fst μu).comp_fst μv
  have hi : Integrable (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      ((μt.prod μu).prod μv) :=
    hbase.mul_bdd hg.aestronglyMeasurable hbound
  have hiOn : IntegrableOn (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      (univ ×ˢ V) ((μt.prod μu).prod volume) := by
    rw [IntegrableOn, ← Measure.prod_restrict, Measure.restrict_univ]
    exact hi
  have hcarrierFull : ∀ᵐ p ∂(μt.prod μu).prod volume,
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ (univ : Set ℝ) := by
    simp only [μt, μu, Measure.prod_restrict, Measure.restrict_prod_eq_prod_univ]
    exact ae_restrict_mem ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_univ)
  have hiFull : Integrable (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      ((μt.prod μu).prod volume) := by
    apply hiOn.integrable_of_ae_notMem_eq_zero
    filter_upwards [hcarrierFull] with p hp hout
    have hv : p.2 ∉ V := by simpa only [mem_prod, mem_univ, true_and] using hout
    have hz := row_vanishes_outside_time_box r hs hp.1.1 hv
    simp only [g, hz, zero_mul, zero_div, mul_zero]
  apply hiFull.congr
  filter_upwards [hcarrierFull] with p hp
  have hu : clamp p.1.2 = p.1.2 := max_eq_right hp.1.2.1.le
  dsimp only [cellKernel, g]
  rw [hu]
  ring

private theorem cell_fubini_factorization
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))) =
      ∫ v : ℝ, (∫ t in l..b, errorExp t * r (v - t)) *
        (∫ u in k..(k + 1), r (v + Real.log u) / (u * Real.sqrt u)) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  have hf := cellKernel_integrable r hc hlb hk hs
  have hout := integral_prod
    (fun z : ℝ × ℝ => ∫ v : ℝ, cellKernel r (z, v)) hf.integral_prod_left
  have hswap := integral_integral_swap
    (f := fun z : ℝ × ℝ => fun v : ℝ => cellKernel r (z, v)) hf
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  change (∫ t ∂μt, ∫ u ∂μu, ∫ v : ℝ, cellKernel r ((t, u), v)) =
    ∫ v : ℝ, (∫ t ∂μt, errorExp t * r (v - t)) *
      (∫ u ∂μu, r (v + Real.log u) / (u * Real.sqrt u))
  rw [← hout, hswap]
  apply integral_congr_ae
  filter_upwards [] with v
  exact integral_prod_mul
    (fun t : ℝ => errorExp t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

private theorem actual_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * normalizedTest explicitSecondDerivative A (v - t) *
        (normalizedTest explicitSecondDerivative A (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * normalizedTest explicitSecondDerivative A (v - t)) *
          (∫ u in k..(k + 1), normalizedTest explicitSecondDerivative A (v + Real.log u) /
            (u * Real.sqrt u)) :=
  cell_fubini_factorization _ (normalizedTest_contDiff A hA).continuous
    hlb hk (source_tsupport_subset hA)

private theorem actual_deriv_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        (deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t)) *
          (∫ u in k..(k + 1),
            deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
              (u * Real.sqrt u)) :=
  cell_fubini_factorization _ ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num))
    hlb hk (deriv_source_tsupport_subset hA)

private theorem reflected_mixed_kernel_eq_negative_products
    {A : ℝ} (hA : 0 < A) (t u : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
        sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4 =
      -(∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u)) -
      (1 / 4 : ℝ) * (∫ v : ℝ, normalizedTest explicitSecondDerivative A (v - t) *
        normalizedTest explicitSecondDerivative A (v + Real.log u)) := by
  have h := actual_mixed_curvature_finite_cross_eq_neg_products
    ({()} : Finset Unit) ({()} : Finset Unit) (fun _ => (1 : ℝ))
    (fun _ => Real.log u) (fun _ => (1 : ℝ)) (fun _ => -t) hA
  simpa only [Finset.sum_singleton, one_mul, add_neg_eq_sub, sub_neg_eq_add,
    add_comm, mul_comm] using h

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini
