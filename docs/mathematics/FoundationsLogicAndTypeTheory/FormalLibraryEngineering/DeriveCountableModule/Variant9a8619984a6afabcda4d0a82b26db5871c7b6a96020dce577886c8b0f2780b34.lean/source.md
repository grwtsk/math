# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveCountableModule.Variant9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e38c933abba2f2bcae741820c65663ffffb287e3` · SHA-256 `9a8619984a6afabcda4d0a82b26db5871c7b6a96020dce577886c8b0f2780b34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Basic.Countable.Basic
import Mathlib.Tactic.DeriveCountable

/-!
# Regression test: `deriving Countable` under the module system

The deriving handler emits user-facing code that mentions a few helper lemmas.
Under the module system, marking those helpers `private` makes them invisible
to importers (without `import all`), so `deriving Countable` failed with
`Unknown constant '_private.Mathlib.Tactic.DeriveCountable.0.…cons_eq_imp_init'`.

These tests cover the single-constructor MWE from the bug report and a
recursive case that exercises `cons_eq_imp` and `pair_encode_step`.
-/

namespace Test

inductive Single where
  | test
  deriving Countable

example : Countable Single := inferInstance

inductive Tree where
  | leaf (n : Nat)
  | node (l r : Tree)
  deriving Countable

example : Countable Tree := inferInstance

end Test
```
