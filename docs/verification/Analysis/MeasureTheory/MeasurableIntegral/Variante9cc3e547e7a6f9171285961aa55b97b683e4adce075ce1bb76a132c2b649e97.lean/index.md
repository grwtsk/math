# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableIntegral.Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b74624ab94545e380da27bb24f049d4b10958c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b74624ab94545e380da27bb24f049d4b10958c`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_kernel_prod_mk_left_of_finite](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/measurable-kernel-prod-mk-left-of-finite--4285507da6631abbd3e0c437.md) | 48 | `result-track:4285507da6631abbd3e0c437445ba4768f7e4a08177e869f8cb7189c1d609931` |
| 2 | `theorem` | [measurable_kernel_prod_mk_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/measurable-kernel-prod-mk-left--a200f7800406892496e4fdb5.md) | 108 | `result-track:a200f7800406892496e4fdb5f28a48a65cfc2983733247d417f5c6a45cd721a7` |
| 3 | `theorem` | [measurable_kernel_prod_mk_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/measurable-kernel-prod-mk-left--909d3920d38313178c2a6724.md) | 119 | `result-track:909d3920d38313178c2a67241c918c562da7856d026a61cff57dbd87a8aee034` |
| 4 | `theorem` | [measurable_kernel_prod_mk_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/measurable-kernel-prod-mk-right--48d74af6e0f6b0388b2b867e.md) | 128 | `result-track:48d74af6e0f6b0388b2b867ee540799c3882df001acec8b522c15db5ab6c47f9` |
| 5 | `theorem` | [kernel.measurable_lintegral_indicator_const](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/kernel-measurable-lintegral-indicator-const--e47b8689a5a065212099d52d.md) | 142 | `result-track:e47b8689a5a065212099d52d63954eee3cae7dee37b94eb394abc2891e4c7c83` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--b81c1ee2cfab6f24c6c207fa.md) | 157 | `result-track:b81c1ee2cfab6f24c6c207fa19808fcfe55569e54e6b77c7a4ee96ccd32174d2` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--4f4002c45691a406584ae44b.md) | 192 | `result-track:4f4002c45691a406584ae44b2ba039b98a1fd5b73a9e5bcb13482979654292b6` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_right''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--1dd351581070c196f91bf31d.md) | 200 | `result-track:1dd351581070c196f91bf31d8b16ee4c9fb314c3a3b8062bd5ae598d3caf3015` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.set_lintegral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--57f678c8975422e91db4e291.md) | 212 | `result-track:57f678c8975422e91db4e2915d692fa151eb30837835f4715e632b14cec706ac` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--0e53a8adaccca7df67d7f47d.md) | 218 | `result-track:0e53a8adaccca7df67d7f47d5f9e9bf40f084e7d074c09f6dd51e813ac51340b` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--eee52df1dcdc63f8e47ef596.md) | 223 | `result-track:eee52df1dcdc63f8e47ef5963ad1f04adf42af75877ca9391964e32d1b342bb4` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.set_lintegral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--496c85bdb770c5872ed1337f.md) | 228 | `result-track:496c85bdb770c5872ed1337f90ca3ca03f376c00c31d32d637305fcb56749045` |
| 13 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.lintegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--a88eac82ad5bf335a0f1adc7.md) | 234 | `result-track:a88eac82ad5bf335a0f1adc750f58173aeca7ac592442cf3158e227e28330a1f` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.MeasurableKernelProdMkLeftOfFinite.Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.Measurable.set_lintegral_kernel](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/root-grwtsk-analysis-measuretheory-measurablekernelprodmkleftoffinite-va--f6069340aab54738fb1a62b2.md) | 239 | `result-track:f6069340aab54738fb1a62b22892ef0aaf8c3b32e3e6219f591e7710b09e33e8` |
| 15 | `theorem` | [measurableSet_kernel_integrable](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/measurableset-kernel-integrable--af860fefc9cdf44f1f88cef3.md) | 250 | `result-track:af860fefc9cdf44f1f88cef32f3e1d21725518c963e3b5f78206cdabb9bb7cb0` |
| 16 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/stronglymeasurable-integral-kernel-prod-right--523e4bc8a86a8620512b13ea.md) | 265 | `result-track:523e4bc8a86a8620512b13eac9d930d297eb8a7c869a62505e0f1da8f265239f` |
| 17 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/stronglymeasurable-integral-kernel-prod-right--32d3b8e2fb8cdeca8a1c3e48.md) | 313 | `result-track:32d3b8e2fb8cdeca8a1c3e4846f73af467e6ae565ce5dfbab93a904e3c9499dd` |
| 18 | `theorem` | [StronglyMeasurable.integral_kernel_prod_right''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/stronglymeasurable-integral-kernel-prod-right--f2560935c21c1ba9703d9dab.md) | 319 | `result-track:f2560935c21c1ba9703d9dabf8f94b669736ac5a408ded4046e359c54562ccfa` |
| 19 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/stronglymeasurable-integral-kernel-prod-left--489a2c874cc3b4658f2560b8.md) | 333 | `result-track:489a2c874cc3b4658f2560b89410aab096c8104006a1535e5013b7a0182918f9` |
| 20 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left'](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/stronglymeasurable-integral-kernel-prod-left--43d74555810bc07df62ddf77.md) | 338 | `result-track:43d74555810bc07df62ddf77cbed3566936420cd1a1ab29f58bd4580456ce3d2` |
| 21 | `theorem` | [StronglyMeasurable.integral_kernel_prod_left''](../../../../../mathematics/Analysis/MeasureTheory/MeasurableIntegral/Variante9cc3e547e7a6f9171285961aa55b97b683e4adce075ce1bb76a132c2b649e97.lean/declarations/stronglymeasurable-integral-kernel-prod-left--e423c952adf9b4bd38d36ac3.md) | 343 | `result-track:e423c952adf9b4bd38d36ac324bbcfa8060efd90ef8d88a25490e57148d2b3b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
