# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthClaimsA

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91d09f36b6b035b4af50f7a3554e88e09124a3da` · SHA-256 `90b5600761cd522980adae88f6afbce1c4ca3fbefe00584b86ad3095a7ab65c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectSixteenthBlocks

set_option autoImplicit false

/-!
# Separate direct decisions for four-cell height-fifteen pieces, part A

Each theorem asks Lean to decide one bounded local equality over the unchanged
direct cell predicate and signed term. No theorem has been elaborated or kernel
accepted. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthClaims

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

theorem sixteenth000 : chunk directTest directTerm 0 4 = some 0 := by decide
theorem sixteenth001 : chunk directTest directTerm 4 4 = some 0 := by decide
theorem sixteenth002 : chunk directTest directTerm 8 4 = some 0 := by decide
theorem sixteenth003 : chunk directTest directTerm 12 4 = some 0 := by decide
theorem sixteenth004 : chunk directTest directTerm 16 4 = some 0 := by decide
theorem sixteenth005 : chunk directTest directTerm 20 4 = some 0 := by decide
theorem sixteenth006 : chunk directTest directTerm 24 4 = some 0 := by decide
theorem sixteenth007 : chunk directTest directTerm 28 4 = some 0 := by decide
theorem sixteenth008 : chunk directTest directTerm 32 4 = some 0 := by decide
theorem sixteenth009 : chunk directTest directTerm 36 4 = some 0 := by decide
theorem sixteenth010 : chunk directTest directTerm 40 4 = some 0 := by decide
theorem sixteenth011 : chunk directTest directTerm 44 4 = some 0 := by decide
theorem sixteenth012 : chunk directTest directTerm 48 4 = some 0 := by decide
theorem sixteenth013 : chunk directTest directTerm 52 4 = some 0 := by decide
theorem sixteenth014 : chunk directTest directTerm 56 4 = some 0 := by decide
theorem sixteenth015 : chunk directTest directTerm 60 4 = some 0 := by decide
theorem sixteenth016 : chunk directTest directTerm 64 4 = some 0 := by decide
theorem sixteenth017 : chunk directTest directTerm 68 4 = some 0 := by decide
theorem sixteenth018 : chunk directTest directTerm 72 4 = some 0 := by decide
theorem sixteenth019 : chunk directTest directTerm 76 4 = some 0 := by decide
theorem sixteenth020 : chunk directTest directTerm 80 4 = some 0 := by decide
theorem sixteenth021 : chunk directTest directTerm 84 4 = some 0 := by decide
theorem sixteenth022 : chunk directTest directTerm 88 4 = some 0 := by decide
theorem sixteenth023 : chunk directTest directTerm 92 4 = some 0 := by decide
theorem sixteenth024 : chunk directTest directTerm 96 4 = some 0 := by decide
theorem sixteenth025 : chunk directTest directTerm 100 4 = some 0 := by decide
theorem sixteenth026 : chunk directTest directTerm 104 4 = some 0 := by decide
theorem sixteenth027 : chunk directTest directTerm 108 4 = some 0 := by decide
theorem sixteenth028 : chunk directTest directTerm 112 4 = some 0 := by decide
theorem sixteenth029 : chunk directTest directTerm 116 4 = some 0 := by decide
theorem sixteenth030 : chunk directTest directTerm 120 4 = some 0 := by decide
theorem sixteenth031 : chunk directTest directTerm 124 4 = some 0 := by decide
theorem sixteenth032 : chunk directTest directTerm 128 4 = some 0 := by decide
theorem sixteenth033 : chunk directTest directTerm 132 4 = some 0 := by decide
theorem sixteenth034 : chunk directTest directTerm 136 4 = some 0 := by decide
theorem sixteenth035 : chunk directTest directTerm 140 4 = some 0 := by decide
theorem sixteenth036 : chunk directTest directTerm 144 4 = some 0 := by decide
theorem sixteenth037 : chunk directTest directTerm 148 4 = some 0 := by decide
theorem sixteenth038 : chunk directTest directTerm 152 4 = some 0 := by decide
theorem sixteenth039 : chunk directTest directTerm 156 4 = some 0 := by decide
theorem sixteenth040 : chunk directTest directTerm 160 4 = some 0 := by decide
theorem sixteenth041 : chunk directTest directTerm 164 4 = some 0 := by decide
theorem sixteenth042 : chunk directTest directTerm 168 4 = some 0 := by decide
theorem sixteenth043 : chunk directTest directTerm 172 4 = some 0 := by decide
theorem sixteenth044 : chunk directTest directTerm 176 4 = some 0 := by decide
theorem sixteenth045 : chunk directTest directTerm 180 4 = some 0 := by decide
theorem sixteenth046 : chunk directTest directTerm 184 4 = some 0 := by decide
theorem sixteenth047 : chunk directTest directTerm 188 4 = some 0 := by decide
theorem sixteenth048 : chunk directTest directTerm 192 4 = some 0 := by decide
theorem sixteenth049 : chunk directTest directTerm 196 4 = some 0 := by decide
theorem sixteenth050 : chunk directTest directTerm 200 4 = some 0 := by decide
theorem sixteenth051 : chunk directTest directTerm 204 4 = some 0 := by decide
theorem sixteenth052 : chunk directTest directTerm 208 4 = some 0 := by decide
theorem sixteenth053 : chunk directTest directTerm 212 4 = some 0 := by decide
theorem sixteenth054 : chunk directTest directTerm 216 4 = some 0 := by decide
theorem sixteenth055 : chunk directTest directTerm 220 4 = some 0 := by decide
theorem sixteenth056 : chunk directTest directTerm 224 4 = some 0 := by decide
theorem sixteenth057 : chunk directTest directTerm 228 4 = some 0 := by decide
theorem sixteenth058 : chunk directTest directTerm 232 4 = some 0 := by decide
theorem sixteenth059 : chunk directTest directTerm 236 4 = some 0 := by decide
theorem sixteenth060 : chunk directTest directTerm 240 4 = some 0 := by decide
theorem sixteenth061 : chunk directTest directTerm 244 4 = some 0 := by decide
theorem sixteenth062 : chunk directTest directTerm 248 4 = some 0 := by decide
theorem sixteenth063 : chunk directTest directTerm 252 4 = some 0 := by decide
theorem sixteenth064 : chunk directTest directTerm 256 4 = some 0 := by decide
theorem sixteenth065 : chunk directTest directTerm 260 4 = some 0 := by decide
theorem sixteenth066 : chunk directTest directTerm 264 4 = some 0 := by decide
theorem sixteenth067 : chunk directTest directTerm 268 4 = some 0 := by decide
theorem sixteenth068 : chunk directTest directTerm 272 4 = some 1 := by decide
theorem sixteenth069 : chunk directTest directTerm 276 4 = some 0 := by decide
theorem sixteenth070 : chunk directTest directTerm 280 4 = some 0 := by decide
theorem sixteenth071 : chunk directTest directTerm 284 4 = some 0 := by decide
theorem sixteenth072 : chunk directTest directTerm 288 4 = some 0 := by decide
theorem sixteenth073 : chunk directTest directTerm 292 4 = some 0 := by decide
theorem sixteenth074 : chunk directTest directTerm 296 4 = some 0 := by decide
theorem sixteenth075 : chunk directTest directTerm 300 4 = some 0 := by decide
theorem sixteenth076 : chunk directTest directTerm 304 4 = some 0 := by decide
theorem sixteenth077 : chunk directTest directTerm 308 4 = some 0 := by decide
theorem sixteenth078 : chunk directTest directTerm 312 4 = some 0 := by decide
theorem sixteenth079 : chunk directTest directTerm 316 4 = some 0 := by decide
theorem sixteenth080 : chunk directTest directTerm 320 4 = some 0 := by decide
theorem sixteenth081 : chunk directTest directTerm 324 4 = some 0 := by decide
theorem sixteenth082 : chunk directTest directTerm 328 4 = some 0 := by decide
theorem sixteenth083 : chunk directTest directTerm 332 4 = some 0 := by decide
theorem sixteenth084 : chunk directTest directTerm 336 4 = some 0 := by decide
theorem sixteenth085 : chunk directTest directTerm 340 4 = some 0 := by decide
theorem sixteenth086 : chunk directTest directTerm 344 4 = some 0 := by decide
theorem sixteenth087 : chunk directTest directTerm 348 4 = some 0 := by decide
theorem sixteenth088 : chunk directTest directTerm 352 4 = some 0 := by decide
theorem sixteenth089 : chunk directTest directTerm 356 4 = some 0 := by decide
theorem sixteenth090 : chunk directTest directTerm 360 4 = some 0 := by decide
theorem sixteenth091 : chunk directTest directTerm 364 4 = some 0 := by decide
theorem sixteenth092 : chunk directTest directTerm 368 4 = some 0 := by decide
theorem sixteenth093 : chunk directTest directTerm 372 4 = some 0 := by decide
theorem sixteenth094 : chunk directTest directTerm 376 4 = some 0 := by decide
theorem sixteenth095 : chunk directTest directTerm 380 4 = some 0 := by decide
theorem sixteenth096 : chunk directTest directTerm 384 4 = some 0 := by decide
theorem sixteenth097 : chunk directTest directTerm 388 4 = some 0 := by decide
theorem sixteenth098 : chunk directTest directTerm 392 4 = some 0 := by decide
theorem sixteenth099 : chunk directTest directTerm 396 4 = some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthClaims
```
