# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClaimsB

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf30e95eac5c6f5d1592ac4599a0bc3a20a360f9` · SHA-256 `47af9c45d776c6ca8cd71e7d27f665a03fc2189aa65e11590db25d68924e18a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

/-- Eighth 50: global cells [400,408), expected signed contribution 0. -/
theorem eighth050 :
    chunk directTest directTerm 400 8 = some 0 := by decide

/-- Eighth 51: global cells [408,416), expected signed contribution 0. -/
theorem eighth051 :
    chunk directTest directTerm 408 8 = some 0 := by decide

/-- Eighth 52: global cells [416,424), expected signed contribution 0. -/
theorem eighth052 :
    chunk directTest directTerm 416 8 = some 0 := by decide

/-- Eighth 53: global cells [424,432), expected signed contribution 0. -/
theorem eighth053 :
    chunk directTest directTerm 424 8 = some 0 := by decide

/-- Eighth 54: global cells [432,440), expected signed contribution 0. -/
theorem eighth054 :
    chunk directTest directTerm 432 8 = some 0 := by decide

/-- Eighth 55: global cells [440,448), expected signed contribution 0. -/
theorem eighth055 :
    chunk directTest directTerm 440 8 = some 0 := by decide

/-- Eighth 56: global cells [448,456), expected signed contribution 0. -/
theorem eighth056 :
    chunk directTest directTerm 448 8 = some 0 := by decide

/-- Eighth 57: global cells [456,464), expected signed contribution 0. -/
theorem eighth057 :
    chunk directTest directTerm 456 8 = some 0 := by decide

/-- Eighth 58: global cells [464,472), expected signed contribution 0. -/
theorem eighth058 :
    chunk directTest directTerm 464 8 = some 0 := by decide

/-- Eighth 59: global cells [472,480), expected signed contribution 0. -/
theorem eighth059 :
    chunk directTest directTerm 472 8 = some 0 := by decide

/-- Eighth 60: global cells [480,488), expected signed contribution 0. -/
theorem eighth060 :
    chunk directTest directTerm 480 8 = some 0 := by decide

/-- Eighth 61: global cells [488,496), expected signed contribution 0. -/
theorem eighth061 :
    chunk directTest directTerm 488 8 = some 0 := by decide

/-- Eighth 62: global cells [496,504), expected signed contribution 0. -/
theorem eighth062 :
    chunk directTest directTerm 496 8 = some 0 := by decide

/-- Eighth 63: global cells [504,512), expected signed contribution 0. -/
theorem eighth063 :
    chunk directTest directTerm 504 8 = some 0 := by decide

/-- Eighth 64: global cells [512,520), expected signed contribution 0. -/
theorem eighth064 :
    chunk directTest directTerm 512 8 = some 0 := by decide

/-- Eighth 65: global cells [520,528), expected signed contribution 0. -/
theorem eighth065 :
    chunk directTest directTerm 520 8 = some 0 := by decide

/-- Eighth 66: global cells [528,536), expected signed contribution 0. -/
theorem eighth066 :
    chunk directTest directTerm 528 8 = some 0 := by decide

/-- Eighth 67: global cells [536,544), expected signed contribution 0. -/
theorem eighth067 :
    chunk directTest directTerm 536 8 = some 0 := by decide

/-- Eighth 68: global cells [544,552), expected signed contribution 0. -/
theorem eighth068 :
    chunk directTest directTerm 544 8 = some 0 := by decide

/-- Eighth 69: global cells [552,560), expected signed contribution 0. -/
theorem eighth069 :
    chunk directTest directTerm 552 8 = some 0 := by decide

/-- Eighth 70: global cells [560,568), expected signed contribution 0. -/
theorem eighth070 :
    chunk directTest directTerm 560 8 = some 0 := by decide

/-- Eighth 71: global cells [568,576), expected signed contribution 0. -/
theorem eighth071 :
    chunk directTest directTerm 568 8 = some 0 := by decide

/-- Eighth 72: global cells [576,584), expected signed contribution 0. -/
theorem eighth072 :
    chunk directTest directTerm 576 8 = some 0 := by decide

/-- Eighth 73: global cells [584,592), expected signed contribution 0. -/
theorem eighth073 :
    chunk directTest directTerm 584 8 = some 0 := by decide

/-- Eighth 74: global cells [592,600), expected signed contribution 0. -/
theorem eighth074 :
    chunk directTest directTerm 592 8 = some 0 := by decide

/-- Eighth 75: global cells [600,608), expected signed contribution 0. -/
theorem eighth075 :
    chunk directTest directTerm 600 8 = some 0 := by decide

/-- Eighth 76: global cells [608,616), expected signed contribution 0. -/
theorem eighth076 :
    chunk directTest directTerm 608 8 = some 0 := by decide

/-- Eighth 77: global cells [616,624), expected signed contribution 0. -/
theorem eighth077 :
    chunk directTest directTerm 616 8 = some 0 := by decide

/-- Eighth 78: global cells [624,632), expected signed contribution 0. -/
theorem eighth078 :
    chunk directTest directTerm 624 8 = some 0 := by decide

/-- Eighth 79: global cells [632,640), expected signed contribution 0. -/
theorem eighth079 :
    chunk directTest directTerm 632 8 = some 0 := by decide

/-- Eighth 80: global cells [640,648), expected signed contribution 0. -/
theorem eighth080 :
    chunk directTest directTerm 640 8 = some 0 := by decide

/-- Eighth 81: global cells [648,656), expected signed contribution 0. -/
theorem eighth081 :
    chunk directTest directTerm 648 8 = some 0 := by decide

/-- Eighth 82: global cells [656,664), expected signed contribution 0. -/
theorem eighth082 :
    chunk directTest directTerm 656 8 = some 0 := by decide

/-- Eighth 83: global cells [664,672), expected signed contribution 0. -/
theorem eighth083 :
    chunk directTest directTerm 664 8 = some 0 := by decide

/-- Eighth 84: global cells [672,680), expected signed contribution 0. -/
theorem eighth084 :
    chunk directTest directTerm 672 8 = some 0 := by decide

/-- Eighth 85: global cells [680,688), expected signed contribution 0. -/
theorem eighth085 :
    chunk directTest directTerm 680 8 = some 0 := by decide

/-- Eighth 86: global cells [688,696), expected signed contribution 0. -/
theorem eighth086 :
    chunk directTest directTerm 688 8 = some 0 := by decide

/-- Eighth 87: global cells [696,704), expected signed contribution 0. -/
theorem eighth087 :
    chunk directTest directTerm 696 8 = some 0 := by decide

/-- Eighth 88: global cells [704,712), expected signed contribution 0. -/
theorem eighth088 :
    chunk directTest directTerm 704 8 = some 0 := by decide

/-- Eighth 89: global cells [712,720), expected signed contribution 0. -/
theorem eighth089 :
    chunk directTest directTerm 712 8 = some 0 := by decide

/-- Eighth 90: global cells [720,728), expected signed contribution 0. -/
theorem eighth090 :
    chunk directTest directTerm 720 8 = some 0 := by decide

/-- Eighth 91: global cells [728,736), expected signed contribution 0. -/
theorem eighth091 :
    chunk directTest directTerm 728 8 = some 0 := by decide

/-- Eighth 92: global cells [736,744), expected signed contribution 0. -/
theorem eighth092 :
    chunk directTest directTerm 736 8 = some 0 := by decide

/-- Eighth 93: global cells [744,752), expected signed contribution 0. -/
theorem eighth093 :
    chunk directTest directTerm 744 8 = some 0 := by decide

/-- Eighth 94: global cells [752,760), expected signed contribution 0. -/
theorem eighth094 :
    chunk directTest directTerm 752 8 = some 0 := by decide

/-- Eighth 95: global cells [760,768), expected signed contribution 0. -/
theorem eighth095 :
    chunk directTest directTerm 760 8 = some 0 := by decide

/-- Eighth 96: global cells [768,776), expected signed contribution 0. -/
theorem eighth096 :
    chunk directTest directTerm 768 8 = some 0 := by decide

/-- Eighth 97: global cells [776,784), expected signed contribution 0. -/
theorem eighth097 :
    chunk directTest directTerm 776 8 = some 0 := by decide

/-- Eighth 98: global cells [784,792), expected signed contribution 0. -/
theorem eighth098 :
    chunk directTest directTerm 784 8 = some 0 := by decide

/-- Eighth 99: global cells [792,800), expected signed contribution 0. -/
theorem eighth099 :
    chunk directTest directTerm 792 8 = some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthClaims
```
