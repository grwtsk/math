# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableLIntegral.Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9c9796d82b5cebec26368a4c7cddce693008cd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9c9796d82b5cebec26368a4c7cddce693008cd`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_kernel_prodMk_left_of_finite](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/measurable-kernel-prodmk-left-of-finite--043bea74e80e3ae3965b7bf1.md) | 43 | `result-track:043bea74e80e3ae3965b7bf1038cdb27283dc8d296ffddf366eac91bda6d0223` |
| 2 | `theorem` | [measurable_kernel_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/measurable-kernel-prodmk-left--dc40d47acabc33a45ccc59d0.md) | 85 | `result-track:dc40d47acabc33a45ccc59d05ffbc960879371e343a31b3e2d30d9c67de8d6bb` |
| 3 | `theorem` | [measurable_kernel_prodMk_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/measurable-kernel-prodmk-left--8b41c5373a2d7ef402f3ee6b.md) | 98 | `result-track:8b41c5373a2d7ef402f3ee6b414c71d689f1f7c2bba4fe0be879d1f3bae4f249` |
| 4 | `theorem` | [measurable_kernel_prodMk_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/measurable-kernel-prodmk-right--917dc0bddab5c95a070c6d97.md) | 108 | `result-track:917dc0bddab5c95a070c6d9779241f6448d99a13bef1d41b29ab8dd9e2d62d7c` |
| 5 | `theorem` | [Kernel.measurable_lintegral_indicator_const](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/kernel-measurable-lintegral-indicator-const--fddb61b7626029471034f029.md) | 124 | `result-track:fddb61b7626029471034f0295f7e4c5b76c80256a2257cd8f90500528d11bf3f` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.lintegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--70dfce5e9937774463787a85.md) | 139 | `result-track:70dfce5e9937774463787a859878623cf2fd5ded6f0223e8b7351064beeee73f` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.lintegral_kernel_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--e5175b327f66420d9d8d769c.md) | 172 | `result-track:e5175b327f66420d9d8d769cab4ef2171069c3efc5268e2a5029d24126e8424a` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.lintegral_kernel_prod_right''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--470a96c51767d0cfd35ae29f.md) | 176 | `result-track:470a96c51767d0cfd35ae29f547375e7f4bab9401d844d82cbdb1b5a62eed631` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.setLIntegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--8decb9a56cc3c7ff5fafde47.md) | 187 | `result-track:8decb9a56cc3c7ff5fafde47635bf7f3b7e3123ec2aef9453d12edf2976e20f5` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.lintegral_kernel_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--3325df9348bb329c22efef27.md) | 193 | `result-track:3325df9348bb329c22efef27f0c9993c079f9b2eb2514e196c0093ce91235806` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.lintegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--7e834fbc04668e20dbb10147.md) | 197 | `result-track:7e834fbc04668e20dbb101474de6af1240b070721e95c19767f85e7a140765f1` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.setLIntegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--a7985b8f2bc143e0f0bf16c1.md) | 200 | `result-track:a7985b8f2bc143e0f0bf16c1f4e2d7b94127bdf3ecd8d48e46c27a8045ab4669` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.lintegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--ee09cce2c6d166036ffc1b29.md) | 206 | `result-track:ee09cce2c6d166036ffc1b2941551d9905050c684535d0c6b4f911f193a6494e` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.Measurable.setLIntegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant51825420370ab799be0b5346519b90f89f71e184821690752235dd0b0b48bc6d.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--a72fab8cb4d5e56cd2fe504c.md) | 209 | `result-track:a72fab8cb4d5e56cd2fe504cfa415d76e4de0d95d2443eadb882ace97876b0c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
