# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsEmpty.Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db007c00cd2b948d5f7a5ba967ba78c4cb3b03d4",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db007c00cd2b948d5f7a5ba967ba78c4cb3b03d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEmpty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-eq--1c96d58b56059f7df6bed6c5.md) | 30 | `result-track:1c96d58b56059f7df6bed6c50e814830a3b78723b7d27a7bdc2751b53771c688` |
| 2 | `theorem` | [isEmpty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-iff--16c3b2631c20617121416f2f.md) | 33 | `result-track:16c3b2631c20617121416f2f32e490a207edbe04731999f1280fa811d5709d73` |
| 3 | `theorem` | [startPos_eq_endPos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/startpos-eq-endpos-iff--f6b7fe034b78a0958e4ae28d.md) | 37 | `result-track:f6b7fe034b78a0958e4ae28d33fd230ade07adcd18c36ce911179d4cff2ff3b8` |
| 4 | `theorem` | [startPos_ne_endPos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/startpos-ne-endpos-iff--85a3f5f7d8a12b7cf93808dd.md) | 42 | `result-track:85a3f5f7d8a12b7cf93808ddda13ce20970266da94e09fc374d521fc29d1f5f8` |
| 5 | `theorem` | [startPos_ne_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/startpos-ne-endpos--6ab7a68804fc5bcfcd37040e.md) | 46 | `result-track:6ab7a68804fc5bcfcd37040e9df7bad6df952c5299172888f592535a0e5c65cd` |
| 6 | `theorem` | [isEmpty_iff_forall_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-iff-forall-eq--73c15d406e1af3a6f5206072.md) | 49 | `result-track:73c15d406e1af3a6f5206072b48df7bb9e06bcbeb4df40a00bb9749c127f0e5f` |
| 7 | `theorem` | [isEmpty_eq_false_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-eq-false-of-lt--5d9679d23600b5a6d3b13008.md) | 57 | `result-track:5d9679d23600b5a6d3b130083a04a1be0158c9542c470266427af113bd9c281e` |
| 8 | `theorem` | [isEmpty_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-slicefrom--dea3743bb2476a749d659d68.md) | 67 | `result-track:dea3743bb2476a749d659d68426c5ba016ba81ddae936f56ab1dfb831466c0fb` |
| 9 | `theorem` | [isEmpty_sliceFrom_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-slicefrom-eq-false-iff--79e8a9bb8a4708080bfb6039.md) | 72 | `result-track:79e8a9bb8a4708080bfb6039fabedad226f179a079cc4248b30423e3ef25408c` |
| 10 | `theorem` | [isEmpty_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-sliceto--f7ab3d859f8dbddf5c7af037.md) | 77 | `result-track:f7ab3d859f8dbddf5c7af037c55039594a1a71b4bcd18e2562e2be801587bca8` |
| 11 | `theorem` | [isEmpty_sliceTo_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-sliceto-eq-false-iff--2d76116d0e5f62bf307e3b98.md) | 82 | `result-track:2d76116d0e5f62bf307e3b980d25afbc14c913b6ac707eb8cb822a25fda6e7ec` |
| 12 | `theorem` | [isEmpty_eq_utf8ByteSize_beq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-eq-utf8bytesize-beq-zero--3b58ba21a041b56d54138168.md) | 88 | `result-track:3b58ba21a041b56d54138168d07a53f4b45cfd1494d1fa09814170e765e46489` |
| 13 | `theorem` | [isEmpty_iff_utf8ByteSize_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-iff-utf8bytesize-eq-zero--44c3a437a8035187039f8c1b.md) | 91 | `result-track:44c3a437a8035187039f8c1b52d93ac0a240a432b09961bc5eafb9ecf7c90a43` |
| 14 | `theorem` | [isEmpty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-iff--91dc1810431d1d58c18cad17.md) | 95 | `result-track:91dc1810431d1d58c18cad178ddc681e78b6a36c45efd9a873b155f21f1ee00a` |
| 15 | `theorem` | [isEmpty_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-eq-false-iff--19d50b6c6b5a0f3ba0fbc4ef.md) | 99 | `result-track:19d50b6c6b5a0f3ba0fbc4ef735c9c2fbb50c4c0c5ad973b3defbaa608c8c24e` |
| 16 | `theorem` | [startPos_ne_endPos_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/startpos-ne-endpos-iff--2e88b2c64b5f89296d804acc.md) | 102 | `result-track:2e88b2c64b5f89296d804accff7b4e4b2a8f0a16fb901ffe1fdee79176edd7da` |
| 17 | `theorem` | [startPos_ne_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/startpos-ne-endpos--8351bae4eab66866fdd3019f.md) | 105 | `result-track:8351bae4eab66866fdd3019fa1a5d88f5e3d96b98972b3ef765717d663d33fa2` |
| 18 | `theorem` | [isEmpty_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-toslice--071d9e38b0cf1abfef23b0ba.md) | 109 | `result-track:071d9e38b0cf1abfef23b0bac3883cd652d8d30fbf78c7664b7c1a59fa12ec41` |
| 19 | `theorem` | [isEmpty_toSlice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-toslice-iff--bfc5884d144e2c2c78b9f3d6.md) | 112 | `result-track:bfc5884d144e2c2c78b9f3d6c75962848d6cd9d58dbae854b393da14549e4df4` |
| 20 | `theorem` | [Slice.isEmpty_copy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-isempty-copy--6014adb4e3f8c72941f0e385.md) | 115 | `result-track:6014adb4e3f8c72941f0e385bd51bdb72f5cd82da77b290bc56424a6d3c80726` |
| 21 | `theorem` | [Slice.copy_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-copy-eq-empty-iff--9d54201a426f5ae594e0b90d.md) | 119 | `result-track:9d54201a426f5ae594e0b90d65080894400ce2369ea3242aa6f9b6fbcefc8ae4` |
| 22 | `theorem` | [Slice.copy_ne_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-copy-ne-empty-iff--616ef7592fc5cee8f01daeb5.md) | 122 | `result-track:616ef7592fc5cee8f01daeb5f38d84b95ef9c04e31f682741d36a5743da3867b` |
| 23 | `theorem` | [eq_empty_iff_forall_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/eq-empty-iff-forall-eq--40d1e71e9f4e63d18305e997.md) | 125 | `result-track:40d1e71e9f4e63d18305e9975fd0a14e931b7bdcc75d69eb0220d0a2102f5bc3` |
| 24 | `theorem` | [ne_empty_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/ne-empty-of-lt--ec466e771ceb9027df594ea2.md) | 130 | `result-track:ec466e771ceb9027df594ea2aa62bad93e20bebea8154ac5891f74770e762e5a` |
| 25 | `theorem` | [isEmpty_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-slicefrom--67f6fb4f011b59dd0d566019.md) | 136 | `result-track:67f6fb4f011b59dd0d5660199cb4dca849b1f99269612f06704bbc37ff68c98c` |
| 26 | `theorem` | [isEmpty_sliceFrom_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-slicefrom-eq-false-iff--f9f5eca9773e9b953a75eb4b.md) | 141 | `result-track:f9f5eca9773e9b953a75eb4b73f98e1bbf9e78fa7b6679a57930e94e40535cc3` |
| 27 | `theorem` | [isEmpty_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-sliceto--fd2ea46799d046f41ee8fcc9.md) | 146 | `result-track:fd2ea46799d046f41ee8fcc94551264b9d32ce77a1b4af6205a63ae0ef37fa9c` |
| 28 | `theorem` | [isEmpty_sliceTo_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-sliceto-eq-false-iff--e954328c6fec129ad2c41803.md) | 151 | `result-track:e954328c6fec129ad2c418039a501aa153c7b6e386dbe23905fdbd38e6ebd4c6` |
| 29 | `theorem` | [isEmpty_slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-slice--b495a634f475cbbd0163da3f.md) | 156 | `result-track:b495a634f475cbbd0163da3fe2468e4cc9686ab5d7587802ec74fb0e86bdeaab` |
| 30 | `theorem` | [isEmpty_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/isempty-slice-eq-false-iff--b04fe1e7b8c5822848032b81.md) | 160 | `result-track:b04fe1e7b8c5822848032b81cea48b45334a6ed4e69a502702af6153680967ed` |
| 31 | `theorem` | [Slice.isEmpty_slice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-isempty-slice--ac917dadf224daf658a1d144.md) | 165 | `result-track:ac917dadf224daf658a1d144f039cc09bdb1328c01c3e7354ff9a8e3cb1b2084` |
| 32 | `theorem` | [Slice.isEmpty_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-isempty-slice-eq-false-iff--1d59bb69a5c3c088823e9ff7.md) | 169 | `result-track:1d59bb69a5c3c088823e9ff703220b8f0d3c1a4ebaf48208a54c65fa02608f73` |
| 33 | `theorem` | [toByteArray_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/tobytearray-eq-empty-iff--34f47b8b80ea34370140772d.md) | 174 | `result-track:34f47b8b80ea34370140772d6b2703ea9e1890c2862788dfc82732cb48e4a97d` |
| 34 | `theorem` | [Slice.toByteArray_copy_eq_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-tobytearray-copy-eq-empty-iff--801fc6eceab367d18af562cb.md) | 178 | `result-track:801fc6eceab367d18af562cb56434ba5d9b07039f98246028bd2aaf1737af9da` |
| 35 | `theorem` | [Slice.toByteArray_copy_ne_empty_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-tobytearray-copy-ne-empty-iff--4141d040293d78591603d8c7.md) | 182 | `result-track:4141d040293d78591603d8c7e56aa8aba24d4b0197ec6d645f791d8410d46b21` |
| 36 | `theorem` | [copy_slice_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/copy-slice-self--a4c4775f7f0a0f4aef722e30.md) | 191 | `result-track:a4c4775f7f0a0f4aef722e305be5ff635613cfb2cff4da8c58621a0988996163` |
| 37 | `theorem` | [copy_sliceTo_startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/copy-sliceto-startpos--a8cf682a4d45cb6fed44153e.md) | 195 | `result-track:a8cf682a4d45cb6fed44153e9e1139d6bf7b395838cd614c042fb39f08e5b085` |
| 38 | `theorem` | [copy_sliceFrom_startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/copy-slicefrom-startpos--5e898bb7ddbce25c5f9813b5.md) | 199 | `result-track:5e898bb7ddbce25c5f9813b5918c61aec873bc9344407b64c9e51d45b1e53936` |
| 39 | `theorem` | [Slice.copy_slice_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-copy-slice-self--27c7ef2e4d5452d61557909f.md) | 203 | `result-track:27c7ef2e4d5452d61557909f0e7519c702218adc63bce1374e864b7d53aa6614` |
| 40 | `theorem` | [Slice.copy_sliceTo_startPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-copy-sliceto-startpos--6583e5005263ea3f6fc8080c.md) | 207 | `result-track:6583e5005263ea3f6fc8080c3f743a8966de53b31d50f62a0b0786f0b877ac5b` |
| 41 | `theorem` | [Slice.copy_sliceFrom_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IsEmpty/Variantfca1ac7238a7abf772be2e918270561c85851621527ad8e3625c1d87183749f1.lean/declarations/slice-copy-slicefrom-endpos--78f9248c2edfb1590bbe2a10.md) | 211 | `result-track:78f9248c2edfb1590bbe2a108126b1e50fb0b1eaea2db523b4abb199836219a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
