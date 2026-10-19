import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanBounds

/-!
# Vaughan's identity for the unchanged signed source

The Type II term is defined independently as the complete finite signed
bilinear sum. The exact source support justifies completion of each inventory.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateVaughanSource

open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity
open EstimatePlainKernel EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimateMobiusSplit EstimatePrimeSmoothDefect EstimateMertensAbel
open EstimateMertensResidual EstimateWeightedMobiusPairing PrimePowerDescent

noncomputable section

/-- Closed short-factor cutoff at the actual real scale. -/
def vaughanCutoff (A : ℝ) : ℕ := ⌊A^2⌋₊

/-- The short von Mangoldt sector. -/
def shortMangoldtSource (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m * sourcePlainWeight A m

/-- The short Möbius logarithmic-kernel sector. -/
def shortLogSource (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * sourceMobiusKernel A d

/-- The doubly short plain-kernel sector, subtracted in Vaughan's identity. -/
def shortPlainSource (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
    realMoebius d * vonMangoldt m * sourcePlainKernel A ((d*m : ℕ) : ℝ)

/-- The complete signed long-long sector, with its original product restriction. -/
def typeTwoSource (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
    ∑ n ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
      (fun n ↦ m*n ≤ sourceKernelCutoff A),
      vonMangoldt m * beta (vaughanCutoff A) n / Real.sqrt ((m*n : ℕ) : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log m + Real.log n)

theorem vaughanCutoff_pos (A : ℝ) (hA : 1 ≤ A) : 1 ≤ vaughanCutoff A := by
  apply (Nat.le_floor_iff (sq_nonneg A)).2
  norm_num only [Nat.cast_one]
  nlinarith

theorem vaughanCutoff_le_sourceKernelCutoff (A : ℝ) (hA : 1 ≤ A) :
    vaughanCutoff A ≤ sourceKernelCutoff A :=
  Nat.floor_mono (sourceLower_le_sourceUpper A hA)

theorem sqrt_vaughanCutoff_le (A : ℝ) (hA : 1 ≤ A) :
    Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
  apply (Real.sqrt_le_left (by linarith)).2
  exact Nat.floor_le (sq_nonneg A)

/-- The real plain weight agrees with the existing actual-source weight on positive integers. -/
theorem sourcePlainWeight_nat_eq (A : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    sourcePlainWeight A n = closedPrimeWeight A n := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast hn
  dsimp [sourcePlainWeight, closedPrimeWeight, exponentialTest]
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hn0]
  ring

/-- The actual upper endpoint is zero; it is retained before inventory completion. -/
theorem sourcePlainWeight_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    sourcePlainWeight A (Real.exp (2*A)) = 0 := by
  dsimp [sourcePlainWeight]
  rw [Real.log_exp, sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (le_abs_self _), zero_div]

/-- Every integer beyond the actual closed inventory has zero source weight. -/
theorem sourcePlainWeight_zero_of_cutoff_lt (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hn : sourceKernelCutoff A < n) : sourcePlainWeight A n = 0 := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Nat.zero_le _).trans_lt hn
  have hu : Real.exp (2*A) < (n : ℝ) := by
    apply lt_of_not_ge
    intro h
    exact (Nat.not_le.mpr hn) ((Nat.le_floor_iff (Real.exp_pos _).le).2 h)
  have hl : 2*A < Real.log n := (Real.lt_log_iff_exp_lt hn0).2 hu
  dsimp [sourcePlainWeight]
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith)
    (hl.le.trans (le_abs_self _)), zero_div]

theorem sourceMobiusKernel_eq_plainWeight (A : ℝ) (d : ℕ) (hd : 1 ≤ d) :
    sourceMobiusKernel A d = ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
      Real.log k * sourcePlainWeight A ((d*k : ℕ) : ℝ) := by
  apply Finset.sum_congr rfl
  intro k hk
  have hk1 := (Finset.mem_Icc.mp hk).1
  have hp : 1 ≤ d*k := Nat.mul_pos hd hk1
  rw [sourcePlainWeight_nat_eq A (d*k) hp]
  simp only [sourceKernelTerm, closedPrimeWeight, Nat.cast_mul]

/-- Source-faithful rectangle completion of the signed bilinear term. -/
theorem typeTwoSource_eq_rectangle (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      vonMangoldt m * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ) := by
  classical
  unfold typeTwoSource
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  have hm0 : (m : ℝ) ≠ 0 := by
    exact_mod_cast (by have := (Finset.mem_Ioc.mp hm).1; omega : m ≠ 0)
  calc
    _ = ∑ n ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
        (fun n ↦ m*n ≤ sourceKernelCutoff A),
        vonMangoldt m * (beta (vaughanCutoff A) n * sourcePlainWeight A ((m*n : ℕ) : ℝ)) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hn0 : (n : ℝ) ≠ 0 := by
        have hnpos : 0 < n := (Nat.zero_le _).trans_lt
          (Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1).1
        exact_mod_cast hnpos.ne'
      dsimp [sourcePlainWeight]
      rw [Nat.cast_mul, Real.log_mul hm0 hn0]
      ring
    _ = _ := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro n hn hnot
      have hp : sourceKernelCutoff A < m*n := by
        by_contra h
        exact hnot (Finset.mem_filter.mpr ⟨hn, by omega⟩)
      rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m*n) hp, mul_zero, mul_zero]

/-- The original residual as a closed weight sum, including the zero unit atom. -/
theorem mertensResidual_eq_plainWeight_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      vonMangoldt n * sourcePlainWeight A n := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  calc
    closedPrimeMoment A = ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        vonMangoldt n * sourcePlainWeight A n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [sourcePlainWeight_nat_eq A n (by have := (Finset.mem_Icc.mp hn).1; omega)]
      rfl
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hn).1; omega,
          (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnot
        have hn1 : n = 1 := by
          have h := Finset.mem_Icc.mp hn
          simp only [Finset.mem_Icc] at hnot
          omega
        subst n
        simp

/-- Exact decomposition of the unchanged residual; both Vaughan signs are retained. -/
theorem mertensResidual_eq_vaughan (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A + shortLogSource A - shortPlainSource A +
      typeTwoSource A := by
  rw [mertensResidual_eq_plainWeight_sum A hA]
  have hq := vaughanCutoff_le_sourceKernelCutoff A hA
  rw [finite_vaughan_sum _ _ _ hq hq (fun n ↦ sourcePlainWeight A n)
    (sourcePlainWeight_zero_of_cutoff_lt A hA), typeTwoSource_eq_rectangle A hA]
  unfold shortMangoldtSource shortLogSource shortPlainSource
  congr 2
  · congr 1
    apply Finset.sum_congr rfl
    intro d hd
    rw [sourceMobiusKernel_eq_plainWeight A d (Finset.mem_Icc.mp hd).1]
    rfl
  · apply Finset.sum_congr rfl
    intro d _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    simp only [sourcePlainKernel, Finset.mul_sum, realMoebius, Nat.cast_mul, mul_assoc]

/-- Pointwise source norm bound, used only in the short sectors. -/
theorem sourcePlainWeight_abs_le (A x : ℝ) (hA : 1 ≤ A) :
    |sourcePlainWeight A x| ≤ 1 / Real.sqrt x := by
  rw [sourcePlainWeight, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
  exact div_le_div_of_nonneg_right
    ((EstimateActualSourceKernelBound.sourceCorrelation_profileSupBounds A hA).2.2.1 _)
    (Real.sqrt_nonneg _)

/-- The short von Mangoldt sector has a linear all-scale bound. -/
theorem shortMangoldtSource_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |shortMangoldtSource A| ≤ 2 * (Real.log 4 + 4) * A := by
  unfold shortMangoldtSource
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
        |vonMangoldt m * sourcePlainWeight A m| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m / Real.sqrt m := by
      apply Finset.sum_le_sum
      intro m _
      rw [abs_mul, abs_of_nonneg vonMangoldt_nonneg, div_eq_mul_inv]
      simpa only [one_div] using mul_le_mul_of_nonneg_left
        (sourcePlainWeight_abs_le A m hA) (vonMangoldt_nonneg (n := m))
    _ ≤ 2 * (Real.log 4 + 4) * Real.sqrt (vaughanCutoff A) :=
      EstimateVaughanBounds.sum_vonMangoldt_div_sqrt_le _
    _ ≤ _ := mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by positivity)

/-- The short Möbius/logarithmic-kernel sector has a linear all-scale bound. -/
theorem shortLogSource_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |shortLogSource A| ≤ 16*A + 40 := by
  have hA0 : 0 < A := by linarith
  have hcoef : 0 ≤ 8+20/A := by positivity
  unfold shortLogSource
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |realMoebius d * sourceMobiusKernel A d| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (8+20/A) * (1 / Real.sqrt d) := by
      apply Finset.sum_le_sum
      intro d hd
      have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
      rw [abs_mul]
      calc
        _ ≤ 1 * ((8+20/A) / Real.sqrt d) :=
          mul_le_mul (EstimateMovingFrontBound.realMoebius_abs_le_one d)
            (EstimateActualSourceKernelBound.sourceMobiusKernel_abs_le A d hA hd1)
            (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = (8+20/A) * ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt d :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (8+20/A) * (2 * Real.sqrt (vaughanCutoff A)) :=
      mul_le_mul_of_nonneg_left (EstimateMovingFrontBound.sum_reciprocal_sqrt_le _) hcoef
    _ ≤ (8+20/A) * (2*A) := by gcongr; exact sqrt_vaughanCutoff_le A hA
    _ = _ := by field_simp; ring

/-- Both short factors have only quadratic cost under the actual plain kernel. -/
theorem shortPlainSource_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |shortPlainSource A| ≤ 12*(Real.log 4+4)*A^2 + 40*(Real.log 4+4)*A := by
  have hA0 : 0 < A := by linarith
  have hc : 0 ≤ 3+10/A := by positivity
  have hk : 0 ≤ Real.log 4+4 := by positivity
  have hterm (d m : ℕ) (hd : 1 ≤ d) (hm : 1 ≤ m) :
      |realMoebius d * vonMangoldt m * sourcePlainKernel A ((d*m : ℕ) : ℝ)| ≤
        (3+10/A) * (1/Real.sqrt d) * (vonMangoldt m / Real.sqrt m) := by
    have hdm : (1 : ℝ) ≤ ((d*m : ℕ) : ℝ) := by exact_mod_cast (Nat.mul_pos hd hm)
    rw [abs_mul, abs_mul, abs_of_nonneg vonMangoldt_nonneg]
    calc
      _ ≤ 1 * vonMangoldt m * ((3+10/A) / Real.sqrt ((d*m : ℕ) : ℝ)) := by
        apply mul_le_mul
        · exact mul_le_mul_of_nonneg_right
            (EstimateMovingFrontBound.realMoebius_abs_le_one d) vonMangoldt_nonneg
        · exact sourcePlainKernel_abs_le A _ hA hdm
        · exact abs_nonneg _
        · positivity
      _ = _ := by rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg d)]; ring
  have hds : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1/Real.sqrt d) ≤ 2*A :=
    (EstimateMovingFrontBound.sum_reciprocal_sqrt_le _).trans
      (mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by norm_num))
  have hms : (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m / Real.sqrt m) ≤
      2*(Real.log 4+4)*A :=
    (EstimateVaughanBounds.sum_vonMangoldt_div_sqrt_le _).trans
      (mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by positivity))
  unfold shortPlainSource
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          |realMoebius d * vonMangoldt m * sourcePlainKernel A ((d*m : ℕ) : ℝ)| := by
      exact (Finset.abs_sum_le_sum_abs _ _).trans
        (Finset.sum_le_sum (fun d _ ↦ Finset.abs_sum_le_sum_abs _ _))
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          (3+10/A)*(1/Real.sqrt d)*(vonMangoldt m / Real.sqrt m) := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro m hm
      exact hterm d m (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hm).1
    _ = (3+10/A) * (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1/Real.sqrt d) *
        (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m / Real.sqrt m) := by
      simp only [Finset.mul_sum, Finset.sum_mul]
      rw [Finset.sum_comm]
    _ ≤ (3+10/A) * (2*A) * (2*(Real.log 4+4)*A) := by gcongr
    _ = _ := by field_simp; ring

/-- Unconditional removal of every short-factor Vaughan term, through all real scales. -/
theorem mertensResidual_sub_typeTwo_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - typeTwoSource A| ≤
      12*(Real.log 4+4)*A^2 + (16+42*(Real.log 4+4))*A + 40 := by
  rw [mertensResidual_eq_vaughan A hA, add_sub_cancel_right]
  have hs := abs_add_le (shortMangoldtSource A) (shortLogSource A)
  have ht := abs_add_le (shortMangoldtSource A + shortLogSource A) (-shortPlainSource A)
  rw [abs_neg, ← sub_eq_add_neg] at ht
  linarith [shortMangoldtSource_abs_le A hA, shortLogSource_abs_le A hA,
    shortPlainSource_abs_le A hA]

/-- A single explicit quadratic bound for the complete short-factor removal. -/
theorem mertensResidual_sub_typeTwo_abs_le_quadratic (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - typeTwoSource A| ≤ (272+54*Real.log 4)*A^2 := by
  apply (mertensResidual_sub_typeTwo_abs_le A hA).trans
  have hA0 : 0 ≤ A := by linarith
  have h := mul_nonneg (show 0 ≤ Real.log 4+4 by positivity)
    (mul_nonneg hA0 (sub_nonneg.mpr hA))
  nlinarith [mul_nonneg hA0 (sub_nonneg.mpr hA)]

end
end EstimateVaughanSource
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
