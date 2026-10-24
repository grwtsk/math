# Verification target: GRWTSK.Analysis.MeasureTheory.Density.Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e6d89a09bab6774e7b9b6481f048661284e64b7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e6d89a09bab6774e7b9b6481f048661284e64b7`.

Source path: `GRWTSK/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean.json)

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
| 1 | `class` | [HasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf--5f7cd4380d4b23853e589f10.md) | 73 | `declaration-track:5f7cd4380d4b23853e589f1075865ae43e425854048ff1857181412be05ec687` |
| 2 | `theorem` | [hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-iff--35e75d3824f38394abaeec7f.md) | 83 | `result-track:35e75d3824f38394abaeec7f6114f723f5127a2f444fb3b9acdc170dd9024ab2` |
| 3 | `theorem` | [hasPDF_iff_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-iff-of-aemeasurable--0947060e9b4aacf1ec0fc8e7.md) | 87 | `result-track:0947060e9b4aacf1ec0fc8e77e311ea2ec505e75cbc9df8fcfa866535ddd69de` |
| 4 | `theorem` | [HasPDF.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-aemeasurable--6982fddadd94409bc913cf83.md) | 93 | `result-track:6982fddadd94409bc913cf838347a7cecb714b7d777834bf12bcf83ebd346949` |
| 5 | `instance` | [HasPDF.haveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-havelebesguedecomposition--48f2abd09f1e18d5fc847d0e.md) | 95 | `declaration-track:48f2abd09f1e18d5fc847d0e6f907ec53971a841bc932fc59154f279e0d6aef1` |
| 6 | `theorem` | [HasPDF.absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-absolutelycontinuous--d5b97d9043ed83f4fd86bdef.md) | 98 | `result-track:d5b97d9043ed83f4fd86bdef678d5b544194da909a7b331c9e403cab15055262` |
| 7 | `theorem` | [HasPDF.quasiMeasurePreserving_of_measurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-quasimeasurepreserving-of-measurable--2bb193af0b815b9e92f180e9.md) | 101 | `result-track:2bb193af0b815b9e92f180e98b4d32fa6e8199be32ce7f8b8dccecac070c4511` |
| 8 | `theorem` | [HasPDF.congr](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-congr--82fdb39478afb461acc2d2fa.md) | 106 | `result-track:82fdb39478afb461acc2d2fab46a62c3f533fadf28f63fc9200279829b2847b7` |
| 9 | `theorem` | [HasPDF.congr_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-congr-iff--fc49bce42c0cf1ddcb789389.md) | 110 | `result-track:fc49bce42c0cf1ddcb7893890afa5fa5519e7d3e72342c7af1b58110b7836b5f` |
| 10 | `theorem` | [hasPDF_of_map_eq_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/haspdf-of-map-eq-withdensity--70cc95cfdb5a6b12e6378e6f.md) | 114 | `result-track:70cc95cfdb5a6b12e6378e6fa4465b43bf2940a0237fee5db3991e5a35710635` |
| 11 | `def` | [pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/pdf--2f244c5855c149be3c4463a0.md) | 125 | `declaration-track:2f244c5855c149be3c4463a05560323b3692710c7263af8280d8cc7fe1c31ea2` |
| 12 | `theorem` | [pdf_def](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/pdf-def--4815bcfe9512df8484b7f570.md) | 129 | `result-track:4815bcfe9512df8484b7f5703c2aecacb327fd0c79206a63e2ebe256869128e7` |
| 13 | `theorem` | [pdf_of_not_haveLebesgueDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/pdf-of-not-havelebesguedecomposition--bfa2fcc451720793f810caa6.md) | 132 | `result-track:bfa2fcc451720793f810caa672c6a7a1f5be1645ca0ec9579b87c8a68e73c9e1` |
| 14 | `theorem` | [measurable_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/measurable-pdf--202cbd1225e139736b1dbc1f.md) | 137 | `result-track:202cbd1225e139736b1dbc1f39c4087f9d69e8f89ec9679d627323f294afb99b` |
| 15 | `theorem` | [withDensity_pdf_le_map](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/withdensity-pdf-le-map--3e32259d8b404facff492850.md) | 141 | `result-track:3e32259d8b404facff492850c3da63c78df80d1bab32e438dfffb382e047564d` |
| 16 | `theorem` | [setLIntegral_pdf_le_map](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/setlintegral-pdf-le-map--c706b795e95b4d31a1788dd5.md) | 145 | `result-track:c706b795e95b4d31a1788dd5dbfe12eb87582c3022959a10fc99341a9aa9ac53` |
| 17 | `theorem` | [map_eq_withDensity_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/map-eq-withdensity-pdf--847b3ac69a1f48c48dc30393.md) | 151 | `result-track:847b3ac69a1f48c48dc30393a34240586dc73fe7b7f712e7fd624432fa98a285` |
| 18 | `theorem` | [map_eq_setLIntegral_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/map-eq-setlintegral-pdf--0ce2079c699280a635186f3a.md) | 156 | `result-track:0ce2079c699280a635186f3aeb04789e4d559aa6b1263dfd8c0733f183271f2c` |
| 19 | `theorem` | [congr](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/congr--4d3ab5cb8e0e63bef7aa7eab.md) | 165 | `result-track:4d3ab5cb8e0e63bef7aa7eab45a6dc49b197ea41afcc70d8c69c17be024ca155` |
| 20 | `theorem` | [lintegral_eq_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/lintegral-eq-measure-univ--ed850bce5805ea3a09b4aaf4.md) | 168 | `result-track:ed850bce5805ea3a09b4aaf4169bce3cb669eb9853906132d6da0a3bab3a9c0a` |
| 21 | `theorem` | [eq_of_map_eq_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/eq-of-map-eq-withdensity--d4a8e3accb8be82fe4e30cdd.md) | 173 | `result-track:d4a8e3accb8be82fe4e30cdd415f5d771fec5fc1d6b10c94bac05ba6b595d90a` |
| 22 | `theorem` | [eq_of_map_eq_withDensity'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/eq-of-map-eq-withdensity--f0bd532cc67deef2728b0bd6.md) | 180 | `result-track:f0bd532cc67deef2728b0bd683aa7d1e9d97ec4428e311e978b81958fbcb0b0b` |
| 23 | `theorem` | [ae_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/ae-lt-top--cc883d811dd143f54f5077be.md) | 185 | `result-track:cc883d811dd143f54f5077bef3e92b667e148a0e81a456f57559df76c8d822f7` |
| 24 | `theorem` | [ofReal_toReal_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/ofreal-toreal-ae-eq--265bf8f2b18d1318e26279cc.md) | 189 | `result-track:265bf8f2b18d1318e26279cc7f04992c2eb950dbdea7431461d75dc2a1b877e3` |
| 25 | `theorem` | [lintegral_pdf_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/lintegral-pdf-mul--70f0d309ea25da59f9239b4a.md) | 196 | `result-track:70f0d309ea25da59f9239b4a04f9a566f01a344c39572a5b257d9ec3da5d519b` |
| 26 | `theorem` | [integrable_pdf_smul_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/integrable-pdf-smul-iff--8d445894139a9168bf5d93b9.md) | 204 | `result-track:8d445894139a9168bf5d93b96a56579bb1759f5fb0694667ec0ee10ff6a64e0a` |
| 27 | `theorem` | [integral_pdf_smul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/integral-pdf-smul--26e0a90a63220e721799f681.md) | 215 | `result-track:26e0a90a63220e721799f6814e62fd023d85a6c389da6c7eb9bf10239292820f` |
| 28 | `theorem` | [quasiMeasurePreserving_hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/quasimeasurepreserving-haspdf--1a2339c5035fc0bea5dccf72.md) | 232 | `result-track:1a2339c5035fc0bea5dccf72e8d407f34bc97c1a94c13b2e0c27e2286eb1545c` |
| 29 | `theorem` | [quasiMeasurePreserving_hasPDF'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/quasimeasurepreserving-haspdf--9c83875cf94a87c169ce2582.md) | 239 | `result-track:9c83875cf94a87c169ce2582ddb57ebed67d9bec149942f1f483ae6319e8f693` |
| 30 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.Real.hasPDF_iff](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/root-grwtsk-analysis-measuretheory-haspdf-variant78dff239a514043c89d151b--1088df51e5f9ded56e8f1b97.md) | 249 | `result-track:1088df51e5f9ded56e8f1b97bc477e32e76baf4359e16a853a2b09e7fbe74824` |
| 31 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.HasPDF.Variant78dff239a514043c89d151bcf5ad5293c5afdf77840cfd23d169f1108c290eeb.Real.hasPDF_iff_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/root-grwtsk-analysis-measuretheory-haspdf-variant78dff239a514043c89d151b--a19a4cdc960a6f9b8108c9ae.md) | 255 | `result-track:a19a4cdc960a6f9b8108c9ae35f5f9f711c0aa44fab68a83a53392927c3282a7` |
| 32 | `theorem` | [integral_mul_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/integral-mul-eq-integral--bfc015d30a6a8c3243ef8e9b.md) | 263 | `result-track:bfc015d30a6a8c3243ef8e9b1df5b2ba83be838cf095be7a91891cee7881d92a` |
| 33 | `theorem` | [hasFiniteIntegral_mul](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/hasfiniteintegral-mul--18e6bf1d4cd76c161e8c2e8e.md) | 268 | `result-track:18e6bf1d4cd76c161e8c2e8e9323fba312b20f2d1ce29dbad34ea3dc6defcac8` |
| 34 | `theorem` | [indepFun_iff_pdf_prod_eq_pdf_mul_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/indepfun-iff-pdf-prod-eq-pdf-mul-pdf--6feec6774a8cc49255e17bfb.md) | 286 | `result-track:6feec6774a8cc49255e17bfb16132dfb2e8334d9397872ae7a5f568497c56516` |
| 35 | `theorem` | [IndepFun.mul_hasPDF'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/indepfun-mul-haspdf--caaeec8d5b24c0d3a8a67418.md) | 318 | `result-track:caaeec8d5b24c0d3a8a6741841f77e763dd465baf27f834f2d7b2fd325ab0b13` |
| 36 | `theorem` | [IndepFun.mul_hasPDF](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/indepfun-mul-haspdf--ad52ef8192f13ff0dbb7615b.md) | 329 | `result-track:ad52ef8192f13ff0dbb7615b911492d2cc3080bb7df2844660a3066b9e14c338` |
| 37 | `theorem` | [IndepFun.pdf_mul_eq_mlconvolution_pdf'](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/indepfun-pdf-mul-eq-mlconvolution-pdf--0e86df48599e2390cb7f3757.md) | 334 | `result-track:0e86df48599e2390cb7f375734607cd4d29a1557423165217363d0b82b2c9a0b` |
| 38 | `theorem` | [IndepFun.pdf_mul_eq_mlconvolution_pdf](../../../../../mathematics/Analysis/MeasureTheory/Density/Variantdd3de20298ed07083f125c1da0565729cb222667eca704726eebc8f5b7005af7.lean/declarations/indepfun-pdf-mul-eq-mlconvolution-pdf--2b20662a02da64d34635c475.md) | 341 | `result-track:2b20662a02da64d34635c4754d9293599d458eb04e392bd92517e3dccf9a9ef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
