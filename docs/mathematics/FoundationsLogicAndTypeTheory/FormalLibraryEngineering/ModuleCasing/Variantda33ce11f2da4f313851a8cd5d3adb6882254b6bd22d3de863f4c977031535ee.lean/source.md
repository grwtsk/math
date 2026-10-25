# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModuleCasing.Variantda33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c198e6d28922d3e4ed2514b4f61bf9ac5ab0592` · SHA-256 `da33ce11f2da4f313851a8cd5d3adb6882254b6bd22d3de863f4c977031535ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.TextBased

/-!
Unit tests for the module name case check in the text-based linters.
-/

open Mathlib.Linter.TextBased

/-- Some unit tests for `modulesNotUpperCamelCase` -/
def testModulesNotUpperCamelCase : IO Unit := do
  -- Explicitly enable the linter, although it is enabled by default.
  let opts : Lean.Options := linter.modulesUpperCamelCase.set {} true

  assert!((← modulesNotUpperCamelCase opts #[]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.Fine]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.AlsoFine_]) == 0)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.NotFine_.Foo]) == 1)

  assert!((← modulesNotUpperCamelCase opts #[`bad_module]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`GoodName, `bad_module, `bad_module]) == 2)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.BadModule__]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.lowerCase]) == 1)
  assert!((← modulesNotUpperCamelCase opts #[`Mathlib.snake_case]) == 1)

/--
info: error: module name 'Mathlib.NotFine_.Foo' is not in 'UpperCamelCase': it should be 'Mathlib.NotFine.Foo' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'bad_module' is not in 'UpperCamelCase': it should be 'BadModule' instead
error: module name 'Mathlib.BadModule__' is not in 'UpperCamelCase': it should be 'Mathlib.BadModule_' instead
error: module name 'Mathlib.lowerCase' is not in 'UpperCamelCase': it should be 'Mathlib.LowerCase' instead
error: module name 'Mathlib.snake_case' is not in 'UpperCamelCase': it should be 'Mathlib.SnakeCase' instead
-/
#guard_msgs in
#eval testModulesNotUpperCamelCase
```
