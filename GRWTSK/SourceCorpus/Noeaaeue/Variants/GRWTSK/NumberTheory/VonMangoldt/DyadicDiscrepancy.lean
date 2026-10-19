/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib
import GRWTSK.Analysis.GreenKernel.UnitInterval
import GRWTSK.Analysis.MeasureTheory.Integral.Centering
import GRWTSK.Analysis.Integration.UnitIntervalPrimitives

/-!
# Literal prime-power discrepancy on (X,2X]

No prime power, normalization, or right-endpoint atom is dropped. The open
arithmetic condition uses the actual centered integral and both actual moments.
The infinite Green expansion and the Mellin-to-zeta return are separately
specified in the proof-obligation file, not postulated as new axioms here.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.Integral.UnitIntervalPrimitives

/-- Mathlib's actual von Mangoldt function, not a freely chosen coefficient family. -/
def mangoldt (n : ℕ) : ℝ := ArithmeticFunction.vonMangoldt n

def window (X : ℕ) : Finset ℕ := Finset.Ioc X (2*X)
def location (X n : ℕ) : ℝ := (n:ℝ)/(X:ℝ)-1
def coefficient (n : ℕ) : ℝ := mangoldt n/(n:ℝ)

def action (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  (∑ n ∈ window X, (coefficient n : ℂ)*φ (location X n))-
    ∫ t in (0:ℝ)..1, φ t/(1+(t:ℂ))

def mass0 (X : ℕ) : ℝ := (∑ n ∈ window X, coefficient n)-Real.log 2

def mass1 (X : ℕ) : ℝ :=
  (∑ n ∈ window X, coefficient n*location X n)-(1-Real.log 2)

def cumulative (X : ℕ) (t : ℝ) : ℝ :=
  (∑ n ∈ window X, coefficient n*step (location X n) t)-logarithm t

def center (X : ℕ) : ℝ := mass0 X-mass1 X

def greenEnergy (X : ℕ) : ℝ :=
  ∫ t, (cumulative X t-center X)^2 ∂unitVolume

def augmentedEnergy (X : ℕ) : ℝ := greenEnergy X+(mass0 X)^2+(mass1 X)^2

def dyadicScale (j : ℕ) : ℕ := 2^(j+1)

def AllDyadicEnergyBound : Prop :=
  ∀ η : ℝ, 0 < η → ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
    ∀ j ≥ j₀, augmentedEnergy (dyadicScale j) ≤
      C*Real.rpow (dyadicScale j : ℝ) (-1+η)

theorem window_lower {X n : ℕ} (hn : n ∈ window X) : X<n := by
  simpa [window] using (Finset.mem_Ioc.mp hn).1

theorem window_upper {X n : ℕ} (hn : n ∈ window X) : n≤2*X := by
  simpa [window] using (Finset.mem_Ioc.mp hn).2

theorem location_mem {X n : ℕ} (hX : 0<X) (hn : n ∈ window X) :
    location X n ∈ Icc (0:ℝ) 1 := by
  have hXr : (0:ℝ)<X := by exact_mod_cast hX
  have hl : (X:ℝ)<n := by exact_mod_cast window_lower hn
  have hu : (n:ℝ)≤2*X := by exact_mod_cast window_upper hn
  constructor
  · unfold location
    have h : (1:ℝ)<(n:ℝ)/(X:ℝ) :=
      (lt_div_iff₀ hXr).2 (by simpa using hl)
    linarith
  · unfold location
    have h : (n:ℝ)/(X:ℝ)≤2 := (div_le_iff₀ hXr).2 hu
    linarith

theorem endpoint_mem {X : ℕ} (hX : 0<X) : 2*X ∈ window X := by
  simp only [window, Finset.mem_Ioc]
  omega

theorem endpoint_location {X : ℕ} (hX : 0<X) : location X (2*X)=1 := by
  have hx : (X:ℝ)≠0 := by exact_mod_cast Nat.ne_of_gt hX
  unfold location
  push_cast
  field_simp
  ring

theorem endpoint_green_silent {X : ℕ} (hX : 0<X) {r : ℝ} (hr : r≤1) :
    kernel (location X (2*X)) r=0 := by
  rw [endpoint_location hX, kernel_one_left r hr]

theorem center_expansion (X : ℕ) :
    center X = (∑ n ∈ window X, coefficient n*(1-location X n))-
      (2*Real.log 2-1) := by
  simp only [center, mass0, mass1, Finset.sum_sub_distrib, mul_sub, mul_one]
  ring

theorem cumulative_integrable (X : ℕ) : Integrable (cumulative X) unitVolume := by
  apply Integrable.sub
  · exact integrable_finsetSum (window X) (fun n hn ↦
      (step_integrable (location X n)).const_mul _)
  · change IntegrableOn logarithm (Icc (0:ℝ) 1)
    exact logarithm_continuousOn.integrableOn_Icc


/-- Integrability of the actual cumulative square is proved from its finite inventory. -/
theorem cumulative_square_integrable (X : ℕ) :
    Integrable (fun t ↦ cumulative X t^2) unitVolume := by
  let S : ℝ → ℝ := fun t ↦ ∑ n∈window X, coefficient n*step (location X n) t
  have hS2 : Integrable (fun t ↦ S t^2) unitVolume := by
    have he (t : ℝ) : S t^2 =
        ∑ n∈window X, ∑ m∈window X, coefficient n*coefficient m*
          step (max (location X n) (location X m)) t := by
      dsimp [S]
      rw [pow_two, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m hm
      rw [← step_mul]
      ring
    simp_rw [he]
    exact integrable_finsetSum (window X) (fun n hn ↦
      integrable_finsetSum (window X) (fun m hm ↦
        (step_integrable (max (location X n) (location X m))).const_mul _))
  have hlog : Integrable logarithm unitVolume := logarithm_continuousOn.integrableOn_Icc
  have hSL : Integrable (fun t ↦ S t*logarithm t) unitVolume := by
    have he (t : ℝ) : S t*logarithm t =
        ∑ n∈window X, coefficient n*((Ici (location X n)).indicator logarithm t) := by
      dsimp [S]
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases h : location X n≤t <;> simp [step, Set.indicator, h]
    simp_rw [he]
    exact integrable_finsetSum (window X) (fun n hn ↦
      (hlog.indicator measurableSet_Ici).const_mul _)
  have hlog2 : Integrable (fun t ↦ logarithm t^2) unitVolume :=
    (logarithm_continuousOn.pow 2).integrableOn_Icc
  have he (t : ℝ) : cumulative X t^2 = S t^2-2*(S t*logarithm t)+logarithm t^2 := by
    dsimp [cumulative,S]
    ring
  simp_rw [he]
  exact (hS2.sub (hSL.const_mul 2)).add hlog2

theorem cumulative_memLp_two (X : ℕ) : MemLp (cumulative X) 2 unitVolume := by
  apply (memLp_two_iff_integrable_sq_norm (cumulative_integrable X).aestronglyMeasurable).2
  simpa only [Real.norm_eq_abs, sq_abs] using cumulative_square_integrable X

theorem centered_memLp_two (X : ℕ) :
    MemLp (fun t ↦ cumulative X t-center X) 2 unitVolume :=
  (cumulative_memLp_two X).sub (memLp_const (center X))

/-- Exact mean; the boundary information is retained in mass0 and mass1. -/
theorem integral_cumulative {X : ℕ} (hX : 0<X) :
    (∫ t, cumulative X t ∂unitVolume)=center X := by
  unfold cumulative
  rw [integral_sub]
  · rw [integral_finsetSum]
    · simp_rw [integral_const_mul]
      have hp : (∑ n ∈ window X, coefficient n *
          ∫ t, step (location X n) t ∂unitVolume)=
          ∑ n ∈ window X, coefficient n*(1-location X n) := by
        apply Finset.sum_congr rfl
        intro n hn
        rw [integral_step (location_mem hX hn)]
      rw [hp]
      have hlog : (∫ t, logarithm t ∂unitVolume)=2*Real.log 2-1 := by
        change (∫ t in Icc (0:ℝ) 1, logarithm t)=_
        rw [integral_Icc_eq_integral_Ioc,
          ← intervalIntegral.integral_of_le (show (0:ℝ)≤1 by norm_num)]
        exact integral_logarithm
      rw [hlog, center_expansion]
    · intro n hn
      exact (step_integrable (location X n)).const_mul _
  · exact integrable_finsetSum (window X) (fun n hn ↦
      (step_integrable (location X n)).const_mul _)
  · change IntegrableOn logarithm (Icc (0:ℝ) 1)
    exact logarithm_continuousOn.integrableOn_Icc

theorem greenEnergy_nonneg (X : ℕ) : 0≤greenEnergy X :=
  integral_nonneg (fun _ ↦ sq_nonneg _)

theorem augmentedEnergy_nonneg (X : ℕ) : 0≤augmentedEnergy X := by
  unfold augmentedEnergy
  exact add_nonneg (add_nonneg (greenEnergy_nonneg X) (sq_nonneg _)) (sq_nonneg _)

theorem mass0_sq_le_energy (X : ℕ) : (mass0 X)^2≤augmentedEnergy X := by
  unfold augmentedEnergy
  nlinarith [greenEnergy_nonneg X, sq_nonneg (mass1 X)]

theorem mass1_sq_le_energy (X : ℕ) : (mass1 X)^2≤augmentedEnergy X := by
  unfold augmentedEnergy
  nlinarith [greenEnergy_nonneg X, sq_nonneg (mass0 X)]

/-- The centered expression is not a replacement of either boundary channel. -/
theorem raw_cumulative_energy {X : ℕ} (hX : 0<X) :
    (∫ t, cumulative X t^2 ∂unitVolume)=greenEnergy X+(center X)^2 := by
  have h := GRWTSK.MeasureTheory.Integral.Centering.reconstruct_second_moment
    unitVolume (cumulative X) (cumulative_integrable X) (cumulative_square_integrable X)
  simpa only [GRWTSK.MeasureTheory.Integral.Centering.mean,
    GRWTSK.MeasureTheory.Integral.Centering.energy,
    GRWTSK.MeasureTheory.Integral.Centering.centered,
    integral_cumulative hX, greenEnergy] using h

/-- Literal Mellin test; all powers use the real logarithm of positive coordinates. -/
def mellinTest (s : ℂ) (r : ℝ) : ℂ :=
  Complex.exp ((1-s)*(Real.log (1+r):ℂ))

def dirichletBlock (X : ℕ) (s : ℂ) : ℂ :=
  (∑ n ∈ window X, (mangoldt n:ℂ)*Complex.exp (-s*(Real.log n:ℂ)))-
    ∫ u in (X:ℝ)..(2*X:ℝ), Complex.exp (-s*(Real.log u:ℂ))

end GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
