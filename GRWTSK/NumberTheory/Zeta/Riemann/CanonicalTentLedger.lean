/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
import GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource
import Mathlib.Tactic

set_option autoImplicit false

open Filter
open scoped BigOperators Topology

/-!
# Canonical square-tent explicit formula as a signed source ledger

The selected normalization is the existing absolutely summed square-tent
formula. Its arithmetic term, pole/main term, complete nontrivial-zero
divisor, and actual trivial-zero correction are assembled as a signed
zero-sum ledger.

A separate Archimedean integral is not added in this normalization: the
negative-even/trivial-zero contribution is retained through the existing
rational correction and its proved actual trivial-zero series. The complete
divisor uses a genuine tsum. Finite heads retain the canonical tail budget.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger

open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
open GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula
open GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Real.TentRationalCorrection
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt

/-- How a channel is represented in this exact normalization. This metadata
does not itself assert a numerical identity. -/
inductive ChannelAccounting
  | separateTerm
  | absorbedIntoTrivialZeroSeries
  | vanishingTentEndpoint
  | completeInfiniteDivisor
deriving DecidableEq, Repr

/-- Seven named signed channels with one exact zero-sum identity. The signs
belong to the channel values; this avoids pretending an explicit formula is
a sum of positive quantities. -/
structure SignedExplicitFormulaLedger where
  primePower : ℂ
  archimedean : ℂ
  pole : ℂ
  trivialZero : ℂ
  nontrivialZero : ℂ
  endpoint : ℂ
  tail : ℂ
  balance :
    primePower + archimedean + pole + trivialZero +
      nontrivialZero + endpoint + tail = 0

/-- Complete nontrivial-zero term in the canonical square-tent normalization. -/
noncomputable def fullZeroTerm (n : ℕ) : ℂ :=
  -(∑' z : ZeroPoint, (multiplicity z : ℂ) *
    tentKernel (squareCenter n) (squareRadius n) z.1)

/-- The exact signed ledger induced by the existing canonical square-tent
explicit formula. -/
noncomputable def canonicalLedger (n : ℕ) (hn : 2 ≤ n) :
    SignedExplicitFormulaLedger where
  primePower := -(squareTentMangoldt n : ℂ)
  archimedean := 0
  pole := (squareRadius n : ℂ)
  trivialZero :=
    (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)
  nontrivialZero := fullZeroTerm n
  endpoint := 0
  tail := 0
  balance := by
    unfold fullZeroTerm
    rw [canonical_square_source_eq_tsum n hn]
    ring

def canonicalArchimedeanAccounting : ChannelAccounting :=
  .absorbedIntoTrivialZeroSeries

def canonicalEndpointAccounting : ChannelAccounting :=
  .vanishingTentEndpoint

def canonicalTailAccounting : ChannelAccounting :=
  .completeInfiniteDivisor

@[simp]
theorem canonicalLedger_primePower (n : ℕ) (hn : 2 ≤ n) :
    (canonicalLedger n hn).primePower = -(squareTentMangoldt n : ℂ) :=
  rfl

@[simp]
theorem canonicalLedger_pole (n : ℕ) (hn : 2 ≤ n) :
    (canonicalLedger n hn).pole = (squareRadius n : ℂ) :=
  rfl

@[simp]
theorem canonicalLedger_nontrivialZero (n : ℕ) (hn : 2 ≤ n) :
    (canonicalLedger n hn).nontrivialZero = fullZeroTerm n :=
  rfl

/-- The scalar called the trivial-zero channel is not arbitrary: it is the
complete actual negative-even coefficient series. -/
theorem canonicalLedger_trivialZero_eq_actual_series
    (n : ℕ) (hn : 2 ≤ n) :
    (canonicalLedger n hn).trivialZero =
      ∑' k : ℕ, -tentKernel (squareCenter n) (squareRadius n)
        (trivialPoint k) := by
  change
    (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ) =
      ∑' k : ℕ, -tentKernel (squareCenter n) (squareRadius n)
        (trivialPoint k)
  symm
  exact tsum_trivial_tent_coefficients
    (squareCenter n) (squareRadius n)
    (squareRadius_pos n) (square_tent_domain n hn)

/-- The square-tent source has zero weight at both arithmetic interval
endpoints. This supports the no-separate-endpoint convention used by the
canonical theorem. -/
theorem canonical_endpoint_weight_guard (n : ℕ) :
    squareWeight n (n ^ 2) = 0 ∧
      squareWeight n ((n + 1) ^ 2) = 0 :=
  squareWeight_endpoints n

/-- Finite-height replacement of the complete nontrivial-zero channel. -/
noncomputable def finiteHeadBalance (n : ℕ) (T : ℝ) : ℂ :=
  -(squareTentMangoldt n : ℂ) +
    (squareRadius n : ℂ) -
      (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
    (rationalTentCorrection (squareCenter n) (squareRadius n) : ℂ)

/-- The existing canonical divisor-tail theorem is exactly a residual bound
for the finite signed ledger. -/
theorem norm_finiteHeadBalance_le
    (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T) :
    ‖finiteHeadBalance n T‖ ≤
      canonicalTailBudget (squareCenter n) (squareRadius n) T := by
  have h := norm_square_source_sub_finite_le n hn T hT
  calc
    ‖finiteHeadBalance n T‖ =
        ‖-((squareTentMangoldt n : ℂ) -
          ((squareRadius n : ℂ) -
            (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
              tentKernel (squareCenter n) (squareRadius n) z.1) +
            (rationalTentCorrection
              (squareCenter n) (squareRadius n) : ℂ)))‖ := by
          congr 1
          unfold finiteHeadBalance
          ring
    _ = ‖(squareTentMangoldt n : ℂ) -
          ((squareRadius n : ℂ) -
            (∑ z ∈ heightHead T, (multiplicity z : ℂ) *
              tentKernel (squareCenter n) (squareRadius n) z.1) +
            (rationalTentCorrection
              (squareCenter n) (squareRadius n) : ℂ))‖ := norm_neg _
    _ ≤ _ := h

/-- The finite-head residual budget tends to zero at every fixed square
stage. -/
theorem canonical_tail_budget_tendsto_zero (n : ℕ) :
    Tendsto
      (canonicalTailBudget (squareCenter n) (squareRadius n))
      atTop (𝓝 0) :=
  CanonicalTentAbsolute.canonicalTailBudget_tendsto_zero
    (squareCenter n) (squareRadius n)

/-- Reversing the prime-power sign does not give the selected balance: its
defect is exactly twice the arithmetic source. No nonzero claim is needed. -/
theorem wrong_prime_sign_defect (n : ℕ) (hn : 2 ≤ n) :
    (squareTentMangoldt n : ℂ) +
      (canonicalLedger n hn).archimedean +
      (canonicalLedger n hn).pole +
      (canonicalLedger n hn).trivialZero +
      (canonicalLedger n hn).nontrivialZero +
      (canonicalLedger n hn).endpoint +
      (canonicalLedger n hn).tail =
        2 * (squareTentMangoldt n : ℂ) := by
  have h := (canonicalLedger n hn).balance
  calc
    _ =
        ((canonicalLedger n hn).primePower +
          (canonicalLedger n hn).archimedean +
          (canonicalLedger n hn).pole +
          (canonicalLedger n hn).trivialZero +
          (canonicalLedger n hn).nontrivialZero +
          (canonicalLedger n hn).endpoint +
          (canonicalLedger n hn).tail) +
          2 * (squareTentMangoldt n : ℂ) := by
            simp only [canonicalLedger_primePower]
            ring
    _ = 0 + 2 * (squareTentMangoldt n : ℂ) := by rw [h]
    _ = _ := by ring

/-- The exact next adapter: a finite source-faithful atom stage whose linear
readout is the canonical square-tent arithmetic observable. This record does
not construct such a stage. -/
structure AtomStageAlignment (n : ℕ) where
  stage : PrimePowerWitnessStage
  test : ℝ → ℝ
  readout_eq :
    stageReadout stage test = squareTentMangoldt n

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
