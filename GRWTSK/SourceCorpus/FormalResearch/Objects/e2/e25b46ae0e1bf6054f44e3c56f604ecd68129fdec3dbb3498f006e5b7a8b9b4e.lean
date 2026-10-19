import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateScalePrimitive
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateScaleVaughan

/-!
# The exact signed scale integral of the actual Type II source

Finite arithmetic factors and different scales remain in the same signed sum.
Only null singleton scale boundaries are changed in the integration adapter.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateScaleAverage

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity
open EstimateScalePrimitive EstimateScaleVaughan EstimateVaughanSource EstimatePlainKernel
open EstimateSourceMobiusKernel ArithmeticFunction

noncomputable section

private theorem sum_integrable {a b : ℝ} {s : Finset ℕ} {f : ℕ → ℝ → ℝ}
    (h : ∀ i ∈ s, IntervalIntegrable (f i) volume a b) :
    IntervalIntegrable (fun x ↦ ∑ i ∈ s, f i x) volume a b := by
  exact ⟨integrable_finsetSum s (fun i hi ↦ (h i hi).1),
    integrable_finsetSum s (fun i hi ↦ (h i hi).2)⟩

/-- The exact lower scale at which a nonnegative displacement enters source support. -/
def lowerScale (t : ℝ) : ℝ := max 1 (t/2)

/-- Both long factors constrain the upper scale independently. -/
def upperScale (T : ℝ) (m d : ℕ) : ℝ := min T (min (Real.sqrt m) (Real.sqrt d))

/-- The unchanged weighted source with both strict long-factor cutoffs. -/
def scaleWindow (A t : ℝ) (m d : ℕ) : ℝ :=
  if A^2 < (m:ℝ) ∧ A^2 < (d:ℝ) then
    scaleWeight A * sourceCorrelation explicitSecondDerivative A t else 0

/-- The explicit signed scale-primitive difference; empty intervals contribute zero. -/
def omegaWeight (T : ℝ) (m d k : ℕ) : ℝ :=
  let t := Real.log ((m*d*k : ℕ) : ℝ)
  if lowerScale t < upperScale T m d then
    scalePrimitive (upperScale T m d) t - scalePrimitive (lowerScale t) t
  else 0

/-- The unnormalized signed primitive with the full original source weight. -/
def integratedTypeTwo (T : ℝ) : ℝ :=
  ∫ A in (1:ℝ)..T, scaleWeight A * typeTwoSource A

/-- The signed average has its specified zero lower endpoint. -/
theorem integratedTypeTwo_one : integratedTypeTwo 1 = 0 := by simp [integratedTypeTwo]

private theorem scaleWindow_ae (T t : ℝ) (m d : ℕ) (ht : 0 ≤ t) :
    (fun A ↦ scaleWindow A t m d) =ᵐ[volume.restrict (Ioc 1 T)]
      (Ioc (lowerScale t) (upperScale T m d)).indicator (fun A ↦ scalePolynomial A t) := by
  filter_upwards [ae_restrict_mem measurableSet_Ioc,
    ae_restrict_of_ae (volume.ae_ne (Real.sqrt m)),
    ae_restrict_of_ae (volume.ae_ne (Real.sqrt d)),
    ae_restrict_of_ae (volume.ae_ne (t/2))] with A hA hm hd ht'
  have hA0 : 0 ≤ A := by linarith [hA.1]
  have hcut : A ∈ Ioc (lowerScale t) (upperScale T m d) ↔
      (A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)) ∧ t ≤ 2*A := by
    simp only [lowerScale, upperScale, mem_Ioc, max_lt_iff, le_min_iff]
    rw [← Real.lt_sqrt hA0, ← Real.lt_sqrt hA0]
    constructor
    · rintro ⟨⟨_,htA⟩,_,hmA,hdA⟩
      exact ⟨⟨lt_of_le_of_ne hmA hm, lt_of_le_of_ne hdA hd⟩, by linarith⟩
    · rintro ⟨⟨hmA,hdA⟩,htA⟩
      exact ⟨⟨hA.1, by apply lt_of_le_of_ne (by linarith); exact Ne.symm ht'⟩,
        hA.2, hmA.le, hdA.le⟩
  by_cases hc : A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)
  · by_cases hs : t ≤ 2*A
    · rw [indicator_of_mem (hcut.mpr ⟨hc,hs⟩), scaleWindow, if_pos hc]
      exact (scalePolynomial_eq_source A t hA.1.le ht hs).symm
    · have hnot : A ∉ Ioc (lowerScale t) (upperScale T m d) := fun h ↦ hs (hcut.mp h).2
      rw [indicator_of_notMem hnot, scaleWindow, if_pos hc]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith [hA.1])
        (by rw [abs_of_nonneg ht]; linarith), mul_zero]
  · rw [indicator_of_notMem (fun h ↦ hc (hcut.mp h).1), scaleWindow, if_neg hc]

/-- Genuine local integrability, including the strict factor-cutoff jumps. -/
theorem scaleWindow_intervalIntegrable (T t : ℝ) (m d : ℕ) (hT : 1 ≤ T) (ht : 0 ≤ t) :
    IntervalIntegrable (fun A ↦ scaleWindow A t m d) volume 1 T := by
  have hp : Continuous (fun A ↦ scalePolynomial A t) := by unfold scalePolynomial; fun_prop
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le hT).2
  exact ((hp.intervalIntegrable 1 T).1.indicator measurableSet_Ioc).congr
    (scaleWindow_ae T t m d ht).symm

/-- The exact cutoff integral; both factor-dependent upper limits are retained. -/
theorem integral_scaleWindow (T : ℝ) (m d k : ℕ) (hT : 1 ≤ T)
    (hn : 1 ≤ m * d * k) :
    (∫ A in (1:ℝ)..T, scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) =
      omegaWeight T m d k := by
  let t := Real.log ((m*d*k : ℕ) : ℝ)
  have ht : 0 ≤ t := Real.log_nonneg (by exact_mod_cast hn)
  rw [intervalIntegral.integral_of_le hT,
    integral_congr_ae (scaleWindow_ae T t m d ht), setIntegral_indicator measurableSet_Ioc]
  have hsub : Ioc (lowerScale t) (upperScale T m d) ⊆ Ioc 1 T := by
    intro A hA
    exact ⟨(le_max_left _ _).trans_lt hA.1, hA.2.trans (min_le_left _ _)⟩
  rw [inter_eq_right.mpr hsub]
  unfold omegaWeight
  change (∫ A in Ioc (lowerScale t) (upperScale T m d), scalePolynomial A t) =
    if lowerScale t < upperScale T m d then
      scalePrimitive (upperScale T m d) t - scalePrimitive (lowerScale t) t else 0
  split_ifs with h
  · rw [← intervalIntegral.integral_of_le h.le]
    apply intervalIntegral.integral_eq_sub_of_hasDerivAt (f := fun A ↦ scalePrimitive A t)
    · intro A _
      exact scalePrimitive_hasDerivAt A t
    · exact (by unfold scalePolynomial; fun_prop :
        Continuous (fun A ↦ scalePolynomial A t)).intervalIntegrable _ _
  · rw [Ioc_eq_empty_of_le (le_of_not_gt h), setIntegral_empty]

private theorem weighted_typeTwo_eq (A T : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T) :
    scaleWeight A * typeTwoSource A =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d := by
  rw [typeTwoSource_eq_triple A hA _ (sourceKernelCutoff_mono hAT)]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro d _
  apply Finset.sum_congr rfl
  intro k _
  dsimp [scaleWindow, sourcePlainWeight]
  split_ifs <;> ring

/-- Integrability of the complete signed averaged source follows from its finite windows. -/
theorem weighted_typeTwo_intervalIntegrable (T : ℝ) (hT : 1 ≤ T) :
    IntervalIntegrable (fun A ↦ scaleWeight A * typeTwoSource A) volume 1 T := by
  have hi : IntervalIntegrable (fun A ↦
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) volume 1 T := by
    apply sum_integrable
    intro m hm
    apply sum_integrable
    intro d hd
    apply sum_integrable
    intro k hk
    have hn : 1 ≤ m*d*k := Nat.mul_pos
      (Nat.mul_pos (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1) (Finset.mem_Icc.mp hk).1
    exact (scaleWindow_intervalIntegrable T _ m d hT
      (Real.log_nonneg (by exact_mod_cast hn))).const_mul _
  apply hi.congr
  intro A hA
  rw [uIoc_of_le hT] at hA
  exact (weighted_typeTwo_eq A T hA.1.le hA.2).symm

/-- Exact finite scale integration of the complete signed Type II expression. -/
theorem integratedTypeTwo_eq_rectangle (T : ℝ) (hT : 1 ≤ T) :
    integratedTypeTwo T =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff T),
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          omegaWeight T m d k := by
  have hi (m d k : ℕ) (hm : 1 ≤ m) (hd : 1 ≤ d) (hk : 1 ≤ k) :
      IntervalIntegrable (fun A ↦
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          scaleWindow A (Real.log ((m*d*k : ℕ) : ℝ)) m d) volume 1 T :=
    (scaleWindow_intervalIntegrable T _ m d hT
      (Real.log_nonneg (by exact_mod_cast (Nat.mul_pos (Nat.mul_pos hm hd) hk)))).const_mul _
  unfold integratedTypeTwo
  have he := intervalIntegral.integral_congr (μ := volume) (a := (1:ℝ)) (b := T) (fun A hA ↦
    weighted_typeTwo_eq A T (by rw [uIcc_of_le hT] at hA; exact hA.1)
      (by rw [uIcc_of_le hT] at hA; exact hA.2))
  rw [he, intervalIntegral.integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro d hd
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro k hk
        rw [intervalIntegral.integral_const_mul, integral_scaleWindow T m d k hT
          (Nat.mul_pos (Nat.mul_pos (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1)
            (Finset.mem_Icc.mp hk).1)]
      · intro k hk
        exact hi m d k (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hk).1
    · intro d hd
      exact sum_integrable (fun k hk ↦ hi m d k
        (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hk).1)
  · intro m hm
    exact sum_integrable (fun d hd ↦ sum_integrable (fun k hk ↦
      hi m d k (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hk).1))

/-- Products outside the closed upper inventory have an empty scale window. -/
theorem omegaWeight_zero_of_cutoff_lt (T : ℝ) (m d k : ℕ)
    (hn : sourceKernelCutoff T < m * d * k) : omegaWeight T m d k = 0 := by
  have hn0 : 0 < ((m*d*k : ℕ) : ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hn
  have hnexp : Real.exp (2*T) < ((m*d*k : ℕ) : ℝ) := by
    apply lt_of_not_ge
    intro h
    exact (Nat.not_le.mpr hn) ((Nat.le_floor_iff (Real.exp_pos _).le).2 h)
  have hl := (Real.lt_log_iff_exp_lt hn0).2 hnexp
  unfold omegaWeight
  apply if_neg
  intro h
  have h1 : Real.log ((m*d*k : ℕ) : ℝ)/2 < upperScale T m d :=
    (le_max_right _ _).trans_lt h
  have h2 : upperScale T m d ≤ T := min_le_left _ _
  linarith

/-- The requested closed product inventory, with no sign or factor endpoint removed. -/
theorem integratedTypeTwo_eq_finite (T : ℝ) (hT : 1 ≤ T) :
    integratedTypeTwo T =
      ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff T),
      ∑ k ∈ (Finset.Icc 1 (sourceKernelCutoff T)).filter
        (fun k ↦ m*d*k ≤ sourceKernelCutoff T),
        (vonMangoldt m * (moebius d : ℝ) / Real.sqrt ((m*d*k : ℕ) : ℝ)) *
          omegaWeight T m d k := by
  rw [integratedTypeTwo_eq_rectangle T hT]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro d _
  symm
  apply Finset.sum_subset (Finset.filter_subset _ _)
  intro k hk hnot
  have hcut : sourceKernelCutoff T < m*d*k := by
    by_contra h
    exact hnot (Finset.mem_filter.mpr ⟨hk,by omega⟩)
  rw [omegaWeight_zero_of_cutoff_lt T m d k hcut, mul_zero]

/-- The lower divisor atom has an empty scale interval; its Möbius coefficient is untouched. -/
theorem omegaWeight_divisor_one (T : ℝ) (m k : ℕ) : omegaWeight T m 1 k = 0 := by
  unfold omegaWeight
  apply if_neg
  intro h
  have h1 : (1:ℝ) < upperScale T m 1 := (le_max_left _ _).trans_lt h
  have h2 : upperScale T m 1 ≤ 1 := by
    unfold upperScale
    simp only [Nat.cast_one, Real.sqrt_one]
    exact (min_le_right _ _).trans (min_le_right _ _)
  linarith

/-- The unit Mangoldt atom is zero independently of its scale window. -/
theorem unit_mangoldt_atom (T : ℝ) (d k : ℕ) :
    (vonMangoldt 1 * (moebius d : ℝ) / Real.sqrt ((1*d*k : ℕ) : ℝ)) *
      omegaWeight T 1 d k = 0 := by simp

end
end EstimateScaleAverage
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
