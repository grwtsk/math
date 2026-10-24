import SourceActualWeightedPeano

/-!
The full prime-power Peano kernel and the complete signed source energy.
A compact bound below is used solely to justify fixed-scale Fubini.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFullPeanoEnergy
open MeasureTheory Set ArithmeticFunction
open SourcePairing SourceNativeReadout SourceActualWeightedPeano
open SourceRationalCompensation SourceRationalContinuousHalf
open SourceNativeDirichlet SourceNativeDirichletMoments SourceNativeDirichletFubini
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimatePrimeSmoothDefect PrimePowerDescent
noncomputable section

def sourceAtom (n : ℕ) : ℝ := vonMangoldt (n + 2) / ((n + 2 : ℕ) : ℝ) ^ 2

def sourceLog (n : ℕ) : ℝ := Real.log ((n + 2 : ℕ) : ℝ)

def fullPeanoRaw (u : ℝ) : ℝ := ∑' n : ℕ, sourceAtom n * max (sourceLog n - u) 0

def fullPeanoKernel (u : ℝ) : ℝ := fullPeanoRaw u - dirichletMoment 1 * Real.exp (-u)

def fullPeanoError (u : ℝ) : ℝ := fullPeanoRaw u - Real.exp (-u)

theorem sourceAtom_nonneg (n : ℕ) : 0 ≤ sourceAtom n := by
  exact div_nonneg (vonMangoldt_nonneg (n := n + 2)) (sq_nonneg _)

theorem sourceLog_nonneg (n : ℕ) : 0 ≤ sourceLog n :=
  Real.log_nonneg (by exact_mod_cast (show 1 ≤ n + 2 by omega))

theorem sourceAtom_summable : Summable sourceAtom := by
  unfold sourceAtom
  simpa using dirichletMoment_summable 0

theorem sourceAtom_log_summable : Summable (fun n ↦ sourceAtom n * sourceLog n) := by
  simpa [sourceAtom, sourceLog, mul_div_assoc, div_mul_eq_mul_div] using
    dirichletMoment_summable 1

theorem sourceAtom_tsum : ∑' n : ℕ, sourceAtom n = rightLineMajorant 2 := by
  rw [← dirichletMoment_zero_eq_majorant]
  simp [sourceAtom, dirichletMoment]

theorem sourceAtom_log_tsum : ∑' n : ℕ, sourceAtom n * sourceLog n = dirichletMoment 1 := by
  simp [sourceAtom, sourceLog, dirichletMoment, mul_div_assoc, div_mul_eq_mul_div]

theorem fullPeanoRaw_summable (u : ℝ) :
    Summable (fun n : ℕ ↦ sourceAtom n * max (sourceLog n - u) 0) := by
  apply Summable.of_nonneg_of_le
    (fun n ↦ mul_nonneg (sourceAtom_nonneg n) (le_max_right _ _))
    (fun n ↦ ?_)
    (sourceAtom_log_summable.add (sourceAtom_summable.mul_right |u|))
  calc
    _ ≤ sourceAtom n * (sourceLog n + |u|) := by
      apply mul_le_mul_of_nonneg_left _ (sourceAtom_nonneg n)
      exact max_le (by linarith [neg_le_abs u])
        (add_nonneg (sourceLog_nonneg n) (abs_nonneg u))
    _ = _ := by ring

theorem fullPeanoRaw_measurable : Measurable fullPeanoRaw := by
  apply measurable_of_tendsto_metrizable
    (f := fun N u ↦ ∑ n ∈ Finset.range N, sourceAtom n * max (sourceLog n - u) 0)
  · intro N
    fun_prop
  · apply tendsto_pi_nhds.mpr
    intro u
    exact (fullPeanoRaw_summable u).hasSum.tendsto_sum_nat

theorem fullPeanoRaw_bounds (u : ℝ) (hu : 0 ≤ u) :
    0 ≤ fullPeanoRaw u ∧ fullPeanoRaw u ≤ dirichletMoment 1 := by
  refine ⟨tsum_nonneg (fun n ↦ mul_nonneg (sourceAtom_nonneg n) (le_max_right _ _)), ?_⟩
  rw [← sourceAtom_log_tsum]
  apply (fullPeanoRaw_summable u).tsum_le_tsum _ sourceAtom_log_summable
  intro n
  apply mul_le_mul_of_nonneg_left _ (sourceAtom_nonneg n)
  exact max_le (by linarith) (sourceLog_nonneg n)

/-- Closed floor readout is unchanged, including every prime power. -/
theorem sourceAtom_weighted_tsum (A : ℝ) (hA : 1 ≤ A) :
    ∑' n : ℕ, sourceAtom n * weightedCorrelation A (sourceLog n) = mertensResidual A := by
  have hg : (∑' n : ℕ, vonMangoldt n / (n : ℝ) ^ 2 *
      weightedCorrelation A (Real.log n)) = closedPrimeMoment A := by
    simp_rw [inverted_coefficient_eq_source]
    apply tsum_eq_sum
    intro n hn
    exact source_coefficient_zero_outside_inventory A hA n hn
  have hs : Summable (fun n : ℕ ↦ vonMangoldt n / (n : ℝ) ^ 2 *
      weightedCorrelation A (Real.log n)) := by
    apply summable_of_ne_finset_zero (s := primePowerInventory (2 * A))
    intro n hn
    rw [inverted_coefficient_eq_source]
    exact source_coefficient_zero_outside_inventory A hA n hn
  have hfirst : (∑ n ∈ Finset.range 2, vonMangoldt n / (n : ℝ) ^ 2 *
      weightedCorrelation A (Real.log n)) = 0 := by simp [Finset.sum_range_succ]
  rw [mertensResidual_eq_closedPrimeMoment A hA, ← hg]
  rw [← hs.sum_add_tsum_nat_add 2, hfirst, zero_add]
  rfl

theorem weightedCorrelation_upper_zero (A u : ℝ) (hA : 1 ≤ A) (hu : 2 * A ≤ u) :
    weightedCorrelation A u = 0 := by
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A u (by linarith)
    (hu.trans (le_abs_self u))
  simp [weightedCorrelation, hz]

theorem weightedCorrelation_deriv_upper_zero (A u : ℝ) (hA : 1 ≤ A)
    (hu : 2 * A ≤ u) : deriv (weightedCorrelation A) u = 0 := by
  have hd := ((sourceCorrelation_contDiff A (by linarith)).differentiable
    (by norm_num) u).hasDerivAt
  have he := (((hasDerivAt_id u).const_mul 3).div_const 2).exp
  have hm := hd.mul he
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A u (by linarith)
    (hu.trans (le_abs_self u))
  have hz' := EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le
    A u (by linarith) hu
  unfold weightedCorrelation
  convert hm.deriv using 1
  · rfl
  · simp [hz, hz']

theorem weightedCorrelation_second_deriv_upper_zero (A u : ℝ) (hA : 1 ≤ A)
    (hu : 2 * A ≤ u) : deriv (deriv (weightedCorrelation A)) u = 0 := by
  have hz : ∀ v ∈ Ici u, deriv (weightedCorrelation A) v = 0 := by
    intro v hv
    exact weightedCorrelation_deriv_upper_zero A v hA (hu.trans hv)
  have hd : HasDerivWithinAt (deriv (weightedCorrelation A)) 0 (Ici u) u :=
    (hasDerivWithinAt_const u (Ici u) (0 : ℝ)).congr
      (fun v hv ↦ hz v hv) (hz u self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici u)

private theorem weightedCorrelation_ibp (A v T : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..T, (v - u) * deriv (deriv (weightedCorrelation A)) u) =
      (v - T) * deriv (weightedCorrelation A) T - v * (3 / 2) +
        weightedCorrelation A T - 1 := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := T)
    (u := fun u : ℝ ↦ v - u) (u' := fun _ ↦ (-1 : ℝ))
    (v := deriv (weightedCorrelation A)) (v' := deriv (deriv (weightedCorrelation A)))
    (fun u _ ↦ by
      convert (hasDerivAt_const u v).sub (hasDerivAt_id u) using 1 <;> first | rfl | simp)
    (fun u _ ↦ (hd.differentiable (by norm_num) u).hasDerivAt)
    (continuous_const.intervalIntegrable 0 T)
    ((hd.continuous_deriv (by norm_num)).intervalIntegrable 0 T)
  have hf := intervalIntegral.integral_deriv_eq_sub
    (fun u _ ↦ hc.differentiable (by norm_num) u)
    ((hc.continuous_deriv (by norm_num)).intervalIntegrable 0 T)
  simp only [sub_zero, weightedCorrelation_deriv_zero A hA,
    neg_one_mul, intervalIntegral.integral_neg, hf, weightedCorrelation_zero A hA] at hi
  linarith

/-- Full complementary atoms contribute their exact affine jets even past the source cutoff. -/
theorem weightedCorrelation_full_peano (A v : ℝ) (hA : 1 ≤ A) (hv : 0 ≤ v) :
    (∫ u in (0 : ℝ)..(2 * A),
      max (v - u) 0 * deriv (deriv (weightedCorrelation A)) u) =
        weightedCorrelation A v - 1 - v * (3 / 2) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  have hcont : Continuous (fun u ↦ max (v - u) 0 *
      deriv (deriv (weightedCorrelation A)) u) := by fun_prop
  by_cases hcut : v ≤ 2 * A
  · have hleft : (∫ u in (0 : ℝ)..v, max (v - u) 0 *
        deriv (deriv (weightedCorrelation A)) u) =
      ∫ u in (0 : ℝ)..v, (v - u) * deriv (deriv (weightedCorrelation A)) u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hv] at hu
      dsimp only
      rw [max_eq_left (sub_nonneg.mpr (le_trans hu.2 (by linarith)))]
    have hright : (∫ u in v..(2 * A), max (v - u) 0 *
        deriv (deriv (weightedCorrelation A)) u) = 0 := by
      calc
        _ = ∫ _u in v..(2 * A), (0 : ℝ) := by
          apply intervalIntegral.integral_congr
          intro u hu
          rw [uIcc_of_le hcut] at hu
          dsimp only
          simp [max_eq_right (sub_nonpos.mpr hu.1)]
        _ = 0 := by simp
    have hsum := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
      (hcont.intervalIntegrable 0 v) (hcont.intervalIntegrable v (2 * A))
    rw [hleft, hright, add_zero] at hsum
    rw [← hsum, weightedCorrelation_peano A v hA]
  · have hcut' : 2 * A ≤ v := le_of_not_ge hcut
    have heq : (∫ u in (0 : ℝ)..(2 * A), max (v - u) 0 *
        deriv (deriv (weightedCorrelation A)) u) =
      ∫ u in (0 : ℝ)..(2 * A), (v - u) * deriv (deriv (weightedCorrelation A)) u := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)] at hu
      dsimp only
      rw [max_eq_left (sub_nonneg.mpr (le_trans hu.2 (by linarith)))]
    rw [heq, weightedCorrelation_ibp A v (2 * A) hA,
      weightedCorrelation_deriv_upper_zero A (2 * A) hA le_rfl,
      weightedCorrelation_upper_zero A (2 * A) hA le_rfl,
      weightedCorrelation_upper_zero A v hA hcut']
    ring

theorem sourceAtom_weighted_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun n : ℕ ↦ sourceAtom n * weightedCorrelation A (sourceLog n)) := by
  have hs : Summable (fun n : ℕ ↦ vonMangoldt n / (n : ℝ) ^ 2 *
      weightedCorrelation A (Real.log n)) := by
    apply summable_of_ne_finset_zero (s := primePowerInventory (2 * A))
    intro n hn
    rw [inverted_coefficient_eq_source]
    exact source_coefficient_zero_outside_inventory A hA n hn
  exact (summable_nat_add_iff 2).2 hs

/-- Genuine fixed-scale dominated Fubini; no uniform state constant is asserted. -/
theorem fullPeanoRaw_fubini (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), fullPeanoRaw u *
      deriv (deriv (weightedCorrelation A)) u) =
    ∑' n : ℕ, sourceAtom n * (∫ u in (0 : ℝ)..(2 * A),
      max (sourceLog n - u) 0 * deriv (deriv (weightedCorrelation A)) u) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (s := Icc (0 : ℝ) (2 * A)) hcc.continuousOn
  let B := max C 0
  have hB : 0 ≤ B := le_max_right _ _
  let F : ℕ → ℝ → ℝ := fun n u ↦ sourceAtom n * max (sourceLog n - u) 0 *
    deriv (deriv (weightedCorrelation A)) u
  let b : ℕ → ℝ → ℝ := fun n _ ↦ (sourceAtom n * sourceLog n) * B
  have hb (u : ℝ) (hu : u ∈ Ioc (0 : ℝ) (2 * A)) (n : ℕ) : ‖F n u‖ ≤ b n u := by
    have hb' : ‖deriv (deriv (weightedCorrelation A)) u‖ ≤ B :=
      (hC u ⟨hu.1.le, hu.2⟩).trans (le_max_left _ _)
    dsimp only [F, b]
    rw [norm_mul, norm_mul, Real.norm_eq_abs, abs_of_nonneg (sourceAtom_nonneg n),
      Real.norm_eq_abs, abs_of_nonneg (le_max_right _ _)]
    apply mul_le_mul
      (mul_le_mul_of_nonneg_left (max_le (by linarith [hu.1]) (sourceLog_nonneg n))
        (sourceAtom_nonneg n)) hb' (norm_nonneg _)
      (mul_nonneg (sourceAtom_nonneg n) (sourceLog_nonneg n))
  have hs : Summable (fun n : ℕ ↦ (sourceAtom n * sourceLog n) * B) :=
    sourceAtom_log_summable.mul_right B
  have hsum : HasSum (fun n : ℕ ↦ ∫ u in (0 : ℝ)..(2 * A), F n u)
      (∫ u in (0 : ℝ)..(2 * A), ∑' n : ℕ, F n u) := by
    apply intervalIntegral.hasSum_integral_of_dominated_convergence b
    · intro n
      exact (show Continuous (F n) by dsimp only [F]; fun_prop).aestronglyMeasurable
    · intro n
      filter_upwards with u hu
      rw [uIoc_of_le (by linarith : 0 ≤ 2 * A)] at hu
      exact hb u hu n
    · filter_upwards with u _hu
      exact hs
    · change IntervalIntegrable
        (fun _u : ℝ ↦ ∑' n : ℕ, (sourceAtom n * sourceLog n) * B) volume 0 (2 * A)
      exact intervalIntegrable_const
    · filter_upwards with u hu
      rw [uIoc_of_le (by linarith : 0 ≤ 2 * A)] at hu
      exact (hs.of_norm_bounded (hb u hu)).hasSum
  calc
    _ = ∫ u in (0 : ℝ)..(2 * A), ∑' n : ℕ, F n u := by
      apply intervalIntegral.integral_congr
      intro u _hu
      dsimp only [F, fullPeanoRaw]
      rw [tsum_mul_right]
    _ = ∑' n : ℕ, ∫ u in (0 : ℝ)..(2 * A), F n u := hsum.tsum_eq.symm
    _ = _ := by simp_rw [F, mul_assoc, intervalIntegral.integral_const_mul]

/-- Complete finite-scale energy; all infinite complementary affine jets are retained. -/
theorem fullPeanoRaw_pairing (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), fullPeanoRaw u *
      deriv (deriv (weightedCorrelation A)) u) =
        mertensResidual A - rightLineMajorant 2 - (3 / 2) * dirichletMoment 1 := by
  rw [fullPeanoRaw_fubini A hA]
  simp_rw [weightedCorrelation_full_peano A _ hA (sourceLog_nonneg _)]
  have hw := sourceAtom_weighted_summable A hA
  have ha := sourceAtom_summable
  have hl := sourceAtom_log_summable.mul_left (3 / 2)
  calc
    _ = ∑' n : ℕ, ((sourceAtom n * weightedCorrelation A (sourceLog n) - sourceAtom n) -
        (3 / 2) * (sourceAtom n * sourceLog n)) := by
      apply tsum_congr
      intro n
      ring
    _ = _ := by
      rw [(hw.sub ha).tsum_sub hl, hw.tsum_sub ha, sourceAtom_weighted_tsum A hA,
        sourceAtom_tsum, tsum_mul_left, sourceAtom_log_tsum]

theorem fullPeanoRaw_pairing_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun u ↦ fullPeanoRaw u * deriv (deriv (weightedCorrelation A)) u)
      volume 0 (2 * A) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  have hi : IntervalIntegrable (fun u : ℝ ↦ dirichletMoment 1 *
      ‖deriv (deriv (weightedCorrelation A)) u‖) volume 0 (2 * A) :=
    (hcc.norm.const_mul (dirichletMoment 1)).intervalIntegrable 0 (2 * A)
  rw [intervalIntegrable_iff] at hi ⊢
  apply hi.mono'
    (fullPeanoRaw_measurable.aestronglyMeasurable.mul hcc.aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_uIoc] with u hu
  rw [uIoc_of_le (by linarith : 0 ≤ 2 * A)] at hu
  have hb := fullPeanoRaw_bounds u hu.1.le
  change ‖fullPeanoRaw u * deriv (deriv (weightedCorrelation A)) u‖ ≤ _
  rw [norm_mul, Real.norm_eq_abs, abs_of_nonneg hb.1]
  exact mul_le_mul_of_nonneg_right hb.2 (norm_nonneg _)

/-- The whole continuous block, with both actual boundary jets. -/
theorem smoothPeano_pairing (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) = continuousPoleHalf A - 5 / 2 := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hp (u : ℝ) : HasDerivAt (fun u : ℝ ↦ Real.exp (-u)) (-Real.exp (-u)) u := by
    convert (hasDerivAt_neg u).exp using 1
    simp
  have hi₁ := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := 2 * A)
    (u := fun u : ℝ ↦ Real.exp (-u)) (u' := fun u ↦ -Real.exp (-u))
    (v := deriv (weightedCorrelation A)) (v' := deriv (deriv (weightedCorrelation A)))
    (fun u _ ↦ hp u) (fun u _ ↦ (hd.differentiable (by norm_num) u).hasDerivAt)
    ((by fun_prop : Continuous (fun u : ℝ ↦ -Real.exp (-u))).intervalIntegrable 0 (2 * A))
    ((hd.continuous_deriv (by norm_num)).intervalIntegrable 0 (2 * A))
  have hi₂ := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := 2 * A)
    (u := fun u : ℝ ↦ Real.exp (-u)) (u' := fun u ↦ -Real.exp (-u))
    (v := weightedCorrelation A) (v' := deriv (weightedCorrelation A))
    (fun u _ ↦ hp u) (fun u _ ↦ (hc.differentiable (by norm_num) u).hasDerivAt)
    ((by fun_prop : Continuous (fun u : ℝ ↦ -Real.exp (-u))).intervalIntegrable 0 (2 * A))
    ((hc.continuous_deriv (by norm_num)).intervalIntegrable 0 (2 * A))
  have hP : (∫ u in (0 : ℝ)..(2 * A), Real.exp (-u) * weightedCorrelation A u) =
      continuousPoleHalf A := by
    rw [continuousPoleHalf_eq_interval A hA]
    apply intervalIntegral.integral_congr
    intro u _hu
    dsimp only [weightedCorrelation]
    rw [mul_comm (sourceCorrelation explicitSecondDerivative A u), ← mul_assoc,
      ← Real.exp_add, show -u + 3 * u / 2 = u / 2 by ring]
  simp only [weightedCorrelation_deriv_upper_zero A (2 * A) hA le_rfl,
    weightedCorrelation_deriv_zero A hA, neg_zero, Real.exp_zero, mul_zero, one_mul,
    neg_mul, intervalIntegral.integral_neg] at hi₁
  simp only [weightedCorrelation_upper_zero A (2 * A) hA le_rfl,
    weightedCorrelation_zero A hA, neg_zero, Real.exp_zero, mul_zero, one_mul,
    neg_mul, intervalIntegral.integral_neg, hP] at hi₂
  linarith

theorem fullPeanoKernel_pairing (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), fullPeanoKernel u *
      deriv (deriv (weightedCorrelation A)) u) = (rationalRemainderContour A).re := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  have hsm : IntervalIntegrable (fun u : ℝ ↦ dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) volume 0 (2 * A) := by
    exact (show Continuous (fun u : ℝ ↦ dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) by fun_prop).intervalIntegrable 0 (2 * A)
  simp_rw [fullPeanoKernel, sub_mul]
  rw [intervalIntegral.integral_sub (fullPeanoRaw_pairing_integrable A hA) hsm,
    fullPeanoRaw_pairing A hA]
  have hfac : (∫ u in (0 : ℝ)..(2 * A), dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) =
      dirichletMoment 1 * (continuousPoleHalf A - 5 / 2) := by
    simp_rw [mul_assoc, intervalIntegral.integral_const_mul, smoothPeano_pairing A hA]
  rw [hfac]
  have hr := mertensResidual_eq_rational A hA
  unfold rationalBaseline at hr
  linarith

/-- Smooth-block removal keeps the full signed arithmetic Peano pairing. -/
theorem fullPeanoError_pairing (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 +
      continuousPoleHalf A + (∫ u in (0 : ℝ)..(2 * A), fullPeanoError u *
        deriv (deriv (weightedCorrelation A)) u) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  have hsm : IntervalIntegrable (fun u : ℝ ↦ Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) volume 0 (2 * A) := by
    exact (show Continuous (fun u : ℝ ↦ Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) by fun_prop).intervalIntegrable 0 (2 * A)
  simp_rw [fullPeanoError, sub_mul]
  rw [intervalIntegral.integral_sub (fullPeanoRaw_pairing_integrable A hA) hsm,
    fullPeanoRaw_pairing A hA, smoothPeano_pairing A hA]
  ring

/-- The literal full kernel already exposes its exact first physical interval. -/
theorem fullPeanoRaw_eq_affine (u : ℝ) (hu : u ≤ Real.log 2) :
    fullPeanoRaw u = dirichletMoment 1 - u * rightLineMajorant 2 := by
  have hv (n : ℕ) : u ≤ sourceLog n := by
    apply hu.trans
    exact Real.log_le_log (by norm_num) (by exact_mod_cast (show 2 ≤ n + 2 by omega))
  unfold fullPeanoRaw
  simp_rw [max_eq_left (sub_nonneg.mpr (hv _)), mul_sub]
  rw [sourceAtom_log_summable.tsum_sub (sourceAtom_summable.mul_right u),
    sourceAtom_log_tsum, tsum_mul_right, sourceAtom_tsum]
  ring

theorem fullPeanoError_zero : fullPeanoError 0 = dirichletMoment 1 - 1 := by
  rw [fullPeanoError, fullPeanoRaw_eq_affine 0 (Real.log_nonneg (by norm_num))]
  simp

/-- The exact improper source pairing has the same finite carrier, including upper traces. -/
theorem fullPeano_pairing_eq_interval (A : ℝ) (hA : 1 ≤ A) (F : ℝ → ℝ) :
    (∫ u : ℝ in Ioi 0, F u * deriv (deriv (weightedCorrelation A)) u) =
    ∫ u in (0 : ℝ)..(2 * A), F u * deriv (deriv (weightedCorrelation A)) u := by
  rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2 * A)]
  apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    Ioc_subset_Ioi_self
  intro u hu
  have hh : 2 * A ≤ u := by
    have hp := hu.1
    have hn := hu.2
    simp only [mem_Ioi] at hp
    simp only [mem_Ioc, not_and, not_le] at hn
    exact (hn hp).le
  rw [weightedCorrelation_second_deriv_upper_zero A u hA hh, mul_zero]

theorem fullPeanoKernel_pairing_Ioi (A : ℝ) (hA : 1 ≤ A) :
    (∫ u : ℝ in Ioi 0, fullPeanoKernel u * deriv (deriv (weightedCorrelation A)) u) =
      (rationalRemainderContour A).re := by
  rw [fullPeano_pairing_eq_interval A hA, fullPeanoKernel_pairing A hA]

theorem fullPeanoError_pairing_Ioi (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = rightLineMajorant 2 + (3 / 2) * dirichletMoment 1 - 5 / 2 +
      continuousPoleHalf A + (∫ u : ℝ in Ioi 0, fullPeanoError u *
        deriv (deriv (weightedCorrelation A)) u) := by
  rw [fullPeano_pairing_eq_interval A hA, fullPeanoError_pairing A hA]

private theorem fullPeano_integrableOn_Ioi_of_interval (A : ℝ) (hA : 1 ≤ A) (F : ℝ → ℝ)
    (hF : IntervalIntegrable (fun u ↦ F u * deriv (deriv (weightedCorrelation A)) u)
      volume 0 (2 * A)) :
    IntegrableOn (fun u ↦ F u * deriv (deriv (weightedCorrelation A)) u) (Ioi 0) := by
  rw [← Ioc_union_Ioi_eq_Ioi (by linarith : (0 : ℝ) ≤ 2 * A)]
  apply IntegrableOn.union hF.1
  have hz : IntegrableOn (fun _u : ℝ ↦ (0 : ℝ)) (Ioi (2 * A)) := integrableOn_zero
  apply hz.congr_fun _ measurableSet_Ioi
  intro u hu
  simp [weightedCorrelation_second_deriv_upper_zero A u hA hu.le]

theorem fullPeanoKernel_pairing_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u ↦ fullPeanoKernel u * deriv (deriv (weightedCorrelation A)) u)
      (Ioi 0) := by
  apply fullPeano_integrableOn_Ioi_of_interval A hA
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  simp_rw [fullPeanoKernel, sub_mul]
  exact (fullPeanoRaw_pairing_integrable A hA).sub
    ((show Continuous (fun u : ℝ ↦ dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) by fun_prop).intervalIntegrable 0 (2 * A))

theorem fullPeanoError_pairing_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun u ↦ fullPeanoError u * deriv (deriv (weightedCorrelation A)) u)
      (Ioi 0) := by
  apply fullPeano_integrableOn_Ioi_of_interval A hA
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  simp_rw [fullPeanoError, sub_mul]
  exact (fullPeanoRaw_pairing_integrable A hA).sub
    ((show Continuous (fun u : ℝ ↦ Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) by fun_prop).intervalIntegrable 0 (2 * A))

end
end FormalResearch.RiemannHypothesis.SourceFullPeanoEnergy
