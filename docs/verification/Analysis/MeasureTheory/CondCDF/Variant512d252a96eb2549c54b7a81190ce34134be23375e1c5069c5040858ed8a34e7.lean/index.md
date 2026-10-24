# Verification target: GRWTSK.Analysis.MeasureTheory.CondCDF.Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c4f8a5713ed453f8fd3b0b855f3545e4a6afc3c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c4f8a5713ed453f8fd3b0b855f3545e4a6afc3c`.

Source path: `GRWTSK/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.CDFToKernel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IicSnd](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iicsnd--4bcdf771b518ea815c48e340.md) | 49 | `declaration-track:4bcdf771b518ea815c48e34070883b531a38406485b905d7ee819c47849b4ec3` |
| 2 | `theorem` | [IicSnd_apply](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iicsnd-apply--5d5ae83bea8659978ded80b4.md) | 52 | `result-track:5d5ae83bea8659978ded80b4eb0bb162ebf887b82c30662cb7bfefa41bf48064` |
| 3 | `theorem` | [IicSnd_univ](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iicsnd-univ--2769aee1eb2165e00f1573dc.md) | 57 | `result-track:2769aee1eb2165e00f1573dcbbe50743cbe840175d1844ae262b4b42438d4fc8` |
| 4 | `theorem` | [IicSnd_mono](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iicsnd-mono--7e6a224329cac45e6b15a578.md) | 61 | `result-track:7e6a224329cac45e6b15a5784e38296dafe28a28649efa2b531543cbe54e6d28` |
| 5 | `theorem` | [IicSnd_le_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iicsnd-le-fst--9a9d2a1641db0b8e428861d0.md) | 64 | `result-track:9a9d2a1641db0b8e428861d029c784dfeaf01b4541cca13b0708baf76108d65a` |
| 6 | `theorem` | [IicSnd_ac_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iicsnd-ac-fst--b9b29eddc9a6c263a3a2bf0f.md) | 67 | `result-track:b9b29eddc9a6c263a3a2bf0fa84d1fd74dcc6f4a418ac6202c7bf14da91711f5` |
| 7 | `theorem` | [IsFiniteMeasure.IicSnd](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/isfinitemeasure-iicsnd--ecc96f72488c37bba535a099.md) | 70 | `result-track:ecc96f72488c37bba535a09998c7e6923ca55b9d10a57c245d89b3a7bcb0da87` |
| 8 | `theorem` | [iInf_IicSnd_gt](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iinf-iicsnd-gt--2bf0ee2f0ea220d6dab3d56a.md) | 74 | `result-track:2bf0ee2f0ea220d6dab3d56aa7a6726cae46138f7f684120583d7ad57bdc138e` |
| 9 | `theorem` | [tendsto_IicSnd_atTop](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/tendsto-iicsnd-attop--f38cde28e6c43555879307cd.md) | 78 | `result-track:f38cde28e6c43555879307cd88e7ab201a00451336c0818d81541e9d9cd80ffe` |
| 10 | `theorem` | [tendsto_IicSnd_atBot](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/tendsto-iicsnd-atbot--2add47e8d9396dd01dcd992e.md) | 85 | `result-track:2add47e8d9396dd01dcd992e9b7c3b8513ab7e41ff3e2b9772f04dcab0ff63e0` |
| 11 | `def` | [preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/precdf--c74d44721ad3e875c3a502ab.md) | 133 | `declaration-track:c74d44721ad3e875c3a502ab68f314356e9e27974a9d2a915696cb1f2f7a1e8f` |
| 12 | `theorem` | [measurable_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/measurable-precdf--9fd45dceba88b341f0c909e7.md) | 136 | `result-track:9fd45dceba88b341f0c909e78c1e0babb6a75217a2400fbb14e0baf1cc189926` |
| 13 | `lemma` | [measurable_preCDF'](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/measurable-precdf--22990986b85f76b50927cb15.md) | 139 | `result-track:22990986b85f76b50927cb159abf45e327294c4f75b020b14c7a5e87eeb00cbc` |
| 14 | `theorem` | [withDensity_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/withdensity-precdf--9396f2fd0f33cd591865a91a.md) | 144 | `result-track:9396f2fd0f33cd591865a91a02df746b5dbc4b3f5c75c3308fbddd48406c22f4` |
| 15 | `theorem` | [setLIntegral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/setlintegral-precdf-fst--f1f7e192bec6c234ab4779cc.md) | 148 | `result-track:f1f7e192bec6c234ab4779cc1b4d554ba5e9f34df62e36ff52ad77a8fdcdd7bd` |
| 16 | `lemma` | [lintegral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/lintegral-precdf-fst--e265f7ea0ce8147c2a59d7a0.md) | 158 | `result-track:e265f7ea0ce8147c2a59d7a0fd2fd60aed8d528309d7b6e9253d2d334d756b27` |
| 17 | `theorem` | [monotone_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/monotone-precdf--50f584bc37242aff4eb39d99.md) | 162 | `result-track:50f584bc37242aff4eb39d995be020ed689679ea98e5bc6b2a332ee59d52c777` |
| 18 | `theorem` | [preCDF_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/precdf-le-one--7ff09a5b5b8b7dfb5a7387dc.md) | 170 | `result-track:7ff09a5b5b8b7dfb5a7387dc01ebf84b425eb26ade389c219962aa274b7a4922` |
| 19 | `lemma` | [setIntegral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/setintegral-precdf-fst--b7361b7591a9f2f3c0526e81.md) | 178 | `result-track:b7361b7591a9f2f3c0526e81720394bd0418941e189d6f829dcc9f973aa55d4b` |
| 20 | `lemma` | [integral_preCDF_fst](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/integral-precdf-fst--10655b036782db9171820882.md) | 188 | `result-track:10655b036782db91718208820e5f95a0d5a5bf2c1acbe3a1f16312787c754099` |
| 21 | `lemma` | [integrable_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/integrable-precdf--6f4d3f0fdb77cbbd48a3af29.md) | 192 | `result-track:6f4d3f0fdb77cbbd48a3af2956e507f9a3452e4ff55da39e10cfe46107515d2b` |
| 22 | `lemma` | [isRatCondKernelCDFAux_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/isratcondkernelcdfaux-precdf--4f7e6c54b6124a37433f9dac.md) | 201 | `result-track:4f7e6c54b6124a37433f9dac00391dfbee2c701b657f72e6fea867e828d666ca` |
| 23 | `lemma` | [isRatCondKernelCDF_preCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/isratcondkernelcdf-precdf--4a64064b04a51d1a5a3a92ce.md) | 231 | `result-track:4a64064b04a51d1a5a3a92ce20e81f4cdba41825f1c8567d5928acd046ba434e` |
| 24 | `def` | [condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/condcdf--27b29475160b929aa5275731.md) | 239 | `declaration-track:27b29475160b929aa5275731485fbb6df74add4d8bdeb74bd61159bbd2831c5a` |
| 25 | `lemma` | [condCDF_eq_stieltjesOfMeasurableRat_unit_prod](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/condcdf-eq-stieltjesofmeasurablerat-unit-prod--470c8578b1b25f9e1fd43f52.md) | 242 | `result-track:470c8578b1b25f9e1fd43f52d1d76be2a7a8dfffa9cac92c1024f75a484febc1` |
| 26 | `lemma` | [isCondKernelCDF_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/iscondkernelcdf-condcdf--4c941658ab8ed7c78713978f.md) | 248 | `result-track:4c941658ab8ed7c78713978f12654307a549cb92c3b01919e9410d72d40bfcb4` |
| 27 | `theorem` | [condCDF_nonneg](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/condcdf-nonneg--a2175aa06c7807d517ba9e34.md) | 255 | `result-track:a2175aa06c7807d517ba9e347d2cc63a5b0d9611f3160c34ef91b82f49d99b27` |
| 28 | `theorem` | [condCDF_le_one](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/condcdf-le-one--fc7214601f8c3124799edddf.md) | 259 | `result-track:fc7214601f8c3124799edddff0f2c032f317cb6b4af69243ac04f61ac0634f0f` |
| 29 | `theorem` | [tendsto_condCDF_atBot](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/tendsto-condcdf-atbot--83234d1168dd6331c0464aac.md) | 263 | `result-track:83234d1168dd6331c0464aac20003fdf8ecdf31b68304a289c42eb69ea80021b` |
| 30 | `theorem` | [tendsto_condCDF_atTop](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/tendsto-condcdf-attop--063867b99fd231734ee8f9b6.md) | 267 | `result-track:063867b99fd231734ee8f9b66ba37bde6e4db2738b683d085fcab6f48171d80c` |
| 31 | `theorem` | [condCDF_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/condcdf-ae-eq--771e7e94fb05bee28b50a8b9.md) | 270 | `result-track:771e7e94fb05bee28b50a8b98570db030744067a4efdeb85c52afe7d5bd88593` |
| 32 | `theorem` | [ofReal_condCDF_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/ofreal-condcdf-ae-eq--43fb686c35c6f933c20bd9f4.md) | 275 | `result-track:43fb686c35c6f933c20bd9f4a61728aa9908d7a4b14fb94616b5b73a0d63c91c` |
| 33 | `theorem` | [measurable_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/measurable-condcdf--543c6ef0f4509c2a8cf8f73a.md) | 282 | `result-track:543c6ef0f4509c2a8cf8f73af93c573ebfd0027b62b39b9839cd1245fe0e5860` |
| 34 | `theorem` | [stronglyMeasurable_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/stronglymeasurable-condcdf--09fe92c1e1bab37e90afcbaa.md) | 286 | `result-track:09fe92c1e1bab37e90afcbaaf4db3950ec2693be7a7438247f1724486fe13b45` |
| 35 | `theorem` | [setLIntegral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/setlintegral-condcdf--59c02abcad4ab66a768f0c6b.md) | 289 | `result-track:59c02abcad4ab66a768f0c6b8dcfdb9a00c6b92b4c257bf82c33f9757f6ec266` |
| 36 | `theorem` | [lintegral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/lintegral-condcdf--93c2f504f9c7bd358d821c6c.md) | 294 | `result-track:93c2f504f9c7bd358d821c6cf80473c9240c9f9f7e24230dc0d6d63ec20a29d5` |
| 37 | `theorem` | [integrable_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/integrable-condcdf--cd64fad07298c020e429e9a6.md) | 298 | `result-track:cd64fad07298c020e429e9a67e500a78bd4a3263c99633100088940025bd6c00` |
| 38 | `theorem` | [setIntegral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/setintegral-condcdf--f902ce7caca80ed6af6e7e87.md) | 302 | `result-track:f902ce7caca80ed6af6e7e87c5ef82ebc95a7327e8f71da2d4d89b6312b59c92` |
| 39 | `theorem` | [integral_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/integral-condcdf--0e370d066e072fb71a389ed9.md) | 306 | `result-track:0e370d066e072fb71a389ed979054ab5e13a686bcdde040951077ac278f0ec05` |
| 40 | `theorem` | [measure_condCDF_Iic](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/measure-condcdf-iic--5a098c17c0297317f8b8d34d.md) | 312 | `result-track:5a098c17c0297317f8b8d34d0fc1f7c6e55c98540ca7db3e65823c5efbd34207` |
| 41 | `theorem` | [measure_condCDF_univ](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/measure-condcdf-univ--4ce891fc1941d68e8e6b9ece.md) | 317 | `result-track:4ce891fc1941d68e8e6b9eceb2aacaf6fc540733bf71e4ef51095c3875af5d5f` |
| 42 | `instance` | [instIsProbabilityMeasureCondCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/instisprobabilitymeasurecondcdf--1f46ab10b7b9920673d6c61e.md) | 321 | `declaration-track:1f46ab10b7b9920673d6c61ef63b7bfc509f17f6fd7e66bddd1f19c3eb0c902b` |
| 43 | `theorem` | [measurable_measure_condCDF](../../../../../mathematics/Analysis/MeasureTheory/CondCDF/Variant512d252a96eb2549c54b7a81190ce34134be23375e1c5069c5040858ed8a34e7.lean/declarations/measurable-measure-condcdf--d59043df8eb95f1964bc50f6.md) | 326 | `result-track:d59043df8eb95f1964bc50f6b9b0088dd732cd035292156dd28816fa7c4d9695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
