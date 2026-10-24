# Verification target: GRWTSK.Topology.GeneralTopology.Covering.Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b184c48002f581fbbabe99b17aea5e8f250082d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b184c48002f581fbbabe99b17aea5e8f250082d`.

Source path: `GRWTSK/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.IsLocalHomeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEvenlyCovered](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/isevenlycovered--bfe922b9cb322a34b62ab766.md) | 29 | `declaration-track:bfe922b9cb322a34b62ab766ec4446170f14d4ae6a41d4fe65ddd7051731aee4` |
| 2 | `def` | [toTrivialization](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/totrivialization--6f2ab4e68b58de1755a49ae9.md) | 37 | `declaration-track:6f2ab4e68b58de1755a49ae9698c11204507e2159c4c66afd2bfdfea76fb6343` |
| 3 | `theorem` | [mem_toTrivialization_baseSet](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/mem-totrivialization-baseset--e528423d1d44c90d60b9be62.md) | 42 | `result-track:e528423d1d44c90d60b9be62ceb6d1006ffc0bae5b8e2a2fbf68a2f5195d9f3b` |
| 4 | `theorem` | [toTrivialization_apply](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/totrivialization-apply--0ed7824291c1015117e24c49.md) | 46 | `result-track:0ed7824291c1015117e24c49f619a2dd495a9cf4cf465e0fef3b9d1eaf505c25` |
| 5 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/continuousat--5cf4979c5fe793548a06e221.md) | 56 | `result-track:5cf4979c5fe793548a06e221c188716bd19a0065ba3e3289794102a7d2ee22e9` |
| 6 | `theorem` | [to_isEvenlyCovered_preimage](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/to-isevenlycovered-preimage--7653f233ed97cdd1c98530ee.md) | 61 | `result-track:7653f233ed97cdd1c98530ee7e6f6742605cfe95e36df84cb9079150e1f4c1c5` |
| 7 | `def` | [IsCoveringMapOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/iscoveringmapon--1e4ac704bc812fec875fd12d.md) | 72 | `declaration-track:1e4ac704bc812fec875fd12dc6af95342cfcdcc2027577cf11310f87614e9711` |
| 8 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/mk--9e0ff37750428b5081c49e78.md) | 77 | `result-track:9e0ff37750428b5081c49e782ab1baeef4185da894a216bbccd2c88e999725dd` |
| 9 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/continuousat--d57a73fc1c47697a44b9f074.md) | 84 | `result-track:d57a73fc1c47697a44b9f074046855f83908067732acbdba658e399fbafd297f` |
| 10 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/continuouson--e22134560be540b9ef49a66d.md) | 88 | `result-track:e22134560be540b9ef49a66d6a21b6473e12f9672073475359af7afaea651133` |
| 11 | `theorem` | [isLocalHomeomorphOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/islocalhomeomorphon--fb2fae6dfe968368c5244782.md) | 91 | `result-track:fb2fae6dfe968368c5244782301dc3cf724d8244343faced6ded354429b2cade` |
| 12 | `def` | [IsCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/iscoveringmap--6c27752bc224ff7006600c81.md) | 120 | `declaration-track:6c27752bc224ff7006600c81930af8bce9f16c67ccbe207a096c8ebeca0a5352` |
| 13 | `theorem` | [isCoveringMap_iff_isCoveringMapOn_univ](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/iscoveringmap-iff-iscoveringmapon-univ--55f9ced25103ac7a2bb4a43e.md) | 125 | `result-track:55f9ced25103ac7a2bb4a43e3004f305f86b05374b4e20a1638b9a67964fcebb` |
| 14 | `theorem` | [IsCoveringMap.isCoveringMapOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/iscoveringmap-iscoveringmapon--98d525f91d8dcddcb42d9a22.md) | 128 | `result-track:98d525f91d8dcddcb42d9a223324aaf258cf84f515be5881e7a4c75338b7e7a3` |
| 15 | `theorem` | [mk](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/mk--1026dd0dff38de0966c937c3.md) | 136 | `result-track:1026dd0dff38de0966c937c31aae4e7f2c3ab8249d7a471f0c3c8b408f69cb45` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/continuous--4efbb08fe02c629bade660d2.md) | 145 | `result-track:4efbb08fe02c629bade660d23441e6f2744077b11d95f9a189ec2681e9eb45cb` |
| 17 | `theorem` | [isLocalHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/islocalhomeomorph--47f6926585792a777f8e1f7c.md) | 148 | `result-track:47f6926585792a777f8e1f7c674c2b1d08d055bbe5f71defb0706a5a1f98b6a6` |
| 18 | `theorem` | [isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/isopenmap--1013a65c7224fc6b5f0dc812.md) | 151 | `result-track:1013a65c7224fc6b5f0dc812e65a248f04df016d6aa321305883062556cc7d13` |
| 19 | `theorem` | [isQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/isquotientmap--19192d4cdb636058e3521f14.md) | 154 | `result-track:19192d4cdb636058e3521f14d647cae6eb766d8ef858fa68304d13bfe5b13bb6` |
| 20 | `theorem` | [isSeparatedMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/isseparatedmap--5edff0050a5ef1753b174219.md) | 160 | `result-track:5edff0050a5ef1753b174219361173a7a7efc4b42b8c2862bea026bcd2411d4a` |
| 21 | `theorem` | [eq_of_comp_eq](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/eq-of-comp-eq--4013230b48cf87f14be869fd.md) | 174 | `result-track:4013230b48cf87f14be869fdc5ffd31888f28e5acc7eed84f61159700c7e16c4` |
| 22 | `theorem` | [const_of_comp](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/const-of-comp--c20b517fed41e2efdd253ad3.md) | 178 | `result-track:c20b517fed41e2efdd253ad33221d8e031c6498a1f0aee6967346bb46959fa97` |
| 23 | `theorem` | [eqOn_of_comp_eqOn](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/eqon-of-comp-eqon--8ffb9aca770364163a2b4995.md) | 182 | `result-track:8ffb9aca770364163a2b499510bee570dbd05f0f10e9c09dd8af22b4be6e5fe3` |
| 24 | `theorem` | [constOn_of_comp](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/conston-of-comp--b89f5f8f1ff948b2b54670f4.md) | 186 | `result-track:b89f5f8f1ff948b2b54670f4c46a71dc9b6ad3710c946e681694648de72a1e73` |
| 25 | `theorem` | [IsFiberBundle.isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/isfiberbundle-iscoveringmap--94d5fdc0a0873bf31494ce10.md) | 195 | `result-track:94d5fdc0a0873bf31494ce10b6a3f5390c7160d26cb436cf32225b82751423cb` |
| 26 | `theorem` | [FiberBundle.isCoveringMap](../../../../../mathematics/Topology/GeneralTopology/Covering/Variantd7d0e46a3e708e4bdbf438f49ade96781731049b3beefef42668c66300051294.lean/declarations/fiberbundle-iscoveringmap--2e12fa19c2dd12ca5fa5b12c.md) | 200 | `result-track:2e12fa19c2dd12ca5fa5b12c91502f000901c5cff135a948161253facb3d97be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
