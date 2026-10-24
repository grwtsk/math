# Complete source: GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `badf04b0b2e1f3649a636b5616a0ab5b0a802aee` · SHA-256 `bd85e733c0b35af2cfde3ac824c6b305276873b9fa1b93ea9e0d53feccc05d18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Inexact adjoint observations with a fully charged correction

The defect is defined as e_j = A_j* z_(j+1) - z_j, not independently invented.
Replacing an exact pullback by z_j contributes BOTH mixed observations and the
quadratic defect observation. Their signed sum is retained in the finite
source-minus-Gram telescope. No Hermitian or source positivity premise is used
for the expansion; the model remains the existing actual complex Gram.

The optional modulus adapter bounds the correction by
(2 eta + eta^2) times the complete residual mass when |z_i| <= w_i and
|e_i| <= eta w_i. Small coordinate error without a residual bound is insufficient.
Zero weights cannot hide a nonzero test or defect while meeting these bounds.
All source, model-update, initial-observation, mismatch and terminal-tail
premises from the exact window remain. Approximate terminal source identities
need their own charged remainder; this module does not manufacture one.

The formulas account for inexact arithmetic but provide neither a numerical
algorithm nor certified arithmetic enclosures. No whole-matrix contraction,
infinite fixed-point selection, actual Weil supplier or RH result is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Imported axiom closure unaudited.
-/

namespace GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow

open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual
open GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow

noncomputable section

variable {ι τ κ : Type*} [ιFinite : Fintype ι] [τFinite : Fintype τ] [κFinite : Fintype κ]

/-- The same complex readout with independently specified left and right tests. -/
def mixedReadout (left right : ι → ℂ) (H : ι × ι → ℂ) : ℂ :=
  ∑ p, conj (left p.1) * H p * right p.2

@[simp] theorem mixedReadout_self (test : ι → ℂ) (H : ι × ι → ℂ) :
    mixedReadout test test H = complexReadout test H := rfl

/-- Full signed quadratic correction, including its second-order term. -/
def readoutCorrection (test defect : ι → ℂ) (H : ι × ι → ℂ) : ℂ :=
  mixedReadout test defect H + mixedReadout defect test H + complexReadout defect H

/-- The expansion is valid for arbitrary signed complex matrices, not just Hermitian ones. -/
theorem readout_add_vector (test defect : ι → ℂ) (H : ι × ι → ℂ) :
    complexReadout (fun i => test i + defect i) H =
      complexReadout test H + readoutCorrection test defect H := by
  simp only [complexReadout, readoutCorrection, mixedReadout, map_add,
    mul_add, add_mul, Finset.sum_add_distrib]
  ring

@[simp] theorem readoutCorrection_zero (test : ι → ℂ) (H : ι × ι → ℂ) :
    readoutCorrection test (fun _ => 0) H = 0 := by
  simp [readoutCorrection, mixedReadout, complexReadout]

/-- The sign convention makes the exact pullback equal approximate plus defect. -/
def pullbackDefect (A : τ → ι → ℂ) (nextTest : τ → ℂ) (approximate : ι → ℂ)
    (i : ι) : ℂ := adjointTest A nextTest i - approximate i

omit ιFinite in
theorem test_add_pullbackDefect [Fintype ι] (A : τ → ι → ℂ) (nextTest : τ → ℂ)
    (approximate : ι → ℂ) :
    (fun i => approximate i + pullbackDefect A nextTest approximate i) =
      adjointTest A nextTest := by
  funext i
  unfold pullbackDefect
  ring

omit ιFinite in
/-- Exact backward transport is recovered without assuming any small-error estimate. -/
theorem pullbackDefect_zero_of_exact [Fintype ι] (A : τ → ι → ℂ) (nextTest : τ → ℂ)
    (approximate : ι → ℂ) (exactBackward : approximate = adjointTest A nextTest) :
    pullbackDefect A nextTest approximate = fun _ => 0 := by
  funext i
  simp [pullbackDefect, exactBackward]

/-- Scaled coordinate bounds control a mixed observation in the existing native modulus mass. -/
theorem mixed_readout_modulus_bound (weight : ι → ℝ) (left right : ι → ℂ)
    (H : ι × ι → ℂ) (alpha beta : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (alphaNonnegative : 0 ≤ alpha) (_betaNonnegative : 0 ≤ beta)
    (leftBound : ∀ i, ‖left i‖ ≤ alpha * weight i)
    (rightBound : ∀ i, ‖right i‖ ≤ beta * weight i) :
    ‖mixedReadout left right H‖ ≤ (alpha * beta) * modulusMass (pairWeight weight) H := by
  unfold mixedReadout
  calc
    _ ≤ ∑ p, ‖conj (left p.1) * H p * right p.2‖ := norm_sum_le _ _
    _ = ∑ p : ι × ι, (‖left p.1‖ * ‖right p.2‖) * ‖H p‖ := by
      apply Finset.sum_congr rfl
      intro p _
      simp only [norm_mul, Complex.norm_conj]
      ring
    _ ≤ ∑ p : ι × ι, ((alpha * weight p.1) * (beta * weight p.2)) * ‖H p‖ := by
      apply Finset.sum_le_sum
      intro p _
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul (leftBound p.1) (rightBound p.2) (norm_nonneg _)
          (mul_nonneg alphaNonnegative (weightsNonnegative p.1))) (norm_nonneg _)
    _ = _ := by
      simp only [modulusMass, pairWeight, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro p _
      ring

/-- Both first-order terms AND the quadratic term are charged, with no division by weights. -/
theorem readoutCorrection_modulus_bound (weight : ι → ℝ) (test defect : ι → ℂ)
    (H : ι × ι → ℂ) (eta : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (etaNonnegative : 0 ≤ eta)
    (testBound : ∀ i, ‖test i‖ ≤ weight i)
    (defectBound : ∀ i, ‖defect i‖ ≤ eta * weight i) :
    ‖readoutCorrection test defect H‖ ≤
      (2 * eta + eta * eta) * modulusMass (pairWeight weight) H := by
  have unitBound : ∀ i, ‖test i‖ ≤ (1 : ℝ) * weight i := by
    simpa only [one_mul] using testBound
  have left := mixed_readout_modulus_bound weight test defect H 1 eta
    weightsNonnegative (by norm_num) etaNonnegative unitBound defectBound
  have right := mixed_readout_modulus_bound weight defect test H eta 1
    weightsNonnegative etaNonnegative (by norm_num) defectBound unitBound
  have square : ‖complexReadout defect H‖ ≤
      (eta * eta) * modulusMass (pairWeight weight) H :=
    mixed_readout_modulus_bound weight defect defect H eta eta
      weightsNonnegative etaNonnegative etaNonnegative defectBound defectBound
  calc
    _ ≤ ‖mixedReadout test defect H + mixedReadout defect test H‖ +
        ‖complexReadout defect H‖ := norm_add_le _ _
    _ ≤ (‖mixedReadout test defect H‖ + ‖mixedReadout defect test H‖) +
        ‖complexReadout defect H‖ := add_le_add_left (norm_add_le _ _) _
    _ ≤ ((1 * eta) * modulusMass (pairWeight weight) H +
        (eta * 1) * modulusMass (pairWeight weight) H) +
        (eta * eta) * modulusMass (pairWeight weight) H := add_le_add (add_le_add left right) square
    _ = _ := by ring

/-- A separately certified residual bound turns pullback accuracy into a one-sided correction cost. -/
theorem correction_real_lower (weight : ι → ℝ) (test defect : ι → ℂ)
    (H : ι × ι → ℂ) (eta residualBound : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (etaNonnegative : 0 ≤ eta)
    (testBound : ∀ i, ‖test i‖ ≤ weight i)
    (defectBound : ∀ i, ‖defect i‖ ≤ eta * weight i)
    (massBound : modulusMass (pairWeight weight) H ≤ residualBound) :
    -((2 * eta + eta * eta) * residualBound) ≤ (readoutCorrection test defect H).re := by
  have factorNonnegative : 0 ≤ 2 * eta + eta * eta :=
    add_nonneg (mul_nonneg (by norm_num) etaNonnegative) (mul_nonneg etaNonnegative etaNonnegative)
  have bound := (Complex.abs_re_le_norm (readoutCorrection test defect H)).trans
    ((readoutCorrection_modulus_bound weight test defect H eta weightsNonnegative
      etaNonnegative testBound defectBound).trans
      (mul_le_mul_of_nonneg_left massBound factorNonnegative))
  exact (abs_le.mp bound).1

/-- One exact residual step with an arbitrary approximate previous test and its canonical defect. -/
theorem inexact_readout_residual_step (A : τ → ι → ℂ)
    (nextTest : τ → ℂ) (approximate : ι → ℂ)
    (residual : ι × ι → ℂ) (nextResidual forcing : τ × τ → ℂ)
    (evolution : ∀ p, nextResidual p = complexTransport A residual p + forcing p) :
    complexReadout nextTest nextResidual = complexReadout approximate residual +
      (complexReadout nextTest forcing +
        readoutCorrection approximate (pullbackDefect A nextTest approximate) residual) := by
  have expansion := readout_add_vector approximate (pullbackDefect A nextTest approximate) residual
  rw [test_add_pullbackDefect] at expansion
  rw [readout_residual_step A nextTest residual nextResidual forcing evolution, expansion]
  ring

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- This correction is determined by the actual transition, tests and complete residual. -/
def windowCorrection (gain : ∀ n, I (n + 1) → I n → ℂ)
    (residual : ∀ n, I n × I n → ℂ) (test : ∀ n, I n → ℂ) (j : ℕ) : ℂ :=
  readoutCorrection (test j) (pullbackDefect (gain j) (test (j + 1)) (test j)) (residual j)

/-- Arbitrary intermediate tests are safe only because their exact corrections remain in the sum. -/
theorem inexact_adjoint_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ) (residual : ∀ n, I n × I n → ℂ)
    (forcing : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ) : ∀ k : ℕ,
    (∀ j, j < k → ∀ p, residual (j + 1) p =
      complexTransport (gain j) (residual j) p + forcing j p) →
    complexReadout (test k) (residual k) = complexReadout (test 0) (residual 0) +
      ∑ j ∈ Finset.range k,
        (complexReadout (test (j + 1)) (forcing j) + windowCorrection gain residual test j) := by
  intro k
  induction k with
  | zero => intro _; simp
  | succ k ih =>
      intro evolution
      have previous := ih (fun j hj => evolution j (Nat.lt_succ_of_lt hj))
      have terminal := inexact_readout_residual_step (gain k) (test (k + 1)) (test k)
        (residual k) (residual (k + 1)) (forcing k) (evolution k (Nat.lt_succ_self k))
      change complexReadout (test (k + 1)) (residual (k + 1)) =
        complexReadout (test k) (residual k) +
          (complexReadout (test (k + 1)) (forcing k) + windowCorrection gain residual test k) at terminal
      rw [terminal, previous, Finset.sum_range_succ]
      ring

/-- Exact source-minus-Gram identity with separately retained arithmetic mismatch and adjoint error. -/
theorem gram_inexact_window_identity
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ)
    (test : ∀ n, I n → ℂ) (k : ℕ) (actual tail : ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail) :
    actual - (complexReadout (test k) (complexGram (feature k))).re =
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re +
        (∑ j ∈ Finset.range k,
          ((complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re +
            (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)) +
        tail := by
  have evolution (j : ℕ) (hj : j < k) :
      ∀ p, source (j + 1) p - complexGram (feature (j + 1)) p =
        complexTransport (gain j) (fun q => source j q - complexGram (feature j) q) p +
          complexMismatch gain source injection j p :=
    complex_residual_evolution (gain j) (source j) (complexGram (feature j))
      (source (j + 1)) (complexGram (feature (j + 1))) (injection j) (modelUpdate j hj)
  have identity := inexact_adjoint_window_identity gain
    (fun n p => source n p - complexGram (feature n) p)
    (complexMismatch gain source injection) test k evolution
  have realIdentity := congrArg Complex.re identity
  simp only [readout_sub, Complex.sub_re, Complex.add_re, Complex.re_sum] at realIdentity
  rw [sourceReadout, readout_sub, Complex.sub_re]
  linarith

/-- Source-bound terminal consumer. The correction cost is independent of the arithmetic mismatch
lower bound and cannot be discarded merely because the chosen pullbacks look close. -/
theorem no_fixed_negative_of_inexact_gram_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ)
    (k : ℕ) (actual strength tail initialLower tailLower : ℝ)
    (forcingLower correctionCost : ℕ → ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (sourceReadout : actual = (complexReadout (test k) (source k)).re + tail)
    (initialEstimate : initialLower ≤
      (complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    (forcingEstimate : ∀ j, j < k → forcingLower j ≤
      (complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (tailEstimate : tailLower ≤ tail) (negative : actual ≤ -strength)
    (margin : -strength < initialLower +
      (∑ j ∈ Finset.range k, (forcingLower j - correctionCost j)) + tailLower) : False := by
  apply no_fixed_negative_of_signed_window (test k) (feature k) actual strength
    ((complexReadout (test 0) (fun p => source 0 p - complexGram (feature 0) p)).re)
    tail initialLower tailLower
    (fun j => (complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re +
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (fun j => forcingLower j - correctionCost j) k
  · exact gram_inexact_window_identity gain source feature injection test k actual tail
      modelUpdate sourceReadout
  · exact initialEstimate
  · intro j hj
    have h := add_le_add (forcingEstimate j hj) (correctionEstimate j hj)
    simpa only [sub_eq_add_neg] using h
  · exact tailEstimate
  · exact negative
  · exact margin

end Window

/-- Omitting the second-order term undercharges even a one-coordinate negative residual. -/
theorem quadratic_correction_required_fixture :
    readoutCorrection (fun _ : Unit => (1 : ℂ)) (fun _ : Unit => (1 / 2 : ℂ))
      (fun _ : Unit × Unit => (-1 : ℂ)) = -5 / 4 ∧
    mixedReadout (fun _ : Unit => (1 : ℂ)) (fun _ : Unit => (1 / 2 : ℂ))
      (fun _ : Unit × Unit => (-1 : ℂ)) +
    mixedReadout (fun _ : Unit => (1 / 2 : ℂ)) (fun _ : Unit => (1 : ℂ))
      (fun _ : Unit × Unit => (-1 : ℂ)) = -1 := by
  norm_num [readoutCorrection, mixedReadout, complexReadout, map_ofNat]

/-- A coordinate defect of 1/100 can have correction 201 when the residual entry is 10000. -/
theorem small_defect_large_residual_fixture :
    readoutCorrection (fun _ : Unit => (1 : ℂ)) (fun _ : Unit => (1 / 100 : ℂ))
      (fun _ : Unit × Unit => (10000 : ℂ)) = 201 := by
  norm_num [readoutCorrection, mixedReadout, complexReadout, map_ofNat]

/-- Erasing an approximate pullback does not erase its negative contribution after correction. -/
theorem erased_pullback_charged_fixture :
    readoutCorrection (fun _ : Unit => (0 : ℂ))
      (pullbackDefect (fun (_ : Unit) (_ : Unit) => (1 : ℂ))
        (fun _ : Unit => (1 : ℂ)) (fun _ : Unit => (0 : ℂ)))
      (fun _ : Unit × Unit => (-1 : ℂ)) = -1 := by
  norm_num [readoutCorrection, mixedReadout, complexReadout, pullbackDefect, adjointTest]

/-- A correction cost can consume an apparent signed margin; equality is not acceptance. -/
theorem correction_consumes_margin_fixture :
    (-1 : ℝ) < -3 / 4 ∧ ¬ ((-1 : ℝ) < -3 / 4 - 1 / 4) := by
  norm_num

end

end GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow
```
