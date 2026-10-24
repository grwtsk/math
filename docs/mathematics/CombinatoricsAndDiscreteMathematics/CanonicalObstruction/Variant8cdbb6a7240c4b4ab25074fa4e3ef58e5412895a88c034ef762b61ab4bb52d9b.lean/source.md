# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalObstruction.Variant8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cb07333190d284f7b9c7afa5cddaaf489d2b352` · SHA-256 `8cdbb6a7240c4b4ab25074fa4e3ef58e5412895a88c034ef762b61ab4bb52d9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction

/-!
# Canonical primitive obstructions

This integration context requires both primitive-core transport under an
explicit completion-equivariance bridge and a data-only finite canonicalizer.
The canonicalizer therefore cannot establish infeasibility by itself.
-/

namespace Mathematics.BinaryFrontier

structure CanonicalObstructionContext
    (G Partial Full Constraint Raw : Type)
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    [MulAction G Raw]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics) where
  canonicalizer : FiniteDataCanonicalizer G Raw
  rawOf : Partial → Finset Constraint → Raw
  raw_equivariant :
    ∀ groupElement state core,
      rawOf
          (equivariance.actPartial groupElement state)
          (equivariance.actRegistry groupElement core) =
        groupElement • rawOf state core
  primitiveTransport :
    ∀
      (registry core : Finset Constraint)
      (state : Partial)
      (primitive :
        PrimitiveObstructionCertificate
          semantics registry state core)
      (groupElement : G),
      PrimitiveCoreTransportCertificate
        semantics equivariance
        registry core state primitive groupElement

theorem automorphic_obstructions_share_canonical_record
    {G Partial Full Constraint Raw : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    [MulAction G Raw]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (context :
      CanonicalObstructionContext
        G Partial Full Constraint Raw
        semantics equivariance)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) :
    context.canonicalizer.canonicalize
        (context.rawOf
          (equivariance.actPartial groupElement state)
          (equivariance.actRegistry groupElement core)) =
      context.canonicalizer.canonicalize
        (context.rawOf state core) := by
  cases context.primitiveTransport
      registry core state primitive groupElement with
  | mk transported =>
      have transportedInfeasible :=
        primitive_core_is_infeasible
          semantics transported
      rw [context.raw_equivariant]
      exact canon_smul
        context.canonicalizer groupElement
        (context.rawOf state core)

end Mathematics.BinaryFrontier
```
