# Verification target: GRWTSK.Analysis.MeasureTheory.Conservative.Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d75ffacf7e71c079dff788ec254bd331626c0fb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d75ffacf7e71c079dff788ec254bd331626c0fb`.

Source path: `GRWTSK/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean.json)

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
| 1 | `structure` | [Conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/conservative--bfdfbb48cc3363280d56d22a.md) | 58 | `declaration-track:bfdfbb48cc3363280d56d22a08ea7adc47361d1fc636d827c33f14e56eac00ef` |
| 2 | `theorem` | [MeasurePreserving.conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/measurepreserving-conservative--5a64766a1974b74eeb9ae47c.md) | 64 | `result-track:5a64766a1974b74eeb9ae47c598caa602df289c2136ed042e541ae9ac19f1f60` |
| 3 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/id--f3f4dca217b42c2d3c544f14.md) | 71 | `result-track:f3f4dca217b42c2d3c544f14d4208a50b6a6e013f0265843dffd2ce5a641cc66` |
| 4 | `theorem` | [of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/of-absolutelycontinuous--1f71f1680372e5ef3fec841d.md) | 76 | `result-track:1f71f1680372e5ef3fec841d8e5720921d41488d4f1e59e8821970b4741dabcc` |
| 5 | `theorem` | [measureRestrict](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/measurerestrict--d4cde5a53d4c226f223d029a.md) | 82 | `result-track:d4cde5a53d4c226f223d029ab044255d5f95b2f9ebdccd2f72a613460ea31a9b` |
| 6 | `theorem` | [congr_ae](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/congr-ae--3861cc5e03db9b3e978c09e0.md) | 87 | `result-track:3861cc5e03db9b3e978c09e0f3a7d2602267e288db70c7ccfa1d43e885d948c6` |
| 7 | `theorem` | [_root_.MeasureTheory.conservative_congr](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/root-measuretheory-conservative-congr--46300250fb1da580b085ae13.md) | 92 | `result-track:46300250fb1da580b085ae13a030c8993329957fb5a406babc6ed2eed37494fe` |
| 8 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/exists-mem-iterate-mem--bebcf309df5be44c55cfbf4b.md) | 98 | `result-track:bebcf309df5be44c55cfbf4b7bb66d17dfda814e1692850d0fb2a7d852fd31d0` |
| 9 | `theorem` | [frequently_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/frequently-measure-inter-ne-zero--51345e4b38505dd5dff81983.md) | 108 | `result-track:51345e4b38505dd5dff81983f5a0e039fc786f22c3926846229df0dca7d13fea` |
| 10 | `theorem` | [exists_gt_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/exists-gt-measure-inter-ne-zero--d3bf23a4e34ad44f25bde64f.md) | 137 | `result-track:d3bf23a4e34ad44f25bde64f9a4d7e00528fe333fd659c99b6a465ca3b4ed5fb` |
| 11 | `theorem` | [measure_mem_forall_ge_image_notMem_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/measure-mem-forall-ge-image-notmem-eq-zero--ebcab512085766a2351948c2.md) | 145 | `result-track:ebcab512085766a2351948c25c8a0e594a1a3db4dad178097325536490619ff0` |
| 12 | `theorem` | [ae_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/ae-mem-imp-frequently-image-mem--724c36fcf8f9e0cb6d2733af.md) | 159 | `result-track:724c36fcf8f9e0cb6d2733af78d75ee0f21c07c49438f10bb77d0d868dcac632` |
| 13 | `theorem` | [inter_frequently_image_mem_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/inter-frequently-image-mem-ae-eq--9e203580bae96e834c1754a7.md) | 167 | `result-track:9e203580bae96e834c1754a779a00e995b924837a5cf7fb293c90697deb76ada` |
| 14 | `theorem` | [measure_inter_frequently_image_mem_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/measure-inter-frequently-image-mem-eq--26b476ed0f431cb2d7f6a05d.md) | 171 | `result-track:26b476ed0f431cb2d7f6a05d85452c303a62251cc67598c4957de6bf2ad38d80` |
| 15 | `theorem` | [ae_forall_image_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/ae-forall-image-mem-imp-frequently-image-mem--ca72796eaa0905e1083070e0.md) | 178 | `result-track:ca72796eaa0905e1083070e08254ab2c57a2910ec11bc726b14e51a9cd1c486b` |
| 16 | `theorem` | [frequently_ae_mem_and_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/frequently-ae-mem-and-frequently-image-mem--915abe0d9b687b050f2db31c.md) | 189 | `result-track:915abe0d9b687b050f2db31c3bd5f23da0dc37362a42746bcf7f943efefdcd12` |
| 17 | `theorem` | [ae_frequently_mem_of_mem_nhds](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/ae-frequently-mem-of-mem-nhds--d719ead289b79df5a470f2e7.md) | 197 | `result-track:d719ead289b79df5a470f2e75d7bc0e64ac4bb5ba5555ff4294f0a201ff5506a` |
| 18 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/declarations/iterate--b5339c570ad97dd6f8b4e23d.md) | 207 | `result-track:b5339c570ad97dd6f8b4e23dbfb8eb3023dd259d7e5e6c6af45c7d041fc63491` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
