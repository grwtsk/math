# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Target.Variant4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74763a9883b965d889f22ca54028db9534969cdc` · SHA-256 `4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Mathlib.Init
import MathlibTest.Linter.InternalConstructor.Source

/--
@ +1:16...19
error: `Foo._mkInternal` is an internal constructor and should not be used directly.

Note: This linter can be disabled with `set_option linter.internalConstructors false`
-/
#guard_msgs (positions := true) in
def e₁ : Foo := ⟨4⟩

/--
@ +1:16...31
error: `Foo._mkInternal` is an internal constructor and should not be used directly.

Note: This linter can be disabled with `set_option linter.internalConstructors false`
-/
#guard_msgs (positions := true) in
def e₂ : Foo := Foo._mkInternal 4
```
