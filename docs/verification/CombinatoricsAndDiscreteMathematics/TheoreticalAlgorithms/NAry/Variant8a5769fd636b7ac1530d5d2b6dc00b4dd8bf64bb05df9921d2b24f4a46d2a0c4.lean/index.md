# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NAry.Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49895d01a83129b5a91df249f05e311930583dca",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49895d01a83129b5a91df249f05e311930583dca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map--2b4097860f6ed2c8a7db73fa.md) | 46 | `declaration-track:2b4097860f6ed2c8a7db73fa9fc5fd6fb8b08937c93cb72f33bbf14077891f65` |
| 2 | `theorem` | [map₂_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-def--0107219b8a9a9f485ca6041e.md) | 51 | `result-track:0107219b8a9a9f485ca6041e185fc8ad2ad3526fe3350a63b3e81071e753a327` |
| 3 | `theorem` | [map₂_some_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-some-some--6dff5cb32f04ee5acd892aa1.md) | 56 | `result-track:6dff5cb32f04ee5acd892aa1dc728cd8f30b6f04410b0b9c5222e8208887647e` |
| 4 | `theorem` | [map₂_coe_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-coe-coe--18f0ce1a5ece8663c6a9fe37.md) | 58 | `result-track:18f0ce1a5ece8663c6a9fe37f8cc0d0217f319c70cfbe7ed31ade157a40ca1a1` |
| 5 | `theorem` | [map₂_none_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-none-left--0d6ab25783508110da27fa04.md) | 61 | `result-track:0d6ab25783508110da27fa045a65458c2a348d412adfaaaa54b03da9e5273dda` |
| 6 | `theorem` | [map₂_none_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-none-right--213544952b8270e436182190.md) | 64 | `result-track:213544952b8270e43618219093c5a10a79413bc6bba3ce26524ccfe32d96f8ee` |
| 7 | `theorem` | [map₂_coe_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-coe-left--49585266bbd5790da121b4c1.md) | 67 | `result-track:49585266bbd5790da121b4c13da9d9ca88231a359da92b58bb5e4c6ad8015f2c` |
| 8 | `theorem` | [map₂_coe_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-coe-right--a3e7aeee8a75e26087478437.md) | 72 | `result-track:a3e7aeee8a75e2608747843745e4b3e5cf2033231a6aa2045257ce33623ea153` |
| 9 | `theorem` | [mem_map₂_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/mem-map-iff--2978623ea17e5abf1d6f201a.md) | 75 | `result-track:2978623ea17e5abf1d6f201af40587621bb509dc80ede01ae630e514fb417c61` |
| 10 | `theorem` | [map₂_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-eq-some-iff--9daf547c9dae3b10ef900c67.md) | 80 | `result-track:9daf547c9dae3b10ef900c67e5fac72c34e1cbd5f16f620d34e4bcd25f5a1a66` |
| 11 | `theorem` | [map₂_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-eq-none-iff--9a00e8f4c03539039f917022.md) | 85 | `result-track:9a00e8f4c03539039f9170227e9a674cd34811b25209d2c0fc735ba83e0909b5` |
| 12 | `theorem` | [map₂_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-swap--6c37f22b40619da01ff7d90e.md) | 88 | `result-track:6c37f22b40619da01ff7d90ee1911e6951954d4e072ea697423d8b71cc41942e` |
| 13 | `theorem` | [map_map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map--8cf50f7eb9ec882cab564d92.md) | 91 | `result-track:8cf50f7eb9ec882cab564d9259829b6003f0b5bb6883e9deda38792789067412` |
| 14 | `theorem` | [map₂_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-left--5c6d6188153bc58702a295c7.md) | 94 | `result-track:5c6d6188153bc58702a295c749f9633ae56feac946b5e07c25370fa361b5d34d` |
| 15 | `theorem` | [map₂_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-right--d6303b0e61add60f3fda2878.md) | 97 | `result-track:d6303b0e61add60f3fda28780c616b3bb2fa42804a8fac67d38c3d5683a7d510` |
| 16 | `theorem` | [map₂_curry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-curry--368cd269105e304b5fb95dc0.md) | 101 | `result-track:368cd269105e304b5fb95dc0408018c6a0a54b26fa3f6a88bed0e271b38072b4` |
| 17 | `theorem` | [map_uncurry](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-uncurry--8441918d6722b5135bebc02b.md) | 105 | `result-track:8441918d6722b5135bebc02bc737aa700c775a2515236368d0eb6c0142c50bd1` |
| 18 | `theorem` | [map₂_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-assoc--1399e110479a7d047f5adb58.md) | 119 | `result-track:1399e110479a7d047f5adb58950f5c50f72302c33203be0835c7d765efcac1cb` |
| 19 | `theorem` | [map₂_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-comm--8993fad0a1cc8847d29dc855.md) | 124 | `result-track:8993fad0a1cc8847d29dc855a95d1b4a8690da4c122d5fc707e1728d6ba1a2cd` |
| 20 | `theorem` | [map₂_left_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-left-comm--8743ba0e48430e27ba070353.md) | 127 | `result-track:8743ba0e48430e27ba070353460918de39c15ac2a012774c5867f96d3f456f30` |
| 21 | `theorem` | [map₂_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-right-comm--98448ee4717a93dffa692f23.md) | 132 | `result-track:98448ee4717a93dffa692f2324d4e25b78774a36b835ac5d807db4b70b027e30` |
| 22 | `theorem` | [map_map₂_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-distrib--8994a5540ef5fe5cb2145b00.md) | 137 | `result-track:8994a5540ef5fe5cb2145b0091b6f0822d3c369645aa689169922307a71cd188` |
| 23 | `theorem` | [map_map₂_distrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-distrib-left--c60425cb388324146ef95e06.md) | 148 | `result-track:c60425cb388324146ef95e06011f828d84d508dfba9d6200f9e4687968b4997e` |
| 24 | `theorem` | [map_map₂_distrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-distrib-right--d4e5b1e65f5c86cd0b9275c8.md) | 153 | `result-track:d4e5b1e65f5c86cd0b9275c87ef332a62bc07d72fc9f2b798a7ad57aec7009f0` |
| 25 | `theorem` | [map₂_map_left_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-left-comm--ec3f856d94dba929561c3d83.md) | 158 | `result-track:ec3f856d94dba929561c3d8382892e6704001e96fbcf8f4d4eb0af718940931d` |
| 26 | `theorem` | [map_map₂_right_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-right-comm--610c3e360375f8146c70331f.md) | 163 | `result-track:610c3e360375f8146c70331f6dd2f9d84691c6258185c391ea7d3eafaf439d43` |
| 27 | `theorem` | [map_map₂_antidistrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-antidistrib--0f568c68566c564b2152dbe5.md) | 167 | `result-track:0f568c68566c564b2152dbe52530fb60c0fe09976837a525602ae4c23300b576` |
| 28 | `theorem` | [map_map₂_antidistrib_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-antidistrib-left--16736c412f89ade415ac8e9b.md) | 173 | `result-track:16736c412f89ade415ac8e9b8ff00b862f63199948edc475fc9cbb4a31716db3` |
| 29 | `theorem` | [map_map₂_antidistrib_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-antidistrib-right--6b8aa695139742afc677a7e6.md) | 179 | `result-track:6b8aa695139742afc677a7e6a93e81c4a9e986c419620d3344a8e4f0cd4c3353` |
| 30 | `theorem` | [map₂_map_left_anticomm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-left-anticomm--d7c216a35f0ff2031bac948b.md) | 184 | `result-track:d7c216a35f0ff2031bac948b80c87c6e53384b37d9157055c4af5a991219246a` |
| 31 | `theorem` | [map_map₂_right_anticomm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-map-right-anticomm--3131f07f6a31e0f7a2978afc.md) | 189 | `result-track:3131f07f6a31e0f7a2978afc4b3563aeac0d05d28028ddde7804a8b419b99530` |
| 32 | `lemma` | [map₂_left_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-left-identity--33f897f9262c545a243e075f.md) | 195 | `result-track:33f897f9262c545a243e075fd3d83b4b3fdba18b13828027a43bfc448ca75a8f` |
| 33 | `lemma` | [map₂_right_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NAry/Variant8a5769fd636b7ac1530d5d2b6dc00b4dd8bf64bb05df9921d2b24f4a46d2a0c4.lean/declarations/map-right-identity--e7f690f513170564cd4e107b.md) | 201 | `result-track:e7f690f513170564cd4e107bfe3695aecb4da991f12303ba4f224bdfb7292867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
