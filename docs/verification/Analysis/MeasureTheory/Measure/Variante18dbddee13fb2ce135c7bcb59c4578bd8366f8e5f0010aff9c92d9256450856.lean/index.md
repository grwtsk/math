# Verification target: GRWTSK.Analysis.MeasureTheory.Measure.Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "856f1bff1c64941f02b1c4a31ae24363df50890e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `856f1bff1c64941f02b1c4a31ae24363df50890e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_Icc_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/measure-icc-lt-top--b24c097da91421e917668c13.md) | 50 | `result-track:b24c097da91421e917668c1312cea028d0fb93697ef14f542dc092c19c9f3de2` |
| 2 | `theorem` | [measure_coe_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/measure-coe-lt-top--0472034a6618d16d205acdab.md) | 53 | `result-track:0472034a6618d16d205acdabb2cf0a33b149c9cf555a466d6b11e796bfbd5d37` |
| 3 | `theorem` | [measurableSet_coe](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/measurableset-coe--85eef6aa46885c6d8b91a486.md) | 60 | `result-track:85eef6aa46885c6d8b91a486ec867b029a5543d7c750c6aaf9ad35c03ce7e3b9` |
| 4 | `theorem` | [measurableSet_Icc](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/measurableset-icc--c4839062bd9166ef8b5207aa.md) | 64 | `result-track:c4839062bd9166ef8b5207aa683abb6c4f849e30c5b4d3e1a7913aa45a18ef39` |
| 5 | `theorem` | [measurableSet_Ioo](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/measurableset-ioo--a7914e1f69f49f83ae941b1b.md) | 67 | `result-track:a7914e1f69f49f83ae941b1bbfe3c3c4fa09e81a2c4466053e6f3b42eed2301d` |
| 6 | `theorem` | [coe_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/coe-ae-eq-icc--93b1a388d22589c72cf4dc17.md) | 74 | `result-track:93b1a388d22589c72cf4dc17788d6856c5c00cee9ed12dce033cd8f02b6e693d` |
| 7 | `theorem` | [Ioo_ae_eq_Icc](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/ioo-ae-eq-icc--9ecfc19c0f57c8ea84df3788.md) | 78 | `result-track:9ecfc19c0f57c8ea84df37885f9f2e405b12b2136633caad8e8d9875a58eba3d` |
| 8 | `theorem` | [Prepartition.measure_iUnion_toReal](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/prepartition-measure-iunion-toreal--56ebd0735a692c2d3f55c27f.md) | 83 | `result-track:56ebd0735a692c2d3f55c27f12f281ac3c29a909380b8afd2e0f101afa0c0070` |
| 9 | `def` | [toBoxAdditive](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/toboxadditive--3c0e0465a3b659bf127502be.md) | 103 | `declaration-track:3c0e0465a3b659bf127502be182e5ecc4f530fc7b86bd3f23b3ff0d5a8fbb1f9` |
| 10 | `theorem` | [volume_apply](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/volume-apply--c20b5cd5f70a988f296f86b8.md) | 121 | `result-track:c20b5cd5f70a988f296f86b827afbbc384a248c04433706677bd1ad0c9bf5654` |
| 11 | `theorem` | [volume_apply'](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/volume-apply--2859c03a8d21255aab058212.md) | 127 | `result-track:2859c03a8d21255aab0582121373d3760c8f464f6a26e1e4c4b46a75b4a32c7a` |
| 12 | `theorem` | [volume_face_mul](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/volume-face-mul--514c5e51ab2c1bded7b3512e.md) | 131 | `result-track:514c5e51ab2c1bded7b3512eec731fbf3ecabdaad11491d8f58cf813b7958e3e` |
| 13 | `def` | [volume](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/volume--1eef795a26858748964a57eb.md) | 144 | `declaration-track:1eef795a26858748964a57ebb27c2cb97969febe28e30f2430291f18c3b54595` |
| 14 | `theorem` | [volume_apply](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variante18dbddee13fb2ce135c7bcb59c4578bd8366f8e5f0010aff9c92d9256450856.lean/declarations/volume-apply--4686bcd07c5452a6b15cb939.md) | 147 | `result-track:4686bcd07c5452a6b15cb9394cbb5f422cdba144033da001d5492c2064919c77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
