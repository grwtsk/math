# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityInsertionStatements.Variantb7d23c198a363dbdced711125f6adc41d722f7d76cb985f3be4a2a5e62bf3037

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `169da78b33e3b3255bdc8ba8df5e72fb7743788d` · SHA-256 `b7d23c198a363dbdced711125f6adc41d722f7d76cb985f3be4a2a5e62bf3037`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteDensityInsertion

set_option autoImplicit false

namespace FiniteDensityInsertionStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (h D : ℕ) : FiniteDensityInsertion.coprimeReciprocalSquareSum h D =
    ∑ d ∈ Icc 1 D, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := rfl

example (h k : ℕ) (hhk : Nat.Coprime h k) :
    CoprimeCount.coprimeDensity (h * k) =
      CoprimeCount.coprimeDensity h * CoprimeCount.coprimeDensity k := by
  exact FiniteDensityInsertion.coprimeDensity_mul h k hhk

example : CoprimeCount.coprimeDensity 2 = (1 / 2 : ℝ) := by
  exact FiniteDensityInsertion.coprimeDensity_two

example (h : ℕ) (hh : Nat.Coprime 2 h) :
    CoprimeCount.coprimeDensity (2 * h) = CoprimeCount.coprimeDensity h / 2 := by
  exact FiniteDensityInsertion.coprimeDensity_two_mul h hh

example (h D : ℕ) (hh : Nat.Coprime 2 h) :
    FiniteDensityInsertion.coprimeReciprocalSquareSum h D = FiniteDensityInsertion.coprimeReciprocalSquareSum (2 * h) D -
      (1 / 4 : ℝ) * FiniteDensityInsertion.coprimeReciprocalSquareSum (2 * h) (D / 2) := by
  exact FiniteDensityInsertion.coprimeReciprocalSquareSum_two_split h D hh

example (h Y Z : ℕ) (hYZ : Y ≤ Z) :
    FiniteDensityInsertion.coprimeReciprocalSquareSum h Z - FiniteDensityInsertion.coprimeReciprocalSquareSum h Y =
      ∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
  exact FiniteDensityInsertion.coprimeReciprocalSquareSum_difference h Y Z hYZ

example (h D : ℕ) (hh : Nat.Coprime 2 h) :
    SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D =
      -(CoprimeCount.coprimeDensity h / 6) *
        ∑ d ∈ Ioc (D / 2) D, if Nat.Coprime d (2 * h) then
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
  exact FiniteDensityInsertion.finiteSquarefreeDensity_two_error_eq h D hh

example (h Y Z : ℕ) (hY : 1 ≤ Y)
    (hYZ : Y ≤ Z) :
    |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| ≤ 1 / (Y : ℝ) := by
  exact FiniteDensityInsertion.coprimeReciprocalSquareSum_tail_abs_le h Y Z hY hYZ

example (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (6 * (D / 2 : ℕ)) := by
  exact FiniteDensityInsertion.finiteSquarefreeDensity_two_error_le_half_cutoff h D hh hh1 hD

example (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (2 * (D : ℝ)) := by
  exact FiniteDensityInsertion.finiteSquarefreeDensity_two_error_le h D hh hh1 hD

example : FiniteDensityInsertion.twoDensityFactor = (Real.sqrt 2 - 1)^2 / 3 := rfl

example : FiniteDensityInsertion.twoDensityFactor = 1 - 2 * Real.sqrt 2 / 3 := by
  exact FiniteDensityInsertion.twoDensityFactor_eq

example : 0 ≤ FiniteDensityInsertion.twoDensityFactor ∧ FiniteDensityInsertion.twoDensityFactor ≤ 1/16 := by
  exact FiniteDensityInsertion.twoDensityFactor_bounds

example (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_error_le h D hh hh1 hD

example (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D| ≤
      (1/16:ℝ) * |SquarefreeCount.finiteSquarefreeDensity h D| +
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_abs_le h D hh hh1 hD

example (h Y Z : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hY : 2 ≤ Y) (hYZ : Y ≤ Z) :
    |SquarefreeCount.finiteSquarefreeDensity h Z -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Z| ≤
      7 * Real.sqrt 2 / (6 * (Y:ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_cutoffs_error_le h Y Z hh hh1 hY hYZ

example (h N : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hN : 8 ≤ N) :
    |SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) (Nat.sqrt (N/2)) -
      FiniteDensityInsertion.twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N)| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N/2):ℝ)) := by
  exact FiniteDensityInsertion.signed_two_density_natural_cutoffs_error_le h N hh hh1 hN

end
end FiniteDensityInsertionStatementChecks
```
