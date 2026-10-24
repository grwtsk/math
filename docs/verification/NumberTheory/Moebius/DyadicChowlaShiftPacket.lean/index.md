# Verification target: GRWTSK.NumberTheory.Moebius.DyadicChowlaShiftPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38b6d53b279195f6132e0725bbf909f58962a0c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38b6d53b279195f6132e0725bbf909f58962a0c`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DyadicTriangularKernel`](../../../../mathematics/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicMertensShiftWeight](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/dyadicmertensshiftweight--4d3e2897e84bc4a0fbd427ed.md) | 36 | `declaration-track:4d3e2897e84bc4a0fbd427ed5373ea9cdcf4fcd904f54546aaf78709f54d99b9` |
| 2 | `def` | [weightedMertensDyadicStrictPairPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadicstrictpairpacket--c97d403e21c8d720f27e07ef.md) | 43 | `declaration-track:c97d403e21c8d720f27e07efad3a9de6508b87a06088afe503a40613880de4b0` |
| 3 | `def` | [weightedMertensDyadicShiftContribution](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadicshiftcontribution--67d5921a03bf389bf1df2613.md) | 50 | `declaration-track:67d5921a03bf389bf1df261348806511f0f87f3bf158dd754cd8072560e22b17` |
| 4 | `def` | [weightedMertensDyadicShiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadicshiftpacket--362f6dc7bc77cf1d952047d6.md) | 60 | `declaration-track:362f6dc7bc77cf1d952047d68b9b3bf8b2487617a1cf95f078dfd3635aa1ae21` |
| 5 | `def` | [SubpolynomialDyadicMertensShiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket--dc674f317bb53117ba22b58c.md) | 65 | `declaration-track:dc674f317bb53117ba22b58cad33a17e896235b416ce943ba69eb45cbe372f1d` |
| 6 | `theorem` | [Icc_one_pred_eq_Ico_one](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/icc-one-pred-eq-ico-one--0322348a492d74caf2d285f1.md) | 71 | `result-track:0322348a492d74caf2d285f1eaf1985d4a02a7388279ffdc046b1f816d6d801f` |
| 7 | `theorem` | [dyadicMertensShiftWeight_eq_max](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/dyadicmertensshiftweight-eq-max--4921a1cb7b58b5829a2d9cf6.md) | 79 | `result-track:4921a1cb7b58b5829a2d9cf68bc1fdb795b5eb026b96558bf8ab7b3680f3d444` |
| 8 | `theorem` | [dyadicMertensShiftWeight_of_lt](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/dyadicmertensshiftweight-of-lt--882d323246e1a8f0c8ad7b1e.md) | 92 | `result-track:882d323246e1a8f0c8ad7b1eee094a69e3d41762cb3b8e45c2d359d119a05e3f` |
| 9 | `theorem` | [dyadicMertensShiftWeight_of_le](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/dyadicmertensshiftweight-of-le--da5da6e3b61232d0cb5cdc08.md) | 98 | `result-track:da5da6e3b61232d0cb5cdc08241fe9d9280939e2fba10e2e153476fcb9f82b1c` |
| 10 | `theorem` | [mertensTriangularAtom_eq_strictPrefix](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/mertenstriangularatom-eq-strictprefix--816be1f057845702d09d71b7.md) | 106 | `result-track:816be1f057845702d09d71b73b95b614bad3f1a632e589d20aecf1ea8e4dc4d0` |
| 11 | `theorem` | [weightedMertensDyadicTriangularBoundary_eq_earlyAtomSum](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadictriangularboundary-eq-earlyatomsum--e77efcfec805974974af9ec4.md) | 114 | `result-track:e77efcfec805974974af9ec4e18fd13591ab90ba92c262cafdddd27f6acf87df` |
| 12 | `theorem` | [weightedMertensDyadicTriangularKernel_eq_atomSum](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadictriangularkernel-eq-atomsum--52bf265d736ff653e4f9e92d.md) | 127 | `result-track:52bf265d736ff653e4f9e92d3e3d82a6ecb1e28c2c08284d27398d1e231de9e1` |
| 13 | `theorem` | [weightedMertensDyadicTriangularKernel_eq_strictPairPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadictriangularkernel-eq-strictpairpacket--a2b43cf8c069f2cd7f6aa8b1.md) | 164 | `result-track:a2b43cf8c069f2cd7f6aa8b138e8151bdf4eaad0138d6b64bc8a3080b9cdeeb3` |
| 14 | `theorem` | [sum_Ico_strict_eq_sum_lag](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/sum-ico-strict-eq-sum-lag--da3976756af59b14bf4a876a.md) | 186 | `result-track:da3976756af59b14bf4a876aa363c97c090c65e0c33838f3d76ed7559be10d89` |
| 15 | `theorem` | [sum_Ico_strict_eq_sum_if](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/sum-ico-strict-eq-sum-if--52a9110983d390d0d3e7c10e.md) | 211 | `result-track:52a9110983d390d0d3e7c10e2668e5b078295ac6453e1ee523f2cf293ec09414` |
| 16 | `theorem` | [weightedMertensDyadicStrictPairPacket_eq_shiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadicstrictpairpacket-eq-shiftpacket--157f83611c1fadb55fb0dafa.md) | 223 | `result-track:157f83611c1fadb55fb0dafa682e9e577ddb6401acf3b6999dee3cd16e2dd830` |
| 17 | `theorem` | [weightedMertensDyadicTriangularKernel_eq_shiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/weightedmertensdyadictriangularkernel-eq-shiftpacket--0ca578697f6bb331d3813bba.md) | 286 | `result-track:0ca578697f6bb331d3813bbad3880fd1916ecaa550044d71ae9c542489ca2994` |
| 18 | `theorem` | [subpolynomialDyadicMertensShiftPacket_iff_kernel](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-iff-kernel--5acae6da5c80fca8beab0191.md) | 293 | `result-track:5acae6da5c80fca8beab019189fdb954cf86a075692e59dcdc99918b0ba1347c` |
| 19 | `theorem` | [subpolynomialDyadicMertensShiftPacket_iff_triangular](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-iff-triangular--cfb69e480bed331505ffa18e.md) | 310 | `result-track:cfb69e480bed331505ffa18e6d6e7fdf42fcf84c3a47dc78d2004688c6dbad3e` |
| 20 | `theorem` | [subpolynomialDyadicMertensShiftPacket_iff_orderedPair](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-iff-orderedpair--8daed4d3eb65d2c9c0a96fea.md) | 316 | `result-track:8daed4d3eb65d2c9c0a96fea969553d96b112ba58b87f90f7fdd867ad76d679f` |
| 21 | `theorem` | [subpolynomialDyadicMertensShiftPacket_iff_block](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-iff-block--c0cd3ac2733d286dd2414207.md) | 322 | `result-track:c0cd3ac2733d286dd2414207afb0614caa5d9d9fc89f87a4b7c8c0a9ba880e2c` |
| 22 | `theorem` | [subpolynomialDyadicMertensShiftPacket_iff_cumulative](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-iff-cumulative--908f5cf321add56e392b589c.md) | 328 | `result-track:908f5cf321add56e392b589cebbb6a03ad53f24617afa2e642927c5cb0c6179f` |
| 23 | `theorem` | [subpolynomialDyadicMertensShiftPacket_iff_allPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-iff-allpositiveweightedmertenssqua--1ad2f8d38d6cb03158a2a8e6.md) | 334 | `result-track:1ad2f8d38d6cb03158a2a8e693abb99bebfa723d42847d028e777ee1ee3b0c3e` |
| 24 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/declarations/riemannhypothesis-of-subpolynomialdyadicmertensshiftpacket--144056b2a68a75486fe89c1e.md) | 342 | `result-track:144056b2a68a75486fe89c1e2da4bdfc21863301086701d8b4d59d89b3737d44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
