# Verification target: GRWTSK.Algebra.NonZeroDivisors.Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64ff425b5c7cc0daacfc75e0b6f4fe717d72ee77",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64ff425b5c7cc0daacfc75e0b6f4fe717d72ee77`.

Source path: `GRWTSK/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_cancel_right_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/mul-cancel-right-mem-nonzerodivisors--c9bfa890eff1776fef2f2298.md) | 21 | `result-track:c9bfa890eff1776fef2f22980bfb6299112dd0838fa24a804dcd128034ffec3f` |
| 2 | `lemma` | [mul_cancel_right_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/mul-cancel-right-coe-nonzerodivisors--422838c21df24eddd87eeb0b.md) | 25 | `result-track:422838c21df24eddd87eeb0be30f7f89e53da79d19476a79db0d243ade6b222a` |
| 3 | `lemma` | [isLeftRegular_iff_mem_nonZeroDivisorsRight](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/isleftregular-iff-mem-nonzerodivisorsright--b8b1489295afb035b530c0fe.md) | 28 | `result-track:b8b1489295afb035b530c0fea7b142657b3725c6245aa7588a2b8a10583c9ad2` |
| 4 | `lemma` | [isRightRegular_iff_mem_nonZeroDivisorsLeft](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/isrightregular-iff-mem-nonzerodivisorsleft--b11da04b0ec5a688302b4e39.md) | 32 | `result-track:b11da04b0ec5a688302b4e3955e150e8111c388f5d20464b9b114a229e7d2e5e` |
| 5 | `lemma` | [le_nonZeroDivisors_iff_isRightRegular](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/le-nonzerodivisors-iff-isrightregular--b29c75becb63ba2eca5f01f3.md) | 36 | `result-track:b29c75becb63ba2eca5f01f3e9957e61ecbe408433d2bb82e732f85e5f802a5e` |
| 6 | `lemma` | [le_nonZeroDivisors_iff_isRegular](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/le-nonzerodivisors-iff-isregular--4938cbcafc1e35ca2f06de0c.md) | 41 | `result-track:4938cbcafc1e35ca2f06de0c230348459d0a01d1c14f0ac20c012a7f2649c662` |
| 7 | `lemma` | [isUnit_iff_mem_nonZeroDivisors_of_finite](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/isunit-iff-mem-nonzerodivisors-of-finite--3ed4d090821b49d4e5fe55e2.md) | 47 | `result-track:3ed4d090821b49d4e5fe55e271283bc5060de858c726e06bac22b21e9ece27be` |
| 8 | `lemma` | [mul_cancel_left_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/mul-cancel-left-mem-nonzerodivisors--4cbbf01a400a6dc534d26e49.md) | 60 | `result-track:4cbbf01a400a6dc534d26e493247c9a7f3cbba966cd49dabeb57ef6bc4ae0d12` |
| 9 | `lemma` | [mul_cancel_left_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/mul-cancel-left-coe-nonzerodivisors--2e01f2f042b2f822a498f5d0.md) | 63 | `result-track:2e01f2f042b2f822a498f5d0fe263fe7a28971d9e873553b32851da1144dcda0` |
| 10 | `lemma` | [dvd_cancel_right_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/dvd-cancel-right-mem-nonzerodivisors--1661e5c3e13fece1a91c6256.md) | 66 | `result-track:1661e5c3e13fece1a91c62565259680a6f5e305f454c2c05e9d5ddb529128d69` |
| 11 | `lemma` | [dvd_cancel_right_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/dvd-cancel-right-coe-nonzerodivisors--3b895c485dbbf0f251dc8473.md) | 70 | `result-track:3b895c485dbbf0f251dc84733bc97cd3a2d2badc798caab7d053e4c30696a3fb` |
| 12 | `lemma` | [dvd_cancel_left_mem_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/dvd-cancel-left-mem-nonzerodivisors--6c97be15cc66841f04a7b2e2.md) | 73 | `result-track:6c97be15cc66841f04a7b2e2c10049d60ebe8a175a78d5abf170eb9a9dead048` |
| 13 | `lemma` | [dvd_cancel_left_coe_nonZeroDivisors](../../../../mathematics/Algebra/NonZeroDivisors/Variant6612bf917d28c7495d10ee4b811cb0408cfd9e89cd6b70082157b805f844a82e.lean/declarations/dvd-cancel-left-coe-nonzerodivisors--24aeb3dcdef83ac171e4c276.md) | 77 | `result-track:24aeb3dcdef83ac171e4c276d59554355fb1d35e4e0027dfbac2f6bab5ba0091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
