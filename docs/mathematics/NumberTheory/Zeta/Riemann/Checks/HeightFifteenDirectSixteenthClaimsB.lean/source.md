# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthClaimsB

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82238341c3133c14574c7c2812ac7a117c3ba590` · SHA-256 `30a25782eb34463b8d72efa1140ec4c1a6779f590958d5629000910ec7ec39e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthBlocks

set_option autoImplicit false

/-!
# Separate direct decisions for four-cell height-fifteen pieces, part B

Each theorem asks Lean to decide one bounded local equality over the unchanged
direct cell predicate and signed term. No theorem has been elaborated or kernel
accepted. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthClaims

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

theorem sixteenth100 : chunk directTest directTerm 400 4 = some 0 := by decide
theorem sixteenth101 : chunk directTest directTerm 404 4 = some 0 := by decide
theorem sixteenth102 : chunk directTest directTerm 408 4 = some 0 := by decide
theorem sixteenth103 : chunk directTest directTerm 412 4 = some 0 := by decide
theorem sixteenth104 : chunk directTest directTerm 416 4 = some 0 := by decide
theorem sixteenth105 : chunk directTest directTerm 420 4 = some 0 := by decide
theorem sixteenth106 : chunk directTest directTerm 424 4 = some 0 := by decide
theorem sixteenth107 : chunk directTest directTerm 428 4 = some 0 := by decide
theorem sixteenth108 : chunk directTest directTerm 432 4 = some 0 := by decide
theorem sixteenth109 : chunk directTest directTerm 436 4 = some 0 := by decide
theorem sixteenth110 : chunk directTest directTerm 440 4 = some 0 := by decide
theorem sixteenth111 : chunk directTest directTerm 444 4 = some 0 := by decide
theorem sixteenth112 : chunk directTest directTerm 448 4 = some 0 := by decide
theorem sixteenth113 : chunk directTest directTerm 452 4 = some 0 := by decide
theorem sixteenth114 : chunk directTest directTerm 456 4 = some 0 := by decide
theorem sixteenth115 : chunk directTest directTerm 460 4 = some 0 := by decide
theorem sixteenth116 : chunk directTest directTerm 464 4 = some 0 := by decide
theorem sixteenth117 : chunk directTest directTerm 468 4 = some 0 := by decide
theorem sixteenth118 : chunk directTest directTerm 472 4 = some 0 := by decide
theorem sixteenth119 : chunk directTest directTerm 476 4 = some 0 := by decide
theorem sixteenth120 : chunk directTest directTerm 480 4 = some 0 := by decide
theorem sixteenth121 : chunk directTest directTerm 484 4 = some 0 := by decide
theorem sixteenth122 : chunk directTest directTerm 488 4 = some 0 := by decide
theorem sixteenth123 : chunk directTest directTerm 492 4 = some 0 := by decide
theorem sixteenth124 : chunk directTest directTerm 496 4 = some 0 := by decide
theorem sixteenth125 : chunk directTest directTerm 500 4 = some 0 := by decide
theorem sixteenth126 : chunk directTest directTerm 504 4 = some 0 := by decide
theorem sixteenth127 : chunk directTest directTerm 508 4 = some 0 := by decide
theorem sixteenth128 : chunk directTest directTerm 512 4 = some 0 := by decide
theorem sixteenth129 : chunk directTest directTerm 516 4 = some 0 := by decide
theorem sixteenth130 : chunk directTest directTerm 520 4 = some 0 := by decide
theorem sixteenth131 : chunk directTest directTerm 524 4 = some 0 := by decide
theorem sixteenth132 : chunk directTest directTerm 528 4 = some 0 := by decide
theorem sixteenth133 : chunk directTest directTerm 532 4 = some 0 := by decide
theorem sixteenth134 : chunk directTest directTerm 536 4 = some 0 := by decide
theorem sixteenth135 : chunk directTest directTerm 540 4 = some 0 := by decide
theorem sixteenth136 : chunk directTest directTerm 544 4 = some 0 := by decide
theorem sixteenth137 : chunk directTest directTerm 548 4 = some 0 := by decide
theorem sixteenth138 : chunk directTest directTerm 552 4 = some 0 := by decide
theorem sixteenth139 : chunk directTest directTerm 556 4 = some 0 := by decide
theorem sixteenth140 : chunk directTest directTerm 560 4 = some 0 := by decide
theorem sixteenth141 : chunk directTest directTerm 564 4 = some 0 := by decide
theorem sixteenth142 : chunk directTest directTerm 568 4 = some 0 := by decide
theorem sixteenth143 : chunk directTest directTerm 572 4 = some 0 := by decide
theorem sixteenth144 : chunk directTest directTerm 576 4 = some 0 := by decide
theorem sixteenth145 : chunk directTest directTerm 580 4 = some 0 := by decide
theorem sixteenth146 : chunk directTest directTerm 584 4 = some 0 := by decide
theorem sixteenth147 : chunk directTest directTerm 588 4 = some 0 := by decide
theorem sixteenth148 : chunk directTest directTerm 592 4 = some 0 := by decide
theorem sixteenth149 : chunk directTest directTerm 596 4 = some 0 := by decide
theorem sixteenth150 : chunk directTest directTerm 600 4 = some 0 := by decide
theorem sixteenth151 : chunk directTest directTerm 604 4 = some 0 := by decide
theorem sixteenth152 : chunk directTest directTerm 608 4 = some 0 := by decide
theorem sixteenth153 : chunk directTest directTerm 612 4 = some 0 := by decide
theorem sixteenth154 : chunk directTest directTerm 616 4 = some 0 := by decide
theorem sixteenth155 : chunk directTest directTerm 620 4 = some 0 := by decide
theorem sixteenth156 : chunk directTest directTerm 624 4 = some 0 := by decide
theorem sixteenth157 : chunk directTest directTerm 628 4 = some 0 := by decide
theorem sixteenth158 : chunk directTest directTerm 632 4 = some 0 := by decide
theorem sixteenth159 : chunk directTest directTerm 636 4 = some 0 := by decide
theorem sixteenth160 : chunk directTest directTerm 640 4 = some 0 := by decide
theorem sixteenth161 : chunk directTest directTerm 644 4 = some 0 := by decide
theorem sixteenth162 : chunk directTest directTerm 648 4 = some 0 := by decide
theorem sixteenth163 : chunk directTest directTerm 652 4 = some 0 := by decide
theorem sixteenth164 : chunk directTest directTerm 656 4 = some 0 := by decide
theorem sixteenth165 : chunk directTest directTerm 660 4 = some 0 := by decide
theorem sixteenth166 : chunk directTest directTerm 664 4 = some 0 := by decide
theorem sixteenth167 : chunk directTest directTerm 668 4 = some 0 := by decide
theorem sixteenth168 : chunk directTest directTerm 672 4 = some 0 := by decide
theorem sixteenth169 : chunk directTest directTerm 676 4 = some 0 := by decide
theorem sixteenth170 : chunk directTest directTerm 680 4 = some 0 := by decide
theorem sixteenth171 : chunk directTest directTerm 684 4 = some 0 := by decide
theorem sixteenth172 : chunk directTest directTerm 688 4 = some 0 := by decide
theorem sixteenth173 : chunk directTest directTerm 692 4 = some 0 := by decide
theorem sixteenth174 : chunk directTest directTerm 696 4 = some 0 := by decide
theorem sixteenth175 : chunk directTest directTerm 700 4 = some 0 := by decide
theorem sixteenth176 : chunk directTest directTerm 704 4 = some 0 := by decide
theorem sixteenth177 : chunk directTest directTerm 708 4 = some 0 := by decide
theorem sixteenth178 : chunk directTest directTerm 712 4 = some 0 := by decide
theorem sixteenth179 : chunk directTest directTerm 716 4 = some 0 := by decide
theorem sixteenth180 : chunk directTest directTerm 720 4 = some 0 := by decide
theorem sixteenth181 : chunk directTest directTerm 724 4 = some 0 := by decide
theorem sixteenth182 : chunk directTest directTerm 728 4 = some 0 := by decide
theorem sixteenth183 : chunk directTest directTerm 732 4 = some 0 := by decide
theorem sixteenth184 : chunk directTest directTerm 736 4 = some 0 := by decide
theorem sixteenth185 : chunk directTest directTerm 740 4 = some 0 := by decide
theorem sixteenth186 : chunk directTest directTerm 744 4 = some 0 := by decide
theorem sixteenth187 : chunk directTest directTerm 748 4 = some 0 := by decide
theorem sixteenth188 : chunk directTest directTerm 752 4 = some 0 := by decide
theorem sixteenth189 : chunk directTest directTerm 756 4 = some 0 := by decide
theorem sixteenth190 : chunk directTest directTerm 760 4 = some 0 := by decide
theorem sixteenth191 : chunk directTest directTerm 764 4 = some 0 := by decide
theorem sixteenth192 : chunk directTest directTerm 768 4 = some 0 := by decide
theorem sixteenth193 : chunk directTest directTerm 772 4 = some 0 := by decide
theorem sixteenth194 : chunk directTest directTerm 776 4 = some 0 := by decide
theorem sixteenth195 : chunk directTest directTerm 780 4 = some 0 := by decide
theorem sixteenth196 : chunk directTest directTerm 784 4 = some 0 := by decide
theorem sixteenth197 : chunk directTest directTerm 788 4 = some 0 := by decide
theorem sixteenth198 : chunk directTest directTerm 792 4 = some 0 := by decide
theorem sixteenth199 : chunk directTest directTerm 796 4 = some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthClaims
```
