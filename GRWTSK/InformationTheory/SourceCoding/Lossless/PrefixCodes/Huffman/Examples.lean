import GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.RoundTrip

/-! Kernel-reduced wire examples fix the deterministic tie convention, MSB bit
order and singleton convention against independently recorded codec vectors.
The universal round trip is proved in RoundTrip, not inferred from examples. -/

namespace GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Examples

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

end GRWTSK.InformationTheory.SourceCoding.Lossless.PrefixCodes.Huffman.Examples
