# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InverseFalseControls.Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `234dc83f3f4c4789240fe37dac488f7b2325ee0e` · SHA-256 `3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.InverseControls
open C2

/- Three expected failures: count, key length, and child fuel. -/
example : parseValue 2 (emit (.map (List.replicate 65 ([], .bool true))) ++ ['!']) =
    some (.map (List.replicate 65 ([], .bool true)), ['!']) := by
  rw [map_count_reject 1 _ _ (by simp only [List.length_replicate]; omega)]
  rfl

example : parseValue 2 (emit (.map [(List.replicate 16385 'a', .bool true)]) ++ ['!']) =
    some (.map [(List.replicate 16385 'a', .bool true)], ['!']) := by
  rw [map_key_reject 0 _ _ _ (by simp only [List.length_replicate]; omega)]
  rfl

example : parseValue 1 (emit (.map [([], .bool true)]) ++ ['!']) =
    some (.map [([], .bool true)], ['!']) := by
  rw [map_fuel_reject]
  rfl
```
