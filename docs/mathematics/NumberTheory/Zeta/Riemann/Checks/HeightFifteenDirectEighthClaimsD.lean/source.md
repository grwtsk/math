# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsD

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb3998f16b277059a72e84418fe8b14a9b11808` · SHA-256 `4f888fa371574d7a1f9689601197e1da45a0269d57f93ec7415548703faa1792`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

/-- Eighth 150: global cells [1200,1208), expected signed contribution 0. -/
theorem eighth150 :
    chunk directTest directTerm 1200 8 = some 0 := by decide

/-- Eighth 151: global cells [1208,1216), expected signed contribution 0. -/
theorem eighth151 :
    chunk directTest directTerm 1208 8 = some 0 := by decide

/-- Eighth 152: global cells [1216,1224), expected signed contribution 0. -/
theorem eighth152 :
    chunk directTest directTerm 1216 8 = some 0 := by decide

/-- Eighth 153: global cells [1224,1232), expected signed contribution 0. -/
theorem eighth153 :
    chunk directTest directTerm 1224 8 = some 0 := by decide

/-- Eighth 154: global cells [1232,1240), expected signed contribution 0. -/
theorem eighth154 :
    chunk directTest directTerm 1232 8 = some 0 := by decide

/-- Eighth 155: global cells [1240,1248), expected signed contribution 0. -/
theorem eighth155 :
    chunk directTest directTerm 1240 8 = some 0 := by decide

/-- Eighth 156: global cells [1248,1256), expected signed contribution 0. -/
theorem eighth156 :
    chunk directTest directTerm 1248 8 = some 0 := by decide

/-- Eighth 157: global cells [1256,1264), expected signed contribution 0. -/
theorem eighth157 :
    chunk directTest directTerm 1256 8 = some 0 := by decide

/-- Eighth 158: global cells [1264,1272), expected signed contribution 0. -/
theorem eighth158 :
    chunk directTest directTerm 1264 8 = some 0 := by decide

/-- Eighth 159: global cells [1272,1280), expected signed contribution 0. -/
theorem eighth159 :
    chunk directTest directTerm 1272 8 = some 0 := by decide

/-- Eighth 160: global cells [1280,1288), expected signed contribution 0. -/
theorem eighth160 :
    chunk directTest directTerm 1280 8 = some 0 := by decide

/-- Eighth 161: global cells [1288,1296), expected signed contribution 0. -/
theorem eighth161 :
    chunk directTest directTerm 1288 8 = some 0 := by decide

/-- Eighth 162: global cells [1296,1304), expected signed contribution 0. -/
theorem eighth162 :
    chunk directTest directTerm 1296 8 = some 0 := by decide

/-- Eighth 163: global cells [1304,1312), expected signed contribution 0. -/
theorem eighth163 :
    chunk directTest directTerm 1304 8 = some 0 := by decide

/-- Eighth 164: global cells [1312,1320), expected signed contribution 0. -/
theorem eighth164 :
    chunk directTest directTerm 1312 8 = some 0 := by decide

/-- Eighth 165: global cells [1320,1328), expected signed contribution 0. -/
theorem eighth165 :
    chunk directTest directTerm 1320 8 = some 0 := by decide

/-- Eighth 166: global cells [1328,1336), expected signed contribution 0. -/
theorem eighth166 :
    chunk directTest directTerm 1328 8 = some 0 := by decide

/-- Eighth 167: global cells [1336,1344), expected signed contribution 0. -/
theorem eighth167 :
    chunk directTest directTerm 1336 8 = some 0 := by decide

/-- Eighth 168: global cells [1344,1352), expected signed contribution 0. -/
theorem eighth168 :
    chunk directTest directTerm 1344 8 = some 0 := by decide

/-- Eighth 169: global cells [1352,1360), expected signed contribution 0. -/
theorem eighth169 :
    chunk directTest directTerm 1352 8 = some 0 := by decide

/-- Eighth 170: global cells [1360,1368), expected signed contribution 0. -/
theorem eighth170 :
    chunk directTest directTerm 1360 8 = some 0 := by decide

/-- Eighth 171: global cells [1368,1376), expected signed contribution 0. -/
theorem eighth171 :
    chunk directTest directTerm 1368 8 = some 0 := by decide

/-- Eighth 172: global cells [1376,1384), expected signed contribution 0. -/
theorem eighth172 :
    chunk directTest directTerm 1376 8 = some 0 := by decide

/-- Eighth 173: global cells [1384,1392), expected signed contribution 0. -/
theorem eighth173 :
    chunk directTest directTerm 1384 8 = some 0 := by decide

/-- Eighth 174: global cells [1392,1400), expected signed contribution 0. -/
theorem eighth174 :
    chunk directTest directTerm 1392 8 = some 0 := by decide

/-- Eighth 175: global cells [1400,1408), expected signed contribution 0. -/
theorem eighth175 :
    chunk directTest directTerm 1400 8 = some 0 := by decide

/-- Eighth 176: global cells [1408,1416), expected signed contribution 0. -/
theorem eighth176 :
    chunk directTest directTerm 1408 8 = some 0 := by decide

/-- Eighth 177: global cells [1416,1424), expected signed contribution 0. -/
theorem eighth177 :
    chunk directTest directTerm 1416 8 = some 0 := by decide

/-- Eighth 178: global cells [1424,1432), expected signed contribution 0. -/
theorem eighth178 :
    chunk directTest directTerm 1424 8 = some 0 := by decide

/-- Eighth 179: global cells [1432,1440), expected signed contribution 0. -/
theorem eighth179 :
    chunk directTest directTerm 1432 8 = some 0 := by decide

/-- Eighth 180: global cells [1440,1448), expected signed contribution 0. -/
theorem eighth180 :
    chunk directTest directTerm 1440 8 = some 0 := by decide

/-- Eighth 181: global cells [1448,1456), expected signed contribution 0. -/
theorem eighth181 :
    chunk directTest directTerm 1448 8 = some 0 := by decide

/-- Eighth 182: global cells [1456,1464), expected signed contribution 0. -/
theorem eighth182 :
    chunk directTest directTerm 1456 8 = some 0 := by decide

/-- Eighth 183: global cells [1464,1472), expected signed contribution 0. -/
theorem eighth183 :
    chunk directTest directTerm 1464 8 = some 0 := by decide

/-- Eighth 184: global cells [1472,1480), expected signed contribution 0. -/
theorem eighth184 :
    chunk directTest directTerm 1472 8 = some 0 := by decide

/-- Eighth 185: global cells [1480,1488), expected signed contribution 0. -/
theorem eighth185 :
    chunk directTest directTerm 1480 8 = some 0 := by decide

/-- Eighth 186: global cells [1488,1496), expected signed contribution 0. -/
theorem eighth186 :
    chunk directTest directTerm 1488 8 = some 0 := by decide

/-- Eighth 187: global cells [1496,1504), expected signed contribution 0. -/
theorem eighth187 :
    chunk directTest directTerm 1496 8 = some 0 := by decide

/-- Eighth 188: global cells [1504,1512), expected signed contribution 0. -/
theorem eighth188 :
    chunk directTest directTerm 1504 8 = some 0 := by decide

/-- Eighth 189: global cells [1512,1520), expected signed contribution 0. -/
theorem eighth189 :
    chunk directTest directTerm 1512 8 = some 0 := by decide

/-- Eighth 190: global cells [1520,1528), expected signed contribution 0. -/
theorem eighth190 :
    chunk directTest directTerm 1520 8 = some 0 := by decide

/-- Eighth 191: global cells [1528,1536), expected signed contribution 0. -/
theorem eighth191 :
    chunk directTest directTerm 1528 8 = some 0 := by decide

/-- Eighth 192: global cells [1536,1544), expected signed contribution 0. -/
theorem eighth192 :
    chunk directTest directTerm 1536 8 = some 0 := by decide

/-- Eighth 193: global cells [1544,1552), expected signed contribution 0. -/
theorem eighth193 :
    chunk directTest directTerm 1544 8 = some 0 := by decide

/-- Eighth 194: global cells [1552,1560), expected signed contribution 0. -/
theorem eighth194 :
    chunk directTest directTerm 1552 8 = some 0 := by decide

/-- Eighth 195: global cells [1560,1568), expected signed contribution 0. -/
theorem eighth195 :
    chunk directTest directTerm 1560 8 = some 0 := by decide

/-- Eighth 196: global cells [1568,1576), expected signed contribution 0. -/
theorem eighth196 :
    chunk directTest directTerm 1568 8 = some 0 := by decide

/-- Eighth 197: global cells [1576,1584), expected signed contribution 0. -/
theorem eighth197 :
    chunk directTest directTerm 1576 8 = some 0 := by decide

/-- Eighth 198: global cells [1584,1592), expected signed contribution 0. -/
theorem eighth198 :
    chunk directTest directTerm 1584 8 = some 0 := by decide

/-- Eighth 199: global cells [1592,1600), expected signed contribution 0. -/
theorem eighth199 :
    chunk directTest directTerm 1592 8 = some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthClaims
```
