# Complete source: GRWTSK.Analysis.InnerProductSpace.CausalResponseGram

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8485e1ebc666cd74690126a7658be174f6f5c8f2` · SHA-256 `c2f375520266a274b18d9a47cab986681636244159cef040213e531ba6c6618c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy

/-!
# CCC native pickup-response Gram positivity

The matrix is the actual response Gram in the Lebesgue reading measure. Its
symmetry and positive semidefiniteness hold for arbitrary finite inventories and
real signed coefficients. Every response product is proved integrable before
finite sums are exchanged with the integral. Squaring occurs only after the
complete signed signal; both orders of all mixed terms are retained.

For the prescribed Möbius inventory, geometry gives nonnegative diagonal and
energy, and the lower bound `-diagonal ≤ cross`. It gives no upper bound for the
cross contribution and no polynomial cancellation or amplitude-return budget.
This native matrix is not the separately prescribed source-correlation Gram;
no adapter to that metric, supplier theorem, or RH claim is asserted.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupGram

open MeasureTheory Set
open ArithmeticPickupSource ArithmeticPickupEnergy

noncomputable section

/-- A finite signed response signal. The actual arithmetic inventory is a
particular case; no coefficient is replaced by its magnitude here. -/
def signedSignal (nodes : Finset ℕ) (coefficient : ℕ → ℝ) (u : ℝ) : ℝ :=
  ∑ n ∈ nodes, coefficient n * response n u

/-- The full ordered native Gram form, including every diagonal and mixed term. -/
def quadraticForm (T : ℝ) (nodes : Finset ℕ) (coefficient : ℕ → ℝ) : ℝ :=
  ∑ m ∈ nodes, ∑ n ∈ nodes, coefficient m * coefficient n * gram T m n

/-- Arbitrary real weighting preserves the proved product integrability. -/
theorem weighted_response_product_integrable (T : ℝ) (coefficient : ℕ → ℝ) (m n : ℕ) :
    IntegrableOn (fun u ↦ (coefficient m * coefficient n) *
      (response m u * response n u)) (Ioc 0 T) :=
  (response_product_integrable T m n).const_mul _

theorem weighted_response_row_integrable (T : ℝ) (nodes : Finset ℕ)
    (coefficient : ℕ → ℝ) (m : ℕ) :
    IntegrableOn (fun u ↦ ∑ n ∈ nodes, (coefficient m * coefficient n) *
      (response m u * response n u)) (Ioc 0 T) :=
  integrable_finsetSum nodes (fun n _ ↦ weighted_response_product_integrable T coefficient m n)

/-- Algebraic expansion keeps the completed signed sum and full ordered pairs. -/
theorem signedSignal_square (nodes : Finset ℕ) (coefficient : ℕ → ℝ) (u : ℝ) :
    signedSignal nodes coefficient u ^ 2 =
      ∑ m ∈ nodes, ∑ n ∈ nodes, (coefficient m * coefficient n) *
        (response m u * response n u) := by
  unfold signedSignal
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The squared finite signed signal is an actual integrable function. -/
theorem signedSignal_square_integrable (T : ℝ) (nodes : Finset ℕ)
    (coefficient : ℕ → ℝ) :
    IntegrableOn (fun u ↦ signedSignal nodes coefficient u ^ 2) (Ioc 0 T) := by
  have finiteIntegrable : IntegrableOn (fun u ↦ ∑ m ∈ nodes, ∑ n ∈ nodes,
      (coefficient m * coefficient n) * (response m u * response n u)) (Ioc 0 T) :=
    integrable_finsetSum nodes (fun m _ ↦
      weighted_response_row_integrable T nodes coefficient m)
  apply finiteIntegrable.congr_fun ?_ measurableSet_Ioc
  intro u _
  exact (signedSignal_square nodes coefficient u).symm

/-- Finite exchange is justified by the literal response-product integrability. -/
theorem signedSignal_integral_square_eq_quadraticForm (T : ℝ) (nodes : Finset ℕ)
    (coefficient : ℕ → ℝ) :
    (∫ u in Ioc 0 T, signedSignal nodes coefficient u ^ 2) =
      quadraticForm T nodes coefficient := by
  calc
    _ = ∫ u in Ioc 0 T, ∑ m ∈ nodes, ∑ n ∈ nodes,
        (coefficient m * coefficient n) * (response m u * response n u) := by
      apply setIntegral_congr_fun measurableSet_Ioc
      intro u _
      exact signedSignal_square nodes coefficient u
    _ = ∑ m ∈ nodes, ∫ u in Ioc 0 T, ∑ n ∈ nodes,
        (coefficient m * coefficient n) * (response m u * response n u) :=
      integral_finsetSum nodes (fun m _ ↦ weighted_response_row_integrable T nodes coefficient m)
    _ = quadraticForm T nodes coefficient := by
      unfold quadraticForm
      apply Finset.sum_congr rfl
      intro m _
      rw [integral_finsetSum nodes
        (fun n _ ↦ weighted_response_product_integrable T coefficient m n)]
      apply Finset.sum_congr rfl
      intro n _
      exact integral_const_mul _ _

/-- Entry symmetry uses the original response products and reading measure. -/
theorem gram_symmetric (T : ℝ) (m n : ℕ) : gram T m n = gram T n m := by
  unfold gram
  apply setIntegral_congr_fun measurableSet_Ioc
  intro u _
  exact mul_comm _ _

theorem gram_diagonal_nonnegative (T : ℝ) (n : ℕ) : 0 ≤ gram T n n := by
  unfold gram
  apply integral_nonneg
  intro u
  exact mul_self_nonneg _

/-- Positive semidefiniteness means nonnegativity for every finite signed vector,
not a cancellation estimate on a distinguished growing arithmetic vector. -/
theorem quadraticForm_nonnegative (T : ℝ) (nodes : Finset ℕ) (coefficient : ℕ → ℝ) :
    0 ≤ quadraticForm T nodes coefficient := by
  rw [← signedSignal_integral_square_eq_quadraticForm]
  apply integral_nonneg
  intro u
  exact sq_nonneg _

/-- The actual completed Möbius pickup energy is nonnegative. -/
theorem actual_energy_nonnegative (T : ℝ) : 0 ≤ energy T := by
  rw [energy_eq_full_gram]
  exact quadraticForm_nonnegative T (inventory T) moebiusCoefficient

/-- Every literal squared Möbius coefficient weights a nonnegative diagonal. -/
theorem actual_diagonal_nonnegative (T : ℝ) : 0 ≤ diagonal T := by
  unfold ArithmeticPickupEnergy.diagonal
  apply Finset.sum_nonneg
  intro n _
  exact mul_nonneg (sq_nonneg _) (gram_diagonal_nonnegative T n)

/-- The only cross-budget inequality supplied by positivity is this lower bound.
The open arithmetic problem requires an upper budget, which is not inferred. -/
theorem actual_cross_lower_bound (T : ℝ) : -diagonal T ≤ cross T := by
  have nonnegative := actual_energy_nonnegative T
  rw [energy_eq_diagonal_add_cross] at nonnegative
  linarith

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupGram
```
