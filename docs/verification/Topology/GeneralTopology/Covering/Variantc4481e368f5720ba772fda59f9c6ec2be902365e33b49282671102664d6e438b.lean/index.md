# Verification target: GRWTSK.Topology.GeneralTopology.Covering.Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7586a6763e936e6cf658078aa4552ebbaac5b776",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7586a6763e936e6cf658078aa4552ebbaac5b776`.

Source path: `GRWTSK/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.IsLocallyHomeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEvenlyCovered](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/isevenlycovered--ab6ff1a32bdb1432e89b8d21.md) | 40 | `declaration-track:ab6ff1a32bdb1432e89b8d21a73cb53569ca61601136b21c1525374e14b28800` |
| 2 | `def` | [toTrivialization](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/totrivialization--c90251f093de492f8cceaad2.md) | 49 | `declaration-track:c90251f093de492f8cceaad27159ef0ef2439fb352acafbbc8ae199408ae38c5` |
| 3 | `theorem` | [mem_toTrivialization_baseSet](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/mem-totrivialization-baseset--36fe18147e02ac9e33d5ba4f.md) | 55 | `result-track:36fe18147e02ac9e33d5ba4fcbd66e1248da67a16ac0d693d7d11ca9a704a2e0` |
| 4 | `theorem` | [toTrivialization_apply](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/totrivialization-apply--5b3a0819f819e340fe1b3886.md) | 60 | `result-track:5b3a0819f819e340fe1b388608109822a6a331cd73ce77ca3f0b965dbd32b5e7` |
| 5 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/continuousat--9367be5369a70aad3c728875.md) | 71 | `result-track:9367be5369a70aad3c7288755f795287072cdc89a86bbc9a16fbfc45a8d68bc6` |
| 6 | `theorem` | [to_isEvenlyCovered_preimage](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/to-isevenlycovered-preimage--5759db1a594bdcb9941df7e4.md) | 77 | `result-track:5759db1a594bdcb9941df7e4b7938dc797852f4690ecc5340cacee20683b674e` |
| 7 | `def` | [IsCoveringMapOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/iscoveringmapon--bcfc61fa7f720fd7d5f66b17.md) | 89 | `declaration-track:bcfc61fa7f720fd7d5f66b174c8993faa3d56d81f99e5ac9c89b454c696786a6` |
| 8 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/mk--dc093f864a8a29be8d153efc.md) | 95 | `result-track:dc093f864a8a29be8d153efc87a7e5d1fe262a022900edd44429b60f1feccc8f` |
| 9 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/continuousat--d8ec9391b398f228c3bff60e.md) | 103 | `result-track:d8ec9391b398f228c3bff60e291cbee205bf52702d50cbe6667d9c6637195bba` |
| 10 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/continuouson--789a862d02c291badb4fabd3.md) | 108 | `result-track:789a862d02c291badb4fabd308b79bff3f118823739dffbc143e908cbc42ad9c` |
| 11 | `theorem` | [isLocallyHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/islocallyhomeomorphon--5413d7c533e9961b6852e21f.md) | 112 | `result-track:5413d7c533e9961b6852e21fa7f98a057d487695a41f66261283e4dc82a3ffa2` |
| 12 | `def` | [IsCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/iscoveringmap--442f8e3166a56d7b3310f827.md) | 142 | `declaration-track:442f8e3166a56d7b3310f82772942835aa4679c863e0426cfb1bd47c0dac0b93` |
| 13 | `theorem` | [isCoveringMap_iff_isCoveringMapOn_univ](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/iscoveringmap-iff-iscoveringmapon-univ--e370b11446a2a7bb2cfb62b6.md) | 148 | `result-track:e370b11446a2a7bb2cfb62b65b6b0a00a10e92287c0cd6cc05572dd7db7e76a7` |
| 14 | `theorem` | [IsCoveringMap.isCoveringMapOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/iscoveringmap-iscoveringmapon--a4baaf76f845fd7176298a10.md) | 152 | `result-track:a4baaf76f845fd7176298a1089c263c368b433a2af9489bc88cfe4af8aae4314` |
| 15 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/mk--b7f7f9de6e1be6aa6a120939.md) | 161 | `result-track:b7f7f9de6e1be6aa6a1209391d6fc908f21e57a1ca1610c6a78791578b2dad85` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/continuous--62a304f17515392bfc91a8dc.md) | 169 | `result-track:62a304f17515392bfc91a8dc34e81c19b0cbcb09cc8a92fb91eb5743789ff45e` |
| 17 | `theorem` | [isLocallyHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/islocallyhomeomorph--1e7c3c4534582b6ee308bc66.md) | 173 | `result-track:1e7c3c4534582b6ee308bc663a169c337eb2bde2c091f62aea472443d21d9289` |
| 18 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/isopenmap--2119975e2090e24ee2ea6812.md) | 177 | `result-track:2119975e2090e24ee2ea6812b441af9e87ba0f9edf94b33f7fadc9fdf42d993b` |
| 19 | `theorem` | [quotientMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/quotientmap--39738934494b3b5837176ef5.md) | 181 | `result-track:39738934494b3b5837176ef599d196d6484b75aada4a59d7cc6ed817bef62171` |
| 20 | `theorem` | [IsFiberBundle.isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/isfiberbundle-iscoveringmap--93d4794d3d51e2a814fcf884.md) | 190 | `result-track:93d4794d3d51e2a814fcf884469f5223fe9d7763f5b9556f65f6cb9fbc08c11a` |
| 21 | `theorem` | [FiberBundle.isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantc4481e368f5720ba772fda59f9c6ec2be902365e33b49282671102664d6e438b.lean/declarations/fiberbundle-iscoveringmap--09d3f481fa5338774d9d6d18.md) | 196 | `result-track:09d3f481fa5338774d9d6d1836778a59fc2cd0aaec26851e8078af7101a4b1d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
