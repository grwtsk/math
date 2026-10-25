# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Factorization.Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1990e454884725562cff2e46e082d5f5e0f0a2ff` · SHA-256 `184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Factorization.Basic
import Folder.NumberTheory.PrimePower

/-!
# Folder.NumberTheory.Factorization

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.factorization
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

def FactorizationMap (n : PositiveNat) : Nat →₀ Nat :=
  Nat.factorization n.val

def IsPrimeSupport (n : PositiveNat) (p : Nat) : Prop :=
  (FactorizationMap n p) ≠ 0

theorem factorization_support_prime
    (n : PositiveNat)
    {p : Nat}
    (hp : IsPrimeSupport n p) :
    Nat.Prime p := by
  have hmem : p ∈ (FactorizationMap n).support := by
    exact Finsupp.mem_support_iff.mpr hp
  have hpf : p ∈ n.val.primeFactors := by
    simpa [FactorizationMap, Nat.support_factorization] using hmem
  exact Nat.prime_of_mem_primeFactors hpf

theorem factorization_exponent_pos
    (n : PositiveNat)
    {p : Nat}
    (hp : IsPrimeSupport n p) :
    0 < FactorizationMap n p :=
  Nat.pos_of_ne_zero hp

noncomputable def factorPrimePowerOfSupport
    (n : PositiveNat)
    (p : Nat)
    (hp : IsPrimeSupport n p) :
    PrimePower where
  prime := p
  isPrime := factorization_support_prime n hp
  exponent := FactorizationMap n p
  exponent_pos := factorization_exponent_pos n hp

end NumberTheory
end Folder
```
