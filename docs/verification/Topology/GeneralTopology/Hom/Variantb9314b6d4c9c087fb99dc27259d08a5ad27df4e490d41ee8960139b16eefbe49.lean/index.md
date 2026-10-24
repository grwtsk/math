# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20ccf3b062274f8e53ef4780358615736cc38a0d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20ccf3b062274f8e53ef4780358615736cc38a0d`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.StacksAttribute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/isspectralmap--c7bc06bbd34f70359e95aeba.md) | 47 | `declaration-track:c7bc06bbd34f70359e95aeba880cc52d4e85b87b47c344949200ab98af0b5e38` |
| 2 | `theorem` | [IsCompact.preimage_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/iscompact-preimage-of-isopen--1deb541b9012e29c8c530330.md) | 52 | `result-track:1deb541b9012e29c8c5303306226f0754f359780e0ff3db2b0cb6a3f3567c113` |
| 3 | `theorem` | [IsSpectralMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/isspectralmap-continuous--0156e259abe14c401a1bbbc3.md) | 56 | `result-track:0156e259abe14c401a1bbbc3217a827fa87c3717bd53bb49379003059ab1cc91` |
| 4 | `theorem` | [isSpectralMap_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/isspectralmap-id--8bfe613bb81c0212110ec782.md) | 59 | `result-track:8bfe613bb81c0212110ec782062c51c7ed0ae3ba595bf831311464fe505ccf53` |
| 5 | `theorem` | [IsSpectralMap.comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/isspectralmap-comp--eaf9640e7fa71b4ee4d1954f.md) | 63 | `result-track:eaf9640e7fa71b4ee4d1954f75f318ea72a36ca27d43035399c9a043fa965ac1` |
| 6 | `theorem` | [IsProperMap.isSpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/ispropermap-isspectralmap--f60fd813d8d8c357b654c6aa.md) | 68 | `result-track:f60fd813d8d8c357b654c6aa82561d7fbcf313598106479198e5ad8f9cf19f0e` |
| 7 | `structure` | [SpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/spectralmap--72541a45ea3d5420257c00e2.md) | 74 | `declaration-track:72541a45ea3d5420257c00e20791f4fa14c34b30b3f65c37b49d1a4450bb46dd` |
| 8 | `class` | [SpectralMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/spectralmapclass--448718db9c867cb36845000e.md) | 85 | `declaration-track:448718db9c867cb36845000e11e75689d6298886b2233f8c7bcfd7312168d20b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/instance--0d6e80412f46b9a420a65162.md) | 97 | `declaration-track:0d6e80412f46b9a420a65162989911720001d52d5082d0ed28ff936f442f1bfd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/instance--aa717952a4435cbd0318a376.md) | 101 | `declaration-track:aa717952a4435cbd0318a376a836a9f8585522afa719d1e7fb2c93b0efc9e7da` |
| 11 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/tocontinuousmap--384091092a6abd789aae585f.md) | 113 | `declaration-track:384091092a6abd789aae585fd2be72c316a434f877e8d3fc252ca229232b3f46` |
| 12 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/instfunlike--647e6993f785400e64b1ac18.md) | 116 | `declaration-track:647e6993f785400e64b1ac18426030efceddbe85ee9b6f4994c40c4005f3cd39` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/instance--7d65e903e013ec357a803f31.md) | 120 | `declaration-track:7d65e903e013ec357a803f318c706e656da19abe10ab28e4f7f536fb20efd17a` |
| 14 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/tofun-eq-coe--de831dd8fea36e99b06dff57.md) | 124 | `result-track:de831dd8fea36e99b06dff57cf026abc85911b30b786276bbd64b82ebc148b65` |
| 15 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/ext--239a2002f26e2eed2903d926.md) | 128 | `result-track:239a2002f26e2eed2903d926926665c1f7975ba997eeb02e682cfc3fa802c991` |
| 16 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/copy--562fe39efc438c4ade1f2391.md) | 133 | `declaration-track:562fe39efc438c4ade1f2391acfaf14cd85d780533a352f0a855d9d8dca0ae74` |
| 17 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/coe-copy--378723d1a33bb6d590a7bc53.md) | 137 | `result-track:378723d1a33bb6d590a7bc5300ca8b15566e0cff382e9c1bb4dd4e24fc2f6777` |
| 18 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/copy-eq--bfc13a888f6ac278c1c89d00.md) | 140 | `result-track:bfc13a888f6ac278c1c89d002e1fd29a00b8b9261d65708f370a5fc69ec71716` |
| 19 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/id--a6eb78e6a328884609edd8c5.md) | 146 | `declaration-track:a6eb78e6a328884609edd8c5c4fea6a62dd3531ee78a2f39c4fa8d89833376d3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/instance--e2dbe0458730a824454f09a4.md) | 149 | `declaration-track:e2dbe0458730a824454f09a495a58f296e842d65fc70dabe86498b37a9c93e58` |
| 21 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/coe-id--955e4e7fa41e7cfc31d757d1.md) | 153 | `result-track:955e4e7fa41e7cfc31d757d16c898f1849746030f297628343b45e2559280116` |
| 22 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/id-apply--533c05e97ff5ddab3a060d89.md) | 159 | `result-track:533c05e97ff5ddab3a060d893364952c0dd4011f5235c657fc5889c7f63407e0` |
| 23 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/comp--c61de7572d5c93eb78ace4cc.md) | 163 | `declaration-track:c61de7572d5c93eb78ace4cc5882f7d7d0190a2c0b53225b94a3d1ac0b4359c0` |
| 24 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/coe-comp--6700bceb07f9d10bfbeca4d1.md) | 167 | `result-track:6700bceb07f9d10bfbeca4d1bfa22f818ad6270250d6d9d5207ae5a3e51a64d9` |
| 25 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/comp-apply--69997dab2a3d556147a03ab4.md) | 171 | `result-track:69997dab2a3d556147a03ab44fe25c9fb62179550989c6a59f017b4a25d2617f` |
| 26 | `theorem` | [coe_comp_continuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/coe-comp-continuousmap--2a9325800d0e1779b9ab4a9e.md) | 174 | `result-track:2a9325800d0e1779b9ab4a9e6b36fb418bae7c43fe731040319d1609c4ba7183` |
| 27 | `theorem` | [coe_comp_continuousMap'](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/coe-comp-continuousmap--20a7da38566d54716ac45411.md) | 179 | `result-track:20a7da38566d54716ac454116d273814a9f18987adb1287dccfa10b4738f66c8` |
| 28 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/comp-assoc--e8f1606eeef54930a82c7f87.md) | 184 | `result-track:e8f1606eeef54930a82c7f873aeee86bce3a6b19e5fa9941b827bdeac174b701` |
| 29 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/comp-id--2cbef655fb75918fd86eb555.md) | 189 | `result-track:2cbef655fb75918fd86eb55571c3e9a2a655e31420c6003d5bc48b242a1a73c7` |
| 30 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/id-comp--01a466aea63b042ad6d59772.md) | 193 | `result-track:01a466aea63b042ad6d59772d4bcdc03524128f0c0e5a93edd80c4c0c01d2e4a` |
| 31 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/cancel-right--b23fc4ee8935d7a473605592.md) | 197 | `result-track:b23fc4ee8935d7a4736055920d4a4207455273198f8415a00a2abecb45863089` |
| 32 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantb9314b6d4c9c087fb99dc27259d08a5ad27df4e490d41ee8960139b16eefbe49.lean/declarations/cancel-left--109e246124ea301ed03b68a9.md) | 203 | `result-track:109e246124ea301ed03b68a94606e200315add26b26e92e082cae025bfb577df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
