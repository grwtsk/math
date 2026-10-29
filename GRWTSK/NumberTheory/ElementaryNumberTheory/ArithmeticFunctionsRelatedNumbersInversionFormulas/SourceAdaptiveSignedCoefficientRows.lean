import SourceAdaptiveVaughanSignedMain

/-! Exact finite coefficient reconstruction of the independently defined adaptive main.
The moving truncated convolution boundary remains signed. No uniform cap is claimed.
grwtsk contributors: direction, selection, corrections and evaluation.
Codex/ChatGPT: finite proof construction and focused scratch checking. -/
set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveSignedCoefficients
open ArithmeticFunction
open scoped BigOperators
open RH16AdaptiveVaughan
open FormalResearch.RiemannHypothesis
open SourceSamplingPointwise SourceSamplingCoefficients SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel Realization

/-- Complete closed rectangle convolution; every prime power remains in Lambda. -/
def truncatedConvolution (U V n : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, ∑ m ∈ Finset.Icc 1 V,
    if d * m = n then (moebius d : ℝ) * vonMangoldt m else 0

/-- The rectangle reindexes faithfully into the SAME closed original cutoff. -/
theorem truncatedConvolution_weighted_sum (N U V : ℕ) (hUV : U * V ≤ N)
    (F : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, truncatedConvolution U V n * F n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * F (d * m)) := by
  classical
  unfold truncatedConvolution
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro d hd
  rw [Finset.sum_comm, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  have hp : d * m ∈ Finset.Icc 1 N := by
    have hd1 := (Finset.mem_Icc.mp hd).1
    have hm1 := (Finset.mem_Icc.mp hm).1
    have hdm := Nat.mul_le_mul (Finset.mem_Icc.mp hd).2 (Finset.mem_Icc.mp hm).2
    exact Finset.mem_Icc.mpr ⟨by nlinarith, hdm.trans hUV⟩
  simp only [ite_mul, zero_mul]
  simp [hp, mul_assoc]

/-- Closed cutoff masks include both boundary atoms. -/
theorem closed_mask_weighted_sum (N B : ℕ) (hBN : B ≤ N) (a F : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, (if n ≤ B then a n else 0) * F n) =
      ∑ n ∈ Finset.Icc 1 B, a n * F n := by
  classical
  have hs : Finset.Icc 1 B ⊆ Finset.Icc 1 N := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans hBN⟩
  calc
    _ = ∑ n ∈ Finset.Icc 1 B, (if n ≤ B then a n else 0) * F n := by
      symm
      apply Finset.sum_subset hs
      intro n hn hnot
      have hb : ¬n ≤ B := by
        intro hb
        exact hnot (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, hb⟩)
      simp [hb]
    _ = _ := Finset.sum_congr rfl (fun n hn => by simp [(Finset.mem_Icc.mp hn).2])

/-- No new endpoint outside the original inventory is introduced. -/
theorem adaptive_rectangle_le_cutoff (A : ℝ) :
    vaughanCutoff A * adaptiveMangoldtDepth A ≤ sourceKernelCutoff A := by
  exact Nat.mul_div_le _ _

/-- Signed C coefficient, retaining the entire moving convolution boundary. -/
def correlationCoefficient (A : ℝ) (n : ℕ) : ℝ :=
  (if n ≤ adaptiveMangoldtDepth A then vonMangoldt n else 0) +
    samplingAlpha1 * (if n ≤ vaughanCutoff A then (moebius n : ℝ) else 0) -
      samplingAlpha0 * truncatedConvolution (vaughanCutoff A) (adaptiveMangoldtDepth A) n

/-- Signed C' coefficient. -/
def derivativeCoefficient (A : ℝ) (n : ℕ) : ℝ :=
  samplingAlpha2 * (if n ≤ vaughanCutoff A then (moebius n : ℝ) else 0) -
    samplingAlpha1 * truncatedConvolution (vaughanCutoff A) (adaptiveMangoldtDepth A) n

/-- Literal two-row correlation/derivative readout. -/
def actualCoefficientRows (A : ℝ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), correlationCoefficient A n *
    (sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n)) +
  (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), derivativeCoefficient A n *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) / Real.sqrt n))

/-- Actual independently defined main reindexes without replacing J0/J1. -/
theorem actualCoefficientRows_eq_independentMain (A : ℝ) (hA : 1 ≤ A) :
    actualCoefficientRows A = adaptiveIndependentMain A := by
  let F : ℕ → ℝ := fun n => sourcePlainWeight A (n : ℝ)
  let G : ℕ → ℝ := fun n =>
    deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) / Real.sqrt n
  have hU := vaughanCutoff_le_sourceKernelCutoff A hA
  have hV : adaptiveMangoldtDepth A ≤ sourceKernelCutoff A := Nat.div_le_self _ _
  have hcf := truncatedConvolution_weighted_sum (sourceKernelCutoff A)
    (vaughanCutoff A) (adaptiveMangoldtDepth A) (adaptive_rectangle_le_cutoff A) F
  have hcg := truncatedConvolution_weighted_sum (sourceKernelCutoff A)
    (vaughanCutoff A) (adaptiveMangoldtDepth A) (adaptive_rectangle_le_cutoff A) G
  have hlf := closed_mask_weighted_sum (sourceKernelCutoff A) (adaptiveMangoldtDepth A)
    hV vonMangoldt F
  have hmf := closed_mask_weighted_sum (sourceKernelCutoff A) (vaughanCutoff A)
    hU (fun n => (moebius n : ℝ)) F
  have hmg := closed_mask_weighted_sum (sourceKernelCutoff A) (vaughanCutoff A)
    hU (fun n => (moebius n : ℝ)) G
  change (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), correlationCoefficient A n * F n) +
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), derivativeCoefficient A n * G n) = _
  unfold correlationCoefficient derivativeCoefficient
  simp only [add_mul, sub_mul, mul_assoc, Finset.sum_add_distrib,
    Finset.sum_sub_distrib, ← Finset.mul_sum]
  rw [hlf, hmf, hmg, hcf, hcg]
  unfold adaptiveIndependentMain
  have hj1 (d : ℕ) : sourceLogSamplingMainTerm A (d : ℝ) =
      samplingAlpha1 * F d + samplingAlpha2 * G d := by
    dsimp [F, G, sourcePlainWeight, sourceLogSamplingMainTerm]
    ring
  have hj0 (d m : ℕ) : sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) =
      samplingAlpha0 * F (d * m) + samplingAlpha1 * G (d * m) := by
    dsimp [F, G, sourcePlainWeight, sourcePlainSamplingMainTerm]
    ring
  simp_rw [hj1, hj0]
  simp only [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
  have hflip (x y z : ℝ) : x * (y * z) = y * (x * z) := by ring
  simp_rw [hflip (samplingAlpha1), hflip (samplingAlpha2), hflip (samplingAlpha0)]
  ring

/-- Entire signed error in the same finite convolution coordinate. -/
def convolutionSamplingError (A : ℝ) (n : ℕ) : ℝ :=
  sourcePlainKernel A (n : ℝ) - sourcePlainSamplingMainTerm A (n : ℝ)

theorem signedError_eq_log_row_sub_convolution_row (A : ℝ) :
    adaptiveSignedSamplingError A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
        (adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ))) -
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
        truncatedConvolution (vaughanCutoff A) (adaptiveMangoldtDepth A) n *
          convolutionSamplingError A n) := by
  have hp (d m : ℕ) : adaptivePlainSample A d m =
      sourcePlainKernel A ((d * m : ℕ) : ℝ) := by
    simp only [adaptivePlainSample, sourcePlainKernel, Nat.cast_mul]
  have hc := truncatedConvolution_weighted_sum (sourceKernelCutoff A)
    (vaughanCutoff A) (adaptiveMangoldtDepth A) (adaptive_rectangle_le_cutoff A)
    (convolutionSamplingError A)
  rw [hc]
  unfold adaptiveSignedSamplingError convolutionSamplingError
  simp_rw [hp]
  simp only [mul_sub, Finset.sum_sub_distrib]

/-- Direct exact actual residual: both coefficient rows remain paired with their signed error. -/
theorem actual_residual_eq_coefficientRows_add_signedError (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A =
      actualCoefficientRows A + adaptiveSignedSamplingError A := by
  rw [actualCoefficientRows_eq_independentMain A hA]
  exact actual_residual_eq_adaptiveIndependentMain_add_signedError A hA

/-- Center at an explicitly supplied independent archimedean baseline. -/
def centeredAdaptiveCoefficientDefect (A anchor : ℝ) : ℝ :=
  actualCoefficientRows A + adaptiveSignedSamplingError A - anchor / 2

theorem centeredAdaptiveCoefficientDefect_eq_actual_residual (A anchor : ℝ)
    (hA : 1 ≤ A) :
    centeredAdaptiveCoefficientDefect A anchor =
      EstimateMertensResidual.mertensResidual A - anchor / 2 := by
  rw [centeredAdaptiveCoefficientDefect,
    ← actual_residual_eq_coefficientRows_add_signedError A hA]

end RH16AdaptiveSignedCoefficients
