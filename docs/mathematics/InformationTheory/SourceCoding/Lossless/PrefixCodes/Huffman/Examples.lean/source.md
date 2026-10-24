# Complete source: GRWTSK.InformationTheory.Huffman.Examples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `639bffedba1f6935a199a3b9f7890b61dc37c6e5` · SHA-256 `6da667444a3fedaed7b89a816d7c3378ea6bfdbe3fc9679d5e162bc3c75197d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.InformationTheory.Huffman.RoundTrip

/-! Kernel-reduced wire examples fix the deterministic tie convention, MSB bit
order and singleton convention against independently recorded codec vectors.
The universal round trip is proved in RoundTrip, not inferred from examples. -/

namespace GRWTSK.InformationTheory.Huffman.Examples

set_option maxRecDepth 4096
set_option maxHeartbeats 2000000

def pythonAssignment : List UInt8 := [120, 61, 49, 10]

theorem assignment_bytes : (encode pythonAssignment).bytes = [228] := by decide

theorem assignment_bitCount : (encode pythonAssignment).bitCount = 8 := by decide

theorem assignment_roundTrip : decode (encode pythonAssignment) = some pythonAssignment :=
  decode_encode pythonAssignment

theorem deterministic_ties : (encode [97, 98, 98, 99, 99, 99]).bytes = [23, 128] := by
  decide

theorem singleton_zero_bits : (encode [122, 122, 122]).bytes = [0] := by decide

theorem singleton_bitCount : (encode [122, 122, 122]).bitCount = 3 := by decide

end GRWTSK.InformationTheory.Huffman.Examples
```
