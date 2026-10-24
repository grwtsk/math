import Mathlib.Data.Finset.Basic

/-!
# WP0 finite-horizon identities

Stable custody identities for the finite-horizon Sonin core.  No mathematical
property is attached to these identifiers.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PrimeCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PersistentCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PacketId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure TestRegistryId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CoefficientRingId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure MatrixId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure BasisRevision where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ProofId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CheckerId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure Digest where
  words : Array UInt64
deriving DecidableEq, Repr

end Mathematics.SemiLocalDefect.SoninCore
