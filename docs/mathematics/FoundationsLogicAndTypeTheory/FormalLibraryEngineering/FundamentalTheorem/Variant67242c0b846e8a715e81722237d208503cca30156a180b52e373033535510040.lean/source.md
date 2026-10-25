# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FundamentalTheorem.Variant67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebad46e98ebeaf1a84bf76bac3dc8557d8cba153` · SHA-256 `67242c0b846e8a715e81722237d208503cca30156a180b52e373033535510040`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.Factorization

/-!
# Folder.NumberTheory.FundamentalTheorem

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.fta
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

def factorProduct
    (f : Nat →₀ Nat) : Nat :=
  f.prod (fun p e => p ^ e)

theorem factorProduct_factorization
    (n : PositiveNat) :
    factorProduct (FactorizationMap n) = n.val := by
  unfold factorProduct FactorizationMap PositiveNat.val
  exact Nat.prod_factorization_pow_eq_self (Nat.ne_of_gt n.2)

theorem factorProduct_one :
    factorProduct (0 : Nat →₀ Nat) = 1 := by
  simp [factorProduct]

end NumberTheory
end Folder
```
