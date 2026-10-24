# Complete source: GRWTSK.Analysis.ErrorBounds.GrowingGramResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `affebe081e0ae6b3697a7a38ff4a97babb758edb` · SHA-256 `b59f439e9a961fd72c067e986da00c5e50cc0c2715a4d78d5f5780fd02088a5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual

set_option autoImplicit false

open scoped BigOperators

/-!
# Changing finite coordinates, feature births, and a retained source tail

Rectangular transport changes the coordinate type; adjoining new feature rows
changes the possible Gram rank. The update retains old-feature mixed terms and
the entire newborn Gram. A stage-indexed comparison permits both finite types
and weights to vary. Its column inequality compares NEXT weights with CURRENT
weights, while its readout bound uses the SAME next-stage weights.

The independent signed source is allowed a separately charged tail in the
fixed scalar readout. Neither growing dimension nor shrinking weights proves
convergence. Exact model updates, source identification, all-channel coverage,
conditioned gain bounds, net-forcing decay and source-tail decay remain premises.
The affine/birth identity below is one producer for the model-update premise.

This is a real finite-stage theorem schema, not an all-test arithmetic tower,
a complex Hermitian adapter, an unbounded-rank construction or a Weil supplier.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No choice-free dependency audit.
-/

namespace GRWTSK.Analysis.ErrorBounds.GrowingGramResidual

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual

noncomputable section

section Rectangular

variable {ι τ κ ν : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [Fintype κ] [Fintype ν]

/-- A genuine rectangular feature map from the old to the new coordinate type. -/
def rectangularStep (A : τ → ι → ℝ) (x : ι → ℝ) (i : τ) : ℝ :=
  ∑ j, A i j * x j

/-- Full pair-coordinate congruence, with different input and output types. -/
def rectangularLift (A : τ → ι → ℝ) (p : τ × τ) (q : ι × ι) : ℝ :=
  A p.1 q.1 * A p.2 q.2

/-- Transport any signed matrix; no positivity or symmetry is assumed. -/
def transportMatrix (A : τ → ι → ℝ) (matrix : ι × ι → ℝ) (p : τ × τ) : ℝ :=
  ∑ q, rectangularLift A p q * matrix q

/-- The two mixed terms and the old-feature injection square. -/
def affineInjection (A : τ → ι → ℝ) (feature : κ → ι → ℝ)
    (offset : κ → τ → ℝ) (p : τ × τ) : ℝ :=
  ∑ k, (outer (rectangularStep A (feature k)) (offset k) p +
    outer (offset k) (rectangularStep A (feature k)) p + outer (offset k) (offset k) p)

/-- Old features are updated; newborn rows are separately indexed, not assumed independent. -/
def extendFeatures (A : τ → ι → ℝ) (feature : κ → ι → ℝ)
    (offset : κ → τ → ℝ) (born : ν → τ → ℝ) : κ ⊕ ν → τ → ℝ :=
  Sum.elim (fun k i => rectangularStep A (feature k) i + offset k i) born

/-- All additive Gram terms, including newly admitted rows. This need not be PSD. -/
def refinementInjection (A : τ → ι → ℝ) (feature : κ → ι → ℝ)
    (offset : κ → τ → ℝ) (born : ν → τ → ℝ) (p : τ × τ) : ℝ :=
  affineInjection A feature offset p + gram born p

omit τFinite in
/-- Rectangular transport retains every mixed pair coordinate. -/
theorem rectangular_outer [Fintype τ] (A : τ → ι → ℝ) (x y : ι → ℝ) (p : τ × τ) :
    outer (rectangularStep A x) (rectangularStep A y) p =
      ∑ q, rectangularLift A p q * outer x y q := by
  calc
    _ = ∑ q : ι × ι, (A p.1 q.1 * x q.1) * (A p.2 q.2 * y q.2) :=
      (sum_pair_mul (fun i => A p.1 i * x i) (fun j => A p.2 j * y j)).symm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro q _
      simp only [rectangularLift, outer]
      ring

/-- Rectangular congruence transports the actual old Gram. -/
theorem rectangular_gram_transport (A : τ → ι → ℝ) (feature : κ → ι → ℝ)
    (p : τ × τ) :
    gram (fun k => rectangularStep A (feature k)) p = transportMatrix A (gram feature) p := by
  unfold gram transportMatrix
  simp_rw [rectangular_outer, Finset.mul_sum]
  rw [Finset.sum_comm]

/-- Affine changes of old features retain both mixed terms. -/
theorem rectangular_gram_update (A : τ → ι → ℝ) (feature : κ → ι → ℝ)
    (offset : κ → τ → ℝ) (p : τ × τ) :
    gram (fun k i => rectangularStep A (feature k) i + offset k i) p =
      transportMatrix A (gram feature) p + affineInjection A feature offset p := by
  rw [← rectangular_gram_transport A feature p]
  simp only [gram, affineInjection, outer]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  ring

omit τFinite in
/-- Appending feature rows adds a separate Gram, not cross terms between distinct rows. -/
theorem gram_sum_features [Fintype τ] (left : κ → τ → ℝ) (right : ν → τ → ℝ) (p : τ × τ) :
    gram (Sum.elim left right) p = gram left p + gram right p := by
  unfold gram
  rw [Fintype.sum_sum_type]
  rfl

/-- A complete rectangular, affine and feature-birth producer for the stage update. -/
theorem gram_extendFeatures (A : τ → ι → ℝ) (feature : κ → ι → ℝ)
    (offset : κ → τ → ℝ) (born : ν → τ → ℝ) (p : τ × τ) :
    gram (extendFeatures A feature offset born) p =
      transportMatrix A (gram feature) p + refinementInjection A feature offset born p := by
  unfold extendFeatures refinementInjection
  rw [gram_sum_features, rectangular_gram_update]
  ring

omit τFinite in
/-- Source-minus-model evolution is derived from the actual rectangular model update. -/
theorem rectangular_residual_evolution [Fintype τ] (A : τ → ι → ℝ)
    (source model : ι × ι → ℝ) (nextSource nextModel injection : τ × τ → ℝ)
    (modelUpdate : ∀ p, nextModel p = transportMatrix A model p + injection p)
    (p : τ × τ) :
    nextSource p - nextModel p =
      transportMatrix A (fun q => source q - model q) p +
        (nextSource p - transportMatrix A source p - injection p) := by
  rw [modelUpdate p]
  simp only [transportMatrix, mul_sub, Finset.sum_sub_distrib]
  ring

omit ιFinite in
/-- The lifted column mass uses next-stage weights and factorizes exactly. -/
theorem rectangular_column_factorization [Fintype ι] (nextWeight : τ → ℝ) (A : τ → ι → ℝ)
    (q : ι × ι) :
    (∑ p, pairWeight nextWeight p * |rectangularLift A p q|) =
      (∑ i, nextWeight i * |A i q.1|) * (∑ j, nextWeight j * |A j q.2|) := by
  calc
    _ = ∑ p : τ × τ, (nextWeight p.1 * |A p.1 q.1|) *
        (nextWeight p.2 * |A p.2 q.2|) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [pairWeight, rectangularLift, abs_mul]
      ring
    _ = _ := sum_pair_mul (fun i => nextWeight i * |A i q.1|)
      (fun j => nextWeight j * |A j q.2|)

/-- Rectangular feature contraction gives pair gain r^2 across the two actual weights. -/
theorem rectangular_column_bound (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (A : τ → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ j, 0 ≤ weight j)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ j, (∑ i, nextWeight i * |A i j|) ≤ r * weight j)
    (q : ι × ι) :
    (∑ p, pairWeight nextWeight p * |rectangularLift A p q|) ≤
      (r * r) * pairWeight weight q := by
  rw [rectangular_column_factorization]
  calc
    _ ≤ (r * weight q.1) * (r * weight q.2) :=
      mul_le_mul (columnBound q.1) (columnBound q.2)
        (Finset.sum_nonneg fun i _ => mul_nonneg (nextWeightsNonnegative i) (abs_nonneg _))
        (mul_nonneg rateNonnegative (weightsNonnegative q.1))
    _ = _ := by unfold pairWeight; ring

end Rectangular

/-- Weighted l1 propagation across different finite channel types and different weights. -/
theorem rectangular_mass_step {ι τ : Type*} [Fintype ι] [Fintype τ]
    (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (residual : ι → ℝ) (nextResidual forcing : τ → ℝ) (gain : τ → ι → ℝ) (r : ℝ)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i)
    (evolution : ∀ i, nextResidual i = (∑ j, gain i j * residual j) + forcing i)
    (columnBound : ∀ j, (∑ i, nextWeight i * |gain i j|) ≤ r * weight j) :
    channelMass nextWeight nextResidual ≤
      r * channelMass weight residual + channelMass nextWeight forcing := by
  have each (i : τ) : |nextResidual i| ≤
      (∑ j, |gain i j| * |residual j|) + |forcing i| := by
    rw [evolution i]
    calc
      _ ≤ |∑ j, gain i j * residual j| + |forcing i| := abs_add_le _ _
      _ ≤ (∑ j, |gain i j * residual j|) + |forcing i| := by
        apply add_le_add_left
        simpa only [Real.norm_eq_abs] using
          (norm_sum_le Finset.univ (fun j => gain i j * residual j))
      _ = _ := by simp only [abs_mul]
  unfold channelMass
  calc
    _ ≤ ∑ i, nextWeight i * ((∑ j, |gain i j| * |residual j|) + |forcing i|) :=
      Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_left (each i) (nextWeightsNonnegative i)
    _ = (∑ i, ∑ j, nextWeight i * (|gain i j| * |residual j|)) +
        ∑ i, nextWeight i * |forcing i| := by
      simp_rw [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
    _ = (∑ j, ∑ i, nextWeight i * (|gain i j| * |residual j|)) +
        ∑ i, nextWeight i * |forcing i| := by rw [Finset.sum_comm]
    _ = (∑ j, (∑ i, nextWeight i * |gain i j|) * |residual j|) +
        ∑ i, nextWeight i * |forcing i| := by
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ (∑ j, (r * weight j) * |residual j|) + ∑ i, nextWeight i * |forcing i| := by
      apply add_le_add_left
      exact Finset.sum_le_sum fun j _ =>
        mul_le_mul_of_nonneg_right (columnBound j) (abs_nonneg _)
    _ = _ := by simp only [Finset.mul_sum, mul_assoc]

/-- A finite source readout may omit a tail, but the comparison must charge it. -/
theorem gram_readout_with_tail_bound {ι κ : Type*} [Fintype ι] [Fintype κ]
    (weight test : ι → ℝ) (source : ι × ι → ℝ) (feature : κ → ι → ℝ) (actual tail : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (testBound : ∀ i, |test i| ≤ weight i)
    (sourceReadout : actual = quadraticReadout test source + tail) :
    |actual - quadraticReadout test (gram feature)| ≤
      channelMass (pairWeight weight) (fun p => source p - gram feature p) + |tail| := by
  have readout : quadraticReadout test source - quadraticReadout test (gram feature) =
      ∑ p, outer test test p * (source p - gram feature p) := by
    simp only [quadraticReadout, mul_sub, Finset.sum_sub_distrib]
  have finiteBound := readout_error_bound (pairWeight weight) (outer test test)
    (fun p => source p - gram feature p) (quadraticReadout test source)
    (quadraticReadout test (gram feature)) readout
    (pair_consumer_bound weight test weightsNonnegative testBound)
  calc
    _ = |(quadraticReadout test source - quadraticReadout test (gram feature)) + tail| := by
      rw [sourceReadout]
      congr 1
      ring
    _ ≤ |quadraticReadout test source - quadraticReadout test (gram feature)| + |tail| := abs_add_le _ _
    _ ≤ _ := add_le_add_left finiteBound _

section Tower

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Residual mass at stage n, with its own finite coordinates and own weights. -/
def gramResidualMass (weight : ∀ n, I n → ℝ) (source : ∀ n, I n × I n → ℝ)
    (feature : ∀ n, K n → I n → ℝ) (n : ℕ) : ℝ :=
  channelMass (pairWeight (weight n)) (fun p => source n p - gram (feature n) p)

/-- Full forcing lives in NEXT-stage coordinates. All births belong to injection. -/
def gramMismatch (gain : ∀ n, I (n + 1) → I n → ℝ)
    (source : ∀ n, I n × I n → ℝ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℝ)
    (n : ℕ) (p : I (n + 1) × I (n + 1)) : ℝ :=
  source (n + 1) p - transportMatrix (gain n) (source n) p - injection n p

/-- The growing-coordinate recurrence retains changes in weights and all newborn terms. -/
theorem growing_gram_mass_step (weight : ∀ n, I n → ℝ)
    (source : ∀ n, I n × I n → ℝ) (feature : ∀ n, K n → I n → ℝ)
    (gain : ∀ n, I (n + 1) → I n → ℝ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * |gain n i j|) ≤ r * weight n j)
    (modelUpdate : ∀ n p, gram (feature (n + 1)) p =
      transportMatrix (gain n) (gram (feature n)) p + injection n p) (n : ℕ) :
    gramResidualMass weight source feature (n + 1) ≤
      (r * r) * gramResidualMass weight source feature n +
        channelMass (pairWeight (weight (n + 1))) (gramMismatch gain source injection n) := by
  exact rectangular_mass_step (pairWeight (weight n)) (pairWeight (weight (n + 1)))
    (fun p => source n p - gram (feature n) p)
    (fun p => source (n + 1) p - gram (feature (n + 1)) p)
    (gramMismatch gain source injection n) (rectangularLift (gain n)) (r * r)
    (fun p => mul_nonneg (weightsNonnegative (n + 1) p.1) (weightsNonnegative (n + 1) p.2))
    (rectangular_residual_evolution (gain n) (source n) (gram (feature n))
      (source (n + 1)) (gram (feature (n + 1))) (injection n) (modelUpdate n))
    (rectangular_column_bound (weight n) (weight (n + 1)) (gain n) r
      (weightsNonnegative n) (weightsNonnegative (n + 1)) rateNonnegative (columnBound n))

/-- Changing both finite types does not change the fixed-witness logic.
The readout tail, full next-stage mismatch and same-stage consumer bounds are mandatory. -/
theorem no_fixed_negative_of_growing_gram
    (weight test : ∀ n, I n → ℝ) (source : ∀ n, I n × I n → ℝ)
    (feature : ∀ n, K n → I n → ℝ) (gain : ∀ n, I (n + 1) → I n → ℝ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℝ) (tail : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (testBound : ∀ n i, |test n i| ≤ weight n i)
    (sourceReadout : ∀ n, actual = quadraticReadout (test n) (source n) + tail n)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * |gain n i j|) ≤ r * weight n j)
    (modelUpdate : ∀ n p, gram (feature (n + 1)) p =
      transportMatrix (gain n) (gram (feature n)) p + injection n p)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      channelMass (pairWeight (weight (n + 1))) (gramMismatch gain source injection n)))
    (tailVanishes : VanishesAtInfinity tail)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have liftedStrict : r * r < 1 := by
    have h := mul_pos (sub_pos.mpr rateStrict) (by linarith : 0 < 1 + r)
    nlinarith
  have massVanishes := variable_budget_vanishes (gramResidualMass weight source feature)
    (fun n => channelMass (pairWeight (weight (n + 1))) (gramMismatch gain source injection n))
    (r * r) (mul_nonneg rateNonnegative rateNonnegative) liftedStrict
    (fun n => channelMass_nonnegative (pairWeight (weight n))
      (fun p => source n p - gram (feature n) p)
      (fun p => mul_nonneg (weightsNonnegative n p.1) (weightsNonnegative n p.2)))
    (growing_gram_mass_step weight source feature gain injection r
      weightsNonnegative rateNonnegative columnBound modelUpdate) mismatchVanishes
  have absTailVanishes : VanishesAtInfinity (fun n => |tail n|) := by
    intro epsilon positive
    obtain ⟨N, hN⟩ := tailVanishes epsilon positive
    exact ⟨N, fun n hn => by simpa only [abs_abs] using hN n hn⟩
  obtain ⟨N, hN⟩ := (VanishesAtInfinity.add massVanishes absTailVanishes)
    (strength / 2) (by linarith)
  have comparison := gram_readout_with_tail_bound
    (weight N) (test N) (source N) (feature N) actual (tail N)
    (weightsNonnegative N) (testBound N) (sourceReadout N)
  have floorBound := positive_model_error_floor negative
    (gram_readout_nonnegative (test N) (feature N)) comparison
  have upperBound := (le_abs_self
    (gramResidualMass weight source feature N + |tail N|)).trans (hN N le_rfl)
  change strength ≤ gramResidualMass weight source feature N + |tail N| at floorBound
  linarith

end Tower

/-- A one-to-two coordinate map can contract: feature mass 1/2 gives pair mass 1/4. -/
theorem rectangular_growth_gain_fixture :
    (∑ _i : Fin 2, |(1 / 4 : ℝ)|) = 1 / 2 ∧
      (∑ p : Fin 2 × Fin 2,
        |rectangularLift (fun (_i : Fin 2) (_j : Unit) => (1 / 4 : ℝ)) p ((), ())|) = 1 / 4 := by
  norm_num [rectangularLift, Fintype.sum_prod_type, Fin.sum_univ_two]

/-- Dropping a source tail can hide a negative target even when every finite matrix is zero. -/
theorem omitted_tail_fixture :
    (-1 : ℝ) = 0 + (-1) ∧ (0 : ℝ) ≤ 0 ∧ |(-1 : ℝ) - 0| = 1 := by
  norm_num

/-- Rescaling weights can create apparent decay; a fixed consumer then fails its bound. -/
theorem shrinking_weight_consumer_fixture :
    (1 / 2 : ℝ) * |1| ≤ (1 / 2 : ℝ) * 1 ∧ ¬ (|(1 : ℝ)| ≤ 1 / 2) := by
  norm_num

/-- One retained coordinate and one newborn feature in a new two-coordinate space. -/
def coordinateBirth : Unit ⊕ Unit → Fin 2 → ℝ :=
  Sum.elim (fun _ i => if i = 0 then 1 else 0) (fun _ i => if i = 1 then 1 else 0)

/-- The born row contributes one on the second coordinate; keeping only the old row loses it. -/
theorem newborn_coordinate_fixture :
    quadraticReadout (fun i : Fin 2 => if i = 1 then 1 else 0) (gram coordinateBirth) = 1 ∧
    quadraticReadout (fun i : Fin 2 => if i = 1 then 1 else 0)
      (gram (fun (_ : Unit) (i : Fin 2) => if i = 0 then (1 : ℝ) else 0)) = 0 := by
  norm_num [gram_readout, coordinateBirth, Fintype.sum_sum_type, Fin.sum_univ_two]

end

end GRWTSK.Analysis.ErrorBounds.GrowingGramResidual
```
