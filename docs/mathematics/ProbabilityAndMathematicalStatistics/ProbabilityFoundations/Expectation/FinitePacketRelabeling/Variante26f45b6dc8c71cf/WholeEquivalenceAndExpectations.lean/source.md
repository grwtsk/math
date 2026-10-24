# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.FinitePacketRelabeling.Variante26f45b6dc8c71cf.WholeEquivalenceAndExpectations

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41d3a4e7eaebbbf508211350fa38a114af11608d` · SHA-256 `5f99e39abac3c9e519fc7e646331210533a737d8091860e9c842608044178523`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeEquivalenceAndExpectations
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e26f45b6dc8c71cf7c28520ea1de09bcd548d864dd10e8f1cd6f2313de6b9490
Organized SHA-256: 190c13df3b30cf3ecac19015578d72ecc0384df69929d4513eac1d96b3537812
PMD: 510.8.010.020 expectation (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- PacketEquiv retains the full outcome equivalence and BOTH spectral-value and probability preservation fields. Expectation transport is for arbitrary real observables, with exact reindexing direction. Equal spectral values never identify outcome types or multiplicities. The exact original namespace BitMatrix.Spectral is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Spectral.FinitePacket
import Mathlib.Tactic

/-!
# Spectral realization and covariance capability boundaries

Finite packets have unconditional probability semantics.  General Hilbert
spaces, unbounded operators, trace-class states, functional calculus, and
unitary conjugacy require additional analytic evidence.  This module records
that evidence as explicit capabilities; it manufactures none of it.

In particular, these records are not spectral triples and contain no claims
about compact resolvent, bounded commutators, Connes distance, spinors, or a
Dirac operator induced by raster geometry.
-/

namespace BitMatrix.Spectral

open scoped BigOperators
open BitMatrix.Probability

/-- Exact equivalence of two finite spectral packets.  Outcomes remain
distinguishable even when their real spectral values coincide. -/
structure PacketEquiv {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : FinitePacket Left) (right : FinitePacket Right) where
  outcomeEquiv : Left ≃ Right
  spectralValue_preserved : ∀ outcome,
    right.spectralValue (outcomeEquiv outcome) = left.spectralValue outcome
  probability_preserved : ∀ outcome,
    right.probability (outcomeEquiv outcome) = left.probability outcome

namespace PacketEquiv

variable {Left Right : Type*} [Fintype Left] [Fintype Right]
  {left : FinitePacket Left} {right : FinitePacket Right}

/-- Packet equivalence preserves arbitrary outcome observables after relabeling.
-/
theorem expectation_preserved (equivalence : PacketEquiv left right)
    (observable : Right → ℝ) :
    right.expectation observable =
      left.expectation (fun outcome => observable (equivalence.outcomeEquiv outcome)) := by
  rw [FinitePacket.expectation, FinitePacket.expectation]
  symm
  calc
    (∑ outcome, left.probability outcome *
        observable (equivalence.outcomeEquiv outcome)) =
        ∑ outcome, right.probability (equivalence.outcomeEquiv outcome) *
          observable (equivalence.outcomeEquiv outcome) := by
      apply Finset.sum_congr rfl
      intro outcome _
      rw [equivalence.probability_preserved]
    _ = ∑ outcome, right.probability outcome * observable outcome :=
      Equiv.sum_comp equivalence.outcomeEquiv
        (fun outcome => right.probability outcome * observable outcome)

/-- Packet equivalence preserves every real spectral observable. -/
theorem spectralExpectation_preserved (equivalence : PacketEquiv left right)
    (observable : ℝ → ℝ) :
    right.spectralExpectation observable = left.spectralExpectation observable := by
  rw [FinitePacket.spectralExpectation, equivalence.expectation_preserved]
  apply Finset.sum_congr rfl
  intro outcome _
  change left.probability outcome *
      observable (right.spectralValue (equivalence.outcomeEquiv outcome)) =
    left.probability outcome * observable (left.spectralValue outcome)
  rw [equivalence.spectralValue_preserved]

end PacketEquiv

end BitMatrix.Spectral
```
