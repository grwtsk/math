# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapLemmas.Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "334bb83e0b3f42a646b6512b149373e08892426a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `334bb83e0b3f42a646b6512b149373e08892426a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean.json)

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
| 1 | `theorem` | [mapAccumr_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr--e02bf980d854c70d70879bdc.md) | 35 | `result-track:e02bf980d854c70d70879bdc785ca4bb7cf92fd338511f93bcd7ad7d052ebbd0` |
| 2 | `theorem` | [mapAccumr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-map--ae40834a498a87d2199457b7.md) | 46 | `result-track:ae40834a498a87d2199457b7c6d1a12c2f7acddcc208e86e9ca1079068c6a271` |
| 3 | `theorem` | [map_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-mapaccumr--c6c8e4d1ea79d1520d3178de.md) | 51 | `result-track:c6c8e4d1ea79d1520d3178dedb108e664e142059762f1a6c8cda8bb48abd265e` |
| 4 | `theorem` | [map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-map--a617e76a3d92231ed8a7a96d.md) | 58 | `result-track:a617e76a3d92231ed8a7a96d7afe47f1dc918c5f8533eb4007a1702fbc3df3a7` |
| 5 | `theorem` | [map_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-pmap--8c7f51785c94d15a0fc0c06a.md) | 62 | `result-track:8c7f51785c94d15a0fc0c06ac78d9384a2b9c1c28097141ef79549b7117e1edd` |
| 6 | `theorem` | [pmap_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/pmap-map--9266e7dc434247b94e445085.md) | 66 | `result-track:9266e7dc434247b94e4450851c1d72830ed7b762db95244545bdc6b675e60632` |
| 7 | `theorem` | [mapAccumr₂_mapAccumr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr-left--aec746831c851fecfb4148c3.md) | 77 | `result-track:aec746831c851fecfb4148c36d1580a61a76504703735828f7a45c66c2106a91` |
| 8 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-map-left--e9102ed7fd0f939bb3ed665f.md) | 88 | `result-track:e9102ed7fd0f939bb3ed665fcd51602fde79b8b0ec378ca6afe23905fef0907f` |
| 9 | `theorem` | [mapAccumr₂_mapAccumr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr-right--70bf715f5402d38c9ae56145.md) | 93 | `result-track:70bf715f5402d38c9ae561450bd6244d178be09982773677dc6911286c4f9922` |
| 10 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-map-right--dae553690336477602dfeaee.md) | 104 | `result-track:dae553690336477602dfeaee76c59e98ec221ffb289dab9fc890a666b0e5f01d` |
| 11 | `theorem` | [mapAccumr_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr--5f08b2b8fc2307e59970c030.md) | 109 | `result-track:5f08b2b8fc2307e59970c030e9cf8f31f6a6fa27b61dfda84bd3f6a5eee341ae` |
| 12 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-map--a30faf0d5d0010a3aa97a2f4.md) | 120 | `result-track:a30faf0d5d0010a3aa97a2f4b505202ecee48d139ed2164ae22f90d4ebc49d05` |
| 13 | `theorem` | [mapAccumr₂_mapAccumr₂_left_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr-left-left--91ff55c2778b0f2078b0440d.md) | 125 | `result-track:91ff55c2778b0f2078b0440da40e1651d4dcb9b877842dd0a155043551a058f4` |
| 14 | `theorem` | [mapAccumr₂_mapAccumr₂_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr-left-right--3ed312376d6b80efa7192487.md) | 137 | `result-track:3ed312376d6b80efa7192487a6a540f70c8a75f5a1a5216e47bbc70e9e4544fd` |
| 15 | `theorem` | [mapAccumr₂_mapAccumr₂_right_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr-right-left--9f3edda4b14418298dd71fb7.md) | 150 | `result-track:9f3edda4b14418298dd71fb7063d8a41ddf9e51be6c549f3ea7ab4e7b08baa03` |
| 16 | `theorem` | [mapAccumr₂_mapAccumr₂_right_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-mapaccumr-right-right--67b13e6aad6b8e4c32fb409e.md) | 162 | `result-track:67b13e6aad6b8e4c32fb409eefc8286ad3cc27ae83e00984197687fd3437879b` |
| 17 | `theorem` | [mapAccumr_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-bisim--5bd22da99b30ea0e98b0903e.md) | 190 | `result-track:5bd22da99b30ea0e98b0903ef6fc2922600d579567df7a1b17677a9f66f28cd6` |
| 18 | `theorem` | [mapAccumr_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-bisim-tail--14e7488e9946484a05399efb.md) | 202 | `result-track:14e7488e9946484a05399efb5a1e106e2005b35dfadbfafb5d31342c94d05bdd` |
| 19 | `theorem` | [mapAccumr₂_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-bisim--ef5bba409176fffbaaccdc2f.md) | 209 | `result-track:ef5bba409176fffbaaccdc2fa73a9e227bd75f9b767a4ab9799ee8c8265ebe52` |
| 20 | `theorem` | [mapAccumr₂_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-bisim-tail--ce010caa9771faa3b3b17e88.md) | 222 | `result-track:ce010caa9771faa3b3b17e88a6f304ca74d5633c48e3ff753e96c65fb201e485` |
| 21 | `theorem` | [map_eq_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-eq-mapaccumr--ddf1cd833e1b32f1aea16737.md) | 241 | `result-track:ddf1cd833e1b32f1aea167376615cc012f85765afe50cb41f8002e873b807ab1` |
| 22 | `theorem` | [mapAccumr_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-eq-map--47b7b4536bf94ed588ea730b.md) | 250 | `result-track:47b7b4536bf94ed588ea730bd0e6c6d44aefc69a292d9963bcd55b804b83c535` |
| 23 | `theorem` | [map₂_eq_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-eq-mapaccumr--2cffc0e3e94a987af9bf09da.md) | 259 | `result-track:2cffc0e3e94a987af9bf09dab38dceaf01246eb4153fba3e8141e03648e569f7` |
| 24 | `theorem` | [mapAccumr₂_eq_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-eq-map--d69b2dc3d442350ccd8ec9ab.md) | 268 | `result-track:d69b2dc3d442350ccd8ec9ab4e7a40ef19e02ee74ac576d482fee3fba8ede6c5` |
| 25 | `theorem` | [mapAccumr_eq_map_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-eq-map-of-constant-state--15f32653960331fc987fba14.md) | 282 | `result-track:15f32653960331fc987fba146813d7115538287e5458995afd40a2b1c9734e8f` |
| 26 | `theorem` | [mapAccumr₂_eq_map₂_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-eq-map-of-constant-state--2caa6edc16247b95637e86be.md) | 291 | `result-track:2caa6edc16247b95637e86bee07fa5649a35f4b51242e80d2bf742830b78d4dd` |
| 27 | `theorem` | [mapAccumr_eq_map_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-eq-map-of-unused-state--f5224826157a7a435cf03c26.md) | 301 | `result-track:f5224826157a7a435cf03c26054d2b9f6d580cfa68e12d248b36a93ab6fd9ccd` |
| 28 | `theorem` | [mapAccumr₂_eq_map₂_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-eq-map-of-unused-state--3728aa2661de099d5af87d5d.md) | 312 | `result-track:3728aa2661de099d5af87d5dade3fdaa68cab829172bf22ce997f0aef537eaae` |
| 29 | `theorem` | [mapAccumr_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-redundant-pair--bc3f07a20d48589320498b1b.md) | 322 | `result-track:bc3f07a20d48589320498b1b961ca7bb4ca1ef954c23391c2bf2864dced9c227` |
| 30 | `theorem` | [mapAccumr₂_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-redundant-pair--93b8b8d8913f9c9cf16ab1f0.md) | 335 | `result-track:93b8b8d8913f9c9cf16ab1f01e2af24b2308931cc9244a4d1677aef6f73529e3` |
| 31 | `theorem` | [mapAccumr₂_unused_input_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-unused-input-left--a491e3aff5fd810692a897b8.md) | 357 | `result-track:a491e3aff5fd810692a897b88825bd7c1a96fb7740cc87aba041afd34fdca6f0` |
| 32 | `theorem` | [mapAccumr₂_unused_input_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-unused-input-right--0d7270baf55b122ded4a6e8c.md) | 369 | `result-track:0d7270baf55b122ded4a6e8c3e99b424d0efc57d677165138154ec57f28867f1` |
| 33 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-comm--cf94611f39833de445eaaccb.md) | 384 | `result-track:cf94611f39833de445eaaccb597fe1f289fc69a714e3d75118b52dd3ec371c1c` |
| 34 | `theorem` | [mapAccumr₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-comm--01eb99be97459d14c1cf1796.md) | 388 | `result-track:01eb99be97459d14c1cf179689efe41a8560f5e479f045900c239be7e20ab265` |
| 35 | `theorem` | [map₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/map-flip--aedd6405156a3b3531e5abae.md) | 400 | `result-track:aedd6405156a3b3531e5abae1a129c84a6716c1602cf5abe8b40ab8c37e36bb0` |
| 36 | `theorem` | [mapAccumr₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variant133b42de4a098660cddfe607cb76d81862acfd723e9fb4947e28b623c6a6de94.lean/declarations/mapaccumr-flip--add775fec32ba5d57a6fcfed.md) | 404 | `result-track:add775fec32ba5d57a6fcfedb30e2adaf2e954e2585ec6a26a872921eae10c07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
