# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefWantedPerf.Variantdf7b9c5b476f58cb2ec48b9895f6c380ab6d11f2c8c74b123299ce354e8a07f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `399ee711a00229a7e2944226e85968418ecb85f0` · SHA-256 `df7b9c5b476f58cb2ec48b9895f6c380ab6d11f2c8c74b123299ce354e8a07f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Util.ProofWanted

/-!
# Performance guard for `def_wanted` / `instance_wanted`

`instance_wanted`s are included *on use* (like `variable [inst]`): a later declaration carries only
the instances it actually needs. A declaration whose statement does not use the sibling instances
carries none of them — it never re-nests every prior instance's binders into the next, which used to
blow up super-exponentially in the number of `instance_wanted`s (and left a shared dependency
dangling), making `def_wanted` unusable for specifications carrying several wanted instances (e.g. a
group scheme that is at once proper, smooth, and geometrically irreducible).

That this file elaborates quickly *is* the test; the `#check` pins the resulting flat shape.
-/

namespace DefWantedPerf

private class P1 (n : Nat) : Prop
private class P2 (n : Nat) : Prop
private class P3 (n : Nat) : Prop
private class P4 (n : Nat) : Prop
private class P5 (n : Nat) : Prop
private class P6 (n : Nat) : Prop

def_wanted shared_base : Nat

instance_wanted iP1 : P1 ❰shared_base❱
instance_wanted iP2 : P2 ❰shared_base❱
instance_wanted iP3 : P3 ❰shared_base❱
instance_wanted iP4 : P4 ❰shared_base❱
instance_wanted iP5 : P5 ❰shared_base❱
instance_wanted iP6 : P6 ❰shared_base❱

-- The sixth instance carries only the shared dependency it uses; none of `iP1 … iP5` (it does not
-- use them), so there is no nesting to blow up.
/--
info: @iP6 : {d_shared_base : shared_base.Val} → DefWanted (P6 d_shared_base)
-/
#guard_msgs in #check @iP6

end DefWantedPerf
```
