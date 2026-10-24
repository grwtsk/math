# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72f0ca3782527d19dd5efdd2a82b0fe0ed943cfd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensityᵥ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/measure-withdensity--5fd344c7099fb64e6b0c27e7.md) | 45 | `declaration-track:5fd344c7099fb64e6b0c27e75610bd36b91cc41786600d61a7c9a19edc9b0f9c` |
| 2 | `theorem` | [withDensityᵥ_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-apply--dad881fe21e88c13e6a8e7e8.md) | 60 | `result-track:dad881fe21e88c13e6a8e7e8503334a6771202f6a029b7741946a9f076031c7e` |
| 3 | `theorem` | [withDensityᵥ_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-zero--3b2e953ecb15a05e91f31f9f.md) | 66 | `result-track:3b2e953ecb15a05e91f31f9f73515425e2ca86d77f7031e854574af0ec7e09c8` |
| 4 | `theorem` | [withDensityᵥ_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-neg--896ce2674eae5fdd332f416f.md) | 72 | `result-track:896ce2674eae5fdd332f416fe95e1a66c2bc7527c0f4c861530b66124d68a870` |
| 5 | `theorem` | [withDensityᵥ_neg'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-neg--960db205ddb52d25ce9de4e8.md) | 81 | `result-track:960db205ddb52d25ce9de4e885e86920cb9599e8568d10381c2233d58046c7f7` |
| 6 | `theorem` | [withDensityᵥ_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-add--1dc8df0b95156519ac3d10fa.md) | 85 | `result-track:1dc8df0b95156519ac3d10fa06ec6908e0192a0fd857a0afe6729c5c6ecd0039` |
| 7 | `theorem` | [withDensityᵥ_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-add--e5fc7bf9095116905f8613eb.md) | 95 | `result-track:e5fc7bf9095116905f8613ebf6a951c8e399ca587fe9319b7c7eb0375068d1df` |
| 8 | `theorem` | [withDensityᵥ_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-sub--47c0de46c0088236696e6d83.md) | 100 | `result-track:47c0de46c0088236696e6d8378495e9911c17cfd0666db5124e2219e88ba16f3` |
| 9 | `theorem` | [withDensityᵥ_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-sub--048a5b2ff34f1aa8566f2aac.md) | 104 | `result-track:048a5b2ff34f1aa8566f2aacf23c7297ac477868a48cce052a18ebea2d8bc913` |
| 10 | `theorem` | [withDensityᵥ_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-smul--0592e415fd957776b868ffba.md) | 109 | `result-track:0592e415fd957776b868ffbaa90d416c025f94e0d162d733f12558afe07455ac` |
| 11 | `theorem` | [withDensityᵥ_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-smul--de33369eaa8a5cb8b3f94d0e.md) | 121 | `result-track:de33369eaa8a5cb8b3f94d0e6e433c716f1313494931b09239b973a08a1638e2` |
| 12 | `theorem` | [withDensityᵥ_smul_eq_withDensityᵥ_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-smul-eq-withdensity-withdensity--268354a766773038affc9317.md) | 126 | `result-track:268354a766773038affc9317d55c1785b85620505543b6d05d66b889ca0f9f0c` |
| 13 | `theorem` | [withDensityᵥ_smul_eq_withDensityᵥ_withDensity'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-smul-eq-withdensity-withdensity--564096f0858f4a930ee32db1.md) | 135 | `result-track:564096f0858f4a930ee32db150ca7989ab9b88da26672301940b8c6744868bad` |
| 14 | `theorem` | [Measure.withDensityᵥ_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/measure-withdensity-absolutelycontinuous--5609efef2b9e533b965548e3.md) | 145 | `result-track:5609efef2b9e533b965548e3355814bd4daa231e67a7860c44e2a99d9eff1156` |
| 15 | `theorem` | [Integrable.ae_eq_of_withDensityᵥ_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/integrable-ae-eq-of-withdensity-eq--7ccfdae6434f9496df933abe.md) | 155 | `result-track:7ccfdae6434f9496df933abe113057b9f50637a2004036056bfd7381c9c85d1c` |
| 16 | `theorem` | [WithDensityᵥEq.congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-eq-congr-ae--e8a2c6324aca4460b69c331b.md) | 160 | `result-track:e8a2c6324aca4460b69c331b681a741cda58dc2e5fe4c618efff6b5bbb72595f` |
| 17 | `theorem` | [Integrable.withDensityᵥ_eq_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/integrable-withdensity-eq-iff--6171fd8551bb27b364f5896d.md) | 169 | `result-track:6171fd8551bb27b364f5896d58c4806d0d05729c50277f29eab41b20d48948e4` |
| 18 | `theorem` | [withDensityᵥ_toReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-toreal--c3afcaafb352a5334a31243d.md) | 176 | `result-track:c3afcaafb352a5334a31243d1cd76e65bc73aebd434115e4a8acaf4aa41fce74` |
| 19 | `theorem` | [withDensityᵥ_eq_withDensity_pos_part_sub_withDensity_neg_part](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/withdensity-eq-withdensity-pos-part-sub-withdensity-neg-part--3dbd974c0ede6cf6d102b8a5.md) | 188 | `result-track:3dbd974c0ede6cf6d102b8a5faca0b683187b2cb9aa0560ee25c1480ef1620aa` |
| 20 | `theorem` | [Integrable.withDensityᵥ_trim_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/integrable-withdensity-trim-eq-integral--5aeb8cc6ad7987624054bfd2.md) | 204 | `result-track:5aeb8cc6ad7987624054bfd2abb6956ba11b15da528df218a6dacd14e911beac` |
| 21 | `theorem` | [Integrable.withDensityᵥ_trim_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variant43801a5720f91d210544af63fe9d25b617a1ad7c51af8e4bb948070951ce1f8a.lean/declarations/integrable-withdensity-trim-absolutelycontinuous--b48e8ed91e63719dd417146f.md) | 209 | `result-track:b48e8ed91e63719dd417146f46c716b3b27d36f87d8f100f3f0d546364388120` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
