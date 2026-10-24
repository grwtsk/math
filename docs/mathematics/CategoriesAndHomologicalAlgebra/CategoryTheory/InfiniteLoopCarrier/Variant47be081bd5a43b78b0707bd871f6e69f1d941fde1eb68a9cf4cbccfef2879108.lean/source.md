# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InfiniteLoopCarrier.Variant47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5634adb8f36b2d65f82187b1747d28e75d23e8a5` · SHA-256 `47be081bd5a43b78b0707bd871f6e69f1d941fde1eb68a9cf4cbccfef2879108`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Prismatic.ResearchGap

/-!
# Delooping-sequence boundary

A periodic sequence or repeated endomorphism is only a cycle.  Infinite-loop
authority requires pointed homotopy types, a genuine loop-space construction,
and coherent spectrum structure.  None is fabricated here.  This module
therefore records only equivalences relative to a supplied object operation;
they are candidates for a later spectrum formalization, not spectra.
-/

namespace Mathematics.Prismatic

universe u

/-- Claimed provenance of a proposed delooping construction. -/
inductive ProposedDeloopingSource
  | algebraicKTheory
  | topologicalCyclicHomology
  | groupCompletion
  | suppliedConstruction
  deriving DecidableEq, Repr

/--
An object-level operation proposed as a loop-space operation.  No functorial,
pointed, or homotopical laws are inferred from this profile.
-/
structure LoopObjectOperation where
  apply : Type u → Type u
  definitionDigest : Digest
  profileAddress : ObjectAddress

/--
A sequence of type equivalences relative to a supplied object operation.  The
name intentionally makes no spectrum or infinite-loop-space claim.
-/
structure DeloopingSequenceCandidate
    (operation : LoopObjectOperation.{u}) where
  Space : Nat → Type u
  stepEquivalence :
    (degree : Nat) →
      Space degree ≃ operation.apply (Space (Nat.succ degree))
  proposedSource : ProposedDeloopingSource
  equivalenceDigest : Nat → Digest
  evidenceAddress : ObjectAddress

/--
A finite or periodic cycle record.  It intentionally has no coercion to
`DeloopingSequenceCandidate`.
-/
structure RepeatedTransitionCycle where
  Carrier : Nat → Type u
  transition : (degree : Nat) → Carrier degree → Carrier (Nat.succ degree)
  period : Nat
  periodicityDigest : Digest
  evidenceAddress : ObjectAddress

end Mathematics.Prismatic
```
