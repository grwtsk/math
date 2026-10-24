# Verification target: GRWTSK.Geometry.AlgebraicGeometry.LocallyRingedSpace.Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce4ea7f71d7dad78c0d01fbceff61dae69d65437",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce4ea7f71d7dad78c0d01fbceff61dae69d65437`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.RingedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Stalks` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/locallyringedspace--76daa9b0041022716b671435.md) | 44 | `declaration-track:76daa9b0041022716b671435090e6eb37d4ad137a12946fa2021b1a4325e9e60` |
| 2 | `def` | [toRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/toringedspace--f154c0f8e0d4cbce62e2c4a9.md) | 59 | `declaration-track:f154c0f8e0d4cbce62e2c4a9ae109747d6fd488d61bba033c8307f910154d663` |
| 3 | `def` | [toTopCat](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/totopcat--5d10c9ba4fe4d7a09371c0ff.md) | 65 | `declaration-track:5d10c9ba4fe4d7a09371c0ff9ec9a8620e8edd859ef96d6fe89148e6083fe8de` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--776a17983ac8d0856ae561cd.md) | 70 | `declaration-track:776a17983ac8d0856ae561cdf2f171f1fa9cd3825a2b19a1f2c9a7102c088ba7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--786a471b4644b605de3621f8.md) | 73 | `declaration-track:786a471b4644b605de3621f803b8b61860cda95c6f375f3c39bf8a5fae5fa34c` |
| 6 | `def` | [𝒪](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/anonymous--364fd59884c8023e8110a7a3.md) | 79 | `declaration-track:364fd59884c8023e8110a7a3d25074e85a809599da841faaa30136921fbae693` |
| 7 | `structure` | [Hom](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/hom--8667ab521a5fc6e1e299797e.md) | 87 | `declaration-track:8667ab521a5fc6e1e299797ef051332eb650dddd71c2bfa4437caff13ec928fe` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--507137b74c7ddb9c456f0e70.md) | 95 | `declaration-track:507137b74c7ddb9c456f0e709f5e310f48f3e391d816b092c367f74feb4f406b` |
| 9 | `lemma` | [Hom.ext'](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/hom-ext--b7fad18f8132352686833be3.md) | 98 | `result-track:b7fad18f8132352686833be3c647211082f1d1ead08db1b3c4c11f04f56587e9` |
| 10 | `def` | [stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/stalk--2d6af9b30a7c45050712472d.md) | 105 | `declaration-track:2d6af9b30a7c45050712472dc91c8517b6a52a15fc212b6872ecb86b1ecd9fa1` |
| 11 | `instance` | [stalkLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/stalklocal--18e1c50e96b0018e9bcf422f.md) | 112 | `declaration-track:18e1c50e96b0018e9bcf422f2cea9b657a3eb98dd6192938084880e16be24943` |
| 12 | `def` | [stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/stalkmap--7b56774b2bcedbf7ceb3447d.md) | 117 | `declaration-track:7b56774b2bcedbf7ceb3447d16ecce4e41ba3faa16a321aa45ecd7c0c8190ae7` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--86636e4e89ef867e02925331.md) | 123 | `declaration-track:86636e4e89ef867e02925331e77cac9819098cf5cc7901bc80eba3c760a9cefc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--4825a75758e9207c576a6252.md) | 126 | `declaration-track:4825a75758e9207c576a6252ff421af31fc5722afed48fc6519af577478260b3` |
| 15 | `def` | [id](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/id--6d228d99e6d3b1df560c7ae9.md) | 132 | `declaration-track:6d228d99e6d3b1df560c7ae95ac91f9aaca198c511a94094794831fc831a4fc2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--b3fb6961cd361bf3daf017fb.md) | 137 | `declaration-track:b3fb6961cd361bf3daf017fbd05fbee90eea6b73664f156ab868658e3cefad80` |
| 17 | `def` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/comp--2b1064d40a5d4ea9a6c5a32d.md) | 141 | `declaration-track:2b1064d40a5d4ea9a6c5a32dafba37056b33bc6a1f6d18405304472618377077` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--0d3c3d48c9162d3b354ec161.md) | 149 | `declaration-track:0d3c3d48c9162d3b354ec161c024b9943ed936da44378c0807a3d0be2aea7048` |
| 19 | `def` | [forgetToSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/forgettosheafedspace--e1d87aad92b9330f3a5d16b5.md) | 159 | `declaration-track:e1d87aad92b9330f3a5d16b5c6f2ea2e6d32bf3a9ececd4c222473b9d3dfd471` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--43b1a7c5202f44059c24e8ff.md) | 165 | `declaration-track:43b1a7c5202f44059c24e8ff9b336a94b7c578d88cd5a60eb4a77e80f6a52a22` |
| 21 | `def` | [forgetToTop](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/forgettotop--0f6f620f523980920408b57c.md) | 170 | `declaration-track:0f6f620f523980920408b57c59a619db7d25e7ac874d908361dbfa57aea00751` |
| 22 | `theorem` | [comp_val](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/comp-val--cc43090da1adcad202db985a.md) | 176 | `result-track:cc43090da1adcad202db985aa585397b099bee501f5d88520b652456cab5b8cf` |
| 23 | `theorem` | [comp_val_c](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/comp-val-c--205cf2b33f2b9e03db56de5e.md) | 185 | `result-track:205cf2b33f2b9e03db56de5e6496dda00e8eb6fec8f174480a1427ce27b1e97a` |
| 24 | `theorem` | [comp_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/comp-val-c-app--694686f1cbd7c9c996ba567b.md) | 191 | `result-track:694686f1cbd7c9c996ba567b86c589cf92a6e47f7f3623cc73556175b8239f7c` |
| 25 | `def` | [homOfSheafedSpaceHomOfIsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/homofsheafedspacehomofisiso--e0cb85ca6c1304e88e56de61.md) | 203 | `declaration-track:e0cb85ca6c1304e88e56de6110152bd52a6892d6a684a855834afa8063016d29` |
| 26 | `def` | [isoOfSheafedSpaceIso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/isoofsheafedspaceiso--5ff4677f30c42f677d27f534.md) | 221 | `declaration-track:5ff4677f30c42f677d27f5346575c4c03533710772a0a7beaa93079cd336e892` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/instance--8f799bab14ac01d5a11608ed.md) | 230 | `declaration-track:8f799bab14ac01d5a11608edb94f9c08a5e1e7126df76153335f7dc662230677` |
| 28 | `instance` | [is_sheafedSpace_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/is-sheafedspace-iso--b2dff5238f0bfce837b6404b.md) | 235 | `declaration-track:b2dff5238f0bfce837b6404b7b3338ed958cb870e3d5677d27e9d695fba16037` |
| 29 | `def` | [restrict](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/restrict--1108da553a4e3a92b540111c.md) | 243 | `declaration-track:1108da553a4e3a92b540111c1942bcfcd1022fedb4180172f7014483d587f180` |
| 30 | `def` | [ofRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/ofrestrict--41712aa0e9cade74b798ec00.md) | 255 | `declaration-track:41712aa0e9cade74b798ec001f1f0981e5415e03f90f50843124460a19ea7216` |
| 31 | `def` | [restrictTopIso](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/restricttopiso--8efa7e8c7792c70acdb5af5a.md) | 263 | `declaration-track:8efa7e8c7792c70acdb5af5a4429dcc55c2ef86ff61ebeec3dced2217202fb86` |
| 32 | `def` | [Γ](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/anonymous--7c8269077c09d2b57092a416.md) | 270 | `declaration-track:7c8269077c09d2b57092a4166e6bcb04789af87123e00aa913aa2665716335eb` |
| 33 | `theorem` | [Γ_def](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/def--d321c54abafc1aeac43bab24.md) | 275 | `result-track:d321c54abafc1aeac43bab24fe8a87dcdf189d6dc749c8d4d7b4d317087c3ffc` |
| 34 | `theorem` | [Γ_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/obj--be47d19ca6a44a9bb6f8170c.md) | 281 | `result-track:be47d19ca6a44a9bb6f8170c92dfc48d9eea5dbb00f878e3a92898ea9d6e6b1b` |
| 35 | `theorem` | [Γ_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/obj-op--b83a50581eb4af6a7a6e0cc8.md) | 286 | `result-track:b83a50581eb4af6a7a6e0cc89db6f6309d8a486ff2a987d25430f3120e314b5e` |
| 36 | `theorem` | [Γ_map](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/map--d0fdd48a1a7b550af31c0236.md) | 292 | `result-track:d0fdd48a1a7b550af31c023631d5c89d8811aca66d71b36fb44a9dc1030989a9` |
| 37 | `theorem` | [Γ_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/map-op--78b8eddd169dab85d257c847.md) | 297 | `result-track:78b8eddd169dab85d257c8479c0ae44cb90af2a774367a9ef9bdcdc73891565b` |
| 38 | `theorem` | [preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/preimage-basicopen--5f5ec214c84f5a844a287f8c.md) | 302 | `result-track:5f5ec214c84f5a844a287f8c79ca85e4dfdb8cef347d480b4c2af032d6c094f9` |
| 39 | `theorem` | [basicOpen_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/basicopen-zero--c000896d9cf16c342a886e56.md) | 321 | `result-track:c000896d9cf16c342a886e56804cdee711d119a56ff5ca9faf6485c9a51f4b11` |
| 40 | `instance` | [component_nontrivial](../../../../../mathematics/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant2bd35d4d278cd1fb1b1626bca09889bc33c6b4e25b30a6b7007dabbd8eb37241.lean/declarations/component-nontrivial--a99d4773e733dc3ad90e6359.md) | 334 | `declaration-track:a99d4773e733dc3ad90e6359f09e8cc3f7d7c3a4afaaecd85b597aa17baf7338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
