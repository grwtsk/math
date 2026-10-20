/-
FiniteSourceBitsPointsAndRelations — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a287cf3ef48b896567987445f17e65a4fb59cbcc7a2cf24f277ff906de691b6b
Organized SHA-256: 01e012715d09f573e7b46f1491c0e5614aced09b130f982ef0ed71f6b5d04977
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Full UInt8 MSB convention, dependent Fin-length root/byte point syntax, three relation tags with exact deriving clauses, and constant binary arity. No relation interpretation, graph law, actual source edge or serialization theorem follows from tags alone. -/

import BitMatrix.Carrier.BooleanSpace

/-!
# Canonical finite sources and source-state codecs

This module states the provider-neutral source-codec interface. An
implementation must provide both decoding laws; only then is its source
constructor promoted to an equivalence with its image. The separate
`BitMatrix.Codec.SequentialPrimeSource` module now supplies the project's
concrete full-carrier implementation of this interface.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965


namespace BitMatrix.Codec

/-- Most-significant-bit-first access to a source byte. -/
def byteBitMSB (byte : UInt8) (index : Fin 8) : Bool :=
  Nat.testBit byte.toNat (7 - index.val)


/-- Points in the canonical finite source graph. -/
inductive SourcePoint (length : Nat) where
  | root
  | byte (index : Fin length)
  deriving DecidableEq


/-- The three fixed binary relations of the self-source schema. -/
inductive SourceRelation where
  | contains
  | next
  | ref
  deriving DecidableEq, Repr


/-- Every source relation in the fixed schema has arity two. -/
def SourceRelation.arity (_ : SourceRelation) : Nat := 2


end BitMatrix.Codec

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.CanonicalSourceImageCodecs.Varianta287cf3ef48b8965
