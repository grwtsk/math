# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.Checks.Positive.PrefixObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `653687c34fb669cb84d7d65d47065a4d065e5791` · SHA-256 `ec7b5b1c15b5bfaef6260c559a91ea4dbb1a0989b96e07604b9962713e930c56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

set_option autoImplicit false

example {Node Label : Type*} (relation : Node → Node → Prop)
    (a b c : Node) (hac : relation a c) (hbc : relation b c)
    (hab : ¬ relation a b) (hba : ¬ relation b a) :
    ¬ ∃ address : Node → List Label,
      PreservesPrefix relation address ∧ ReflectsPrefix relation address :=
  no_prefix_representation_of_incomparable_upper relation a b c hac hbc hab hba

example (m n : Nat) : chainAddress m <+: chainAddress n ↔ m ≤ n :=
  chainAddress_prefix_iff m n

example (Label : Type*) :
    ¬ ∃ address : Diamond → List Label,
      PreservesPrefix DiamondLe address ∧ ReflectsPrefix DiamondLe address :=
  diamond_has_no_prefix_representation Label

-- These hypotheses really hold for the same concrete map; reflection really fails.
example : Function.Injective diamondAddress := diamondAddress_injective
example : PreservesPrefix DiamondLe diamondAddress := diamondAddress_preserves
example : ¬ ReflectsPrefix DiamondLe diamondAddress := diamondAddress_not_reflects

example : diamondAddress .left <+: diamondAddress .right := by decide
example : ¬ DiamondLe .left .right := by simp [DiamondLe]

example : DiamondLe .left .top ∧ DiamondLe .right .top := by simp [DiamondLe]
```
