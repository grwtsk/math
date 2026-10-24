# Verification target: GRWTSK.Analysis.MeasureTheory.Conservative.Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c5678c640d3c5cce5f59b1e3160b12305bad2c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c5678c640d3c5cce5f59b1e3160b12305bad2c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/conservative--a051cb63040e4f990ebab25a.md) | 52 | `declaration-track:a051cb63040e4f990ebab25a4c3f09f4d32c9071bbb0cf43a237867959ab4167` |
| 2 | `theorem` | [MeasurePreserving.conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/measurepreserving-conservative--cc4a4ccfe48173a1fb3e0a15.md) | 58 | `result-track:cc4a4ccfe48173a1fb3e0a15cc5e99ed8182d3bf1812fdd3c1aaab23020a8566` |
| 3 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/id--c75879284075ae968a82f306.md) | 65 | `result-track:c75879284075ae968a82f306db2695eb4ea319da1e2db6bca1b0453ba143cc03` |
| 4 | `theorem` | [of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/of-absolutelycontinuous--a761f9847b43e9000581b9be.md) | 70 | `result-track:a761f9847b43e9000581b9be6e2f93fc36cba5ea27e06dfcebf8d54aa16e9ca7` |
| 5 | `theorem` | [measureRestrict](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/measurerestrict--535304eb38db6c68fc9ce060.md) | 76 | `result-track:535304eb38db6c68fc9ce060c2b6a9bf5ac327fa4d4fbd6116208134d9b7f4f4` |
| 6 | `theorem` | [congr_ae](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/congr-ae--638c79f5f7bd9347f1d69934.md) | 81 | `result-track:638c79f5f7bd9347f1d699344dc6885f0ecf1c1f6b0cc878bbd1c680437fea4c` |
| 7 | `theorem` | [_root_.MeasureTheory.conservative_congr](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/root-measuretheory-conservative-congr--7a095fb93ddf7d5ffc573b87.md) | 86 | `result-track:7a095fb93ddf7d5ffc573b8789af141ea8a022865827e1971d8a1a1f4bd94ee5` |
| 8 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/exists-mem-iterate-mem--1d84d7c5be7dc77a961a7c8f.md) | 92 | `result-track:1d84d7c5be7dc77a961a7c8f67c2792858b8cf48326e53097c5d66cab5fcd2cd` |
| 9 | `theorem` | [frequently_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/frequently-measure-inter-ne-zero--eecdd78558030324048e9d32.md) | 102 | `result-track:eecdd78558030324048e9d32eac88009a8ba93a9fb9ca6ca96831d497b30291f` |
| 10 | `theorem` | [exists_gt_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/exists-gt-measure-inter-ne-zero--6fb5a576898b4e9d699df897.md) | 131 | `result-track:6fb5a576898b4e9d699df8975a01b752a5ee05ae4146017420272cde88cef446` |
| 11 | `theorem` | [measure_mem_forall_ge_image_notMem_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/measure-mem-forall-ge-image-notmem-eq-zero--1826bf870c4fd346f1c062fd.md) | 139 | `result-track:1826bf870c4fd346f1c062fd0790fc1e20da3b7dab22aea7cb408fd18985403e` |
| 12 | `theorem` | [ae_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/ae-mem-imp-frequently-image-mem--823617d9793440edf7bbb54a.md) | 156 | `result-track:823617d9793440edf7bbb54ad75c4313326b70a85579ce34822178785214d1f6` |
| 13 | `theorem` | [inter_frequently_image_mem_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/inter-frequently-image-mem-ae-eq--fc9886d00003ac8e979559d8.md) | 163 | `result-track:fc9886d00003ac8e979559d8287fdc0eceff050c867f5a082840ad283885f8b7` |
| 14 | `theorem` | [measure_inter_frequently_image_mem_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/measure-inter-frequently-image-mem-eq--0e56bb7640e8158d4eb63b6a.md) | 167 | `result-track:0e56bb7640e8158d4eb63b6afd118dc187dfee650805846aadfed514f44f6151` |
| 15 | `theorem` | [ae_forall_image_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/ae-forall-image-mem-imp-frequently-image-mem--2d3b915f7bb10e884fceb31e.md) | 174 | `result-track:2d3b915f7bb10e884fceb31e58de46b9745d79b1b349996540cd85146ed6e4db` |
| 16 | `theorem` | [frequently_ae_mem_and_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/frequently-ae-mem-and-frequently-image-mem--c4ce3290b0ea26f144a819c5.md) | 185 | `result-track:c4ce3290b0ea26f144a819c518382992c6cfa68ac29e8fff3b79287009d1bbbf` |
| 17 | `theorem` | [ae_frequently_mem_of_mem_nhds](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/ae-frequently-mem-of-mem-nhds--97abbab8b5933371aac0873f.md) | 193 | `result-track:97abbab8b5933371aac0873fbceb2d5f297d47710d99d28d2b4caee25bb78dfb` |
| 18 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant5c0aaa21b124508d998e77b8ba4ff63c6f7385889b4f3aac2629c8e803da7330.lean/declarations/iterate--19fba8690322c75ed61c0d16.md) | 203 | `result-track:19fba8690322c75ed61c0d16163dd4dff084b5b35d9bd0ad75dfb659b2c5161a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
