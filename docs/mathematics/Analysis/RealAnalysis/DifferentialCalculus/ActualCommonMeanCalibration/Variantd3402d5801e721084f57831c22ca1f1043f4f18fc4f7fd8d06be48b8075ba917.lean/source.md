# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCommonMeanCalibration.Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a35605b513956832b58a8d634439d3bc5070760` · SHA-256 `d3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
import Mathlib.Analysis.Calculus.LocalExtr.Basic

/-! Actual independent source common mean and fixed-prime calibration for #313.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
No numerical correction-budget witness, Gamma identity or RH proof is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCommonMeanCalibration
open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCorrelationCurvature SourcePrimeSquareTailWork
open SourceFirstPrimeAbel SourcePairedPrimeAverages SourcePrimePowerPartition
open SourcePrimeSquareMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization EstimateCorrelation EstimateMertensResidual
open EstimateMobiusSplit PrimePowerDescent

theorem correlation_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  apply IsLocalMax.deriv_eq_zero
  apply Filter.Eventually.of_forall
  intro t
  rw [actual_correlation_at_zero A hA]
  exact (le_abs_self _).trans (actual_correlation_abs_le_one A t hA)

theorem correlation_translation_square {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    1 - sourceCorrelation explicitSecondDerivative A t =
      (∫ x : ℝ, (normalizedTest explicitSecondDerivative A x -
        normalizedTest explicitSecondDerivative A (x-t)) ^ 2) / 2 := by
  let q := normalizedTest explicitSecondDerivative A
  have hq : Integrable (fun x : ℝ => (q x)^2) := normalized_square_integrable A hA
  have ht := hq.comp_sub_right t
  have hmul : Integrable (fun x : ℝ => q x * q (x-t)) :=
    correlation_product_integrable A t (by linarith)
  have he : (fun x : ℝ => (q x-q (x-t))^2) =
      fun x => (q x)^2 - 2*(q x*q (x-t)) + (q (x-t))^2 := by
    funext x
    ring
  change 1 - (∫ x : ℝ, q x*q (x-t)) = (∫ x : ℝ, (q x-q (x-t))^2)/2
  rw [he, integral_add
    (f := fun x : ℝ => (q x)^2-2*(q x*q (x-t)))
    (g := fun x : ℝ => (q (x-t))^2) (hq.sub (hmul.const_mul 2)) ht,
    integral_sub (f := fun x : ℝ => (q x)^2)
      (g := fun x : ℝ => 2*(q x*q (x-t))) hq (hmul.const_mul 2), integral_const_mul,
    integral_sub_right_eq_self (fun x : ℝ => (q x)^2) t]
  have hn : (∫ x : ℝ, (q x)^2) = 1 := normalized_square_integral A hA
  rw [hn]
  ring

theorem correlation_deficit_nonneg {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    0 ≤ 1-sourceCorrelation explicitSecondDerivative A t := by
  have h := (le_abs_self _).trans (actual_correlation_abs_le_one A t hA)
  linarith

theorem correlation_deficit_le_sharp {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    1-sourceCorrelation explicitSecondDerivative A t ≤
      (162826 / 7623 : ℝ) * t^2 / (2*A^2) := by
  have h := sourceCorrelation_linear_taylor_bound hA 0 t
  rw [zero_add, actual_correlation_at_zero A hA, correlation_deriv_zero hA,
    mul_zero, sub_zero] at h
  have he : (162826 / (7623*A^2)) * t^2 / 2 =
      (162826 / 7623 : ℝ) * t^2 / (2*A^2) := by ring
  rw [he] at h
  have hh := (neg_le_abs (sourceCorrelation explicitSecondDerivative A t-1)).trans h
  linarith

/-- Actual first-prime atom, with the source's square-root normalization. -/
def primeAtom (A : ℝ) (p : ℕ) : ℝ :=
  Real.log (p : ℝ) / Real.sqrt p * sourceCorrelation explicitSecondDerivative A (Real.log p)

def primeConstant (p : ℕ) : ℝ := Real.log (p : ℝ) / Real.sqrt p

def primeDeficit (A : ℝ) (p : ℕ) : ℝ := primeConstant p - primeAtom A p

/-- Independent components of F_square excluding only its literal higher-power sector. -/
def sourceCore (A : ℝ) : ℝ := criticalContinuousMoment A + squarePrefixBaseline +
  negativeErrorMean A - squareTailNegativeMean A

/-- The literal first-prime inventory with the fixed 2 and 3 atoms removed. -/
def firstPrimeRest (A : ℝ) : ℝ := firstPrimeMoment A - primeAtom A 2 - primeAtom A 3

/-- Common mean specified from independent source components, without a desired bound. -/
def sourceMean (A : ℝ) : ℝ := sourceCore A - primeSquareMoment A - firstPrimeRest A

/-- Four source rows from literal signed atom coefficients. -/
def sourcePencil (A a b : ℝ) : ℝ := sourceCore A - primeSquareMoment A - firstPrimeMoment A +
  (1-a)*primeAtom A 2 + (1-b)*primeAtom A 3

theorem primeAtom_eq_literal (A : ℝ) {p : ℕ} (hp : p.Prime) :
    primeAtom A p = ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  unfold primeAtom closedPrimeWeight exponentialTest
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hp0]
  ring

theorem two_mem_inventory {A : ℝ} (hA : 1 ≤ A) : 2 ∈ primeLogInventory (2*A) := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ioc.mpr ⟨by norm_num, ?_⟩, Nat.prime_two⟩
  apply (Nat.le_floor_iff (Real.exp_pos (2*A)).le).mpr
  apply (Real.log_le_iff_le_exp (by norm_num : (0:ℝ)<2)).mp
  have h := Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ)<2)
  linarith

theorem three_mem_inventory {A : ℝ} (hA : 1 ≤ A) : 3 ∈ primeLogInventory (2*A) := by
  apply Finset.mem_filter.mpr
  refine ⟨Finset.mem_Ioc.mpr ⟨by norm_num, ?_⟩, Nat.prime_three⟩
  apply (Nat.le_floor_iff (Real.exp_pos (2*A)).le).mpr
  apply (Real.log_le_iff_le_exp (by norm_num : (0:ℝ)<3)).mp
  have h := Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ)<3)
  linarith

/-- Literal erasure removes exactly the fixed first-prime atoms, not their powers. -/
theorem firstPrimeRest_eq_inventory {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeRest A = ∑ p ∈ ((primeLogInventory (2*A)).erase 2).erase 3,
      ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p := by
  classical
  have h2 := Finset.sum_erase_add (primeLogInventory (2*A))
    (fun p => ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p) (two_mem_inventory hA)
  have h3mem : 3 ∈ (primeLogInventory (2*A)).erase 2 := by
    simp only [Finset.mem_erase]
    exact ⟨by norm_num, three_mem_inventory hA⟩
  have h3 := Finset.sum_erase_add ((primeLogInventory (2*A)).erase 2)
    (fun p => ArithmeticFunction.vonMangoldt p * closedPrimeWeight A p) h3mem
  unfold firstPrimeRest firstPrimeMoment
  rw [primeAtom_eq_literal A Nat.prime_two, primeAtom_eq_literal A Nat.prime_three]
  linarith

theorem squareRemainder_eq_core_higher (A : ℝ) :
    squareRemovedRemainder A = sourceCore A + higherPrimePowerMoment A := by
  unfold squareRemovedRemainder sourceCore
  ring

theorem sourceMean_eq_squareWork {A : ℝ} (hA : 1 ≤ A) :
    sourceMean A = squareRemovedPairedWork A + primeAtom A 2 + primeAtom A 3 := by
  have hr := mertensResidual_eq_squareRemoved hA
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    closedPrimeMoment_eq_first_square_higher, squareRemainder_eq_core_higher] at hr
  unfold sourceMean firstPrimeRest
  linarith

theorem sourceMean_eq_remainder_sub_residual {A : ℝ} (hA : 1 ≤ A) :
    sourceMean A = squareRemovedRemainder A + primeAtom A 2 + primeAtom A 3 -
      mertensResidual A := by
  rw [sourceMean_eq_squareWork hA, mertensResidual_eq_squareRemoved hA]
  ring

theorem sourcePencil_eq_mean (A a b : ℝ) :
    sourcePencil A a b = sourceMean A - a*primeAtom A 2 - b*primeAtom A 3 := by
  unfold sourcePencil sourceMean firstPrimeRest
  ring

theorem sourcePencil_plus_plus {A : ℝ} (hA : 1 ≤ A) :
    sourcePencil A 1 1 = squareRemovedPairedWork A := by
  rw [sourcePencil_eq_mean, sourceMean_eq_squareWork hA]
  ring

theorem literal_four_mean (A : ℝ) :
    (sourcePencil A 1 1 + sourcePencil A 1 (-1) +
      sourcePencil A (-1) 1 + sourcePencil A (-1) (-1))/4 = sourceMean A := by
  simp only [sourcePencil_eq_mean]
  ring

theorem primeDeficit_eq (A : ℝ) (p : ℕ) :
    primeDeficit A p = primeConstant p *
      (1-sourceCorrelation explicitSecondDerivative A (Real.log p)) := by
  unfold primeDeficit primeConstant primeAtom
  ring

theorem primeConstant_nonneg {p : ℕ} (hp : 1 ≤ p) : 0 ≤ primeConstant p :=
  div_nonneg (Real.log_nonneg (by exact_mod_cast hp)) (Real.sqrt_nonneg _)

theorem primeDeficit_nonneg {A : ℝ} (hA : 1 ≤ A) {p : ℕ} (hp : 1 ≤ p) :
    0 ≤ primeDeficit A p := by
  rw [primeDeficit_eq]
  exact mul_nonneg (primeConstant_nonneg hp) (correlation_deficit_nonneg hA _)

theorem primeDeficit_le_sharp {A : ℝ} (hA : 1 ≤ A) {p : ℕ} (hp : 1 ≤ p) :
    primeDeficit A p ≤ (162826 / 7623 : ℝ) *
      ((Real.log p)^3 / Real.sqrt p) / (2*A^2) := by
  rw [primeDeficit_eq]
  have h := mul_le_mul_of_nonneg_left (correlation_deficit_le_sharp hA (Real.log p))
    (primeConstant_nonneg hp)
  calc
    _ ≤ primeConstant p * ((162826 / 7623 : ℝ) * (Real.log p)^2 / (2*A^2)) := h
    _ = _ := by unfold primeConstant; ring

def calibrationConstant : ℝ := (162826 / 7623 : ℝ)/2 *
  ((Real.log 2)^3/Real.sqrt 2 + (Real.log 3)^3/Real.sqrt 3)

theorem calibrationConstant_nonneg : 0 ≤ calibrationConstant := by
  unfold calibrationConstant
  positivity

theorem two_prime_calibration {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ primeDeficit A 2 + primeDeficit A 3 ∧
      primeDeficit A 2 + primeDeficit A 3 ≤ calibrationConstant/A^2 := by
  refine ⟨add_nonneg (primeDeficit_nonneg hA (by norm_num))
    (primeDeficit_nonneg hA (by norm_num)), ?_⟩
  have h := add_le_add (primeDeficit_le_sharp hA (p:=2) (by norm_num))
    (primeDeficit_le_sharp hA (p:=3) (by norm_num))
  calc
    _ ≤ (162826 / 7623 : ℝ)*((Real.log (2:ℕ))^3/Real.sqrt (2:ℕ))/(2*A^2) +
      (162826 / 7623 : ℝ)*((Real.log (3:ℕ))^3/Real.sqrt (3:ℕ))/(2*A^2) := h
    _ = _ := by norm_num only [Nat.cast_ofNat]; unfold calibrationConstant; ring

theorem squareWork_mean_calibration {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ squareRemovedPairedWork A + primeConstant 2 + primeConstant 3 - sourceMean A ∧
      squareRemovedPairedWork A + primeConstant 2 + primeConstant 3 - sourceMean A ≤
        calibrationConstant/A^2 := by
  have he : squareRemovedPairedWork A + primeConstant 2 + primeConstant 3 - sourceMean A =
      primeDeficit A 2 + primeDeficit A 3 := by
    rw [sourceMean_eq_squareWork hA]
    unfold primeDeficit
    ring
  rw [he]
  exact two_prime_calibration hA

theorem pencil_calibration {A : ℝ} (hA : 1 ≤ A) (a b : ℝ)
    (ha : |a| ≤ 1) (hb : |b| ≤ 1) :
    |sourcePencil A a b + a*primeConstant 2 + b*primeConstant 3-sourceMean A| ≤
      calibrationConstant/A^2 := by
  have he : sourcePencil A a b + a*primeConstant 2 + b*primeConstant 3-sourceMean A =
      a*primeDeficit A 2 + b*primeDeficit A 3 := by
    rw [sourcePencil_eq_mean]
    unfold primeDeficit
    ring
  rw [he]
  have h2 := primeDeficit_nonneg hA (p:=2) (by norm_num)
  have h3 := primeDeficit_nonneg hA (p:=3) (by norm_num)
  calc
    _ ≤ |a*primeDeficit A 2| + |b*primeDeficit A 3| := abs_add_le _ _
    _ ≤ primeDeficit A 2 + primeDeficit A 3 := by
      rw [abs_mul, abs_mul, abs_of_nonneg h2, abs_of_nonneg h3]
      exact add_le_add (by simpa using mul_le_mul_of_nonneg_right ha h2)
        (by simpa using mul_le_mul_of_nonneg_right hb h3)
    _ ≤ _ := (two_prime_calibration hA).2

theorem pencil_calibration_uniform_tail {R A : ℝ} (hR : 1 ≤ R) (hRA : R ≤ A)
    (a b : ℝ) (ha : |a| ≤ 1) (hb : |b| ≤ 1) :
    |sourcePencil A a b+a*primeConstant 2+b*primeConstant 3-sourceMean A| ≤
      calibrationConstant/R^2 := by
  apply (pencil_calibration (hR.trans hRA) a b ha hb).trans
  apply div_le_div_of_nonneg_left calibrationConstant_nonneg (by positivity : 0 < R^2)
  nlinarith

#print axioms correlation_deriv_zero
#print axioms correlation_translation_square
#print axioms correlation_deficit_nonneg
#print axioms correlation_deficit_le_sharp
#print axioms primeAtom
#print axioms primeConstant
#print axioms primeDeficit
#print axioms sourceCore
#print axioms firstPrimeRest
#print axioms sourceMean
#print axioms sourcePencil
#print axioms primeAtom_eq_literal
#print axioms two_mem_inventory
#print axioms three_mem_inventory
#print axioms firstPrimeRest_eq_inventory
#print axioms squareRemainder_eq_core_higher
#print axioms sourceMean_eq_squareWork
#print axioms sourceMean_eq_remainder_sub_residual
#print axioms sourcePencil_eq_mean
#print axioms sourcePencil_plus_plus
#print axioms literal_four_mean
#print axioms primeDeficit_eq
#print axioms primeConstant_nonneg
#print axioms primeDeficit_nonneg
#print axioms primeDeficit_le_sharp
#print axioms calibrationConstant
#print axioms calibrationConstant_nonneg
#print axioms two_prime_calibration
#print axioms squareWork_mean_calibration
#print axioms pencil_calibration
#print axioms pencil_calibration_uniform_tail
end ContinuousResearch.ActualCommonMeanCalibration
```
