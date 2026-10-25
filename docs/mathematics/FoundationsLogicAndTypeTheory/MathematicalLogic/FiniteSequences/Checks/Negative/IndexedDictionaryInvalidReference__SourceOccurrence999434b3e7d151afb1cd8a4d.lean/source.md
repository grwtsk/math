# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.IndexedDictionaryInvalidReference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a57bfeab7e723e15f482c38ba12727f3822da249` · SHA-256 `0d06a5f63a7b8de95203289eb9d7feeb46dee28eb2f01178ba7ef50bbb53dabf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

-- Expected kernel failure: an absent dictionary slot cannot yield a payload.
-- This uses the actual decoder, so no missing-input error should satisfy the control.
example : unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = some [(11, 7)] :=
  (show unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = none from rfl)
```
