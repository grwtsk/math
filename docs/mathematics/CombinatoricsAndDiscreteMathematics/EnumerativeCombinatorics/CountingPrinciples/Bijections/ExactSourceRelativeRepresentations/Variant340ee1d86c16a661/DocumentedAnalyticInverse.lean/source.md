# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661.DocumentedAnalyticInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0625ca3865b8e8f05b4424581193784b11c44763` · SHA-256 `6350c81a9cc67300040e1e82cacc027a7863c1c6808f0e0cfae662a1c5517909`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
DocumentedAnalyticInverse
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 340ee1d86c16a66190d472c5c4cd8c53ccf65846bef572ae767f5735adc220e2
Organized SHA-256: 18356dc1dd59e12b63ed2e97bcce397298e72d7e571d662c22c2b2ce44ce1c43
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Documented specializations retain exact SequentialPrimeSource and analyticCantorRepresentation providers, not new candidate replacements. All real-value, round-trip and baseline-zero equations keep every full enumeration/baseline/representation parameter and qualified call. Original provider includes an include_str of external Markdown; this review does not invoke it or claim the archived standalone source resolves its old relative file. The explicit open BitMatrix.Rhetorical restores only the original imported Core short-name lookup; no new414 provider is imported. -/

import BitMatrix.Codec.SequentialPrimeSource
import BitMatrix.Rhetorical.Core
import BitMatrix.Topology.DesignatedCantor

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.ExactCarrierRepresentationPackages.Variant340ee1d86c16a661.WholeTheoryAndSymbolicSource

/-!
# One invariant theory in four rhetorical modes

This module is the formal correspondence layer for the four presentations in
`docs/bit/mapping-rhetorical-systems.md`.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661


open BitMatrix.Rhetorical

/-! ## Complete documented project specialization -/

/--
The production invariant theory using the restricted sequential-prime carrier,
its filtered increasing enumeration, the analytic middle-thirds Cantor subset
of `Real`, and the actual embedded rhetorical Markdown source.
-/
noncomputable def documentedSourceTheory : InvariantTheory where
  Address := BitMatrix.Carrier.SequentialPrimeCarrierAddress
  enumeration :=
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration
  cantor := BitMatrix.Topology.analyticCantorRepresentation
  baseline := BitMatrix.Codec.SequentialPrimeSource.baselineCarrier

/-- No capability argument is needed for the documented source specialization. -/
noncomputable def documentedSourceSpecialization :
    SourceSpecialization documentedSourceTheory where
  codec := BitMatrix.Codec.SequentialPrimeSource.sourceCodec
  source := BitMatrix.Codec.SequentialPrimeSource.distinguishedCanonicalSource
  baseline_eq := rfl

/-- Exact real source-relative scalar of a target carrier state. -/
noncomputable def sourceRelativeScalar
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    BitMatrix.Topology.ExactCantorScalar :=
  (BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier).symm target

/-- The source-relative scalar is the exact designated ternary discrepancy. -/
theorem sourceRelativeScalar_val
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    (sourceRelativeScalar target : Real) =
      BitMatrix.Topology.designatedCantorScalar
        (BitMatrix.Carrier.discrepancy
          BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
          BitMatrix.Codec.SequentialPrimeSource.baselineCarrier target) := by
  change ((show BitMatrix.Topology.ExactCantorScalar from
    BitMatrix.Topology.analyticCantorRepresentation.theta
      (BitMatrix.Carrier.discrepancy
        BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier target)) : Real) = _
  exact BitMatrix.Topology.analyticCantorRepresentation_theta_val _

/-- Decoding the exact source-relative scalar reconstructs every target state. -/
theorem documentedInterpreter_sourceRelativeScalar
    (target : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) :
    BitMatrix.Carrier.distinguishedInterpreter
      BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
      BitMatrix.Topology.analyticCantorRepresentation
      BitMatrix.Codec.SequentialPrimeSource.baselineCarrier
      (sourceRelativeScalar target) = target :=
  (BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier).apply_symm_apply target

/-- Encoding after interpreting a scalar returns that scalar exactly. -/
theorem sourceRelativeScalar_documentedInterpreter
    (scalar : BitMatrix.Topology.ExactCantorScalar) :
    sourceRelativeScalar
      (BitMatrix.Carrier.distinguishedInterpreter
        BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
        BitMatrix.Topology.analyticCantorRepresentation
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar) = scalar :=
  (BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier).symm_apply_apply scalar

/-- Production equivalence with no uninhabited project capability. -/
noncomputable def documentedSourceRelativeEquiv :
    BitMatrix.Topology.ExactCantorScalar ≃
      BitMatrix.Carrier.BooleanState
        BitMatrix.Carrier.SequentialPrimeCarrierAddress :=
  BitMatrix.Carrier.baselineEquiv
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661
```
