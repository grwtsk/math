# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthClaimsF

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01c85f9c2ae8e0dec1715d8c3a79e8fbb70a58e0` · SHA-256 `5360c64d10668f4a97d1838c91c7b2e7c1041b522dc388030b23813fcd11802c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthBlocks

set_option autoImplicit false

/-!
# Separate direct decisions for four-cell height-fifteen pieces, part F

Each theorem asks Lean to decide one bounded local equality over the unchanged
direct cell predicate and signed term. No theorem has been elaborated or kernel
accepted. The final 3-cell suffix remains explicit.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthClaims

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

theorem sixteenth500 : chunk directTest directTerm 2000 4 = some 0 := by decide
theorem sixteenth501 : chunk directTest directTerm 2004 4 = some 0 := by decide
theorem sixteenth502 : chunk directTest directTerm 2008 4 = some 0 := by decide
theorem sixteenth503 : chunk directTest directTerm 2012 4 = some 0 := by decide
theorem sixteenth504 : chunk directTest directTerm 2016 4 = some 0 := by decide
theorem sixteenth505 : chunk directTest directTerm 2020 4 = some 0 := by decide
theorem sixteenth506 : chunk directTest directTerm 2024 4 = some 0 := by decide
theorem sixteenth507 : chunk directTest directTerm 2028 4 = some 0 := by decide
theorem sixteenth508 : chunk directTest directTerm 2032 4 = some 0 := by decide
theorem sixteenth509 : chunk directTest directTerm 2036 4 = some 0 := by decide
theorem sixteenth510 : chunk directTest directTerm 2040 4 = some 0 := by decide
theorem sixteenth511 : chunk directTest directTerm 2044 4 = some 0 := by decide
theorem sixteenth512 : chunk directTest directTerm 2048 4 = some 0 := by decide
theorem sixteenth513 : chunk directTest directTerm 2052 4 = some 0 := by decide
theorem sixteenth514 : chunk directTest directTerm 2056 4 = some 0 := by decide
theorem sixteenth515 : chunk directTest directTerm 2060 4 = some 0 := by decide
theorem sixteenth516 : chunk directTest directTerm 2064 4 = some 0 := by decide
theorem sixteenth517 : chunk directTest directTerm 2068 4 = some 0 := by decide
theorem sixteenth518 : chunk directTest directTerm 2072 4 = some 0 := by decide
theorem sixteenth519 : chunk directTest directTerm 2076 4 = some 0 := by decide
theorem sixteenth520 : chunk directTest directTerm 2080 4 = some 0 := by decide
theorem sixteenth521 : chunk directTest directTerm 2084 4 = some 0 := by decide
theorem sixteenth522 : chunk directTest directTerm 2088 4 = some 0 := by decide
theorem sixteenth523 : chunk directTest directTerm 2092 4 = some 0 := by decide
theorem sixteenth524 : chunk directTest directTerm 2096 4 = some 0 := by decide
theorem sixteenth525 : chunk directTest directTerm 2100 4 = some 0 := by decide
theorem sixteenth526 : chunk directTest directTerm 2104 4 = some 0 := by decide
theorem sixteenth527 : chunk directTest directTerm 2108 4 = some 0 := by decide
theorem sixteenth528 : chunk directTest directTerm 2112 4 = some 0 := by decide
theorem sixteenth529 : chunk directTest directTerm 2116 4 = some 0 := by decide
theorem sixteenth530 : chunk directTest directTerm 2120 4 = some 0 := by decide
theorem sixteenth531 : chunk directTest directTerm 2124 4 = some 0 := by decide
theorem sixteenth532 : chunk directTest directTerm 2128 4 = some 0 := by decide
theorem sixteenth533 : chunk directTest directTerm 2132 4 = some 0 := by decide
theorem sixteenth534 : chunk directTest directTerm 2136 4 = some 0 := by decide
theorem sixteenth535 : chunk directTest directTerm 2140 4 = some 0 := by decide
theorem sixteenth536 : chunk directTest directTerm 2144 4 = some 0 := by decide
theorem sixteenth537 : chunk directTest directTerm 2148 4 = some 0 := by decide
theorem sixteenth538 : chunk directTest directTerm 2152 4 = some 0 := by decide
theorem sixteenth539 : chunk directTest directTerm 2156 4 = some 0 := by decide
theorem sixteenth540 : chunk directTest directTerm 2160 4 = some 0 := by decide
theorem sixteenth541 : chunk directTest directTerm 2164 4 = some 0 := by decide
theorem sixteenth542 : chunk directTest directTerm 2168 4 = some 0 := by decide
theorem sixteenth543 : chunk directTest directTerm 2172 4 = some 0 := by decide
theorem sixteenth544 : chunk directTest directTerm 2176 4 = some 0 := by decide
theorem sixteenth545 : chunk directTest directTerm 2180 4 = some 0 := by decide
theorem sixteenth546 : chunk directTest directTerm 2184 4 = some 0 := by decide
theorem sixteenth547 : chunk directTest directTerm 2188 4 = some 0 := by decide
theorem sixteenth548 : chunk directTest directTerm 2192 4 = some 0 := by decide
theorem sixteenth549 : chunk directTest directTerm 2196 4 = some 0 := by decide
theorem sixteenth550 : chunk directTest directTerm 2200 4 = some 0 := by decide
theorem sixteenth551 : chunk directTest directTerm 2204 4 = some 0 := by decide
theorem sixteenth552 : chunk directTest directTerm 2208 4 = some 0 := by decide
theorem sixteenth553 : chunk directTest directTerm 2212 4 = some 0 := by decide
theorem sixteenth554 : chunk directTest directTerm 2216 4 = some 0 := by decide
theorem sixteenth555 : chunk directTest directTerm 2220 4 = some 0 := by decide
theorem sixteenth556 : chunk directTest directTerm 2224 4 = some 0 := by decide
theorem sixteenth557 : chunk directTest directTerm 2228 4 = some 0 := by decide
theorem sixteenth558 : chunk directTest directTerm 2232 4 = some 0 := by decide
theorem sixteenth559 : chunk directTest directTerm 2236 4 = some 0 := by decide
theorem sixteenth560 : chunk directTest directTerm 2240 4 = some 0 := by decide
theorem sixteenth561 : chunk directTest directTerm 2244 4 = some 0 := by decide
theorem sixteenth562 : chunk directTest directTerm 2248 4 = some 0 := by decide
theorem sixteenth563 : chunk directTest directTerm 2252 4 = some 0 := by decide
theorem sixteenth564 : chunk directTest directTerm 2256 4 = some 0 := by decide
theorem sixteenth565 : chunk directTest directTerm 2260 4 = some 0 := by decide
theorem sixteenth566 : chunk directTest directTerm 2264 4 = some 0 := by decide
theorem sixteenth567 : chunk directTest directTerm 2268 4 = some 0 := by decide
theorem sixteenth568 : chunk directTest directTerm 2272 4 = some 0 := by decide
theorem sixteenth569 : chunk directTest directTerm 2276 4 = some 0 := by decide
theorem sixteenth570 : chunk directTest directTerm 2280 4 = some 0 := by decide
theorem sixteenth571 : chunk directTest directTerm 2284 4 = some 0 := by decide
theorem sixteenth572 : chunk directTest directTerm 2288 4 = some 0 := by decide
theorem sixteenth573 : chunk directTest directTerm 2292 4 = some 0 := by decide
theorem sixteenth574 : chunk directTest directTerm 2296 4 = some 0 := by decide
theorem sixteenth575 : chunk directTest directTerm 2300 4 = some 0 := by decide
theorem sixteenth576 : chunk directTest directTerm 2304 4 = some 0 := by decide
theorem sixteenth577 : chunk directTest directTerm 2308 4 = some 0 := by decide
theorem sixteenth578 : chunk directTest directTerm 2312 4 = some 0 := by decide
theorem sixteenth579 : chunk directTest directTerm 2316 4 = some 0 := by decide
theorem sixteenth580 : chunk directTest directTerm 2320 4 = some 0 := by decide
theorem sixteenth581 : chunk directTest directTerm 2324 4 = some 0 := by decide
theorem sixteenth582 : chunk directTest directTerm 2328 4 = some 0 := by decide
theorem sixteenth583 : chunk directTest directTerm 2332 4 = some 0 := by decide
theorem sixteenth584 : chunk directTest directTerm 2336 4 = some 0 := by decide
theorem sixteenth585 : chunk directTest directTerm 2340 4 = some 0 := by decide
theorem sixteenth586 : chunk directTest directTerm 2344 4 = some 0 := by decide
theorem sixteenth587 : chunk directTest directTerm 2348 4 = some 0 := by decide
theorem sixteenth588 : chunk directTest directTerm 2352 4 = some 0 := by decide
theorem sixteenth589 : chunk directTest directTerm 2356 4 = some 0 := by decide
theorem sixteenth590 : chunk directTest directTerm 2360 4 = some 0 := by decide
theorem sixteenth591 : chunk directTest directTerm 2364 4 = some 0 := by decide
theorem sixteenth592 : chunk directTest directTerm 2368 4 = some 0 := by decide
theorem sixteenth593 : chunk directTest directTerm 2372 4 = some 0 := by decide
theorem sixteenth594 : chunk directTest directTerm 2376 3 = some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthClaims
```
