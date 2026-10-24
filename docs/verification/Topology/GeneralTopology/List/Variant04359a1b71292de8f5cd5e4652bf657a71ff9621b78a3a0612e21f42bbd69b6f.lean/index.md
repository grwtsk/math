# Verification target: GRWTSK.Topology.GeneralTopology.List.Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e734d9d3ec954e8fcb3d2e2b43775abeb5ce791`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/instance--fd856ddc3d9616cd7fcb5163.md) | 23 | `declaration-track:fd856ddc3d9616cd7fcb5163f325638035f04640464fbce8fcbf62f6233874ee` |
| 2 | `theorem` | [nhds_list](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/nhds-list--bd40359541865e3b516fa82f.md) | 26 | `result-track:bd40359541865e3b516fa82f5bd087ad30ab1eb2ff023bca4b3f305ca9938f60` |
| 3 | `theorem` | [nhds_nil](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/nhds-nil--58db0432635e161c2cd5bc04.md) | 66 | `result-track:58db0432635e161c2cd5bc0403c7c369289635d6b28f1834cfb9f8b48a0fbf2f` |
| 4 | `theorem` | [nhds_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/nhds-cons--415a956a74d3200cc101274f.md) | 70 | `result-track:415a956a74d3200cc101274fa3f2759fc90aaf137d2ed3088c293bbe468a4a8a` |
| 5 | `theorem` | [List.tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/list-tendsto-cons--00381c6db4dc363de884bf17.md) | 74 | `result-track:00381c6db4dc363de884bf1719b253f3217c0e109a98bef9810e65f276f0e3a4` |
| 6 | `theorem` | [Filter.Tendsto.cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/filter-tendsto-cons--d9a3353056c83051fb3f7dca.md) | 79 | `result-track:d9a3353056c83051fb3f7dca79d05634fd9a0252dcf7cd47b966f253f15a41f7` |
| 7 | `theorem` | [tendsto_cons_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-cons-iff--f208e2246f594718b12edc09.md) | 87 | `result-track:f208e2246f594718b12edc09bc748da9d47015a8d4253bdfe7748378e9d1951b` |
| 8 | `theorem` | [continuous_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-cons--270f0db53260483d99331720.md) | 96 | `result-track:270f0db53260483d99331720b8fc965c0cc33a2cd1b5088ee6907474605aeeea` |
| 9 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-nhds--295e9f3181be8bcfe1caaab4.md) | 100 | `result-track:295e9f3181be8bcfe1caaab4586ca5816a5092abea3b2f34adfddfed674034bf` |
| 10 | `theorem` | [continuousAt_length](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuousat-length--10f9ebc0bf259695b20b76d0.md) | 112 | `result-track:10f9ebc0bf259695b20b76d05f7ee3551d9e1cbe6c7de2998dca65d9993b3d91` |
| 11 | `theorem` | [tendsto_insertNth'](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-insertnth--6261b55066dfcf3579885b4e.md) | 122 | `result-track:6261b55066dfcf3579885b4e70e1c6c88b3d274589cc1820feee15aa5aa8827b` |
| 12 | `theorem` | [tendsto_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-insertnth--9e6ad881096689168a0c5c90.md) | 138 | `result-track:9e6ad881096689168a0c5c90998ff03478adce19dc18fd63858db3dd8d131b93` |
| 13 | `theorem` | [continuous_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-insertnth--60f297e0770c6ea9dc1d9cb1.md) | 144 | `result-track:60f297e0770c6ea9dc1d9cb1a4716c64f767b74c3aaeff4896ad8fc3b8b1a37e` |
| 14 | `theorem` | [tendsto_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-removenth--4a4411cea6df8beb785c4752.md) | 149 | `result-track:4a4411cea6df8beb785c4752a57e5e1d6cca55cfe23f51d140d012bc278e8c08` |
| 15 | `theorem` | [continuous_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-removenth--dfa6e726fcaf20a002513635.md) | 159 | `result-track:dfa6e726fcaf20a002513635750de7a0eec1e7f1c5acac2079f4e062fbd4645d` |
| 16 | `theorem` | [tendsto_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-prod--9cdb4f891c15945180e3b10c.md) | 164 | `result-track:9cdb4f891c15945180e3b10c33afd418cbe92ee03bbad71891e8491f64b582b4` |
| 17 | `theorem` | [continuous_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-prod--a648561833976b82027faf6f.md) | 176 | `result-track:a648561833976b82027faf6f168bc612f39c6a412c74ba462802f3ea0e29c7bd` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/instance--d36fb27a7508c759d7b1113c.md) | 187 | `declaration-track:d36fb27a7508c759d7b1113c57e65ab492a85e3e2f86d4141893334a39ba5e3f` |
| 19 | `theorem` | [tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-cons--27cff0d67215eeb2210a7141.md) | 189 | `result-track:27cff0d67215eeb2210a71414fbd14c6d90704cb131899b0e7a82cbd939ed6cb` |
| 20 | `theorem` | [tendsto_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/tendsto-insertnth--7c735a4937db7001e504d3dd.md) | 195 | `result-track:7c735a4937db7001e504d3dd78cfa63bebacab8cc2b167f0f15792cbdca1261e` |
| 21 | `theorem` | [continuous_insertNth'](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-insertnth--5302e80a62fa31d70c983afb.md) | 204 | `result-track:5302e80a62fa31d70c983afb75971eaee9da5d82795cfb9aa406837a17c8133c` |
| 22 | `theorem` | [continuous_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-insertnth--8385b72d3bbddf69ae13ed23.md) | 210 | `result-track:8385b72d3bbddf69ae13ed23e8c9546b48407f1d6c2470c630a8581fe1264247` |
| 23 | `theorem` | [continuousAt_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuousat-removenth--a4ca9924ea632d434779e276.md) | 215 | `result-track:a4ca9924ea632d434779e2766204c717699d02ed3ccdba75b009190577f1b01e` |
| 24 | `theorem` | [continuous_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variant04359a1b71292de8f5cd5e4652bf657a71ff9621b78a3a0612e21f42bbd69b6f.lean/declarations/continuous-removenth--4304d6cbbfd000325c3d7fc9.md) | 223 | `result-track:4304d6cbbfd000325c3d7fc90f1435ef882d30f6f1310932561ae7e1068e4b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
