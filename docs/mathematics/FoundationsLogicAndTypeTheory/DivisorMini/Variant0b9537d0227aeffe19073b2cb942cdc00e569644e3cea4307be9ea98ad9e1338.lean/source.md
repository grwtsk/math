# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.DivisorMini.Variant0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `556f229cbec09d7c2f8c0668e0c107d77191d145` · SHA-256 `0b9537d0227aeffe19073b2cb942cdc00e569644e3cea4307be9ea98ad9e1338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Factorization.Divisors
namespace F
structure D (M : ℕ) where
  val : ℕ
  property : val ∣ M
instance (M : ℕ) : Coe (D M) ℕ := ⟨D.val⟩
instance (M : ℕ) : CoeOut (D M) ℕ := ⟨D.val⟩
#check (fun {M : ℕ} (d : D M) => (d : ℕ))
end F
```
