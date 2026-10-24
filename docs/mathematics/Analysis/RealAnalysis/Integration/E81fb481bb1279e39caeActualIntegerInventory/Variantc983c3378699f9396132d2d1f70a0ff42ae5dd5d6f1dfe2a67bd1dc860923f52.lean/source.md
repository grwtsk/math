# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.E81fb481bb1279e39caeActualIntegerInventory.Variantc983c3378699f9396132d2d1f70a0ff42ae5dd5d6f1dfe2a67bd1dc860923f52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9dcde700ff072d0679f28e164851e95ea1ecb0c` · SHA-256 `c983c3378699f9396132d2d1f70a0ff42ae5dd5d6f1dfe2a67bd1dc860923f52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import UpperSampling
import FormalResearch.RiemannHypothesis.SourceSamplingPointwise
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact full integer-cell inventory for the original source arithmetic.
The n=1 negative unit atom, all prime powers, and the closed floor are retained.
This file proves identities and integrability, not an arithmetic upper witness.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualIntegerInventory
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingTaylor SourcePositiveSampling SourceSamplingRemainder
open SourceSamplingCoefficients SourceSamplingPointwise SourceFractionalQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateSourceMobiusKernel EstimateMertensResidual
open EstimatePrimeSmoothDefect EstimateMobiusSplit EstimateMertensAbel PrimePowerDescent
open UpperSampling

/-- Full unchanged integer inventory, including its unit cell. -/
def plainInventory (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), plainProfile A 1 n

/-- The literal compensated Mangoldt coefficients, independently specified. -/
def integerJ (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
    (ArithmeticFunction.vonMangoldt n - 1) * plainProfile A 1 n

 theorem integer_cutoff_eq (A : ℝ) : sourceKernelCutoff A = ⌊Real.exp (2*A)⌋₊ := rfl

 theorem plainProfile_unit_eq {A : ℝ} {u : ℝ} (hu : 0 < u) :
    plainProfile A 1 u = sourceCorrelation explicitSecondDerivative A (Real.log u)/Real.sqrt u := by
  rw [plainProfile_eq_of_pos A 1 hu, sourcePlainSamplingTerm_eq_source_weight A
    (by norm_num : (0:ℝ) < 1) hu]
  simp only [one_mul]

 theorem plainProfile_natural_eq (A : ℝ) {n : ℕ} (hn : 0 < n) :
    plainProfile A 1 n = closedPrimeWeight A n := by
  rw [plainProfile_eq_of_pos A 1 (by exact_mod_cast hn)]
  simp only [sourcePlainSamplingTerm, Real.log_one, zero_add, closedPrimeWeight, exponentialTest]

 theorem integerJ_eq_literal (A : ℝ) :
    integerJ A = ∑ n ∈ Finset.Icc 1 ⌊Real.exp (2*A)⌋₊,
      (ArithmeticFunction.vonMangoldt n-1) *
        (sourceCorrelation explicitSecondDerivative A (Real.log n)/Real.sqrt n) := by
  unfold integerJ
  rw [integer_cutoff_eq]
  apply Finset.sum_congr rfl
  intro n hn
  rw [plainProfile_unit_eq (by exact_mod_cast (by have := (Finset.mem_Icc.mp hn).1; omega : 0<n))]

 theorem integer_unit_atom {A : ℝ} (hA : 1 ≤ A) :
    (ArithmeticFunction.vonMangoldt 1-1) * plainProfile A 1 1 = -1 := by
  rw [plainProfile_unit_eq (by norm_num : (0:ℝ) < 1)]
  simp only [Real.log_one, Real.sqrt_one, div_one, ArithmeticFunction.vonMangoldt_apply_one]
  rw [EstimateCorrelation.actual_correlation_at_zero A hA]
  norm_num

 theorem touching_source_zero {A : ℝ} (hA : 0 < A) :
    plainProfile A 1 (Real.exp (2*A)) = 0 := by
  apply plainProfile_zero_above hA 1
  simp only [Real.log_one, sub_zero, le_refl]

 theorem mangoldt_integer_inventory {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      ArithmeticFunction.vonMangoldt n * plainProfile A 1 n := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment primePowerInventory
  rw [← integer_cutoff_eq]
  calc
    _ = ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        ArithmeticFunction.vonMangoldt n * plainProfile A 1 n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [plainProfile_natural_eq A (by have := (Finset.mem_Icc.mp hn).1; omega)]
      rfl
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨(by have := (Finset.mem_Icc.mp hn).1; omega),
          (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn1 : n=1 := by
          simp only [Finset.mem_Icc] at hn hnnot
          omega
        subst n
        simp

 theorem residual_sub_integerJ_eq_plain {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A-integerJ A = plainInventory A := by
  rw [mangoldt_integer_inventory hA]
  unfold integerJ plainInventory
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

 theorem fractional_derivative_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun u => Int.fract u * deriv (plainProfile A 1) u) (Ioi 0) := by
  have hf := plainProfile_contDiff (by linarith : 0<A) 1
  have hs := plainProfile_hasCompactSupport (by linarith : 0<A) 1
  have hd : Integrable (deriv (plainProfile A 1)) :=
    (hf.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  exact (hd.bdd_mul measurable_fract.aestronglyMeasurable (Filter.Eventually.of_forall (fun u => by
    rw [Real.norm_eq_abs, abs_of_nonneg (Int.fract_nonneg u)]
    exact (Int.fract_lt_one u).le))).integrableOn

 theorem fractional_model_integrable (A : ℝ) :
    IntegrableOn (fun u => Int.fract u * plainModelDerivative A 1 u) (Ioi 0) := by
  have he : (fun u => Int.fract u * plainModelDerivative A 1 u) = fun u =>
      (-sourceCorrelation explicitSecondDerivative A 0/2+
        deriv (sourceCorrelation explicitSecondDerivative A) 0)*coefficientWeight 0 u +
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0/2)*coefficientWeight 1 u := by
    funext u
    simp only [plainModelDerivative, Real.log_one, Real.sqrt_one, one_div_one, one_mul,
      coefficientWeight, pow_zero, pow_one]
    ring
  rw [he]
  exact ((coefficientWeight_integrable 0).const_mul _).add
    ((coefficientWeight_integrable 1).const_mul _)

 theorem full_remainder_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (actualRemainder A) (Ioi 0) := by
  have he : actualRemainder A = fun u =>
      Int.fract u*deriv (plainProfile A 1) u - Int.fract u*plainModelDerivative A 1 u := by
    funext u
    unfold actualRemainder
    ring
  rw [he]
  exact (fractional_derivative_integrable hA).sub (fractional_model_integrable A)

 theorem actual_remainder_sum_identity {A : ℝ} (hA : 1 ≤ A) :
    plainInventory A-sourcePlainSamplingMainTerm A 1 = ∫ u in Ioi (0:ℝ), actualRemainder A u := by
  have hq := positive_axis_quadrature (plainProfile A 1)
    (plainProfile_contDiff (by linarith : 0<A) 1)
    (plainProfile_hasCompactSupport (by linarith : 0<A) 1) (sourceKernelCutoff A)
    (fun u hu => by simp [plainProfile, not_lt.mpr hu])
    (fun u hu => plainProfile_cutoff_tail hA (by norm_num : (1:ℝ) ≤ 1) hu)
  rw [plainProfile_positive_integral_zero hA 1, sub_zero] at hq
  unfold plainInventory
  rw [hq, ← plain_model_integral_eq_mainTerm,
    ← integral_sub (fractional_derivative_integrable hA) (fractional_model_integrable A)]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun u => by unfold actualRemainder; ring)

 theorem full_remainder_split {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in Ioi (0:ℝ), actualRemainder A u) =
      (∫ u in (0:ℝ)..1, actualRemainder A u)+∫ u in Ioi (1:ℝ), actualRemainder A u :=
  (intervalIntegral.integral_interval_add_Ioi (full_remainder_integrable hA)
    (upper_remainder_integrable hA)).symm

#print axioms plainInventory
#print axioms integerJ
#print axioms integer_cutoff_eq
#print axioms plainProfile_unit_eq
#print axioms plainProfile_natural_eq
#print axioms integerJ_eq_literal
#print axioms integer_unit_atom
#print axioms touching_source_zero
#print axioms mangoldt_integer_inventory
#print axioms residual_sub_integerJ_eq_plain
#print axioms fractional_derivative_integrable
#print axioms fractional_model_integrable
#print axioms full_remainder_integrable
#print axioms actual_remainder_sum_identity
#print axioms full_remainder_split
end ContinuousResearch.ActualIntegerInventory
```
