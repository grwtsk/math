# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedClassInsertion.Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5f80b70b49af1316f76b49a6cbfba65fdc5def4` · SHA-256 `74c8be833227456dd24a1bda8e246a766277b60d3345cd22b8b890cf0c31b861`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClassKernelSum.Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ClassKernelSum.Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/joint-cancellation/WeightedClassInsertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.RatioClassVariation
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteDensityInsertion
import FormalResearch.RiemannHypothesis.SourceComparison.RatioInsertionCutoffs
import FormalResearch.RiemannHypothesis.SourceComparison.KernelScaleComparison


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ClassKernelSum.Variant74ef84fc0c93f7e631c54703e48afb4543b44c69f07a1f6a4f0b7a7892c27c77

set_option autoImplicit false
namespace WeightedClassInsertionScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
noncomputable section

def classKernelSum (A : ℝ) (h G : ℕ) : ℝ :=
  ∑ g ∈ Icc 1 G, ThetaRemainder.thetaRemainder A (h * g ^ 2)

def classKernelTail (A : ℝ) (h Y G : ℕ) : ℝ :=
  ∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h * g ^ 2)

def classScaleDifference (A : ℝ) (h Y : ℕ) : ℝ :=
  ∑ g ∈ Icc 1 Y, (ThetaRemainder.thetaRemainder A (h * g ^ 2) -
    Real.sqrt 2 * ThetaRemainder.thetaRemainder A ((2 * h) * g ^ 2))

theorem classKernelSum_split (A : ℝ) (h Y G : ℕ) (hYG : Y ≤ G) :
    classKernelSum A h G = classKernelSum A h Y + classKernelTail A h Y G := by
  have hs := sum_filter_add_sum_filter_not (Icc 1 G) (fun g ↦ g ≤ Y)
    (fun g ↦ ThetaRemainder.thetaRemainder A (h * g ^ 2))
  have hl : (Icc 1 G).filter (fun g ↦ g ≤ Y) = Icc 1 Y := by
    ext g
    simp only [mem_filter, mem_Icc]
    omega
  have hr : (Icc 1 G).filter (fun g ↦ ¬g ≤ Y) = Ioc Y G := by
    ext g
    simp only [mem_filter, mem_Icc, mem_Ioc]
    omega
  rw [hl, hr] at hs
  exact hs.symm

theorem classScaleDifference_eq (A : ℝ) (h Y : ℕ) :
    classScaleDifference A h Y =
      classKernelSum A h Y - Real.sqrt 2 * classKernelSum A (2 * h) Y := by
  simp only [classScaleDifference, classKernelSum, sum_sub_distrib, mul_sum]

theorem classKernelSum_two_difference_eq (A : ℝ) (h Y G : ℕ) (hYG : Y ≤ G) :
    classKernelSum A h G - Real.sqrt 2 * classKernelSum A (2 * h) Y =
      classScaleDifference A h Y + classKernelTail A h Y G := by
  rw [classKernelSum_split A h Y G hYG, classScaleDifference_eq]
  ring

theorem classMean_eq_kernelSum (A : ℝ) (u v : ℕ) :
    RatioClassVariation.classMean A u v =
      (ArithmeticFunction.moebius (u * v) : ℝ) *
        SquarefreeCount.finiteSquarefreeDensity (u * v)
          (Nat.sqrt (⌊Real.exp A⌋₊ / max u v)) *
        classKernelSum A (u * v) (⌊Real.exp A⌋₊ / max u v) := rfl

private theorem three_means_algebra (m a b c k K L R : ℝ) :
    m * a * K - m * b * L - m * c * R - k * (m * a * K) =
      m * ((a - (Real.sqrt 2 / 2) * (b + c) - k * a) * K +
        (Real.sqrt 2 / 2) * b * (K - Real.sqrt 2 * L) +
        (Real.sqrt 2 / 2) * c * (K - Real.sqrt 2 * R)) := by
  have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
  linear_combination (m * b * L / 2 + m * c * R / 2) * hs

theorem classMean_two_insertions_eq (A : ℝ) (u v : ℕ)
    (hu : 1 ≤ u) (hv : 1 ≤ v) (hodd : Nat.Coprime 2 (u * v)) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let G := N / max u v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let a := SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt G)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    let κ := FiniteDensityInsertion.twoDensityFactor
    RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) - κ * RatioClassVariation.classMean A u v =
      (ArithmeticFunction.moebius h : ℝ) *
        ((a - (Real.sqrt 2 / 2) * (b + c) - κ * a) * classKernelSum A h G +
          (Real.sqrt 2 / 2) * b *
            (classScaleDifference A h leftCutoff + classKernelTail A h leftCutoff G) +
          (Real.sqrt 2 / 2) * c *
            (classScaleDifference A h rightCutoff + classKernelTail A h rightCutoff G)) := by
  dsimp only
  have hL := (RatioInsertionCutoffs.commonScale_two_left_bounds ⌊Real.exp A⌋₊ u v hu).2
  have hR := (RatioInsertionCutoffs.commonScale_two_right_bounds ⌊Real.exp A⌋₊ u v hv).2
  rw [← classKernelSum_two_difference_eq A (u * v) _ _ hL,
    ← classKernelSum_two_difference_eq A (u * v) _ _ hR]
  have hμ : (ArithmeticFunction.moebius (2 * (u * v)) : ℝ) =
      -(ArithmeticFunction.moebius (u * v) : ℝ) := by
    rw [TwoInsertionBoundary.moebius_two_mul, if_pos hodd.symm]
  have hr : u * (2 * v) = 2 * (u * v) := by ring
  simp only [classMean_eq_kernelSum, Nat.mul_assoc, hr, hμ]
  simpa only [sub_eq_add_neg, neg_mul] using three_means_algebra
    (ArithmeticFunction.moebius (u * v) : ℝ)
    (SquarefreeCount.finiteSquarefreeDensity (u * v) (Nat.sqrt (⌊Real.exp A⌋₊ / max u v)))
    (SquarefreeCount.finiteSquarefreeDensity (2 * (u * v))
      (Nat.sqrt (⌊Real.exp A⌋₊ / max (2 * u) v)))
    (SquarefreeCount.finiteSquarefreeDensity (2 * (u * v))
      (Nat.sqrt (⌊Real.exp A⌋₊ / max u (2 * v)))) FiniteDensityInsertion.twoDensityFactor
    (classKernelSum A (u * v) (⌊Real.exp A⌋₊ / max u v))
    (classKernelSum A (2 * (u * v)) (⌊Real.exp A⌋₊ / max (2 * u) v))
    (classKernelSum A (2 * (u * v)) (⌊Real.exp A⌋₊ / max u (2 * v)))

theorem classKernelTerm_abs_le (A : ℝ) (h g : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hg : 1 ≤ g) :
    |ThetaRemainder.thetaRemainder A (h * g ^ 2)| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) := by
  have he := ThetaKernelEstimate.thetaRemainder_abs_le_kernelBound A (h * g ^ 2) hA
    (Nat.mul_pos hh (pow_pos hg _))
  rw [Nat.cast_mul, Nat.cast_pow, Real.sqrt_mul (Nat.cast_nonneg _),
    Real.sqrt_sq (Nat.cast_nonneg g)] at he
  exact he.trans_eq (by ring)

theorem classKernelSum_abs_le (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelSum A h G| ≤ (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
      ∑ g ∈ Icc 1 G, 1 / (g : ℝ) := by
  unfold classKernelSum
  calc
    _ ≤ ∑ g ∈ Icc 1 G, |ThetaRemainder.thetaRemainder A (h * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 G,
        (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      exact classKernelTerm_abs_le A h g hA hh (mem_Icc.mp hg).1
    _ = _ := (mul_sum _ _ _).symm

theorem reciprocal_half_cutoff_tail_le (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  have hY : (0 : ℝ) < (Y : ℝ) + 1 := by positivity
  calc
    _ ≤ ∑ _g ∈ Ioc Y G, 1 / ((Y : ℝ) + 1) := by
      apply sum_le_sum
      intro g hg
      apply one_div_le_one_div_of_le hY
      have hg1 : Y + 1 ≤ g := by have hh := (mem_Ioc.mp hg).1; omega
      exact_mod_cast hg1
    _ = ((G - Y : ℕ) : ℝ) / ((Y : ℝ) + 1) := by
      simp only [sum_const, Nat.card_Ioc, nsmul_eq_mul, mul_one_div]
    _ ≤ 1 := by
      apply (div_le_one hY).mpr
      have hcard : G - Y ≤ Y + 1 := by omega
      exact_mod_cast hcard

theorem classKernelTail_abs_le_harmonic (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelTail A h Y G| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) := by
  unfold classKernelTail
  calc
    _ ≤ ∑ g ∈ Ioc Y G, |ThetaRemainder.thetaRemainder A (h * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Ioc Y G,
        (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      have hgY := (mem_Ioc.mp hg).1
      exact classKernelTerm_abs_le A h g hA hh (by omega)
    _ = _ := (mul_sum _ _ _).symm

theorem classScaleDifference_abs_le (A : ℝ) (h Y : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classScaleDifference A h Y| ≤
      (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Icc 1 Y, 1 / (g : ℝ) := by
  unfold classScaleDifference
  calc
    _ ≤ ∑ g ∈ Icc 1 Y,
        |ThetaRemainder.thetaRemainder A (h * g ^ 2) -
          Real.sqrt 2 * ThetaRemainder.thetaRemainder A ((2 * h) * g ^ 2)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ g ∈ Icc 1 Y,
        (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 / Real.sqrt (h : ℝ)) *
          (1 / (g : ℝ)) := by
      apply sum_le_sum
      intro g hg
      have hg1 := (mem_Icc.mp hg).1
      have hs := KernelScaleComparison.theta_remainder_scale_comparison A (h * g ^ 2) 2 hA
        (Nat.mul_pos hh (pow_pos hg1 _)) (by norm_num)
      rw [abs_sub_comm, Nat.mul_assoc]
      norm_num only [Nat.cast_ofNat] at hs
      rw [Nat.cast_mul, Nat.cast_pow, Real.sqrt_mul (Nat.cast_nonneg _),
        Real.sqrt_sq (Nat.cast_nonneg g)] at hs
      exact hs.trans_eq (by ring)
    _ = _ := (mul_sum _ _ _).symm

theorem harmonic_sum_le_source (A : ℝ) (G : ℕ) (hA : 1 ≤ A) (hG : G ≤ ⌊Real.exp A⌋₊) :
    (∑ g ∈ Icc 1 G, 1 / (g : ℝ)) ≤ 1 + A := by
  calc
    _ ≤ ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, 1 / (g : ℝ) := by
      apply sum_le_sum_of_subset_of_nonneg
      · intro g hg
        exact mem_Icc.mpr ⟨(mem_Icc.mp hg).1, (mem_Icc.mp hg).2.trans hG⟩
      · intro g _ _
        positivity
    _ ≤ _ := RatioClassBudget.source_harmonic_sum_le A hA

theorem classKernelSum_abs_le_source (A : ℝ) (h G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hG : G ≤ ⌊Real.exp A⌋₊) :
    |classKernelSum A h G| ≤ ThetaKernelEstimate.kernelBound A * (1 + A) /
      Real.sqrt (h : ℝ) := by
  have hK := ThetaKernelEstimate.kernelBound_nonneg A hA
  calc
    _ ≤ (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Icc 1 G, 1 / (g : ℝ) := classKernelSum_abs_le A h G hA hh
    _ ≤ (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 + A) :=
      mul_le_mul_of_nonneg_left (harmonic_sum_le_source A G hA hG) (by positivity)
    _ = _ := by ring

theorem classScaleDifference_abs_le_source (A : ℝ) (h Y : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hY : Y ≤ ⌊Real.exp A⌋₊) :
    |classScaleDifference A h Y| ≤
      KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) /
        Real.sqrt (h : ℝ) := by
  have hC := KernelScaleComparison.scaleComparisonCoefficient_nonneg A hA
  have hlog : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  calc
    _ ≤ (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 /
        Real.sqrt (h : ℝ)) * ∑ g ∈ Icc 1 Y, 1 / (g : ℝ) :=
      classScaleDifference_abs_le A h Y hA hh
    _ ≤ (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 /
        Real.sqrt (h : ℝ)) * (1 + A) :=
      mul_le_mul_of_nonneg_left (harmonic_sum_le_source A Y hA hY) (by positivity)
    _ = _ := by ring

theorem classKernelTail_abs_le (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |classKernelTail A h Y G| ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  have hK := ThetaKernelEstimate.kernelBound_nonneg A hA
  have hb := mul_le_mul_of_nonneg_left (reciprocal_half_cutoff_tail_le Y G hYG hhalf)
    (show 0 ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) by positivity)
  exact (classKernelTail_abs_le_harmonic A h Y G hA hh).trans (by simpa only [mul_one] using hb)

theorem classKernelSum_two_difference_abs_le (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hG : G ≤ ⌊Real.exp A⌋₊)
    (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |classScaleDifference A h Y + classKernelTail A h Y G| ≤
      (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
        ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ) := by
  calc
    _ ≤ |classScaleDifference A h Y| + |classKernelTail A h Y G| := abs_add_le _ _
    _ ≤ KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) /
        Real.sqrt (h : ℝ) + ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) :=
      add_le_add (classScaleDifference_abs_le_source A h Y hA hh (hYG.trans hG))
        (classKernelTail_abs_le A h Y G hA hh hYG hhalf)
    _ = _ := by ring

theorem classMean_two_insertions_error_le (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u * v)) (hG : 8 ≤ ⌊Real.exp A⌋₊ / max u v) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    |RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) -
        FiniteDensityInsertion.twoDensityFactor * RatioClassVariation.classMean A u v| ≤
      ((7 * Real.sqrt 2 / 12) *
        (1 / (Nat.sqrt leftCutoff : ℝ) + 1 / (Nat.sqrt rightCutoff : ℝ))) *
        (ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ)) +
      (Real.sqrt 2 / 2) * (|b| + |c|) *
        ((KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
          ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)) := by
  dsimp only
  let N := ⌊Real.exp A⌋₊
  let h := u * v
  let G := N / max u v
  let L := N / max (2 * u) v
  let R := N / max u (2 * v)
  let a := SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt G)
  let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt L)
  let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt R)
  let e := a - (Real.sqrt 2 / 2) * (b + c) - FiniteDensityInsertion.twoDensityFactor * a
  let B := (7 * Real.sqrt 2 / 12) * (1 / (Nat.sqrt L : ℝ) + 1 / (Nat.sqrt R : ℝ))
  let U := ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ)
  let V := (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
    ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)
  let DL := classScaleDifference A h L + classKernelTail A h L G
  let DR := classScaleDifference A h R + classKernelTail A h R G
  have hh : 1 ≤ h := Nat.mul_pos hu hv
  have hcut : G ≤ N := Nat.div_le_self _ _
  have hL := RatioInsertionCutoffs.commonScale_two_left_bounds N u v hu
  have hR := RatioInsertionCutoffs.commonScale_two_right_bounds N u v hv
  have he : |e| ≤ B := RatioInsertionCutoffs.signed_two_density_both_cutoffs_error_le
    N u v hu hv hodd hG
  have hU : |classKernelSum A h G| ≤ U := classKernelSum_abs_le_source A h G hA hh hcut
  have hDL : |DL| ≤ V := classKernelSum_two_difference_abs_le A h L G hA hh hcut hL.2 hL.1
  have hDR : |DR| ≤ V := classKernelSum_two_difference_abs_le A h R G hA hh hcut hR.2 hR.1
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hs : 0 ≤ Real.sqrt (2 : ℝ) / 2 := by positivity
  have hμ : |(ArithmeticFunction.moebius h : ℝ)| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := h))
  rw [classMean_two_insertions_eq A u v hu hv hodd]
  change |(ArithmeticFunction.moebius h : ℝ) *
    (e * classKernelSum A h G + (Real.sqrt 2 / 2) * b * DL +
      (Real.sqrt 2 / 2) * c * DR)| ≤ B * U + (Real.sqrt 2 / 2) * (|b| + |c|) * V
  rw [abs_mul]
  calc
    _ ≤ |e * classKernelSum A h G + (Real.sqrt 2 / 2) * b * DL +
        (Real.sqrt 2 / 2) * c * DR| := mul_le_of_le_one_left (abs_nonneg _) hμ
    _ ≤ |e * classKernelSum A h G| + |(Real.sqrt 2 / 2) * b * DL| +
        |(Real.sqrt 2 / 2) * c * DR| :=
      (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ = |e| * |classKernelSum A h G| +
        (Real.sqrt 2 / 2) * |b| * |DL| + (Real.sqrt 2 / 2) * |c| * |DR| := by
      simp only [abs_mul, abs_of_nonneg hs]
    _ ≤ B * U + (Real.sqrt 2 / 2) * |b| * V + (Real.sqrt 2 / 2) * |c| * V := by
      exact add_le_add (add_le_add (mul_le_mul he hU (abs_nonneg _) hB)
        (mul_le_mul_of_nonneg_left hDL (by positivity)))
        (mul_le_mul_of_nonneg_left hDR (by positivity))
    _ = _ := by ring

end
end WeightedClassInsertionScratch
```
