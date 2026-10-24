# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Indexes.Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47793bac6e7783f6e52bab38552e644a2a1b898e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47793bac6e7783f6e52bab38552e644a2a1b898e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oldMapIdxCore](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/oldmapidxcore--125561961d949e61369c2efc.md) | 31 | `declaration-track:125561961d949e61369c2efc866be8ab164c6b6b2be3bd17b2ac3acf23de072b` |
| 2 | `def` | [oldMapIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/oldmapidx--5ac4cffe714534ed9001f863.md) | 37 | `declaration-track:5ac4cffe714534ed9001f86325b8178ebf93cf2ac70cc485dc9c125ce2a550b6` |
| 3 | `theorem` | [mapIdx_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidx-nil--c4d676a9676d6cc2ce6985fc.md) | 41 | `result-track:c4d676a9676d6cc2ce6985fcf9e8aa04f56e9354a8b2e03cd86f4222631c3b7b` |
| 4 | `theorem` | [oldMapIdxCore_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/oldmapidxcore-eq--559aedbf8661eca85bf36c63.md) | 46 | `result-track:559aedbf8661eca85bf36c63232acd68e9306057e3e355a2d6e331e0f16d2528` |
| 5 | `theorem` | [list_reverse_induction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/list-reverse-induction--385ad3322954ca685c4f7cfc.md) | 60 | `result-track:385ad3322954ca685c4f7cfc107dd5924936931c4789acdc150190b5de3c72c8` |
| 6 | `theorem` | [oldMapIdxCore_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/oldmapidxcore-append--5129ee79d2078033fc6646ec.md) | 73 | `result-track:5129ee79d2078033fc6646ecf6a42e845fef7a11f5baec2489c6ca1a16c37ec9` |
| 7 | `theorem` | [oldMapIdx_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/oldmapidx-append--d59c5b9d67618dd51315394e.md) | 94 | `result-track:d59c5b9d67618dd51315394ecf5de052a6b2e91678337591271eeaa93096c0ec` |
| 8 | `theorem` | [mapIdxGo_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxgo-append--befd43ab50453894ae7ac1c9.md) | 102 | `result-track:befd43ab50453894ae7ac1c94870937f596bdf23db43a65f419a7038a1bd6b57` |
| 9 | `theorem` | [mapIdxGo_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxgo-length--4037689c8724298d6253d1e0.md) | 119 | `result-track:4037689c8724298d6253d1e0e97487d0eccd57b7219edcdef4b86790a76c2f9b` |
| 10 | `theorem` | [mapIdx_append_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidx-append-one--588c1762bf00b5564417671e.md) | 128 | `result-track:588c1762bf00b5564417671ec7aaeaf7a0fd7577f1cb5307d29a38ac3513be28` |
| 11 | `theorem` | [new_def_eq_old_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/new-def-eq-old-def--7b70232a27771809a34914e6.md) | 137 | `result-track:7b70232a27771809a34914e6eced95ffba1c142f199235d44d29f2730aa86c98` |
| 12 | `theorem` | [map_enumFrom_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/map-enumfrom-eq-zipwith--5e2ae7c785e1e8b5b9c2c501.md) | 146 | `result-track:5e2ae7c785e1e8b5b9c2c501f355a4ec59e8731fab6d6b48a3d26f3ed9e2bdce` |
| 13 | `theorem` | [mapIdx_eq_enum_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidx-eq-enum-map--b58b2219b5efaf630a8cc160.md) | 164 | `result-track:b58b2219b5efaf630a8cc1609f53ed4bf5dd1922490f4037e12a91e9c6974c68` |
| 14 | `theorem` | [mapIdx_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidx-cons--1fa0c4af0d9d68eae67593ef.md) | 174 | `result-track:1fa0c4af0d9d68eae67593efea52b87ea0494411dbea6e80d5ad355e49b24f29` |
| 15 | `theorem` | [mapIdx_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidx-append--8dd5a94dd350a71527b55524.md) | 180 | `result-track:8dd5a94dd350a71527b55524cee88b4a5137fa8e063b004017506a5a2976eafd` |
| 16 | `theorem` | [length_mapIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/length-mapidx--49338eaf9443f0bb1699b726.md) | 188 | `result-track:49338eaf9443f0bb1699b726f560b4b1473b71040981fc6ed54f1a19083a86c1` |
| 17 | `theorem` | [nthLe_mapIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/nthle-mapidx--a1900d2bf9bed9aa9459b68d.md) | 195 | `result-track:a1900d2bf9bed9aa9459b68da734f5ecb92f5cad269b395d1d8a1dd97443517a` |
| 18 | `theorem` | [mapIdx_eq_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidx-eq-offn--fad7f4a71c713a8597b92e70.md) | 202 | `result-track:fad7f4a71c713a8597b92e7047bae8887a520bf636d34f9bde4fdf8e30c96123` |
| 19 | `def` | [foldrIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldridxspec--f3c70526d18795bc045a89ab.md) | 215 | `declaration-track:f3c70526d18795bc045a89ab1dcb937af2dd5961a45e0c234b285d6d251517af` |
| 20 | `theorem` | [foldrIdxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldridxspec-cons--b59c9b3e4d3c27aadad619d1.md) | 219 | `result-track:b59c9b3e4d3c27aadad619d10deb6fed8b052caf77ef557855b6fcc18623b9da` |
| 21 | `theorem` | [foldrIdx_eq_foldrIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldridx-eq-foldridxspec--8fb608756003fff768842d3e.md) | 224 | `result-track:8fb608756003fff768842d3e3ba44d6745f0bf8927d211902761a44ea3216abb` |
| 22 | `theorem` | [foldrIdx_eq_foldr_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldridx-eq-foldr-enum--396f7e5502b6964ed9994466.md) | 231 | `result-track:396f7e5502b6964ed9994466d0beb332d6f7cebed4b25fc8309ae5c62fffb797` |
| 23 | `theorem` | [indexesValues_eq_filter_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/indexesvalues-eq-filter-enum--c720c712663367a21dfbf726.md) | 238 | `result-track:c720c712663367a21dfbf726d1e9b2b676490217fbef564be7e1a8d67ccfc205` |
| 24 | `theorem` | [findIdxs_eq_map_indexesValues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/findidxs-eq-map-indexesvalues--88b41ed652690d5ce0828d02.md) | 243 | `result-track:88b41ed652690d5ce0828d020353318c4748a11762c4e876b80dde71a66cb629` |
| 25 | `def` | [foldlIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldlidxspec--e5de3b0a72ae3d2dbed6b9e9.md) | 253 | `declaration-track:e5de3b0a72ae3d2dbed6b9e901e2eb9289b4fd4d8469081e01b4df610922fd3b` |
| 26 | `theorem` | [foldlIdxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldlidxspec-cons--6b0dd7b88620f146b14252b2.md) | 257 | `result-track:6b0dd7b88620f146b14252b23d42581cdc2d52337ce927d72c6e89b391388d3e` |
| 27 | `theorem` | [foldlIdx_eq_foldlIdxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldlidx-eq-foldlidxspec--0489bd49fd42c6e2edd7a11b.md) | 262 | `result-track:0489bd49fd42c6e2edd7a11b66b388c428f854358d6c79b144c7dda5a6367db4` |
| 28 | `theorem` | [foldlIdx_eq_foldl_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldlidx-eq-foldl-enum--34b80f34076996892234b823.md) | 269 | `result-track:34b80f34076996892234b8233675055e70a26727517f9812bc3e6e64a12079aa` |
| 29 | `theorem` | [foldrIdxM_eq_foldrM_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldridxm-eq-foldrm-enum--27c157f04bcc4d54f0d7e2de.md) | 281 | `result-track:27c157f04bcc4d54f0d7e2ded48e627ffb49e683eadcd616af67de2a78cbf1a4` |
| 30 | `theorem` | [foldlIdxM_eq_foldlM_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/foldlidxm-eq-foldlm-enum--f5331d123281fc51bb5c45b2.md) | 286 | `result-track:f5331d123281fc51bb5c45b262a4f53455fb9a230ecdeacc00b9c6237c4c39c8` |
| 31 | `def` | [mapIdxMAuxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxmauxspec--b34650e92cf2ef8736dcc224.md) | 299 | `declaration-track:b34650e92cf2ef8736dcc2247ae6f35b8086491f6f26caf411a576a9c9e06d4a` |
| 32 | `theorem` | [mapIdxMAuxSpec_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxmauxspec-cons--947341a8f9be659d0a3417c2.md) | 305 | `result-track:947341a8f9be659d0a3417c26a4706040eb94862c3dd04ad138bcf68b9fa0474` |
| 33 | `theorem` | [mapIdxMGo_eq_mapIdxMAuxSpec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxmgo-eq-mapidxmauxspec--59730321bacca794d2572803.md) | 310 | `result-track:59730321bacca794d2572803eb28908f8010ffb63f6d1cf5318dc3afd3bb120b` |
| 34 | `theorem` | [mapIdxM_eq_mmap_enum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxm-eq-mmap-enum--31e2a40020328ec74fb9f477.md) | 330 | `result-track:31e2a40020328ec74fb9f47722537cdba13b0f8924dc2e28b0d7bdc99a320937` |
| 35 | `theorem` | [mapIdxMAux'_eq_mapIdxMGo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxmaux-eq-mapidxmgo--ca3b2b8e141afe04b7c5c52a.md) | 343 | `result-track:ca3b2b8e141afe04b7c5c52aacc5634050a1ed6db3a581f407fc2685ae8bdd98` |
| 36 | `theorem` | [mapIdxM'_eq_mapIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant05c1c4ce22731c517787436af77b32c94991620c94b98e0e71313d8e3911dcb3.lean/declarations/mapidxm-eq-mapidxm--82ffb45f6de2b3e2fe089aef.md) | 357 | `result-track:82ffb45f6de2b3e2fe089aef1a6a725504b74271d682fa924cbdb405ee97e767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
