/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RuleSoundness
import GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-!
# Exact-target certificate coverage at arbitrary accuracy

Mathematical consumer: OCERT-1, Theorem P and the soundness direction of
Theorem N, at research revision e19563adbaf29d08c6b2e17761f78b96adb9e247.
Reuse the canonical `CertificateChecker` and `CheckedByteInterface`; no second
acceptance model, trusted parser, or executable arithmetic evaluator is introduced.

Each judgment contains both its test code and its accuracy or upper endpoint.
All acceptance proofs refer to the same snapshot as their interpreted conclusion.
Coverage is an explicit universal premise, not an inference from soundness.
The byte theorem retains the existing `execution_spec` obligation through the
supplied interface and additionally requires exact requested-target binding.

Source candidate only. Elaboration, kernel replay, axiom audit, concrete runtime
refinement and independent review: NOT_RUN. Coordination: math#1807.
-/

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference

open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

namespace ApproximateCertificates

universe u v w

variable {Snapshot : Type u} {Certificate : Type v} {Code : Type w}

/-- The exact lower-bound judgment, with its test and accuracy explicit. -/
def lowerBoundMeaning (value : Snapshot → Code → ℝ) (error : ℕ → ℝ)
    (snapshot : Snapshot) (judgment : Code × ℕ) : Prop :=
  -error judgment.2 ≤ value snapshot judgment.1

/-- Universal accepted lower bounds plus small errors establish the encoded
values' nonnegativity. The checker supplies soundness, not coverage. -/
theorem nonneg_of_complete_coverage (value : Snapshot → Code → ℝ)
    (error : ℕ → ℝ)
    (checker : CertificateChecker Snapshot Certificate (Code × ℕ)
      (lowerBoundMeaning value error))
    (snapshot : Snapshot)
    (small : ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, error k < δ)
    (covered : ∀ d : Code, ∀ k : ℕ, ∃ c : Certificate,
      checker.Accepts snapshot c (d, k)) :
    ∀ d : Code, 0 ≤ value snapshot d := by
  intro d
  apply nonneg_of_small_error_lower_bounds error small
  intro k
  obtain ⟨c, hc⟩ := covered d k
  exact checker.meaning_of_accepts snapshot c (d, k) hc

/-- The OCERT-1 dyadic accuracy specialization. -/
theorem nonneg_of_dyadic_coverage (value : Snapshot → Code → ℝ)
    (checker : CertificateChecker Snapshot Certificate (Code × ℕ)
      (lowerBoundMeaning value (fun k => (1 / 2 : ℝ) ^ k)))
    (snapshot : Snapshot)
    (covered : ∀ d : Code, ∀ k : ℕ, ∃ c : Certificate,
      checker.Accepts snapshot c (d, k)) :
    ∀ d : Code, 0 ≤ value snapshot d :=
  nonneg_of_complete_coverage value (fun k => (1 / 2 : ℝ) ^ k)
    checker snapshot dyadic_errors_arbitrarily_small covered

/-- Transfer accepted approximate lower bounds to the whole specified test
space. For supported tests, instantiate this separately on each support window. -/
theorem dense_nonneg_of_complete_coverage {X : Type*} [TopologicalSpace X]
    (q : Snapshot → X → ℝ) (encode : Code → X) (error : ℕ → ℝ)
    (checker : CertificateChecker Snapshot Certificate (Code × ℕ)
      (lowerBoundMeaning (fun s d => q s (encode d)) error))
    (snapshot : Snapshot) (dense : DenseRange encode)
    (continuous : Continuous (q snapshot))
    (small : ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, error k < δ)
    (covered : ∀ d : Code, ∀ k : ℕ, ∃ c : Certificate,
      checker.Accepts snapshot c (d, k)) :
    ∀ x : X, 0 ≤ q snapshot x := by
  apply nonneg_of_dense_range (q snapshot) encode dense continuous
  exact nonneg_of_complete_coverage (fun s d => q s (encode d)) error
    checker snapshot small covered

/-- Runtime acceptance implies encoded nonnegativity only with the supplied
byte refinement and exact binding to every requested test/accuracy pair. -/
theorem nonneg_of_complete_byte_coverage {ParserError : Type*}
    (value : Snapshot → Code → ℝ) (error : ℕ → ℝ)
    (interface : CheckedByteInterface Snapshot Certificate (Code × ℕ) ParserError
      (lowerBoundMeaning value error))
    (snapshot : Snapshot)
    (small : ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, error k < δ)
    (covered : ∀ d : Code, ∀ k : ℕ, ∃ input : ByteArray,
      interface.execute snapshot input = .accept ∧
      ∀ c : Certificate, interface.parse input = .ok c →
        interface.formalChecker.conclusion c = (d, k)) :
    ∀ d : Code, 0 ≤ value snapshot d := by
  intro d
  apply nonneg_of_small_error_lower_bounds error small
  intro k
  obtain ⟨input, accepted, bound⟩ := covered d k
  exact interface.accepted_meaning_at_requested snapshot input (d, k) accepted bound

/-- A negative encoded value obstructs complete positive coverage for a
sound checker. Rejection or unknown alone gives no such negative value. -/
theorem no_complete_coverage_of_negative (value : Snapshot → Code → ℝ)
    (error : ℕ → ℝ)
    (checker : CertificateChecker Snapshot Certificate (Code × ℕ)
      (lowerBoundMeaning value error))
    (snapshot : Snapshot)
    (small : ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, error k < δ)
    (d : Code) (negative : value snapshot d < 0) :
    ¬ (∀ e : Code, ∀ k : ℕ, ∃ c : Certificate,
      checker.Accepts snapshot c (e, k)) := by
  intro covered
  exact (not_le_of_gt negative)
    (nonneg_of_complete_coverage value error checker snapshot small covered d)

/-- An exact upper-bound judgment includes its numerical endpoint. -/
def upperBoundMeaning (value : Snapshot → Code → ℝ)
    (snapshot : Snapshot) (judgment : Code × ℝ) : Prop :=
  value snapshot judgment.1 ≤ judgment.2

/-- A sound accepted upper bound with a strictly negative endpoint supplies
a genuinely negative value of the exact interpreted source. -/
theorem negative_of_accepted_upper (value : Snapshot → Code → ℝ)
    (checker : CertificateChecker Snapshot Certificate (Code × ℝ)
      (upperBoundMeaning value))
    (snapshot : Snapshot) (d : Code) (upper : ℝ) (c : Certificate)
    (accepted : checker.Accepts snapshot c (d, upper)) (negative : upper < 0) :
    value snapshot d < 0 :=
  lt_of_le_of_lt (checker.meaning_of_accepts snapshot c (d, upper) accepted) negative

end ApproximateCertificates

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
