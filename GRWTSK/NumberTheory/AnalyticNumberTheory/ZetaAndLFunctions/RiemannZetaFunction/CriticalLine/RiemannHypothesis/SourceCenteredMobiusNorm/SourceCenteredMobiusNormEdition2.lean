import SourceVaughanHankel
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Actual centered reflected-profile norm from finite prefix cancellation

Research candidate; local kernel checks and maintained acceptance are separate gates.
The recorded Vaughan review adapter retains its unmerged prerequisite scope.
Every translate uses the same actual normalized source and the original (U,N] inventory.
Only the absolute norm of that signed row is bounded; the signed joint witness remains open.

AI attribution: prepared with OpenAI Codex; native verification is recorded separately.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceCenteredMobiusNorm

open MeasureTheory Filter Set ArithmeticFunction
open scoped BigOperators InnerProductSpace
open SourcePairing SourceHankelReflection SourceVaughanHankel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization EstimateCorrelation
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

private def realSource (A : ℝ) (hp : 0 < A) : Lp ℝ 2 (volume : Measure ℝ) :=
  reflectedL2 A hp {1} (fun _ => 1)

private theorem realSource_coe (A : ℝ) (hp : 0 < A) :
    realSource A hp =ᵐ[volume] normalizedTest explicitSecondDerivative A := by
  filter_upwards [(reflectedProfile_memLp hp {1} (fun _ => 1)).coeFn_toLp] with x hx
  change ((reflectedProfile_memLp hp {1} (fun _ => 1)).toLp _) x = _
  rw [hx]
  simp [reflectedProfile]

private theorem realSource_norm {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) :
    ‖realSource A hp‖ = 1 := by
  have hs : ‖realSource A hp‖ ^ 2 = 1 := by
    change ‖reflectedL2 A hp {1} (fun _ => 1)‖ ^ 2 = 1
    rw [reflectedL2_norm_sq_eq_integral]
    simpa only [reflectedProfile, Finset.sum_singleton, Nat.cast_one,
      Real.log_one, add_zero, one_mul] using normalized_square_integral A hA
  nlinarith [norm_nonneg (realSource A hp)]

private def shift (A : ℝ) (hp : 0 < A) (u : ℝ) : Lp ℝ 2 (volume : Measure ℝ) :=
  Lp.compMeasurePreserving (fun x : ℝ => x + u)
    (measurePreserving_add_right volume u) (realSource A hp)

private theorem shift_coe (A : ℝ) (hp : 0 < A) (u : ℝ) :
    shift A hp u =ᵐ[volume] fun x => normalizedTest explicitSecondDerivative A (x + u) := by
  filter_upwards [Lp.coeFn_compMeasurePreserving (realSource A hp)
    (measurePreserving_add_right volume u),
    (measurePreserving_add_right volume u).quasiMeasurePreserving.ae
      (realSource_coe A hp)] with x hx hq
  exact hx.trans hq

private theorem shift_norm {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) (u : ℝ) :
    ‖shift A hp u‖ = 1 := by
  simpa only [shift, Lp.norm_compMeasurePreserving] using realSource_norm hA hp

private theorem shift_inner (A : ℝ) (hp : 0 < A) (a b : ℝ) :
    ⟪shift A hp a, shift A hp b⟫_ℝ =
      sourceCorrelation explicitSecondDerivative A (b - a) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
        normalizedTest explicitSecondDerivative A (x + b) := by
      apply integral_congr_ae
      filter_upwards [shift_coe A hp a, shift_coe A hp b] with x ha hb
      rw [ha, hb, Real.inner_apply]
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + b) *
        normalizedTest explicitSecondDerivative A (x + b - (b - a)) := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [show x + b - (b - a) = x + a by ring]
      ring
    _ = _ := integral_add_right_eq_self
      (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (b - a))) b

private theorem correlation_deriv_zero (A : ℝ) (hp : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd := hc.unique hn
  linarith

private theorem shift_sub_norm_le {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) (a b : ℝ) :
    ‖shift A hp a - shift A hp b‖ ≤ 5 * |b - a| / A := by
  have ht := sourceCorrelation_linear_taylor_bound hA 0 (b - a)
  rw [zero_add, actual_correlation_at_zero A hA, correlation_deriv_zero A hp,
    mul_zero, sub_zero] at ht
  have hs := norm_sub_sq_real (shift A hp a) (shift A hp b)
  rw [shift_norm hA hp a, shift_norm hA hp b, shift_inner A hp a b] at hs
  have hk : 162826 / (7623 * A ^ 2) ≤ (25 : ℝ) / A ^ 2 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    nlinarith [sq_nonneg A]
  have ht' := (abs_le.mp ht).1
  have hk' := mul_le_mul_of_nonneg_right hk (sq_nonneg (b - a))
  have hsq : ‖shift A hp a - shift A hp b‖ ^ 2 ≤ 25 / A ^ 2 * (b - a) ^ 2 := by
    nlinarith
  have he : (5 * |b - a| / A) ^ 2 = 25 / A ^ 2 * (b - a) ^ 2 := by
    rw [div_pow, mul_pow, sq_abs]
    ring
  rw [← he] at hsq
  have hn : 0 ≤ 5 * |b - a| / A := by positivity
  nlinarith [norm_nonneg (shift A hp a - shift A hp b)]

private def atom (A : ℝ) (hp : 0 < A) (n : ℕ) : Lp ℝ 2 (volume : Measure ℝ) :=
  (1 / Real.sqrt (n : ℝ)) • shift A hp (Real.log (n : ℝ))

private theorem atom_norm {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) (n : ℕ) :
    ‖atom A hp n‖ = 1 / Real.sqrt (n : ℝ) := by
  rw [atom, norm_smul, Real.norm_eq_abs, abs_of_nonneg (by positivity),
    shift_norm hA hp, mul_one]

private theorem log_step_le {n : ℕ} (hn : 1 ≤ n) :
    (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) /
      Real.sqrt ((n + 1 : ℕ) : ℝ) ≤
        2 * (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hm0 : 0 < ((n + 1 : ℕ) : ℝ) := by positivity
  have ha := Real.sqrt_pos.2 hn0
  have hb := Real.sqrt_pos.2 hm0
  have hq : (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ)) ^ 2 =
      ((n + 1 : ℕ) : ℝ) / (n : ℝ) := by
    rw [div_pow, Real.sq_sqrt hm0.le, Real.sq_sqrt hn0.le]
  have hl := Real.log_le_sub_one_of_pos (div_pos hb ha)
  have he : Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) =
      2 * Real.log (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ)) := by
    rw [← Real.log_div hm0.ne' hn0.ne', ← hq, Real.log_pow]
    norm_num only [Nat.cast_ofNat]
  apply (div_le_iff₀ hb).2
  rw [he]
  have hr : (2 * (1 / Real.sqrt (n : ℝ) -
      1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) * Real.sqrt ((n + 1 : ℕ) : ℝ) =
      2 * (Real.sqrt ((n + 1 : ℕ) : ℝ) / Real.sqrt (n : ℝ) - 1) := by
    field_simp [ha.ne', hb.ne']
  rw [hr]
  linarith

private theorem atom_step_norm_le {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    ‖atom A hp n - atom A hp (n + 1)‖ ≤
      (1 + 10 / A) *
        (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hnm : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  have hd : 0 ≤ 1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ) :=
    sub_nonneg.mpr (one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0)
      (Real.sqrt_le_sqrt hnm))
  have hl : 0 ≤ Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) :=
    sub_nonneg.mpr (Real.log_le_log hn0 hnm)
  have hs := shift_sub_norm_le hA hp (Real.log (n : ℝ)) (Real.log ((n + 1 : ℕ) : ℝ))
  rw [abs_of_nonneg hl] at hs
  have he : atom A hp n - atom A hp (n + 1) =
      (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
        shift A hp (Real.log (n : ℝ)) +
      (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
        (shift A hp (Real.log (n : ℝ)) - shift A hp (Real.log ((n + 1 : ℕ) : ℝ))) := by
    simp only [atom, sub_smul, smul_sub]
    abel
  rw [he]
  calc
    _ ≤ ‖(1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
          shift A hp (Real.log (n : ℝ))‖ +
        ‖(1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) •
          (shift A hp (Real.log (n : ℝ)) -
            shift A hp (Real.log ((n + 1 : ℕ) : ℝ)))‖ := norm_add_le _ _
    _ ≤ (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) +
        (1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) *
          (5 * (Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) / A) := by
      simp only [norm_smul, Real.norm_eq_abs, abs_of_nonneg hd,
        abs_of_nonneg (by positivity : 0 ≤ 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)),
        shift_norm hA hp, mul_one]
      exact add_le_add le_rfl (mul_le_mul_of_nonneg_left hs
        (by positivity : 0 ≤ 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)))
    _ = (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) +
        (5 / A) * ((Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)) /
          Real.sqrt ((n + 1 : ℕ) : ℝ)) := by ring
    _ ≤ (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) +
        (5 / A) * (2 * (1 / Real.sqrt (n : ℝ) -
          1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) := by
      exact add_le_add le_rfl (mul_le_mul_of_nonneg_left (log_step_le hn)
        (by positivity : 0 ≤ 5 / A))
    _ = _ := by ring

private theorem finite_abel (b : ℕ → ℝ) (v : ℕ → Lp ℝ 2 (volume : Measure ℝ))
    (U N : ℕ) (hUN : U ≤ N) :
    (∑ n ∈ Finset.Ioc U N, b n • v n) =
      (∑ n ∈ Finset.Ioc U N, b n) • v N +
        ∑ n ∈ Finset.Ico (U + 1) N,
          (∑ j ∈ Finset.Ioc U n, b j) • (v n - v (n + 1)) := by
  induction N, hUN using Nat.le_induction with
  | base => simp
  | succ N hUN ih =>
    by_cases hNU : N = U
    · subst N
      simp [Nat.Ioc_succ_singleton]
    · have hU1 : U + 1 ≤ N := by omega
      rw [Finset.sum_Ioc_succ_top hUN, ih, Finset.sum_Ioc_succ_top hUN,
        Finset.sum_Ico_succ_top hU1]
      simp only [add_smul, smul_sub]
      abel

private theorem inverse_sqrt_telescope (L N : ℕ) (hLN : L ≤ N) :
    (∑ n ∈ Finset.Ico L N,
      (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) =
        1 / Real.sqrt (L : ℝ) - 1 / Real.sqrt (N : ℝ) := by
  induction N, hLN using Nat.le_induction with
  | base => simp
  | succ N hLN ih =>
    rw [Finset.sum_Ico_succ_top hLN, ih]
    ring

/-- Finite prefix cancellation bounds the unchanged actual reflected centered row. -/
theorem centeredMobiusReflectedL2_norm_le_scale_add_ten (A : ℝ) (hA : 1 ≤ A) :
    ‖centeredMobiusReflectedL2 A hA‖ ≤ A + 10 := by
  classical
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let b := centeredBeta U
  let B := fun k : ℕ => ∑ n ∈ Finset.Ioc U k, b n
  let v := atom A hp
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hB (k : ℕ) (hk : U ≤ k) : |B k| ≤ (U : ℝ) := by
    apply (centeredBeta_interval_abs_le U U k hU le_rfl hk).trans
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 U, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro d _
        exact_mod_cast (abs_moebius_le_one (n := d))
      _ = (U : ℝ) := by simp
  have hG : centeredMobiusReflectedL2 A hA =
      ∑ n ∈ Finset.Ioc U N, b n • v n := by
    have hc (n : ℕ) : b n • v n =ᵐ[volume]
        fun x => b n / Real.sqrt (n : ℝ) *
          normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ)) := by
      filter_upwards [Lp.coeFn_smul (b n) (v n),
        Lp.coeFn_smul (1 / Real.sqrt (n : ℝ))
          (shift A hp (Real.log (n : ℝ))), shift_coe A hp (Real.log (n : ℝ))]
        with x hb hv hq
      rw [hb]
      change b n * (((1 / Real.sqrt (n : ℝ)) •
        shift A hp (Real.log (n : ℝ))) x) = _
      rw [hv]
      change b n * ((1 / Real.sqrt (n : ℝ)) *
        (shift A hp (Real.log (n : ℝ))) x) = _
      rw [hq]
      ring
    apply Lp.ext
    filter_upwards [(reflectedProfile_memLp hp (Finset.Ioc U N)
      (fun n => b n / Real.sqrt (n : ℝ))).coeFn_toLp,
      Lp.coeFn_fun_finsetSum (Finset.Ioc U N) (fun n => b n • v n),
      ((Finset.Ioc U N).eventually_all).2 (fun n _ => hc n)] with x hg hs hall
    change ((reflectedProfile_memLp hp (Finset.Ioc U N)
      (fun n => b n / Real.sqrt (n : ℝ))).toLp _) x = _
    rw [hg, hs]
    exact Finset.sum_congr rfl (fun n hn => (hall n hn).symm)
  by_cases hNU : N = U
  · rw [hG, hNU]
    simp only [Finset.Ioc_self, Finset.sum_empty, norm_zero]
    linarith
  have hU1N : U + 1 ≤ N := by omega
  have hUpos : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hUp1pos : 0 < ((U + 1 : ℕ) : ℝ) := by positivity
  have hnorm : ‖centeredMobiusReflectedL2 A hA‖ ≤
      (U : ℝ) * (1 / Real.sqrt (N : ℝ)) +
        ∑ n ∈ Finset.Ico (U + 1) N,
          (U : ℝ) * ((1 + 10 / A) *
            (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ))) := by
    rw [hG, finite_abel b v U N hUN]
    apply (norm_add_le _ _).trans
    apply add_le_add
    · rw [norm_smul, Real.norm_eq_abs, atom_norm hA hp]
      exact mul_le_mul_of_nonneg_right (hB N hUN) (by positivity)
    · apply (norm_sum_le _ _).trans
      apply Finset.sum_le_sum
      intro n hn
      have hun : U ≤ n := by have := (Finset.mem_Ico.mp hn).1; omega
      have hn1 : 1 ≤ n := hU.trans hun
      rw [norm_smul, Real.norm_eq_abs]
      exact (mul_le_mul_of_nonneg_right (hB n hun) (norm_nonneg _)).trans
        (mul_le_mul_of_nonneg_left (atom_step_norm_le hA hp hn1) (by positivity))
  have hsum : (∑ n ∈ Finset.Ico (U + 1) N,
      (U : ℝ) * ((1 + 10 / A) *
        (1 / Real.sqrt (n : ℝ) - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)))) =
      (U : ℝ) * (1 + 10 / A) *
        (1 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 1 / Real.sqrt (N : ℝ)) := by
    rw [← Finset.mul_sum, ← Finset.mul_sum, inverse_sqrt_telescope (U + 1) N hU1N]
    ring
  rw [hsum] at hnorm
  have hdrop : (U : ℝ) * (1 / Real.sqrt (N : ℝ)) +
      (U : ℝ) * (1 + 10 / A) *
        (1 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 1 / Real.sqrt (N : ℝ)) ≤
      ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) * (1 + 10 / A) := by
    have hpaid : 0 ≤ (U : ℝ) * (10 / A) * (1 / Real.sqrt (N : ℝ)) := by positivity
    have he : (U : ℝ) * (1 / Real.sqrt (N : ℝ)) +
        (U : ℝ) * (1 + 10 / A) *
          (1 / Real.sqrt ((U + 1 : ℕ) : ℝ) - 1 / Real.sqrt (N : ℝ)) =
        ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) * (1 + 10 / A) -
          (U : ℝ) * (10 / A) * (1 / Real.sqrt (N : ℝ)) := by ring
    rw [he]
    exact sub_le_self _ hpaid
  have hroot : (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ) ≤ Real.sqrt (U : ℝ) := by
    apply (div_le_iff₀ (Real.sqrt_pos.2 hUp1pos)).2
    have hut : (U : ℝ) ≤ ((U + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ U
    have hs := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt hut)
      (Real.sqrt_nonneg (U : ℝ))
    nlinarith [Real.sq_sqrt hUpos.le]
  calc
    _ ≤ ((U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) * (1 + 10 / A) :=
      hnorm.trans hdrop
    _ ≤ Real.sqrt (U : ℝ) * (1 + 10 / A) :=
      mul_le_mul_of_nonneg_right hroot (by positivity)
    _ ≤ A * (1 + 10 / A) := mul_le_mul_of_nonneg_right
      (sqrt_vaughanCutoff_le A hA) (by positivity)
    _ = A + 10 := by field_simp

end FormalResearch.RiemannHypothesis.SourceCenteredMobiusNorm
