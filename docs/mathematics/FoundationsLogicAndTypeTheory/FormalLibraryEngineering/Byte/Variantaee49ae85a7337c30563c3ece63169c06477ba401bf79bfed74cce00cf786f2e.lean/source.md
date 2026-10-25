# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Byte.Variantaee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d15a988249c9c3ddecbffb28dead03046c491a83` · SHA-256 `aee49ae85a7337c30563c3ece63169c06477ba401bf79bfed74cce00cf786f2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.Bit

/-!
# Folder.Archive.Byte

Radiation role: archive-codec
BinaryMatrix spine: This module defines byte values before byte payloads are represented as BinaryMatrix rows.
Ontology: archive.byte
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: carrier
-/

namespace Folder
namespace Archive

abbrev Byte := Fin 256

namespace Byte

def toNat (b : Byte) : Nat := b.val

def ofNat? (n : Nat) : Option Byte :=
  if h : n < 256 then some ⟨n, h⟩ else none

structure ByteCodec where
  toBits : Byte → Fin 8 → Carrier.Bit
  ofBits : (Fin 8 → Carrier.Bit) → Byte
  roundtrip : ∀ b, ofBits (toBits b) = b

theorem byteCodec_roundtrip
    (C : ByteCodec)
    (b : Byte) :
    C.ofBits (C.toBits b) = b :=
  C.roundtrip b

def msb0CodecTarget : Prop :=
  Nonempty ByteCodec

end Byte
end Archive
end Folder
```
