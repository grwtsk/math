# Verification target: GRWTSK.Topology.GeneralTopology.CircleTransform.Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ba18e9d1778877d83e545d71fbbd1c4bdf52d09",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ba18e9d1778877d83e545d71fbbd1c4bdf52d09`.

Source path: `GRWTSK/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean.json)

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
| 1 | `def` | [circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/circletransform--f0fbfcbf5cabbd300ed1e2a0.md) | 45 | `declaration-track:f0fbfcbf5cabbd300ed1e2a0e67724eab0816f3ede45af0a795a539c97418b61` |
| 2 | `def` | [circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/circletransformderiv--7f4d09d734da3bcb45832851.md) | 49 | `declaration-track:7f4d09d734da3bcb45832851c28b60e685d09d532493f31e1c6a8aa0af3b62e0` |
| 3 | `theorem` | [circleTransformDeriv_periodic](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/circletransformderiv-periodic--3c2bbdda2cf61faef752077c.md) | 52 | `result-track:3c2bbdda2cf61faef752077c97a754e247d04adfa4c82676a0a8f725b22d1060` |
| 4 | `theorem` | [circleTransformDeriv_eq](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/circletransformderiv-eq--dabf0b84041ca59782664a8c.md) | 61 | `result-track:dabf0b84041ca59782664a8cb3cd2e1decf41e4048f457313d71ddaa8f3a0b0f` |
| 5 | `theorem` | [integral_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/integral-circletransform--5bbd3a1a3e4c50bb0218dac7.md) | 70 | `result-track:5bbd3a1a3e4c50bb0218dac7c4fb72fd96bacf11d890a59c2666af0a2eb96a88` |
| 6 | `theorem` | [continuous_circleTransform](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/continuous-circletransform--7e8e4e6d5e788e5fc58f351f.md) | 76 | `result-track:7e8e4e6d5e788e5fc58f351f39c8b2acdbe362d18add617699a914291e18b776` |
| 7 | `theorem` | [continuous_circleTransformDeriv](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/continuous-circletransformderiv--7d35018048c0b47231cf24f3.md) | 86 | `result-track:7d35018048c0b47231cf24f3ee7dca859677bf052eef25b76c488abf38a6f907` |
| 8 | `def` | [circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/circletransformboundingfunction--01d291647e6e898e27554a9d.md) | 93 | `declaration-track:01d291647e6e898e27554a9d7679763058446043538751d10edd68d75318ffe5` |
| 9 | `theorem` | [continuousOn_prod_circle_transform_function](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/continuouson-prod-circle-transform-function--e7e79b6a34ffc843c9d12468.md) | 96 | `result-track:e7e79b6a34ffc843c9d12468d4704275fa42096b6e99f00948a7f1aaac4a9de0` |
| 10 | `theorem` | [continuousOn_norm_circleTransformBoundingFunction](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/continuouson-norm-circletransformboundingfunction--9f9191aff6c3570410391aff.md) | 106 | `result-track:9f9191aff6c3570410391aff273c78e5b2a89504c9e9b98f455bed920f224aa0` |
| 11 | `theorem` | [norm_circleTransformBoundingFunction_le](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/norm-circletransformboundingfunction-le--8043df029a608863375749d2.md) | 119 | `result-track:8043df029a608863375749d2ef7f1b0a9bc5e9ba818f6aebabfde893f1a88ca0` |
| 12 | `theorem` | [circleTransformDeriv_bound](../../../../../mathematics/Topology/GeneralTopology/CircleTransform/Variantfc713f78035f5f60c5504121ac7701bb28e4f70c258e4e6943b5c2912df951f5.lean/declarations/circletransformderiv-bound--73ccc5c7285f45e77593d94c.md) | 134 | `result-track:73ccc5c7285f45e77593d94c64abcee78c62124b8c0420db32c70151193422c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
