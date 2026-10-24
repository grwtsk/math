# Verification target: GRWTSK.Analysis.MeasureTheory.GiryMonad.Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "182b175228f46bfb9e2cb54537f8272323d29455",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `182b175228f46bfb9e2cb54537f8272323d29455`.

Source path: `GRWTSK/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Countable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/instmeasurablespace--b0d8e2575d6d1b2bd245a546.md) | 44 | `declaration-track:b0d8e2575d6d1b2bd245a5466c28eaf8a5db14b08c29e7630822bee717694c47` |
| 2 | `theorem` | [measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-coe--a5ca964b79a07a5ce5041d8c.md) | 47 | `result-track:a5ca964b79a07a5ce5041d8ccf14583fcf42613c49bdc21494bd0ab2bfb4e335` |
| 3 | `theorem` | [measurable_of_measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-of-measurable-coe--75f9e8ed00b1d0b52c8dfafc.md) | 50 | `result-track:75f9e8ed00b1d0b52c8dfafc13456e33dde3fad4347b2f65954568350fc72c19` |
| 4 | `instance` | [instMeasurableAdd₂](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/instmeasurableadd--0bd0ae0acf443065fcf91775.md) | 56 | `declaration-track:0bd0ae0acf443065fcf91775e7ebe4aae2cdefeda6c61ce2b5bc3ef77f8d2bc4` |
| 5 | `theorem` | [measurable_measure](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-measure--1e5a7a43766f535ee753a036.md) | 63 | `result-track:1e5a7a43766f535ee753a0365b8605a0d0111a41f49744ca35f3b5c22d4a6caf` |
| 6 | `theorem` | [_root_.Measurable.measure_of_isPiSystem](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/root-measurable-measure-of-ispisystem--96e0fdeb0ca1532e0c7d7995.md) | 67 | `result-track:96e0fdeb0ca1532e0c7d799587ffdcf63ec8432b107678fbd58449d585ea03f9` |
| 7 | `theorem` | [_root_.Measurable.measure_of_isPiSystem_of_isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/root-measurable-measure-of-ispisystem-of-isprobabilitymeasure--796f636cddf0bbbf1e34ec29.md) | 82 | `result-track:796f636cddf0bbbf1e34ec29c2f27aba01fc92a9d72491f17020f8ac7bd3cb3e` |
| 8 | `theorem` | [measurable_map](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-map--898663cd4281721c79dc1d54.md) | 89 | `result-track:898663cd4281721c79dc1d54e551922a8538447e21f2b9a403a73f52060d97f8` |
| 9 | `theorem` | [measurable_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-dirac--a07b8eba32fed53baa6968a8.md) | 96 | `result-track:a07b8eba32fed53baa6968a8b0dd157cfedbaf5e496424c06c200cb2f82e8110` |
| 10 | `theorem` | [measurable_lintegral](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-lintegral--f135d308b652906782daf028.md) | 102 | `result-track:f135d308b652906782daf028c715fbbe039d309be02ac4a3905d00c9b501352b` |
| 11 | `def` | [join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join--1c23cbb907e435c564f7f56a.md) | 111 | `declaration-track:1c23cbb907e435c564f7f56acdca8cb435a1e0604b010f37d2d6250f05f3ab5a` |
| 12 | `theorem` | [join_apply](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-apply--9ca5c181d7980da159107e55.md) | 121 | `result-track:9ca5c181d7980da159107e555fe0eeac08c59a2922b5d16fcfc7b95d403375db` |
| 13 | `theorem` | [le_join_apply](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/le-join-apply--98a85082027794036dcbfc67.md) | 125 | `result-track:98a85082027794036dcbfc676207d58b0213ce76d8210b3b2e7e6a740074af86` |
| 14 | `theorem` | [join_smul](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-smul--9d1a31f4161e1fb9d2146fa6.md) | 130 | `result-track:9d1a31f4161e1fb9d2146fa6b8bb649bde87a5403c74a5d4b4b273e3feb50fd4` |
| 15 | `theorem` | [join_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-dirac--d5914074633fed9ded3c376e.md) | 136 | `result-track:d5914074633fed9ded3c376eb48d9db5d9dd177c88f98472d235cb02e088d8c8` |
| 16 | `theorem` | [le_ae_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/le-ae-join--42d3831930414e16a0ca0671.md) | 140 | `result-track:42d3831930414e16a0ca06710beffb0651b84cf98940aac8b7e095728cf22621` |
| 17 | `theorem` | [ae_ae_of_ae_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/ae-ae-of-ae-join--c7c9fdbf80825e5e7e3669a2.md) | 147 | `result-track:c7c9fdbf80825e5e7e3669a285760f1da6ee3b795bbc4c3fa48582b644de53c0` |
| 18 | `theorem` | [_root_.AEMeasurable.ae_of_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/root-aemeasurable-ae-of-join--c3d19559c3ce7dfd02b0f4a3.md) | 151 | `result-track:c3d19559c3ce7dfd02b0f4a3bbcf2b1d48756adc76f91d3e258a50f271f72cee` |
| 19 | `theorem` | [aemeasurable_lintegral](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/aemeasurable-lintegral--a9facf85de8cc45c88e95502.md) | 155 | `result-track:a9facf85de8cc45c88e955025e083f3f5324970fd0da01699160373e2d343758` |
| 20 | `theorem` | [join_zero](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-zero--c64bc6d8346cf49fb5bf5472.md) | 162 | `result-track:c64bc6d8346cf49fb5bf5472d2187335a17adedf6ac47e150397a3ecbd5b0331` |
| 21 | `theorem` | [measurable_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-join--ab0eec81d27321b10fcabfdd.md) | 167 | `result-track:ab0eec81d27321b10fcabfddd6882ab4190fff0b43c7768340c5288b2d6558c7` |
| 22 | `theorem` | [lintegral_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/lintegral-join--b3f2a982c11916f3ebb95986.md) | 171 | `result-track:b3f2a982c11916f3ebb9598613205c8c23da2270acea741731302347b3851675` |
| 23 | `theorem` | [lintegral_join_le](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/lintegral-join-le--de01ebeab30141444993a394.md) | 200 | `result-track:de01ebeab30141444993a39428d9af46f6bfe60ec8e2336161bb32e01e33abb2` |
| 24 | `def` | [bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind--8199b1baa1c66446166f10f6.md) | 209 | `declaration-track:8199b1baa1c66446166f10f673893d5849ff4b6d63ec1995866e51f8a44ff7fe` |
| 25 | `theorem` | [bind_zero_left](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-zero-left--e07b5e8b546bdf1e029e12ec.md) | 213 | `result-track:e07b5e8b546bdf1e029e12ec916990ba67f0c3ddd3fd131761145731ada97899` |
| 26 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-apply--d842947b89442d12d3aef7a1.md) | 216 | `result-track:d842947b89442d12d3aef7a1204bb9a999df6239d657505c200e842208ef4ede` |
| 27 | `theorem` | [bind_apply_le](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-apply-le--82fcf0a900575466dd3fb00a.md) | 220 | `result-track:82fcf0a900575466dd3fb00a19bf162987daa66cfb7ebd9a41006a43ce639226` |
| 28 | `theorem` | [ae_ae_of_ae_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/ae-ae-of-ae-bind--73386cb4c7814eee6588a428.md) | 225 | `result-track:73386cb4c7814eee6588a4289bd089fd3cbe95e739388a649e04bde65aaf50e4` |
| 29 | `theorem` | [_root_.AEMeasurable.ae_of_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/root-aemeasurable-ae-of-bind--47cf7fe2e4326f1c5bd65d79.md) | 229 | `result-track:47cf7fe2e4326f1c5bd65d79fbdc09c8f255d6821c7b5e7cd9a59180b44774eb` |
| 30 | `theorem` | [bind_congr_right](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-congr-right--8c7a687a93aed2123f026625.md) | 234 | `result-track:8c7a687a93aed2123f026625a8dae78ea60232608d52328dfb657b9b2ea1095e` |
| 31 | `lemma` | [bind_const](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-const--3fa68a084810020a100d9843.md) | 239 | `result-track:3fa68a084810020a100d98439d49615f4c79efac29b03e59a676b7cdbb7728ae` |
| 32 | `theorem` | [bind_zero_right'](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-zero-right--1bfa1175e1777a023b6ea65f.md) | 242 | `result-track:1bfa1175e1777a023b6ea65f0e178f381eeef168bfdd49fc51926e5b9e54aae0` |
| 33 | `theorem` | [bind_zero_right](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-zero-right--1f226bc06e5c9d94e59d076b.md) | 245 | `result-track:1f226bc06e5c9d94e59d076bfe1d339f1ca319c3f5c0a43917510789fbce320f` |
| 34 | `theorem` | [measurable_bind'](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/measurable-bind--5d16df56b999f158477878fe.md) | 248 | `result-track:5d16df56b999f158477878fe82918cc580dc7f66cd6136c0339e2628047bb62b` |
| 35 | `theorem` | [aemeasurable_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/aemeasurable-bind--0a4659e925bcfeb61141cc8e.md) | 252 | `result-track:0a4659e925bcfeb61141cc8ebe01829d7e2fe7cf03e4fd162b7f7845fb1632b0` |
| 36 | `theorem` | [lintegral_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/lintegral-bind--c4d5ee5de5807c3339abd799.md) | 257 | `result-track:c4d5ee5de5807c3339abd7993162a7d7bf64a03103ea1d871f944d2726849ff0` |
| 37 | `theorem` | [lintegral_bind_le](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/lintegral-bind-le--1d0057147250fe8ebf65ec63.md) | 261 | `result-track:1d0057147250fe8ebf65ec63ecac3ca5a3193416d143d4610f568878b05e6586` |
| 38 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-bind--bb17bdd0b6cc75065c108d08.md) | 265 | `result-track:bb17bdd0b6cc75065c108d08032012c17168dc3ad392292946501455655f8ea7` |
| 39 | `theorem` | [dirac_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/dirac-bind--1b002e3af0e59f3dd881ffc6.md) | 275 | `result-track:1b002e3af0e59f3dd881ffc6b2cee67697b639fba162625b9b9a6850afe62904` |
| 40 | `theorem` | [bind_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-dirac--236aabfe2c50a16668aef339.md) | 279 | `result-track:236aabfe2c50a16668aef3396a4b26ad24d442d0a949196b8209f743ec4dedf9` |
| 41 | `lemma` | [bind_dirac_eq_map](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/bind-dirac-eq-map--625398efd4cbfbc82fafca34.md) | 285 | `result-track:625398efd4cbfbc82fafca34ca43c40ccd99b20529afebe8dd0b321189e64a32` |
| 42 | `theorem` | [join_eq_bind](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-eq-bind--6414df01ff7a7068f961e188.md) | 290 | `result-track:6414df01ff7a7068f961e188ca97d53c73b19ee64b464200dfb4b23ff58977bf` |
| 43 | `theorem` | [join_map_map](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-map-map--49dcea3a818f8559a1ce21d4.md) | 292 | `result-track:49dcea3a818f8559a1ce21d48faaeb797cb558901d47cfd446bb3a3e98fe3e6e` |
| 44 | `theorem` | [join_map_join](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-map-join--8d7fa9be8a9cd8aac83d1b5c.md) | 299 | `result-track:8d7fa9be8a9cd8aac83d1b5c1608ece505c3cbf691b1c3abfe5c8299914ccabe` |
| 45 | `theorem` | [join_map_dirac](../../../../../mathematics/Analysis/MeasureTheory/GiryMonad/Variant5f8164ec3f96c21535da1263c590cde05ca4906b9b980ff1c204ae2a32963970.lean/declarations/join-map-dirac--65e74f8899676efd2f07790c.md) | 306 | `result-track:65e74f8899676efd2f07790ca01c6f6fb3c2bd2714e98294693047dd6a5f2ea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
