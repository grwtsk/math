import Mathlib.Analysis.Complex.Basic
import Mathlib.Data.Finset.Card

/-!
# RH-isolation identities and finite intervals

Identifiers in this namespace name immutable analytic or spectral evidence.
They do not assert that the named evidence has been accepted.
-/

namespace Mathematics.RHIsolation

structure CutDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CellDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CertificateDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure AnalyticCellId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure RefinementId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ZeroLineageId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure SpectralCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure SpectralCandidateId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure AssumptionId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure PriorityKey where
  primary : Nat
  canonical : Nat
deriving DecidableEq, Ord, Repr

structure RealInterval where
  lower : ℝ
  upper : ℝ
  ordered : lower ≤ upper

def RealInterval.Contains
    (interval : RealInterval)
    (value : ℝ) : Prop :=
  interval.lower ≤ value ∧ value ≤ interval.upper

structure ComplexInterval where
  carrier : Set ℂ

def ComplexInterval.Contains
    (interval : ComplexInterval)
    (value : ℂ) : Prop :=
  value ∈ interval.carrier

end Mathematics.RHIsolation
