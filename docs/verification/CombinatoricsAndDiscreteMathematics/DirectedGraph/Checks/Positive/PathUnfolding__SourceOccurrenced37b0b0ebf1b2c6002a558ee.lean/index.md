# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PathUnfolding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "362286d96509e9fff5ee86f50d24bf692a409511",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `362286d96509e9fff5ee86f50d24bf692a409511`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path.Vertices` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--f6f11bc3b5529fd26338f253.md) | 17 | `declaration-track:f6f11bc3b5529fd26338f2530de68eeb235c746ff3070c86f26653c34124f7c8` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--cab68c91d5b9a320b60f2b70.md) | 19 | `declaration-track:cab68c91d5b9a320b60f2b704dcb74c41917e6961207d26691ed4df7b227ea69` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--5779083afe3cf1e9dbc36e63.md) | 22 | `declaration-track:5779083afe3cf1e9dbc36e6348fe5492b27d27ed8c595022aa4f1fcd228d2e2c` |
| 4 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--0505c169fd4c09169577b0b8.md) | 26 | `declaration-track:0505c169fd4c09169577b0b860e4cac445a7305a5d5e708fbfadf0ef86352c69` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--ec3e78644770920d8ad2ff15.md) | 30 | `declaration-track:ec3e78644770920d8ad2ff15b2e4aa52decad22c4508b086af614e4204150f6e` |
| 6 | `def` | [firstOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/firstoccurrence--3a14590547110194a1d6f213.md) | 39 | `declaration-track:3a14590547110194a1d6f2133526a370a0af9b1fa21f7b74f2c0406d244a1f87` |
| 7 | `def` | [otherOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/otheroccurrence--86f1c7862ba64bbced0792c4.md) | 42 | `declaration-track:86f1c7862ba64bbced0792c4ae2f430cd422746e1f6ef172765682acde1ef5ce` |
| 8 | `def` | [twiceOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/twiceoccurrence--d96702ff31b3cb412d02aa09.md) | 45 | `declaration-track:d96702ff31b3cb412d02aa09365dfda1a361f9f49c49ea8f471879b18b06836e` |
| 9 | `def` | [twoStepLift](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/twosteplift--81569444837b7ed46be63099.md) | 48 | `declaration-track:81569444837b7ed46be63099f92d7da3db049dcbecf4f503dad093311f8c484e` |
| 10 | `def` | [twoBaseEdges](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/twobaseedges--bf86f3f1c50191291e86491f.md) | 52 | `declaration-track:bf86f3f1c50191291e86491f34c3d381435473f4d391826a22b362a866201635` |
| 11 | `theorem` | [parallel_occurrences_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/parallel-occurrences-distinct--7ce24eb8c77a81e841d8c7f6.md) | 55 | `result-track:7ce24eb8c77a81e841d8c7f6e8c89a47cc7741a0079c0008479f70cb1d216ec4` |
| 12 | `theorem` | [repeated_base_vertices_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/repeated-base-vertices-distinct--a5706af0748ee2717384131f.md) | 62 | `result-track:a5706af0748ee2717384131f27ce781f49a5fa91f1fe4115b47ae4c4e38cc209` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--14008718e284620dab1c7bfc.md) | 74 | `declaration-track:14008718e284620dab1c7bfcccf553ce9b1d413e1672e035821b2a4ea9bb1135` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--8177f1f407f2fb681ee1ff04.md) | 77 | `declaration-track:8177f1f407f2fb681ee1ff04b556b81824e4a5f6aff97929d6d9f5ee609ae278` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--337eed19abf4ba72cb2f603b.md) | 79 | `declaration-track:337eed19abf4ba72cb2f603b5ea0e3afd7be3f8bf4a83cf55f7f50bfeb83ac71` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--3fe04a6ae0b7e0391c1fdb53.md) | 82 | `declaration-track:3fe04a6ae0b7e0391c1fdb5386ef25003211d6e2f554e5b1d9d5b0039f1a07a0` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--266cd56338fd526eac035543.md) | 84 | `declaration-track:266cd56338fd526eac0355436db2504aab4d9cce867be18c5752990b1bfa77e4` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--0641c6b76d7ec7692e6119e9.md) | 86 | `declaration-track:0641c6b76d7ec7692e6119e99d3afa38fb6d1b59b3d4505af9b32f786b01cd0d` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--7f8c0d89ad7a392195439d37.md) | 88 | `declaration-track:7f8c0d89ad7a392195439d370ad29c7783501c5e6818c6fb53bc00ccd6c10fa1` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--db3b2fbac493e252bdd11b5c.md) | 90 | `declaration-track:db3b2fbac493e252bdd11b5c09b27d5ba829d654eb267547d0e43049d600fac6` |
| 21 | `theorem` | [single_loop_outgoing_bijective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/single-loop-outgoing-bijective--40eaaee2588cccf783143920.md) | 96 | `result-track:40eaaee2588cccf78314392017e8305f95f9b5b126730ba1a6bb6ef1b2ae1feb` |
| 22 | `theorem` | [single_loop_empty_origin_costar](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/single-loop-empty-origin-costar--73b5eaff1d7025dc45bf01f7.md) | 100 | `result-track:73b5eaff1d7025dc45bf01f7bca40db5aaf81c3a2532aa8757475c508129601f` |
| 23 | `theorem` | [single_loop_costar_not_surjective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/single-loop-costar-not-surjective--8a413868d2173781e9fb7d21.md) | 103 | `result-track:8a413868d2173781e9fb7d21584830f90d5c851ba784187d4ee3090c2b717085` |
| 24 | `theorem` | [single_loop_not_covering](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/single-loop-not-covering--da7cc92129c73bd2b9a12287.md) | 107 | `result-track:da7cc92129c73bd2b9a122871e0a66a51919f6afeba22885af9076155cb355ae` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PathUnfolding__SourceOccurrenced37b0b0ebf1b2c6002a558ee.lean/declarations/example--12d3792572f7fa0aa4c93fee.md) | 110 | `declaration-track:12d3792572f7fa0aa4c93fee7670c9aff27231d691b30edaa76bbb6bdbe0cad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
