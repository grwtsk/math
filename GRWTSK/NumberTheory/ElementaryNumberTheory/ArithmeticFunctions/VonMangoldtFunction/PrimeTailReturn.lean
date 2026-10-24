/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source; NOT compiled. No arithmetic decay is assumed
or supplied by defining the prime-only reading.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy
import GRWTSK.Analysis.GreenKernel.TailAugmentation

/-! # Actual prime-only source with an exactly retained proper-power remainder
The removed coefficients are the original nonprime Mangoldt coefficients.
Composite non-prime-powers have coefficient zero, not a new compensating sign.
The quantitative prime-base/geometric-series estimate is proved in the attached
mathematical note, not silently imported as a formal hypothesis here.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.PrimeTailReturn
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.GreenKernel.TailAugmentation
open GRWTSK.Analysis.RealAnalysis.Integration.UnitIntervalPrimitives
open GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.DyadicDiscrepancy

open scoped Classical in
def removedCoefficient (n : ℕ) : ℝ := if n.Prime then 0 else coefficient n

open scoped Classical in
def primeCoefficient (n : ℕ) : ℝ := if n.Prime then coefficient n else 0

def tailSource (X : ℕ) (t : ℝ) : ℝ := mass0 X-cumulative X t

def tailEnergy (X : ℕ) : ℝ :=
  (mass0 X)^2+∫ t, (tailSource X t)^2 ∂unitVolume

def removedMass (X : ℕ) : ℝ := ∑ n∈window X, removedCoefficient n

def removedTail (X : ℕ) : ℝ → ℝ :=
  atomicTail (window X) removedCoefficient (location X)

def removedEnergy (X : ℕ) : ℝ :=
  atomicEnergy (window X) removedCoefficient (location X)

def primeMass0 (X : ℕ) : ℝ := mass0 X-removedMass X

def primeTail (X : ℕ) (t : ℝ) : ℝ := tailSource X t-removedTail X t

def primeEnergy (X : ℕ) : ℝ :=
  (primeMass0 X)^2+∫ t, (primeTail X t)^2 ∂unitVolume

theorem coefficient_partition (n : ℕ) :
    coefficient n=primeCoefficient n+removedCoefficient n := by
  classical
  by_cases h : n.Prime <;> simp [primeCoefficient,removedCoefficient,h]

theorem removedCoefficient_nonneg (n : ℕ) : 0≤removedCoefficient n := by
  classical
  unfold removedCoefficient
  split_ifs
  · exact le_rfl
  · exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg n)

theorem tailSource_eq_literal (X : ℕ) (t : ℝ) :
    tailSource X t=
      atomicTail (window X) coefficient (location X) t-(Real.log 2-logarithm t) := by
  unfold tailSource mass0 cumulative atomicTail tailFeature
  simp only [mul_sub,mul_one,Finset.sum_sub_distrib]
  ring

theorem integral_tailSource {X : ℕ} (hX : 0<X) :
    (∫ t, tailSource X t ∂unitVolume)=mass1 X := by
  unfold tailSource
  rw [integral_sub (integrable_const _) (cumulative_integrable X),integral_cumulative hX]
  simp [center]

theorem tailSource_integrable (X : ℕ) : Integrable (tailSource X) unitVolume :=
  (integrable_const _).sub (cumulative_integrable X)

theorem tailSource_square_integrable (X : ℕ) :
    Integrable (fun t ↦ (tailSource X t)^2) unitVolume := by
  have h := GRWTSK.Analysis.MeasureTheory.Integral.Centering.shifted_square_integrable
    unitVolume (cumulative X) (mass0 X) (cumulative_integrable X)
    (cumulative_square_integrable X)
  have he : (fun t ↦ (tailSource X t)^2)=
      (fun t ↦ (cumulative X t-mass0 X)^2) := by
    funext t
    unfold tailSource
    ring
  rw [he]
  exact h

/-- Both original boundary channels are present in the tail representation. -/
theorem augmented_eq_tailEnergy {X : ℕ} (hX : 0<X) :
    augmentedEnergy X=tailEnergy X := by
  have hshift := GRWTSK.Analysis.MeasureTheory.Integral.Centering.integral_shifted_square
    unitVolume (cumulative X) (mass0 X) (cumulative_integrable X)
    (cumulative_square_integrable X)
  have hmean : GRWTSK.Analysis.MeasureTheory.Integral.Centering.mean unitVolume
      (cumulative X)=center X := integral_cumulative hX
  rw [hmean,raw_cumulative_energy hX] at hshift
  have he : (∫ t, (tailSource X t)^2 ∂unitVolume)=
      ∫ t, (cumulative X t-mass0 X)^2 ∂unitVolume := by
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun t ↦ by unfold tailSource; ring)
  unfold tailEnergy augmentedEnergy
  rw [he,hshift]
  unfold center
  ring

theorem removedTail_integrable (X : ℕ) : Integrable (removedTail X) unitVolume :=
  atomicTail_integrable _ _ _

theorem removedTail_square_integrable (X : ℕ) :
    Integrable (fun t ↦ (removedTail X t)^2) unitVolume :=
  atomicTail_square_integrable _ _ _

theorem primeTail_integrable (X : ℕ) : Integrable (primeTail X) unitVolume :=
  (tailSource_integrable X).sub (removedTail_integrable X)

theorem primeTail_square_integrable (X : ℕ) :
    Integrable (fun t ↦ (primeTail X t)^2) unitVolume := by
  have hT : MemLp (tailSource X) 2 unitVolume := by
    apply (memLp_two_iff_integrable_sq_norm (tailSource_integrable X).aestronglyMeasurable).2
    simpa only [Real.norm_eq_abs,sq_abs] using tailSource_square_integrable X
  have hP : MemLp (removedTail X) 2 unitVolume := by
    apply (memLp_two_iff_integrable_sq_norm (removedTail_integrable X).aestronglyMeasurable).2
    simpa only [Real.norm_eq_abs,sq_abs] using removedTail_square_integrable X
  have h := hT.sub hP
  have hh := (memLp_two_iff_integrable_sq_norm h.aestronglyMeasurable).1 h
  simpa only [primeTail,Real.norm_eq_abs,sq_abs,Pi.sub_apply] using hh

theorem removedMass_nonneg (X : ℕ) : 0≤removedMass X :=
  Finset.sum_nonneg (fun n hn ↦ removedCoefficient_nonneg n)

theorem source_mass_partition (X : ℕ) : mass0 X=primeMass0 X+removedMass X := by
  unfold primeMass0
  ring

theorem source_tail_partition (X : ℕ) (t : ℝ) :
    tailSource X t=primeTail X t+removedTail X t := by
  unfold primeTail
  ring

/-- The prime-only object is still the literal original-prime sum minus background. -/
theorem primeTail_eq_literal (X : ℕ) (t : ℝ) :
    primeTail X t=atomicTail (window X) primeCoefficient (location X) t-
      (Real.log 2-logarithm t) := by
  unfold primeTail removedTail
  rw [tailSource_eq_literal]
  have he : atomicTail (window X) coefficient (location X) t=
      atomicTail (window X) primeCoefficient (location X) t+
      atomicTail (window X) removedCoefficient (location X) t := by
    unfold atomicTail
    simp_rw [coefficient_partition,add_mul,Finset.sum_add_distrib]
  rw [he]
  ring

theorem primeMass0_eq_literal (X : ℕ) :
    primeMass0 X=(∑ n∈window X, primeCoefficient n)-Real.log 2 := by
  unfold primeMass0 mass0 removedMass
  simp_rw [coefficient_partition,Finset.sum_add_distrib]
  ring

theorem removedEnergy_nonneg (X : ℕ) : 0≤removedEnergy X :=
  atomicEnergy_nonneg _ _ _

theorem removedEnergy_le_mass {X : ℕ} (hX : 0<X) :
    removedEnergy X≤2*(removedMass X)^2 :=
  positive_atomicEnergy_le (window X) removedCoefficient (location X)
    (fun n hn ↦ removedCoefficient_nonneg n) (fun n hn ↦ location_mem hX hn)

theorem all_energy_le_prime_and_removed {X : ℕ} (hX : 0<X) :
    augmentedEnergy X≤2*primeEnergy X+2*removedEnergy X := by
  rw [augmented_eq_tailEnergy hX]
  have hm : (mass0 X)^2≤2*(primeMass0 X)^2+2*(removedMass X)^2 := by
    rw [source_mass_partition]
    nlinarith [sq_nonneg (primeMass0 X-removedMass X)]
  have hi : (∫ t, (tailSource X t)^2 ∂unitVolume)≤
      2*(∫ t, (primeTail X t)^2 ∂unitVolume)+
      2*(∫ t, (removedTail X t)^2 ∂unitVolume) := by
    calc
      _ ≤ ∫ t, 2*(primeTail X t)^2+2*(removedTail X t)^2 ∂unitVolume := by
        apply integral_mono (tailSource_square_integrable X)
          (((primeTail_square_integrable X).const_mul 2).add
            ((removedTail_square_integrable X).const_mul 2))
        intro t
        rw [source_tail_partition]
        nlinarith [sq_nonneg (primeTail X t-removedTail X t)]
      _ = _ := by
        rw [integral_add ((primeTail_square_integrable X).const_mul 2)
          ((removedTail_square_integrable X).const_mul 2),integral_const_mul,integral_const_mul]
  unfold tailEnergy primeEnergy removedEnergy atomicEnergy
  change (mass0 X)^2+_ ≤ 2*((primeMass0 X)^2+_)+2*((removedMass X)^2+_)
  linarith

theorem prime_energy_le_all_and_removed {X : ℕ} (hX : 0<X) :
    primeEnergy X≤2*augmentedEnergy X+2*removedEnergy X := by
  rw [augmented_eq_tailEnergy hX]
  have hm : (primeMass0 X)^2≤2*(mass0 X)^2+2*(removedMass X)^2 := by
    unfold primeMass0
    nlinarith [sq_nonneg (mass0 X+removedMass X)]
  have hi : (∫ t, (primeTail X t)^2 ∂unitVolume)≤
      2*(∫ t, (tailSource X t)^2 ∂unitVolume)+
      2*(∫ t, (removedTail X t)^2 ∂unitVolume) := by
    calc
      _ ≤ ∫ t, 2*(tailSource X t)^2+2*(removedTail X t)^2 ∂unitVolume := by
        apply integral_mono (primeTail_square_integrable X)
          (((tailSource_square_integrable X).const_mul 2).add
            ((removedTail_square_integrable X).const_mul 2))
        intro t
        unfold primeTail
        nlinarith [sq_nonneg (tailSource X t+removedTail X t)]
      _ = _ := by
        rw [integral_add ((tailSource_square_integrable X).const_mul 2)
          ((removedTail_square_integrable X).const_mul 2),integral_const_mul,integral_const_mul]
  unfold primeEnergy tailEnergy removedEnergy atomicEnergy
  change (primeMass0 X)^2+_ ≤ 2*((mass0 X)^2+_)+2*((removedMass X)^2+_)
  linarith

/-- Actual source transfer; the measured remainder mass has not been set to zero. -/
theorem all_energy_le_prime_and_mass {X : ℕ} (hX : 0<X) :
    augmentedEnergy X≤2*primeEnergy X+4*(removedMass X)^2 := by
  linarith [all_energy_le_prime_and_removed hX,removedEnergy_le_mass hX]

theorem prime_energy_le_all_and_mass {X : ℕ} (hX : 0<X) :
    primeEnergy X≤2*augmentedEnergy X+4*(removedMass X)^2 := by
  linarith [prime_energy_le_all_and_removed hX,removedEnergy_le_mass hX]

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.VonMangoldtFunction.PrimeTailReturn
