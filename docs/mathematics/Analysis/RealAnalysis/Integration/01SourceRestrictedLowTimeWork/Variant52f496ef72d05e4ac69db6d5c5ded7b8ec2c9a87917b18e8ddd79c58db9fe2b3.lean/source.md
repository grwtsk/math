# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.01SourceRestrictedLowTimeWork.Variant52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `945751b8e4e1086821b5cea2d898f7a63d780c7e` · SHA-256 `52f496ef72d05e4ac69db6d5c5ded7b8ec2c9a87917b18e8ddd79c58db9fe2b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualMixedWorkFubini
import SourceRestrictedMixedPairing
import SourceLowTimeScalarBudget
import Mathlib.Algebra.BigOperators.Intervals

/-!
# Actual restricted spatial boundary work

UNCOMPILED proof-text preparation. The carrier is the literal spatial strip
`actualWorkLeftStrip A`, the time carrier is separately `[log U, log(U+1)]`,
and the positive cells are the unchanged strict inventory `Ico (U+1) K`.
The observable is its individual restricted mixed-source integral. A nonzero
high-time source atom on that strip, or a restricted work exceeding the proposed
45-times-error margin, refutes the corresponding proposed theorem.

The L1 product-measure proof is reused from the actual checked PRIVATE39 module.
This UNCOMPILED visibility successor expects the ten public helpers in the owning
SourceActualMixedWorkFubini candidate. It removes the previous ten-alias run_cmd;
no persistent alias entries are installed by this successor. The checked predecessor
source bd423803/object c23dde9c and dependent source749672 objects are provenance,
not reusable candidate objects. The public-name ABI requires fresh owning-source
and dependent-module replay. The analytic/scalar prerequisites retain their separately
recorded focused verification and unresolved integration acceptance scope.

No whole signed time-strip estimate is used to bound a spatial subintegral. The
PLUS derivative and mass sectors stay literal, and the full baseline, lower
Mangoldt boundary, centered deletion, independent main term and quotient endpoint
remain in `remainingOverlapBalance`. This source does not bound that remaining
joint interaction and supplies no unconditional RH witness.

AI attribution: OpenAI Codex proof-text preparation; all new native stages held.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceRestrictedLowTimeWork

open MeasureTheory Set
open scoped BigOperators Interval
open SourceActualMixedWorkFubini SourceRestrictedMixedPairing SourceLowTimeScalarBudget
open SourcePairing SourceMangoldtAbel SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering SourceVaughanHankel

noncomputable section

private abbrev errorWeight := SourceActualMixedWorkFubini.errorExp
private abbrev sourceCellKernel := SourceActualMixedWorkFubini.cellKernel
private abbrev timeRow := SourceActualMixedWorkFubini.profileX
private abbrev cellRow := SourceActualMixedWorkFubini.profileYCell

private abbrev errorBudget : ℝ := Real.log 4 + 4 + Real.log 2

private def cellMass (k : ℝ) : ℝ := ∫ u in k..(k + 1), 1 / (u * Real.sqrt u)

/-- This is the separate low-time row, with both exact logarithmic endpoints. -/
def actualLowTimeProfile (r : ℝ → ℝ) (A v : ℝ) : ℝ :=
  ∫ t in Real.log (vaughanCutoff A : ℝ)..
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ),
    mangoldtLogError t * Real.exp (t / 2) * r (v - t)

/-- The actual centered reflected row remains unchanged in both PLUS sectors. -/
def actualLowMixedWorkDensity (A v : ℝ) : ℝ :=
  actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v +
    (1 / 4 : ℝ) * (actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
      actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)

/-- The unresolved balance is defined from independent original source ingredients. -/
def remainingOverlapBalance (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    SourceJointMangoldtWork.jointMangoldtTestProfile A t) -
  mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    SourceJointMangoldtWork.jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
  (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) -
  SourceVaughanHankel.centeredDeletedDiagonal A -
  SourceSamplingLedger.independentMainTerm A +
  (let U := vaughanCutoff A
   let N := sourceKernelCutoff A
   let K := N / (U + 1)
   let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
   let R : ℕ → ℝ := fun k => ∑ m ∈ longInventory A,
     ArithmeticFunction.vonMangoldt m *
       EstimatePlainKernel.sourcePlainWeight A ((m * k : ℕ) : ℝ)
   B K * R K)

/-- The actual PRIVATE39 L1 kernel remains integrable after any spatial restriction. -/
theorem actual39_cell_kernel_restricted_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) :
    Integrable (sourceCellKernel r)
      (((volume.restrict (Ioc l b)).prod
        (volume.restrict (Ioc k (k + 1)))).prod (volume.restrict S)) := by
  exact (SourceActualMixedWorkFubini.cellKernel_integrable r hc hlb hk hs).mono_measure
    (Measure.prod_mono le_rfl Measure.restrict_le_self)

/-- The signed restricted cell is reconstructed before applying an absolute bound. -/
theorem restricted_cell_fubini_factorization
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) :
    (∫ v in S, timeRow r l b v * cellRow r k v) =
      ∫ t in l..b, ∫ u in k..(k + 1), ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  let μv := volume.restrict S
  have hf := actual39_cell_kernel_restricted_integrable r hc hlb hk hs S
  have hout := integral_prod
    (fun z : ℝ × ℝ => ∫ v, sourceCellKernel r (z, v) ∂μv) hf.integral_prod_left
  have hswap := integral_integral_swap
    (f := fun z : ℝ × ℝ => fun v : ℝ => sourceCellKernel r (z, v)) hf
  symm
  dsimp only [timeRow, cellRow, SourceActualMixedWorkFubini.profileX,
    SourceActualMixedWorkFubini.profileYCell]
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  change (∫ t, (∫ u, (∫ v, sourceCellKernel r ((t, u), v) ∂μv) ∂μu) ∂μt) =
    ∫ v, (∫ t, errorWeight t * r (v - t) ∂μt) *
      (∫ u, r (v + Real.log u) / (u * Real.sqrt u) ∂μu) ∂μv
  rw [← hout, hswap]
  apply integral_congr_ae
  filter_upwards [] with v
  exact integral_prod_mul
    (fun t : ℝ => errorWeight t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

private theorem finite_profile_restricted_integral
    (r : ℝ → ℝ) (hc : Continuous r) {A l b : ℝ} (hlb : l ≤ b)
    (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) (s : Finset ℕ) (B : ℕ → ℝ)
    (hpos : ∀ k ∈ s, 0 < (k : ℝ)) :
    (∫ v in S, timeRow r l b v * (∑ k ∈ s, B k * cellRow r (k : ℝ) v)) =
      ∑ k ∈ s, B k * (∫ v in S, timeRow r l b v * cellRow r (k : ℝ) v) := by
  have he : (fun v : ℝ => timeRow r l b v *
      (∑ k ∈ s, B k * cellRow r (k : ℝ) v)) =
      (fun v : ℝ => ∑ k ∈ s, B k *
        (timeRow r l b v * cellRow r (k : ℝ) v)) := by
    funext v
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he, integral_finsetSum s (fun k hk =>
    ((SourceActualMixedWorkFubini.profile_cell_product_integrable r hc hlb
      (hpos k hk) hs).integrableOn).const_mul (B k))]
  apply Finset.sum_congr rfl
  intro k _
  exact integral_const_mul _ _

private theorem cell_mass_integrable {k : ℝ} (hk : 0 < k) :
    IntervalIntegrable (fun u : ℝ => 1 / (u * Real.sqrt u)) volume k (k + 1) := by
  have hc : ContinuousOn (fun u : ℝ => 1 / (u * Real.sqrt u)) (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have hd : ContinuousAt (fun x : ℝ => x * Real.sqrt x) u :=
      continuousAt_id.mul continuousAt_id.sqrt
    exact (continuousAt_const.div hd
      (mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0))).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (by linarith)

private theorem cell_mass_nonneg {k : ℝ} (hk : 0 < k) : 0 ≤ cellMass k := by
  apply intervalIntegral.integral_nonneg (by linarith : k ≤ k + 1)
  intro u hu
  have hu0 := hk.trans_le hu.1
  exact one_div_nonneg.mpr (mul_nonneg hu0.le (Real.sqrt_nonneg u))

private theorem cell_mass_exact {k : ℝ} (hk : 0 < k) :
    cellMass k = 2 / Real.sqrt k - 2 / Real.sqrt (k + 1) := by
  have hd (u : ℝ) (hu : 0 < u) :
      HasDerivAt (fun x : ℝ => -2 / Real.sqrt x) (1 / (u * Real.sqrt u)) u := by
    have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
    have h := (hasDerivAt_const u (-2 : ℝ)).div (Real.hasDerivAt_sqrt hu.ne') hs
    apply h.congr_deriv
    rw [Real.sq_sqrt hu.le]
    field_simp [hs, hu.ne']
    ring
  have hc : ContinuousOn (fun x : ℝ => -2 / Real.sqrt x) (Icc k (k + 1)) := by
    intro u hu
    exact ((hd u (hk.trans_le hu.1)).continuousAt).continuousWithinAt
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    (by linarith : k ≤ k + 1) hc
    (fun u hu => hd u (hk.trans hu.1)) (cell_mass_integrable hk)
  change cellMass k = -2 / Real.sqrt (k + 1) - (-2 / Real.sqrt k) at h
  simp only [neg_div] at h
  linarith

private theorem cell_mass_sum_le (L K : ℕ) (hL : 1 ≤ L) :
    (∑ k ∈ Finset.Ico L K, cellMass (k : ℝ)) ≤ 2 / Real.sqrt (L : ℝ) := by
  by_cases hLK : L ≤ K
  · have he : (∑ k ∈ Finset.Ico L K, cellMass (k : ℝ)) =
        -2 / Real.sqrt (K : ℝ) - (-2 / Real.sqrt (L : ℝ)) := by
      calc
        _ = ∑ k ∈ Finset.Ico L K,
            (-2 / Real.sqrt ((k + 1 : ℕ) : ℝ) - (-2 / Real.sqrt (k : ℝ))) := by
          apply Finset.sum_congr rfl
          intro k hk
          have hk0 : 0 < (k : ℝ) := by
            exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
          rw [cell_mass_exact hk0]
          simp only [Nat.cast_add, Nat.cast_one]
          ring
        _ = _ := Finset.sum_Ico_sub (f := fun k : ℕ => -2 / Real.sqrt (k : ℝ)) hLK
    simp only [neg_div] at he
    rw [he]
    have hn : 0 ≤ 2 / Real.sqrt (K : ℝ) := by positivity
    linarith
  · rw [Finset.Ico_eq_empty_of_le (by omega : K ≤ L), Finset.sum_empty]
    positivity

private theorem centered_cell_mass_budget (U K : ℕ) (hU : 1 ≤ U) :
    (∑ k ∈ Finset.Ico (U + 1) K,
      |∑ n ∈ Finset.Ioc U k, centeredBeta U n| * cellMass (k : ℝ)) ≤
      2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ) := by
  calc
    _ ≤ ∑ k ∈ Finset.Ico (U + 1) K, (U : ℝ) * cellMass (k : ℝ) := by
      apply Finset.sum_le_sum
      intro k hk
      have hUk : U ≤ k := by have := (Finset.mem_Ico.mp hk).1; omega
      have hk0 : 0 < (k : ℝ) := by exact_mod_cast (by omega : 0 < k)
      exact mul_le_mul_of_nonneg_right (centered_beta_prefix_abs_le_cutoff U k hU hUk)
        (cell_mass_nonneg hk0)
    _ = (U : ℝ) * ∑ k ∈ Finset.Ico (U + 1) K, cellMass (k : ℝ) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (U : ℝ) * (2 / Real.sqrt ((U + 1 : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (cell_mass_sum_le (U + 1) K (by omega)) (by positivity)
    _ = _ := by ring

private theorem restricted_low_cell_abs_le
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ}
    (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) (U : ℕ) (hU : 1 ≤ U)
    (H : ℝ) (hH : 0 ≤ H)
    (hpair : ∀ t u : ℝ, |∫ v in S, r (v - t) * r (v + Real.log u)| ≤ H)
    {k : ℝ} (hk : 0 < k) :
    |∫ v in S, timeRow r (Real.log (U : ℝ))
      (Real.log ((U + 1 : ℕ) : ℝ)) v * cellRow r k v| ≤
      errorBudget * H *
        (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) *
          cellMass k := by
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  let P : ℝ → ℝ → ℝ := fun t u => ∫ v in S, r (v - t) * r (v + Real.log u)
  have hinner (t : ℝ) (ht : Real.log (U : ℝ) ≤ t) :
      |∫ u in k..(k + 1), ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))| ≤
        errorBudget * Real.exp (t / 2) * H * cellMass k := by
    have he (u : ℝ) : (∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))) =
        (errorWeight t / (u * Real.sqrt u)) * P t u := by
      unfold P
      simp_rw [show ∀ v : ℝ,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)) =
          (errorWeight t / (u * Real.sqrt u)) * (r (v - t) * r (v + Real.log u)) by
            intro v; ring]
      exact integral_const_mul _ _
    have hm := (cell_mass_integrable hk).const_mul (errorBudget * Real.exp (t / 2) * H)
    have hn := intervalIntegral.norm_integral_le_of_norm_le (by linarith : k ≤ k + 1)
      (f := fun u => ∫ v in S,
        errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)))
      (g := fun u => (errorBudget * Real.exp (t / 2) * H) *
        (1 / (u * Real.sqrt u))) (by
        filter_upwards [] with u hu
        have hu0 : 0 < u := hk.trans hu.1
        have hd : 0 < u * Real.sqrt u := mul_pos hu0 (Real.sqrt_pos.mpr hu0)
        rw [he u, Real.norm_eq_abs, abs_mul, abs_div]
        have hw : |errorWeight t| = |mangoldtLogError t| * Real.exp (t / 2) := by
          simp only [errorWeight, SourceActualMixedWorkFubini.errorExp, abs_mul,
            abs_of_pos (Real.exp_pos _)]
        rw [hw, abs_of_pos hd]
        have herr := mangoldt_error_on_low_time_abs_le U hU t ht
        have hp := hpair t u
        change |mangoldtLogError t| * Real.exp (t / 2) / (u * Real.sqrt u) * |P t u| ≤ _
        change |P t u| ≤ H at hp
        calc
          _ ≤ |mangoldtLogError t| * Real.exp (t / 2) / (u * Real.sqrt u) * H :=
            _root_.mul_le_mul_of_nonneg_left hp
              (div_nonneg (mul_nonneg (abs_nonneg _) (Real.exp_pos _).le) hd.le)
          _ ≤ errorBudget * Real.exp (t / 2) / (u * Real.sqrt u) * H :=
            _root_.mul_le_mul_of_nonneg_right
              (_root_.div_le_div_of_nonneg_right
                (_root_.mul_le_mul_of_nonneg_right herr (Real.exp_pos _).le) hd.le) hH
          _ = _ := by ring) hm
    rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
    simpa only [cellMass] using hn
  have hcmajor : Continuous (fun t : ℝ =>
      (errorBudget * H * cellMass k) * Real.exp (t / 2)) := by fun_prop
  have hm : IntervalIntegrable (fun t : ℝ =>
      (errorBudget * H * cellMass k) * Real.exp (t / 2))
      (volume : Measure ℝ) (Real.log (U : ℝ))
      (Real.log ((U + 1 : ℕ) : ℝ)) :=
    hcmajor.continuousOn.intervalIntegrable_of_Icc hla
  rw [restricted_cell_fubini_factorization r hc hla hk hs S]
  have hn := intervalIntegral.norm_integral_le_of_norm_le hla
    (f := fun t => ∫ u in k..(k + 1), ∫ v in S,
      errorWeight t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)))
    (g := fun t => (errorBudget * H * cellMass k) * Real.exp (t / 2)) (by
      filter_upwards [] with t ht
      rw [Real.norm_eq_abs]
      exact (hinner t ht.1.le).trans_eq (by ring)) hm
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hn
  exact hn.trans_eq (by ring)

private theorem low_sector_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 1 ≤ U := by have := vaughanCutoff_pos A hA; dsimp only [U]; omega
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  have he : (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) =
      (fun v => ∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
            cellRow r (k : ℝ) v)) := by
    funext v
    change timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
      (∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) * cellRow r (k : ℝ) v) = _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he]
  apply integrable_finsetSum
  intro k hk
  have hk0 : 0 < (k : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
  exact (SourceActualMixedWorkFubini.profile_cell_product_integrable r hc hla hk0 hs).const_mul _

/-- The actual coefficient and cell-mass factors pay the low-time scale budget. -/
theorem restricted_actual_low_sector_abs_le
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) (H : ℝ) (hH : 0 ≤ H)
    (hpair : ∀ t u : ℝ, |∫ v in S, r (v - t) * r (v + Real.log u)| ≤ H) :
    |∫ v in S, actualLowTimeProfile r A v * actualReflectedProfile r A v| ≤
      2 * errorBudget * H := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let s := Finset.Ico (U + 1) K
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let mass := ∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)
  have hU : 1 ≤ U := by have := vaughanCutoff_pos A hA; dsimp only [U]; omega
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  have hm : 0 ≤ mass := intervalIntegral.integral_nonneg_of_forall hla
    (fun t => (Real.exp_pos (t / 2)).le)
  have hCe : 0 ≤ errorBudget := mangoldt_error_budget_pos.le
  have hpos : ∀ k ∈ s, 0 < (k : ℝ) := by
    intro k hk
    exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
  change |∫ v in S, timeRow r (Real.log (U : ℝ))
    (Real.log ((U + 1 : ℕ) : ℝ)) v * (∑ k ∈ s, B k * cellRow r (k : ℝ) v)| ≤ _
  rw [finite_profile_restricted_integral r hc hla hs S s B hpos]
  calc
    _ ≤ ∑ k ∈ s, |B k| *
        |∫ v in S, timeRow r (Real.log (U : ℝ))
          (Real.log ((U + 1 : ℕ) : ℝ)) v * cellRow r (k : ℝ) v| := by
      simpa only [abs_mul] using Finset.abs_sum_le_sum_abs
        (fun k => B k * (∫ v in S, timeRow r (Real.log (U : ℝ))
          (Real.log ((U + 1 : ℕ) : ℝ)) v * cellRow r (k : ℝ) v)) s
    _ ≤ ∑ k ∈ s, |B k| * (errorBudget * H * mass * cellMass (k : ℝ)) := by
      apply Finset.sum_le_sum
      intro k hk
      exact mul_le_mul_of_nonneg_left
        (restricted_low_cell_abs_le r hc hs S U hU H hH hpair (hpos k hk)) (abs_nonneg _)
    _ = (errorBudget * H * mass) * ∑ k ∈ s, |B k| * cellMass (k : ℝ) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ ≤ (errorBudget * H * mass) * (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (centered_cell_mass_budget U K hU) (by positivity)
    _ = (errorBudget * H) *
        (mass * (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ))) := by ring
    _ ≤ (errorBudget * H) * 2 :=
      mul_le_mul_of_nonneg_left (exponential_low_time_mass_prefix_budget U hU) (by positivity)
    _ = _ := by ring

/-- The ordinary source sector uses the existing normalization energy, on any region. -/
theorem actual_source_low_sector_abs_le {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
      actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| ≤
      2 * errorBudget := by
  have hp : 0 < A := by linarith
  simpa only [mul_one] using restricted_actual_low_sector_abs_le _
    (normalizedTest_contDiff A hp).continuous hA
    (SourceActualMixedWorkFubini.source_tsupport_subset hp) S 1 (by norm_num)
    (fun t u => by
      simpa only [sub_eq_add_neg, restrictedSourcePairing] using
        restrictedSourcePairing_abs_le_one hA S (-t) (Real.log u))

/-- The actual derivative sector retains its independently proved source coefficient. -/
theorem actual_derivative_low_sector_abs_le {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| ≤
      2 * errorBudget * (162826 / (7623 * A ^ 2)) := by
  have hp : 0 < A := by linarith
  exact restricted_actual_low_sector_abs_le _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp) S
    (162826 / (7623 * A ^ 2)) (by positivity)
    (fun t u => by
      simpa only [sub_eq_add_neg, restrictedDerivativePairing] using
        restrictedDerivativePairing_abs_le_coefficient hA S (-t) (Real.log u))

/-- This actual two-sector density is integrable before restricted sums are combined. -/
theorem actualLowMixedWorkDensity_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualLowMixedWorkDensity A) := by
  have hp : 0 < A := by linarith
  exact (low_sector_integrable _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp)).add
      ((low_sector_integrable _ (normalizedTest_contDiff A hp).continuous hA
        (SourceActualMixedWorkFubini.source_tsupport_subset hp)).const_mul (1 / 4 : ℝ))

/-- Each spatial restriction of low-time work has its own budget; no global-sign inference. -/
theorem actual_low_mixed_restricted_abs_le_margin {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowMixedWorkDensity A v| ≤ 45 * errorBudget := by
  have hp : 0 < A := by linarith
  have h1 : IntegrableOn (fun v =>
      actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
        actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v) S :=
    (low_sector_integrable _
      ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
      (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp)).integrableOn
  have h0 : IntegrableOn (fun v =>
      actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
        actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v) S :=
    (low_sector_integrable _ (normalizedTest_contDiff A hp).continuous hA
      (SourceActualMixedWorkFubini.source_tsupport_subset hp)).integrableOn
  unfold actualLowMixedWorkDensity
  rw [integral_add h1 (h0.const_mul (1 / 4 : ℝ)), integral_const_mul]
  calc
    _ ≤ |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
          actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| +
        (1 / 4 : ℝ) * |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| := by
      have ht := abs_add_le
        (∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A))
          A v * actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v)
        ((1 / 4 : ℝ) * ∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A)
          A v * actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)
      simpa only [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 4)] using ht
    _ ≤ 2 * errorBudget * (162826 / (7623 * A ^ 2)) + (1 / 4 : ℝ) * (2 * errorBudget) :=
      add_le_add (actual_derivative_low_sector_abs_le hA S)
        (mul_le_mul_of_nonneg_left (actual_source_low_sector_abs_le hA S) (by norm_num))
    _ = errorBudget * (2 * (162826 / (7623 * A ^ 2) + 1 / 4)) := by ring
    _ ≤ _ := error_times_twice_curvature_budget_le_margin hA

private theorem high_time_row_zero
    (r : ℝ → ℝ) {A a b v : ℝ} (hs : tsupport r ⊆ Icc (-A) A)
    (hab : a ≤ b) (hv : v < a - A) : timeRow r a b v = 0 := by
  change (∫ t in a..b, errorWeight t * r (v - t)) = 0
  rw [intervalIntegral.integral_of_le hab]
  apply integral_eq_zero_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
  have hz : r (v - t) = 0 := by
    by_contra hn
    have hi := hs (subset_tsupport r hn)
    linarith [ht.1, hi.1]
  simp only [hz, mul_zero, Pi.zero_apply]

private theorem actual_product_eq_low_product_on_left
    (r : ℝ → ℝ) (hc : Continuous r) {A v : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A)
    (hv : v < Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A) :
    actualTimeProfile r A v * actualReflectedProfile r A v =
      actualLowTimeProfile r A v * actualReflectedProfile r A v := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  by_cases hN : U + 1 ≤ N
  · have hU0 : 0 < (U : ℝ) := by
      exact_mod_cast (by have := vaughanCutoff_pos A hA; dsimp only [U]; omega : 0 < U)
    have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
      Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
    have hab : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (N : ℝ) :=
      Real.log_le_log (by positivity) (by exact_mod_cast hN)
    have hl := SourceActualMixedWorkFubini.profileX_integrand_intervalIntegrable
      r hc (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v hla
    have hh := SourceActualMixedWorkFubini.profileX_integrand_intervalIntegrable
      r hc (Real.log ((U + 1 : ℕ) : ℝ)) (Real.log (N : ℝ)) v hab
    have he := intervalIntegral.integral_add_adjacent_intervals hl hh
    have hz := high_time_row_zero r hs hab hv
    have hrow : actualTimeProfile r A v = actualLowTimeProfile r A v := by
      change timeRow r (Real.log (U : ℝ)) (Real.log (N : ℝ)) v =
        timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v
      change timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v +
        timeRow r (Real.log ((U + 1 : ℕ) : ℝ)) (Real.log (N : ℝ)) v =
        timeRow r (Real.log (U : ℝ)) (Real.log (N : ℝ)) v at he
      rw [hz, add_zero] at he
      exact he.symm
    rw [hrow]
  · have hK : N / (U + 1) ≤ U + 1 := (Nat.div_le_self _ _).trans (by omega)
    have hy : actualReflectedProfile r A v = 0 := by
      change (∑ k ∈ Finset.Ico (U + 1) (N / (U + 1)),
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) * cellRow r (k : ℝ) v) = 0
      rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]
    rw [hy, mul_zero, mul_zero]

/-- High times vanish pointwise on the exact strict spatial strip, in both source sectors. -/
theorem actual_left_strip_high_time_source_atoms_zero {A : ℝ} (hA : 1 ≤ A)
    {v t : ℝ} (hv : v ∈ actualWorkLeftStrip A)
    (ht : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ t) :
    normalizedTest explicitSecondDerivative A (v - t) = 0 ∧
    deriv (normalizedTest explicitSecondDerivative A) (v - t) = 0 := by
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  exact source_sectors_zero_after_spatial_edge (by linarith : 0 < A) hv.1.2 ht

/-- On this spatial strip the actual full density equals its independently defined low row. -/
theorem actual_density_eq_low_density_on_left_strip {A : ℝ} (hA : 1 ≤ A)
    {v : ℝ} (hv : v ∈ actualWorkLeftStrip A) :
    actualMixedWorkDensity A v = actualLowMixedWorkDensity A v := by
  have hp : 0 < A := by linarith
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  unfold actualMixedWorkDensity actualLowMixedWorkDensity
  rw [actual_product_eq_low_product_on_left _
    ((normalizedTest_contDiff A hp).continuous_deriv (by norm_num)) hA
    (SourceActualMixedWorkFubini.deriv_source_tsupport_subset hp) hv.1.2,
    actual_product_eq_low_product_on_left _ (normalizedTest_contDiff A hp).continuous hA
      (SourceActualMixedWorkFubini.source_tsupport_subset hp) hv.1.2]

/-- The disclosed actual spatial remainder has a scale-independent absolute budget. -/
theorem actual_retained_spatial_strip_abs_le_margin {A : ℝ} (hA : 1 ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤
      45 * (Real.log 4 + 4 + Real.log 2) := by
  have hm : MeasurableSet (actualWorkLeftStrip A) := measurableSet_Icc.diff measurableSet_Icc
  have he := setIntegral_congr_fun (μ := (volume : Measure ℝ)) hm
    (fun v hv => actual_density_eq_low_density_on_left_strip hA hv)
  rw [he]
  exact actual_low_mixed_restricted_abs_le_margin hA (actualWorkLeftStrip A)

/-- The independent global balance and the actual signed spatial remainder reconstruct T. -/
theorem actual_surplus_eq_remainingOverlap_sub_strip {A : ℝ} (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A =
        remainingOverlapBalance A -
          (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v) := by
  rw [covariance_sub_main_eq_localized_work_with_endpoint A hA]
  unfold remainingOverlapBalance
  ring

/-- Only the disclosed boundary is budgeted; the full joint overlap balance remains. -/
theorem actual_surplus_le_remainingOverlap_add_margin {A : ℝ} (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A ≤
        remainingOverlapBalance A + 45 * (Real.log 4 + 4 + Real.log 2) := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip hA]
  have h := actual_retained_spatial_strip_abs_le_margin hA
  have hn := neg_le_abs (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

/-- The converse comparison also keeps every independently defined counterterm. -/
theorem remainingOverlap_le_actual_surplus_add_margin {A : ℝ} (hA : 1 ≤ A) :
    remainingOverlapBalance A ≤ VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A + 45 * (Real.log 4 + 4 + Real.log 2) := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip hA]
  have h := actual_retained_spatial_strip_abs_le_margin hA
  have hn := le_abs_self (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith

/-- This is an exact-target candidate equivalence, not an eventual-bound witness. -/
theorem actual_eventual_surplus_bound_iff_remainingOverlap_bound :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D) ↔
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      remainingOverlapBalance A ≤ D) := by
  have hC : 0 ≤ 45 * (Real.log 4 + 4 + Real.log 2) := by
    exact mul_nonneg (by norm_num) mangoldt_error_budget_pos.le
  constructor
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D + 45 * (Real.log 4 + 4 + Real.log 2), by positivity, R, hR, ?_⟩
    intro A hA
    exact (remainingOverlap_le_actual_surplus_add_margin (hR.trans hA)).trans
      (by linarith [htail A hA])
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨D + 45 * (Real.log 4 + 4 + Real.log 2), by positivity, R, hR, ?_⟩
    intro A hA
    exact (actual_surplus_le_remainingOverlap_add_margin (hR.trans hA)).trans
      (by linarith [htail A hA])

end
end FormalResearch.RiemannHypothesis.SourceRestrictedLowTimeWork
```
