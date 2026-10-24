# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661.RestrictedSourceImage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faedec82f785dbaf40726c3cfc9b2839f93297a2` · SHA-256 `3607780afdfce857cb25c4d4a5ccbf436acb494588a51925059a25cb649ba33b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
RestrictedSourceImage
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


/- Validity domains are exact subtypes using actual ∃source encoder-image membership. Every forward/inverse/subtype proof and scalarOfCanonicalSource witness remains unchanged. The exact zero scalar is representation-relative; no arbitrary scalar named zero, all-function enumeration, executable decoder, approximation or analytic inversion algorithm is inferred. The explicit open BitMatrix.Rhetorical restores only the original imported Core short-name lookup; no new414 provider is imported. -/

import BitMatrix.Codec.SequentialPrimeSource
import BitMatrix.Rhetorical.Core
import BitMatrix.Topology.DesignatedCantor

import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661.DocumentedAnalyticInverse

/-!
# One invariant theory in four rhetorical modes

This module is the formal correspondence layer for the four presentations in
`docs/bit/mapping-rhetorical-systems.md`.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661


open BitMatrix.Rhetorical

/-- Predicate selecting exactly states accepted as encodings by the source codec. -/
def documentedSourceStatePredicate
    (state : BitMatrix.Carrier.BooleanState
      BitMatrix.Carrier.SequentialPrimeCarrierAddress) : Prop :=
  ∃ source : BitMatrix.Codec.CanonicalSource,
    BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source = state

/-- The exact image of the documented sequential-prime source constructor. -/
abbrev DocumentedSourceState :=
  BitMatrix.Codec.SourceCodec.SourceState
    BitMatrix.Codec.SequentialPrimeSource.sourceCodec

/-- Exact Cantor scalars whose interpreted states are documented source states. -/
abbrev SelfSourceScalarDomain :=
  { scalar : BitMatrix.Topology.ExactCantorScalar //
    documentedSourceStatePredicate (documentedSourceRelativeEquiv scalar) }

/--
Validity-restricted source/scalar equivalence for the concrete project codec.
This instantiates the generic restriction theorem; no predicate capability or
analytic approximation is supplied by a caller.
-/
noncomputable def selfSourceScalarEquiv :
    SelfSourceScalarDomain ≃ DocumentedSourceState where
  toFun scalar := ⟨documentedSourceRelativeEquiv scalar, scalar.property⟩
  invFun state := ⟨documentedSourceRelativeEquiv.symm state.val,
    by
      rw [documentedSourceRelativeEquiv.apply_symm_apply]
      exact state.property⟩
  left_inv scalar := by
    apply Subtype.ext
    exact documentedSourceRelativeEquiv.symm_apply_apply scalar
  right_inv state := by
    apply Subtype.ext
    exact documentedSourceRelativeEquiv.apply_symm_apply state.val

/-- Every encoded canonical source has an exact scalar in the restricted domain. -/
noncomputable def scalarOfCanonicalSource
    (source : BitMatrix.Codec.CanonicalSource) : SelfSourceScalarDomain :=
  ⟨sourceRelativeScalar
      (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source),
    by
      refine ⟨source, ?_⟩
      exact (documentedInterpreter_sourceRelativeScalar
        (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source)).symm⟩

@[simp]
theorem selfSourceScalarEquiv_scalarOfCanonicalSource
    (source : BitMatrix.Codec.CanonicalSource) :
    (selfSourceScalarEquiv (scalarOfCanonicalSource source)).val =
      BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source := by
  change documentedSourceRelativeEquiv
    (sourceRelativeScalar
      (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source)) = _
  exact documentedInterpreter_sourceRelativeScalar
    (BitMatrix.Codec.SequentialPrimeSource.sourceCodec.encode source)

theorem selfSourceScalarEquiv_inverse_laws :
    Function.LeftInverse selfSourceScalarEquiv.symm selfSourceScalarEquiv ∧
      Function.RightInverse selfSourceScalarEquiv.symm selfSourceScalarEquiv :=
  ⟨selfSourceScalarEquiv.left_inv, selfSourceScalarEquiv.right_inv⟩

/-- Exact zero scalar identifies precisely the embedded-document baseline. -/
theorem documentedInterpreter_eq_baseline_iff
    (scalar : BitMatrix.Topology.ExactCantorScalar) :
    BitMatrix.Carrier.distinguishedInterpreter
      BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
      BitMatrix.Topology.analyticCantorRepresentation
      BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar =
        BitMatrix.Codec.SequentialPrimeSource.baselineCarrier ↔
      scalar = BitMatrix.Carrier.zeroScalar
        BitMatrix.Topology.analyticCantorRepresentation :=
  BitMatrix.Carrier.distinguishedInterpreter_eq_baseline_iff
    BitMatrix.Carrier.SequentialPrimeCarrierAddress.canonicalEnumeration.enumerate
    BitMatrix.Topology.analyticCantorRepresentation
    BitMatrix.Codec.SequentialPrimeSource.baselineCarrier scalar

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.ExactSourceRelativeRepresentations.Variant340ee1d86c16a661
```
