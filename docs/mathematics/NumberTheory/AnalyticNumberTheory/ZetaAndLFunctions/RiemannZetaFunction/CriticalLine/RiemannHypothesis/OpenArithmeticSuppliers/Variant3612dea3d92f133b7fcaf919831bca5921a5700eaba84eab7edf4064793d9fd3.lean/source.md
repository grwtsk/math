# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.OpenArithmeticSuppliers.Variant3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c880e4fea49007f7950ac49925803dbf4219986b` · SHA-256 `3612dea3d92f133b7fcaf919831bca5921a5700eaba84eab7edf4064793d9fd3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction
import FormalResearch.RiemannHypothesis.Conversation.ArithmeticPrimitive
import FormalResearch.RiemannHypothesis.Conversation.ZeroStripConsumer
import FormalResearch.RiemannHypothesis.Conversation.CausalRecords

/-!
# Exact open arithmetic suppliers from the conversation

These are propositions, not axioms or admitted proofs. They retain the actual
von Mangoldt, ordinary-prime and Möbius objects. The checked finite identities
and conditional consumers elsewhere in this family do not establish any of
these suppliers. Existing issues #297, #455 and #140 retain research ownership.

Human direction and supplier selection: grwtsk contributors.
Lean statement implementation: OpenAI Codex, 2026-10-08/09.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.OpenArithmeticSuppliers

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePrimeSmoothDefect EstimateMobiusSplit EstimateMertensAbel EstimateSourceMobiusKernel
open PolynomialMertensReduction ArithmeticPrimitive
open scoped BigOperators

noncomputable section

/-- Problem P on the unchanged closed prime moment. No instance is supplied. -/
def ProblemP : Prop := EventuallyPolynomialUpper closedPrimeMoment

/-- The equivalent signed Mertens-core supplier, whose equivalence has been checked. -/
def SignedMertensSupplier : Prop := EventuallyPolynomialUpper actualMertensIntegral

theorem problemP_iff_signedMertensSupplier : ProblemP ↔ SignedMertensSupplier :=
  source_polynomial_upper_iff_mertens

def ordinaryPrimeCoefficient (n : ℕ) : ℝ :=
  (if n.Prime then Real.log n else 0) - (if 2 ≤ n then 1 else 0)

theorem ordinaryPrimeCoefficient_one : ordinaryPrimeCoefficient 1 = 0 := by
  norm_num [ordinaryPrimeCoefficient]

theorem ordinaryPrimeCoefficient_at_source_index {n : ℕ} (hn : 2 ≤ n) :
    ordinaryPrimeCoefficient n = (if n.Prime then Real.log n else 0) - 1 := by
  simp only [ordinaryPrimeCoefficient, hn, ite_true]

def ordinaryPrimePrimitive (x : ℝ) : ℝ := closedPrimitive ordinaryPrimeCoefficient x

def primePositiveDebt (N K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K,
    max (cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) 0 *
      cellClock (N + j) (N + j + 1 : ℕ)

/-- The stated reserve and all future horizons are retained, not a finite sampled grid. -/
def AccordionReserveSupplier : Prop :=
  ∃ N : ℕ, 2 ≤ N ∧ ordinaryPrimePrimitive N ≤ -(549 / 350) ∧
    ∀ K : ℕ, primePositiveDebt N K ≤ 549 / 350

/-- The weaker signed all-real target must still be proved for the actual prime source. -/
def OrdinaryPrimeEventualSignSupplier : Prop :=
  ∃ R : ℝ, 2 ≤ R ∧ ∀ x : ℝ, R ≤ x → ordinaryPrimePrimitive x ≤ 0

/-- The running maximum retains every earlier endpoint and normalizes at the tail entrance. -/
def primeRecordLevel (N : ℕ) : ℕ → ℝ
  | 0 => 0
  | j + 1 => max (primeRecordLevel N j)
      (ordinaryPrimePrimitive (N + j + 1 : ℕ) - ordinaryPrimePrimitive N)

def primeRecordIncrement (N j : ℕ) : ℝ :=
  CausalRecords.recordIncrement (primeRecordLevel N j)
    (ordinaryPrimePrimitive (N + j + 1 : ℕ) - ordinaryPrimePrimitive N)

/-- Every prefix uses the actual running-maximum selector; no freely chosen selector appears. -/
def NativeRecordEnergySupplier : Prop :=
  ∃ N : ℕ, 2 ≤ N ∧ ∃ E : ℝ, 0 ≤ E ∧ ∀ K : ℕ,
    (∑ j ∈ Finset.range K, (primeRecordIncrement N j) ^ 2 /
      cellClock (N + j) (N + j + 1 : ℕ)) ≤ E

/-- Analytic strip production is a separate implication, not the proved final consumer. -/
def SourceRateStripSupplier : Prop :=
  ∀ η : ℝ, 0 < η →
    (∃ m : ℕ, ∃ D R : ℝ, 0 ≤ D ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → closedPrimeMoment A ≤ D * A ^ m * Real.exp (η * A)) →
    ZeroStripConsumer.ZeroStrip η

end
end GRWTSK.RiemannHypothesis.Conversation.OpenArithmeticSuppliers
```
