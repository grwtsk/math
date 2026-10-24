# Verification target: GRWTSK.Topology.GeneralTopology.CircleTransform.Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2f2761fd56f0e5f0494ca3b48f91352f22e40a9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2f2761fd56f0e5f0494ca3b48f91352f22e40a9`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/circletransform--67128cd1910ba171b6269ea8.md) | 37 | `declaration-track:67128cd1910ba171b6269ea836cb7cb61f9189238961e5fa493a17c70858c661` |
| 2 | `def` | [circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/circletransformderiv--a30589102cb30f46e0e525e0.md) | 41 | `declaration-track:a30589102cb30f46e0e525e0f779357a532340a5f37601cc72608aa863b6f84d` |
| 3 | `theorem` | [circleTransformDeriv_periodic](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/circletransformderiv-periodic--86712d665c4e0319bcce2feb.md) | 44 | `result-track:86712d665c4e0319bcce2feb67a23c104831ca35be30840f65a0fa95fc1933f6` |
| 4 | `theorem` | [circleTransformDeriv_eq](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/circletransformderiv-eq--f180e288bc2c35d86151d556.md) | 53 | `result-track:f180e288bc2c35d86151d556f90d73fb32b7106e70811e9eb3c357ccdef5d32f` |
| 5 | `theorem` | [integral_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/integral-circletransform--cdde137e7a861121fad52f53.md) | 62 | `result-track:cdde137e7a861121fad52f539a9b46d2b20e14c795f7f55516d5dfd060b9b387` |
| 6 | `theorem` | [continuous_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/continuous-circletransform--44eb4f69e6ff85b050de07bc.md) | 68 | `result-track:44eb4f69e6ff85b050de07bc2e81cfa54d31e7011f626d0addf0966795abdf0d` |
| 7 | `theorem` | [continuous_circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/continuous-circletransformderiv--117375ea942af66d203d90df.md) | 78 | `result-track:117375ea942af66d203d90df3f97fe017376d695ca479932d2078b207a9ea1ec` |
| 8 | `def` | [circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/circletransformboundingfunction--b04d49190c5250e5c128bcfa.md) | 85 | `declaration-track:b04d49190c5250e5c128bcfae9eefd2ca426def0a191f15973ccaac275cc9bfd` |
| 9 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/continuouson-prod-circle-transform-function--0fd5a907b6113eab805d5699.md) | 88 | `result-track:0fd5a907b6113eab805d569961543f5f14297437d271cb6035d7a3201b5ace93` |
| 10 | `theorem` | [continuousOn_norm_circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/continuouson-norm-circletransformboundingfunction--bd3fe0c0fe926ec94f6155de.md) | 98 | `result-track:bd3fe0c0fe926ec94f6155de986ef9a5abb2740f873aabd50a35df042a2d69f7` |
| 11 | `theorem` | [norm_circleTransformBoundingFunction_le](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/norm-circletransformboundingfunction-le--c1aa50df5dde9817652a3c2a.md) | 111 | `result-track:c1aa50df5dde9817652a3c2a659d60775e500f73d33e9f869b555ff458babfe7` |
| 12 | `theorem` | [circleTransformDeriv_bound](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant3dc083627279f9f96ffe0e29f6c969675774da86d58cb934a01e1a4f22b448ac.lean/declarations/circletransformderiv-bound--c0746d81597497e0f5df1b82.md) | 126 | `result-track:c0746d81597497e0f5df1b829513aa05a044f53d6732d199a1c64ccc7c7619c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
