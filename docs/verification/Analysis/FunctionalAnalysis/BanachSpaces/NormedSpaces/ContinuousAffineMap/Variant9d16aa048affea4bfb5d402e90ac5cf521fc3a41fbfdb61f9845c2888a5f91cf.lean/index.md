# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.ContinuousAffineMap.Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db5697e0496865bdde593d353024764a672c71b9",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db5697e0496865bdde593d353024764a672c71b9`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousAffineMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/contlinear--b48016b0f05aeb435c8a6c1c.md) | 60 | `declaration-track:b48016b0f05aeb435c8a6c1cde212feac86a636fda6acb31117cd93ee37ca664` |
| 2 | `theorem` | [coe_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/coe-contlinear--12791f3d15370940ad749a4e.md) | 66 | `result-track:12791f3d15370940ad749a4e87a9e23d4587b104ab5f4f2d50be6096cffcbb35` |
| 3 | `theorem` | [coe_contLinear_eq_linear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/coe-contlinear-eq-linear--0cc3866ed6e84cf7158cb89f.md) | 70 | `result-track:0cc3866ed6e84cf7158cb89fad153ffd981d6ce83ec5207933aae777c522dcde` |
| 4 | `theorem` | [coe_mk_const_linear_eq_linear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/coe-mk-const-linear-eq-linear--1fd9308178c43142a4a819ed.md) | 74 | `result-track:1fd9308178c43142a4a819ed622b93e70dd4643bd3117e63e5f2d97b2ccd1681` |
| 5 | `theorem` | [coe_linear_eq_coe_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/coe-linear-eq-coe-contlinear--753b3f87c2ff4eb26b547c2d.md) | 78 | `result-track:753b3f87c2ff4eb26b547c2d825712c2a16f2fe8ab7deeeedeb0c96f71f1725f` |
| 6 | `theorem` | [comp_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/comp-contlinear--3e73a0e51b4f9f5ed4d197a5.md) | 83 | `result-track:3e73a0e51b4f9f5ed4d197a5ae7871872c89f7fb1d3dc694b70bcbc0ecf91ad8` |
| 7 | `theorem` | [map_vadd](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/map-vadd--1eece9c531d41b62fd86143a.md) | 88 | `result-track:1eece9c531d41b62fd86143ac54d128efe28f7037836202bb77b718dd21aa972` |
| 8 | `theorem` | [contLinear_map_vsub](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/contlinear-map-vsub--d13594c86dad3c00a81fa6d4.md) | 92 | `result-track:d13594c86dad3c00a81fa6d470a41af2f033c44f77ebc1725cd8d6a3f7fa0213` |
| 9 | `theorem` | [const_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/const-contlinear--de19b9bc3d11593bbec395c6.md) | 96 | `result-track:de19b9bc3d11593bbec395c621cd93153ef712e1b47640d0c2edf49ddf6332dd` |
| 10 | `theorem` | [contLinear_eq_zero_iff_exists_const](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/contlinear-eq-zero-iff-exists-const--112e2569cc71eaccd4ca2e22.md) | 99 | `result-track:112e2569cc71eaccd4ca2e225fb8dd1aa18877030aa3c605cb97bd89cd551fb1` |
| 11 | `theorem` | [to_affine_map_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/to-affine-map-contlinear--ce23e59dfd69c8b40fce1cf1.md) | 114 | `result-track:ce23e59dfd69c8b40fce1cf124d80455bff2de707856b1cab4991184ac1770f8` |
| 12 | `theorem` | [zero_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/zero-contlinear--1674256714dfa09cb5127c21.md) | 119 | `result-track:1674256714dfa09cb5127c21550108ec6faeb56901248ad2a1ac0c3909a29c56` |
| 13 | `theorem` | [add_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/add-contlinear--23153b1550a9393d1be63bbe.md) | 123 | `result-track:23153b1550a9393d1be63bbe198938204f81ef288cd862f6e52d0c6271020500` |
| 14 | `theorem` | [sub_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/sub-contlinear--41011816900eb21b21f7e09a.md) | 127 | `result-track:41011816900eb21b21f7e09a7a53c479c13611ff1b0e1683ff373f23b856caa9` |
| 15 | `theorem` | [neg_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/neg-contlinear--8334d0aebb775407cba6467a.md) | 131 | `result-track:8334d0aebb775407cba6467ac24016df0c7bd765d6392b844a1dbacbb7086911` |
| 16 | `theorem` | [smul_contLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/smul-contlinear--ac860175a252ca826683f488.md) | 135 | `result-track:ac860175a252ca826683f48894701c49d246fb2bfed2417b50c9f18bb5f63dee` |
| 17 | `theorem` | [decomp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/decomp--aca3c2f185074dddfb38ca61.md) | 138 | `result-track:aca3c2f185074dddfb38ca612b8f49fb9f526704e5aa3f9a1b506d68fc236620` |
| 18 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/instance--51f4072b47cd899fd2edccf6.md) | 145 | `declaration-track:51f4072b47cd899fd2edccf6fda6cc54c28ded7f3c338239a0b042999b6a5beb` |
| 19 | `lemma` | [vadd_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/vadd-apply--a5472084704fe8963a41a85b.md) | 153 | `result-track:a5472084704fe8963a41a85b68080e068f86fa7858848b963590f8bad49dc311` |
| 20 | `lemma` | [vsub_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/vsub-apply--34e0af1fdf4e7f2e8c4bf7a6.md) | 156 | `result-track:34e0af1fdf4e7f2e8c4bf7a6788e70c63f72820ca4059eb38c5c3190ff96efe5` |
| 21 | `lemma` | [vadd_toAffineMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/vadd-toaffinemap--378203aabda6bb3f2de1696b.md) | 159 | `result-track:378203aabda6bb3f2de1696bc5436201a16b98efd85f7a66967ba010821790c0` |
| 22 | `lemma` | [vsub_toAffineMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/vsub-toaffinemap--ba548e9014d3fab350f2f590.md) | 163 | `result-track:ba548e9014d3fab350f2f590517464ccebd473291c6712283714994f5aea547f` |
| 23 | `instance` | [hasNorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/hasnorm--fd20668669d281da30ca615b.md) | 173 | `declaration-track:fd20668669d281da30ca615b58c0f3223a2d52ae3ba3c26789953a0b45c5d85b` |
| 24 | `theorem` | [norm_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/norm-def--5036e1cb9effc5d78f2cdfcb.md) | 176 | `result-track:5036e1cb9effc5d78f2cdfcb173f93643726d46c65015cd717837c00d0ca70f1` |
| 25 | `theorem` | [norm_contLinear_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/norm-contlinear-le--17a71286a897eda12ef7c6be.md) | 179 | `result-track:17a71286a897eda12ef7c6be1137e63a9f4ae744e18d032805176365f5f16841` |
| 26 | `theorem` | [norm_image_zero_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/norm-image-zero-le--de97233777a9c7264caa58e3.md) | 182 | `result-track:de97233777a9c7264caa58e32aa7428c90302eb13ca7c3b04625f1931fc4744e` |
| 27 | `theorem` | [norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/norm-eq--32422adcec1d73cddba96f5e.md) | 186 | `result-track:32422adcec1d73cddba96f5e49e432ed97f35cde1550f5c1c66e4bd476cf1301` |
| 28 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/instance--89012ca9180b1e0cb779f0c6.md) | 192 | `declaration-track:89012ca9180b1e0cb779f0c6550b1b071405e62d170c3eb457abbd5d2ac2cd10` |
| 29 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/instance--3c6899639dd03faadb46e1f5.md) | 216 | `declaration-track:3c6899639dd03faadb46e1f598c134d23742b105ee967d7097cb2643ec567d53` |
| 30 | `theorem` | [norm_comp_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/norm-comp-le--a4f0a74fd16316811dd88d2c.md) | 221 | `result-track:a4f0a74fd16316811dd88d2c6e2133c3ca97fbe12738908ba09e33873573c10c` |
| 31 | `def` | [toConstProdContinuousLinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/toconstprodcontinuouslinearmap--e1c58358089180668b9306df.md) | 244 | `declaration-track:e1c58358089180668b9306dff935eeb9e18050da71e3a7229331bb347e4f8fac` |
| 32 | `theorem` | [toConstProdContinuousLinearMap_fst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/toconstprodcontinuouslinearmap-fst--e6a557c2acdb4b84d2f1ed58.md) | 257 | `result-track:e6a557c2acdb4b84d2f1ed587928d0b053f05eb456ee548899e6c687752b5ae6` |
| 33 | `theorem` | [toConstProdContinuousLinearMap_snd](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean/declarations/toconstprodcontinuouslinearmap-snd--43dad8423ab92e839787779f.md) | 262 | `result-track:43dad8423ab92e839787779f940148cbf4a0185ef9d919b83b7b76107cd2f850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
