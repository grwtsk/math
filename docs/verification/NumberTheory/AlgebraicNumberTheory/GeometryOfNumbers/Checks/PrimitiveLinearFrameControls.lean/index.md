# Verification target: GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearFrameControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4302e76045511a68dc4c817b0ffaa0d5cfa6d467",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4302e76045511a68dc4c817b0ffaa0d5cfa6d467`.

Source path: `GRWTSK/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GeometryOfNumbers.PrimitiveLinearScaledArea`](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearScaledArea.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls`](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unit_cross_orientation_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-cross-orientation-control--425098b3ba05adc6dd46553d.md) | 32 | `result-track:425098b3ba05adc6dd46553d3f1e2e9f3cb331bae584f16e1eb953a8bc173f40` |
| 2 | `theorem` | [unit_frame_determinant_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-frame-determinant-control--a41adac1b010f5946e69759c.md) | 39 | `result-track:a41adac1b010f5946e69759ca281641db99050fb3fb4787294e15c76f6430986` |
| 3 | `theorem` | [unit_frame_determinant_unit_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-frame-determinant-unit-control--5273ada936ff9e2c933e8722.md) | 45 | `result-track:5273ada936ff9e2c933e87224b0f70fad0cd73e25802b1787b22a6ee2683f1ef` |
| 4 | `theorem` | [unit_scaledNormalSq_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-scalednormalsq-control--9845423c2689455dbcfe1673.md) | 50 | `result-track:9845423c2689455dbcfe1673484dc4d2fc00e5f6f537db00090bac69830050d6` |
| 5 | `theorem` | [unit_boxVolume_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-boxvolume-control--d543d8c25e4676312f63a4b9.md) | 55 | `result-track:d543d8c25e4676312f63a4b99f8d244e7eab53489af883fffd77014e7912f0b6` |
| 6 | `theorem` | [unit_scaledAreaSq_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-scaledareasq-control--0d140e471e6c793c24410611.md) | 60 | `result-track:0d140e471e6c793c244106113202128a27f6f6b90a4b085da857c34f8a4ba314` |
| 7 | `theorem` | [unit_normalized_height_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/unit-normalized-height-control--6682de708eb948394a843073.md) | 66 | `result-track:6682de708eb948394a843073d1784aa2e156d28c0b5280e9482961e14d6d0cca` |
| 8 | `theorem` | [lopsided_scaled_cross_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/lopsided-scaled-cross-control--28d737b3b227a248e955200e.md) | 73 | `result-track:28d737b3b227a248e955200ec8edee6c384561ab26e0e4c706cb69f6cc18b96e` |
| 9 | `theorem` | [cube_denominator_substitution_rejected](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/cube-denominator-substitution-rejected--7c494308731ccade141791f5.md) | 80 | `result-track:7c494308731ccade141791f529d319f226ea32aad605ebdc04726a3fe82cdd75` |
| 10 | `theorem` | [frame_not_finite_count_bound_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/frame-not-finite-count-bound-control--040acd6985705b3a29a32568.md) | 89 | `result-track:040acd6985705b3a29a32568ea1606c5727177591ef694b812c4e7c7694dc7c4` |
| 11 | `theorem` | [lopsided_squared_bridge_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearFrameControls.lean/declarations/lopsided-squared-bridge-control--52d1330c680b2d11b7eadec6.md) | 98 | `result-track:52d1330c680b2d11b7eadec67a969f45a6e188c2b2935485719ebf5090f86bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
