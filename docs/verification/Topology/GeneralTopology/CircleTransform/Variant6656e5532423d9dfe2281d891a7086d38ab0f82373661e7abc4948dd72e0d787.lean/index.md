# Verification target: GRWTSK.Topology.GeneralTopology.CircleTransform.Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e143c50a68d03b6298543db7c4534f820054ddc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e143c50a68d03b6298543db7c4534f820054ddc`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean.json)

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
| 1 | `def` | [circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/circletransform--9783adf553c85ccd6bf37dcb.md) | 40 | `declaration-track:9783adf553c85ccd6bf37dcb7c5cf686d0f0f3c57972fd57093b3f423db12c8e` |
| 2 | `def` | [circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/circletransformderiv--9ffcf516830c7af6eb83f545.md) | 44 | `declaration-track:9ffcf516830c7af6eb83f545889795b52a0084983cf1e44ef708c000dda05648` |
| 3 | `theorem` | [circleTransformDeriv_periodic](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/circletransformderiv-periodic--c2d9d7a80838f9f50f28bce6.md) | 47 | `result-track:c2d9d7a80838f9f50f28bce6fe65c067f7e57e554c1fbd5e9793fd82fcd2b143` |
| 4 | `theorem` | [circleTransformDeriv_eq](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/circletransformderiv-eq--95bd288af7e0946fe9b9e96d.md) | 51 | `result-track:95bd288af7e0946fe9b9e96dea14dd26af960131dfea35f3b5e9ef747111bac5` |
| 5 | `theorem` | [integral_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/integral-circletransform--1e61384b290cd363cb5aec85.md) | 60 | `result-track:1e61384b290cd363cb5aec85ae52416d6996ad5593a867f5d7d1e1f105f0861e` |
| 6 | `theorem` | [continuous_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/continuous-circletransform--66469f7fdf8a6b5ebc9e8ba3.md) | 66 | `result-track:66469f7fdf8a6b5ebc9e8ba35b8623124e2ff8aceb28a7a02818d1b4f0f7608d` |
| 7 | `theorem` | [continuous_circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/continuous-circletransformderiv--16f82a2b5280f193041ef591.md) | 76 | `result-track:16f82a2b5280f193041ef5910f674007244b3f89fbc69bb4af84d29c91e77efa` |
| 8 | `def` | [circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/circletransformboundingfunction--937f0d041f82e0217889145e.md) | 83 | `declaration-track:937f0d041f82e0217889145e44101b8849ad46368dfe01c9f52106a1f6cfd8b9` |
| 9 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/continuouson-prod-circle-transform-function--4d41ba390fa138b9f233ba31.md) | 86 | `result-track:4d41ba390fa138b9f233ba31500217470bbd523a8acf43186387bb904a8b5ecd` |
| 10 | `theorem` | [continuousOn_norm_circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/continuouson-norm-circletransformboundingfunction--b4302290acc69dccec90327b.md) | 96 | `result-track:b4302290acc69dccec90327b3f19f10daa85ab176459ee9dd0e90e480ab9cb30` |
| 11 | `theorem` | [norm_circleTransformBoundingFunction_le](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/norm-circletransformboundingfunction-le--f4f58cc52bcdc910060edc53.md) | 106 | `result-track:f4f58cc52bcdc910060edc53dc5320eb40775b128cfef60a7655f3e1468ed6f7` |
| 12 | `theorem` | [circleTransformDeriv_bound](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant6656e5532423d9dfe2281d891a7086d38ab0f82373661e7abc4948dd72e0d787.lean/declarations/circletransformderiv-bound--ad0f6a36e282f16308b2dc89.md) | 118 | `result-track:ad0f6a36e282f16308b2dc89b069cd52f59fafa86782ae14d83260b675f7768c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
