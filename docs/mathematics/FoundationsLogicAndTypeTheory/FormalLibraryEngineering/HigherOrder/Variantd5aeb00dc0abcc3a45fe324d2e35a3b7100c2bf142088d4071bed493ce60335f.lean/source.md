# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HigherOrder.Variantd5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de9b46c8fdcb4632054a18804f9b991d8e91410b` · SHA-256 `d5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.HigherOrder

set_option autoImplicit true
namespace HigherOrderTest

@[higher_order map_comp_pure]
theorem map_pure' {f : Type u → Type v} [Applicative f] [LawfulApplicative f]
  {α β : Type u} (g : α → β) (x : α) : g <$> (pure x : f α) = pure (g x) := map_pure g x

example {f : Type u → Type v} [Applicative f] [LawfulApplicative f]
    {α β : Type u} (g : α → β) : Functor.map g ∘ (pure : α → f α) = pure ∘ g := by
  apply map_comp_pure

end HigherOrderTest
```
