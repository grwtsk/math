# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52a2edd492bd950b5974c5f9a252d97e9f383c54",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52a2edd492bd950b5974c5f9a252d97e9f383c54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Zip` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zipWith_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-comm--9e6fe9408df93a12e0f48593.md) | 41 | `result-track:9e6fe9408df93a12e0f48593068e6c3111de733fa96e207754e25ccc481c7259` |
| 2 | `theorem` | [zipWith_comm_of_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-comm-of-comm--7e6c457642a80aaa12ae5163.md) | 47 | `result-track:7e6c457642a80aaa12ae5163c69d2bb4562e91a9164a44c0ce5a1b7598cd740b` |
| 3 | `theorem` | [zipWith_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-self--323fade2100a8f61c48f965b.md) | 53 | `result-track:323fade2100a8f61c48f965b0b483c236f66bf9022c53f574ba2118380745438` |
| 4 | `theorem` | [getElem?_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/getelem-zipwith--3140d331e485ee233d2770b5.md) | 62 | `result-track:3140d331e485ee233d2770b592cca6662c10550643fa6c1c5bdfdb70cd0b0d5d` |
| 5 | `theorem` | [getElem?_zipWith'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/getelem-zipwith--a0d6bf5657b96f906311a571.md) | 71 | `result-track:a0d6bf5657b96f906311a57159669ca1dfdf7f876dd2346b51d5fe31b0bb7c22` |
| 6 | `theorem` | [getElem?_zipWith_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/getelem-zipwith-eq-some--09f9c8f847e802ecabe61b84.md) | 77 | `result-track:09f9c8f847e802ecabe61b843b4f8649cf9ffe0cb6da019a5945310ee2f682ad` |
| 7 | `theorem` | [getElem?_zip_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/getelem-zip-eq-some--ece97704b1810416cbc58e2b.md) | 84 | `result-track:ece97704b1810416cbc58e2bcf373fe18627f3588da1b0f6e6187bfe0fe4b737` |
| 8 | `theorem` | [zipWith_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-map--0a4d7d8d2a31e5cf00423413.md) | 91 | `result-track:0a4d7d8d2a31e5cf00423413168a5a706af4db0a2a151aec181f44fdb3876150` |
| 9 | `theorem` | [zipWith_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-map-left--4264b9f69bcaa3ac418886a8.md) | 98 | `result-track:4264b9f69bcaa3ac418886a8f7835b4f866dc3c8051399875bdf14e6e209e72b` |
| 10 | `theorem` | [zipWith_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-map-right--b5255724d24df184635965ee.md) | 105 | `result-track:b5255724d24df184635965eee5587c746e805705240aa12cf87f6a8df449e129` |
| 11 | `theorem` | [zipWith_foldr_eq_zip_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-foldr-eq-zip-foldr--964e9b2923567015e29d7036.md) | 112 | `result-track:964e9b2923567015e29d7036eb364bff98cb24c471f580d517a5815e289f23d8` |
| 12 | `theorem` | [zipWith_foldl_eq_zip_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-foldl-eq-zip-foldl--dc777a1e97fbc05b989d1baa.md) | 119 | `result-track:dc777a1e97fbc05b989d1baa78fcb73d6e7d72a24df167f8d4ad03742e96725a` |
| 13 | `theorem` | [map_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-zipwith--46b2f783fcec46191a8428f9.md) | 126 | `result-track:46b2f783fcec46191a8428f9a11e2d2f52609803b121ae453cb90d59696d48a4` |
| 14 | `theorem` | [take_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/take-zipwith--4ba7d9e9addc1c59077f1e08.md) | 133 | `result-track:4ba7d9e9addc1c59077f1e089849c9d2fda192435d0460afd3acffac1b84abb1` |
| 15 | `theorem` | [extract_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/extract-zipwith--afd98334c79d8defebc76c3a.md) | 139 | `result-track:afd98334c79d8defebc76c3aeb2f30a04d52f4cd8029579c1cce186ba3a16200` |
| 16 | `theorem` | [zipWith_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-append--070bf2840e2b17c828b7aa60.md) | 145 | `result-track:070bf2840e2b17c828b7aa605e9d97cd763b584d85648b277ac031fb7445ffd0` |
| 17 | `theorem` | [zipWith_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-eq-append-iff--2f28d5229cee39c323d70ba8.md) | 154 | `result-track:2f28d5229cee39c323d70ba8878caf62670b92ec20e21edb7c9c58c17f5ed2b1` |
| 18 | `theorem` | [zipWith_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zipwith-replicate--1cf0940a6d17347f046aed93.md) | 172 | `result-track:1cf0940a6d17347f046aed932563059166d3af86929e160200464b5e52b26dc6` |
| 19 | `theorem` | [map_uncurry_zip_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-uncurry-zip-eq-zipwith--6112912204217bc974664ed3.md) | 177 | `result-track:6112912204217bc974664ed3b8ef339bacc0a9490c1753d1b38947fc8f152fae` |
| 20 | `theorem` | [map_zip_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-zip-eq-zipwith--e1874ff54141ec68ebcfb878.md) | 183 | `result-track:e1874ff54141ec68ebcfb8783a33a63e5695d6e643ee5af2a2838f5f90622999` |
| 21 | `theorem` | [reverse_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/reverse-zipwith--48681cde246a0abc980937fa.md) | 190 | `result-track:48681cde246a0abc980937faab4d6bda5ce88dc3a897e73943dc920193789c23` |
| 22 | `theorem` | [getElem_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/getelem-zip--361ffa53b20e516f1c75b6e1.md) | 199 | `result-track:361ffa53b20e516f1c75b6e1ae806d0850f079d599cec4f162b260e8c2141bde` |
| 23 | `theorem` | [zip_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-eq-zipwith--0368dc03e5f73a50edccc8a9.md) | 203 | `result-track:0368dc03e5f73a50edccc8a9c3ccf2c7c0a1d8e8ef2a6455a05c73657b975df6` |
| 24 | `theorem` | [zip_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-map--f66a8fb969e2593da962e3c1.md) | 209 | `result-track:f66a8fb969e2593da962e3c171a7a1e50cc62b13e74fa01a52ff49e89d0a8d6b` |
| 25 | `theorem` | [zip_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-map-left--bfde949fd3ddd29e29389a49.md) | 215 | `result-track:bfde949fd3ddd29e29389a4959299695724b07b0fddc875082b40755a2dcb04e` |
| 26 | `theorem` | [zip_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-map-right--57ca27a038388666463fc6ec.md) | 218 | `result-track:57ca27a038388666463fc6ec0201b47c67951ec15dd7280a345fa74255f5e21e` |
| 27 | `theorem` | [zip_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-append--b54371f621a99d052d37b657.md) | 222 | `result-track:b54371f621a99d052d37b6576f951114278e4af1bf5192dedb93c8d504fe4494` |
| 28 | `theorem` | [zip_map'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-map--b0219b49ae6f8ae076461c2e.md) | 231 | `result-track:b0219b49ae6f8ae076461c2ea2c125c3d93803843e6a283f05672e3a9083c489` |
| 29 | `theorem` | [of_mem_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/of-mem-zip--c4db26510f763f7e51dd362d.md) | 236 | `result-track:c4db26510f763f7e51dd362de5e7672e08b494ac286c04f129908816a7d63140` |
| 30 | `theorem` | [map_fst_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-fst-zip--2e63323f8567a6ab6d8b31b3.md) | 242 | `result-track:2e63323f8567a6ab6d8b31b3aa8b30a1920d796d7f7b30b9d230bd2de4b1bee2` |
| 31 | `theorem` | [map_snd_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-snd-zip--ae04d01d21817879e1a97f0d.md) | 249 | `result-track:ae04d01d21817879e1a97f0dc7efafe0695064c0612db6f055f66d3ceaa730d7` |
| 32 | `theorem` | [map_prod_left_eq_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-prod-left-eq-zip--5657a77dcba6bcb8b1ea216a.md) | 255 | `result-track:5657a77dcba6bcb8b1ea216a707473529ecf89553d0714b6fb0a65c046915514` |
| 33 | `theorem` | [map_prod_right_eq_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/map-prod-right-eq-zip--98a78b76b4bf5a8542414133.md) | 262 | `result-track:98a78b76b4bf5a8542414133603c17d5e975ce0cbde73a9a45a9998e8e3244f5` |
| 34 | `theorem` | [zip_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-eq-append-iff--7281b0de41c3444baaf38408.md) | 269 | `result-track:7281b0de41c3444baaf3840827720551a07b7c5d2dc16519125ee865856e0eb8` |
| 35 | `theorem` | [zip_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-replicate--7342438718152e0cf7ab3cd8.md) | 275 | `result-track:7342438718152e0cf7ab3cd88b1eec89f94150e5dba0ae994dfc499e90f13236` |
| 36 | `theorem` | [unzip_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-fst--3ecdf63fc45a8b6ffc1d96c7.md) | 282 | `result-track:3ecdf63fc45a8b6ffc1d96c70c4805999942bdd20f236a18168776984c41f2ff` |
| 37 | `theorem` | [unzip_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-snd--7a1db554c6cfbdd79f8102a2.md) | 287 | `result-track:7a1db554c6cfbdd79f8102a28e93cfc00047111f74b2b13dd4d86cab4b1029e5` |
| 38 | `theorem` | [unzip_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-eq-map--69dbb2bf6b2fa131b2b83419.md) | 292 | `result-track:69dbb2bf6b2fa131b2b83419a70ad494201ad75754a2094be931a796f6d2017c` |
| 39 | `theorem` | [zip_unzip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-unzip--d2dc8eb1a48005fac3aacff6.md) | 297 | `result-track:d2dc8eb1a48005fac3aacff69da80cba60b592d743cf3939623a35fac41510d2` |
| 40 | `theorem` | [unzip_zip_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-zip-left--d3af310b5326a2604ce90314.md) | 301 | `result-track:d3af310b5326a2604ce90314e2b871ed3155df31781700d7ec24075702659a2f` |
| 41 | `theorem` | [unzip_zip_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-zip-right--c11865cc51e0ef268d82e89a.md) | 307 | `result-track:c11865cc51e0ef268d82e89a658bc78a9bad18ccfc81b045c5749f110f064912` |
| 42 | `theorem` | [unzip_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-zip--728d842a98f1728dd0cb84cf.md) | 313 | `result-track:728d842a98f1728dd0cb84cffb6dde6c6d443f6013cce1e008c96d2f42c80896` |
| 43 | `theorem` | [zip_of_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/zip-of-prod--ca54ad5683d83e051331afad.md) | 319 | `result-track:ca54ad5683d83e051331afad23c2061bab32e556db26704e91f5e2340b019d67` |
| 44 | `theorem` | [unzip_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant7b4c7fa57190d546e2a5e558e78d34c3587b112e59fd91af3cd6a7e4761d5858.lean/declarations/unzip-replicate--35cd8e83319ed5fbdfc95fba.md) | 324 | `result-track:35cd8e83319ed5fbdfc95fbaf0d8404016e6266cd714e7767c905bcf9ffc50fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
