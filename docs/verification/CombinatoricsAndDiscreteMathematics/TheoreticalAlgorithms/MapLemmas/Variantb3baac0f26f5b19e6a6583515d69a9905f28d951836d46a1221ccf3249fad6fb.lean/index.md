# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapLemmas.Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b0e6014cb283931921a22ef5c8d07202bcfbc20",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b0e6014cb283931921a22ef5c8d07202bcfbc20`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean.json)

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
| 1 | `theorem` | [mapAccumr_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr--8731f666451f46ace265e5a4.md) | 27 | `result-track:8731f666451f46ace265e5a47bd605e0b327c57d822b82e302ddad61991c2077` |
| 2 | `theorem` | [mapAccumr_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-map--6b71e472bf4018132c2bf111.md) | 38 | `result-track:6b71e472bf4018132c2bf111740687bd78a81cdad26dcd88756a7f523c056f24` |
| 3 | `theorem` | [map_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-mapaccumr--94fe2e4aa8fb365c90c1c0fa.md) | 43 | `result-track:94fe2e4aa8fb365c90c1c0fa5cf87471e5fcf83df50177d35af80da7fab6c99d` |
| 4 | `theorem` | [map_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-map--56fbec00ec496cf9b2806614.md) | 50 | `result-track:56fbec00ec496cf9b280661445b2f115eec125cd303c60c5f3ea44a4168564ea` |
| 5 | `theorem` | [mapAccumr₂_mapAccumr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr-left--173f7260c5db60753065aea1.md) | 60 | `result-track:173f7260c5db60753065aea160026769f773509ea4146291d27e39d25f864fdb` |
| 6 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-map-left--9b7aa9c42c1b634d5025f34d.md) | 71 | `result-track:9b7aa9c42c1b634d5025f34dc5f00d07cba32f3716a5674431cb1c9e87bda264` |
| 7 | `theorem` | [mapAccumr₂_mapAccumr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr-right--41d84ea69fce7ba4e09d517b.md) | 76 | `result-track:41d84ea69fce7ba4e09d517b19fb3106ec780484b176a750f53a2806a3378101` |
| 8 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-map-right--b73f4c3e962f581421bc29ae.md) | 87 | `result-track:b73f4c3e962f581421bc29aed3f3c242836e404939dafd1da5fb510d5edc5fc5` |
| 9 | `theorem` | [mapAccumr_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr--c6648fc0f0292d2c78164928.md) | 92 | `result-track:c6648fc0f0292d2c78164928df04129a8f14723a6221129f525be626bba5993b` |
| 10 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-map--8f366bcebdd058aec9259e95.md) | 103 | `result-track:8f366bcebdd058aec9259e9500425c3d29a53518fc06553047fe3a4ab126b724` |
| 11 | `theorem` | [mapAccumr₂_mapAccumr₂_left_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr-left-left--f7b89ca948555be5419ae3d9.md) | 108 | `result-track:f7b89ca948555be5419ae3d9a0183f43b8ba11c25bb328b64172eb908abb54fb` |
| 12 | `theorem` | [mapAccumr₂_mapAccumr₂_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr-left-right--7f66a2c0a945d0836b0d23ed.md) | 120 | `result-track:7f66a2c0a945d0836b0d23ed4d796d61c0afd66e5d4422480920b9b6b12923e9` |
| 13 | `theorem` | [mapAccumr₂_mapAccumr₂_right_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr-right-left--f5d4022b60ce30ecc76f4aff.md) | 133 | `result-track:f5d4022b60ce30ecc76f4aff263cfa252d5c5f6e4ac967fd88e3d864bc106ae4` |
| 14 | `theorem` | [mapAccumr₂_mapAccumr₂_right_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-mapaccumr-right-right--680d3a889ae3838851d0ca2f.md) | 145 | `result-track:680d3a889ae3838851d0ca2fbb272c6e019d7995fd25a2b1812a74f7bb883a9c` |
| 15 | `theorem` | [mapAccumr_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-bisim--e871332948f0e0cfefbe8d6e.md) | 173 | `result-track:e871332948f0e0cfefbe8d6e44c595a86c983c59b3570e65bab9ab161b3f01cf` |
| 16 | `theorem` | [mapAccumr_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-bisim-tail--5630828b1d6658d2052d9f33.md) | 185 | `result-track:5630828b1d6658d2052d9f33f079ce15ad4e6940c497954636363d0e9b214aa2` |
| 17 | `theorem` | [mapAccumr₂_bisim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-bisim--d0d46bf74863dc789e9354e1.md) | 192 | `result-track:d0d46bf74863dc789e9354e15f7ab492de6ffc3c3fab112cbb8ec0cf67a9fe03` |
| 18 | `theorem` | [mapAccumr₂_bisim_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-bisim-tail--b6d84aabc6f936784e4e571b.md) | 205 | `result-track:b6d84aabc6f936784e4e571b415683ff914dd9c1bc9c6a11b4468b31d25c9a0a` |
| 19 | `theorem` | [map_eq_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-eq-mapaccumr--cc8810574d7174e99c027dcb.md) | 224 | `result-track:cc8810574d7174e99c027dcb1a48efaedfdc612bff085ad80451d78d3264b95f` |
| 20 | `theorem` | [mapAccumr_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-eq-map--5f5f65bf19d1c66b3f0caf88.md) | 234 | `result-track:5f5f65bf19d1c66b3f0caf88715b336ed743246338388ac0aa269996d4365059` |
| 21 | `theorem` | [map₂_eq_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-eq-mapaccumr--e7a12d3991e248a375874602.md) | 243 | `result-track:e7a12d3991e248a37587460226ef1ee3438aac2e7451d8bb93df0db835818e9f` |
| 22 | `theorem` | [mapAccumr₂_eq_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-eq-map--c641cbeab7122a21a7bb78df.md) | 252 | `result-track:c641cbeab7122a21a7bb78dfe2a1172fab320ff3dbc361b1b1f6b96b0fa8158d` |
| 23 | `theorem` | [mapAccumr_eq_map_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-eq-map-of-constant-state--ff62200aacc5cde7efb36f3f.md) | 266 | `result-track:ff62200aacc5cde7efb36f3f0c66f1014b23baed661f10e44def97e53403389a` |
| 24 | `theorem` | [mapAccumr₂_eq_map₂_of_constant_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-eq-map-of-constant-state--f084f14d6005e913f0e32406.md) | 276 | `result-track:f084f14d6005e913f0e324062d4161f3e5a0719a01732f8672364ffc1633399a` |
| 25 | `theorem` | [mapAccumr_eq_map_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-eq-map-of-unused-state--d74a71820fb91278f1cc1b58.md) | 286 | `result-track:d74a71820fb91278f1cc1b58002b549ec05eec04526b6702a61b299a941de828` |
| 26 | `theorem` | [mapAccumr₂_eq_map₂_of_unused_state](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-eq-map-of-unused-state--b036bb9936a8d109abded7c6.md) | 297 | `result-track:b036bb9936a8d109abded7c65f31e1872d826c0195abef4fc97b9cf006ab3439` |
| 27 | `theorem` | [mapAccumr_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-redundant-pair--93045f1c8f6f9422356d2f3c.md) | 307 | `result-track:93045f1c8f6f9422356d2f3ce31ed5985966a650f739ea0e9bb0c0b678acdb7f` |
| 28 | `theorem` | [mapAccumr₂_redundant_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-redundant-pair--46024b8fe57c843eaf90fa3a.md) | 320 | `result-track:46024b8fe57c843eaf90fa3a428a288f0e34d6a3693c5f9d6fd6d4447206f720` |
| 29 | `theorem` | [mapAccumr₂_unused_input_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-unused-input-left--d884c2a8a24985c1a50c19dc.md) | 342 | `result-track:d884c2a8a24985c1a50c19dc414c329cb7c705ee6f172d50be5411dc722699b0` |
| 30 | `theorem` | [mapAccumr₂_unused_input_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-unused-input-right--f16075637afb9fb28c15791c.md) | 355 | `result-track:f16075637afb9fb28c15791c4441295719669a4be5accfa2456d59a56fb59da1` |
| 31 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-comm--a2f33f0ce0cd55a146afd111.md) | 371 | `result-track:a2f33f0ce0cd55a146afd11128da6bbcbb8edc73060c2aa4f5f0242a6dbbf7f4` |
| 32 | `theorem` | [mapAccumr₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-comm--0ac0c6b249ae44293da329c5.md) | 375 | `result-track:0ac0c6b249ae44293da329c50dc74026b2eff9b61f3b49057feab9e490d49a81` |
| 33 | `theorem` | [map₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/map-flip--d1e0d78664a840bda1d8fd75.md) | 387 | `result-track:d1e0d78664a840bda1d8fd75eb2a4f21dbe4daa5b724ecede91c3440ff69cea9` |
| 34 | `theorem` | [mapAccumr₂_flip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapLemmas/Variantb3baac0f26f5b19e6a6583515d69a9905f28d951836d46a1221ccf3249fad6fb.lean/declarations/mapaccumr-flip--21738094694698cc89ae412a.md) | 391 | `result-track:21738094694698cc89ae412afdc8d97f277d6b71d37ed2b60aecd99a98521ca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
