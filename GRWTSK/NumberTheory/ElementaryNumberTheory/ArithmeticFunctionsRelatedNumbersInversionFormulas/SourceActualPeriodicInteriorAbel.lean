import SourceActualPeriodicColumnPrimitive

/-!
The adjusted original mixed interior is decomposed with genuine finite source
correlation cell weights. The actual period mean and both adjusted boundary
traces remain; finite Abel exposes the signed periodic primitive and all weight
differences. No physical interpolation or independent-main match is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPeriodicInteriorAbel
open MeasureTheory Set
open scoped BigOperators Interval
open SourceActualPeriodicColumnPrimitive SourceActualAdjointAbelPrimitives
open SourceActualLogColumnTransport SourceActualCenteredHalfZetaReduction
open RootActualDoubleAdjointTransfer RootActualCriticalColumnTransfer
open RootActualHomogeneousColumnCancellation RootActualCovariantWorkKernel
open SourceActualDoubleMixedKernel SourceActualCovariantKernel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering Realization
open RH16IndependentChallengeNext
noncomputable section

/-- The actual weight uses the true source odd-jet test on its preceding closed log cell. -/
def actualPeriodicColumnEndpointWeight (A t : ℝ) (M : ℕ) : ℝ :=
  ∫ s in Real.log ((M : ℝ) - 1)..Real.log (M : ℝ), actualTwistedTimeDensity A t s

/-- Finite Abel retains its actual endpoint values and every cell weight difference. -/
def actualPeriodicColumnAbelRow (A t : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  actualSignedPeriodicPrimitive U K * actualPeriodicColumnEndpointWeight A t K -
    actualSignedPeriodicPrimitive U a * actualPeriodicColumnEndpointWeight A t a -
    ∑ M ∈ Finset.Ico a K, actualSignedPeriodicPrimitive U M *
      (actualPeriodicColumnEndpointWeight A t (M + 1) - actualPeriodicColumnEndpointWeight A t M)

/-- Both actual adjusted column traces remain with the source first twisted derivative. -/
def actualPeriodicAdjustedColumnBoundary (A t : ℝ) : ℝ :=
  actualCriticalAdjustedColumnPrimitive A (actualColumnUpper A) *
      actualTwistedTimeDensity A t (actualColumnUpper A) -
    actualCriticalAdjustedColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) *
      actualTwistedTimeDensity A t (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))

/-- The complete decomposed density retains mean, periodic row and the original time primitive. -/
def actualPeriodicInteriorDensity (A t : ℝ) : ℝ :=
  actualAdjointTimePrimitive A 0 t *
    (actualPeriodicAdjustedColumnBoundary A t -
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          actualTwistedTimeDensity A t s) - actualPeriodicColumnAbelRow A t)

private theorem jet_contDiff_one {A : ℝ} (hA : 0 < A) (n : ℕ) (hn : n ≤ 3) :
    ContDiff ℝ 1 (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A)) := by
  rw [iteratedDeriv_eq_iterate]
  exact ContDiff.iterate_deriv' 1 n ((actual_correlation_contDiff_four A hA).of_le
    (by exact_mod_cast (by omega : 1 + n ≤ 4)))

private theorem twisted_contDiff {A : ℝ} (hA : 0 < A) (t : ℝ) :
    ContDiff ℝ 1 (actualTwistedTimeDensity A t) := by
  have h1 := jet_contDiff_one hA 1 (by norm_num)
  have h3 := jet_contDiff_one hA 3 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

private theorem covariant_continuous {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Continuous (fun s => covariantMixedDerivative (actualLogMixedDensity A) t s) := by
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2 (by norm_num)
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4 (by norm_num)
  simp_rw [actual_covariant_ordinary_work_kernel A hA]
  fun_prop

private theorem column_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hua : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by simp
  have hak : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_column_window_nonempty hA
  exact ⟨Real.log_le_log hU hua, Real.log_le_log (by positivity) hak⟩

private theorem weight_succ (A t : ℝ) (M : ℕ) :
    actualPeriodicColumnEndpointWeight A t (M + 1) =
      ∫ s in Real.log (M : ℝ)..Real.log ((M : ℝ) + 1), actualTwistedTimeDensity A t s := by
  unfold actualPeriodicColumnEndpointWeight
  simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right]

private theorem mean_cell_decomposition {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualLogColumnPrefix A s * actualTwistedTimeDensity A t s) =
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          actualTwistedTimeDensity A t s) +
      ∑ M ∈ Finset.Ico (vaughanCutoff A + 1)
          (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        ((∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n) -
          actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
            actualPeriodicColumnEndpointWeight A t (M + 1) := by
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  have hK : a ≤ K := actual_column_window_nonempty hA
  have hT := (twisted_contDiff (by linarith : 0 < A) t).continuous
  have h := actual_finite_log_prefix_transport A K hK (actualTwistedTimeDensity A t) hT
  have hs := intervalIntegral.sum_integral_adjacent_intervals_Ico (μ := volume)
    (a := fun M : ℕ => Real.log (M : ℝ)) hK
    (fun M _ => hT.intervalIntegrable _ _)
  change (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.log (K : ℝ),
    actualLogColumnPrefix A s * actualTwistedTimeDensity A t s) = _
  rw [← h]
  change _ = actualCenteredPrefixPeriodMean U *
    (∫ s in Real.log (a : ℝ)..Real.log (K : ℝ), actualTwistedTimeDensity A t s) + _
  simp only [Nat.cast_add, Nat.cast_one] at hs
  rw [← hs, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro M _
  rw [weight_succ A t M]
  ring

/-- The actual source prefix integral equals its retained mean and finite Abel row. -/
theorem actual_prefix_T_eq_mean_add_abel_row {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualLogColumnPrefix A s * actualTwistedTimeDensity A t s) =
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
          actualTwistedTimeDensity A t s) + actualPeriodicColumnAbelRow A t := by
  rw [mean_cell_decomposition hA t]
  have h := actual_centered_prefix_finite_abel (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  simpa only [actualPeriodicColumnAbelRow] using congrArg
    (fun x : ℝ => actualCenteredPrefixPeriodMean (vaughanCutoff A) *
      (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualTwistedTimeDensity A t s) + x) h

/-- Every periodic divisor remains in the actual finite correlation-weighted Fubini inventory. -/
theorem actualPeriodicColumnAbelRow_eq_divisor_fubini {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualPeriodicColumnAbelRow A t =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (ArithmeticFunction.moebius d : ℝ) *
        ∑ M ∈ Finset.Ico (vaughanCutoff A + 1)
            (sourceKernelCutoff A / (vaughanCutoff A + 1)),
          actualDivisorPeriodicResidual d M * actualPeriodicColumnEndpointWeight A t (M + 1) := by
  have ha := actual_centered_prefix_finite_abel (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  have hf := actual_centered_prefix_finite_fubini (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (fun M => actualPeriodicColumnEndpointWeight A t (M + 1))
  exact (show _ = actualPeriodicColumnAbelRow A t from ha).symm.trans hf

/-- The actual source cell inventory has a proven endpoint and finite-variation estimate. -/
theorem actualPeriodicColumnAbelRow_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |actualPeriodicColumnAbelRow A t| ≤
      ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
        (|actualPeriodicColumnEndpointWeight A t
            (sourceKernelCutoff A / (vaughanCutoff A + 1))| +
          |actualPeriodicColumnEndpointWeight A t (vaughanCutoff A + 1)| +
          ∑ M ∈ Finset.Ico (vaughanCutoff A + 1)
              (sourceKernelCutoff A / (vaughanCutoff A + 1)),
            |actualPeriodicColumnEndpointWeight A t (M + 1) -
              actualPeriodicColumnEndpointWeight A t M|) := by
  have ha := actual_centered_prefix_finite_abel (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  have hh := actual_centered_prefix_finite_abel_abs_le (vaughanCutoff A) (vaughanCutoff A + 1)
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (vaughanCutoff_pos A hA) (by omega)
    (actual_column_window_nonempty hA) (fun M => actualPeriodicColumnEndpointWeight A t M)
  rw [ha] at hh
  simpa only [actualPeriodicColumnAbelRow] using hh

private theorem adjusted_inner_eq_original_hom {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s) =
      (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualAdjointColumnPrimitive A s * covariantMixedDerivative (actualLogMixedDensity A) t s) +
      2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
        (Real.exp (actualColumnUpper A / 2) * actualTwistedTimeDensity A t (actualColumnUpper A) -
          Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) *
            actualTwistedTimeDensity A t (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
  obtain ⟨hl, hc⟩ := column_orders hA
  have hQ := (actualAdjointColumnPrimitive_absolutelyContinuous hA hl hc).continuousOn
  rw [uIcc_of_le hc] at hQ
  have hiQ : IntervalIntegrable (fun s => actualAdjointColumnPrimitive A s *
      covariantMixedDerivative (actualLogMixedDensity A) t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) :=
    (hQ.intervalIntegrable_of_Icc hc).mul_continuousOn
    (covariant_continuous (by linarith : 0 < A) t).continuousOn
  have hiE : IntervalIntegrable (fun s =>
      2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (s / 2) *
        covariantMixedDerivative (actualLogMixedDensity A) t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) := by
    exact ((by fun_prop : Continuous (fun s : ℝ =>
      2 * actualCenteredHalfZetaMain (vaughanCutoff A) * Real.exp (s / 2))).mul
        (covariant_continuous (by linarith : 0 < A) t)).intervalIntegrable _ _
  have he : (fun s => actualCriticalAdjustedColumnPrimitive A s *
      covariantMixedDerivative (actualLogMixedDensity A) t s) =
      (fun s => actualAdjointColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s +
        2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
          (Real.exp (s / 2) * covariantMixedDerivative (actualLogMixedDensity A) t s)) := by
    funext s
    unfold actualCriticalAdjustedColumnPrimitive
    ring
  rw [he, intervalIntegral.integral_add hiQ (by simpa only [mul_assoc] using hiE),
    intervalIntegral.integral_const_mul,
    actualHomogeneousColumnInner_eq_boundary (by linarith : 0 < A)]

/-- The original adjusted inner work retains both boundaries, mean and signed periodic row. -/
theorem actual_adjusted_inner_eq_mean_periodic {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s) =
      actualPeriodicAdjustedColumnBoundary A t -
        actualCenteredPrefixPeriodMean (vaughanCutoff A) *
          (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
            actualTwistedTimeDensity A t s) - actualPeriodicColumnAbelRow A t := by
  obtain ⟨hl, hc⟩ := column_orders hA
  have h := actual_column_covariant_abel hA hl hc (actualTwistedTimeDensity A t)
    (twisted_contDiff (by linarith : 0 < A) t)
  simp_rw [actualTwistedTimeDensity_column_deriv (by linarith : 0 < A)] at h
  rw [adjusted_inner_eq_original_hom hA t]
  rw [actual_prefix_T_eq_mean_add_abel_row hA t] at h
  unfold actualPeriodicAdjustedColumnBoundary actualCriticalAdjustedColumnPrimitive
  rw [actualAdjointColumnPrimitive_at_upper]
  nlinarith

private theorem time_orders {A : ℝ} (hA : 1 ≤ A) :
    actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  exact Real.log_le_log hU (by exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA)

private theorem twisted_time_continuous {A : ℝ} (hA : 0 < A) (s : ℝ) :
    Continuous (fun t => actualTwistedTimeDensity A t s) := by
  have h1 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 1 (by norm_num)
  have h3 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 3 (by norm_num)
  unfold actualTwistedTimeDensity
  fun_prop

/-- The entire decomposed signed density is genuinely integrable before its outer integral. -/
theorem actualPeriodicInteriorDensity_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (actualPeriodicInteriorDensity A) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  let l := actualTimeLower A
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  let c := actualColumnUpper A
  let P := actualAdjointTimePrimitive A 0
  let Q := actualAdjointColumnPrimitive A
  let J := covariantMixedDerivative (actualLogMixedDensity A)
  have ht : l ≤ b := time_orders hA
  have hc : a ≤ c := (column_orders hA).2
  have hPQ : IntervalIntegrable (fun t => P t * ∫ s in a..c, Q s * J t s) volume l b := by
    have hi := actualAdjointInteriorBox_integrable hA
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le ht]
    simpa only [l, b, a, c, P, Q, J, IntegrableOn,
      intervalIntegral.integral_of_le hc, integral_const_mul] using hi.integral_prod_left
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  have hhom : Continuous (fun t => 2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
      (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a)) := by
    exact (((twisted_time_continuous (by linarith : 0 < A) c).const_mul _).sub
      ((twisted_time_continuous (by linarith : 0 < A) a).const_mul _)).const_mul _
  have hiH : IntervalIntegrable (fun t => P t *
      (2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
        (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
          Real.exp (a / 2) * actualTwistedTimeDensity A t a))) volume l b :=
    (hp.intervalIntegrable_of_Icc ht).mul_continuousOn hhom.continuousOn
  apply (hPQ.add hiH).congr_uIoo
  intro t _
  change P t * (∫ s in a..c, Q s * J t s) + P t *
    (2 * actualCenteredHalfZetaMain (vaughanCutoff A) *
      (Real.exp (c / 2) * actualTwistedTimeDensity A t c -
        Real.exp (a / 2) * actualTwistedTimeDensity A t a)) = actualPeriodicInteriorDensity A t
  have h := adjusted_inner_eq_original_hom hA t
  rw [actual_adjusted_inner_eq_mean_periodic hA t] at h
  unfold actualPeriodicInteriorDensity
  change _ = P t * _
  rw [h]
  ring

/-- The full source interior is the same combined signed density, with no termwise deletion. -/
theorem actual_adjusted_interior_eq_mean_periodic {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalAdjustedInterior A =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualPeriodicInteriorDensity A t := by
  unfold actualCriticalAdjustedInterior actualPeriodicInteriorDensity
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only
  have hf : (fun s => actualAdjointTimePrimitive A 0 t *
      actualCriticalAdjustedColumnPrimitive A s *
        covariantMixedDerivative (actualLogMixedDensity A) t s) =
      (fun s => actualAdjointTimePrimitive A 0 t *
        (actualCriticalAdjustedColumnPrimitive A s *
          covariantMixedDerivative (actualLogMixedDensity A) t s)) := by
    funext s
    ring
  rw [hf, intervalIntegral.integral_const_mul, actual_adjusted_inner_eq_mean_periodic hA t]

end
end FormalResearch.RiemannHypothesis.SourceActualPeriodicInteriorAbel
