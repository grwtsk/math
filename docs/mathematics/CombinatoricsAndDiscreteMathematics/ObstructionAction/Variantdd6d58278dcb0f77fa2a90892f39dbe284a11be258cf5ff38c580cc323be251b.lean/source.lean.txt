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
