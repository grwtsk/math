# Verification target: GRWTSK.Algebra.LocalProperties.Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd589f84c8b04b906ff0fde13c94399eef57d916",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd589f84c8b04b906ff0fde13c94399eef57d916`.

Source path: `GRWTSK/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FiniteType` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHomProperties` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/macro-rules--eb550110f2e3b23830e0e250.md) | 49 | `declaration-track:eb550110f2e3b23830e0e2501b801d4ce03ff6fc842584a17ddf6c02246d6cb3` |
| 2 | `def` | [LocalizationPreserves](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localizationpreserves--e1ac8c604405df19cfd30c35.md) | 69 | `declaration-track:e1ac8c604405df19cfd30c35221d0563355e6f9aa4632c8894ab655fb37bdf8e` |
| 3 | `def` | [OfLocalizationMaximal](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/oflocalizationmaximal--2369a3a0cb459aad8ec0e9ec.md) | 76 | `declaration-track:2369a3a0cb459aad8ec0e9eca1fccf3e8182dc094cdd7526ed1dc42f756c0b6c` |
| 4 | `def` | [RingHom.LocalizationPreserves](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-localizationpreserves--f12cffc7f87a685c56a7911c.md) | 89 | `declaration-track:f12cffc7f87a685c56a7911cc28580364a67780e20d913e8e2aeb89462f2331a` |
| 5 | `def` | [RingHom.OfLocalizationFiniteSpan](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationfinitespan--3c0edd79f94531b1aa1d1ef2.md) | 102 | `declaration-track:3c0edd79f94531b1aa1d1ef29bea64ff957a8f3341adf619fdcd787349cba192` |
| 6 | `def` | [RingHom.OfLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationspan--5fdaebb88ce68a060ada60e7.md) | 113 | `declaration-track:5fdaebb88ce68a060ada60e7b7c339234ea707f0ded8a0546427cc8718ff941a` |
| 7 | `def` | [RingHom.HoldsForLocalizationAway](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-holdsforlocalizationaway--cf0f0c927602563d4b6928b4.md) | 120 | `declaration-track:cf0f0c927602563d4b6928b45c175880ab6269bb630367261b35ed9e08273a58` |
| 8 | `def` | [RingHom.OfLocalizationFiniteSpanTarget](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationfinitespantarget--2a4fc569aea487cf1b795ffa.md) | 131 | `declaration-track:2a4fc569aea487cf1b795ffa820b48c726127ab7ad9e6cd80420471e8b4046ce` |
| 9 | `def` | [RingHom.OfLocalizationSpanTarget](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationspantarget--bfffd9aa8d12a41655a61b4a.md) | 143 | `declaration-track:bfffd9aa8d12a41655a61b4aae0f50ac4f265234221bef5b7c20e8d90ce7ec53` |
| 10 | `def` | [RingHom.OfLocalizationPrime](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationprime--19f748aaa7f900339abda058.md) | 150 | `declaration-track:19f748aaa7f900339abda0587f9175cf1b23797f11bf3880db412cfc3545da05` |
| 11 | `structure` | [RingHom.PropertyIsLocal](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-propertyislocal--ff3ff7c62c3c0878a2de536f.md) | 157 | `declaration-track:ff3ff7c62c3c0878a2de536f6ef451bba82615ef6a68a52130c4f13fdbc2f1c6` |
| 12 | `theorem` | [RingHom.ofLocalizationSpan_iff_finite](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationspan-iff-finite--2d8929a39400a3e9718d95f6.md) | 164 | `result-track:2d8929a39400a3e9718d95f6be0010eb0168170f289fa24c4015975f6a450002` |
| 13 | `theorem` | [RingHom.ofLocalizationSpanTarget_iff_finite](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-oflocalizationspantarget-iff-finite--dd1fc53bdf171f4e945a86e1.md) | 177 | `result-track:dd1fc53bdf171f4e945a86e11ab28637d5d889b9fef24518996fb126978a8983` |
| 14 | `theorem` | [RingHom.PropertyIsLocal.respectsIso](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-propertyislocal-respectsiso--9468c0b21cabc0e5becffe75.md) | 192 | `result-track:9468c0b21cabc0e5becffe7550f3a41c4a90ae80ce9993362da8691e029cdd43` |
| 15 | `theorem` | [RingHom.LocalizationPreserves.away](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-localizationpreserves-away--f16c6f787c0e1861f96959b9.md) | 204 | `result-track:f16c6f787c0e1861f96959b98369f80ce9b5822f8cbc887027c8a9a53298bcc4` |
| 16 | `theorem` | [RingHom.PropertyIsLocal.ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ringhom-propertyislocal-oflocalizationspan--189080dfcc889c2c4fc0a6fc.md) | 211 | `result-track:189080dfcc889c2c4fc0a6fccff28c675ef66165bf9fe4b6844d32df1eda769f` |
| 17 | `theorem` | [Ideal.le_of_localization_maximal](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ideal-le-of-localization-maximal--3d02c4c6d79419dc581eca68.md) | 233 | `result-track:3d02c4c6d79419dc581eca68e1eefdc0a051451026c3b1f0e58a59a3f0d3b9c7` |
| 18 | `theorem` | [Ideal.eq_of_localization_maximal](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ideal-eq-of-localization-maximal--aace6de5a5a0e2f8b14a3b3b.md) | 257 | `result-track:aace6de5a5a0e2f8b14a3b3bd78f66dbce30eddf5a70a3d2db078c3aad34a128` |
| 19 | `theorem` | [ideal_eq_bot_of_localization'](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ideal-eq-bot-of-localization--14b7f24605f52e54ba69495f.md) | 267 | `result-track:14b7f24605f52e54ba69495f3dc21991770925cc982d0ab9539c1958acfbf84b` |
| 20 | `theorem` | [ideal_eq_bot_of_localization](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/ideal-eq-bot-of-localization--61dcafafd967a3b4e874ec6f.md) | 277 | `result-track:61dcafafd967a3b4e874ec6fb805a2cdbc53e10acbd4962320b437387f9df81a` |
| 21 | `theorem` | [eq_zero_of_localization](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/eq-zero-of-localization--ddf100b1d99f2b5bfe1a7d45.md) | 287 | `result-track:ddf100b1d99f2b5bfe1a7d450d9d10aea26be659ff64c036f630c5002897a023` |
| 22 | `theorem` | [localization_isReduced](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localization-isreduced--06a65546cad11cbb718f577d.md) | 304 | `result-track:06a65546cad11cbb718f577d940a1114fd29fa4e9463890cadbc3897b3a99e79` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/instance--dfd662f66f330233cca7fd25.md) | 324 | `declaration-track:dfd662f66f330233cca7fd254201880898aeae050bd3bf1cc4fba5df69c6e5ef` |
| 24 | `theorem` | [isReduced_ofLocalizationMaximal](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/isreduced-oflocalizationmaximal--29b60081b93551084317b77f.md) | 327 | `result-track:29b60081b93551084317b77fb0687b49fbfb259c8935e357b97cc2e5dcc9fd58` |
| 25 | `theorem` | [localizationPreserves_surjective](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localizationpreserves-surjective--9793c4818af1b0fda3a6e426.md) | 341 | `result-track:9793c4818af1b0fda3a6e426a508161e33c4ea216b533dafa093cfc56993f5d5` |
| 26 | `theorem` | [surjective_ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/surjective-oflocalizationspan--44c4bc83d76d1a45d078396b.md) | 350 | `result-track:44c4bc83d76d1a45d078396ba360f9d9bc9a2d8fa96eb47b5af28b0a59cb5185` |
| 27 | `theorem` | [localization_finite](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localization-finite--72f16717cb4b1b48ba94c654.md) | 374 | `result-track:72f16717cb4b1b48ba94c654ad32b6ec7cfcbadd42b618c807b686636b713b75` |
| 28 | `theorem` | [localization_away_map_finite](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localization-away-map-finite--9807f67427534694a35a670d.md) | 409 | `result-track:9807f67427534694a35a670d96f0c0b041db6472d535ad90a8a155f037530368` |
| 29 | `theorem` | [IsLocalization.smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/islocalization-smul-mem-finsetintegermultiple-span--8499e353d042dfab1cbb4443.md) | 419 | `result-track:8499e353d042dfab1cbb444323a0a6c4262a904b2977a55e3b91336a146e517e` |
| 30 | `theorem` | [multiple_mem_span_of_mem_localization_span](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/multiple-mem-span-of-mem-localization-span--9e7d147eb96c1d82f1c861fb.md) | 458 | `result-track:9e7d147eb96c1d82f1c861fb54edd103ea479709def6aeaf6fc5ebe268868c01` |
| 31 | `theorem` | [multiple_mem_adjoin_of_mem_localization_adjoin](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/multiple-mem-adjoin-of-mem-localization-adjoin--9b45f2739803cdc35407e3f4.md) | 483 | `result-track:9b45f2739803cdc35407e3f48c0237a433446bd9829c878c9142e230d96aaa1b` |
| 32 | `theorem` | [finite_ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/finite-oflocalizationspan--a1b0421e142d6bd6c58b66b8.md) | 492 | `result-track:a1b0421e142d6bd6c58b66b80d701aa5d2d079f425752afd4f848c9c872ab0d8` |
| 33 | `theorem` | [localization_finiteType](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localization-finitetype--32a5590bb2e6a39ac7aaed41.md) | 539 | `result-track:32a5590bb2e6a39ac7aaed41b08becd0e496cfc15df63c8c41d4df7534e15855` |
| 34 | `theorem` | [localization_away_map_finiteType](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/localization-away-map-finitetype--36f351d728d68c5879869098.md) | 569 | `result-track:36f351d728d68c58798690987a2233358f61c5c4349c0ca0895714ca54e3763b` |
| 35 | `theorem` | [IsLocalization.exists_smul_mem_of_mem_adjoin](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/islocalization-exists-smul-mem-of-mem-adjoin--0521eb7db5ec971049f24dd6.md) | 582 | `result-track:0521eb7db5ec971049f24dd62aa130cb84ffeb685db5555e069272c171182304` |
| 36 | `theorem` | [IsLocalization.lift_mem_adjoin_finsetIntegerMultiple](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/islocalization-lift-mem-adjoin-finsetintegermultiple--aaee97f3adda48db0db696ce.md) | 608 | `result-track:aaee97f3adda48db0db696ce6164d67fdc7452ee627a3c25e45fcdd6509def45` |
| 37 | `theorem` | [finiteType_ofLocalizationSpan](../../../../mathematics/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/declarations/finitetype-oflocalizationspan--deb746151c2ec5d4f7a91750.md) | 621 | `result-track:deb746151c2ec5d4f7a91750ce9713faec7c490abb50cf2a04e0542109ab044c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
