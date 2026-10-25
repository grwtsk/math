# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Packet.Variant6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dac3306bac2ea43dfe172db5616a6df0afd82cf` · SHA-256 `6f705cee0a50ec632bbd1d597fbc01b9647d433e4e3c90af7c287a4e07b70000`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Rat.Lemmas

/-!
# Finite exact packet coordinates

This record is a rational finite-coordinate packet used by the exact diagonal
kernel.  It is not a claim about a general Hilbert--Schmidt realization.
-/

namespace Mathematics.SemiLocalDefect

structure Packet (Coordinate : Type u) where
  packetId : String
  amplitude : Coordinate → ℚ

end Mathematics.SemiLocalDefect
```
