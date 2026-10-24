/-!
# Snapshot-bound Frobenius authority

Splitting, ramification, and local factors are accepted only from the exact
extension, prime, decomposition, inertia, and factorization data.
-/

namespace Mathematics.MobiusOntology

universe u v w x y z

structure FrobeniusCertificate
    (Extension : Type u) (Prime : Type v)
    (DecompositionGroup : Type w) (InertiaGroup : Type x)
    (Factorization : Type y) (Snapshot : Type z) where
  extension : Extension
  prime : Prime
  decompositionGroup : DecompositionGroup
  inertiaGroup : InertiaGroup
  factorization : Factorization
  snapshot : Snapshot
  frobeniusStatement : Prop
  frobeniusProof : frobeniusStatement
  snapshotCurrent : Prop
  snapshotCurrentProof : snapshotCurrent

end Mathematics.MobiusOntology
