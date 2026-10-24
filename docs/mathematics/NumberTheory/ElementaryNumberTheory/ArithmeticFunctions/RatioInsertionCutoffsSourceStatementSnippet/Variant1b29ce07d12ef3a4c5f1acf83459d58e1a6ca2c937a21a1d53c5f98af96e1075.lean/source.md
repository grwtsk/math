# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.RatioInsertionCutoffsSourceStatementSnippet.Variant1b29ce07d12ef3a4c5f1acf83459d58e1a6ca2c937a21a1d53c5f98af96e1075

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ff1ffa8b1d45a37b47481b33bfe7dac634774be` · SHA-256 `1b29ce07d12ef3a4c5f1acf83459d58e1a6ca2c937a21a1d53c5f98af96e1075`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace RatioInsertionCutoffsStatementChecks

open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (u v : ℕ) :
    max u v ≤ max (2*u) v ∧ max (2*u) v ≤ 2 * max u v := by
  exact RatioInsertionCutoffs.max_two_left_bounds u v

example (N u v : ℕ) (hu : 1 ≤ u) :
    (N / max u v) / 2 ≤ N / max (2*u) v ∧
      N / max (2*u) v ≤ N / max u v := by
  exact RatioInsertionCutoffs.commonScale_two_left_bounds N u v hu

example (N u v : ℕ) (hv : 1 ≤ v) :
    (N / max u v) / 2 ≤ N / max u (2*v) ∧
      N / max u (2*v) ≤ N / max u v := by
  exact RatioInsertionCutoffs.commonScale_two_right_bounds N u v hv

example (N u v : ℕ) (h : 2*u ≤ v) :
    N / max (2*u) v = N / max u v := by
  exact RatioInsertionCutoffs.commonScale_two_left_eq_full N u v h

example (N u v : ℕ) (h : v ≤ u) :
    N / max (2*u) v = (N / max u v) / 2 := by
  exact RatioInsertionCutoffs.commonScale_two_left_eq_half N u v h

example (N u v : ℕ) (hlo : u < v) (hhi : v < 2*u) :
    N / max u v = N / v ∧ N / max (2*u) v = N / (2*u) := by
  exact RatioInsertionCutoffs.commonScale_two_left_intermediate N u v hlo hhi

example (N u v : ℕ) :
    N / max (2*u) v = if 2*u ≤ v then N / max u v
      else if v ≤ u then (N / max u v) / 2 else N / (2*u) := by
  exact RatioInsertionCutoffs.commonScale_two_left_cases N u v

example (N u v : ℕ) (hu : 1 ≤ u) (h : N / max u v = 0) :
    N / max (2*u) v = 0 := by
  exact RatioInsertionCutoffs.commonScale_two_left_empty N u v hu h

example (N u v : ℕ) (hu : 1 ≤ u) :
    Nat.sqrt ((N / max u v) / 2) ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact RatioInsertionCutoffs.sqrt_commonScale_two_left_bounds N u v hu

example (N u v : ℕ) (hu : 1 ≤ u) :
    8 ≤ N / max u v ↔ 8 * max u v ≤ N := by
  exact RatioInsertionCutoffs.commonScale_eight_iff N u v hu

example (N u v : ℕ) (hu : 1 ≤ u)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max (2*u) v) ∧
      Nat.sqrt (N / max (2*u) v) ≤ Nat.sqrt (N / max u v) := by
  exact RatioInsertionCutoffs.sqrt_commonScale_two_left_admissible N u v hu hG

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max (2*u) v)) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max (2*u) v):ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_left_cutoffs_error_le N u v hu hv hodd hG

example (N u v : ℕ) (hv : 1 ≤ v)
    (hG : 8 ≤ N / max u v) :
    2 ≤ Nat.sqrt (N / max u (2*v)) ∧
      Nat.sqrt (N / max u (2*v)) ≤ Nat.sqrt (N / max u v) := by
  exact RatioInsertionCutoffs.sqrt_commonScale_two_right_admissible N u v hv hG

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max u (2*v))) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max u (2*v)):ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_right_cutoffs_error_le N u v hu hv hodd hG

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |SquarefreeCount.finiteSquarefreeDensity (u*v) Z -
      (Real.sqrt 2/2) * (SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YL +
        SquarefreeCount.finiteSquarefreeDensity (2*(u*v)) YR) -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity (u*v) Z| ≤
      (7 * Real.sqrt 2 / 12) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_both_cutoffs_error_le N u v hu hv hodd hG

example (h : ℕ) (a b c : ℝ)
    (hh : 1 ≤ h) (hodd : Nat.Coprime 2 h) :
    (ArithmeticFunction.moebius h : ℝ) * a / Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * b / Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * c / Real.sqrt ((2*h:ℕ):ℝ) =
      ((ArithmeticFunction.moebius h : ℝ) / Real.sqrt (h:ℝ)) *
        (a - (Real.sqrt 2/2)*(b+c)) := by
  exact RatioInsertionCutoffs.actual_two_density_coefficient_eq h a b c hh hodd

example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let h := u*v
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |(ArithmeticFunction.moebius h : ℝ) * SquarefreeCount.finiteSquarefreeDensity h Z /
        Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YL /
        Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YR /
        Real.sqrt ((2*h:ℕ):ℝ) -
      FiniteDensityInsertion.twoDensityFactor * (ArithmeticFunction.moebius h : ℝ) *
        SquarefreeCount.finiteSquarefreeDensity h Z / Real.sqrt (h:ℝ)| ≤
      (7 * Real.sqrt 2 / (12 * Real.sqrt (h:ℝ))) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  exact RatioInsertionCutoffs.actual_two_density_cutoff_error_le N u v hu hv hodd hG

end
end RatioInsertionCutoffsStatementChecks
```
