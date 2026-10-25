# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.IndexedDictionaryInvalidReference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf180f385a2399bdc20fb0a8d84362a58c410333` · SHA-256 `6e0c5e2aba86cbe81c884a873ab3dbd4b94c4814f421dedc388967adc49181a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IndexedDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

-- Expected kernel failure: an absent dictionary slot cannot yield a payload.
-- This uses the actual decoder, so no missing-input error should satisfy the control.
example : unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = some [(11, 7)] :=
  (show unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = none from rfl)
```
