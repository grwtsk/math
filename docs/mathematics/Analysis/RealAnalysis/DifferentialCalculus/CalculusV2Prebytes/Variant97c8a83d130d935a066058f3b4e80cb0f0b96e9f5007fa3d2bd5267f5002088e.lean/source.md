# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CalculusV2Prebytes.Variant97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d6fca8d74387c79fcb52f82a193247885a5dc8f` · SHA-256 `97c8a83d130d935a066058f3b4e80cb0f0b96e9f5007fa3d2bd5267f5002088e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceScaleDerivative
import FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
import Mathlib.Analysis.InnerProductSpace.Calculus

/-!
# Scale regularity of the literal closed prime moments

Fixed finite inventories and exact source support handle upper-cutoff births.
No continuity of changing arithmetic states or uniform signed bound is asserted.

AI attribution: developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
open MeasureTheory Filter Set ArithmeticFunction
open scoped Topology InnerProductSpace
open SourcePairing SourceScaleL2Continuity SourceScaleDerivative SourceReflectionDuality
open SourcePrimePowerPartition WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimatePrimeSmoothDefect EstimateMertensResidual

/-- The literal stationary correlation is the real part of its actual L² coefficient. -/
theorem sourceCorrelation_eq_inner {A : ℝ} (hA : 0 < A) (s : ℝ) :
    sourceCorrelation explicitSecondDerivative A s =
      (⟪originalSourceState A, translation s (originalSourceState A)⟫_ℂ).re := by
  have ht : translation s (originalSourceState A) =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A (x - s) : ℂ) := by
    filter_upwards [translation_coe_ae s (originalSourceState A),
      (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae hA)] with x hx hy
    exact hx.trans hy
  have he : ⟪originalSourceState A, translation s (originalSourceState A)⟫_ℂ =
      ((sourceCorrelation explicitSecondDerivative A s : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative A x *
          normalizedTest explicitSecondDerivative A (x - s) : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [originalSourceState_coe_ae hA, ht] with x hx hy
        rw [hx, hy, RCLike.inner_apply']
        simp
      _ = _ := integral_complex_ofReal
  rw [he]
  rfl

/-- Independently specified scale derivative retains both source product-rule terms. -/
def correlationScaleDerivative (A s : ℝ) : ℝ :=
  (⟪scaleDerivativeState A, translation s (originalSourceState A)⟫_ℂ +
    ⟪originalSourceState A, translation s (scaleDerivativeState A)⟫_ℂ).re

/-- Actual stationary correlation scale differentiation on every positive scale. -/
theorem sourceCorrelation_hasDerivAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    HasDerivAt (fun B => sourceCorrelation explicitSecondDerivative B s)
      (correlationScaleDerivative A s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hd := originalSourceState_hasDerivAt hA
  have ht := L.hasFDerivAt.comp_hasDerivAt A hd
  have hi := hd.inner ℂ ht
  have hr := Complex.reCLM.hasFDerivAt.comp_hasDerivAt A hi
  have hs : HasDerivAt (fun B =>
      (⟪originalSourceState B, translation s (originalSourceState B)⟫_ℂ).re)
      (correlationScaleDerivative A s) A := by
    simpa [L, correlationScaleDerivative, add_comm, Function.comp_def] using hr
  apply hs.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact sourceCorrelation_eq_inner hB s

/-- Local C¹ comes from norm C¹ of the actual source, rather than a formal integral rule. -/
theorem sourceCorrelation_contDiffAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiffAt ℝ 1 (fun B => sourceCorrelation explicitSecondDerivative B s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hc := originalSourceState_contDiffAt hA
  have hi := hc.inner ℂ (L.contDiff.comp_contDiffAt A hc)
  have hr := Complex.reCLM.contDiff.comp_contDiffAt A hi
  apply hr.congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact sourceCorrelation_eq_inner hB s

/-- Positive-domain C¹ of the actual correlation at a fixed separation. -/
theorem sourceCorrelation_contDiffOn_scale (s : ℝ) :
    ContDiffOn ℝ 1 (fun A => sourceCorrelation explicitSecondDerivative A s) (Ioi 0) :=
  fun _ hA => (sourceCorrelation_contDiffAt_scale hA s).contDiffWithinAt

/-- Support zero above the closed floor preserves every literal exponential weight. -/
theorem closedPrimeWeight_zero_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    closedPrimeWeight A n = 0 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have he : Real.exp (2 * A) < (n : ℝ) := by
    by_contra hh
    have hf := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 (le_of_not_gt hh)
    omega
  have hl : 2 * A < Real.log n := (Real.lt_log_iff_exp_lt hn0).2 he
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n) hA
    (hl.le.trans (le_abs_self _))
  simp [closedPrimeWeight, exponentialTest, hc]

/-- Strictly outside support, a whole scale neighborhood is zero, hence its derivative is zero. -/
theorem correlationScaleDerivative_zero_of_lt {A s : ℝ} (hA : 0 < A) (hs : 2 * A < s) :
    correlationScaleDerivative A s = 0 := by
  have he : (fun B => sourceCorrelation explicitSecondDerivative B s) =ᶠ[nhds A]
      (fun _ => (0 : ℝ)) := by
    filter_upwards [eventually_gt_nhds hA,
      eventually_lt_nhds (show A < s / 2 by linarith)] with B hB hBs
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs B s hB
      (by have := le_abs_self s; linarith)
  exact (sourceCorrelation_hasDerivAt_scale hA s).unique
    ((hasDerivAt_const A (0 : ℝ)).congr_of_eventuallyEq he)

/-- The independent correlation derivative vanishes at all strictly omitted positive indices. -/
theorem correlationScaleDerivative_zero_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    correlationScaleDerivative A (Real.log n) = 0 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have he : Real.exp (2 * A) < (n : ℝ) := by
    by_contra hh
    have hf := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 (le_of_not_gt hh)
    omega
  exact correlationScaleDerivative_zero_of_lt hA ((Real.lt_log_iff_exp_lt hn0).2 he)

/-- One fixed closed inventory, used only to represent the original scalar moment locally. -/
def closedPrimeMomentFixed (N : ℕ) (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, vonMangoldt n * closedPrimeWeight A n

/-- One fixed complete prime-filtered closed inventory with the unchanged source weights. -/
def firstPrimeMomentFixed (N : ℕ) (A : ℝ) : ℝ :=
  ∑ p ∈ (Finset.Ioc 0 N).filter Nat.Prime, vonMangoldt p * closedPrimeWeight A p

/-- Any larger finite cutoff pads the full closed moment by exact zero coefficients. -/
theorem closedPrimeMoment_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    closedPrimeMoment A = closedPrimeMomentFixed N A := by
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n) = _
  unfold closedPrimeMomentFixed
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hN⟩
  · intro n hn hnold
    obtain ⟨hn2, hnN⟩ := Finset.mem_Icc.mp hn
    have hcut : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [Finset.mem_Icc] at hnold
      omega
    rw [closedPrimeWeight_zero_above_cutoff hA hn2 hcut, mul_zero]

/-- Prime filtering preserves exactly the same support padding, including closed births. -/
theorem firstPrimeMoment_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    firstPrimeMoment A = firstPrimeMomentFixed N A := by
  unfold firstPrimeMoment primeLogInventory firstPrimeMomentFixed
  apply Finset.sum_subset
  · intro p hp
    obtain ⟨hpI, hpP⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hpI).1, (Finset.mem_Ioc.mp hpI).2.trans hN⟩,
        hpP⟩
  · intro p hp hpold
    obtain ⟨hpI, hpP⟩ := Finset.mem_filter.mp hp
    have hcut : ⌊Real.exp (2 * A)⌋₊ < p := by
      by_contra hh
      exact hpold (Finset.mem_filter.mpr
        ⟨Finset.mem_Ioc.mpr ⟨hpP.pos, le_of_not_gt hh⟩, hpP⟩)
    rw [closedPrimeWeight_zero_above_cutoff hA hpP.two_le hcut, mul_zero]

/-- A finite upper bound is selected independently of the changing local floor. -/
def localUpperCutoff (A : ℝ) : ℕ := ⌊Real.exp (2 * (A + 1))⌋₊

/-- The literal complete closed moment is one fixed finite sum near every positive scale. -/
theorem closedPrimeMoment_eventually_eq_fixed {A : ℝ} (hA : 0 < A) :
    closedPrimeMoment =ᶠ[nhds A] closedPrimeMomentFixed (localUpperCutoff A) := by
  filter_upwards [eventually_gt_nhds hA, eventually_lt_nhds (lt_add_one A)] with B hB hBA
  apply closedPrimeMoment_eq_fixed hB
  exact Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))

/-- The first-prime scalar sum has the same fixed-neighborhood inventory representation. -/
theorem firstPrimeMoment_eventually_eq_fixed {A : ℝ} (hA : 0 < A) :
    firstPrimeMoment =ᶠ[nhds A] firstPrimeMomentFixed (localUpperCutoff A) := by
  filter_upwards [eventually_gt_nhds hA, eventually_lt_nhds (lt_add_one A)] with B hB hBA
  apply firstPrimeMoment_eq_fixed hB
  exact Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))

/-- Original weight scale derivative, with the exact constant exponential factor. -/
def closedPrimeWeightScaleDerivative (A : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-Real.log n / 2) * correlationScaleDerivative A (Real.log n)

/-- Actual weight calculus uses no replacement of its exponential coefficient. -/
theorem closedPrimeWeight_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ) :
    HasDerivAt (fun B => closedPrimeWeight B n) (closedPrimeWeightScaleDerivative A n) A := by
  simpa [closedPrimeWeight, exponentialTest, closedPrimeWeightScaleDerivative] using
    (sourceCorrelation_hasDerivAt_scale hA (Real.log n)).const_mul
      (Real.exp (-Real.log n / 2))

/-- Every fixed-index source weight is C¹ at all positive scales. -/
theorem closedPrimeWeight_contDiffAt {A : ℝ} (hA : 0 < A) (n : ℕ) :
    ContDiffAt ℝ 1 (fun B => closedPrimeWeight B n) A := by
  simpa [closedPrimeWeight, exponentialTest] using
    (contDiffAt_const.mul (sourceCorrelation_contDiffAt_scale hA (Real.log n)) :
      ContDiffAt ℝ 1 (fun B => Real.exp (-Real.log n / 2) *
        sourceCorrelation explicitSecondDerivative B (Real.log n)) A)

/-- The literal derivative coefficient vanishes on every strictly omitted positive index. -/
theorem closedPrimeWeightScaleDerivative_zero_above_cutoff {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 2 ≤ n) (hN : ⌊Real.exp (2 * A)⌋₊ < n) :
    closedPrimeWeightScaleDerivative A n = 0 := by
  simp [closedPrimeWeightScaleDerivative, correlationScaleDerivative_zero_above_cutoff hA hn hN]

/-- Independent derivative of the full moment uses its literal current closed inventory. -/
def closedPrimeMomentScaleDerivative (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A), vonMangoldt n * closedPrimeWeightScaleDerivative A n

/-- Independent first-prime derivative uses the unchanged complete prime-filtered inventory. -/
def firstPrimeMomentScaleDerivative (A : ℝ) : ℝ :=
  ∑ p ∈ primeLogInventory (2 * A), vonMangoldt p * closedPrimeWeightScaleDerivative A p

/-- Derivative padding is proved independently, rather than inferred from a pointwise zero. -/
theorem closedPrimeMomentScaleDerivative_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    closedPrimeMomentScaleDerivative A =
      ∑ n ∈ Finset.Icc 2 N, vonMangoldt n * closedPrimeWeightScaleDerivative A n := by
  unfold closedPrimeMomentScaleDerivative primePowerInventory
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hN⟩
  · intro n hn hnold
    obtain ⟨hn2, hnN⟩ := Finset.mem_Icc.mp hn
    have hcut : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [Finset.mem_Icc] at hnold
      omega
    rw [closedPrimeWeightScaleDerivative_zero_above_cutoff hA hn2 hcut, mul_zero]

/-- Prime filtering retains exact derivative padding at all strictly extra indices. -/
theorem firstPrimeMomentScaleDerivative_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    firstPrimeMomentScaleDerivative A =
      ∑ p ∈ (Finset.Ioc 0 N).filter Nat.Prime,
        vonMangoldt p * closedPrimeWeightScaleDerivative A p := by
  unfold firstPrimeMomentScaleDerivative primeLogInventory
  apply Finset.sum_subset
  · intro p hp
    obtain ⟨hpI, hpP⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hpI).1, (Finset.mem_Ioc.mp hpI).2.trans hN⟩,
        hpP⟩
  · intro p hp hpold
    obtain ⟨hpI, hpP⟩ := Finset.mem_filter.mp hp
    have hcut : ⌊Real.exp (2 * A)⌋₊ < p := by
      by_contra hh
      exact hpold (Finset.mem_filter.mpr
        ⟨Finset.mem_Ioc.mpr ⟨hpP.pos, le_of_not_gt hh⟩, hpP⟩)
    rw [closedPrimeWeightScaleDerivative_zero_above_cutoff hA hpP.two_le hcut, mul_zero]

/-- Finite closed inventory differentiation retains every original coefficient. -/
theorem closedPrimeMomentFixed_hasDerivAt {A : ℝ} (hA : 0 < A) (N : ℕ) :
    HasDerivAt (closedPrimeMomentFixed N)
      (∑ n ∈ Finset.Icc 2 N, vonMangoldt n * closedPrimeWeightScaleDerivative A n) A := by
  unfold closedPrimeMomentFixed
  exact HasDerivAt.fun_sum fun n _ => (closedPrimeWeight_hasDerivAt hA n).const_mul _

/-- Fixed prime-filtered inventory differentiation preserves its literal source rows. -/
theorem firstPrimeMomentFixed_hasDerivAt {A : ℝ} (hA : 0 < A) (N : ℕ) :
    HasDerivAt (firstPrimeMomentFixed N)
      (∑ p ∈ (Finset.Ioc 0 N).filter Nat.Prime,
        vonMangoldt p * closedPrimeWeightScaleDerivative A p) A := by
  unfold firstPrimeMomentFixed
  exact HasDerivAt.fun_sum fun p _ => (closedPrimeWeight_hasDerivAt hA p).const_mul _

/-- Fixed closed inventories are C¹ throughout positive scales. -/
theorem closedPrimeMomentFixed_contDiffAt {A : ℝ} (hA : 0 < A) (N : ℕ) :
    ContDiffAt ℝ 1 (closedPrimeMomentFixed N) A := by
  unfold closedPrimeMomentFixed
  exact ContDiffAt.sum fun n _ => contDiffAt_const.mul (closedPrimeWeight_contDiffAt hA n)

/-- Fixed first-prime inventories are C¹ throughout positive scales. -/
theorem firstPrimeMomentFixed_contDiffAt {A : ℝ} (hA : 0 < A) (N : ℕ) :
    ContDiffAt ℝ 1 (firstPrimeMomentFixed N) A := by
  unfold firstPrimeMomentFixed
  exact ContDiffAt.sum fun p _ => contDiffAt_const.mul (closedPrimeWeight_contDiffAt hA p)

/-- The literal closed prime moment is differentiable even at upper-floor births. -/
theorem closedPrimeMoment_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt closedPrimeMoment (closedPrimeMomentScaleDerivative A) A := by
  have hN : ⌊Real.exp (2 * A)⌋₊ ≤ localUpperCutoff A :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  have hd := closedPrimeMomentFixed_hasDerivAt hA (localUpperCutoff A)
  rw [← closedPrimeMomentScaleDerivative_eq_fixed hA _ hN] at hd
  exact hd.congr_of_eventuallyEq (closedPrimeMoment_eventually_eq_fixed hA)

/-- The literal first-prime sector is differentiable at every positive scale, including births. -/
theorem firstPrimeMoment_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt firstPrimeMoment (firstPrimeMomentScaleDerivative A) A := by
  have hN : ⌊Real.exp (2 * A)⌋₊ ≤ localUpperCutoff A :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  have hd := firstPrimeMomentFixed_hasDerivAt hA (localUpperCutoff A)
  rw [← firstPrimeMomentScaleDerivative_eq_fixed hA _ hN] at hd
  exact hd.congr_of_eventuallyEq (firstPrimeMoment_eventually_eq_fixed hA)

/-- Literal closed prime moment C¹ needs no noninteger cutoff hypothesis. -/
theorem closedPrimeMoment_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 closedPrimeMoment A :=
  (closedPrimeMomentFixed_contDiffAt hA (localUpperCutoff A)).congr_of_eventuallyEq
    (closedPrimeMoment_eventually_eq_fixed hA)

/-- Literal first-prime C¹ also includes every closed-right upper-cutoff event. -/
theorem firstPrimeMoment_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 firstPrimeMoment A :=
  (firstPrimeMomentFixed_contDiffAt hA (localUpperCutoff A)).congr_of_eventuallyEq
    (firstPrimeMoment_eventually_eq_fixed hA)

/-- Global positive-scale C¹ of the unchanged full scalar prime moment. -/
theorem closedPrimeMoment_contDiffOn : ContDiffOn ℝ 1 closedPrimeMoment (Ioi 0) :=
  fun _ hA => (closedPrimeMoment_contDiffAt hA).contDiffWithinAt

/-- Global positive-scale C¹ of the unchanged scalar first-prime sector. -/
theorem firstPrimeMoment_contDiffOn : ContDiffOn ℝ 1 firstPrimeMoment (Ioi 0) :=
  fun _ hA => (firstPrimeMoment_contDiffAt hA).contDiffWithinAt

/-- The existing residual identity is used only on an ordinary neighborhood contained in A>1. -/
theorem mertensResidual_eventually_eq_closedPrimeMoment {A : ℝ} (hA : 1 < A) :
    mertensResidual =ᶠ[nhds A] closedPrimeMoment := by
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact mertensResidual_eq_closedPrimeMoment B hB.le

/-- Ordinary residual differentiation preserves the original function and A>1 scope. -/
theorem mertensResidual_hasDerivAt {A : ℝ} (hA : 1 < A) :
    HasDerivAt mertensResidual (closedPrimeMomentScaleDerivative A) A :=
  (closedPrimeMoment_hasDerivAt (by linarith)).congr_of_eventuallyEq
    (mertensResidual_eventually_eq_closedPrimeMoment hA)

/-- Local C¹ of the unchanged residual, without altering the signed estimate target. -/
theorem mertensResidual_contDiffAt {A : ℝ} (hA : 1 < A) :
    ContDiffAt ℝ 1 mertensResidual A :=
  (closedPrimeMoment_contDiffAt (by linarith)).congr_of_eventuallyEq
    (mertensResidual_eventually_eq_closedPrimeMoment hA)

/-- The exact residual is C¹ on the open range where its closed-prime adapter holds locally. -/
theorem mertensResidual_contDiffOn : ContDiffOn ℝ 1 mertensResidual (Ioi 1) :=
  fun _ hA => (mertensResidual_contDiffAt hA).contDiffWithinAt

end FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
```
