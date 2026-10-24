# Verification target: GRWTSK.Topology.GeneralTopology.CircleTransform.Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4996f048a5c3204a64f128ea84988d95c9f5f44f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4996f048a5c3204a64f128ea84988d95c9f5f44f`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean.json)

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
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/macro-rules--eadd55d439e68dfe55bfce96.md) | 28 | `declaration-track:eadd55d439e68dfe55bfce964d6bbc6b51b213a51135b0daffbb18952ae3cd91` |
| 2 | `def` | [circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/circletransform--962edff62434794b35982fdc.md) | 41 | `declaration-track:962edff62434794b35982fdc097cc183f0749542d838b8de4673299cb6e3561a` |
| 3 | `def` | [circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/circletransformderiv--6dd267c93645dbf187993798.md) | 46 | `declaration-track:6dd267c93645dbf187993798c307c39c3e43b6c5315e04816f6d7fee36c4d93a` |
| 4 | `theorem` | [circleTransformDeriv_periodic](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/circletransformderiv-periodic--127eb6bd92bfef1f50fad288.md) | 50 | `result-track:127eb6bd92bfef1f50fad2888f38ebdde10ec76dbfedef1ae2a849840975406b` |
| 5 | `theorem` | [circleTransformDeriv_eq](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/circletransformderiv-eq--840ecdecd3db3028978109bd.md) | 60 | `result-track:840ecdecd3db3028978109bd6d75fa6dbb98807d685d5686ff50e00493e2ef19` |
| 6 | `theorem` | [integral_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/integral-circletransform--2dfadab0539c40822964e692.md) | 70 | `result-track:2dfadab0539c40822964e6928fca86764394b3bc135e284820b3b2455bc3523a` |
| 7 | `theorem` | [continuous_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/continuous-circletransform--341e219aee7fe7ede2586cf0.md) | 77 | `result-track:341e219aee7fe7ede2586cf0219c8a711cfc35e680d940362a4fb7beed59588b` |
| 8 | `theorem` | [continuous_circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/continuous-circletransformderiv--974b06f0b59f36e3d446e09d.md) | 88 | `result-track:974b06f0b59f36e3d446e09d76f0b2aea34b5ea41ecdaf57412765c6d4c021ad` |
| 9 | `def` | [circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/circletransformboundingfunction--403b5e5e7f8b5d9a00c1bdc5.md) | 96 | `declaration-track:403b5e5e7f8b5d9a00c1bdc5264523c4220c3320ed4a7cdce4db9795ebe2483f` |
| 10 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/continuouson-prod-circle-transform-function--d35785f7efe13a6de0a33038.md) | 100 | `result-track:d35785f7efe13a6de0a330384a2b62280746f5d35383391ff9d59e8c2682e1ea` |
| 11 | `theorem` | [continuousOn_abs_circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/continuouson-abs-circletransformboundingfunction--631a334785e2bf09f1a01ce8.md) | 113 | `result-track:631a334785e2bf09f1a01ce8406845b9601390aee482e42e0946e7ea023e5d0a` |
| 12 | `theorem` | [abs_circleTransformBoundingFunction_le](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/abs-circletransformboundingfunction-le--694e4ddde49fadd90ef2ee99.md) | 128 | `result-track:694e4ddde49fadd90ef2ee99f64b0615562d2a9c51227aba1fb60ea4fcab25e8` |
| 13 | `theorem` | [circleTransformDeriv_bound](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/declarations/circletransformderiv-bound--441fe5e637d923380f76bd69.md) | 143 | `result-track:441fe5e637d923380f76bd691efc92307c8284d3a40859bf420833bb9ec07648` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
