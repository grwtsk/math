# Verification target: GRWTSK.Analysis.MeasureTheory.Doubling.Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b62ccaaa06ff0fbbd93af095056621562e99b187",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b62ccaaa06ff0fbbd93af095056621562e99b187`.

Source path: `GRWTSK/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/macro-rules--7c7cbb1889a851bfb6fed401.md) | 37 | `declaration-track:7c7cbb1889a851bfb6fed401afdce160c479e173cad8cc2ed3f1c59676195828` |
| 2 | `class` | [IsUnifLocDoublingMeasure](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/isuniflocdoublingmeasure--c8100f8b23d6db502706cab3.md) | 52 | `declaration-track:c8100f8b23d6db502706cab3bcea07bf21194648bb55db5c172c57f929bebe5f` |
| 3 | `theorem` | [exists_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/exists-measure-closedball-le-mul--962e6e7f02d7a97be65cc611.md) | 64 | `result-track:962e6e7f02d7a97be65cc611729c8d7d8194a91ccf74fa34174159cfca6e126b` |
| 4 | `def` | [doublingConstant](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/doublingconstant--c9e7e4c1012e8c43bc0829c3.md) | 71 | `declaration-track:c9e7e4c1012e8c43bc0829c378000c2bac00c6b78d1a884dbbf543672be4bfec` |
| 5 | `theorem` | [exists_measure_closedBall_le_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/exists-measure-closedball-le-mul--9f55c7fd531da55e7e9506ed.md) | 75 | `result-track:9f55c7fd531da55e7e9506eddf071966fd449728f8746eef477d6f8f2dd0c760` |
| 6 | `theorem` | [exists_eventually_forall_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/exists-eventually-forall-measure-closedball-le-mul--46168896a527754b9837be77.md) | 80 | `result-track:46168896a527754b9837be7789b8254a5b86c67af93c89c1e92fa4db135f3528` |
| 7 | `def` | [scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/scalingconstantof--913a876f7cfb62a8fbccdca1.md) | 116 | `declaration-track:913a876f7cfb62a8fbccdca148cca91bb8b5a6af689b1a40585a36063304815c` |
| 8 | `theorem` | [one_le_scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/one-le-scalingconstantof--964bcbb8e8bed0fb0f6f912d.md) | 121 | `result-track:964bcbb8e8bed0fb0f6f912d2447a4578a1c460adf4196222f842f073b9047b5` |
| 9 | `theorem` | [eventually_measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/eventually-measure-mul-le-scalingconstantof-mul--45f507be86b48f3aa8754a99.md) | 125 | `result-track:45f507be86b48f3aa8754a9989566b515e4036ee94e66d47b5b6e9321cc2c672` |
| 10 | `theorem` | [eventually_measure_le_scaling_constant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/eventually-measure-le-scaling-constant-mul--0ab36a3e290d56551dc53319.md) | 143 | `result-track:0ab36a3e290d56551dc53319d316a7fbb4533d4a28c6376156b4a23a837575f7` |
| 11 | `theorem` | [eventually_measure_le_scaling_constant_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/eventually-measure-le-scaling-constant-mul--c56b66c07490076372499936.md) | 150 | `result-track:c56b66c07490076372499936371b69922c310e641c0232ba044cc5430a047832` |
| 12 | `def` | [scalingScaleOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/scalingscaleof--f60752a805fa6be60ee497aa.md) | 160 | `declaration-track:f60752a805fa6be60ee497aaa568bc72dbe947c2b1747919864d8649f16809cf` |
| 13 | `theorem` | [scalingScaleOf_pos](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/scalingscaleof-pos--86dc6b496b8a31cbeb1ea588.md) | 164 | `result-track:86dc6b496b8a31cbeb1ea5881a28b8eafd45aded799e55baa34ecf7e43c9093a` |
| 14 | `theorem` | [measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant79bf7cb53a13cba1dafb1929553c6880c8cbf3c90a6a82ae96565376b3d84029.lean/declarations/measure-mul-le-scalingconstantof-mul--2a6535f5117e86a6c1023be0.md) | 168 | `result-track:2a6535f5117e86a6c1023be019e3e4581d5b937a88fa8967e047f0f9fbcd4859` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
