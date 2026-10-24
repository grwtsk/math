# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Probe.Variant363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e2db7477ca12e97d50b21d07ae43932e73e8a02` · SHA-256 `363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveSignedCoefficientRows
set_option autoImplicit false
open ArithmeticFunction
open RH16AdaptiveSignedCoefficients

example : truncatedConvolution 4 13 5 = vonMangoldt 5 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 7 = vonMangoldt 7 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 35 = 0 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]
```
