# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurable.Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748bb26d841794b8faf5c856d8e4b8f4c5eaa722",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748bb26d841794b8faf5c856d8e4b8f4c5eaa722`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Trim` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.CountablyGenerated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subsingleton.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/subsingleton-aemeasurable--8765dd0c28e5b0b53b1f31d7.md) | 25 | `result-track:8765dd0c28e5b0b53b1f31d70c44fe804c8fcf5baf70ea5e7ea77e3c0d3954a1` |
| 2 | `theorem` | [aemeasurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-of-subsingleton-codomain--8005ce42dcdd67925a24ef70.md) | 29 | `result-track:8005ce42dcdd67925a24ef70825d5b8b2b8d6d3cba9b55e1e118082b5dfe8ae8` |
| 3 | `theorem` | [aemeasurable_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-zero-measure--9da97830560cb8167903cc3d.md) | 33 | `result-track:9da97830560cb8167903cc3d23c9befb5863dfb679193d2786ba41592bc7781a` |
| 4 | `theorem` | [aemeasurable_id''](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-id--67a84ac25f6a6c9b7fb064af.md) | 37 | `result-track:67a84ac25f6a6c9b7fb064afad3877d4116f1eb06d7b210b82f36ddd2e537bbc` |
| 5 | `lemma` | [aemeasurable_of_map_neZero](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-of-map-nezero--5afe3f33b498af5e85823a97.md) | 41 | `result-track:5afe3f33b498af5e85823a97e64fc2a52c209e2905b56e60ab7db9de2dc780c4` |
| 6 | `lemma` | [mono_ac](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/mono-ac--892d186057c8cf90f5806022.md) | 49 | `result-track:892d186057c8cf90f58060225d4e38c4f4e9dded67ca88e2f6c1d72912f237e7` |
| 7 | `theorem` | [mono_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/mono-measure--f122e2582a786315de0ec2e1.md) | 52 | `result-track:f122e2582a786315de0ec2e1e8c426adb75228a9f23ff8cf4253bd5b25751c96` |
| 8 | `theorem` | [mono_set](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/mono-set--db138116cecf8a032c372398.md) | 55 | `result-track:db138116cecf8a032c3723982c758178006ca99497418bc497e65eb24c7ff541` |
| 9 | `theorem` | [mono'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/mono--f6d8cd68261c1a722da650d4.md) | 60 | `result-track:f6d8cd68261c1a722da650d4d0de81cb165e9f3127fc6ac4aa9fc5e7b7713739` |
| 10 | `theorem` | [ae_mem_imp_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/ae-mem-imp-eq-mk--2e4969c142bf2c670b1e4709.md) | 63 | `result-track:2e4969c142bf2c670b1e4709872ed137ff05a2e9feaf89b08f00a06630369ce3` |
| 11 | `theorem` | [ae_inf_principal_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/ae-inf-principal-eq-mk--ce918919f8256b56ea6f611c.md) | 67 | `result-track:ce918919f8256b56ea6f611c2942dfb218511daf0b70a837971f601a9bb58965` |
| 12 | `theorem` | [sum_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/sum-measure--945a2156312ae542d4fc4581.md) | 71 | `result-track:945a2156312ae542d4fc4581da0123b874a040b8303fe22e15d2857976b465f2` |
| 13 | `theorem` | [_root_.aemeasurable_sum_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/root-aemeasurable-sum-measure-iff--6ae7f9ee17261ef97ac0c13b.md) | 111 | `result-track:6ae7f9ee17261ef97ac0c13b03d0ba623e6aab32278f7ee57e5a8c87a3527aa3` |
| 14 | `theorem` | [_root_.aemeasurable_add_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/root-aemeasurable-add-measure-iff--49c6ede290cd16d0f326e836.md) | 116 | `result-track:49c6ede290cd16d0f326e83656078d4da3f5771aeff45a6563262df06555dc3c` |
| 15 | `theorem` | [add_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/add-measure--5393dbb8050f2303f4829776.md) | 122 | `result-track:5393dbb8050f2303f4829776c7e7a4b1203ccf20d4ec617b631b668f9097e96c` |
| 16 | `theorem` | [iUnion](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/iunion--942884522d5d615c0744c890.md) | 127 | `result-track:942884522d5d615c0744c8902a127a055e0a0f4f04f3c66f7616151e61a45a2e` |
| 17 | `theorem` | [_root_.aemeasurable_iUnion_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/root-aemeasurable-iunion-iff--b14d0a84e5141e8cd04fa7ea.md) | 132 | `result-track:b14d0a84e5141e8cd04fa7eae460d57163ecfd4a3b726cf43368834d63bf79fb` |
| 18 | `theorem` | [_root_.aemeasurable_union_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/root-aemeasurable-union-iff--e039f46964a2866c7a4f607d.md) | 137 | `result-track:e039f46964a2866c7a4f607db070b8aae0c2b249c1dbd9ba262c43f87b6c7adb` |
| 19 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/smul-measure--59a859f7812f3a6851fb6cd8.md) | 143 | `result-track:59a859f7812f3a6851fb6cd85e8d3847d54878bebc79cd5420a59dcd311b0628` |
| 20 | `theorem` | [comp_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/comp-aemeasurable--6fa3aaa6bd462560435ad0d1.md) | 147 | `result-track:6fa3aaa6bd462560435ad0d194fa4ab1ef711412fb2621138e9221561c87831f` |
| 21 | `theorem` | [comp_aemeasurable'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/comp-aemeasurable--ab50c66200e8d94cab28e491.md) | 153 | `result-track:ab50c66200e8d94cab28e491fce88e8c9401e63eeb362caf1d3cbf4ada93185c` |
| 22 | `theorem` | [comp_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/comp-measurable--b7cef0742834ac36e9e41a91.md) | 156 | `result-track:b7cef0742834ac36e9e41a91336b44d35fcd56ec9cbf5ac36f5abfff9c3aa4c1` |
| 23 | `theorem` | [comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/comp-quasimeasurepreserving--a4e3181adb17882d06773d84.md) | 161 | `result-track:a4e3181adb17882d06773d8428435886fffa9e550058693b993f74ef89667bf5` |
| 24 | `theorem` | [map_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/map-map-of-aemeasurable--65bd71bb44b70f4013ae63df.md) | 165 | `result-track:65bd71bb44b70f4013ae63df27a870f78ab0636f0321b9de75c68c5c3874a299` |
| 25 | `theorem` | [fst](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/fst--e2fabcae217a0bc9f162b622.md) | 172 | `result-track:e2fabcae217a0bc9f162b62263ebbdf0c3882b213c52fdfdce3e0cb96ea4732f` |
| 26 | `theorem` | [snd](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/snd--d1456e962ba599ef150a40f0.md) | 177 | `result-track:d1456e962ba599ef150a40f05b89045adf6dbc2fce61b90c345d57eb50551a3c` |
| 27 | `theorem` | [prodMk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/prodmk--0b408372c0001c6e55c4cba5.md) | 182 | `result-track:0b408372c0001c6e55c4cba51dd5be7f1ee41ddb21c0447960efff4ecb5de2e5` |
| 28 | `theorem` | [exists_ae_eq_range_subset](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/exists-ae-eq-range-subset--41b57ae1972bfb8aac96c32c.md) | 190 | `result-track:41b57ae1972bfb8aac96c32c92fdc19c500e08723796af4867e48ffd19a12676` |
| 29 | `theorem` | [exists_measurable_nonneg](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/exists-measurable-nonneg--efb9f1613479a864c34518c5.md) | 215 | `result-track:efb9f1613479a864c34518c535144743b5af47ddcb0a89898f579df3f6feb190` |
| 30 | `theorem` | [subtype_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/subtype-mk--530d5f4c4be9b10aeae3be86.md) | 220 | `result-track:530d5f4c4be9b10aeae3be86c02668eb6fdfce797b84254d7bb6b6968ab7d467` |
| 31 | `theorem` | [aemeasurable_const'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-const--b86cc090bb0a6600a763dbed.md) | 231 | `result-track:b86cc090bb0a6600a763dbed2fcfee14688d64078ca83dc84dddbc9ba88c7a2b` |
| 32 | `theorem` | [aemeasurable_uIoc_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-uioc-iff--3f86d15d68a34882dd66dc3b.md) | 239 | `result-track:3f86d15d68a34882dd66dc3b7ee8c4ed0f00ec1a77fc40794a3014f852540741` |
| 33 | `theorem` | [aemeasurable_iff_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-iff-measurable--cef98b0c2fe74f07a1da0578.md) | 244 | `result-track:cef98b0c2fe74f07a1da0578d0e396a090384df9ea9388a63fc97d1511b96ac9` |
| 34 | `theorem` | [MeasurableEmbedding.aemeasurable_map_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/measurableembedding-aemeasurable-map-iff--ebfcfb8a2ee3e8c561af89c2.md) | 247 | `result-track:ebfcfb8a2ee3e8c561af89c2bd3805d49f4be3ef92e317eb77781d1b870d24ce` |
| 35 | `theorem` | [MeasurableEmbedding.aemeasurable_comp_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/measurableembedding-aemeasurable-comp-iff--4ee31cacfb2f0a2cbd1df794.md) | 254 | `result-track:4ee31cacfb2f0a2cbd1df7941e5fd3ffd66758c368fcf77fc1e1f069934656bb` |
| 36 | `theorem` | [aemeasurable_restrict_iff_comap_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-restrict-iff-comap-subtype--c1785a76ad8bc0dec9647114.md) | 261 | `result-track:c1785a76ad8bc0dec964711437cd702da573ffd28a2375a359a6c43dd07f2f2d` |
| 37 | `theorem` | [aemeasurable_one](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-one--0e88cd5be8ae42fc5a0c7a70.md) | 266 | `result-track:0e88cd5be8ae42fc5a0c7a706e3d5975643efc63693207dff494c44a8aed440d` |
| 38 | `theorem` | [aemeasurable_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-smul-measure-iff--abc7446023218834c1350960.md) | 270 | `result-track:abc7446023218834c13509607f8780c47abfe8b5712ea03ab60256ed7000d6d0` |
| 39 | `theorem` | [aemeasurable_of_aemeasurable_trim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-of-aemeasurable-trim--c58ef7704e170e3171bf52d6.md) | 275 | `result-track:c58ef7704e170e3171bf52d6953c6eab89dd684c66f8a46b28c7b91b3ffb8fe1` |
| 40 | `theorem` | [aemeasurable_restrict_of_measurable_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-restrict-of-measurable-subtype--a871b8bdc53798eadac3e6a4.md) | 279 | `result-track:a871b8bdc53798eadac3e6a4b6866b0a30dc707c8c89cff934fee6ca45a15070` |
| 41 | `theorem` | [aemeasurable_map_equiv_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-map-equiv-iff--797356d0af001fbb3d8df397.md) | 283 | `result-track:797356d0af001fbb3d8df3971ea97105fabadcedb11546e004e493fb855d6d56` |
| 42 | `theorem` | [AEMeasurable.restrict](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-restrict--f54bd43eaeb6fb7752d04b55.md) | 289 | `result-track:f54bd43eaeb6fb7752d04b55acb421afb644335ee1f99dc1d2b3482a2b233905` |
| 43 | `theorem` | [aemeasurable_Ioi_of_forall_Ioc](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-ioi-of-forall-ioc--6138c542e35f96526f602cb6.md) | 292 | `result-track:6138c542e35f96526f602cb6431ad89cf8b451746e10972672e17672befd9dbb` |
| 44 | `theorem` | [aemeasurable_indicator_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-indicator-iff--8ff968603f547e25ec9d24a7.md) | 312 | `result-track:8ff968603f547e25ec9d24a7279cff1c710de169cebfed3e73d6c5720fca1828` |
| 45 | `theorem` | [aemeasurable_indicator_iff₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-indicator-iff--7e74425af936f2d82bc618fc.md) | 325 | `result-track:7e74425af936f2d82bc618fc840683dc0daafbfe4a4d16aaa959b45e48d6ea26` |
| 46 | `lemma` | [aemeasurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-indicator-const-iff--db5e081e7c1fb06e537ebf34.md) | 333 | `result-track:db5e081e7c1fb06e537ebf34867a2063d8ad7823f92925d93e695dcad543e637` |
| 47 | `theorem` | [AEMeasurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-indicator--8d0f1b6a79f4b63a9ab34d41.md) | 343 | `result-track:8d0f1b6a79f4b63a9ab34d41d69977b74b1d52c9a29064945a80a137e6d00c25` |
| 48 | `theorem` | [AEMeasurable.indicator₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/aemeasurable-indicator--b89f824a32e70c5e0740832c.md) | 347 | `result-track:b89f824a32e70c5e0740832cd4081092fcc066d57e0ac6f4dcc305c0bdf7630f` |
| 49 | `theorem` | [MeasureTheory.Measure.restrict_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/measuretheory-measure-restrict-map-of-aemeasurable--ba1510b5f56e25f01c36b530.md) | 353 | `result-track:ba1510b5f56e25f01c36b530c39c01248dbaaf0f202754ba1ad5c5976d0a138f` |
| 50 | `theorem` | [MeasureTheory.Measure.map_mono_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/measuretheory-measure-map-mono-of-aemeasurable--be2361efc5deed78bb3a8563.md) | 369 | `result-track:be2361efc5deed78bb3a856346b750c01aa2294cb3b64d142d68d1a15c89a76e` |
| 51 | `lemma` | [MeasureTheory.NullMeasurable.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/measuretheory-nullmeasurable-aemeasurable--4f7485189e457ad51668d377.md) | 375 | `result-track:4f7485189e457ad51668d3777049b684e908d4893bab8834e211bcbb9c04ade3` |
| 52 | `lemma` | [MeasureTheory.NullMeasurable.aemeasurable_of_aerange](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/measuretheory-nullmeasurable-aemeasurable-of-aerange--93ae44cacca6d55874b64b42.md) | 403 | `result-track:93ae44cacca6d55874b64b4279cb529c2d1c90b906e17e57d119ad9c068002b1` |
| 53 | `lemma` | [map_sum](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/map-sum--a8a652ef5add7b21063723ef.md) | 421 | `result-track:a8a652ef5add7b21063723ef834a8e9a8f2cc23bbeb5dae26eb9765e3e39c406` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant75422f7189356da2a61fe6b65e3f0e886eb110a0e27c258f352cbf592c99472a.lean/declarations/instance--926af3ba90a99f15cc10d584.md) | 428 | `declaration-track:926af3ba90a99f15cc10d584c3544e8ef98929503965b6fdece50d96861fe7c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
