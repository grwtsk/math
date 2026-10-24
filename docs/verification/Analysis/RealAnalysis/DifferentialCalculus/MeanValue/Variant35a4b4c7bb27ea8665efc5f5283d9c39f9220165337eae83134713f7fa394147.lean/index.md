# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MeanValue.Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc5510c22d6128d23e3d73c1244be8465b719487",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc5510c22d6128d23e3d73c1244be8465b719487`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.AffineMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LocalExtr.Rolle` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_ratio_hasDerivAt_eq_ratio_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-ratio-hasderivat-eq-ratio-slope--d186a30c9c861ad0001ecbbc.md) | 79 | `result-track:d186a30c9c861ad0001ecbbc0c5469a3c49017cf6e0ff7c1b8449232c40c15b7` |
| 2 | `theorem` | [exists_ratio_hasDerivAt_eq_ratio_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-ratio-hasderivat-eq-ratio-slope--6fa7294a0c9cab95705d3c0d.md) | 93 | `result-track:6fa7294a0c9cab95705d3c0d357aefd9101190fbb014716614694469d08f108c` |
| 3 | `theorem` | [exists_hasDerivAt_eq_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-hasderivat-eq-slope--e829a431ae3a2e4e7265f039.md) | 118 | `result-track:e829a431ae3a2e4e7265f0399e4826c1728c21446a0631796ca061e8550d60d3` |
| 4 | `theorem` | [exists_ratio_deriv_eq_ratio_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-ratio-deriv-eq-ratio-slope--f98304f677f3bec80fd45277.md) | 127 | `result-track:f98304f677f3bec80fd45277dd81b415d976b5a10100845be31305c3848e67dc` |
| 5 | `theorem` | [exists_ratio_deriv_eq_ratio_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-ratio-deriv-eq-ratio-slope--61034db1fa57525895a52207.md) | 136 | `result-track:61034db1fa57525895a5220769c59426fe6073b1c8f5239779d8d45ad04d2090` |
| 6 | `theorem` | [exists_deriv_eq_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-deriv-eq-slope--b472a601300feaec2f626ff7.md) | 147 | `result-track:b472a601300feaec2f626ff743812ed10c2580de9405a9a93e3cd9186bb7a68f` |
| 7 | `theorem` | [exists_deriv_eq_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/exists-deriv-eq-slope--1e228d26d26a942e6d89f5b3.md) | 153 | `result-track:1e228d26d26a942e6d89f5b3bb908788d04dd63081da9dba641a2b6abaebf0c7` |
| 8 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atTop_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-attop-ioi--c7882944f63ad4744e772581.md) | 159 | `result-track:c7882944f63ad4744e7725814e3b46b07e884c148c41de247fcdeb8b1afc8e53` |
| 9 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atBot_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-atbot-ioi--5fd98ee3d073bc26fa3abb52.md) | 223 | `result-track:5fd98ee3d073bc26fa3abb5274d5190f4937822ee7f61b07840c37a12a0b84f3` |
| 10 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atBot_Iio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-atbot-iio--6fc70e7d3ad6f75b21301a37.md) | 233 | `result-track:6fc70e7d3ad6f75b21301a374f3e6fa2317727764e0c754f9009b363b0dc6acd` |
| 11 | `theorem` | [not_differentiableWithinAt_of_deriv_tendsto_atTop_Iio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/not-differentiablewithinat-of-deriv-tendsto-attop-iio--cbe4056ab59d0f715ba4570d.md) | 265 | `result-track:cbe4056ab59d0f715ba4570d0b78d2f43d99a8f5be07d377eab095d9c06b1036` |
| 12 | `theorem` | [Convex.mul_sub_lt_image_sub_of_lt_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/convex-mul-sub-lt-image-sub-of-lt-deriv--5e7a12434d0bc7d6061c039b.md) | 279 | `result-track:5e7a12434d0bc7d6061c039b28e01d5cfd4e1fc75c39fc24c5e224c1108f74a7` |
| 13 | `theorem` | [mul_sub_lt_image_sub_of_lt_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/mul-sub-lt-image-sub-of-lt-deriv--97320bbcc3d656eee9d15a79.md) | 294 | `result-track:97320bbcc3d656eee9d15a79a3c7829fdc548b11a93b5da3d0fc8baa2aa1c65c` |
| 14 | `theorem` | [Convex.mul_sub_le_image_sub_of_le_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/convex-mul-sub-le-image-sub-of-le-deriv--258f1bac0bb5c92bc1c68ffd.md) | 303 | `result-track:258f1bac0bb5c92bc1c68ffd7041a3802b41c048ac22269d326caffedf83f023` |
| 15 | `theorem` | [mul_sub_le_image_sub_of_le_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/mul-sub-le-image-sub-of-le-deriv--d1042567283fb8ee33ae3f56.md) | 320 | `result-track:d1042567283fb8ee33ae3f563e1aab4af71a536ce994a252199c4a486cfa2fae` |
| 16 | `theorem` | [Convex.image_sub_lt_mul_sub_of_deriv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/convex-image-sub-lt-mul-sub-of-deriv-lt--a7bfab11c6321e16636dd59c.md) | 329 | `result-track:a7bfab11c6321e16636dd59cac3de9047b2c46b0a91c8d66de23fd1573cf135e` |
| 17 | `theorem` | [image_sub_lt_mul_sub_of_deriv_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/image-sub-lt-mul-sub-of-deriv-lt--d8acfa263127f65984e9e328.md) | 340 | `result-track:d8acfa263127f65984e9e328ee4658bf5d9df39ec992bdefe653bb3b93263e35` |
| 18 | `theorem` | [Convex.image_sub_le_mul_sub_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/convex-image-sub-le-mul-sub-of-deriv-le--aebbd5184e5caa102dc198cf.md) | 349 | `result-track:aebbd5184e5caa102dc198cf3751da75a58b6a4d3764640d6e30d417544ea4f0` |
| 19 | `theorem` | [image_sub_le_mul_sub_of_deriv_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/image-sub-le-mul-sub-of-deriv-le--2dd95c092c0eb3b26a98e9b5.md) | 360 | `result-track:2dd95c092c0eb3b26a98e9b5d650861a8ccc8aa4e2f6ef27acb686be18130662` |
| 20 | `theorem` | [strictMonoOn_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictmonoon-of-deriv-pos--6036b6873945bf125589f9e3.md) | 370 | `result-track:6036b6873945bf125589f9e3000b6079f81bb1c34ed6e0afd98f7bf7e3644bbf` |
| 21 | `theorem` | [strictMono_of_deriv_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictmono-of-deriv-pos--25cd727c9fffb2a359f957a8.md) | 382 | `result-track:25cd727c9fffb2a359f957a862e7913b2d5050c484b66c3245faf13b9e833741` |
| 22 | `lemma` | [strictMonoOn_of_hasDerivWithinAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictmonoon-of-hasderivwithinat-pos--bf46df58bfaae7779ab25811.md) | 390 | `result-track:bf46df58bfaae7779ab258111be451a14a382d6465bff0db256d67cd9e7045cc` |
| 23 | `lemma` | [strictMono_of_hasDerivAt_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictmono-of-hasderivat-pos--cb7e69ff02cd36d84eb9945b.md) | 398 | `result-track:cb7e69ff02cd36d84eb9945b8c8f371278e915136378d138e961d9fd9b79f13c` |
| 24 | `theorem` | [monotoneOn_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/monotoneon-of-deriv-nonneg--fcf715567bf214749d0f992f.md) | 405 | `result-track:fcf715567bf214749d0f992f4e5be2935ed3e44749e0b05cec7906df3be6778c` |
| 25 | `theorem` | [monotone_of_deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/monotone-of-deriv-nonneg--55a0c5c45c65aab24ef6b068.md) | 413 | `result-track:55a0c5c45c65aab24ef6b0680423a7f6e51c378afcf6d4171421cac48e785132` |
| 26 | `lemma` | [monotoneOn_of_hasDerivWithinAt_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/monotoneon-of-hasderivwithinat-nonneg--f9caa0d0be21a7a02bf3a278.md) | 422 | `result-track:f9caa0d0be21a7a02bf3a27852a391941f2ce1d3932e1cbf36b34ce5e880d5cf` |
| 27 | `lemma` | [monotone_of_hasDerivAt_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/monotone-of-hasderivat-nonneg--92b4baa074032d46f77302a2.md) | 430 | `result-track:92b4baa074032d46f77302a281a807e40fe586b32f3e2c46c69e855c187e2642` |
| 28 | `theorem` | [strictAntiOn_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictantion-of-deriv-neg--96e3a9bd96daa8e39bdbf9fe.md) | 438 | `result-track:96e3a9bd96daa8e39bdbf9fee609ab6880ec5b7d21f0e174a9932bd99584d041` |
| 29 | `theorem` | [strictAnti_of_deriv_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictanti-of-deriv-neg--f7fd16a11f6e566309a5a3c0.md) | 450 | `result-track:f7fd16a11f6e566309a5a3c09fd2dc15d79aa963a135ca9563ee9cbcb882e5a3` |
| 30 | `lemma` | [strictAntiOn_of_hasDerivWithinAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictantion-of-hasderivwithinat-neg--ee878d983c1fafed63d772e4.md) | 459 | `result-track:ee878d983c1fafed63d772e489737f6b3d6be6791fe73be7fc9351f32a8c1e55` |
| 31 | `lemma` | [strictAnti_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/strictanti-of-hasderivat-neg--9b45016d19ea6ee4f4e92b53.md) | 467 | `result-track:9b45016d19ea6ee4f4e92b53a42387692bd4bc9faf2cdc1c315d4864ddb6b3ca` |
| 32 | `theorem` | [antitoneOn_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/antitoneon-of-deriv-nonpos--5a0997d2c91a38b258c009e8.md) | 474 | `result-track:5a0997d2c91a38b258c009e87fd5ac27b6e5aa807624a230830a4981fd660ce1` |
| 33 | `theorem` | [antitone_of_deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/antitone-of-deriv-nonpos--bfa25fa235390b00ffa96f29.md) | 482 | `result-track:bfa25fa235390b00ffa96f2999d156ece2ec36d51ef1172c3163095261c791d7` |
| 34 | `lemma` | [antitoneOn_of_hasDerivWithinAt_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/antitoneon-of-hasderivwithinat-nonpos--784a63da5db0649ed88a85b7.md) | 491 | `result-track:784a63da5db0649ed88a85b7ebd279658b3702528842ffde5da307b6f2b5ecde` |
| 35 | `lemma` | [antitone_of_hasDerivAt_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/antitone-of-hasderivat-nonpos--9e0d9bd78a779290f9938397.md) | 499 | `result-track:9e0d9bd78a779290f993839713ad39456a00a767d18622585634a7b43643b5cd` |
| 36 | `theorem` | [domain_mvt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/declarations/domain-mvt--c2990d2bb850903c8de15cd5.md) | 509 | `result-track:c2990d2bb850903c8de15cd5408e3138fb6e6c6c63e3b4b8390d7e6b8d8b9feb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
