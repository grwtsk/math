# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Resources.Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6b31029b46832871e2e11944ceef5bc6f9c27f6",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6b31029b46832871e2e11944ceef5bc6f9c27f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/coordinate--14d4d5a5928b4fff116822c3.md) | 26 | `declaration-track:14d4d5a5928b4fff116822c3417622e90582a24bd8930b0d97cd16b59f1f2556` |
| 2 | `instance` | [coordinateFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/coordinatefintype--15ebb33de73e3fb2e178004a.md) | 58 | `declaration-track:15ebb33de73e3fb2e178004a25cb066a54db6e0c624f28f4bf6e3f1576c14100` |
| 3 | `abbrev` | [Vector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/vector--27601eeabe7ac3a43320e352.md) | 66 | `declaration-track:27601eeabe7ac3a43320e3522e3d47efc1dbc25b9849170c2041d1365de62939` |
| 4 | `abbrev` | [ResourceVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/resourcevector--3c162f7f4c349b265efdd0d4.md) | 69 | `declaration-track:3c162f7f4c349b265efdd0d414260741d97b69a2e5f6407e72ab2bb8b0c955ea` |
| 5 | `def` | [ComponentwiseLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwisele--af81b2a4aad7c84df77f5e4c.md) | 72 | `declaration-track:af81b2a4aad7c84df77f5e4c930a52b28dd169054c306b76c06315a9d8487ae6` |
| 6 | `def` | [StrictPareto](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/strictpareto--0442faea991342ce6bfa1872.md) | 76 | `declaration-track:0442faea991342ce6bfa18728ad20d6ce2d9de43f3cb0b32a8a9ba7efd3be779` |
| 7 | `def` | [Incomparable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/incomparable--f0a28e5fffd529d624f7bb2d.md) | 80 | `declaration-track:f0a28e5fffd529d624f7bb2d5dda858a3da5c4f85a727a3c830a517455cd23de` |
| 8 | `theorem` | [componentwise_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwise-refl--3339ff9158827758ed91e964.md) | 84 | `result-track:3339ff9158827758ed91e96498a4df9692b693c0c6ac38c50db1fd6bd01f730c` |
| 9 | `theorem` | [componentwise_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwise-trans--9e1885d242d038304800e5e4.md) | 89 | `result-track:9e1885d242d038304800e5e440b77c8f8f37eaeea44edcdc52f1c6dc493f139d` |
| 10 | `theorem` | [componentwise_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwise-antisymm--86eeeb191e717a792bbd7edb.md) | 95 | `result-track:86eeeb191e717a792bbd7edb5a60fbe8b8fff787bf39f1a1b9c1a63432ad253f` |
| 11 | `theorem` | [componentwise_iff_product_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwise-iff-product-le--aa2efba434c9f6a72cada90b.md) | 101 | `result-track:aa2efba434c9f6a72cada90b15bdff59c54ead363c4237b507ad079eb5276b7e` |
| 12 | `theorem` | [strictPareto_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/strictpareto-irrefl--96aec2fb7ecf2478a5c2e8f4.md) | 105 | `result-track:96aec2fb7ecf2478a5c2e8f4198c50251a4a8360f7d0e0188207cceb7cda7714` |
| 13 | `theorem` | [strictPareto_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/strictpareto-trans--3fdae85a1c38fa3c93ec129f.md) | 111 | `result-track:3fdae85a1c38fa3c93ec129fe797582fd64cd875f1707ed097fbeb43ff424b9b` |
| 14 | `theorem` | [strictPareto_not_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/strictpareto-not-reverse--3a1d92a6592d44cd97fbdfb0.md) | 119 | `result-track:3a1d92a6592d44cd97fbdfb0c7e72956a40e151d077c3724d6a835b3046681bc` |
| 15 | `theorem` | [incomparable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/incomparable-symm--2a000a650fbdb16572beb6e6.md) | 126 | `result-track:2a000a650fbdb16572beb6e6da617239adbe7a55aea4fa8c637e0b558759de1e` |
| 16 | `theorem` | [incomparable_no_pareto](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/incomparable-no-pareto--ec8e28ea3a6e720cd4c3f494.md) | 131 | `result-track:ec8e28ea3a6e720cd4c3f4947e55e94aba88aaa3f6e90cea46d268972b24195d` |
| 17 | `theorem` | [componentwise_reindex_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwise-reindex-iff--4a5e876cc88c6616031cce0d.md) | 137 | `result-track:4a5e876cc88c6616031cce0db48e8d7de4ce39ec0d432774a841d2d9148134dc` |
| 18 | `theorem` | [incomparable_reindex_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/incomparable-reindex-iff--156fed492f21f22e7dc8579b.md) | 148 | `result-track:156fed492f21f22e7dc8579be8763a3fe857072e8a343c8d598b770b780e3fee` |
| 19 | `theorem` | [componentwise_add_common_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/componentwise-add-common-iff--612a385b36a4a1eed71a3d2f.md) | 155 | `result-track:612a385b36a4a1eed71a3d2fac59016eb7fb992805bef8461f4d642c04c51b94` |
| 20 | `theorem` | [incomparable_add_common_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/incomparable-add-common-iff--f7e5e24f5fedc207d2b21b2c.md) | 163 | `result-track:f7e5e24f5fedc207d2b21b2c996ef9cd5c223262608a1d369e6f733b9da93be6` |
| 21 | `def` | [ParetoMember](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/paretomember--9373e28e32c139be038cfd84.md) | 171 | `declaration-track:9373e28e32c139be038cfd84d87069ead980de3278e6383653661315f490d516` |
| 22 | `theorem` | [incomparable_pair_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/incomparable-pair-retained--523c5739779941ba72370d6b.md) | 175 | `result-track:523c5739779941ba72370d6bfc70698c18a5a739f92f8823b6278f60d531e7f2` |
| 23 | `structure` | [ScalarProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/scalarprojection--51f6ff9ba000d49c6a54a39a.md) | 193 | `declaration-track:51f6ff9ba000d49c6a54a39ab2f52fb740a72f4c1462a9e4bd80440c15d941cf` |
| 24 | `def` | [ScalarProjection.value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/scalarprojection-value--e56fa91587447fe64ff05070.md) | 202 | `declaration-track:e56fa91587447fe64ff05070b5547374c359e404bb19e9562bea51f8da431bf8` |
| 25 | `theorem` | [ScalarProjection.monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/scalarprojection-monotone--18edc9941d25dec8b2cb17b7.md) | 207 | `result-track:18edc9941d25dec8b2cb17b71caa4dc997b0c5317abba5689abc218bdeeef5c0` |
| 26 | `structure` | [FrozenObjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/frozenobjective--47905a3d705c8737c1df7d3e.md) | 216 | `declaration-track:47905a3d705c8737c1df7d3edc2de7c22d993e7289b8286c71908e027fb6a642` |
| 27 | `def` | [FrozenObjective.Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/frozenobjective-admissible--b23e2552e338d474db3518fd.md) | 231 | `declaration-track:b23e2552e338d474db3518fd621ed9d349a7ac74856224c4a1792c0b0f56e434` |
| 28 | `theorem` | [FrozenObjective.admissible_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/frozenobjective-admissible-of-le--b90adb1c4ae107de593377c8.md) | 236 | `result-track:b90adb1c4ae107de593377c8b19814eb4aa810357b5a0d5b5bf0ba0f79389b8a` |
| 29 | `inductive` | [Measurement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/measurement--a94a0b72ecc59098135454bf.md) | 242 | `declaration-track:a94a0b72ecc59098135454bf3f006be470b6a9392d8d66d2aab77af60aba126c` |
| 30 | `def` | [FullyMeasured](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/fullymeasured--719d07817d80080a7b43a9ac.md) | 252 | `declaration-track:719d07817d80080a7b43a9acf55bbbd0157202f523992aaab7f6f78481cb15c0` |
| 31 | `theorem` | [notMeasured_blocks_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/notmeasured-blocks-completion--057223d014e4637cb4a0c4de.md) | 256 | `result-track:057223d014e4637cb4a0c4dea3a4087e3098359dca73302105851370066a12f3` |
| 32 | `theorem` | [unsupported_ne_measured_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/unsupported-ne-measured-zero--bdaef8a398ac3bf93b42598c.md) | 265 | `result-track:bdaef8a398ac3bf93b42598c643bbc7b0ec6eef4daf58a207372caf612df23fc` |
| 33 | `theorem` | [notMeasured_ne_measured_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/notmeasured-ne-measured-zero--42f2eb0095d8fbf4e47c1af5.md) | 269 | `result-track:42f2eb0095d8fbf4e47c1af5db811cfb6d7fd66eff7feba49ce1fe7d58a81d99` |
| 34 | `structure` | [ResourceReport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/resourcereport--508270bb59854c809550c466.md) | 273 | `declaration-track:508270bb59854c809550c466c5cde91fe4a2c8f092158857aeb69e5e32d20b3b` |
| 35 | `def` | [lowDimensionProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/lowdimensionprofile--ebf8294b25b74d70f325c6d3.md) | 282 | `declaration-track:ebf8294b25b74d70f325c6d398ef6fa1049a91836f712ac4e49b94dfa6c0ac1c` |
| 36 | `def` | [lowDepthProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/lowdepthprofile--5ce29c3d5eb4269048d43155.md) | 288 | `declaration-track:5ce29c3d5eb4269048d43155c3ed682ae6be4bcc73c45a0862487f98caa22599` |
| 37 | `theorem` | [dimension_depth_incomparable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/dimension-depth-incomparable--a98460e1737a86c4f8f13439.md) | 294 | `result-track:a98460e1737a86c4f8f134398772c68ff619a4f478e47e1e8ec6c980ae779f5d` |
| 38 | `theorem` | [depth_objective_preserves_tradeoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant8fb528e3bd8098d4366edf16ba4b0e57a39593568320bb84c5c09e4f2119983d.lean/declarations/depth-objective-preserves-tradeoff--2f660b0429fb7b67c43e13db.md) | 304 | `result-track:2f660b0429fb7b67c43e13db73ed74a07678233b908b4138a5cb20e8b3b98fcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
