# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsE

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f12545fbc759be2cb55176a34c9aeb5087d3eff` · SHA-256 `fb72b5e46e4a9cae87572219b8baac99c8dfc7530de0ef136df4c5a596ded349`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthBlocks

set_option autoImplicit false

/-!
# Separate direct decisions for eight-cell height-fifteen pieces

Each theorem asks Lean to decide one bounded local equality over the unchanged
direct cell predicate and signed term. No theorem has been elaborated or kernel
accepted. The final 3-cell suffix remains explicit.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthClaims

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

/-- Eighth 200: global cells [1600,1608), expected signed contribution 0. -/
theorem eighth200 :
    chunk directTest directTerm 1600 8 = some 0 := by decide

/-- Eighth 201: global cells [1608,1616), expected signed contribution 0. -/
theorem eighth201 :
    chunk directTest directTerm 1608 8 = some 0 := by decide

/-- Eighth 202: global cells [1616,1624), expected signed contribution 0. -/
theorem eighth202 :
    chunk directTest directTerm 1616 8 = some 0 := by decide

/-- Eighth 203: global cells [1624,1632), expected signed contribution 0. -/
theorem eighth203 :
    chunk directTest directTerm 1624 8 = some 0 := by decide

/-- Eighth 204: global cells [1632,1640), expected signed contribution 0. -/
theorem eighth204 :
    chunk directTest directTerm 1632 8 = some 0 := by decide

/-- Eighth 205: global cells [1640,1648), expected signed contribution 0. -/
theorem eighth205 :
    chunk directTest directTerm 1640 8 = some 0 := by decide

/-- Eighth 206: global cells [1648,1656), expected signed contribution 0. -/
theorem eighth206 :
    chunk directTest directTerm 1648 8 = some 0 := by decide

/-- Eighth 207: global cells [1656,1664), expected signed contribution 0. -/
theorem eighth207 :
    chunk directTest directTerm 1656 8 = some 0 := by decide

/-- Eighth 208: global cells [1664,1672), expected signed contribution 0. -/
theorem eighth208 :
    chunk directTest directTerm 1664 8 = some 0 := by decide

/-- Eighth 209: global cells [1672,1680), expected signed contribution 0. -/
theorem eighth209 :
    chunk directTest directTerm 1672 8 = some 0 := by decide

/-- Eighth 210: global cells [1680,1688), expected signed contribution 0. -/
theorem eighth210 :
    chunk directTest directTerm 1680 8 = some 0 := by decide

/-- Eighth 211: global cells [1688,1696), expected signed contribution 0. -/
theorem eighth211 :
    chunk directTest directTerm 1688 8 = some 0 := by decide

/-- Eighth 212: global cells [1696,1704), expected signed contribution 0. -/
theorem eighth212 :
    chunk directTest directTerm 1696 8 = some 0 := by decide

/-- Eighth 213: global cells [1704,1712), expected signed contribution 0. -/
theorem eighth213 :
    chunk directTest directTerm 1704 8 = some 0 := by decide

/-- Eighth 214: global cells [1712,1720), expected signed contribution 0. -/
theorem eighth214 :
    chunk directTest directTerm 1712 8 = some 0 := by decide

/-- Eighth 215: global cells [1720,1728), expected signed contribution 0. -/
theorem eighth215 :
    chunk directTest directTerm 1720 8 = some 0 := by decide

/-- Eighth 216: global cells [1728,1736), expected signed contribution 0. -/
theorem eighth216 :
    chunk directTest directTerm 1728 8 = some 0 := by decide

/-- Eighth 217: global cells [1736,1744), expected signed contribution 0. -/
theorem eighth217 :
    chunk directTest directTerm 1736 8 = some 0 := by decide

/-- Eighth 218: global cells [1744,1752), expected signed contribution 0. -/
theorem eighth218 :
    chunk directTest directTerm 1744 8 = some 0 := by decide

/-- Eighth 219: global cells [1752,1760), expected signed contribution 0. -/
theorem eighth219 :
    chunk directTest directTerm 1752 8 = some 0 := by decide

/-- Eighth 220: global cells [1760,1768), expected signed contribution 0. -/
theorem eighth220 :
    chunk directTest directTerm 1760 8 = some 0 := by decide

/-- Eighth 221: global cells [1768,1776), expected signed contribution 0. -/
theorem eighth221 :
    chunk directTest directTerm 1768 8 = some 0 := by decide

/-- Eighth 222: global cells [1776,1784), expected signed contribution 0. -/
theorem eighth222 :
    chunk directTest directTerm 1776 8 = some 0 := by decide

/-- Eighth 223: global cells [1784,1792), expected signed contribution 0. -/
theorem eighth223 :
    chunk directTest directTerm 1784 8 = some 0 := by decide

/-- Eighth 224: global cells [1792,1800), expected signed contribution 0. -/
theorem eighth224 :
    chunk directTest directTerm 1792 8 = some 0 := by decide

/-- Eighth 225: global cells [1800,1808), expected signed contribution 0. -/
theorem eighth225 :
    chunk directTest directTerm 1800 8 = some 0 := by decide

/-- Eighth 226: global cells [1808,1816), expected signed contribution 0. -/
theorem eighth226 :
    chunk directTest directTerm 1808 8 = some 0 := by decide

/-- Eighth 227: global cells [1816,1824), expected signed contribution 0. -/
theorem eighth227 :
    chunk directTest directTerm 1816 8 = some 0 := by decide

/-- Eighth 228: global cells [1824,1832), expected signed contribution 0. -/
theorem eighth228 :
    chunk directTest directTerm 1824 8 = some 0 := by decide

/-- Eighth 229: global cells [1832,1840), expected signed contribution 0. -/
theorem eighth229 :
    chunk directTest directTerm 1832 8 = some 0 := by decide

/-- Eighth 230: global cells [1840,1848), expected signed contribution 0. -/
theorem eighth230 :
    chunk directTest directTerm 1840 8 = some 0 := by decide

/-- Eighth 231: global cells [1848,1856), expected signed contribution 0. -/
theorem eighth231 :
    chunk directTest directTerm 1848 8 = some 0 := by decide

/-- Eighth 232: global cells [1856,1864), expected signed contribution 0. -/
theorem eighth232 :
    chunk directTest directTerm 1856 8 = some 0 := by decide

/-- Eighth 233: global cells [1864,1872), expected signed contribution 0. -/
theorem eighth233 :
    chunk directTest directTerm 1864 8 = some 0 := by decide

/-- Eighth 234: global cells [1872,1880), expected signed contribution 0. -/
theorem eighth234 :
    chunk directTest directTerm 1872 8 = some 0 := by decide

/-- Eighth 235: global cells [1880,1888), expected signed contribution 0. -/
theorem eighth235 :
    chunk directTest directTerm 1880 8 = some 0 := by decide

/-- Eighth 236: global cells [1888,1896), expected signed contribution 0. -/
theorem eighth236 :
    chunk directTest directTerm 1888 8 = some 0 := by decide

/-- Eighth 237: global cells [1896,1904), expected signed contribution 0. -/
theorem eighth237 :
    chunk directTest directTerm 1896 8 = some 0 := by decide

/-- Eighth 238: global cells [1904,1912), expected signed contribution 0. -/
theorem eighth238 :
    chunk directTest directTerm 1904 8 = some 0 := by decide

/-- Eighth 239: global cells [1912,1920), expected signed contribution 0. -/
theorem eighth239 :
    chunk directTest directTerm 1912 8 = some 0 := by decide

/-- Eighth 240: global cells [1920,1928), expected signed contribution 0. -/
theorem eighth240 :
    chunk directTest directTerm 1920 8 = some 0 := by decide

/-- Eighth 241: global cells [1928,1936), expected signed contribution 0. -/
theorem eighth241 :
    chunk directTest directTerm 1928 8 = some 0 := by decide

/-- Eighth 242: global cells [1936,1944), expected signed contribution 0. -/
theorem eighth242 :
    chunk directTest directTerm 1936 8 = some 0 := by decide

/-- Eighth 243: global cells [1944,1952), expected signed contribution 0. -/
theorem eighth243 :
    chunk directTest directTerm 1944 8 = some 0 := by decide

/-- Eighth 244: global cells [1952,1960), expected signed contribution 0. -/
theorem eighth244 :
    chunk directTest directTerm 1952 8 = some 0 := by decide

/-- Eighth 245: global cells [1960,1968), expected signed contribution 0. -/
theorem eighth245 :
    chunk directTest directTerm 1960 8 = some 0 := by decide

/-- Eighth 246: global cells [1968,1976), expected signed contribution 0. -/
theorem eighth246 :
    chunk directTest directTerm 1968 8 = some 0 := by decide

/-- Eighth 247: global cells [1976,1984), expected signed contribution 0. -/
theorem eighth247 :
    chunk directTest directTerm 1976 8 = some 0 := by decide

/-- Eighth 248: global cells [1984,1992), expected signed contribution 0. -/
theorem eighth248 :
    chunk directTest directTerm 1984 8 = some 0 := by decide

/-- Eighth 249: global cells [1992,2000), expected signed contribution 0. -/
theorem eighth249 :
    chunk directTest directTerm 1992 8 = some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthClaims
```
