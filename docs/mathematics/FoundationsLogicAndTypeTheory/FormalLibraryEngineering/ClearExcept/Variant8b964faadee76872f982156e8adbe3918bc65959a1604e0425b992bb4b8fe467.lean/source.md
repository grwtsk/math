# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExcept.Variant8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b870154d520eaae44204d1eca6c2e35a3bedf50` · SHA-256 `8b964faadee76872f982156e8adbe3918bc65959a1604e0425b992bb4b8fe467`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.ClearExcept

set_option linter.unusedTactic false
set_option linter.unusedVariables false

-- Most basic test
example (_delete_this : Nat) (dont_delete_this : Int) : Nat := by
  clear * - dont_delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clearExcept does not delete class instances
example [dont_delete_this : Inhabited Nat] (dont_delete_this2 : Prop) : Inhabited Nat := by
  clear * - dont_delete_this2
  assumption

-- Confirms that clearExcept can clear hypotheses even when they have dependencies
example (delete_this : Nat) (_delete_this2 : delete_this = delete_this) (dont_delete_this : Int) :
    Nat := by
  clear * - dont_delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clearExcept does not clear hypotheses
-- when they have dependencies that should not be cleared
example (dont_delete_this : Nat) (dont_delete_this2 : dont_delete_this = dont_delete_this) :
    Nat := by
  clear * - dont_delete_this2
  exact dont_delete_this

-- Confirms that clearExcept can preserve multiple identifiers
example (_delete_this : Nat) (dont_delete_this : Int) (dont_delete_this2 : Int) : Nat := by
  clear * - dont_delete_this dont_delete_this2
  fail_if_success assumption
  exact dont_delete_this.toNat + dont_delete_this2.toNat
```
