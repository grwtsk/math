# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceWholePlainConvolution.Variant02300dcb02c9d2f90f0a8e8c3a50e25b7f05aca56e2a0b9a753e9a00e7dcf35f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88151016208cc44f180ce7e88536b9a7014c4183` · SHA-256 `02300dcb02c9d2f90f0a8e8c3a50e25b7f05aca56e2a0b9a753e9a00e7dcf35f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCutoffOneLedger

/-!
# Complete Mangoldt rows and the cutoff-one corrections

UNCOMPILED preparation over the recorded, unmerged source closure. Finite
Dirichlet convolution precedes absolute values. The whole Mangoldt-weighted
plain rectangle reduces to the original logarithmic sample at one. Removing
the unit column restores the literal residual, and equality-of-indices deletion
retains the raw cutoff-one diagonal. The independent main formula and ledger
definitions remain in their existing owner. No baseline or Abel witness is
constructed, and no per-row absolute error is summed over a growing long axis.

Research direction and evaluation: grwtsk contributors.
Formal preparation: OpenAI Codex; independent verification is a separate gate.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceWholePlainConvolution

open ArithmeticFunction
open scoped BigOperators
open SourcePairing SourceCutoffFlux SourceCutoffOneLedger
open SourceSamplingPointwise SourceSamplingCoefficients SourceShortSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimatePlainKernel EstimateSourceMobiusKernel EstimateVaughanIdentity EstimateVaughanSource

noncomputable section

/-- The full original closed plain inventory with its actual Mangoldt coefficients. -/
def completeMangoldtPlainRows (A : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), vonMangoldt m * sourcePlainKernel A m

private theorem correlation_deriv_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 0).hasDerivAt
  have hcn : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-(0 : ℝ)) := by
    simpa only [neg_zero] using hc
  have hn : HasDerivAt
      (fun u : ℝ ↦ sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hcn.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ ↦ sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd := hc.unique hn
  linarith

private theorem samplingAlpha1_abs_le_eight : |samplingAlpha1| ≤ (8 : ℝ) := by
  have h0 := signedCoefficientMoment_abs_le_factorial 0
  have h1 := signedCoefficientMoment_abs_le_factorial 1
  norm_num at h0 h1
  unfold samplingAlpha1
  calc
    |signedCoefficientMoment 0 - signedCoefficientMoment 1 / 2| ≤
        |signedCoefficientMoment 0| + |signedCoefficientMoment 1 / 2| := abs_sub_le _ _
    _ = |signedCoefficientMoment 0| + |signedCoefficientMoment 1| / 2 := by
      rw [abs_div]
      norm_num
    _ ≤ 8 := by linarith

private theorem cutoffOneDiagonal_eq_neg_plainDiagonal (A : ℝ) :
    cutoffOneDiagonal A =
      -diagonal (Finset.Ioc 1 (sourceKernelCutoff A)) (sourceKernel A) (fun _ ↦ 1) := by
  unfold cutoffOneDiagonal diagonal
  simp only [mul_one]
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [beta_one_of_one_lt m (Finset.mem_Ioc.mp hm).1]
  ring

/-- The actual source support completes the product mask before finite convolution. -/
theorem completeRows_eq_logKernel_one (A : ℝ) (hA : 1 ≤ A) :
    completeMangoldtPlainRows A = sourceMobiusKernel A 1 := by
  have hf := finite_convolution_sum (sourceKernelCutoff A) vonMangoldt
    (zeta : ArithmeticFunction ℝ) (fun n ↦ sourcePlainWeight A n)
    (sourcePlainWeight_zero_of_cutoff_lt A hA)
  rw [vonMangoldt_mul_zeta] at hf
  simp only [ArithmeticFunction.log_apply] at hf
  have hz (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff A)) :
      (zeta : ArithmeticFunction ℝ) n = 1 := by
    rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hn).1; omega),
      Nat.cast_one]
  have hr :
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A),
        ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
          vonMangoldt m * (zeta : ArithmeticFunction ℝ) n *
            sourcePlainWeight A ((m * n : ℕ) : ℝ)) = completeMangoldtPlainRows A := by
    unfold completeMangoldtPlainRows sourcePlainKernel
    apply Finset.sum_congr rfl
    intro m _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [hz n hn]
    simp only [mul_one, Nat.cast_mul]
  rw [hr] at hf
  have ht := sourceMobiusKernel_eq_plainWeight A 1 (by norm_num)
  simp only [Nat.one_mul] at ht
  exact hf.symm.trans ht.symm

/-- Unit normalization and evenness specialize the independently defined logarithmic row. -/
theorem logSamplingMainTerm_one (A : ℝ) (hA : 1 ≤ A) :
    sourceLogSamplingMainTerm A 1 = samplingAlpha1 := by
  unfold sourceLogSamplingMainTerm
  rw [Real.log_one, actual_correlation_at_zero A hA,
    correlation_deriv_at_zero (by linarith : 0 < A)]
  norm_num

/-- Whole-row cancellation pays only the original logarithmic sampling error at one. -/
theorem completeRows_sub_alpha1_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |completeMangoldtPlainRows A - samplingAlpha1| ≤
      96 * (162826 / 7623 : ℝ) / A ^ 2 := by
  rw [completeRows_eq_logKernel_one A hA]
  have h := sourceMobiusKernel_sub_mainTerm_abs_le hA (le_refl (1 : ℝ))
  simpa only [Real.sqrt_one, mul_one, logSamplingMainTerm_one A hA] using h

/-- A uniform rectangle budget does not omit its later unit-column correction. -/
theorem completeRows_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |completeMangoldtPlainRows A| ≤ 8 + 96 * (162826 / 7623 : ℝ) := by
  have hsq : 1 ≤ A ^ 2 := by nlinarith
  have hdiv : 96 * (162826 / 7623 : ℝ) / A ^ 2 ≤ 96 * (162826 / 7623 : ℝ) :=
    div_le_self (by norm_num) hsq
  calc
    |completeMangoldtPlainRows A| =
        |(completeMangoldtPlainRows A - samplingAlpha1) + samplingAlpha1| := by
      congr 1
      ring
    _ ≤ |completeMangoldtPlainRows A - samplingAlpha1| + |samplingAlpha1| :=
      abs_add_le _ _
    _ ≤ 8 + 96 * (162826 / 7623 : ℝ) := by
      linarith [completeRows_sub_alpha1_abs_le A hA, samplingAlpha1_abs_le_eight]

/-- Both strict axes remove the unit column and retain the original raw deleted diagonal. -/
theorem plainOff_one_eq_rows_sub_residual_add_diagonal (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A 1 (sourceKernelCutoff A) =
      completeMangoldtPlainRows A - mertensResidual A + cutoffOneDiagonal A := by
  classical
  let S := Finset.Ioc 1 (sourceKernelCutoff A)
  have hN : 1 ≤ sourceKernelCutoff A :=
    (vaughanCutoff_pos A hA).trans (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hI : Finset.Icc 1 (sourceKernelCutoff A) = insert 1 S := by
    ext m
    simp only [S, Finset.mem_Icc, Finset.mem_insert, Finset.mem_Ioc]
    omega
  have hn : 1 ∉ S := by simp [S]
  have hs : (∑ m ∈ S, vonMangoldt m * sourcePlainWeight A m) = mertensResidual A := by
    rw [mertensResidual_eq_plainWeight_sum A hA, hI, Finset.sum_insert hn]
    simp only [vonMangoldt_apply_one, zero_mul, zero_add]
  have hfull :
      rectangle (Finset.Icc 1 (sourceKernelCutoff A)) (sourceKernel A) (fun _ ↦ 1) =
        completeMangoldtPlainRows A := by
    simp only [rectangle, sourceKernel, completeMangoldtPlainRows, sourcePlainKernel,
      mul_one, Nat.cast_mul, Finset.mul_sum]
  have hrow : rowBoundary S (sourceKernel A) (fun _ ↦ 1) 1 = 0 := by
    simp [rowBoundary, sourceKernel]
  have hcol : columnBoundary S (sourceKernel A) (fun _ ↦ 1) 1 = mertensResidual A := by
    simpa only [columnBoundary, sourceKernel, Nat.mul_one, mul_one] using hs
  have hcorner : sourceKernel A 1 1 * (1 : ℝ) = 0 := by simp [sourceKernel]
  have hr : completeMangoldtPlainRows A =
      rectangle S (sourceKernel A) (fun _ ↦ 1) + mertensResidual A := by
    rw [← hfull, hI, rectangle_insert S (sourceKernel A) (fun _ ↦ 1) 1 hn,
      hrow, hcol, hcorner]
    ring
  have hd := cutoffOneDiagonal_eq_neg_plainDiagonal A
  change rectangle S (sourceKernel A) (fun _ ↦ 1) -
      diagonal S (sourceKernel A) (fun _ ↦ 1) = _
  change cutoffOneDiagonal A = -diagonal S (sourceKernel A) (fun _ ↦ 1) at hd
  linarith

/-- The bounded complete log row still restores the literal residual and deleted diagonal. -/
theorem plainOff_one_eq_logRow_sub_residual_add_diagonal (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A 1 (sourceKernelCutoff A) =
      sourceMobiusKernel A 1 - mertensResidual A + cutoffOneDiagonal A := by
  rw [plainOff_one_eq_rows_sub_residual_add_diagonal A hA,
    completeRows_eq_logKernel_one A hA]

/-- The existing independent main formula retains every row and endpoint correction. -/
theorem independentMain_one_row_decomposition (A : ℝ) (hA : 1 ≤ A) :
    mainTermAt A 1 (sourceKernelCutoff A) =
      completeMangoldtPlainRows A - mertensResidual A + cutoffOneDiagonal A +
        SourceDiagonalMainTerm.diagonalMainCoefficient A * A -
          sourceLogSamplingMainTerm A 1 := by
  rw [SourceCutoffOneLedger.mainTermAt_one_formula,
    plainOff_one_eq_rows_sub_residual_add_diagonal A hA]

end
end FormalResearch.RiemannHypothesis.SourceWholePlainConvolution
```
