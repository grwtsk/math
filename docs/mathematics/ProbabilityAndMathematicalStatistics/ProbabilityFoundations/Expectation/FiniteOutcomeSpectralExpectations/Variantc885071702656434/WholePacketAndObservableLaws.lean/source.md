# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FiniteOutcomeSpectralExpectations.Variantc885071702656434.WholePacketAndObservableLaws

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2d993fe13ff54aceb9661822108ae637597d5e8` · SHA-256 `d79713111018ee47de09ced420ed85735976eff63230d9ca70710cf004836168`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholePacketAndObservableLaws
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd
Organized SHA-256: 550a00ce7877c46919c5d8a7eae8da75efce7e0e204b2f6098e16cdc33c7165a
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole FinitePacket retains real spectralValue and actual SimplexPoint probability, without quotienting repeated values. All normalized/nonnegative/zero/one/add/scalar expectation proofs retain full finite-type and observable hypotheses. The exact original namespace BitMatrix.Spectral is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Probability.Simplex
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

/-!
# Finite spectral packets and simplex mixtures

This module gives the constructive, finite part of spectral transport.  A
packet consists of a finite spectrum together with a normalized nonnegative
mass on its outcomes.  Mixing packets uses an outer simplex point and retains
the packet index in a dependent sum.  It therefore models a finite direct-sum
mixture without asserting that the packets share an operator domain.

No declaration in this file constructs a spectral triple, a Dirac operator,
compact resolvent, bounded commutators, or metric recovery.
-/

namespace BitMatrix.Spectral

open scoped BigOperators
open BitMatrix.Probability

/-- Finite spectral data: a real spectral value and a probability mass on each
finite outcome.  The outcome type may retain eigenprojection multiplicity or
other provenance; equal real values are not quotient-identified. -/
structure FinitePacket (Outcome : Type*) [Fintype Outcome] where
  spectralValue : Outcome → ℝ
  probability : SimplexPoint Outcome

namespace FinitePacket

variable {I Outcome : Type*} [Fintype I] [Fintype Outcome]

/-- Expected value of an arbitrary real observable on packet outcomes. -/
def expectation (packet : FinitePacket Outcome)
    (observable : Outcome → ℝ) : ℝ :=
  ∑ outcome, packet.probability outcome * observable outcome

/-- Expected value of a function of the packet's real spectral value. -/
def spectralExpectation (packet : FinitePacket Outcome)
    (observable : ℝ → ℝ) : ℝ :=
  packet.expectation (fun outcome => observable (packet.spectralValue outcome))

theorem probability_nonnegative (packet : FinitePacket Outcome)
    (outcome : Outcome) : 0 ≤ packet.probability outcome :=
  packet.probability.nonnegative outcome

theorem probability_normalized (packet : FinitePacket Outcome) :
    ∑ outcome, packet.probability outcome = 1 :=
  packet.probability.normalized

@[simp]
theorem expectation_zero (packet : FinitePacket Outcome) :
    packet.expectation (fun _ => 0) = 0 := by
  simp [expectation]

@[simp]
theorem expectation_one (packet : FinitePacket Outcome) :
    packet.expectation (fun _ => 1) = 1 := by
  simpa [expectation] using packet.probability.normalized

theorem expectation_add (packet : FinitePacket Outcome)
    (left right : Outcome → ℝ) :
    packet.expectation (fun outcome => left outcome + right outcome) =
      packet.expectation left + packet.expectation right := by
  simp only [expectation, mul_add, Finset.sum_add_distrib]

theorem expectation_smul (packet : FinitePacket Outcome)
    (coefficient : ℝ) (observable : Outcome → ℝ) :
    packet.expectation (fun outcome => coefficient * observable outcome) =
      coefficient * packet.expectation observable := by
  unfold expectation
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro outcome _
  ring

theorem expectation_nonnegative (packet : FinitePacket Outcome)
    (observable : Outcome → ℝ) (nonnegative : ∀ outcome, 0 ≤ observable outcome) :
    0 ≤ packet.expectation observable := by
  exact Finset.sum_nonneg fun outcome _ =>
    mul_nonneg (packet.probability.nonnegative outcome) (nonnegative outcome)

@[simp]
theorem spectralExpectation_zero (packet : FinitePacket Outcome) :
    packet.spectralExpectation (fun _ => 0) = 0 :=
  packet.expectation_zero

@[simp]
theorem spectralExpectation_one (packet : FinitePacket Outcome) :
    packet.spectralExpectation (fun _ => 1) = 1 :=
  packet.expectation_one

theorem spectralExpectation_add (packet : FinitePacket Outcome)
    (left right : ℝ → ℝ) :
    packet.spectralExpectation (fun value => left value + right value) =
      packet.spectralExpectation left + packet.spectralExpectation right :=
  packet.expectation_add _ _

theorem spectralExpectation_smul (packet : FinitePacket Outcome)
    (coefficient : ℝ) (observable : ℝ → ℝ) :
    packet.spectralExpectation (fun value => coefficient * observable value) =
      coefficient * packet.spectralExpectation observable :=
  packet.expectation_smul _ _

end FinitePacket

end BitMatrix.Spectral
```
