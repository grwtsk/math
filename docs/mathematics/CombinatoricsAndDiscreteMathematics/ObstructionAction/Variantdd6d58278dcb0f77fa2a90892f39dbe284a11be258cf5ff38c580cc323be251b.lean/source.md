# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionAction.Variantdd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `637efde7a1376e6651a0ac6421cf92a3e4469057` · SHA-256 `dd6d58278dcb0f77fa2a90892f39dbe284a11be258cf5ff38c580cc323be251b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance

/-!
# Primitive-core transport

The project must supply a transport certificate for a concrete action.  Its
completion-equivariance member prevents a raw data permutation from being
mistaken for a semantic automorphism.
-/

namespace Mathematics.BinaryFrontier

structure PrimitiveCoreTransportCertificate
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) where
  transported :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core)

theorem primitive_core_transports_under_automorphism
    {G Partial Full Constraint : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G)
    (transport :
      PrimitiveCoreTransportCertificate
        semantics equivariance
        registry core state primitive groupElement) :
    PrimitiveObstructionCertificate
      semantics
      (equivariance.actRegistry groupElement registry)
      (equivariance.actPartial groupElement state)
      (equivariance.actRegistry groupElement core) :=
  transport.transported

end Mathematics.BinaryFrontier
```
