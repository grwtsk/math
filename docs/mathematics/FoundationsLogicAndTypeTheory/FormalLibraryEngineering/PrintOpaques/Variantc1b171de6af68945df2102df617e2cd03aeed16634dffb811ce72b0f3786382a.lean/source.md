# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintOpaques.Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2613778e4a170fcea287ee0d490d6afdf133337d` · SHA-256 `c1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.PrintOpaques

partial def foo : Unit → Nat := foo
def bar : Unit → Nat := foo

/--
info: 'bar' depends on opaque or partial definitions: [foo]
-/
#guard_msgs in
#print opaques bar

opaque qux : Nat
def quux : Bool := qux == 0

/--
info: 'quux' depends on opaque or partial definitions: [qux]
-/
#guard_msgs in
#print opaques quux

/-! Examples from the documentation. -/

/--
info: 'Classical.choice' depends on opaque or partial definitions: [Classical.choice]
-/
#guard_msgs in
#print opaques Classical.choice

/--
info: 'Classical.axiomOfChoice' does not use any opaque or partial definitions
-/
#guard_msgs in
#print opaques Classical.axiomOfChoice

/--
info: 'Std.HashMap.insert' depends on opaque or partial definitions: [System.Platform.getNumBits]
-/
#guard_msgs in
#print opaques Std.HashMap.insert

/--
info: 'Std.Stream.forIn' depends on opaque or partial definitions: [_private.Init.Data.Stream.0.Std.Stream.forIn.visit]
-/
#guard_msgs in
#print opaques Std.Stream.forIn
```
