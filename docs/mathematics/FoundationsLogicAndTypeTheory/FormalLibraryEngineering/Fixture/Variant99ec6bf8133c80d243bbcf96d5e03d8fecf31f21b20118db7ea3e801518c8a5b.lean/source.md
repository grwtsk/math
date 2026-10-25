# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fixture.Variant99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d522321b5121f75d23097e8f08c1a3bb7be9c94d` · SHA-256 `99ec6bf8133c80d243bbcf96d5e03d8fecf31f21b20118db7ea3e801518c8a5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
namespace FormalResearch.Fixture
inductive Token where
  | atom
  | pair (left right : Token)
private def hidden : Nat := 7
def value : Nat := 1
theorem changed : (1 : Nat) = 1 := rfl
theorem same : True := And.left (And.intro True.intro True.intro)
theorem source : True := True.intro
theorem target : True ∧ True := ⟨True.intro, True.intro⟩
theorem transport : True → (True ∧ True) := fun h => ⟨h, h⟩
theorem equivalence : True ↔ (True ∧ True) := ⟨fun h => ⟨h, h⟩, And.left⟩
theorem freshA : True := True.intro
theorem freshB : True ∧ True := ⟨True.intro, True.intro⟩
end FormalResearch.Fixture
```
