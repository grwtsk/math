# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ChooseReduction.Variante3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac200c8b7870303a8a40669a1a87b2f9c3eb3586` · SHA-256 `e3484893dfee13beef0593447a4a220c0b5d816055aef3d09f0efc912e50e9c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
/-!
Tests that `List.choose` and friends all reduce appropriately.

Previously this was blocked by reducibility issues with `And.rec`
(https://leanprover.zulipchat.com/#narrow/stream/236446-Type-theory/topic/And.2Erec/near/398483665).
-/

namespace List

lemma foo : ∃ x, x ∈ ([0,3] : List (Fin 5)) ∧ x = 3 := by
  use 3
  simp

example : choose _ _ foo = 3 := by rfl
example : choose _ _ foo = 3 := rfl
example : choose _ _ foo = 3 := by eq_refl
example : choose _ _ foo = 3 := by exact rfl
example : choose _ _ foo = 3 := by decide

end List

namespace Multiset

lemma foo : ∃! x, x ∈ ({0,3} : Multiset (Fin 5)) ∧ x = 3 := by
  use 3
  simp

example : choose _ _ foo = 3 := by rfl
example : choose _ _ foo = 3 := rfl
example : choose _ _ foo = 3 := by eq_refl
example : choose _ _ foo = 3 := by exact rfl
example : choose _ _ foo = 3 := by decide

end Multiset

namespace Finset

lemma foo : ∃! x, x ∈ ({0,3} : Finset (Fin 5)) ∧ x = 3 := by
  use 3
  simp

example : choose _ _ foo = 3 := by rfl
example : choose _ _ foo = 3 := rfl
example : choose _ _ foo = 3 := by eq_refl
example : choose _ _ foo = 3 := by exact rfl
example : choose _ _ foo = 3 := by decide

end Finset
```
