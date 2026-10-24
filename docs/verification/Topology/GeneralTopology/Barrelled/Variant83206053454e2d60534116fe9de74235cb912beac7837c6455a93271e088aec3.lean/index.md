# Verification target: GRWTSK.Topology.GeneralTopology.Barrelled.Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18976c7bce32f7468baef765dfe98dc1d30a080e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18976c7bce32f7468baef765dfe98dc1d30a080e`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/barrelledspace--a840dc2ff97866871c187b5c.md) | 91 | `declaration-track:a840dc2ff97866871c187b5cc08fe719a5a8b85633baf5518b59640149829fd2` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/seminorm-continuous-of-lowersemicontinuous--2926f8696d0a29b66f9bd6c1.md) | 96 | `result-track:2926f8696d0a29b66f9bd6c1283437d1c6a68c9991f2fdf9f3fa782cf5abd0eb` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/seminorm-continuous-isup--4b4612275162ac4d6fcc1284.md) | 101 | `result-track:4b4612275162ac4d6fcc128442bb7fafbc7baad48ba4b81da332d0460d64ce98` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/bairespace-instbarrelledspace--5261ea956eb5a3c44eb53635.md) | 123 | `declaration-track:5261ea956eb5a3c44eb536356c0731c68b5c0880fa683b44ae0c4ed2227a9671` |
| 5 | `theorem` | [banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/banach-steinhaus--a27ac516eb928715971dd063.md) | 165 | `result-track:a27ac516eb928715971dd063a25c85d7b17f2cb8d6614edbe0eeeb5f3cebdff4` |
| 6 | `theorem` | [PolynormableSpace.banach_steinhaus](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/polynormablespace-banach-steinhaus--4e21dafecd98443e582f1ded.md) | 193 | `result-track:4e21dafecd98443e582f1ded9509c239f0b718a0f0f0cb5f7b4354194851fc84` |
| 7 | `def` | [continuousLinearMapOfTendsto](../../../../../mathematics/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/declarations/continuouslinearmapoftendsto--7be3a3ac5e5d478f8997e24a.md) | 209 | `declaration-track:7be3a3ac5e5d478f8997e24a663822c2df32ae247d0f7576426c16ea159a2638` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
