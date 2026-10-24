# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a1e609badfb8d884cbbf82f0c58985fcf85dcb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a1e609badfb8d884cbbf82f0c58985fcf85dcb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens--ea2794804b79a88147c2023e.md) | 61 | `declaration-track:ea2794804b79a88147c2023ee38c452926fa867d6492f5b9bfd264ea19638d58` |
| 2 | `lemma` | [dens_eq_card_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-eq-card-div-card--cfc3df9167ade07bd25aa717.md) | 63 | `result-track:cfc3df9167ade07bd25aa717a126be5737d70cf22983e1863bd15efc6b8989eb` |
| 3 | `lemma` | [dens_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-empty--2a9c907191c07636dcbf954e.md) | 65 | `result-track:2a9c907191c07636dcbf954ede58f6647bda854b77281b83971825ef99b73ae2` |
| 4 | `lemma` | [dens_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-singleton--fdb38d423981f7dd23645f00.md) | 67 | `result-track:fdb38d423981f7dd23645f008689466db10580e2747b6e79c20de1e2a1dcf666` |
| 5 | `lemma` | [dens_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-cons--593fbfe9f05b4e2428020ade.md) | 70 | `result-track:593fbfe9f05b4e2428020ade337a4af9f539f823cd5d029599f4014a8ebbd4fd` |
| 6 | `lemma` | [dens_disjUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-disjunion--8a5c5aa0b21ac05d4d7fe515.md) | 73 | `result-track:8a5c5aa0b21ac05d4d7fe51559bf1d3d615b8f060b6d4545b8981c5299f62579` |
| 7 | `lemma` | [dens_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-eq-zero--62eff2f5c389656551d56b08.md) | 76 | `result-track:62eff2f5c389656551d56b08c951361fd40823d592f7e48cccb14a449275bb2c` |
| 8 | `lemma` | [dens_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-ne-zero--4f2447a5311bf159a851a9b1.md) | 79 | `result-track:4f2447a5311bf159a851a9b1abdbb56822d77c628bb8cb6940fe4ed3bd11e19f` |
| 9 | `lemma` | [dens_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-pos--cf8b23633551362e77a32128.md) | 81 | `result-track:cf8b23633551362e77a3212810af8eb055d6f7317d06c4c886b16375aa0bbcca` |
| 10 | `lemma` | [dens_le_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-le-dens--ff5852a5775e93074ba9f45d.md) | 86 | `result-track:ff5852a5775e93074ba9f45d910f771663c0085344f54b10cf4561eea65d6fa4` |
| 11 | `lemma` | [dens_lt_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-lt-dens--76b66a79c4db7b4f74116ad0.md) | 89 | `result-track:76b66a79c4db7b4f74116ad0989cd54b64b34006c0a57021031f6beeaf7aafdc` |
| 12 | `lemma` | [dens_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-mono--2529e7ed03fa11cacfe9cf74.md) | 95 | `result-track:2529e7ed03fa11cacfe9cf744718694432c54c0c59f3d2f627caa6936d6a03be` |
| 13 | `lemma` | [dens_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-strictmono--cf9a96c216068df8ae72def3.md) | 96 | `result-track:cf9a96c216068df8ae72def3f5a6bf3cfa4f51d5dd1efcb95a031be017fe1fdf` |
| 14 | `lemma` | [dens_map_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-map-le--e5c7f4db6ba4d350b993f107.md) | 98 | `result-track:e5c7f4db6ba4d350b993f107609dda6534d0da94285e1cbc661feadd452ba38f` |
| 15 | `lemma` | [dens_map_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-map-equiv--cde4e60c7b951f26cb9087cd.md) | 107 | `result-track:cde4e60c7b951f26cb9087cd2a3af2ab26bb1a88fb34d51c2e967a3f0ba082a5` |
| 16 | `lemma` | [dens_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-image--b3d690b92cebf935c3d88a70.md) | 110 | `result-track:b3d690b92cebf935c3d88a707606a488876ddc28dcfbf0a096f994406b149a64` |
| 17 | `lemma` | [card_mul_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/card-mul-dens--a44f87a0b1bd7d00ef6f9e71.md) | 114 | `result-track:a44f87a0b1bd7d00ef6f9e7193d574688f7cdb8a5b36e0ad2808c366d97f30fe` |
| 18 | `lemma` | [dens_mul_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-mul-card--1072c725a5f6a05fa083301a.md) | 120 | `result-track:1072c725a5f6a05fa083301a9bb6387cbaf20bbc74acd4b8e2bc789056843dfb` |
| 19 | `lemma` | [natCast_card_mul_nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/natcast-card-mul-nnratcast-dens--7f317125ccaaf32c6fa72805.md) | 126 | `result-track:7f317125ccaaf32c6fa728053e50fba5ca7a5a57c1df861e816b53b027f073d7` |
| 20 | `lemma` | [nnratCast_dens_mul_natCast_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/nnratcast-dens-mul-natcast-card--35854eeadb7ba404e0c14cc2.md) | 129 | `result-track:35854eeadb7ba404e0c14cc20360cf382babf5f63aee849dbefa6da4084ec5ec` |
| 21 | `lemma` | [nnratCast_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/nnratcast-dens--094c0ec80534004991f9711e.md) | 132 | `result-track:094c0ec80534004991f9711e01d6a54a3640e82d740fa6494788c7ef9af53b19` |
| 22 | `lemma` | [dens_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-univ--77c29bc9c7a19f00f135ac9c.md) | 140 | `result-track:77c29bc9c7a19f00f135ac9cd874f2bba2f69fc6814d5f4b432ef045ade2bbab` |
| 23 | `lemma` | [dens_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-eq-one--5356d48db10816e8661205dd.md) | 142 | `result-track:5356d48db10816e8661205dd12a2e5ebd2fc9485696f0a8aa9f919d77891e9c9` |
| 24 | `lemma` | [dens_ne_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-ne-one--1f3683d6f4f4138635703809.md) | 145 | `result-track:1f3683d6f4f4138635703809064924c6b4dfb974b5ed7058984284eb10f9acc5` |
| 25 | `lemma` | [dens_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-le-one--e719a9952fbb7a9fca0f47a4.md) | 149 | `result-track:e719a9952fbb7a9fca0f47a459445e4aca786d5f162da24532e33d51d325b1e0` |
| 26 | `lemma` | [dens_union_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-union-add-dens-inter--842fb735cff17b75627f29ce.md) | 157 | `result-track:842fb735cff17b75627f29ce07da22f36560909899c4826c9f42d033663b4747` |
| 27 | `lemma` | [dens_inter_add_dens_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-inter-add-dens-union--a99100d0e1e15478f3c29fdf.md) | 161 | `result-track:a99100d0e1e15478f3c29fdff77012dc32440d233fa10f06f1fdb60998498fa2` |
| 28 | `lemma` | [dens_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-union-of-disjoint--4b253475d598b5e3ba8002b2.md) | 164 | `result-track:4b253475d598b5e3ba8002b24b3ede831ae4db1444ae99c499bd04205e07dc39` |
| 29 | `lemma` | [dens_sdiff_add_dens_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-sdiff-add-dens-eq-dens--055f5c6e3108964aaa60b13f.md) | 167 | `result-track:055f5c6e3108964aaa60b13f1b45f832a43a8ddcfa11d734b50214092e52f6bc` |
| 30 | `lemma` | [dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-sdiff-add-dens--e42a75c12c84e2d754276fa4.md) | 170 | `result-track:e42a75c12c84e2d754276fa491f78e0dce3720b239b087a51065e146dfc98a23` |
| 31 | `lemma` | [dens_sdiff_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-sdiff-comm--290800530e57b213584ea9f2.md) | 173 | `result-track:290800530e57b213584ea9f2abc903007460adc711ddc5a0229bfb5f52738330` |
| 32 | `lemma` | [dens_sdiff_add_dens_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-sdiff-add-dens-inter--798fb2942757f151472cb2c8.md) | 178 | `result-track:798fb2942757f151472cb2c85ae00088aff583b570b1c8806cae760389f5e59f` |
| 33 | `lemma` | [dens_inter_add_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-inter-add-dens-sdiff--d1a6c5ec42c4d2f831600f46.md) | 182 | `result-track:d1a6c5ec42c4d2f831600f467be9efb30d0f1246b7e4cf8cf36cbe2485c96b4b` |
| 34 | `lemma` | [dens_filter_add_dens_filter_not_eq_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-filter-add-dens-filter-not-eq-dens--94a6b977f981c34c0e0d7a94.md) | 185 | `result-track:94a6b977f981c34c0e0d7a946244454f35201cb01017abb43601aa93e3098b27` |
| 35 | `lemma` | [dens_union_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-union-le--f02734d545103286bb6e9796.md) | 191 | `result-track:f02734d545103286bb6e97968773e0481457a212cdd56b19f22136b6b2c8e2fb` |
| 36 | `lemma` | [dens_le_dens_sdiff_add_dens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-le-dens-sdiff-add-dens--0b853af522c237b086ae9b69.md) | 194 | `result-track:0b853af522c237b086ae9b6996c0c3d18b70269be17d97b002ee5c07fce7cd42` |
| 37 | `lemma` | [dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/dens-sdiff--4d2441ddceb3e124c72c5539.md) | 197 | `result-track:4d2441ddceb3e124c72c5539e8bc96d697b57c9ab454e8dfef5a6254d5bdf06d` |
| 38 | `lemma` | [le_dens_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variant671e91d9354db8f29f081b4034b601dcc67fc6035ccfafb1b6eccc5315de60e3.lean/declarations/le-dens-sdiff--28ccc86057abcab2cc36e207.md) | 200 | `result-track:28ccc86057abcab2cc36e207aef56ff825808c6f7c3d00ea1bc2ab9f2949961b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
