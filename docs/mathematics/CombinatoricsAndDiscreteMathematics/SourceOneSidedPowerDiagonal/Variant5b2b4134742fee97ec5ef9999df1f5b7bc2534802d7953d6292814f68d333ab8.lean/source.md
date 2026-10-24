# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceOneSidedPowerDiagonal.Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf70136325650aa2ce76d84153fdaf37b1eda8b3` · SHA-256 `5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceInvariantBoundaryCoefficient

/-!
One-sided proper-prime-power physical-diagonal estimate for the actual source.
The complete original finite inventory is retained. Only the potentially
unfavorable negative correlation is charged; no arithmetic signed witness follows.
Direction: grwtsk contributors. Calculation and native construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace RH16OneSidedPowerDiagonal
open scoped BigOperators
open RH16InvariantBoundary
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

theorem actual_correlation_positive_inner (A t : ℝ) (hA : 91 ≤ A)
    (ht : |t| ≤ 3 * A / 5) :
    (1 / 10 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
  have hA0 : 0 < A := by linarith
  have hs : t ^ 2 ≤ 9 * A ^ 2 / 25 := by
    have he : |t| ^ 2 = t ^ 2 := sq_abs t
    nlinarith [abs_nonneg t]
  have hb : 5 / A ^ 2 * t ^ 2 / 2 ≤ (9 / 10 : ℝ) := by
    rw [show 5 / A ^ 2 * t ^ 2 / 2 = 5 * t ^ 2 / (2 * A ^ 2) by ring]
    apply (div_le_iff₀ (by positivity : 0 < 2 * A ^ 2)).mpr
    nlinarith
  have he := (abs_le.mp (actual_correlation_zero_taylor_bound A t hA)).1
  linarith

theorem actual_diagonalCorrelation_positive_inner (A n : ℝ) (hA : 91 ≤ A)
    (hn : 1 ≤ n) (hlog : Real.log n ≤ 3 * A / 10) :
    (1 / 10 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (2 * Real.log n) := by
  apply actual_correlation_positive_inner A (2 * Real.log n) hA
  have hlog0 := Real.log_nonneg hn
  rw [abs_of_nonneg (by linarith : 0 ≤ 2 * Real.log n)]
  linarith

def properLargePowerInventory (U N : ℕ) : Finset ℕ :=
  (Finset.Ioc U N).filter (fun n => IsPrimePow n ∧ U < n.minFac ∧ ¬n.Prime)

def properLargePowerDiagonal (A : ℝ) (U N : ℕ) : ℝ :=
  -(∑ n ∈ properLargePowerInventory U N,
    ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ)))

def properLargePowerUpperBudget (A : ℝ) (U N : ℕ) : ℝ :=
  ∑ n ∈ properLargePowerInventory U N,
    if 3 * A / 10 < Real.log (n : ℝ) then
      ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0

theorem actual_power_atom_one_sided (A : ℝ) (n : ℕ) (hA : 91 ≤ A) (hn : 1 ≤ n) :
    -(ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))) ≤
      if 3 * A / 10 < Real.log (n : ℝ) then
        ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0 := by
  have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / (n : ℝ) :=
    div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg n)
  by_cases hlog : 3 * A / 10 < Real.log (n : ℝ)
  · rw [if_pos hlog]
    have hC := (abs_le.mp (actual_correlation_abs_le_one A
      (2 * Real.log (n : ℝ)) (by linarith))).1
    nlinarith
  · rw [if_neg hlog]
    have hC := actual_diagonalCorrelation_positive_inner A (n : ℝ) hA
      (by exact_mod_cast hn) (le_of_not_gt hlog)
    exact neg_nonpos.mpr (mul_nonneg hw (by linarith))

theorem actual_proper_power_diagonal_upper (A : ℝ) (U N : ℕ)
    (hA : 91 ≤ A) (hU : 1 ≤ U) :
    properLargePowerDiagonal A U N ≤ properLargePowerUpperBudget A U N := by
  unfold properLargePowerDiagonal properLargePowerUpperBudget
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_le_sum
  intro n hn
  have hUn := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1).1
  exact actual_power_atom_one_sided A n hA (by omega)

theorem properLargePowerUpperBudget_eq_filtered (A : ℝ) (U N : ℕ) :
    properLargePowerUpperBudget A U N =
      ∑ n ∈ (properLargePowerInventory U N).filter
        (fun n : ℕ => 3 * A / 10 < Real.log (n : ℝ)),
          ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
  classical
  unfold properLargePowerUpperBudget
  rw [Finset.sum_filter]

end RH16OneSidedPowerDiagonal
```
