# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurable.Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638833aedec92d04bed42563f925922e09dcf524",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638833aedec92d04bed42563f925922e09dcf524`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean.json)

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
| 1 | `theorem` | [Subsingleton.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/subsingleton-aemeasurable--233161b801f5260ac0c61f63.md) | 29 | `result-track:233161b801f5260ac0c61f639078d3c7875f30ef67ee5f5ccd58df264bf44d60` |
| 2 | `theorem` | [aemeasurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-of-subsingleton-codomain--62365f51286e33ab6ca0acee.md) | 33 | `result-track:62365f51286e33ab6ca0acee8f243674d9b25f5b4a38e915515a8a07afbbcf70` |
| 3 | `theorem` | [aemeasurable_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-zero-measure--582b66e958c0d673a097f3ae.md) | 37 | `result-track:582b66e958c0d673a097f3ae911039bfcde5c08bb3163742fe6954b7a6eb40b4` |
| 4 | `theorem` | [aemeasurable_id''](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-id--c9df22e68c7178d90508d16a.md) | 41 | `result-track:c9df22e68c7178d90508d16a5b0db695672002d590a341d0cfaaead608797a49` |
| 5 | `theorem` | [mono_set](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/mono-set--71d120ba6018ed53792cf0d3.md) | 47 | `result-track:71d120ba6018ed53792cf0d32344c804a2e1d2ccb049b3ae045bd6664ab46e64` |
| 6 | `theorem` | [mono_ac](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/mono-ac--f119751746f0925c21680551.md) | 52 | `result-track:f119751746f0925c2168055114b661c2ab0c3fe2d4c23ae5e6ca8f3194e57971` |
| 7 | `theorem` | [ae_mem_imp_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/ae-mem-imp-eq-mk--1622d581e2e2d2263f516628.md) | 57 | `result-track:1622d581e2e2d2263f51662875dddb8d40a2a0f5835e42d974a96c15e8e3baeb` |
| 8 | `theorem` | [ae_inf_principal_eq_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/ae-inf-principal-eq-mk--9ba69234a420f9850a00f594.md) | 61 | `result-track:9ba69234a420f9850a00f5949ae194fb6358f2613b9dd46dab7f9351d0c4a62b` |
| 9 | `theorem` | [sum_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/sum-measure--63f6497ca0936df7c65e8144.md) | 65 | `result-track:63f6497ca0936df7c65e814439765cf53d6842c2e7531d2f6179165cb614d27c` |
| 10 | `theorem` | [_root_.aemeasurable_sum_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/root-aemeasurable-sum-measure-iff--a9773698e95eef71b5cd2ba5.md) | 105 | `result-track:a9773698e95eef71b5cd2ba51aad6ede95f3fbcad67f21e32d65443420466df4` |
| 11 | `theorem` | [_root_.aemeasurable_add_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/root-aemeasurable-add-measure-iff--1db1ea99892c5a87c62c88f0.md) | 110 | `result-track:1db1ea99892c5a87c62c88f0e4e5d3034f6d2630dbe116077ec4ef86a426f1e8` |
| 12 | `theorem` | [add_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/add-measure--6f7d47d3363de019f221d371.md) | 116 | `result-track:6f7d47d3363de019f221d371116acfd524610ec8703de2111314d59c179378f1` |
| 13 | `theorem` | [map_add₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/map-add--b6f7443980a2a909489ce835.md) | 120 | `result-track:b6f7443980a2a909489ce835b31cf5e214364515b7f42b2724d8fd32bbae8ba3` |
| 14 | `theorem` | [iUnion](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/iunion--66e1aae270257aaa2de8d7ff.md) | 127 | `result-track:66e1aae270257aaa2de8d7ff1628e8c0febaac11931b5e7573e730bc96d29c6f` |
| 15 | `theorem` | [_root_.aemeasurable_iUnion_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/root-aemeasurable-iunion-iff--5044556a34582303e3486b97.md) | 132 | `result-track:5044556a34582303e3486b9765be94aa32465ef10dfb95e6e68c8053fc2e536e` |
| 16 | `theorem` | [_root_.aemeasurable_union_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/root-aemeasurable-union-iff--7c1dbd1458e18c2eb0d903bf.md) | 137 | `result-track:7c1dbd1458e18c2eb0d903bf5c07d1c0987fbd9a2589427a56d95225dd90dbdd` |
| 17 | `theorem` | [smul_measure](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/smul-measure--09037f8a07ad9665d7860627.md) | 143 | `result-track:09037f8a07ad9665d78606274641e3263783b943b71d6a0a7b153670ab8f882f` |
| 18 | `theorem` | [comp_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/comp-aemeasurable--d9c26082950452176a42bb9f.md) | 147 | `result-track:d9c26082950452176a42bb9f731ed0724972cb40de914febc4a95a5aa41cecb3` |
| 19 | `theorem` | [comp_aemeasurable'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/comp-aemeasurable--3fe0515c28d959486526f039.md) | 153 | `result-track:3fe0515c28d959486526f039e33b4bc40820e2abab6040a34488255aa5e2ffc1` |
| 20 | `theorem` | [comp_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/comp-measurable--808fa01f791ee01e5ffbc59c.md) | 156 | `result-track:808fa01f791ee01e5ffbc59c13a4e9be96a9411067587048d53dd1fbdcac7866` |
| 21 | `theorem` | [comp_quasiMeasurePreserving](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/comp-quasimeasurepreserving--ab519343d8438b0b01087d6e.md) | 161 | `result-track:ab519343d8438b0b01087d6e912f2712e3769f85d1611f72b545848051001924` |
| 22 | `theorem` | [map_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/map-map-of-aemeasurable--14e97cf5ee4971077b0fd1b0.md) | 165 | `result-track:14e97cf5ee4971077b0fd1b0a8ff26819c54e730e939f44f02ff018a5ceeece3` |
| 23 | `theorem` | [fst](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/fst--514d1aa24b195bb9e30353b8.md) | 172 | `result-track:514d1aa24b195bb9e30353b8fc9d15c3cc017bf769f957cc2b590d099a62a54c` |
| 24 | `theorem` | [snd](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/snd--d4a643e8d222f1cb43f11bf5.md) | 177 | `result-track:d4a643e8d222f1cb43f11bf58dfb182e9c0058cf31b412b324de5912235a00b4` |
| 25 | `theorem` | [prodMk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/prodmk--5b87ae2a533c9885d621a529.md) | 182 | `result-track:5b87ae2a533c9885d621a529dc2f700266842c4413261acd1e69e440ea6ee8d2` |
| 26 | `theorem` | [_root_.nullMeasurableSet_eq_fun](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/root-nullmeasurableset-eq-fun--ef0c6826e120d7b32e59581f.md) | 187 | `result-track:ef0c6826e120d7b32e59581ffc0be7dad2cbcd51cc59e1c35974fd59f37e036d` |
| 27 | `theorem` | [exists_ae_eq_range_subset](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/exists-ae-eq-range-subset--e7773581e16704e86f217c01.md) | 192 | `result-track:e7773581e16704e86f217c01b8c90527a5989ed341c1558d2a3a9fba467e103d` |
| 28 | `theorem` | [exists_measurable_nonneg](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/exists-measurable-nonneg--8db1b4563982cddfd5a6f82e.md) | 217 | `result-track:8db1b4563982cddfd5a6f82eb82f29e533d046c7ca6ce42c4369d6b7202b995e` |
| 29 | `theorem` | [subtype_mk](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/subtype-mk--665118cb39457279f62ccab7.md) | 222 | `result-track:665118cb39457279f62ccab79f2db274b2609a1f990a953a96d3cba3241ff475` |
| 30 | `theorem` | [aemeasurable_const'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-const--1214d33e43dc001480f42925.md) | 233 | `result-track:1214d33e43dc001480f4292531609c03dca302d18159b5c4e0408677049bc033` |
| 31 | `theorem` | [aemeasurable_uIoc_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-uioc-iff--49b73a35f4d726593f984a4d.md) | 241 | `result-track:49b73a35f4d726593f984a4d5282c5323590273f943b884152326541e0d193a7` |
| 32 | `theorem` | [aemeasurable_iff_measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-iff-measurable--26c89fd6a28f019f76ab32c3.md) | 246 | `result-track:26c89fd6a28f019f76ab32c33bfdb53379c5f35a5a1efba51f80d65c9f854f9d` |
| 33 | `theorem` | [MeasurableEmbedding.aemeasurable_map_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/measurableembedding-aemeasurable-map-iff--1b39477ebf5591c98e92f911.md) | 249 | `result-track:1b39477ebf5591c98e92f911092baaa4a4ab3a3c9e3cf058fc43abb88dd46eec` |
| 34 | `theorem` | [MeasurableEmbedding.aemeasurable_comp_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/measurableembedding-aemeasurable-comp-iff--20ee390d53a85251a6281064.md) | 256 | `result-track:20ee390d53a85251a628106462bdbce8bc6220933b03f1a9d62d068e977c7ce8` |
| 35 | `theorem` | [aemeasurable_restrict_iff_comap_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-restrict-iff-comap-subtype--4f4abc3c2b5c2365f32450ef.md) | 263 | `result-track:4f4abc3c2b5c2365f32450ef78450a1b10f36552bcfbf22e59ba36deee98d093` |
| 36 | `theorem` | [aemeasurable_one](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-one--67645c9a037bad1725cd011b.md) | 268 | `result-track:67645c9a037bad1725cd011b9652b099c018f74273d74d29d4a49558924962d1` |
| 37 | `theorem` | [aemeasurable_smul_measure_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-smul-measure-iff--1ccc1d242132031299bc6472.md) | 272 | `result-track:1ccc1d242132031299bc647228a66e9c08da9b143160567bc49c85c59fac3a71` |
| 38 | `theorem` | [aemeasurable_of_aemeasurable_trim](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-of-aemeasurable-trim--3c35d448250c610a03bb2b57.md) | 277 | `result-track:3c35d448250c610a03bb2b57e58693dd4c3b6fa56305063972575f17066c0925` |
| 39 | `theorem` | [aemeasurable_restrict_of_measurable_subtype](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-restrict-of-measurable-subtype--73d456609e670e92744f5048.md) | 281 | `result-track:73d456609e670e92744f50481c2d116406b6dd3c4032823966e0a15574cfa576` |
| 40 | `theorem` | [aemeasurable_map_equiv_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-map-equiv-iff--ad3a4de26d5809446d365bc4.md) | 285 | `result-track:ad3a4de26d5809446d365bc48ffd696989d8b5929c30606d4199f4b8df4f2ad3` |
| 41 | `theorem` | [AEMeasurable.restrict](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-restrict--3621a15fea5b4ddfabf8d0f1.md) | 292 | `result-track:3621a15fea5b4ddfabf8d0f1a8b6b39197d60feac62438633ea043a65fce9248` |
| 42 | `theorem` | [aemeasurable_Ioi_of_forall_Ioc](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-ioi-of-forall-ioc--4c942f75c1cf93e9ab113038.md) | 295 | `result-track:4c942f75c1cf93e9ab1130387bd36939f780ee0631bd03d3ad12cf939a76c60f` |
| 43 | `theorem` | [aemeasurable_indicator_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-indicator-iff--e679c0a3a37598f2f34e4085.md) | 315 | `result-track:e679c0a3a37598f2f34e408570c3e239d19f200aa3c2f6863216c03c84e2cefc` |
| 44 | `theorem` | [aemeasurable_indicator_iff₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-indicator-iff--c260a3683b44e3512017076a.md) | 328 | `result-track:c260a3683b44e3512017076a2439213312da477267181b33650d92c3cb3aa9b8` |
| 45 | `lemma` | [aemeasurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-indicator-const-iff--3b7b7a4a21a822295869778a.md) | 336 | `result-track:3b7b7a4a21a822295869778a25054f61bc7add26c79392a546561e837f0565d1` |
| 46 | `theorem` | [AEMeasurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-indicator--1af47c32eaed0479adf6bf13.md) | 346 | `result-track:1af47c32eaed0479adf6bf13085d63bc52140b666f2d874ef11fd6a8e8379166` |
| 47 | `theorem` | [AEMeasurable.indicator₀](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/aemeasurable-indicator--225c98dad6ddb36264f52d5a.md) | 350 | `result-track:225c98dad6ddb36264f52d5a169a6dfa3abbf8dcfdc444e617397c82c6cfaa5e` |
| 48 | `theorem` | [MeasureTheory.Measure.restrict_map_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/measuretheory-measure-restrict-map-of-aemeasurable--54b3b332eb3d6e0f353a846f.md) | 356 | `result-track:54b3b332eb3d6e0f353a846fb964a395bde3dcba78e7421a0124bde9bf35b350` |
| 49 | `theorem` | [MeasureTheory.Measure.map_mono_of_aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/measuretheory-measure-map-mono-of-aemeasurable--06e20f3dd3192282f1b59dfc.md) | 371 | `result-track:06e20f3dd3192282f1b59dfcd4db048111e442b6737497bbe5b3887e1a434e9e` |
| 50 | `lemma` | [MeasureTheory.NullMeasurable.aemeasurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/measuretheory-nullmeasurable-aemeasurable--ba803b1903bac7fcb744fa10.md) | 377 | `result-track:ba803b1903bac7fcb744fa10707298d71731fd8ba3c4dd05488f470807d4d876` |
| 51 | `lemma` | [MeasureTheory.NullMeasurable.aemeasurable_of_aerange](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/measuretheory-nullmeasurable-aemeasurable-of-aerange--9e1060e82d8eb9fb70c384b0.md) | 405 | `result-track:9e1060e82d8eb9fb70c384b035ee405db136d5dcd17c31c89cad7e9a4dd26e4d` |
| 52 | `lemma` | [map_sum](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/map-sum--9f8f7cd7a438a73f1c977335.md) | 423 | `result-track:9f8f7cd7a438a73f1c977335c7c536a907d1479c81aa291b16528a6240624fc9` |
| 53 | `lemma` | [map_finset_sum](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/map-finset-sum--814d3b9201c51aeb04cd100a.md) | 430 | `result-track:814d3b9201c51aeb04cd100a82a38a7c540ae229a1ed8017f5fc8d797f45166c` |
| 54 | `lemma` | [map_finset_sum'](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/map-finset-sum--d989e4c9a905538495c291ca.md) | 436 | `result-track:d989e4c9a905538495c291ca82b26e13c7cb9509f33a3bb2039ae1481f953acc` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurable/Variant0d1575e4d0530571efdf60155582cc53b85113daed44a2e831d2bc99dff3c6e4.lean/declarations/instance--27d09b4669f4ee28d8d0ee7a.md) | 440 | `declaration-track:27d09b4669f4ee28d8d0ee7a8f9a43a15981c24d92bb1c974919668646a1497f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
