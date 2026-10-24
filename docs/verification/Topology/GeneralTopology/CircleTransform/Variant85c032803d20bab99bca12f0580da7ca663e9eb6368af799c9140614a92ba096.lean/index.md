# Verification target: GRWTSK.Topology.GeneralTopology.CircleTransform.Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d59833be360f171e55d4b675c7ddb398676809",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d59833be360f171e55d4b675c7ddb398676809`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/macro-rules--427e4fd1f83704f22b305cbe.md) | 36 | `declaration-track:427e4fd1f83704f22b305cbefadb238be038dbcc71ccdf7e31bc1b9d680fc03c` |
| 2 | `def` | [circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/circletransform--16e7c4841862d25932d531b7.md) | 49 | `declaration-track:16e7c4841862d25932d531b7e0809bfc562d50120589daffb06b6833465c5f42` |
| 3 | `def` | [circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/circletransformderiv--74016f92995f84cd37c5a668.md) | 54 | `declaration-track:74016f92995f84cd37c5a6686aef3f3353cae6e76c36a7d77a095b879c33e495` |
| 4 | `theorem` | [circleTransformDeriv_periodic](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/circletransformderiv-periodic--7b8fd0a062bd839230e964e4.md) | 58 | `result-track:7b8fd0a062bd839230e964e4c703d7302d98cde185edf730967650ca94d6632e` |
| 5 | `theorem` | [circleTransformDeriv_eq](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/circletransformderiv-eq--93cda54a5b67758ca4373a15.md) | 68 | `result-track:93cda54a5b67758ca4373a15ad8fa2f2c4c0b289582769fe4649e214045757e7` |
| 6 | `theorem` | [integral_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/integral-circletransform--ab3add74bc74b42776fc9aa1.md) | 78 | `result-track:ab3add74bc74b42776fc9aa131450444d25884049b84f41a3c6d82874e5f9c84` |
| 7 | `theorem` | [continuous_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/continuous-circletransform--a687bca876abcf356ab750e8.md) | 85 | `result-track:a687bca876abcf356ab750e8a3f3db459701bb556cbb32d5e75582b70919d2bd` |
| 8 | `theorem` | [continuous_circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/continuous-circletransformderiv--54e6ccce001120397c8c235d.md) | 96 | `result-track:54e6ccce001120397c8c235d1795f6e6a8f573d3d783d35d63fda5f62133b499` |
| 9 | `def` | [circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/circletransformboundingfunction--acbeab10a7b60c4432333c1a.md) | 104 | `declaration-track:acbeab10a7b60c4432333c1a3b6e0e9e9d7b8a9f562604603c5452d923d44ed2` |
| 10 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/continuouson-prod-circle-transform-function--c0fdc181da94f7dadcb24805.md) | 108 | `result-track:c0fdc181da94f7dadcb248051be696be377e7f64e034a7bfed7caf0d52181407` |
| 11 | `theorem` | [continuousOn_abs_circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/continuouson-abs-circletransformboundingfunction--b483eeb6a5e2528ab8c5cf20.md) | 121 | `result-track:b483eeb6a5e2528ab8c5cf2047b31bc6596dd3d30c7944efa8a32f896f06405c` |
| 12 | `theorem` | [abs_circleTransformBoundingFunction_le](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/abs-circletransformboundingfunction-le--4c050cfb5e912b1d467295f1.md) | 136 | `result-track:4c050cfb5e912b1d467295f1ae34a9b4b34530b4b1757021457103d83c5d2266` |
| 13 | `theorem` | [circleTransformDeriv_bound](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variant85c032803d20bab99bca12f0580da7ca663e9eb6368af799c9140614a92ba096.lean/declarations/circletransformderiv-bound--07a8fe5bfd1186c840584875.md) | 151 | `result-track:07a8fe5bfd1186c840584875c508181e16a7d5c718efc36944c26db08fd4b630` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
