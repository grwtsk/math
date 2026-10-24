# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapLemmas.Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7256b2044c7f50112af0eb1fcfdf3efedea29e2b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7256b2044c7f50112af0eb1fcfdf3efedea29e2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Snoc` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mapAccumr_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr--b4893ed5816b90cc6a7e58a2.md) | 27 | `result-track:b4893ed5816b90cc6a7e58a22c5a69a0894ccb3bb021cdee5c1cea92a34e3bf5` |
| 2 | `theorem` | [mapAccumr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-map--f9fd3d2385da9a90e3a5d64d.md) | 38 | `result-track:f9fd3d2385da9a90e3a5d64d546fdf265529d560a256ebdcb834f0ffdf5a55ab` |
| 3 | `theorem` | [map_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-mapaccumr--c37f278fad11bb140b052b11.md) | 43 | `result-track:c37f278fad11bb140b052b11f57de17c31ea527686774f6e161059ff03e63537` |
| 4 | `theorem` | [map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-map--02bd59b30c88cd02810058f9.md) | 50 | `result-track:02bd59b30c88cd02810058f97ef7473bae072f7c9bb78d41ffc2bc167273b9a0` |
| 5 | `theorem` | [map_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-pmap--ef9931c3eb399cd8fc3257c7.md) | 54 | `result-track:ef9931c3eb399cd8fc3257c799412866c4a21f087176b94a1feacae63df14b02` |
| 6 | `theorem` | [pmap_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/pmap-map--4e15756a0eb3ead8f76d3e7d.md) | 58 | `result-track:4e15756a0eb3ead8f76d3e7d754ef9ade1b5a4e731b85c0382c80f831dca3dec` |
| 7 | `theorem` | [mapAccumr₂_mapAccumr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr-left--ef0936ac5a4fbebb06e9ea5f.md) | 69 | `result-track:ef0936ac5a4fbebb06e9ea5f11bc22d16fa0f1892616c2de41dc916c21a0fa7b` |
| 8 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-map-left--fa90a088c366ccbf8784567a.md) | 80 | `result-track:fa90a088c366ccbf8784567a5c618f99c9cfb769c510b66e80e7ebf689b04abe` |
| 9 | `theorem` | [mapAccumr₂_mapAccumr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr-right--c4ad763e233dd7dc487e5b96.md) | 85 | `result-track:c4ad763e233dd7dc487e5b965102fb5ca1bc7e53ec80efcc9b3b27249dd40ee5` |
| 10 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-map-right--15773ccfc61d422168859029.md) | 96 | `result-track:15773ccfc61d4221688590291332dbf7196dae6773dfbc4fac5a1e64278e6d28` |
| 11 | `theorem` | [mapAccumr_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr--971c9075f6ab361c2118d046.md) | 101 | `result-track:971c9075f6ab361c2118d0463199f02ac826a43491f616d4c81bbb432ee58863` |
| 12 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-map--fe8ac08aff578d22318355c7.md) | 112 | `result-track:fe8ac08aff578d22318355c7089a5eb3ca11ffe84a76dec55463a3065c424a78` |
| 13 | `theorem` | [mapAccumr₂_mapAccumr₂_left_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr-left-left--ea3c17771b663aca413f7ec7.md) | 117 | `result-track:ea3c17771b663aca413f7ec7caf26422928769519d8e49d1ff1b5a938d4773d2` |
| 14 | `theorem` | [mapAccumr₂_mapAccumr₂_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr-left-right--9ac11b520778b12cc119399d.md) | 129 | `result-track:9ac11b520778b12cc119399dcdfe829f91ab53620341fc9ccbaa4ee3fea7f47c` |
| 15 | `theorem` | [mapAccumr₂_mapAccumr₂_right_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr-right-left--ecfdbd431d903d15648b8aa7.md) | 142 | `result-track:ecfdbd431d903d15648b8aa7809d1f6e60e378a6bcd6e7da07a80a989c95b30b` |
| 16 | `theorem` | [mapAccumr₂_mapAccumr₂_right_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-mapaccumr-right-right--3f84384df54838b0cf2c94c6.md) | 154 | `result-track:3f84384df54838b0cf2c94c6c52a98c095d70b42aacda2ce14102c956593bd21` |
| 17 | `theorem` | [mapAccumr_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-bisim--2e3a29bd826064d45b4d06f8.md) | 182 | `result-track:2e3a29bd826064d45b4d06f812c0f22762a689abb4e0d14e0b7013241cf6b81b` |
| 18 | `theorem` | [mapAccumr_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-bisim-tail--d18e8a8ded30b93a0b0567e2.md) | 194 | `result-track:d18e8a8ded30b93a0b0567e262aa06e96038a24ccee22854bc29d97d5f4462c3` |
| 19 | `theorem` | [mapAccumr₂_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-bisim--20eafb1ee792d30cad88b119.md) | 201 | `result-track:20eafb1ee792d30cad88b11930485dada9548b0d7e71e93f1c762f5e428e1ffc` |
| 20 | `theorem` | [mapAccumr₂_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-bisim-tail--8bf00ab36e9f4fbd8058d01f.md) | 214 | `result-track:8bf00ab36e9f4fbd8058d01f7c0ab045d9b1edef9a8e5d3d038cbf97d5464344` |
| 21 | `theorem` | [map_eq_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-eq-mapaccumr--97f9e7ed2a81934930f007d6.md) | 233 | `result-track:97f9e7ed2a81934930f007d6027390fd1e8b5a0cb89506ed873146dd7cb2e4e2` |
| 22 | `theorem` | [mapAccumr_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-eq-map--5a9f1ec5662a0d27a8935bf7.md) | 242 | `result-track:5a9f1ec5662a0d27a8935bf7b47751bbd8bfb8d2adf1133aa8669c603739fa04` |
| 23 | `theorem` | [map₂_eq_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-eq-mapaccumr--e2e94fce1f30f7e51e330da6.md) | 251 | `result-track:e2e94fce1f30f7e51e330da6d0ec88d806e3505558efd07d8962674bdfa6fcef` |
| 24 | `theorem` | [mapAccumr₂_eq_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-eq-map--2e035d7b5d861e1cfc419a34.md) | 260 | `result-track:2e035d7b5d861e1cfc419a34fe9da9124785a92939976e789773231c36f74c15` |
| 25 | `theorem` | [mapAccumr_eq_map_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-eq-map-of-constant-state--81bcbf1d0d2b55b9dd647980.md) | 274 | `result-track:81bcbf1d0d2b55b9dd6479800254a45b6d7195d4e51f0f01a7ee634fc8bb1a12` |
| 26 | `theorem` | [mapAccumr₂_eq_map₂_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-eq-map-of-constant-state--aec63d9e5507c109b2458e35.md) | 283 | `result-track:aec63d9e5507c109b2458e352a4b522148f2e90ec2ad3894fa9becad242d04f2` |
| 27 | `theorem` | [mapAccumr_eq_map_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-eq-map-of-unused-state--b3d04671dd449a9a7310effb.md) | 293 | `result-track:b3d04671dd449a9a7310effbbb11f5c4030261b2f58a8ee2ca0c0fa7728c785c` |
| 28 | `theorem` | [mapAccumr₂_eq_map₂_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-eq-map-of-unused-state--8b420d67c4ffc5b29dbf0441.md) | 304 | `result-track:8b420d67c4ffc5b29dbf0441ca1d0e78bdaf4c105a7527b544976f660f602389` |
| 29 | `theorem` | [mapAccumr_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-redundant-pair--0906acb4ddd88e83e36d122c.md) | 314 | `result-track:0906acb4ddd88e83e36d122c0b3657f244cc459481ec09d687912ec8588adf92` |
| 30 | `theorem` | [mapAccumr₂_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-redundant-pair--723c308f90ad93606f5dc45e.md) | 327 | `result-track:723c308f90ad93606f5dc45ee1775d951c9796ca3a3304fd7dada2ef1b2803ca` |
| 31 | `theorem` | [mapAccumr₂_unused_input_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-unused-input-left--9aeb3f8526aa0e695c663220.md) | 349 | `result-track:9aeb3f8526aa0e695c663220c51ceac93f26515d9fa3152e87b841f1c3028b0e` |
| 32 | `theorem` | [mapAccumr₂_unused_input_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-unused-input-right--674b3f10af1be3e1f36b78df.md) | 361 | `result-track:674b3f10af1be3e1f36b78dfad5cacf152e0e50a935aedfdd61425b9a6b96b9e` |
| 33 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-comm--68cc63bb4427f03edb3b10b1.md) | 376 | `result-track:68cc63bb4427f03edb3b10b18cabf83b44204a5820c239afec79fe404080a1af` |
| 34 | `theorem` | [mapAccumr₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-comm--0198c277fb3a751ec0c7aa6d.md) | 380 | `result-track:0198c277fb3a751ec0c7aa6d95f36efa4a6e98b06faee61d754ee6b65775aec9` |
| 35 | `theorem` | [map₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/map-flip--050fbfecbf6981d2179bb18b.md) | 392 | `result-track:050fbfecbf6981d2179bb18bbac67183430b2f250e0c273157d45174fdcc779c` |
| 36 | `theorem` | [mapAccumr₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantfe4de3400a01d8290d8fcac85e5e214202f01823a7a401de34af5b1a51485c82.lean/declarations/mapaccumr-flip--193449639cf5166d8df08d40.md) | 396 | `result-track:193449639cf5166d8df08d405174510dac2e9ddf30b139deef7de6169d42fe5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
