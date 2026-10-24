# Complete source: GRWTSK.Analysis.Basic.Variante03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a786daebc14c6c3ac2c2153fd6b01eccdf2ebe86` · SHA-256 `e03cc6b44b71d5f756c2b782ead9bc704e8709d290a5d456226a3fc22bc46a5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
