# Verification target: GRWTSK.Topology.GeneralTopology.ClosedCompactCylinders.Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f55bfbbec68001dae306c0b45bb7e9022f3a2736",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f55bfbbec68001dae306c0b45bb7e9022f3a2736`.

Source path: `GRWTSK/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/closedcompactcylinders--eaf172dccde83b633787aeb5.md) | 43 | `declaration-track:eaf172dccde83b633787aeb527cf1d565b1217949607d0e0615154184c1b9fd4` |
| 2 | `theorem` | [empty_mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/empty-mem-closedcompactcylinders--9c1f342d7ad610a4e394b4dd.md) | 47 | `result-track:9c1f342d7ad610a4e394b4ddc05b5be060b0cf81e19b3d5400221879b262d575` |
| 3 | `theorem` | [mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/mem-closedcompactcylinders--0c7412c86b2e14520e96f109.md) | 51 | `result-track:0c7412c86b2e14520e96f109e5fd79f1dec06aca82558f35ec8d4cdb99b66a67` |
| 4 | `def` | [closedCompactCylinders.finset](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/closedcompactcylinders-finset--82b5ce6dd682f2990ab21527.md) | 57 | `declaration-track:82b5ce6dd682f2990ab21527184b9a3376238249b299b9479edae6aeddf27f71` |
| 5 | `def` | [closedCompactCylinders.set](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/closedcompactcylinders-set--6ec7813c59805fc42c5b4501.md) | 62 | `declaration-track:6ec7813c59805fc42c5b4501fa1bd7446dc4f55d3e53211b84adfc4c86d8fc3d` |
| 6 | `theorem` | [closedCompactCylinders.isClosed](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/closedcompactcylinders-isclosed--afa1616bd69144ae8dad02dc.md) | 66 | `result-track:afa1616bd69144ae8dad02dc701b6d04b4b423820331a2dfb4e292ccd4bdda98` |
| 7 | `theorem` | [closedCompactCylinders.isCompact](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/closedcompactcylinders-iscompact--b5ee2eb7557140b40f7f11fd.md) | 70 | `result-track:b5ee2eb7557140b40f7f11fd2d6c927c40620279016c2b83f52bc3a3c9d4ca36` |
| 8 | `theorem` | [closedCompactCylinders.eq_cylinder](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/closedcompactcylinders-eq-cylinder--5aabfc6af2783825b2f8c7bd.md) | 74 | `result-track:5aabfc6af2783825b2f8c7bd72c774d7fc45ddecff8fc0fe731bc02d0960c490` |
| 9 | `theorem` | [cylinder_mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/cylinder-mem-closedcompactcylinders--7d154a53c2774de49d51d0cc.md) | 78 | `result-track:7d154a53c2774de49d51d0cc469b3fc4d7c90cc82c3450d0a4a18146949a21bb` |
| 10 | `theorem` | [mem_measurableCylinders_of_mem_closedCompactCylinders](../../../../../mathematics/Topology/GeneralTopology/ClosedCompactCylinders/Variantbc8dd5caa835b16cc010f67f85d67864d2f84e6fae34e7265a6637330c24661b.lean/declarations/mem-measurablecylinders-of-mem-closedcompactcylinders--70ae9f13d57760fa86e65db0.md) | 84 | `result-track:70ae9f13d57760fa86e65db050abcc8d182466b4e36d3a56ad20b5def10b1560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
