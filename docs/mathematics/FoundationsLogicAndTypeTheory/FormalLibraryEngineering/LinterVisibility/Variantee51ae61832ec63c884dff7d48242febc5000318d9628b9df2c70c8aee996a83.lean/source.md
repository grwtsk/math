# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinterVisibility.Variantee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `426109ab80e38ca81db09df13295805e48a3b462` · SHA-256 `ee51ae61832ec63c884dff7d48242febc5000318d9628b9df2c70c8aee996a83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

-- import `Linter` into both private and public scopes for testing
import Batteries.Tactic.Lint.Basic
public import Batteries.Tactic.Lint.Basic

open Batteries.Tactic.Lint

/--
error: Cannot add attribute `[env_linter]`: Declaration `foo` must be marked as `meta`
-/
#guard_msgs (error, drop warning) in
@[env_linter] def foo : Linter := sorry

/--
error: Cannot add attribute `[env_linter]`: Declaration `foo'` must be marked as `meta`
-/
#guard_msgs (error, drop warning) in
@[env_linter] public def foo' : Linter := sorry

/--
error: Cannot add attribute `[env_linter]`: Declaration `_private.BatteriesTest.linterVisibility.0.foo''` must be public
-/
#guard_msgs (error, drop warning) in
@[env_linter] meta def foo'' : Linter := sorry

/--
error: Invalid attribute scope: Attribute `[env_linter]` must be global, not `local`
-/
#guard_msgs (error, drop warning) in
@[local env_linter] public meta def foo''' : Linter := sorry

namespace Foo

/--
error: Invalid attribute scope: Attribute `[env_linter]` must be global, not `scoped`
-/
#guard_msgs (error, drop warning) in
@[scoped env_linter] public meta def foo'''' : Linter := sorry

end Foo
```
