# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8198414eb01368da4ad673af4d18e3fdd79dda9` · SHA-256 `e2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
