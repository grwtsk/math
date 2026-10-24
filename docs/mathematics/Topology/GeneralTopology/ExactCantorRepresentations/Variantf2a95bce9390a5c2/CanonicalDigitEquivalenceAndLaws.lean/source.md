# Complete source: GRWTSK.Topology.GeneralTopology.ExactCantorRepresentations.Variantf2a95bce9390a5c2.CanonicalDigitEquivalenceAndLaws

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f32e07317e2e57e564f303645820680f06a53510` · SHA-256 `659ba583115aba3166ea686ae22cb339292db9c88a5f370dbd569742b53e9339`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CanonicalDigitEquivalenceAndLaws — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: f2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc
Organized SHA-256: a1f6321e3393ad8cb95368f19292481a8f150854fcf214e0857f451ee8c0255c
PMD: 510.4.010 general topology (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole exact Cantor subtype and designated equivalence record, exact real-value equality, two inverse equations and uniqueness. This component adds no alternative expansion or topology witness. -/

import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Instances.CantorSet

import GRWTSK.Analysis.RealAnalysis.SequencesAndSeries.DesignatedCantorSeries.Variantf2a95bce9390a5c2.DigitsSeriesMembershipAndInjectivity
/-!
# Analytic designated Cantor representation

This is the concrete exact-real specialization of the project scalar.  It is
Mathlib's middle-thirds Cantor subset of `Real`, not a floating approximation
or a symbolic replacement.  Mathlib proves that its chosen `{0,2}` ternary
sequence is unique and supplies the inverse digit map and homeomorphism.
-/

namespace BitMatrix.Topology

open Real

/-- The actual middle-thirds Cantor subset of `Real`. -/
abbrev ExactCantorScalar := cantorSet

/-- Exact analytic representation with Mathlib's designated digit inverse. -/
noncomputable def analyticCantorRepresentation :
    BitMatrix.Carrier.DesignatedCantorRepresentation where
  Scalar := ExactCantorScalar
  theta := cantorSetEquivNatToBool.symm

@[simp]
theorem analyticCantorRepresentation_theta_val
    (stream : BitMatrix.Carrier.BitStream) :
    ((show ExactCantorScalar from
      analyticCantorRepresentation.theta stream) : Real) =
      designatedCantorScalar stream := by
  change Real.ofDigits (fun index => cond (stream index) 2 0) =
    Real.ofDigits (designatedTernaryExpansion stream)
  congr 1
  funext index
  cases bit : stream index <;>
    simp [designatedTernaryExpansion, bit]

@[simp]
theorem analyticCantorRepresentation_digits_theta
    (stream : BitMatrix.Carrier.BitStream) :
    analyticCantorRepresentation.digits
      (analyticCantorRepresentation.theta stream) = stream :=
  analyticCantorRepresentation.digits_theta stream

@[simp]
theorem analyticCantorRepresentation_theta_digits
    (scalar : analyticCantorRepresentation.Scalar) :
    analyticCantorRepresentation.theta
      (analyticCantorRepresentation.digits scalar) = scalar :=
  analyticCantorRepresentation.theta_digits scalar

theorem analyticCantorRepresentation_unique
    (left right : BitMatrix.Carrier.BitStream)
    (equality : ((show ExactCantorScalar from
      analyticCantorRepresentation.theta left) : Real) =
      ((show ExactCantorScalar from
        analyticCantorRepresentation.theta right) : Real)) :
    left = right :=
  designatedCantorScalar_injective (by
    simpa only [analyticCantorRepresentation_theta_val] using equality)

end BitMatrix.Topology
```
