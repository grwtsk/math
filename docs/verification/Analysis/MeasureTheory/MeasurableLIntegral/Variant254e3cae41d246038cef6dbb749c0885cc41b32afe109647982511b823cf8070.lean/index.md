# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableLIntegral.Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f9d3441ed4976bac7b264c0834919a77b694285",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f9d3441ed4976bac7b264c0834919a77b694285`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_kernel_prodMk_left_of_finite](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/measurable-kernel-prodmk-left-of-finite--38d6140c7fd21fabb4201829.md) | 35 | `result-track:38d6140c7fd21fabb4201829c318acc081f95f5f47c249f2230de4ad98b91ddf` |
| 2 | `theorem` | [measurable_kernel_prodMk_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/measurable-kernel-prodmk-left--913db1446c4351888c9dd642.md) | 77 | `result-track:913db1446c4351888c9dd6429ef124c00643f6813953ff7bb904bf7e8bd89230` |
| 3 | `theorem` | [measurable_kernel_prodMk_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/measurable-kernel-prodmk-left--ca2b42d68f46d49479f2e9c6.md) | 90 | `result-track:ca2b42d68f46d49479f2e9c60d0146a3e5dc2a0fffc827a8389439a57c72193b` |
| 4 | `theorem` | [measurable_kernel_prodMk_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/measurable-kernel-prodmk-right--a3cbd8757a895b1184ee2817.md) | 100 | `result-track:a3cbd8757a895b1184ee2817eca10f227eb79698751bfa8da17dd7b003a3833f` |
| 5 | `theorem` | [Kernel.measurable_lintegral_indicator_const](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/kernel-measurable-lintegral-indicator-const--d0c15bd74b5ba18654eab635.md) | 116 | `result-track:d0c15bd74b5ba18654eab635fd2422ffe6e86e785168b98b8d5a9b1f74b43e96` |
| 6 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-lintegral-kernel-prod-right--3771291de51fc9b64edcb822.md) | 131 | `result-track:3771291de51fc9b64edcb822aa72e98189e7c78d6cf53cbe8595c41546f2d692` |
| 7 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-lintegral-kernel-prod-right--60287367c70a99be5679422f.md) | 164 | `result-track:60287367c70a99be5679422f8834bbfaf32b82dce1281f107271f5dfab9aef6d` |
| 8 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_right''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-lintegral-kernel-prod-right--16589228fcc36353b219970d.md) | 168 | `result-track:16589228fcc36353b219970d5ba33bc77f6b8113ab6a2c02a15b79633e6b56d3` |
| 9 | `theorem` | [_root_.Measurable.setLIntegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-setlintegral-kernel-prod-right--5f923be5933066be41bb9e9b.md) | 179 | `result-track:5f923be5933066be41bb9e9ba77c205b2457c2edcf1a6ee90ba7f0c7dd95dade` |
| 10 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-lintegral-kernel-prod-left--1e8e738bd86b83c4ec20fd33.md) | 185 | `result-track:1e8e738bd86b83c4ec20fd330941fbfee964bd6714635e9f2ff68890e19a7f2c` |
| 11 | `theorem` | [_root_.Measurable.lintegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-lintegral-kernel-prod-left--7f9ae4cfac09626c526422f6.md) | 189 | `result-track:7f9ae4cfac09626c526422f65655d761d524421f8499bd192592fd78376d8e0f` |
| 12 | `theorem` | [_root_.Measurable.setLIntegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-setlintegral-kernel-prod-left--e718563a25a8b02de8343318.md) | 192 | `result-track:e718563a25a8b02de83433180e671b1a132576a105aa2522464ab8bdb88ce71b` |
| 13 | `theorem` | [_root_.Measurable.lintegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-lintegral-kernel--61f04a565cb1121724c2bd36.md) | 198 | `result-track:61f04a565cb1121724c2bd36db48bf6b7885fedb786ef7bbe2d988fbb71f3860` |
| 14 | `theorem` | [_root_.Measurable.setLIntegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableLIntegral/Variant254e3cae41d246038cef6dbb749c0885cc41b32afe109647982511b823cf8070.lean/declarations/root-measurable-setlintegral-kernel--d13d0ae024a93da7bf20698d.md) | 201 | `result-track:d13d0ae024a93da7bf20698da23c43000815326526e294ee6c18abb4250d206d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
