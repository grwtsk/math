# Verification target: GRWTSK.Algebra.Basic.Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8767d1701d07bd76ecfeb5459c51d21566a06b70`.

Source path: `GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mapPiEvalRingHom](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/mappievalringhom--827eff10402635d889e3b3e7.md) | 87 | `declaration-track:827eff10402635d889e3b3e72e3070b9bee9a4c5055f01bb23fdaadd4fd56813` |
| 2 | `theorem` | [mapPiEvalRingHom_bijective](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/mappievalringhom-bijective--101299c7e050dc86b9be507c.md) | 92 | `result-track:101299c7e050dc86b9be507cdbc59c26b23b348cac03fab205b8dc082a731eb6` |
| 3 | `lemma` | [finite](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/finite--776094f98e47e383a8c86acf.md) | 124 | `result-track:776094f98e47e383a8c86acfa900ee9fe40896d05859589e3b96a5b390e901b8` |
| 4 | `theorem` | [linearMap_compatibleSMul](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/linearmap-compatiblesmul--9c4129e422ad8057b796122b.md) | 135 | `result-track:9c4129e422ad8057b796122be3ead1222eed986df1eba66586c316aca2fc7539` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/instance--00c10ddd646ec4680564a52c.md) | 143 | `declaration-track:00c10ddd646ec4680564a52c6925811c840e9f0c2caf72623713f2aa4fcf4e53` |
| 6 | `theorem` | [algHom_subsingleton](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/alghom-subsingleton--6ef5339d87905ca9e4b6fd6d.md) | 155 | `result-track:6ef5339d87905ca9e4b6fd6d5b156451ebcc40a464c3ff76dc2f4ad8ec3f59aa` |
| 7 | `def` | [algEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv--a02c1d5048bfbdbeec5664e5.md) | 171 | `declaration-track:a02c1d5048bfbdbeec5664e5a06596169d9832051c919011344971b60f96f99b` |
| 8 | `theorem` | [algEquiv_mk'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-mk--fc3cc508ad0007132f3b9b72.md) | 177 | `result-track:fc3cc508ad0007132f3b9b72c18c88b5e0853f4098f28ac63243883099d279cb` |
| 9 | `theorem` | [algEquiv_symm_mk'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-symm-mk--dda63111db23c331d08c5db2.md) | 180 | `result-track:dda63111db23c331d08c5db244e2c0706d1edc04facb24d4cfe22994a7257920` |
| 10 | `lemma` | [bijective](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/bijective--0ce74daa06164250b51de6e8.md) | 184 | `result-track:0ce74daa06164250b51de6e8833023799875e442b42567a913421352c9747ac7` |
| 11 | `def` | [liftAlgHom](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/liftalghom--81540b9b667ccb996271313b.md) | 202 | `declaration-track:81540b9b667ccb996271313b99e45a7b3851ab2511c8a9861d7313d68d107959` |
| 12 | `theorem` | [liftAlgHom_toRingHom](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/liftalghom-toringhom--2254bf9148fb0c4ebb7dd963.md) | 206 | `result-track:2254bf9148fb0c4ebb7dd96396d420aef63e96d207b82d03578e4bd0b9811314` |
| 13 | `theorem` | [coe_liftAlgHom](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/coe-liftalghom--bb0f4b314c1d86f27d70878c.md) | 209 | `result-track:bb0f4b314c1d86f27d70878cfac4c7c8a52e7d765da901afa298cd9f5094bdd8` |
| 14 | `theorem` | [liftAlgHom_apply](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/liftalghom-apply--231dc07609bfe5c4377bff06.md) | 211 | `result-track:231dc07609bfe5c4377bff06d2fdd841bc13781a6896b11fff40770b524cb107` |
| 15 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequivofalgequiv--7b172c6400139beb05fd0e67.md) | 232 | `declaration-track:7b172c6400139beb05fd0e6797e6affd5af7250fb2b13511e07bab224457bf31` |
| 16 | `theorem` | [algEquivOfAlgEquiv_eq_map](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequivofalgequiv-eq-map--aa8ad851620cf1a7253ca7d0.md) | 239 | `result-track:aa8ad851620cf1a7253ca7d08927beb8449db482f76044071c965d277f051c7d` |
| 17 | `theorem` | [algEquivOfAlgEquiv_eq](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequivofalgequiv-eq--3d3f10ae41fbb3f060c91c91.md) | 245 | `result-track:3d3f10ae41fbb3f060c91c917a3c6a749ef361b0690d4cbb5e33bd23f94332cd` |
| 18 | `theorem` | [algEquivOfAlgEquiv_mk'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequivofalgequiv-mk--4063b4065b352570ba725dca.md) | 251 | `result-track:4063b4065b352570ba725dcaac04efe04a04287e1d2531873753111bab35f2dc` |
| 19 | `theorem` | [algEquivOfAlgEquiv_symm](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequivofalgequiv-symm--9cee9967904258da9d0ae642.md) | 256 | `result-track:9cee9967904258da9d0ae64293ddcf228de3947da0925c3d79de7e3d8c3d4e5e` |
| 20 | `lemma` | [smul_mem_iff](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/smul-mem-iff--bd7c3063673bff3d15fb5270.md) | 272 | `result-track:bd7c3063673bff3d15fb527010822f8969cbdb2c2b09d7485720f62b32b2e442` |
| 21 | `lemma` | [of_le_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/of-le-isunit-of-bijective--c93a727c887f42bdc1776eac.md) | 282 | `result-track:c93a727c887f42bdc1776eac179b60b2419030faa7b8e29617c3aed0dea6a9f9` |
| 22 | `lemma` | [of_le_isUnit](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/of-le-isunit--977e3ae3d43988251c47ef8e.md) | 293 | `result-track:977e3ae3d43988251c47ef8ed332329d7c343929e0e0aa042d4afa593a56737c` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/instance--0a8f9e4394a646ad694d1253.md) | 299 | `declaration-track:0a8f9e4394a646ad694d12535cf5f3cc7a791063273fb10d96b5c45b7da4e008` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/instance--e970c66185ca0156edf3e1ad.md) | 301 | `declaration-track:e970c66185ca0156edf3e1ad7a2bc1e61b6e8e5ca554670049dd2a3775142d8b` |
| 25 | `def` | [atUnits](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/atunits--31713413c5cfc7fa71a7587e.md) | 307 | `declaration-track:31713413c5cfc7fa71a7587e8726909befc95d52b1b1bd21818bc2b11f26a3c5` |
| 26 | `theorem` | [isLocalization_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-of-algequiv--24721bf65967954a6636300c.md) | 329 | `result-track:24721bf65967954a6636300c22875e967fe56100b0146d00835a26278670ea45` |
| 27 | `theorem` | [self](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/self--313abca310f7f85feadb0adb.md) | 346 | `result-track:313abca310f7f85feadb0adb88d7109bead63e2fb21a7b6833c9c002b2cd9969` |
| 28 | `theorem` | [isLocalization_iff_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-iff-of-algequiv--bc516440b57fd861da57d465.md) | 349 | `result-track:bc516440b57fd861da57d465187f01550f00912589e79543d594c6c8bfcd484a` |
| 29 | `theorem` | [isLocalization_iff_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-iff-of-ringequiv--be6225a4a9c6607e6dd980ed.md) | 353 | `result-track:be6225a4a9c6607e6dd980ed8c543f80944528a615205e21584e5f4166109907` |
| 30 | `theorem` | [isLocalization_iff_of_isLocalization](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-iff-of-islocalization--7582f4739cb57bab116c4918.md) | 362 | `result-track:7582f4739cb57bab116c4918e6ccd607d44229c55236a06531b1106938516a44` |
| 31 | `theorem` | [iff_of_le_of_exists_dvd](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/iff-of-le-of-exists-dvd--df2534f50810a4c796041805.md) | 367 | `result-track:df2534f50810a4c79604180530ee68a4817d16b34978ec4ef84de35d5a009516` |
| 32 | `lemma` | [commutes](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/commutes--433177ada6d36e279b40fe8d.md) | 379 | `result-track:433177ada6d36e279b40fe8db0f8fb84932e5df5cae14475023942df5a1ae926` |
| 33 | `theorem` | [algEquiv_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-comp-algebramap--bae72f92a7547ec28d8362bc.md) | 424 | `result-track:bae72f92a7547ec28d8362bc6bb21398414f2fa56c650d4c1eafe9efc1f512e8` |
| 34 | `theorem` | [algEquiv_comp_algebraMap_apply](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-comp-algebramap-apply--f2ab9ba8e66fc51a806e8579.md) | 432 | `result-track:f2ab9ba8e66fc51a806e8579d45cda5477caab25bd35a1e3d8c40860301f2953` |
| 35 | `theorem` | [mk_natCast](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/mk-natcast--63ac9dd7747c1bdb489f1b20.md) | 444 | `result-track:63ac9dd7747c1bdb489f1b2054ef6871dbf6c1b2e61a2f6f7b4c714e85c98e92` |
| 36 | `def` | [algEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv--4fbed0be38500030b66daafe.md) | 455 | `declaration-track:4fbed0be38500030b66daafe08a17d922704a7df3559f47b2ef3c512a377e083` |
| 37 | `def` | [_root_.IsLocalization.unique](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/root-islocalization-unique--29bec739d38e730efa2d2556.md) | 460 | `declaration-track:29bec739d38e730efa2d255667b66ffc2944d2dd0d0e7d66e989742a55ae5843` |
| 38 | `theorem` | [algEquiv_mk'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-mk--57237c327a3fe021e0121956.md) | 467 | `result-track:57237c327a3fe021e0121956cc3cd675175f379b6ef7fe69e4c09b5bd8687993` |
| 39 | `theorem` | [algEquiv_symm_mk'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-symm-mk--99177a7c45b46b922fef5727.md) | 470 | `result-track:99177a7c45b46b922fef57278d54e4ac43a67a183431bb64a45306aeaed56730` |
| 40 | `theorem` | [algEquiv_mk](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-mk--fabba8dbc7d7cdbad51e34a1.md) | 474 | `result-track:fabba8dbc7d7cdbad51e34a14c78bd80fc6b0fc862cd0eccabb0d124ee210eb6` |
| 41 | `theorem` | [algEquiv_symm_mk](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-symm-mk--0f3c812ce6e29a6911b88506.md) | 476 | `result-track:0f3c812ce6e29a6911b88506169fb3b831e192c3484b0125f003e831137d512e` |
| 42 | `lemma` | [coe_algEquiv](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/coe-algequiv--26d0f2ca7b41f5c1d00a9f30.md) | 479 | `result-track:26d0f2ca7b41f5c1d00a9f3059f5e172c5497c0691ca2fd7ad30f67b3d95a512` |
| 43 | `lemma` | [coe_algEquiv_symm](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/coe-algequiv-symm--bee137e45c2da303770ebb55.md) | 483 | `result-track:bee137e45c2da303770ebb550949bdfaeba0c270e690864ee116d16ea057b000` |
| 44 | `theorem` | [IsField.localization_map_bijective](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/isfield-localization-map-bijective--9daa364de9b5ec996cabaffd.md) | 492 | `result-track:9daa364de9b5ec996cabaffdd3d3c8fd190c7a85cc6c43dbc34a009f72630c04` |
| 45 | `theorem` | [Field.localization_map_bijective](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/field-localization-map-bijective--635fccd19a322c5c1239219a.md) | 503 | `result-track:635fccd19a322c5c1239219adc2cb36a0cec169bac155b60828d8600792d8e1a` |
| 46 | `def` | [localizationAlgebra](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/localizationalgebra--4e18e75726f30f241a2a8ff5.md) | 531 | `declaration-track:4e18e75726f30f241a2a8ff533fefe466ee0121ff48c135756bba2490f126ada` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/instance--6ab6de96863419c8bbe76587.md) | 536 | `declaration-track:6ab6de96863419c8bbe765870da1064398c7ab40cdd4615aea19962dd0d6dba2` |
| 48 | `lemma` | [isScalarTower_localizationAlgebra](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/isscalartower-localizationalgebra--fd26ce3507c1a1bab5391027.md) | 541 | `result-track:fd26ce3507c1a1bab539102726f463d0f65387b0af6f24e6c9ebe10136271e97` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/instance--ff709491b7db43a4e428dddc.md) | 548 | `declaration-track:ff709491b7db43a4e428dddc4eb8be8387983bbb17ca9219dd9e0c9b5ed22708` |
| 50 | `theorem` | [IsLocalization.map_units_map_submonoid](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-map-units-map-submonoid--e96f42e42a019ae23c7cc7af.md) | 558 | `result-track:e96f42e42a019ae23c7cc7af29b4b7572a5f1ee46c5997d075d63234bca50c8f` |
| 51 | `theorem` | [IsLocalization.algebraMap_mk'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-algebramap-mk--da937507c1f0efdaaf730651.md) | 563 | `result-track:da937507c1f0efdaaf7306519abb6035b115189fc4b52b3cc9028304e38d9c50` |
| 52 | `theorem` | [IsLocalization.algebraMap_eq_map_map_submonoid](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-algebramap-eq-map-map-submonoid--6cb214bb0cc63bca38d4ecf1.md) | 582 | `result-track:6cb214bb0cc63bca38d4ecf1cbf946846e8bb1fdc6de645fefad958a978a7bef` |
| 53 | `theorem` | [IsLocalization.algebraMap_apply_eq_map_map_submonoid](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-algebramap-apply-eq-map-map-submonoid--ee0ebd55a0d8852e355357fe.md) | 597 | `result-track:ee0ebd55a0d8852e355357fe8e13151b685d89f47da5bd9f7bd2a3550caacf7b` |
| 54 | `theorem` | [IsLocalization.lift_algebraMap_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-lift-algebramap-eq-algebramap--61603d9a0146fe04be04a338.md) | 603 | `result-track:61603d9a0146fe04be04a338926a1e2b296775da851fd9b49ce12ac7b220267e` |
| 55 | `theorem` | [localizationAlgebraMap_def](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/localizationalgebramap-def--2d490152c0ad7f2984fdd95b.md) | 612 | `result-track:2d490152c0ad7f2984fdd95b82df71e0e97221ffd670d923cebbdc48936c59d5` |
| 56 | `theorem` | [localizationAlgebra_injective](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/localizationalgebra-injective--bfdf6630e683f441cb64555b.md) | 619 | `result-track:bfdf6630e683f441cb64555b6d9fe0acc1b2f080bae1dc33f06993d11bfe4928` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/instance--576402bfaa5046ab90370a5b.md) | 624 | `declaration-track:576402bfaa5046ab90370a5b68457e40601f5e9cf547e51d73068960ac55d3b2` |
| 58 | `theorem` | [map_injective_of_injective'](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/map-injective-of-injective--9646a1fd58ca8c98e510e721.md) | 642 | `result-track:9646a1fd58ca8c98e510e72146c727433e7021d949d970be1c4e680fcc7cf52c` |
| 59 | `theorem` | [Localization.mk_intCast](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/localization-mk-intcast--1d204b95471887fca28cde9c.md) | 653 | `result-track:1d204b95471887fca28cde9c23dfe5f114e13263f8d17553f0c316468159aa88` |
| 60 | `theorem` | [Localization.r_iff_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/localization-r-iff-of-le-nonzerodivisors--7cc91aa565ad75272dd77155.md) | 656 | `result-track:7cc91aa565ad75272dd77155b57177bd5e70090bda7c15229e9f6c054f26383a` |
| 61 | `theorem` | [IsLocalization.algHom_ext](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/islocalization-alghom-ext--df20652dfe3ba989b13e8bfd.md) | 672 | `result-track:df20652dfe3ba989b13e8bfd5af2ca64c3e8ad3fb31091b984955471e609a1d5` |
| 62 | `theorem` | [Localization.algHom_ext](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/localization-alghom-ext--0c18b64d2315035d2c1f24a2.md) | 683 | `result-track:0c18b64d2315035d2c1f24a2328f383d0b816c67049e3b4c701086af3ac94f39` |
| 63 | `def` | [AlgHom.extendScalarsOfIsLocalization](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/alghom-extendscalarsofislocalization--793616b6f4baa9cbf58861a2.md) | 699 | `declaration-track:793616b6f4baa9cbf58861a2b58db7d922ee7deba9f8426f48a4e81e92811d22` |
| 64 | `theorem` | [AlgHom.extendScalarsOfIsLocalization_apply](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/alghom-extendscalarsofislocalization-apply--4987b24fa3beaec105aca653.md) | 710 | `result-track:4987b24fa3beaec105aca65385826dabd09b93fce45905bbf2153d14262c04f2` |
| 65 | `def` | [AlgEquiv.extendScalarsOfIsLocalization](../../../../mathematics/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/declarations/algequiv-extendscalarsofislocalization--0be2e26c74393a64050c5398.md) | 717 | `declaration-track:0be2e26c74393a64050c53982de017ea6be872ce7f32d498aca1cab8fd5584c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
