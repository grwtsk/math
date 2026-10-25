# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOnlyPrivate.Variant3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f76cce13fe152f5e786f0ea3279f0221883f57d2` · SHA-256 `3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Init
import all Mathlib.Tactic.Linter.PrivateModule
import Lean.Elab.Command

open Lean

set_option linter.mathlibStandardSet true

theorem foo : True := trivial

def bar : Bool := true

-- Run the linter on artificial `eoi` syntax so that we can actually guard the message
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

-- Disable so that this test is silent
set_option linter.privateModule false
```
