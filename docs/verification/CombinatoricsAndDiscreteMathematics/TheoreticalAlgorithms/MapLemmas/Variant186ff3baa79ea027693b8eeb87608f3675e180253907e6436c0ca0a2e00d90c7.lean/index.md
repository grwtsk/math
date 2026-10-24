# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapLemmas.Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8561ab0dd90a9638b160dc4d521f724157313d4e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8561ab0dd90a9638b160dc4d521f724157313d4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Snoc` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mapAccumr_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr--b05c18d38ac7863459e7146a.md) | 35 | `result-track:b05c18d38ac7863459e7146a8074ca385f8a5a02023ada356bcf7c6feffd0bc2` |
| 2 | `theorem` | [mapAccumr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-map--57fa2e6cee4b3363f2f6b2dc.md) | 46 | `result-track:57fa2e6cee4b3363f2f6b2dc920685f7e0550249f2f7838e5bffb6a1a73c7c96` |
| 3 | `theorem` | [map_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-mapaccumr--0666215ccfd329ae5c504e3c.md) | 51 | `result-track:0666215ccfd329ae5c504e3c77fafbb0c3d7969952fd5ed173562471abf17d6f` |
| 4 | `theorem` | [map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-map--c48f3b4759c8e4bdf551496a.md) | 58 | `result-track:c48f3b4759c8e4bdf551496aabd270562c6f1f6397bcff09d38e99ef9d59b5c5` |
| 5 | `theorem` | [mapAccumr₂_mapAccumr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr-left--3aca743971b32c59a175b379.md) | 68 | `result-track:3aca743971b32c59a175b3796570b8f81dc8dee64fa3b8c80bffac9792a436b4` |
| 6 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-map-left--6b392dafc1ef4031623e16fd.md) | 79 | `result-track:6b392dafc1ef4031623e16fd7dfaac22a67008593ea042e255b988cbd961faba` |
| 7 | `theorem` | [mapAccumr₂_mapAccumr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr-right--9232639a8c574bef09be56f8.md) | 84 | `result-track:9232639a8c574bef09be56f81b1a1f30652f9d53015880c5ba7100b70803827b` |
| 8 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-map-right--fc31efd184fb6cd5cf545094.md) | 95 | `result-track:fc31efd184fb6cd5cf545094ec40da44bf639beabedf508739191a087c71b9e9` |
| 9 | `theorem` | [mapAccumr_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr--404dbba8ef4154dd3295810c.md) | 100 | `result-track:404dbba8ef4154dd3295810c1d5a2fb6bb75e4c8d97479c8f45bc4118415ebae` |
| 10 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-map--c712c4e409e902a0f149795a.md) | 111 | `result-track:c712c4e409e902a0f149795a2028d1b33e80fa6fb81d5d8f125ba94f7211a080` |
| 11 | `theorem` | [mapAccumr₂_mapAccumr₂_left_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr-left-left--38856760b54212b793a43b56.md) | 116 | `result-track:38856760b54212b793a43b569e8c1e294877fef60d9bb513779630ffccffc71c` |
| 12 | `theorem` | [mapAccumr₂_mapAccumr₂_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr-left-right--4c43f20f1e49b8ce73e9f9c1.md) | 128 | `result-track:4c43f20f1e49b8ce73e9f9c110bc529c358a35e16a9e3958adc62fe7821d550c` |
| 13 | `theorem` | [mapAccumr₂_mapAccumr₂_right_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr-right-left--4b3e1a52782aa014f0084efe.md) | 141 | `result-track:4b3e1a52782aa014f0084efee828ce1a67595df0d9d50666d1fc37dbf4e8fb16` |
| 14 | `theorem` | [mapAccumr₂_mapAccumr₂_right_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-mapaccumr-right-right--f60929a7c415aafd51a77895.md) | 153 | `result-track:f60929a7c415aafd51a77895cd14ba95900df1f9d31826f4e17b5b01168d4863` |
| 15 | `theorem` | [mapAccumr_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-bisim--114a7610249a85c6a48b8a52.md) | 181 | `result-track:114a7610249a85c6a48b8a5292f32f6336c681d2829a230a453c9e7596e5ebd8` |
| 16 | `theorem` | [mapAccumr_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-bisim-tail--d15ac2e1394d39f0b1708042.md) | 193 | `result-track:d15ac2e1394d39f0b17080423f3c0d65b1083acb74f6d5656a4b941d73a99dd9` |
| 17 | `theorem` | [mapAccumr₂_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-bisim--f38a88c8526055054257257d.md) | 200 | `result-track:f38a88c8526055054257257dc3738628c0d69bad76773aa91620f1e388bde0cb` |
| 18 | `theorem` | [mapAccumr₂_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-bisim-tail--1c10e481f63bfbc270d11951.md) | 213 | `result-track:1c10e481f63bfbc270d119515f339127582a9d881a2a8f173e8937272fd4b7e5` |
| 19 | `theorem` | [map_eq_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-eq-mapaccumr--d34e257cb19d8b4c26028ff5.md) | 232 | `result-track:d34e257cb19d8b4c26028ff5df9f55016d4fdde99890435d9d633eb23f76855e` |
| 20 | `theorem` | [mapAccumr_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-eq-map--1c0f70209f6b9da134893cd6.md) | 242 | `result-track:1c0f70209f6b9da134893cd6a924ffe3f9b2bb44d2a545fe47b4fee06b5cb2eb` |
| 21 | `theorem` | [map₂_eq_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-eq-mapaccumr--8c59f4595e8ee7dc8fc3108a.md) | 251 | `result-track:8c59f4595e8ee7dc8fc3108a770db9f73c05b24d546deab64dd652bc48247427` |
| 22 | `theorem` | [mapAccumr₂_eq_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-eq-map--f5f85a18dfc2fe9330bf6093.md) | 260 | `result-track:f5f85a18dfc2fe9330bf6093c60990183a2467fdf3871cb03c16ea913b81a7ae` |
| 23 | `theorem` | [mapAccumr_eq_map_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-eq-map-of-constant-state--fa8917418631f61c836bb558.md) | 274 | `result-track:fa8917418631f61c836bb5585524f7eca463509207296dd7ebcbf8f9a258216b` |
| 24 | `theorem` | [mapAccumr₂_eq_map₂_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-eq-map-of-constant-state--05304d9c9e699b79054032a0.md) | 284 | `result-track:05304d9c9e699b79054032a0b64ac602787dfcd4105b65c315f333f1c80c9de2` |
| 25 | `theorem` | [mapAccumr_eq_map_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-eq-map-of-unused-state--eb666f303084750cc7b5bffd.md) | 294 | `result-track:eb666f303084750cc7b5bffd9b499c15e2e13967b4b4d36e4a96287ade15b96c` |
| 26 | `theorem` | [mapAccumr₂_eq_map₂_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-eq-map-of-unused-state--66ec46674cf8b231db8293e5.md) | 305 | `result-track:66ec46674cf8b231db8293e5fd60284aec5056bff8740db056877b2df9c7d011` |
| 27 | `theorem` | [mapAccumr_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-redundant-pair--e00f83cc7bd08b7ff9ef1ffa.md) | 315 | `result-track:e00f83cc7bd08b7ff9ef1ffa852a6533bb6bcf4f67ea3082425d7352c361301b` |
| 28 | `theorem` | [mapAccumr₂_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-redundant-pair--edf132e0b333b2b75fbe0bbe.md) | 328 | `result-track:edf132e0b333b2b75fbe0bbe41c5f3a7de8b96b2dc94112c18f9e2405b207b5d` |
| 29 | `theorem` | [mapAccumr₂_unused_input_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-unused-input-left--c18067cd2f771c549de56ec2.md) | 350 | `result-track:c18067cd2f771c549de56ec29dc1bfea4b43a0cbae2b58ef528d8671abd138df` |
| 30 | `theorem` | [mapAccumr₂_unused_input_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-unused-input-right--c917f17e410323bc954d5f66.md) | 363 | `result-track:c917f17e410323bc954d5f66b7f58a477d1dd7ecf39b973048142ed5320f3798` |
| 31 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-comm--1dec90b1065553f7f9c94347.md) | 379 | `result-track:1dec90b1065553f7f9c9434735f5dcaa916e50f85a8eb6845eb34aae064ca961` |
| 32 | `theorem` | [mapAccumr₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-comm--04731eba19f98635297800c3.md) | 383 | `result-track:04731eba19f98635297800c3000f96c349b27f36c2924f6686633e71e23ceb50` |
| 33 | `theorem` | [map₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/map-flip--35880985228d86b0908a9a93.md) | 395 | `result-track:35880985228d86b0908a9a935320baec9fa6d51f2a24a63addfa13a99cab0340` |
| 34 | `theorem` | [mapAccumr₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant186ff3baa79ea027693b8eeb87608f3675e180253907e6436c0ca0a2e00d90c7.lean/declarations/mapaccumr-flip--2774b311f84509b7c2d9f308.md) | 399 | `result-track:2774b311f84509b7c2d9f3081d7cbe1eee8852ce7dfd822b6d2a7332d8b760f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
