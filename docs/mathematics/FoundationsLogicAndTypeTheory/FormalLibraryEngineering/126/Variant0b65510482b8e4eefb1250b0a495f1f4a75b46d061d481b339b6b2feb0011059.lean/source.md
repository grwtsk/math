# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.126.Variant0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e768ea0398348f0c4d0c9a6d41af7c5e1f17330f` · SHA-256 `0b65510482b8e4eefb1250b0a495f1f4a75b46d061d481b339b6b2feb0011059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

set_option aesop.check.all true

-- TODO simp_all introduces spurious metavariables in this example
set_option aesop.check.rules false
set_option aesop.check.tree false

theorem foo {a : Nat → Nat} (ha : a 0 = 37) :
    (match h : a 0 with | 42 => by simp_all | n => n) = 37 := by
  aesop
```
