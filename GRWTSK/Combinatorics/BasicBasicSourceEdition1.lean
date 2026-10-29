import Mathlib.Algebra.Module.Rat
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.DeriveFintype

/-!
# Semi-local defect identities

These identifiers bind finite cuts, balances, realizations, and certificates
without turning their metadata into mathematical authority.
-/

namespace Mathematics.SemiLocalDefect

structure CapacityDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure BalanceDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure RealizationDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ReconstructionDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ArithmeticCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CompressionId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CertificateDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

inductive CertificateStatus
  | unknown
  | underConstruction
  | rejected
  | certified
deriving DecidableEq, Repr, Fintype

end Mathematics.SemiLocalDefect
