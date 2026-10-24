# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskCharacteristic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be4f9450aa6673ae6d13fb08a0cdfcdbd1533dc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be4f9450aa6673ae6d13fb08a0cdfcdbd1533dc`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardCircleConeDisk`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonStandardCircleConeDisk.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diskCharacteristic](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic--ed5afda48a2a41cf4e3c620d.md) | 34 | `declaration-track:ed5afda48a2a41cf4e3c620de1766d5121eaa364a496ed963aaa2afe6e8fe025` |
| 2 | `theorem` | [diskCharacteristic_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic-continuous--220bd6f39d92be9f73740108.md) | 40 | `result-track:220bd6f39d92be9f737401086a2faaa8acb20cc62292d2b0fe4ee8eff4797b46` |
| 3 | `theorem` | [diskCharacteristic_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic-surjective--d185fc228d15d3d7946b02a4.md) | 47 | `result-track:d185fc228d15d3d7946b02a4fca028e498961994887e31642a4260d34a0d4d70` |
| 4 | `theorem` | [diskCharacteristic_cone](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic-cone--de6209907f6daef851e2a9c5.md) | 56 | `result-track:de6209907f6daef851e2a9c504bb0e91fffcbbd39cc6b2b59f50182a44a3767b` |
| 5 | `theorem` | [diskCharacteristic_boundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic-boundary--34e55267d113ec442f6041f6.md) | 64 | `result-track:34e55267d113ec442f6041f6c89faa9f5411b422af243ca6c31da0c011c6c819` |
| 6 | `theorem` | [diskCharacteristic_center](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic-center--52167fd93127ca890326e5b8.md) | 73 | `result-track:52167fd93127ca890326e5b8a859024553393834aea9d2758604f6a425bd546f` |
| 7 | `theorem` | [diskCharacteristic_not_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/diskcharacteristic-not-injective--606f1947f7073de486d7bdea.md) | 81 | `result-track:606f1947f7073de486d7bdea1245c43e3d675646c81b83a9ad7bfd04b6b06bd9` |
| 8 | `theorem` | [genusTwo_diskCharacteristic_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/genustwo-diskcharacteristic-continuous--ff066682b69daad049e15aa1.md) | 91 | `result-track:ff066682b69daad049e15aa1a0feb6cda4e79ab72fe7143940e421387cb11c8f` |
| 9 | `theorem` | [genusThree_diskCharacteristic_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonDiskCharacteristic.lean/declarations/genusthree-diskcharacteristic-continuous--116cdba098bf7c07a54dfba8.md) | 96 | `result-track:116cdba098bf7c07a54dfba812aa654aea0d921a64b9dd7f104d30e9dc8b03d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
