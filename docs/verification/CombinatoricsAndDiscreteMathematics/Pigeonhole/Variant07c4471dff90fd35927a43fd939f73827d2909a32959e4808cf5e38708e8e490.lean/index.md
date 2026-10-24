# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71c5c72130fccb832a2b429099aefe2e48bd4067",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71c5c72130fccb832a2b429099aefe2e48bd4067`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lt_sum_fiber_of_maps_to_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-sum-fiber-of-maps-to-of-nsmul-lt-sum--7d532171cc0cf5bbe2d4cbf1.md) | 118 | `result-track:7d532171cc0cf5bbe2d4cbf1e4305c6b3e8302d4760888fc0348b070b1952532` |
| 2 | `theorem` | [exists_sum_fiber_lt_of_maps_to_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-sum-fiber-lt-of-maps-to-of-sum-lt-nsmul--61d5db9dfe983d5d059978f3.md) | 126 | `result-track:61d5db9dfe983d5d059978f348173adec8a05be5d0eec77727be0851be57ec19` |
| 3 | `theorem` | [exists_lt_sum_fiber_of_sum_fiber_nonpos_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-sum-fiber-of-sum-fiber-nonpos-of-nsmul-lt-sum--e194cc274747974074167bb7.md) | 135 | `result-track:e194cc274747974074167bb742d4819c95ddd29561949bd68f18f11c702e27d6` |
| 4 | `theorem` | [exists_sum_fiber_lt_of_sum_fiber_nonneg_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-sum-fiber-lt-of-sum-fiber-nonneg-of-sum-lt-nsmul--6c04671110e3d372cbb16f3b.md) | 148 | `result-track:6c04671110e3d372cbb16f3b6da6a333f3c933929d68df0ff6e35e6710659bdf` |
| 5 | `theorem` | [exists_le_sum_fiber_of_maps_to_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-sum-fiber-of-maps-to-of-nsmul-le-sum--09ef5b91f5c76e616233d39f.md) | 162 | `result-track:09ef5b91f5c76e616233d39f7bdb8fe904369324536de1bfa7d2eae1b98da696` |
| 6 | `theorem` | [exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-sum-fiber-le-of-maps-to-of-sum-le-nsmul--18cf10e6008ae344557138c3.md) | 170 | `result-track:18cf10e6008ae344557138c34a282fde8ba736df27d2417c2f8efa85d29e07c5` |
| 7 | `theorem` | [exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-sum-fiber-of-sum-fiber-nonpos-of-nsmul-le-sum--2e5db8d6258171356daea38a.md) | 179 | `result-track:2e5db8d6258171356daea38af7d8d04fece137d03706bf249b873507cd5dbd70` |
| 8 | `theorem` | [exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-sum-fiber-le-of-sum-fiber-nonneg-of-sum-le-nsmul--aaf4355916499467294e8f01.md) | 193 | `result-track:aaf4355916499467294e8f01cd2e8a82f9ceb7462d3c9c35558a91478854d38e` |
| 9 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card-of-maps-to--bc653ab0abea49461bc5bde0.md) | 222 | `result-track:bc653ab0abea49461bc5bde08c816f70baf728fa853e6a8cf3b225bf4b4d6bd9` |
| 10 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-card-fiber-of-mul-lt-card-of-maps-to--c4d02afd9b3a48cd51c9fa7b.md) | 234 | `result-track:c4d02afd9b3a48cd51c9fa7b90e150ea2482bfcd31f870dba469202330b45f9e` |
| 11 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--2f86c9480b2a645380eb60fe.md) | 240 | `result-track:2f86c9480b2a645380eb60fe481fb3e011115c6b317b74689a85869e359b6793` |
| 12 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--07870a916b5f2d8d7d8427d2.md) | 254 | `result-track:07870a916b5f2d8d7d8427d2ec76355c3567b4ee88f9a18dfe0eb4b15ce39ac8` |
| 13 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-card-fiber-of-nsmul-le-card-of-maps-to--547e9092999fa2f33f5a6d48.md) | 261 | `result-track:547e9092999fa2f33f5a6d483cb9e85506af59953eda789f793e2c250dfbde7a` |
| 14 | `theorem` | [exists_le_card_fiber_of_mul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-card-fiber-of-mul-le-card-of-maps-to--27e8ad34184b9babcd94faaa.md) | 270 | `result-track:27e8ad34184b9babcd94faaa3ede06ee48eef5ecb1d78b87048a876cf1cb6007` |
| 15 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--593fde26cfddedcac56912b6.md) | 278 | `result-track:593fde26cfddedcac56912b6adf8be74e9090c04982c9cffa5286379b750c2d6` |
| 16 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-le-of-card-le-mul--afc599b38196722d02697b47.md) | 289 | `result-track:afc599b38196722d02697b47331c4b075c1ed0863c9edc26a6ea78e3fd9419e7` |
| 17 | `lemma` | [exists_mem_exists_mem_inf'_card_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-mem-exists-mem-inf-card-lt--84f20e68c1fb5df0cf56604b.md) | 306 | `result-track:84f20e68c1fb5df0cf56604b9c778bbcf9f0a0ab4434ac48e2be30e70def2133` |
| 18 | `theorem` | [exists_lt_sum_fiber_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-sum-fiber-of-nsmul-lt-sum--42e8d1ed0c79568741d58b2d.md) | 341 | `result-track:42e8d1ed0c79568741d58b2d94a399125169436418fa6cff11a8339fdceac5c1` |
| 19 | `theorem` | [exists_le_sum_fiber_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-sum-fiber-of-nsmul-le-sum--c1767f16227e42eaf1fcb042.md) | 350 | `result-track:c1767f16227e42eaf1fcb042b5b3445efcb435a8be3abf3b00f0446158749aec` |
| 20 | `theorem` | [exists_sum_fiber_lt_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-sum-fiber-lt-of-sum-lt-nsmul--00504ac03b50fbcc828fc6b6.md) | 359 | `result-track:00504ac03b50fbcc828fc6b6d19a571b50b9e5821a66753960b672a745cdd5b6` |
| 21 | `theorem` | [exists_sum_fiber_le_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-sum-fiber-le-of-sum-le-nsmul--cb192b14f93ffa48110d1d64.md) | 367 | `result-track:cb192b14f93ffa48110d1d64b62950253ca01df1576d5855511f7fa2539493af` |
| 22 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card--17882fbc5f116f4c7087f784.md) | 378 | `result-track:17882fbc5f116f4c7087f7844d60a9dec9950f76b9f986dec5f0ee3c92a8797f` |
| 23 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-card-fiber-of-mul-lt-card--c93d90911eccf5f417be1315.md) | 391 | `result-track:c93d90911eccf5f417be13156c0a9d662033ccecff0b096ec13e090c7cc9c92e` |
| 24 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--5c9a88642aa76ea8ddd036a8.md) | 398 | `result-track:5c9a88642aa76ea8ddd036a87314bddf503bc769ed5b11773486109d7440cea0` |
| 25 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--149b664ba1f52a77f1e5a475.md) | 411 | `result-track:149b664ba1f52a77f1e5a475c7401c678b95b3615a3c9ce2d83120faf1bd7d55` |
| 26 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-card-fiber-of-nsmul-le-card--7858905b96130326a67d22c0.md) | 419 | `result-track:7858905b96130326a67d22c022edd0d22bddb34ca536b706d8ae281ba8ebeea0` |
| 27 | `theorem` | [exists_le_card_fiber_of_mul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-le-card-fiber-of-mul-le-card--46792c28a55dd1fd21601d13.md) | 429 | `result-track:46792c28a55dd1fd21601d13ce7e29baa4b2a9b2d175898e45394c854291f01e` |
| 28 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--b7eabc4df8c31b9d76ac6c14.md) | 437 | `result-track:b7eabc4df8c31b9d76ac6c1481b2e14a2b036bf4baacb4ac007f6369a677c815` |
| 29 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-card-fiber-le-of-card-le-mul--d83982506f809f9238a245f3.md) | 446 | `result-track:d83982506f809f9238a245f3f1fac58d79ac840759611007791ca9098006414a` |
| 30 | `theorem` | [exists_lt_modEq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant07c4471dff90fd35927a43fd939f73827d2909a32959e4808cf5e38708e8e490.lean/declarations/exists-lt-modeq-of-infinite--5fd4bbdcdbf046a3f3c2a428.md) | 458 | `result-track:5fd4bbdcdbf046a3f3c2a428ac408d08370773c37aa1a3cffbda1b21ee1ae21d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
