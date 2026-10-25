# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReservedName2.Variant3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48b3f6c91449b52aa6babc6c862330b2f03a1671` · SHA-256 `3243c1499f91244329213febb6e4fd66d591b966a9af3db20f1bc1c34a53d87b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Init
import all Mathlib.Tactic.Linter.PrivateModule
public import MathlibTest.Linter.PrivateModule.ReservedName1

open Lean

-- `foo.eq_1` is still reserved:
/-- info: true -/
#guard_msgs in
run_cmd do
  logInfo m!"{isReservedName (← getEnv) ``foo.eq_1}"

-- `foo.eq_1` is not yet realized:
/-- info: reserved names: [] -/
#guard_msgs in
#show_new_reserved

-- realize `foo.eq_1`:
/--
info: @[backward_defeq] theorem foo.eq_1 : foo = true :=
Eq.refl foo
-/
#guard_msgs in
#print foo.eq_1

-- Make sure `foo.eq_1` is in the local constants, and does not start with `_private`
/-- info: reserved names: [foo.eq_1] -/
#guard_msgs in
#show_new_reserved

-- The linter should fire despite the public name `foo.eq_1` being present
-- Run the linter on artificial `eoi` syntax so that we can actually guard the message
set_option linter.mathlibStandardSet true in
open Mathlib.Linter Parser in
/--
warning: The current module only contains private declarations.

Consider adding `public section` at the beginning of the module, or selectively marking declarations as `public`. Mark a `def` with `@[expose]` if downstream code needs it to be definitionally equal to its body (e.g. for `unfold`). Alternatively, add `@[expose] public section` to mark every definition as exposed.

Note: This linter can be disabled with `set_option linter.privateModule false`
-/
#guard_msgs in
run_cmd do
  let eoi := mkNode ``Command.eoi #[mkAtom .none ""]
  privateModule.run eoi
```
