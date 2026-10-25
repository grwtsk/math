# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantfd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a08834e4379be9bf06c2d86e69befd9a334ef130` · SHA-256 `fd2c5ef47fbb50ba8bae4d0b39543ff3e72578c22244e920004ccdf14f9ffe29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.GuardMsgs
import Std.Data.Json

open scoped Std.Json

/-- info: {"lookACalc": 131,
 "lemonCount": 100000000000000000000000000000000,
 "isCool": true,
 "isBug": null,
 "hello": "world",
 "cheese": ["edam", "cheddar", {"rank": 100.2, "kind": "spicy"}]}-/
#guard_msgs in
#eval json% {
  hello : "world",
  cheese : ["edam", "cheddar", {kind : "spicy", rank : 100.2}],
  lemonCount : 100e30,
  isCool : true,
  isBug : null,
  lookACalc: $(23 + 54 * 2)
}

-- See https://leanprover.zulipchat.com/#narrow/stream/270676-lean4/topic/json.20elaborator
example : Lean.Json := Id.run do
  let _x := true
  return json% {"x" : 1}
```
