# Verification target: GRWTSK.Algebra.Nakayama.Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17f449d4ee829e6ade536df8ea90f5880d27c91d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17f449d4ee829e6ade536df8ea90f5880d27c91d`.

Source path: `GRWTSK/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/eq-smul-of-le-smul-of-le-jacobson--a83921221fc14fa7d8852ec0.md) | 69 | `result-track:a83921221fc14fa7d8852ec090ab91a82b2094bbacfabb888df141b1bc3b2430` |
| 2 | `lemma` | [eq_bot_of_eq_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/eq-bot-of-eq-ideal-smul-of-le-jacobson-annihilator--10ce6f9412b7339dcc05b602.md) | 80 | `result-track:10ce6f9412b7339dcc05b6022b0e6a50918f5caf43afb53fdfaf039bc7572cb2` |
| 3 | `lemma` | [eq_bot_of_eq_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/eq-bot-of-eq-pointwise-smul-of-mem-jacobson-annihilator--35a14b742e22374b43033c22.md) | 86 | `result-track:35a14b742e22374b43033c22ff27413ab366d181f9d88c561f8f713e5c15c864` |
| 4 | `lemma` | [eq_bot_of_set_smul_eq_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/eq-bot-of-set-smul-eq-of-subset-jacobson-annihilator--a35cca806aea9bf8c1a5a0ba.md) | 94 | `result-track:a35cca806aea9bf8c1a5a0baa5c845253fca5225a5d7d668deffc53f9e0833aa` |
| 5 | `lemma` | [top_ne_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/top-ne-ideal-smul-of-le-jacobson-annihilator--af07bbb7cc879e655c8b871c.md) | 100 | `result-track:af07bbb7cc879e655c8b871c250622701fce5fccce8c64936ee1b545fc1af2fd` |
| 6 | `lemma` | [top_ne_set_smul_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/top-ne-set-smul-of-subset-jacobson-annihilator--9990705463132b1beb4d0e9e.md) | 107 | `result-track:9990705463132b1beb4d0e9e5f3cb62e8100e9095b92fb235e3e075cc0e78e70` |
| 7 | `lemma` | [top_ne_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/top-ne-pointwise-smul-of-mem-jacobson-annihilator--df36837f8b5ec7e41011df0b.md) | 115 | `result-track:df36837f8b5ec7e41011df0b66c0d6777eb51600def9dbc99014e30a8c54b56c` |
| 8 | `theorem` | [eq_bot_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/eq-bot-of-le-smul-of-le-jacobson-bot--edebf6b26daf1fabc389b1e3.md) | 126 | `result-track:edebf6b26daf1fabc389b1e35cd2cb6480c84b53dfbb898671bb06cc29c5a4b4` |
| 9 | `theorem` | [sup_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/sup-eq-sup-smul-of-le-smul-of-le-jacobson--b5f27ced8d01d77d9d6caeee.md) | 130 | `result-track:b5f27ced8d01d77d9d6caeeec2380aa4f8972f119829cb5f01f18b1084510dc1` |
| 10 | `theorem` | [sup_smul_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/sup-smul-eq-sup-smul-of-le-smul-of-le-jacobson--6f334de4d8c0f21131af5be8.md) | 149 | `result-track:6f334de4d8c0f21131af5be8b24741f89159a04f7f2142dc54f298f0efad9afa` |
| 11 | `theorem` | [le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/le-of-le-smul-of-le-jacobson-bot--ec149b871e58dc8a6b099de7.md) | 154 | `result-track:ec149b871e58dc8a6b099de7df7f406dfab1d66d5d329cf4960910c984c6bc9f` |
| 12 | `theorem` | [smul_le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/smul-le-of-le-smul-of-le-jacobson-bot--1a7d11a244496419461f0524.md) | 164 | `result-track:1a7d11a244496419461f0524a07bae5c1ffc9007cc6cde50d872d9d769c1749e` |
| 13 | `lemma` | [exists_sub_one_mem_and_smul_le_of_fg_of_le_sup](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/exists-sub-one-mem-and-smul-le-of-fg-of-le-sup--68133671b522d6aaca0fac3a.md) | 170 | `result-track:68133671b522d6aaca0fac3a1e6040a489d3748697a0ec9134532713797bb905` |
| 14 | `lemma` | [le_of_map_mkQ_le_map_mkQ_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/le-of-map-mkq-le-map-mkq-of-le-jacobson-bot--c8b4b959a0e50f63f09fe7ba.md) | 196 | `result-track:c8b4b959a0e50f63f09fe7baf963c625f4a0f91bd6774f6586186de4afff8ca9` |
| 15 | `lemma` | [eq_of_map_mkQ_eq_map_mkQ_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/eq-of-map-mkq-eq-map-mkq-of-le-jacobson-bot--8e4793a0edf71d2cdaf26a59.md) | 205 | `result-track:8e4793a0edf71d2cdaf26a59a4a17bcec6dac4370ccd1ad3ddcc81306846b778` |
| 16 | `theorem` | [exists_injOn_mkQ_image_span_eq_of_span_eq_map_mkQ_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/exists-injon-mkq-image-span-eq-of-span-eq-map-mkq-of-le-jacobson-bot--9b4c639c8389a076a05a201b.md) | 224 | `result-track:9b4c639c8389a076a05a201be2e21eac0b1fdf0faa72b0ea9027f618cc4394a5` |
| 17 | `lemma` | [LinearMap.surjective_of_surjective_comp_mkQ](../../../../mathematics/Algebra/Nakayama/Variantbc0098476618ee7f94f9e1f3c208d967ba128d71765dc4d24088987e119e86f4.lean/declarations/linearmap-surjective-of-surjective-comp-mkq--e9310a263061617aae230653.md) | 237 | `result-track:e9310a263061617aae230653de15fd0f49a65f08b96b6a7ac1674f9aca937c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
