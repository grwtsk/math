# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnionFind.Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74cb6ca8121af6cab3b2eef5dc0f71d2ff503822",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74cb6ca8121af6cab3b2eef5dc0f71d2ff503822`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Array.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UFModel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/ufmodel--54b814154a00e6cf6f540419.md) | 20 | `declaration-track:54b814154a00e6cf6f540419ef78747ac442c49cf6b78de7b8cfe237595bfe81` |
| 2 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/empty--c7c7a1feb437ceebab17a122.md) | 27 | `declaration-track:c7c7a1feb437ceebab17a12295a961e0ff961fc2db5aa5149a08e5224b2de46b` |
| 3 | `def` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/push--ff5f2f6cfbfd42aabbfe4006.md) | 32 | `declaration-track:ff5f2f6cfbfd42aabbfe400660f20badd798bc7d620ea4f317ecec7b307a7aa6` |
| 4 | `def` | [setParent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/setparent--3094493898d2833b18e75f86.md) | 44 | `declaration-track:3094493898d2833b18e75f8629efa670acdafd64d17e08562f3c4e7813809906` |
| 5 | `def` | [setParentBump](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/setparentbump--9d1b1b8ecdcc190d4809a337.md) | 52 | `declaration-track:9d1b1b8ecdcc190d4809a337980edcfe565e7c24534a4b2a8b20dd4e729061b6` |
| 6 | `structure` | [UFNode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/ufnode--7bc7d0906188fdc133a90e89.md) | 72 | `declaration-track:7bc7d0906188fdc133a90e8954100c9b14f0b627ce0afb84af94efdaf3b005ac` |
| 7 | `inductive` | [UFModel.Agrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/ufmodel-agrees--baf572418a729491a9bdcc16.md) | 77 | `declaration-track:baf572418a729491a9bdcc167c3c8741a30c86e2222fb0b4fbb96cd685aab96e` |
| 8 | `theorem` | [mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/mk--3a36120a7a531d5ddbd7e552.md) | 82 | `result-track:3a36120a7a531d5ddbd7e552959d7d84f7393ffe280f302b548c0d2b6a42d1b1` |
| 9 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/size-eq--83edbf5b0359fcdecf90ce13.md) | 90 | `result-track:83edbf5b0359fcdecf90ce136ddb27187f265f73fed8374b992c96e53ec31251` |
| 10 | `theorem` | [get_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/get-eq--8c21cdd883e3eeecd23db779.md) | 93 | `result-track:8c21cdd883e3eeecd23db779f71771d3a4d37572f9e9928526fbd4be6e36296e` |
| 11 | `theorem` | [get_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/get-eq--bc0183fa85cf21fe9c4da672.md) | 97 | `result-track:bc0183fa85cf21fe9c4da672daaee7bfa23ccf076ce307792ce448797aa5e22d` |
| 12 | `theorem` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/empty--64d7d707cb292c33af575104.md) | 100 | `result-track:64d7d707cb292c33af57510466423be376ceb7adc1eb78dbbada7c8de8129479` |
| 13 | `theorem` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/push--64c6cfc0fdc745da3898e8d6.md) | 102 | `result-track:64c6cfc0fdc745da3898e8d6e15a3d27dd602067698bc031b2808305dc11b4e9` |
| 14 | `theorem` | [set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/set--db460aeddd582c7b3ad79f17.md) | 114 | `result-track:db460aeddd582c7b3ad79f1732221a5425365b975ecd8505fa4f8056b711914e` |
| 15 | `def` | [UFModel.Models](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/ufmodel-models--c3a45dae64d5be4c3449712b.md) | 127 | `declaration-track:c3a45dae64d5be4c3449712baa3de641a2bb597c3d83de623859b2426ce441fe` |
| 16 | `theorem` | [size_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/size-eq--7ad4d5d253342341f6b06a60.md) | 133 | `result-track:7ad4d5d253342341f6b06a6044be616e5da9b6cb1876ec5d8dbcbb35d2300eb5` |
| 17 | `theorem` | [parent_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/parent-eq--76c456ec2c30c11597f2c10e.md) | 136 | `result-track:76c456ec2c30c11597f2c10eed4d4ae55c41fd932584afa13b131c4f5d5c7895` |
| 18 | `theorem` | [parent_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/parent-eq--b8c27def6e01224b730515a7.md) | 139 | `result-track:b8c27def6e01224b730515a7803097a5812941100cdcf9e5ac978746c750a192` |
| 19 | `theorem` | [rank_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/rank-eq--5d50b9a499ad2761716504a7.md) | 142 | `result-track:5d50b9a499ad2761716504a780429e3131af9b71b63c96d25fc00907741d6899` |
| 20 | `theorem` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/empty--6a9f45e0c61c9e9a51dbaeb3.md) | 146 | `result-track:6a9f45e0c61c9e9a51dbaeb3fb030a4b7a5b4707e80e0c855e02a02e3c76c0f2` |
| 21 | `theorem` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/push--c0ee6f71e9b69a5bec8d48f9.md) | 148 | `result-track:c0ee6f71e9b69a5bec8d48f9fac85d2ea85659726485d082199e5e2d5299f23d` |
| 22 | `theorem` | [setParent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/setparent--6496eb6bda9a46e5300e5f40.md) | 156 | `result-track:6496eb6bda9a46e5300e5f4013bcd5e09bd66ad89a57f34bbcdaf0636250e027` |
| 23 | `structure` | [UnionFind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/unionfind--b70c831cfb137e02a3c3539d.md) | 166 | `declaration-track:b70c831cfb137e02a3c3539d36dfdd677350956fca10fe672705e7d007b9d29d` |
| 24 | `def` | [size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/size--1f7509ceab2057826999d319.md) | 172 | `declaration-track:1f7509ceab2057826999d3195a20b24032ca1b081196b7b994c1191034b6f1ef` |
| 25 | `theorem` | [model'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/model--1103130dafef871dd39288ff.md) | 174 | `result-track:1103130dafef871dd39288ffdb9d6fd233de895d2d12dcc87b7e972c7dbf8dcf` |
| 26 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/empty--d3ba17a325a3d3a4b4b566ab.md) | 177 | `declaration-track:d3ba17a325a3d3a4b4b566ab6fb01ba0e398c94089b19e5579aa6d1cc8137101` |
| 27 | `def` | [mkEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/mkempty--a9355d92fafc8725314291aa.md) | 181 | `declaration-track:a9355d92fafc8725314291aa8bb177be7a93b0e1b31b8a50ec7d183e48fc2e74` |
| 28 | `def` | [rank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/rank--febe4354de4dbaf72aeab062.md) | 185 | `declaration-track:febe4354de4dbaf72aeab0625149c78d32f7567baff0a2549da0978e7521855d` |
| 29 | `def` | [rankMaxAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/rankmaxaux--c85bba652f9df5c7d888889d.md) | 188 | `declaration-track:c85bba652f9df5c7d888889dadb5186d0f1ddd7c24e445ad97d9f68922663995` |
| 30 | `def` | [rankMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/rankmax--7a20876158d6e9fdff796667.md) | 198 | `declaration-track:7a20876158d6e9fdff7966674cf0fc384002e90545fe3ec2f1e7aaa686c6cee1` |
| 31 | `theorem` | [lt_rankMax'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/lt-rankmax--75dc3efdad9a938ed3c16d6e.md) | 200 | `result-track:75dc3efdad9a938ed3c16d6e6822bfa50235a5cd741039690a29f9511d66355b` |
| 32 | `theorem` | [lt_rankMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/lt-rankmax--685eb067f4f610387d7c0cac.md) | 204 | `result-track:685eb067f4f610387d7c0cac268207d93cc82c8a66cd7fd30c19f27e0c2cc4be` |
| 33 | `theorem` | [rank_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/rank-eq--afff20c24ad85b76f1338771.md) | 207 | `result-track:afff20c24ad85b76f133877188d0c8b64280cad0bab5c9012d6a73cf33777f40` |
| 34 | `theorem` | [rank_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/rank-lt--6bf7bf74ea357a70fc877d38.md) | 211 | `result-track:6bf7bf74ea357a70fc877d3877e1a4ac3781ec42cc25884d783608acdb0f8601` |
| 35 | `theorem` | [parent_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/parent-lt--142a8bcaa21971a9582ccf94.md) | 216 | `result-track:142a8bcaa21971a9582ccf9405fd98f150592f1d303ab93167782fd8183e24c4` |
| 36 | `def` | [push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/push--2dece229c5890d2d8d46740c.md) | 220 | `declaration-track:2dece229c5890d2d8d46740c3dabb63989df025af10d57e2c4808016101bf990` |
| 37 | `def` | [findAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/findaux--013293267264f296bdd0da32.md) | 224 | `declaration-track:013293267264f296bdd0da32ac83628bd803cfa5da63c521153be795dbe68d4b` |
| 38 | `def` | [find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/find--5af454491a330c0383d51b48.md) | 256 | `declaration-track:5af454491a330c0383d51b48b8757e42e5b220ff545981106e72c81efe6b9486` |
| 39 | `def` | [link](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/link--cc7708caf0452eb567435722.md) | 265 | `declaration-track:cc7708caf0452eb56743572223b8b66d23783c0e788de8451cd4c4b9160f97a6` |
| 40 | `def` | [union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/declarations/union--8f23f84d5e124e2738b19979.md) | 302 | `declaration-track:8f23f84d5e124e2738b199791ef2acf603a86a6d34bb22e97da27cdb554552fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
