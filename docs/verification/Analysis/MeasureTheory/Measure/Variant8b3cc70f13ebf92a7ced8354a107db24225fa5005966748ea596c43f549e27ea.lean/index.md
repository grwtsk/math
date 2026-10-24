# Verification target: GRWTSK.Analysis.MeasureTheory.Measure.Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03153c13e0eacdc5c40b859b316169eaa5e310e2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03153c13e0eacdc5c40b859b316169eaa5e310e2`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_Icc_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/measure-icc-lt-top--98066618511324d6928bb020.md) | 42 | `result-track:98066618511324d6928bb020d87f2a946c26498f13c5f72c3713185a8e0b7d12` |
| 2 | `theorem` | [measure_coe_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/measure-coe-lt-top--ff595ca4c4c924741c47af51.md) | 45 | `result-track:ff595ca4c4c924741c47af513a1738d772e34fedb1f6036c035789413eb14a7d` |
| 3 | `theorem` | [measurableSet_coe](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/measurableset-coe--4455f3a1ccac8c40ad69f811.md) | 52 | `result-track:4455f3a1ccac8c40ad69f8112f3fcb6c563a3b5fab64fad0626748a3d3dd075a` |
| 4 | `theorem` | [measurableSet_Icc](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/measurableset-icc--7a35f648925afba8c09ebf72.md) | 56 | `result-track:7a35f648925afba8c09ebf72743356e88543904db26be2d0bd1f6e25ac27a53d` |
| 5 | `theorem` | [measurableSet_Ioo](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/measurableset-ioo--e67524202bf96d8722962053.md) | 59 | `result-track:e67524202bf96d8722962053b1b498288f59a6690955378c283f68d8719e6598` |
| 6 | `theorem` | [coe_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/coe-ae-eq-icc--2e6ba3ff95072128f851d866.md) | 66 | `result-track:2e6ba3ff95072128f851d866b3f8ae8b77b3aeed585c1129cd438298b2c21950` |
| 7 | `theorem` | [Ioo_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/ioo-ae-eq-icc--ba539ee19baccea6f06327f0.md) | 70 | `result-track:ba539ee19baccea6f06327f039ad3717f0be1dc7ee3da83250e2b827f694471b` |
| 8 | `theorem` | [Prepartition.measure_iUnion_toReal](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/prepartition-measure-iunion-toreal--f3f63fd961df6d1e47e35b3a.md) | 75 | `result-track:f3f63fd961df6d1e47e35b3a516571022a959ca18c1c6d5e69f158f9b2232e5f` |
| 9 | `def` | [toBoxAdditive](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/toboxadditive--825e5ca24faf8f135d690048.md) | 95 | `declaration-track:825e5ca24faf8f135d690048a524a4d1b9664d0d4a41a3b2f729fc2ce5d40fcb` |
| 10 | `theorem` | [volume_apply](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/volume-apply--3bc6fae41da4482fa4511f08.md) | 113 | `result-track:3bc6fae41da4482fa4511f080ba0c1506257ad9aea7a9416081487af27a2b612` |
| 11 | `theorem` | [volume_apply'](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/volume-apply--f20ef2f527148968975d529c.md) | 119 | `result-track:f20ef2f527148968975d529c8f0aa08a1483c244711aba05a71888d913e0a713` |
| 12 | `theorem` | [volume_face_mul](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/volume-face-mul--90dbfc4310c475bfd8466dec.md) | 123 | `result-track:90dbfc4310c475bfd8466dec5999875f274f32e01a65b01a768e8af70518c37c` |
| 13 | `def` | [volume](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/volume--a85a912cece32b71087fb171.md) | 136 | `declaration-track:a85a912cece32b71087fb1717dceecefeae014b7ba263f502e5d718cf2aec6d6` |
| 14 | `theorem` | [volume_apply](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variant8b3cc70f13ebf92a7ced8354a107db24225fa5005966748ea596c43f549e27ea.lean/declarations/volume-apply--0fb92c76b9f44fd43e8fa89b.md) | 139 | `result-track:0fb92c76b9f44fd43e8fa89b56a5b5b0beac9eb272989e4d93c00dddb048bd4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
