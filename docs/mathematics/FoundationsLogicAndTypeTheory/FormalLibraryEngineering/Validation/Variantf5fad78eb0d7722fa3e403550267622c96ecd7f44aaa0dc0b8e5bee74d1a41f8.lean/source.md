# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variantf5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9df64cc673baab9ab9d29aacbd26ed4a6e78fd91` · SHA-256 `f5fad78eb0d7722fa3e403550267622c96ecd7f44aaa0dc0b8e5bee74d1a41f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.Tower

/-! # Progression validation -/

namespace Mathematics.Progression

def RevisionsIncrease (tower : Tower Payload) : Prop :=
  tower.states.Pairwise fun earlier later ↦ earlier.revision < later.revision

def LinksAgree (tower : Tower Payload) : Prop :=
  ∀ earlier later,
    earlier ∈ tower.states →
    later ∈ tower.states →
    earlier.revision + 1 = later.revision →
    later.predecessor = some earlier.id

structure Valid (tower : Tower Payload) : Prop where
  idValid : tower.id.Valid
  revisionsIncrease : RevisionsIncrease tower
  linksAgree : LinksAgree tower
  digestValid : tower.progressionDigest.Valid

end Mathematics.Progression
```
