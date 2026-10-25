# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutAction.Variant1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20fb73d858b7c31260eff31aecdb05a7eb2756d6` · SHA-256 `1e446579412cafe2f2d6c1edd873cf275f912d74c53b468b90c404ec9c13a5d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite-cut symmetry action
-/

namespace Mathematics.StratifiedBoundary

structure CutAutomorphismAction
    (GroupElement State : Type u) where
  identityElement : GroupElement
  act : GroupElement → State → State
  identityAction :
    ∀ state,
      act identityElement state = state
  actionCompositionRef : String

end Mathematics.StratifiedBoundary
```
