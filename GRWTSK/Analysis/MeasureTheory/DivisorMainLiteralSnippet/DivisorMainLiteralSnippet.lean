noncomputable section
open MeasureTheory Set Finset Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open DivisorMainComparisonScratch DampedDivisorCoefficient TruncatedDivisorResidual
open MobiusPoleNumerator MobiusFractionalResidual FiniteMobiusController
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension

example (X : ℕ) (ε x : ℝ) : divisorMainResidual X ε x =
    (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) +
      ((∑ n ∈ Icc 1 ⌊x⌋₊,
        (dampedDivisorCoefficient ε n - truncatedDivisorCoefficient X ε n) : ℝ) : ℂ) +
      (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X *
        (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := rfl

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) :
    arithmeticResidual X ε x = divisorMainResidual X ε x -
      (((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) :=
  arithmeticResidual_eq_main_sub_remainder X ε x hX hx

example (X : ℕ) (ε Y : ℝ) : divisorMainCore X ε Y =
    (Icc (0 : ℝ) (Real.log Y)).indicator
      (fun u : ℝ => (Real.exp (-u / 2) : ℂ) * divisorMainResidual X ε (Real.exp u)) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    MemLp (divisorMainCore X ε Y) 2 volume := divisorMainCore_memLp X ε hX hε Y hY

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (hε : 0 ≤ ε) (Y : ℝ) (hY : 1 ≤ Y) :
    divisorMainVector X ε hX hε Y hY =
      ((divisorMainCore_memLp X ε hX hε Y hY).toLp (divisorMainCore X ε Y) : FullH) := rfl

example (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    |‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ -
      ‖sourceMultiplier ε h hε hsmall hh (divisorMainVector X ε hX hε.le Y hY)‖| ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  filtered_core_main_norm_difference_le X ε hX h hε hsmall hh Y hY
end
