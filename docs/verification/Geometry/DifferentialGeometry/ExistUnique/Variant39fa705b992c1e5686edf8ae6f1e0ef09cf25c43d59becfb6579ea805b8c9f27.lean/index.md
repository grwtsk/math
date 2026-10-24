# Verification target: GRWTSK.Geometry.DifferentialGeometry.ExistUnique.Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "179715f4ae536862360cdb2317e31067e8d7b50c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `179715f4ae536862360cdb2317e31067e8d7b50c`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean.json)

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
| 1 | `theorem` | [exists_isMIntegralCurveAt_of_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/exists-ismintegralcurveat-of-contmdiffat--f1a21577d2e3df803d4d5f03.md) | 73 | `result-track:f1a21577d2e3df803d4d5f039240b23a2d03d172ab532c1038e867f705d65bf6` |
| 2 | `lemma` | [exists_isMIntegralCurveAt_of_contMDiffAt_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/exists-ismintegralcurveat-of-contmdiffat-boundaryless--24b46eb12ba51de99204f559.md) | 128 | `result-track:24b46eb12ba51de99204f559f916916a0bc4422727b10d605da21c238ba5b710` |
| 3 | `theorem` | [isMIntegralCurveAt_eventuallyEq_of_contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurveat-eventuallyeq-of-contmdiffat--76694bf953443ca78a7a11cf.md) | 140 | `result-track:76694bf953443ca78a7a11cf1205f96f4983839ec84d265142e07112a2743b48` |
| 4 | `theorem` | [isMIntegralCurveAt_eventuallyEq_of_contMDiffAt_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurveat-eventuallyeq-of-contmdiffat-boundaryless--53e3a463d1fafd2ae8d36b46.md) | 185 | `result-track:53e3a463d1fafd2ae8d36b46c806c3cdb03ea5321e199077a314ef73c0d5e488` |
| 5 | `theorem` | [isMIntegralCurveOn_Ioo_eqOn_of_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurveon-ioo-eqon-of-contmdiff--78cb5476391e6bb5d028816c.md) | 197 | `result-track:78cb5476391e6bb5d028816cb5cdea9ae28aa64c4328adf510c3023200efd01c` |
| 6 | `theorem` | [isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurveon-ioo-eqon-of-contmdiff-boundaryless--7cc1bea6085a3c856da9189b.md) | 235 | `result-track:7cc1bea6085a3c856da9189b9ca270528cc957eb943142ecd5d79fb2e7ff5e17` |
| 7 | `theorem` | [isMIntegralCurve_eq_of_contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurve-eq-of-contmdiff--73f703f302363ca09503b5f6.md) | 247 | `result-track:73f703f302363ca09503b5f6380385b7cef0c3c4551850e57a428ff992f2de05` |
| 8 | `theorem` | [isMIntegralCurve_Ioo_eq_of_contMDiff_boundaryless](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurve-ioo-eq-of-contmdiff-boundaryless--baf82ca1121582c31fed5eae.md) | 261 | `result-track:baf82ca1121582c31fed5eaefebe34326a2686aa3cc6aa20118225a4d47f7b1f` |
| 9 | `lemma` | [IsMIntegralCurve.periodic_of_eq](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurve-periodic-of-eq--371a2dd7767b75d77eb02e38.md) | 268 | `result-track:371a2dd7767b75d77eb02e38830b940104f85af848dbc0772857441b78702a85` |
| 10 | `lemma` | [IsMIntegralCurve.periodic_xor_injective](../../../../../mathematics/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/declarations/ismintegralcurve-periodic-xor-injective--d5a13d4220dd870ca8fcfe0f.md) | 277 | `result-track:d5a13d4220dd870ca8fcfe0fb986c2de8aadf51b4e9a75f3d52cbcde58f3b04a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
