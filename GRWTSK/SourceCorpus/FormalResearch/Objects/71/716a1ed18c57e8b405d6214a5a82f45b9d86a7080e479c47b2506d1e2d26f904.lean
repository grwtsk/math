import FormalResearch.RiemannHypothesis.SourceComparison.WeightedClassInsertion

set_option autoImplicit false
namespace WeightedClassInsertionExactStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open WeightedClassInsertion
noncomputable section

example (A : ℝ) (h G : ℕ) : classKernelSum A h G =
    ∑ g ∈ Icc 1 G, ThetaRemainder.thetaRemainder A (h * g ^ 2) := rfl

example (A : ℝ) (h Y G : ℕ) : classKernelTail A h Y G =
    ∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h * g ^ 2) := rfl

example (A : ℝ) (h Y : ℕ) : classScaleDifference A h Y =
    ∑ g ∈ Icc 1 Y, (ThetaRemainder.thetaRemainder A (h * g ^ 2) -
      Real.sqrt 2 * ThetaRemainder.thetaRemainder A ((2 * h) * g ^ 2)) := rfl

example (A : ℝ) (h Y G : ℕ) (hYG : Y ≤ G) :
    classKernelSum A h G = classKernelSum A h Y + classKernelTail A h Y G :=
  classKernelSum_split A h Y G hYG

example (A : ℝ) (h Y : ℕ) : classScaleDifference A h Y =
    classKernelSum A h Y - Real.sqrt 2 * classKernelSum A (2 * h) Y :=
  classScaleDifference_eq A h Y

example (A : ℝ) (h Y G : ℕ) (hYG : Y ≤ G) :
    classKernelSum A h G - Real.sqrt 2 * classKernelSum A (2 * h) Y =
      classScaleDifference A h Y + classKernelTail A h Y G :=
  classKernelSum_two_difference_eq A h Y G hYG

example (A : ℝ) (u v : ℕ) : RatioClassVariation.classMean A u v =
    (ArithmeticFunction.moebius (u * v) : ℝ) *
      SquarefreeCount.finiteSquarefreeDensity (u * v)
        (Nat.sqrt (⌊Real.exp A⌋₊ / max u v)) *
      classKernelSum A (u * v) (⌊Real.exp A⌋₊ / max u v) :=
  classMean_eq_kernelSum A u v

example (A : ℝ) (u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u * v)) :
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
            (classScaleDifference A h rightCutoff + classKernelTail A h rightCutoff G)) :=
  classMean_two_insertions_eq A u v hu hv hodd

example (A : ℝ) (h g : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) (hg : 1 ≤ g) :
    |ThetaRemainder.thetaRemainder A (h * g ^ 2)| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) * (1 / (g : ℝ)) :=
  classKernelTerm_abs_le A h g hA hh hg

example (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelSum A h G| ≤ (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
      ∑ g ∈ Icc 1 G, 1 / (g : ℝ) :=
  classKernelSum_abs_le A h G hA hh

example (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 :=
  reciprocal_half_cutoff_tail_le Y G hYG hhalf

example (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classKernelTail A h Y G| ≤
      (ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Ioc Y G, 1 / (g : ℝ) :=
  classKernelTail_abs_le_harmonic A h Y G hA hh

example (A : ℝ) (h Y : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) :
    |classScaleDifference A h Y| ≤
      (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 / Real.sqrt (h : ℝ)) *
        ∑ g ∈ Icc 1 Y, 1 / (g : ℝ) :=
  classScaleDifference_abs_le A h Y hA hh

example (A : ℝ) (G : ℕ) (hA : 1 ≤ A) (hG : G ≤ ⌊Real.exp A⌋₊) :
    (∑ g ∈ Icc 1 G, 1 / (g : ℝ)) ≤ 1 + A :=
  harmonic_sum_le_source A G hA hG

example (A : ℝ) (h G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hG : G ≤ ⌊Real.exp A⌋₊) :
    |classKernelSum A h G| ≤
      ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ) :=
  classKernelSum_abs_le_source A h G hA hh hG

example (A : ℝ) (h Y : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hY : Y ≤ ⌊Real.exp A⌋₊) :
    |classScaleDifference A h Y| ≤
      KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) /
        Real.sqrt (h : ℝ) :=
  classScaleDifference_abs_le_source A h Y hA hh hY

example (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |classKernelTail A h Y G| ≤ ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) :=
  classKernelTail_abs_le A h Y G hA hh hYG hhalf

example (A : ℝ) (h Y G : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h)
    (hG : G ≤ ⌊Real.exp A⌋₊) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |classScaleDifference A h Y + classKernelTail A h Y G| ≤
      (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
        ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ) :=
  classKernelSum_two_difference_abs_le A h Y G hA hh hG hYG hhalf

example (A : ℝ) (u v : ℕ) (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v)
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
          ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)) :=
  classMean_two_insertions_error_le A u v hA hu hv hodd hG

end
end WeightedClassInsertionExactStatements
