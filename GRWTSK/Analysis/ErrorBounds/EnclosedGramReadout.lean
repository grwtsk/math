/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow

set_option autoImplicit false

open scoped BigOperators ComplexConjugate

/-!
# Enclosing signed readouts with uncertain vectors and matrix entries

Complete entrywise modulus enclosures give a finite readout enclosure. If c and C
are vector and matrix centers, |c_i| <= w_i, |z_i-c_i| <= eta*w_i,
|C_ij| <= m_ij and |H_ij-C_ij| <= d_ij, put P=sum w_i*w_j*m_ij and
Q=sum w_i*w_j*d_ij. Then the full complex readout error is at most
(2*eta+eta^2)*P + (1+eta)^2*Q. The second term retains interactions between
vector uncertainty and matrix uncertainty. No weight is divided out.

The center evaluation may itself have a separately bounded scalar error.
These are enclosure SOUNDNESS implications: the supplied disks must enclose
the actual objects. A floating-point sample is not such a proof. The centers
need not be Hermitian or positive; the terminal model is the existing Gram.

The signed-window adapter additionally charges a canonical terminal source
defect and each scalar evaluation error, separately from the inexact-adjoint
correction. It preserves the same actual target, source/model paths and tests.
Missing source identities cannot be replaced by an asserted zero defect bound.
No arithmetic enclosures, numerical algorithm, actual Weil certificate, or
choice-free dependency-closure audit are constructed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No execution or merge authority.
-/

namespace GRWTSK.Analysis.ErrorBounds.EnclosedGramReadout

open GRWTSK.Analysis.ErrorBounds.QuadraticGramResidual
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification
open GRWTSK.Analysis.ErrorBounds.ComplexModulusGramResidual
open GRWTSK.Analysis.ErrorBounds.AdjointGramWitnessWindow
open GRWTSK.Analysis.ErrorBounds.InexactAdjointGramWindow

noncomputable section

variable {ι : Type*} [ιFinite : Fintype ι]

/-- The finite weighted sum of supplied entrywise upper bounds. -/
def entryMajorant (weight : ι → ℝ) (bound : ι × ι → ℝ) : ℝ :=
  ∑ p, pairWeight weight p * bound p

/-- Every entry is retained, including both imaginary and off-diagonal information. -/
theorem modulusMass_le_entryMajorant (weight : ι → ℝ)
    (H : ι × ι → ℂ) (bound : ι × ι → ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (entryBound : ∀ p, ‖H p‖ ≤ bound p) :
    modulusMass (pairWeight weight) H ≤ entryMajorant weight bound := by
  exact Finset.sum_le_sum fun p _ => mul_le_mul_of_nonneg_left (entryBound p)
    (mul_nonneg (weightsNonnegative p.1) (weightsNonnegative p.2))

omit ιFinite in
/-- The true vector, not merely its center, is bounded when measuring matrix uncertainty. -/
theorem enclosed_test_bound [Fintype ι] (weight : ι → ℝ) (test center : ι → ℂ) (eta : ℝ)
    (centerBound : ∀ i, ‖center i‖ ≤ weight i)
    (vectorError : ∀ i, ‖test i - center i‖ ≤ eta * weight i) (i : ι) :
    ‖test i‖ ≤ (1 + eta) * weight i := by
  calc
    _ = ‖center i + (test i - center i)‖ := by congr 1; ring
    _ ≤ ‖center i‖ + ‖test i - center i‖ := norm_add_le _ _
    _ ≤ weight i + eta * weight i := add_le_add (centerBound i) (vectorError i)
    _ = _ := by ring

/-- Vector error acts on the center matrix; matrix error acts on the FULL true vector. -/
theorem readout_uncertainty_identity (test center : ι → ℂ)
    (H matrixCenter : ι × ι → ℂ) :
    complexReadout test H - complexReadout center matrixCenter =
      readoutCorrection center (fun i => test i - center i) matrixCenter +
        complexReadout test (fun p => H p - matrixCenter p) := by
  have vectorIdentity : (fun i => center i + (test i - center i)) = test := by
    funext i
    ring
  have expansion := readout_add_vector center (fun i => test i - center i) matrixCenter
  rw [vectorIdentity] at expansion
  rw [readout_sub, expansion]
  ring

/-- Complete finite error, without square roots, a same-rate norm substitution or omitted products. -/
def enclosureError (eta centerMass matrixErrorMass : ℝ) : ℝ :=
  (2 * eta + eta * eta) * centerMass + ((1 + eta) * (1 + eta)) * matrixErrorMass

/-- Supplied vector and entrywise complex disks imply the stated full readout enclosure. -/
theorem readout_enclosure_bound (weight : ι → ℝ) (test center : ι → ℂ)
    (H matrixCenter : ι × ι → ℂ) (centerEntryBound entryRadius : ι × ι → ℝ) (eta : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i) (etaNonnegative : 0 ≤ eta)
    (centerBound : ∀ i, ‖center i‖ ≤ weight i)
    (vectorError : ∀ i, ‖test i - center i‖ ≤ eta * weight i)
    (centerEntries : ∀ p, ‖matrixCenter p‖ ≤ centerEntryBound p)
    (matrixEntries : ∀ p, ‖H p - matrixCenter p‖ ≤ entryRadius p) :
    ‖complexReadout test H - complexReadout center matrixCenter‖ ≤
      enclosureError eta (entryMajorant weight centerEntryBound) (entryMajorant weight entryRadius) := by
  have centerMass := modulusMass_le_entryMajorant weight matrixCenter centerEntryBound
    weightsNonnegative centerEntries
  have matrixMass := modulusMass_le_entryMajorant weight (fun p => H p - matrixCenter p)
    entryRadius weightsNonnegative matrixEntries
  have correctionNonnegative : 0 ≤ 2 * eta + eta * eta :=
    add_nonneg (mul_nonneg (by norm_num) etaNonnegative) (mul_nonneg etaNonnegative etaNonnegative)
  have scaleNonnegative : 0 ≤ 1 + eta := by linarith
  have correction := (readoutCorrection_modulus_bound weight center
    (fun i => test i - center i) matrixCenter eta weightsNonnegative etaNonnegative
    centerBound vectorError).trans (mul_le_mul_of_nonneg_left centerMass correctionNonnegative)
  have matrixTerm : ‖complexReadout test (fun p => H p - matrixCenter p)‖ ≤
      ((1 + eta) * (1 + eta)) * modulusMass (pairWeight weight)
        (fun p => H p - matrixCenter p) :=
    mixed_readout_modulus_bound weight test test (fun p => H p - matrixCenter p)
      (1 + eta) (1 + eta) weightsNonnegative scaleNonnegative scaleNonnegative
      (enclosed_test_bound weight test center eta centerBound vectorError)
      (enclosed_test_bound weight test center eta centerBound vectorError)
  have matrixBound := matrixTerm.trans (mul_le_mul_of_nonneg_left matrixMass
    (mul_nonneg scaleNonnegative scaleNonnegative))
  rw [readout_uncertainty_identity]
  exact (norm_add_le _ _).trans (add_le_add correction matrixBound)

/-- Numerical evaluation of the center gets its OWN error; it is not treated as exact. -/
theorem evaluated_readout_interval (value center : ℂ) (evaluation radius evaluationError : ℝ)
    (enclosure : ‖value - center‖ ≤ radius)
    (evaluationBound : |center.re - evaluation| ≤ evaluationError) :
    evaluation - (radius + evaluationError) ≤ value.re ∧
      value.re ≤ evaluation + (radius + evaluationError) := by
  have h := (Complex.abs_re_le_norm (value - center)).trans enclosure
  simp only [Complex.sub_re] at h
  have h1 := (abs_le.mp h).1
  have h2 := (abs_le.mp h).2
  have h3 := (abs_le.mp evaluationBound).1
  have h4 := (abs_le.mp evaluationBound).2
  constructor <;> linarith

/-- The remaining source/readout error is defined from the actual target, never invented independently. -/
def terminalSourceDefect (actual observed tailCenter : ℝ) : ℝ :=
  actual - observed - tailCenter

theorem terminalSourceDefect_identity (actual observed tailCenter : ℝ) :
    actual = observed + (tailCenter + terminalSourceDefect actual observed tailCenter) := by
  unfold terminalSourceDefect
  ring

section Window

variable {I K : ℕ → Type*} [∀ n, Fintype (I n)] [∀ n, Fintype (K n)]

/-- Scalar enclosures supply the signed-window premises while the terminal source defect stays charged.
The enclosure estimates refer to the ACTUAL initial/mismatch observations on these same objects.
A window starting later is obtained by reindexing; no prefix is reset to zero. -/
theorem no_fixed_negative_of_enclosed_window
    (gain : ∀ n, I (n + 1) → I n → ℂ)
    (source : ∀ n, I n × I n → ℂ) (feature : ∀ n, K n → I n → ℂ)
    (injection : ∀ n, I (n + 1) × I (n + 1) → ℂ) (test : ∀ n, I n → ℂ)
    (k : ℕ) (actual strength tailCenter sourceError initialEvaluation initialError : ℝ)
    (forcingEvaluation forcingError correctionCost : ℕ → ℝ)
    (modelUpdate : ∀ j, j < k → ∀ p, complexGram (feature (j + 1)) p =
      complexTransport (gain j) (complexGram (feature j)) p + injection j p)
    (initialEnclosure : |(complexReadout (test 0)
      (fun p => source 0 p - complexGram (feature 0) p)).re - initialEvaluation| ≤ initialError)
    (forcingEnclosure : ∀ j, j < k →
      |(complexReadout (test (j + 1)) (complexMismatch gain source injection j)).re -
        forcingEvaluation j| ≤ forcingError j)
    (correctionEstimate : ∀ j, j < k → -(correctionCost j) ≤
      (windowCorrection gain (fun n p => source n p - complexGram (feature n) p) test j).re)
    (sourceEnclosure : |terminalSourceDefect actual
      (complexReadout (test k) (source k)).re tailCenter| ≤ sourceError)
    (negative : actual ≤ -strength)
    (margin : -strength < initialEvaluation - initialError +
      (∑ j ∈ Finset.range k, (forcingEvaluation j - forcingError j - correctionCost j)) +
        (tailCenter - sourceError)) : False := by
  apply no_fixed_negative_of_inexact_gram_window gain source feature injection test k actual strength
    (tailCenter + terminalSourceDefect actual (complexReadout (test k) (source k)).re tailCenter)
    (initialEvaluation - initialError) (tailCenter - sourceError)
    (fun j => forcingEvaluation j - forcingError j) correctionCost
  · exact modelUpdate
  · exact terminalSourceDefect_identity actual (complexReadout (test k) (source k)).re tailCenter
  · have h := (abs_le.mp initialEnclosure).1
    linarith
  · intro j hj
    have h := (abs_le.mp (forcingEnclosure j hj)).1
    linarith
  · exact correctionEstimate
  · have h := (abs_le.mp sourceEnclosure).1
    linarith
  · exact negative
  · exact margin

end Window

/-- Matrix uncertainty must be evaluated on the perturbed vector, not only on its center. -/
theorem joint_uncertainty_fixture :
    (complexReadout (fun _ : Unit => (2 : ℂ)) (fun _ : Unit × Unit => (1 : ℂ)) -
      complexReadout (fun _ : Unit => (1 : ℂ)) (fun _ : Unit × Unit => (0 : ℂ))).re = 4 ∧
    enclosureError 1 0 1 = 4 ∧ (1 : ℝ) < 4 := by
  norm_num [complexReadout, enclosureError, map_ofNat]

/-- This scalar example attains the joint bound, including its vector/matrix interaction. -/
theorem sharp_scalar_enclosure_fixture :
    (complexReadout (fun _ : Unit => (3 / 2 : ℂ)) (fun _ : Unit × Unit => (9 / 4 : ℂ)) -
      complexReadout (fun _ : Unit => (1 : ℂ)) (fun _ : Unit × Unit => (2 : ℂ))).re = 49 / 16 ∧
    enclosureError (1 / 2) 2 (1 / 4) = 49 / 16 := by
  norm_num [complexReadout, enclosureError, map_ofNat]

/-- Exact vector and matrix centers produce zero enclosure cost. -/
theorem exact_center_fixture (centerMass : ℝ) : enclosureError 0 centerMass 0 = 0 := by
  simp [enclosureError]

/-- A center estimate and a source estimate both consume a signed margin. -/
theorem enclosure_costs_consume_margin_fixture :
    (-1 : ℝ) < -3 / 4 ∧ ¬ ((-1 : ℝ) < -3 / 4 - 1 / 8 - 1 / 8) := by
  norm_num

/-- A zero finite source with a zero proposed tail still has defect -1 at target -1. -/
theorem missing_source_not_zero_fixture :
    terminalSourceDefect (-1) 0 0 = -1 ∧ |terminalSourceDefect (-1) 0 0| = 1 := by
  norm_num [terminalSourceDefect]

end

end GRWTSK.Analysis.ErrorBounds.EnclosedGramReadout
