# Complete source: GRWTSK.Analysis.ErrorBounds.FiniteGramWitnessWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c109fc6c3687a5a15667fa0957e51f48d09239bb` · SHA-256 `8e8c4d8affe68302d190260dd736675216d4291d04770a049b0c6e20f7e52386`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Finite-window bounds for a retained negative witness

This module implements the finite-block consequence recorded in the source review
of PR #308, and permits varying nonnegative gains within the block. No gain need
be less than one: the decisive condition is a strict terminal budget margin.
The initial residual retains the entire preceding history. All forcing bounds
refer to the complete source-versus-model mismatch, not to a selected channel.

Only the selected finite window requires transition and mismatch certificates.
The source readout, consumer bound and separately charged tail are required at
its terminal stage. No stationarity, asymptotic decay, summability, or selection
of a limiting fixed point is used. The complex application reuses the SAME Gram,
conjugate transport and modulus budget as the earlier modules.

A formal inequality is not an arithmetic supplier: source identity, every
mixed/newborn contribution, complete tail, and certified bounds remain inputs.
A rational negative-feasibility fixture is not an actual Weil certificate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No choice-free dependency audit.
-/

namespace GRWTSK.Analysis.ErrorBounds.FiniteGramWitnessWindow

open GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual

noncomputable section

/-- Explicit finite majorant, with stage gains and every forcing contribution retained. -/
def windowMajorant (rate forcing : ℕ → ℝ) (initial : ℝ) : ℕ → ℝ
  | 0 => initial
  | k + 1 => rate k * windowMajorant rate forcing initial k + forcing k

/-- Only the first k inequalities are consumed; no continuation theorem is required. -/
theorem window_majorant_bound (B rate forcing : ℕ → ℝ) (initial : ℝ)
    (initialBound : B 0 ≤ initial) : ∀ k : ℕ,
    (∀ j, j < k → 0 ≤ rate j) →
    (∀ j, j < k → B (j + 1) ≤ rate j * B j + forcing j) →
    B k ≤ windowMajorant rate forcing initial k := by
  intro k
  induction k with
  | zero =>
      intro _ _
      exact initialBound
  | succ k ih =>
      intro rateNonnegative step
      have previous := ih
        (fun j hj => rateNonnegative j (Nat.lt_succ_of_lt hj))
        (fun j hj => step j (Nat.lt_succ_of_lt hj))
      exact (step k (Nat.lt_succ_self k)).trans
        (add_le_add_left
          (mul_le_mul_of_nonneg_left previous (rateNonnegative k (Nat.lt_succ_self k))) _)

/-- Restarting at N keeps B N; resetting the prefix to zero is not permitted. -/
theorem window_majorant_bound_from (B rate forcing : ℕ → ℝ) (N k : ℕ) (initial : ℝ)
    (initialBound : B N ≤ initial)
    (rateNonnegative : ∀ j, j < k → 0 ≤ rate j)
    (step : ∀ j, j < k → B (N + (j + 1)) ≤ rate j * B (N + j) + forcing j) :
    B (N + k) ≤ windowMajorant rate forcing initial k := by
  exact window_majorant_bound (fun j => B (N + j)) rate forcing initial
    (by simpa only [Nat.add_zero] using initialBound) k rateNonnegative step

/-- At constant rate this is the existing finite forcing response, not a new limit notion. -/
theorem windowMajorant_constant_rate (q initial : ℝ) (forcing : ℕ → ℝ) (k : ℕ) :
    windowMajorant (fun _ => q) forcing initial k =
      q ^ k * initial + forcingResponse q forcing k := by
  induction k with
  | zero => simp [windowMajorant, forcingResponse]
  | succ k ih =>
      simp only [windowMajorant, forcingResponse, ih, pow_succ]
      ring

/-- A supplied affine fixed-point equation gives an exact finite constant-forcing formula. -/
theorem windowMajorant_affine_fixed (q c L initial : ℝ) (fixed : q * L + c = L)
    (k : ℕ) :
    windowMajorant (fun _ => q) (fun _ => c) initial k =
      L + q ^ k * (initial - L) := by
  induction k with
  | zero => simp only [windowMajorant, pow_zero]; ring
  | succ k ih =>
      calc
        _ = q * (L + q ^ k * (initial - L)) + c := by rw [windowMajorant, ih]
        _ = (q * L + c) + q ^ (k + 1) * (initial - L) := by rw [pow_succ]; ring
        _ = _ := by rw [fixed]

/-- Closed geometric form; q = 1 is deliberately excluded from the division. -/
theorem windowMajorant_geometric (q c initial : ℝ) (notOne : q ≠ 1) (k : ℕ) :
    windowMajorant (fun _ => q) (fun _ => c) initial k =
      q ^ k * initial + c * (1 - q ^ k) / (1 - q) := by
  have denominator : 1 - q ≠ 0 := sub_ne_zero.mpr (Ne.symm notOne)
  have fixed : q * (c / (1 - q)) + c = c / (1 - q) := by
    field_simp [denominator]; ring
  rw [windowMajorant_affine_fixed q c (c / (1 - q)) initial fixed k]
  field_simp [denominator]; ring

/-- The endpoint q = 1 has a finite linear formula, not a singular geometric quotient. -/
theorem windowMajorant_rate_one (c initial : ℝ) (k : ℕ) :
    windowMajorant (fun _ => 1) (fun _ => c) initial k = initial + (k : ℝ) * c := by
  induction k with
  | zero => simp [windowMajorant]
  | succ k ih =>
      simp only [windowMajorant, ih, Nat.cast_add, Nat.cast_one]
      ring

/-- A local rectangular source/model update supplies one budget step at its own gain. -/
theorem modulus_residual_step {ι τ : Type*} [Fintype ι] [Fintype τ]
    (weight : ι → ℝ) (nextWeight : τ → ℝ) (gain : τ → ι → ℂ)
    (source model : ι × ι → ℂ) (nextSource nextModel injection : τ × τ → ℂ) (r : ℝ)
    (weightsNonnegative : ∀ j, 0 ≤ weight j)
    (nextWeightsNonnegative : ∀ i, 0 ≤ nextWeight i) (rateNonnegative : 0 ≤ r)
    (columnBound : ∀ j, (∑ i, nextWeight i * ‖gain i j‖) ≤ r * weight j)
    (modelUpdate : ∀ p, nextModel p = complexTransport gain model p + injection p) :
    modulusMass (pairWeight nextWeight) (fun p => nextSource p - nextModel p) ≤
      (r * r) * modulusMass (pairWeight weight) (fun p => source p - model p) +
        modulusMass (pairWeight nextWeight)
          (fun p => nextSource p - complexTransport gain source p - injection p) := by
  have evolution := funext
    (complex_residual_evolution gain source model nextSource nextModel injection modelUpdate)
  rw [evolution]
  apply (modulusMass_add_le (pairWeight nextWeight)
    (complexTransport gain (fun p => source p - model p))
    (fun p => nextSource p - complexTransport gain source p - injection p)
    (fun p => mul_nonneg (nextWeightsNonnegative p.1) (nextWeightsNonnegative p.2))).trans
  apply add_le_add_left
  rw [complexTransport_eq_lift]
  exact rectangular_modulus_bound (pairWeight weight) (pairWeight nextWeight)
    (conjugateLift gain) (fun p => source p - model p) (r * r)
    (fun p => mul_nonneg (nextWeightsNonnegative p.1) (nextWeightsNonnegative p.2))
    (modulus_lift_column_bound weight nextWeight gain r weightsNonnegative
      nextWeightsNonnegative rateNonnegative columnBound)

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Finite source-to-Gram comparison. Every hypothesis is local to N,...,N+k.
The test is the terminal representation of the same supplied source witness. -/
theorem complex_gram_window_comparison
    (weight : ∀ n, I n → ℝ) (source : ∀ n, I n × I n → ℂ)
    (feature : ∀ n, K n → I n → ℂ) (gain : ∀ n, I (n + 1) → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (N k : ℕ) (rate forcing : ℕ → ℝ) (initial actual tail tailBound : ℝ)
    (test : I (N + k) → ℂ)
    (weightsNonnegative : ∀ j, j ≤ k → ∀ i, 0 ≤ weight (N + j) i)
    (rateNonnegative : ∀ j, j < k → 0 ≤ rate j)
    (initialBound : modulusResidualMass weight source feature N ≤ initial)
    (columnBound : ∀ j, j < k → ∀ i,
      (∑ a, weight (N + j + 1) a * ‖gain (N + j) a i‖) ≤ rate j * weight (N + j) i)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (N + j + 1)) p =
      complexTransport (gain (N + j)) (complexGram (feature (N + j))) p + injection (N + j) p)
    (mismatchBound : ∀ j, j < k →
      modulusMass (pairWeight (weight (N + j + 1)))
        (complexMismatch gain source injection (N + j)) ≤ forcing j)
    (testBound : ∀ i, ‖test i‖ ≤ weight (N + k) i)
    (sourceReadout : actual = (complexReadout test (source (N + k))).re + tail)
    (tailEstimate : |tail| ≤ tailBound) :
    |actual - (complexReadout test (complexGram (feature (N + k)))).re| ≤
      windowMajorant (fun j => rate j * rate j) forcing initial k + tailBound := by
  have step (j : ℕ) (hj : j < k) :
      modulusResidualMass weight source feature (N + (j + 1)) ≤
        (rate j * rate j) * modulusResidualMass weight source feature (N + j) + forcing j := by
    have nextWeights : ∀ i, 0 ≤ weight (N + j + 1) i := by
      convert weightsNonnegative (j + 1) (by omega) using 1
      rfl
    have bound := modulus_residual_step (weight (N + j)) (weight (N + j + 1))
      (gain (N + j)) (source (N + j)) (complexGram (feature (N + j)))
      (source (N + j + 1)) (complexGram (feature (N + j + 1))) (injection (N + j))
      (rate j) (weightsNonnegative j (Nat.le_of_lt hj)) nextWeights
      (rateNonnegative j hj) (columnBound j hj) (modelUpdate j hj)
    have charged := bound.trans (add_le_add_right (mismatchBound j hj)
      ((rate j * rate j) * modulusResidualMass weight source feature (N + j)))
    convert charged using 1 <;> rfl
  have endpoint := window_majorant_bound_from (modulusResidualMass weight source feature)
    (fun j => rate j * rate j) forcing N k initial initialBound
    (fun j hj => mul_nonneg (rateNonnegative j hj) (rateNonnegative j hj)) step
  have comparison := readout_with_tail_bound (weight (N + k)) test (source (N + k))
    (feature (N + k)) actual tail (weightsNonnegative k le_rfl) testBound sourceReadout
  exact comparison.trans (add_le_add endpoint tailEstimate)

end Window

/-- A supplied finite comparison and a strict margin exclude the negative witness.
The comparison may be obtained from the local window theorem; positivity is from the SAME Gram. -/
theorem no_fixed_negative_below_window {ι κ : Type*} [Fintype ι] [Fintype κ]
    (test : ι → ℂ) (feature : κ → ι → ℂ) (actual strength budget : ℝ)
    (negative : actual ≤ -strength)
    (comparison : |actual - (complexReadout test (complexGram feature)).re| ≤ budget)
    (margin : budget < strength) : False := by
  have lower := positive_model_error_floor negative
    (complex_gram_readout_nonnegative test feature) comparison
  exact (not_le_of_gt margin) lower

/-- The reviewed two-step rational budget is below one, with the tail still charged. -/
theorem reviewed_window_fixture :
    windowMajorant (fun _ => (1 / 4 : ℝ)) (fun _ => (1 / 2 : ℝ)) 2 2 + 1 / 8 = 7 / 8 ∧
      (7 / 8 : ℝ) < 1 := by
  norm_num [windowMajorant]

/-- At equality a negative target and positive model coexist with their exact error. -/
theorem strict_margin_required_fixture :
    (0 : ℝ) ≤ 0 ∧ |(-1 : ℝ) - 0| = 1 ∧ ¬ (1 : ℝ) < 1 := by
  norm_num

/-- Intermediate expansion is permitted; the complete propagated budget controls the endpoint. -/
theorem expanding_step_fixture :
    windowMajorant (fun j => if j = 0 then (2 : ℝ) else 1 / 4) (fun _ => 0) 1 2 = 1 / 2 := by
  norm_num [windowMajorant]

/-- The initial residual is part of the budget even with zero forcing. -/
theorem prefix_retained_fixture :
    windowMajorant (fun _ => (1 / 4 : ℝ)) (fun _ => 0) 16 2 = 1 ∧
      windowMajorant (fun _ => (1 / 4 : ℝ)) (fun _ => 0) 0 2 = 0 := by
  norm_num [windowMajorant]

/-- Every forcing term is propagated with its own later gains, not their unweighted sum. -/
theorem varying_forcing_fixture :
    windowMajorant (fun j => if j = 0 then (2 : ℝ) else 1 / 4)
      (fun j => if j = 0 then (1 : ℝ) else 3 / 8) 0 2 = 5 / 8 := by
  norm_num [windowMajorant]

end

end GRWTSK.Analysis.ErrorBounds.FiniteGramWitnessWindow
```
