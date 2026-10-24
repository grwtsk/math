# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a65e9d2d648cfc6927224285636339892eb407f4",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a65e9d2d648cfc6927224285636339892eb407f4`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.UnionLift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/continuousmap--c64185fcb9d2dde873f87ce0.md) | 37 | `declaration-track:c64185fcb9d2dde873f87ce06637b3297e2eff6f1daf4211c10d16797648edf0` |
| 2 | `class` | [ContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/continuousmapclass--322c132a8c262777d474eecc.md) | 52 | `declaration-track:322c132a8c262777d474eecc27f4714ae3da0f8b0721410365dd414979d5b9c0` |
| 3 | `theorem` | [map_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/map-continuousat--bf355648719d9d1b21685826.md) | 68 | `result-track:bf355648719d9d1b21685826c8bcf0507ece36eaa458dd512ef7b03c71996dd0` |
| 4 | `theorem` | [map_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/map-continuouswithinat--114c54c24cefd65b68652d57.md) | 72 | `result-track:114c54c24cefd65b68652d57642c091836596f3b22c181bd533c117743475b3f` |
| 5 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/tocontinuousmap--e689c15e776e9d774f8f538b.md) | 77 | `declaration-track:e689c15e776e9d774f8f538b3a1b3622a0e10f32e520dc2f674d739721b01573` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/instance--13bc0d5463678d87599e68dc.md) | 79 | `declaration-track:13bc0d5463678d87599e68dc0cee1ff05ed00548bb8ca4f4094e8e8bd7bb1b8f` |
| 7 | `instance` | [toContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/tocontinuousmapclass--91a2f598f68646112b08f009.md) | 91 | `declaration-track:91a2f598f68646112b08f009edceb851643663498156d39d73a85d94d4b44e40` |
| 8 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/tofun-eq-coe--d88baa88b3342dbf6fcef5da.md) | 103 | `result-track:d88baa88b3342dbf6fcef5da22e5a8cb39a3c71040a9b1f091451404f78f14fd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/instance--41e6e186eb6fde5ca92b4813.md) | 107 | `declaration-track:41e6e186eb6fde5ca92b4813309760e680e2559f233b618859852c77f6369c7e` |
| 10 | `def` | [Simps.apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/simps-apply--b64803fe17e6b946ef7bfa81.md) | 110 | `declaration-track:b64803fe17e6b946ef7bfa81826c3381386d6750559055f91f7317b1de78048b` |
| 11 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-coe--6c1aa8ca99e1c063ec124134.md) | 116 | `result-track:6c1aa8ca99e1c063ec124134570fbd94c3bae3ee5596c61fb0dc44a6f1ed5cd2` |
| 12 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/ext--21a4b47f7b1c8a03b4c32562.md) | 121 | `result-track:21a4b47f7b1c8a03b4c32562a4f0cfb926cbba9b29b4cd53a51b19641ffa948b` |
| 13 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/copy--df7721c8c024f4b02cd6a71e.md) | 127 | `declaration-track:df7721c8c024f4b02cd6a71e7cc08da2d90202b0fb7b1ce82157c8e1ae818f2d` |
| 14 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-copy--ee8072237b90529f9413ba7b.md) | 133 | `result-track:ee8072237b90529f9413ba7b6d51d460d2bd233a38f5752016ab614ec273f45b` |
| 15 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/copy-eq--75d418c4d76291d6d9f9f655.md) | 137 | `result-track:75d418c4d76291d6d9f9f6555f18d5a2b069d940513219672bdb738506b8d786` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/continuous--aa4146dacab96c16e350bb7f.md) | 144 | `result-track:aa4146dacab96c16e350bb7f9e73057cf3fd7ca8d89bdd40e9c9011993d8a8af` |
| 17 | `theorem` | [continuous_set_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/continuous-set-coe--838952b71a10509e872c8b89.md) | 149 | `result-track:838952b71a10509e872c8b89eed4ffe2a3abf0d798cbdbedfb2cf1d078818d3e` |
| 18 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/continuousat--f76aa1ebb51abc7488993af6.md) | 154 | `result-track:f76aa1ebb51abc7488993af6627309e8249987d9ca1792fb148d97817ba26448` |
| 19 | `theorem` | [congr_fun](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/congr-fun--c05fd412fe18f8e361e84e39.md) | 159 | `result-track:c05fd412fe18f8e361e84e39bd175636d82172079b6b1428affc44ed9814766d` |
| 20 | `theorem` | [congr_arg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/congr-arg--179411455422d0f7dd04861d.md) | 164 | `result-track:179411455422d0f7dd04861d9c0e8fe6a2017926665bfbb83c9321ae1cbcf3f4` |
| 21 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-injective--3d4f284e67b4fe6559893338.md) | 168 | `result-track:3d4f284e67b4fe6559893338a852d18a9fa6f1078c4e85b969f495712aaaaef9` |
| 22 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-mk--bb066f78b959e4a28080e2db.md) | 173 | `result-track:bb066f78b959e4a28080e2dbbb4cce56407a97aba3793c5be8b79051ff368f4f` |
| 23 | `theorem` | [map_specializes](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/map-specializes--7fc60048365b314682c0cb5f.md) | 177 | `result-track:7fc60048365b314682c0cb5f09df7aa6191959a266e43143c3ced61de73fb7e0` |
| 24 | `def` | [equivFnOfDiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/equivfnofdiscrete--fda6e9b1e22c2eef45a13857.md) | 189 | `declaration-track:fda6e9b1e22c2eef45a13857c56c37f9f0c2fb75e083c39b3bf00bdc94530b33` |
| 25 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/id--b56700f84859f686af9b5d88.md) | 201 | `declaration-track:b56700f84859f686af9b5d88fdd3cde4bbec055202f454718ba16928c4677d7f` |
| 26 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-id--8b19df091ee2fc31052d6159.md) | 206 | `result-track:8b19df091ee2fc31052d61598fa648caf007ba5f0d0a05306dbe789afc536210` |
| 27 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/const--308f73f4f4bfbe581eaff62e.md) | 211 | `declaration-track:308f73f4f4bfbe581eaff62ef0cc28c89de503055c5760ce91b34b059a5e3188` |
| 28 | `theorem` | [coe_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-const--e229274255ace0abce4a2584.md) | 216 | `result-track:e229274255ace0abce4a25849c8638d62ec35d27fe93f8aec2753bc80152ed1a` |
| 29 | `def` | [constPi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/constpi--197ed0b77ca123e63c75ec3f.md) | 222 | `declaration-track:197ed0b77ca123e63c75ec3fef046405f1036a9c5a4a3d6f618d3af292e33f7d` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/instance--e13a32955d565e7d3be8341d.md) | 225 | `declaration-track:e13a32955d565e7d3be8341d747a8ad0aaed2c33b4f688e418cc0b2841615165` |
| 31 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/id-apply--8b17d9331e7213c8f1f9e045.md) | 231 | `result-track:8b17d9331e7213c8f1f9e04516ba9b0c7766926bb272ce420582e5106af3f52b` |
| 32 | `theorem` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/const-apply--3e97bbf2c2803da9f1a62ee6.md) | 236 | `result-track:3e97bbf2c2803da9f1a62ee6c479ee45751eb3a8b726ae9bd76c5e719dcd11f6` |
| 33 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/comp--d8b48cfba7f6c2362a4fed14.md) | 241 | `declaration-track:d8b48cfba7f6c2362a4fed14a4273ec87093cd196ee0988a00aac9b184b47481` |
| 34 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-comp--283001be6b1b834aa972d133.md) | 246 | `result-track:283001be6b1b834aa972d133fc138b9438c0caa4bfd1b3dcc5e90faa2c055a1b` |
| 35 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/comp-apply--e83c439fbf40f5f7dd56f7a6.md) | 251 | `result-track:e83c439fbf40f5f7dd56f7a61f74eb7687567cb85f1ebbe02b84427a942c27b0` |
| 36 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/comp-assoc--faf164f8745b82b773c97892.md) | 256 | `result-track:faf164f8745b82b773c97892335fbb6ca9ad31537473c2f72adbad523b6816a0` |
| 37 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/id-comp--0b1496486c61570374b4c119.md) | 262 | `result-track:0b1496486c61570374b4c119b397e6badbd0b09af835555aa0e6f937409034e8` |
| 38 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/comp-id--f1d6f37722590f2f617ee57a.md) | 267 | `result-track:f1d6f37722590f2f617ee57a0be00685c0e67c55190eb89526f236baa888a842` |
| 39 | `theorem` | [const_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/const-comp--7068e953cd986128ff596773.md) | 272 | `result-track:7068e953cd986128ff596773513e3dff94ebf4fbf7cc305aa495ef4986872e27` |
| 40 | `theorem` | [comp_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/comp-const--8d69370a9c6cd08640ff104d.md) | 277 | `result-track:8d69370a9c6cd08640ff104d36ece77078890621b62c31171350614db5a385d8` |
| 41 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/cancel-right--ee054ec8d9a42c550e0c4cbd.md) | 281 | `result-track:ee054ec8d9a42c550e0c4cbd0bd2d95db778f7ad57776866b8e44fe135b43565` |
| 42 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/cancel-left--5afd3a355461ef08f3ce6cd5.md) | 286 | `result-track:5afd3a355461ef08f3ce6cd526e1c78e0de316715ff171753905943ab814450a` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/instance--68c48b7cf72641260d4787eb.md) | 291 | `declaration-track:68c48b7cf72641260d4787eb0b0851774d2773b3f238a45c1cbdf043c9efd87f` |
| 44 | `def` | [fst](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/fst--bce20c05196f8067e484b6cc.md) | 302 | `declaration-track:bce20c05196f8067e484b6ccc0e44507ee3454f957a53e6a44a8bba0f416ac20` |
| 45 | `def` | [snd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/snd--b6a4d34dab7b487f0fe7ab9d.md) | 307 | `declaration-track:b6a4d34dab7b487f0fe7ab9dcc12c3c396940e25a2f878c8b05ea4c7d68093bd` |
| 46 | `def` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/prodmk--ea6c20edafc03421438ef05d.md) | 311 | `declaration-track:ea6c20edafc03421438ef05d8673720d319ffb8e9c0efe65b30b2e0e442894a0` |
| 47 | `def` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/prodmap--83eddc9c80f4e1ef6f0cf5ad.md) | 317 | `declaration-track:83eddc9c80f4e1ef6f0cf5ad8e3f613cdb30377d65cd676ea52833999f3dd207` |
| 48 | `theorem` | [prod_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/prod-eval--5165bcb447c5cbeda5e29949.md) | 324 | `result-track:5165bcb447c5cbeda5e29949aa8817ad80678dd8aa75a1f2dcbb91b36a71019f` |
| 49 | `def` | [prodSwap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/prodswap--0aa7ec772ff95dcfefcdf653.md) | 330 | `declaration-track:0aa7ec772ff95dcfefcdf653634806a093bdea98b6d2e94ae754c47dd038612e` |
| 50 | `def` | [sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/sigmamk--3753c140a4b74b90342aa166.md) | 336 | `declaration-track:3753c140a4b74b90342aa1668b15a11b6662acd03104d6bf096dd2f224bbf734` |
| 51 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/pi--3321c15c02c0a9f02ea1fec2.md) | 346 | `declaration-track:3321c15c02c0a9f02ea1fec2f07302eee8604ae826f0907f2c80048909df3126` |
| 52 | `theorem` | [pi_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/pi-eval--7c1d072bd6f91a3d4acd3376.md) | 351 | `result-track:7c1d072bd6f91a3d4acd3376e636b18a8cb4f1416b38e75a0b7392d2d872fd69` |
| 53 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/eval--43516cff3efb8e10db453e02.md) | 357 | `declaration-track:43516cff3efb8e10db453e02802afd8238d5f1f46c5cc00d40d2eb627a1f6dd3` |
| 54 | `def` | [piMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/pimap--e3f1dbc874c1ff00be3f09c3.md) | 363 | `declaration-track:e3f1dbc874c1ff00be3f09c388086537cafb71136c1720439abb5908aa850685` |
| 55 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/restrict--a9b3719476ccfd88236b700b.md) | 373 | `declaration-track:a9b3719476ccfd88236b700b9776ef9e91cb803696c97edd663ff6545fe75847` |
| 56 | `theorem` | [coe_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-restrict--aa2358adb82ff5e98b9a8321.md) | 378 | `result-track:aa2358adb82ff5e98b9a83215fab988f1070de0d3cb2d40429b550a5b7071d2e` |
| 57 | `theorem` | [restrict_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/restrict-apply--28636155f237e63f75de0a9b.md) | 383 | `result-track:28636155f237e63f75de0a9bea4edb5a5d46d2d867aa4d20c403859434c586b1` |
| 58 | `theorem` | [restrict_apply_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/restrict-apply-mk--6d208a9722b4e22927337ded.md) | 388 | `result-track:6d208a9722b4e22927337ded982e3495a99686862017ceb75eb513ba7e245910` |
| 59 | `theorem` | [injective_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/injective-restrict--c24aa644563a4a6a94c21eab.md) | 393 | `result-track:c24aa644563a4a6a94c21eab32e1794dbec076649a75180dff638f1521848240` |
| 60 | `def` | [restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/restrictpreimage--991ac8cab71366c051ebe364.md) | 400 | `declaration-track:991ac8cab71366c051ebe364f46aed2ad666ed99a2907f4743af492406effa34` |
| 61 | `def` | [liftCover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/liftcover--9081fe9b7314e90ac67e7314.md) | 415 | `declaration-track:9081fe9b7314e90ac67e7314b0593a39cb70356f692c645db4f59b1895045544` |
| 62 | `theorem` | [liftCover_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/liftcover-coe--44c3c9b7c0db7a11f3fbbfad.md) | 426 | `result-track:44c3c9b7c0db7a11f3fbbfadbdf7ae8038bc6a54a89e8698f591c35af57b6eaa` |
| 63 | `theorem` | [liftCover_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/liftcover-restrict--f8a2404ea9784fdf35c82213.md) | 431 | `result-track:f8a2404ea9784fdf35c82213c35ac2ee66444e045145717afd5e6e27e845d2a1` |
| 64 | `def` | [liftCover'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/liftcover--64ac13082ff6c61a2b07229b.md) | 444 | `declaration-track:64ac13082ff6c61a2b07229b61f436c3ac9a99db890d98152b90ec3fb1e7cbd7` |
| 65 | `theorem` | [liftCover_coe'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/liftcover-coe--7040781bb8acb0987cb4a7fa.md) | 459 | `result-track:7040781bb8acb0987cb4a7fa29798287fe6da98b8c7c125ff309b9ab560c65a8` |
| 66 | `theorem` | [liftCover_restrict'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/liftcover-restrict--ae4920260248731ff0a06001.md) | 466 | `result-track:ae4920260248731ff0a06001e0b21158089fa6ed6f20ca881e5c01a4014fa191` |
| 67 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/tocontinuousmap--24c09c962e0d3678b093de68.md) | 482 | `declaration-track:24c09c962e0d3678b093de681acd6065c340d3e3fd3b52c030cc0c3e354f31b9` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/instance--d1b30a7b24b4654f3d8b280b.md) | 488 | `declaration-track:d1b30a7b24b4654f3d8b280b4d218a43cfede19a307cea5e21f55c3f5dd957e4` |
| 69 | `theorem` | [coe_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-refl--88a0c8839fb1fdd80920c182.md) | 498 | `result-track:88a0c8839fb1fdd80920c18284c981a4236a9c607b6c38e8071630e519534889` |
| 70 | `theorem` | [coe_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/coe-trans--ed0218b7446456b6927a06a7.md) | 503 | `result-track:ed0218b7446456b6927a06a7f70408e3a7c79f9c98e3e7002acabeaa0deea5dd` |
| 71 | `theorem` | [symm_comp_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/symm-comp-tocontinuousmap--a7e2853c47531fce1cc0a0a7.md) | 509 | `result-track:a7e2853c47531fce1cc0a0a7da545a207323516f8f62130ad6e116be6ff554f9` |
| 72 | `theorem` | [toContinuousMap_comp_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d55f9a255c4a9e41634cd350b4fe97dfe882c657a386182e3f16b34a944b6c7.lean/declarations/tocontinuousmap-comp-symm--2fa1c16e4f644f9d6e51157a.md) | 515 | `result-track:2fa1c16e4f644f9d6e51157a0b08ac0a0eda7394e66c9a71c532fcedc877e8a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
