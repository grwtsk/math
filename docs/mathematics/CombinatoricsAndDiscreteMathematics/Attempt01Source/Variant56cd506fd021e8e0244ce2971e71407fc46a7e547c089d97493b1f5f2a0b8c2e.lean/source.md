# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Attempt01Source.Variant56cd506fd021e8e0244ce2971e71407fc46a7e547c089d97493b1f5f2a0b8c2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edc11fd629ac805d5575b37447869ccb17a26435` · SHA-256 `f5507701c5f9e12ee0f6a3b30444e15a21d3567bb551cd55b5e257e81102f451`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TruncatedConvolution.Variant603db0f6e8a4a7fd7f685553bb62ad9ab25b6db1f600a6a6d7a9bff534b09daa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"603db0f6e8a4a7fd7f685553bb62ad9ab25b6db1f600a6a6d7a9bff534b09daa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TruncatedConvolution.Variant603db0f6e8a4a7fd7f685553bb62ad9ab25b6db1f600a6a6d7a9bff534b09daa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"603db0f6e8a4a7fd7f685553bb62ad9ab25b6db1f600a6a6d7a9bff534b09daa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/signed-coefficients/attempt01.source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveVaughanSignedMain

/-! Exact finite coefficient reconstruction of the independently defined adaptive main.
The moving truncated convolution boundary remains signed. No uniform cap is claimed.
grwtsk contributors: direction, selection, corrections and evaluation.
Codex/ChatGPT: finite proof construction and focused scratch checking. -/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TruncatedConvolution.Variant603db0f6e8a4a7fd7f685553bb62ad9ab25b6db1f600a6a6d7a9bff534b09daa

set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveSignedCoefficients
open ArithmeticFunction
open scoped BigOperators
open RH16AdaptiveVaughan
open FormalResearch.RiemannHypothesis SourceSamplingPointwise SourceSamplingCoefficients
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

end RH16AdaptiveSignedCoefficients
```
