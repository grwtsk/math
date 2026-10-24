# Complete source: GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50f2ce40a11d73bb68f0793b49f2d3d470b63396` · SHA-256 `076cf7c5e372d7051cdb553c39f85933feed85e683a0970c11eef00dc88ee325`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Native complex-modulus budgets for growing Gram models

The realification adapter is exact, but its componentwise real l1 norm can lose
strict contraction through phase alone. This module measures each complete
complex residual entry by its modulus instead. It reuses the SAME complex Gram,
conjugate congruence, source readout, and scalar convergence theorem.

A weighted complex column bound r gives the pair-coordinate bound r*r without
replacing |a| by |re a| + |im a| and without the doubled real matrix budget.
No imaginary entry, mixed term, newborn contribution, or source tail is dropped.
Unit coordinate phases preserve the displayed norm budgets; this does not by
itself identify transformed source data or prove a source/readout intertwiner.

The arithmetic source, positive model update, complete mismatch decay, separate
tail decay and all uniform conditioning/coverage premises remain independent.
This improves a sufficient finite-stage estimate, not the missing Weil supplier.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No choice-free dependency audit.
-/

namespace GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

noncomputable section

variable {ι τ κ : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [κFinite : Fintype κ]

/-- Complete complex entries are measured, not their real projections. -/
def modulusMass (weight : ι → ℝ) (residual : ι → ℂ) : ℝ :=
  ∑ i, weight i * ‖residual i‖

theorem modulusMass_nonnegative (weight : ι → ℝ) (residual : ι → ℂ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) : 0 ≤ modulusMass weight residual :=
  Finset.sum_nonneg fun i _ => mul_nonneg (weightsNonnegative i) (norm_nonneg _)

/-- The triangle bound is used only after any exact signed cancellation. -/
theorem modulusMass_add_le (weight : ι → ℝ) (left right : ι → ℂ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) :
    modulusMass weight (fun i => left i + right i) ≤
      modulusMass weight left + modulusMass weight right := by
  unfold modulusMass
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro i _
  simpa only [mul_add] using
    mul_le_mul_of_nonneg_left (norm_add_le (left i) (right i)) (weightsNonnegative i)

/-- Rectangular complex transport uses next-stage weights against current-stage weights. -/
theorem rectangular_modulus_bound (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (gain : τ → ι → ℂ) (residual : ι → ℂ) (r : ℝ)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i)
    (columnBound : ∀ j, (∑ i, nextWeight i * ‖gain i j‖) ≤ r * weight j) :
    modulusMass nextWeight (fun i => ∑ j, gain i j * residual j) ≤
      r * modulusMass weight residual := by
  have each (i : τ) : ‖∑ j, gain i j * residual j‖ ≤
      ∑ j, ‖gain i j‖ * ‖residual j‖ := by
    simpa only [norm_mul] using
      (norm_sum_le Finset.univ (fun j => gain i j * residual j))
  unfold modulusMass
  calc
    _ ≤ ∑ i, nextWeight i * (∑ j, ‖gain i j‖ * ‖residual j‖) :=
      Finset.sum_le_sum fun i _ =>
        mul_le_mul_of_nonneg_left (each i) (nextWeightsNonnegative i)
    _ = ∑ j, (∑ i, nextWeight i * ‖gain i j‖) * ‖residual j‖ := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      simp only [Finset.sum_mul, mul_assoc]
    _ ≤ ∑ j, (r * weight j) * ‖residual j‖ :=
      Finset.sum_le_sum fun j _ =>
        mul_le_mul_of_nonneg_right (columnBound j) (norm_nonneg _)
    _ = _ := by simp only [Finset.mul_sum, mul_assoc]

/-- The conjugate pair lift retains both indices and their relative phase. -/
def conjugateLift (A : τ → ι → ℂ) (p : τ × τ) (q : ι × ι) : ℂ :=
  A p.1 q.1 * conj (A p.2 q.2)

omit τFinite in
/-- This is the existing congruence, not a different positive surrogate. -/
theorem complexTransport_eq_lift [Fintype τ] (A : τ → ι → ℂ) (H : ι × ι → ℂ) :
    complexTransport A H = fun p => ∑ q, conjugateLift A p q * H q := by
  funext p
  unfold complexTransport
  apply Finset.sum_congr rfl
  intro q _
  unfold conjugateLift
  ring

omit ιFinite in
/-- Absolute pair-column masses factorize directly in complex modulus. -/
theorem modulus_lift_column_factorization [Fintype ι] (nextWeight : τ → ℝ)
    (A : τ → ι → ℂ) (q : ι × ι) :
    (∑ p, pairWeight nextWeight p * ‖conjugateLift A p q‖) =
      (∑ i, nextWeight i * ‖A i q.1‖) * (∑ j, nextWeight j * ‖A j q.2‖) := by
  calc
    _ = ∑ p : τ × τ, (nextWeight p.1 * ‖A p.1 q.1‖) *
        (nextWeight p.2 * ‖A p.2 q.2‖) := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [pairWeight, conjugateLift, norm_mul, Complex.norm_conj]
      ring
    _ = _ := sum_pair_mul (fun i => nextWeight i * ‖A i q.1‖)
      (fun j => nextWeight j * ‖A j q.2‖)

/-- A modulus column rate r yields rate r*r, with no component-mass conversion. -/
theorem modulus_lift_column_bound (weight : ι → ℝ) (nextWeight : τ → ℝ)
    (A : τ → ι → ℂ) (r : ℝ)
    (weightsNonnegative : ∀ j, 0 ≤ weight j)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ j, (∑ i, nextWeight i * ‖A i j‖) ≤ r * weight j)
    (q : ι × ι) :
    (∑ p, pairWeight nextWeight p * ‖conjugateLift A p q‖) ≤
      (r * r) * pairWeight weight q := by
  rw [modulus_lift_column_factorization]
  calc
    _ ≤ (r * weight q.1) * (r * weight q.2) :=
      mul_le_mul (columnBound q.1) (columnBound q.2)
        (Finset.sum_nonneg fun i _ => mul_nonneg (nextWeightsNonnegative i) (norm_nonneg _))
        (mul_nonneg rateNonnegative (weightsNonnegative q.1))
    _ = _ := by unfold pairWeight; ring

/-- The native budget controls the FULL complex readout, not just its real part. -/
theorem readout_modulus_bound (weight : ι → ℝ) (test : ι → ℂ) (H : ι × ι → ℂ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (testBound : ∀ i, ‖test i‖ ≤ weight i) :
    ‖complexReadout test H‖ ≤ modulusMass (pairWeight weight) H := by
  unfold complexReadout modulusMass
  calc
    _ ≤ ∑ p, ‖conj (test p.1) * H p * test p.2‖ := norm_sum_le _ _
    _ = ∑ p : ι × ι, (‖test p.1‖ * ‖test p.2‖) * ‖H p‖ := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [norm_mul, Complex.norm_conj]
      ring
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro p _
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul (testBound p.1) (testBound p.2)
          (norm_nonneg _) (weightsNonnegative p.1)) (norm_nonneg _)

/-- A real source value retains its independently supplied tail, with no factor two. -/
theorem readout_with_tail_bound (weight : ι → ℝ) (test : ι → ℂ)
    (source : ι × ι → ℂ) (feature : κ → ι → ℂ) (actual tail : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (testBound : ∀ i, ‖test i‖ ≤ weight i)
    (sourceReadout : actual = (complexReadout test source).re + tail) :
    |actual - (complexReadout test (complexGram feature)).re| ≤
      modulusMass (pairWeight weight) (fun p => source p - complexGram feature p) + |tail| := by
  have difference : complexReadout test source - complexReadout test (complexGram feature) =
      complexReadout test (fun p => source p - complexGram feature p) := by
    simp only [complexReadout, mul_sub, sub_mul, Finset.sum_sub_distrib]
  have finiteBound := (Complex.abs_re_le_norm
    (complexReadout test (fun p => source p - complexGram feature p))).trans
    (readout_modulus_bound weight test (fun p => source p - complexGram feature p)
      weightsNonnegative testBound)
  rw [← difference, Complex.sub_re] at finiteBound
  calc
    _ = |((complexReadout test source).re -
        (complexReadout test (complexGram feature)).re) + tail| := by
      rw [sourceReadout]
      congr 1
      ring
    _ ≤ |(complexReadout test source).re -
        (complexReadout test (complexGram feature)).re| + |tail| := abs_add_le _ _
    _ ≤ _ := add_le_add_left finiteBound _

omit τFinite in
/-- Residual dynamics follow from the supplied complex model update, with all signs retained. -/
theorem complex_residual_evolution [Fintype τ] (A : τ → ι → ℂ)
    (source model : ι × ι → ℂ) (nextSource nextModel injection : τ × τ → ℂ)
    (modelUpdate : ∀ p, nextModel p = complexTransport A model p + injection p)
    (p : τ × τ) :
    nextSource p - nextModel p =
      complexTransport A (fun q => source q - model q) p +
        (nextSource p - complexTransport A source p - injection p) := by
  rw [modelUpdate p]
  simp only [complexTransport, mul_sub, sub_mul, Finset.sum_sub_distrib]
  ring

section Tower

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Same source-minus-Gram residual, now measured directly in complex modulus. -/
def modulusResidualMass (weight : ∀ n, I n → ℝ) (source : ∀ n, I n × I n → ℂ)
    (feature : ∀ n, K n → I n → ℂ) (n : ℕ) : ℝ :=
  modulusMass (pairWeight (weight n)) (fun p => source n p - complexGram (feature n) p)

/-- The full injection mismatch lives in next-stage coordinates. -/
def complexMismatch (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (n : ℕ) (p : I (n + 1) × I (n + 1)) : ℂ :=
  source (n + 1) p - complexTransport (gain n) (source n) p - injection n p

/-- Native complex recurrence with the exact modulus rate and no realification multiplier. -/
theorem modulus_gram_mass_step (weight : ∀ n, I n → ℝ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (r : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * ‖gain n i j‖) ≤ r * weight n j)
    (modelUpdate : ∀ n p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p) (n : ℕ) :
    modulusResidualMass weight source feature (n + 1) ≤
      (r * r) * modulusResidualMass weight source feature n +
        modulusMass (pairWeight (weight (n + 1))) (complexMismatch gain source injection n) := by
  have evolution := funext (complex_residual_evolution (gain n) (source n)
    (complexGram (feature n)) (source (n + 1)) (complexGram (feature (n + 1)))
    (injection n) (modelUpdate n))
  unfold modulusResidualMass
  rw [evolution]
  apply (modulusMass_add_le (pairWeight (weight (n + 1)))
    (complexTransport (gain n) (fun p => source n p - complexGram (feature n) p))
    (complexMismatch gain source injection n)
    (fun p => mul_nonneg (weightsNonnegative (n + 1) p.1)
      (weightsNonnegative (n + 1) p.2))).trans
  apply add_le_add_left
  rw [complexTransport_eq_lift]
  exact rectangular_modulus_bound (pairWeight (weight n)) (pairWeight (weight (n + 1)))
    (conjugateLift (gain n)) (fun p => source n p - complexGram (feature n) p) (r * r)
    (fun p => mul_nonneg (weightsNonnegative (n + 1) p.1) (weightsNonnegative (n + 1) p.2))
    (modulus_lift_column_bound (weight n) (weight (n + 1)) (gain n) r
      (weightsNonnegative n) (weightsNonnegative (n + 1)) rateNonnegative (columnBound n))

/-- The same fixed-witness exclusion with weaker, phase-insensitive modulus premises.
Arithmetic source identification, update, complete mismatch decay and tail decay remain inputs. -/
theorem no_fixed_negative_of_modulus_growing_gram
    (weight : ∀ n, I n → ℝ) (test : ∀ n, I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (tail : ℕ → ℝ)
    (r actual strength : ℝ)
    (weightsNonnegative : ∀ n i, 0 ≤ weight n i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (testBound : ∀ n i, ‖test n i‖ ≤ weight n i)
    (sourceReadout : ∀ n, actual = (complexReadout (test n) (source n)).re + tail n)
    (columnBound : ∀ n j, (∑ i, weight (n + 1) i * ‖gain n i j‖) ≤ r * weight n j)
    (modelUpdate : ∀ n p, complexGram (feature (n + 1)) p =
      complexTransport (gain n) (complexGram (feature n)) p + injection n p)
    (mismatchVanishes : VanishesAtInfinity (fun n =>
      modulusMass (pairWeight (weight (n + 1))) (complexMismatch gain source injection n)))
    (tailVanishes : VanishesAtInfinity tail)
    (strengthPositive : 0 < strength) (negative : actual ≤ -strength) : False := by
  have liftedStrict : r * r < 1 := by
    have h := mul_pos (sub_pos.mpr rateStrict) (by linarith : 0 < 1 + r)
    nlinarith
  have massVanishes := variable_budget_vanishes (modulusResidualMass weight source feature)
    (fun n => modulusMass (pairWeight (weight (n + 1))) (complexMismatch gain source injection n))
    (r * r) (mul_nonneg rateNonnegative rateNonnegative) liftedStrict
    (fun n => modulusMass_nonnegative (pairWeight (weight n))
      (fun p => source n p - complexGram (feature n) p)
      (fun p => mul_nonneg (weightsNonnegative n p.1) (weightsNonnegative n p.2)))
    (modulus_gram_mass_step weight source feature gain injection r
      weightsNonnegative rateNonnegative columnBound modelUpdate) mismatchVanishes
  have absTailVanishes : VanishesAtInfinity (fun n => |tail n|) := by
    intro epsilon positive
    obtain ⟨N, hN⟩ := tailVanishes epsilon positive
    exact ⟨N, fun n hn => by simpa only [abs_abs] using hN n hn⟩
  obtain ⟨N, hN⟩ := (VanishesAtInfinity.add massVanishes absTailVanishes)
    (strength / 2) (by linarith)
  have comparison := readout_with_tail_bound (weight N) (test N) (source N) (feature N)
    actual (tail N) (weightsNonnegative N) (testBound N) (sourceReadout N)
  have floorBound := positive_model_error_floor negative
    (complex_gram_readout_nonnegative (test N) (feature N)) comparison
  have upperBound := (le_abs_self
    (modulusResidualMass weight source feature N + |tail N|)).trans (hN N le_rfl)
  change strength ≤ modulusResidualMass weight source feature N + |tail N| at floorBound
  linarith

end Tower

/-- Unit coordinate phases do not change the native residual budget. -/
theorem unit_phase_preserves_mass (weight : ι → ℝ) (H : ι × ι → ℂ)
    (phase : ι → ℂ) (phaseUnit : ∀ i, ‖phase i‖ = 1) :
    modulusMass (pairWeight weight) (fun p => phase p.1 * H p * conj (phase p.2)) =
      modulusMass (pairWeight weight) H := by
  simp only [modulusMass, norm_mul, Complex.norm_conj, phaseUnit, one_mul, mul_one]

omit ιFinite in
/-- Independent unit phases at the two stages preserve column costs, not arbitrary mixing. -/
theorem unit_phase_preserves_column_mass [Fintype ι] (weight : τ → ℝ) (A : τ → ι → ℂ)
    (left : τ → ℂ) (right : ι → ℂ)
    (leftUnit : ∀ i, ‖left i‖ = 1) (rightUnit : ∀ j, ‖right j‖ = 1) (j : ι) :
    (∑ i, weight i * ‖left i * A i j * conj (right j)‖) =
      ∑ i, weight i * ‖A i j‖ := by
  simp only [norm_mul, Complex.norm_conj, leftUnit, rightUnit, one_mul, mul_one]

/-- Relation to the previous doubled real budget, without a false same-norm identity. -/
theorem double_modulusMass_le_realSource_mass (weight : ι → ℝ) (H : ι × ι → ℂ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) :
    2 * modulusMass (pairWeight weight) H ≤
      channelMass (pairWeight (duplicateWeight weight)) (realSource H) := by
  rw [realSource_mass]
  apply mul_le_mul_of_nonneg_left _ (by norm_num : (0 : ℝ) ≤ 2)
  apply Finset.sum_le_sum
  intro p _
  exact mul_le_mul_of_nonneg_left (Complex.norm_le_abs_re_add_abs_im (H p))
    (mul_nonneg (weightsNonnegative p.1) (weightsNonnegative p.2))

/-- Modulus sees a strict contraction where the component-mass bound exceeds one. -/
theorem native_modulus_strict_fixture :
    ‖(⟨1 / 2, 2 / 3⟩ : ℂ)‖ = 5 / 6 ∧
      componentMass (⟨1 / 2, 2 / 3⟩ : ℂ) = 7 / 6 ∧
      (5 / 6 : ℝ) < 1 ∧ 1 < (7 / 6 : ℝ) := by
  have square := Complex.norm_mul_self_eq_normSq (⟨1 / 2, 2 / 3⟩ : ℂ)
  norm_num [Complex.normSq_mk] at square
  have nonnegative := norm_nonneg (⟨1 / 2, 2 / 3⟩ : ℂ)
  refine ⟨?_, ?_, by norm_num, by norm_num⟩
  · nlinarith
  · norm_num [componentMass]

/-- The native pair rate is 25/36; the component-mass square is greater than one. -/
theorem native_pair_rate_fixture :
    (5 / 6 : ℝ) ^ 2 = 25 / 36 ∧ (25 / 36 : ℝ) < 1 ∧
      1 < (7 / 6 : ℝ) ^ 2 := by
  norm_num

/-- The same imaginary negative direction survives the sharper budget. -/
theorem imaginary_negative_fixture :
    (complexReadout imaginaryTest imaginaryBlock).re = -2 ∧
      modulusMass (pairWeight (fun _ : Fin 2 => (1 : ℝ))) imaginaryBlock = 2 := by
  refine ⟨imaginary_mixed_terms_fixture.1, ?_⟩
  norm_num [modulusMass, pairWeight, imaginaryBlock, Fintype.sum_prod_type, Fin.sum_univ_two]

end

end GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual
```
