# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab7cb494f5e279a5b5cb6d28dc43e6e6782ead26`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [interedges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges--b4d4a7e732caa85307240c57.md) | 45 | `declaration-track:b4d4a7e732caa85307240c57b9a07587f60908412f351caccf896a5f0caa11ec` |
| 2 | `def` | [edgeDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity--c53adbd824c9a5bd08fd421c.md) | 48 | `declaration-track:c53adbd824c9a5bd08fd421cb9e708c9daeb3a29bca81d215266c92e207af5ca` |
| 3 | `theorem` | [mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mem-interedges-iff--b0c0b4e760be780b6b160679.md) | 52 | `result-track:b0c0b4e760be780b6b160679b931f9a7458175b28268845d3a2059e7af9f81fb` |
| 4 | `theorem` | [mk_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mk-mem-interedges-iff--594882b3eef4562319108b62.md) | 55 | `result-track:594882b3eef4562319108b628d24ff0813b179e0ac2e7d7d5ed7cb363f7f07b5` |
| 5 | `theorem` | [interedges_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-empty-left--2473c44e407085cecf1d779f.md) | 59 | `result-track:2473c44e407085cecf1d779fe08b0aa66ea0921ee48dd997420f722ade8cc474` |
| 6 | `theorem` | [interedges_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-mono--a6c9e107577cac682b11c0f1.md) | 62 | `result-track:a6c9e107577cac682b11c0f16058446de8cc9a8b87cf746c697103bd98889b34` |
| 7 | `theorem` | [card_interedges_add_card_interedges_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-add-card-interedges-compl--381bd71bad90f5163ce9090f.md) | 69 | `result-track:381bd71bad90f5163ce9090fce6396f1b1320c17158e3d735060ca61883b5024` |
| 8 | `theorem` | [interedges_disjoint_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-disjoint-left--8515b5557bc389048159a693.md) | 75 | `result-track:8515b5557bc389048159a693bf317e27122dfd4562ef43d5faf509e00720d5ab` |
| 9 | `theorem` | [interedges_disjoint_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-disjoint-right--631af908bd7e4a55997f784d.md) | 82 | `result-track:631af908bd7e4a55997f784d9a7a28b4a580c34ec8cae083a4e6d41c4c4d58c2` |
| 10 | `lemma` | [interedges_eq_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-eq-biunion--f5fda16cbdb1d176cadb93ba.md) | 93 | `result-track:f5fda16cbdb1d176cadb93ba0462d4c58990d8b4108bca7e70ae0fd89a3e4491` |
| 11 | `theorem` | [interedges_biUnion_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-biunion-left--bb3c7b7cd1243c77e6ac6d76.md) | 98 | `result-track:bb3c7b7cd1243c77e6ac6d76d56507e8390f657b867795d7bbbfc2f16dd5d0b8` |
| 12 | `theorem` | [interedges_biUnion_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-biunion-right--f50d05af48134b4f61afd5af.md) | 103 | `result-track:f50d05af48134b4f61afd5af38a5ab0e45d38f018e643c86e87327e9694f0979` |
| 13 | `theorem` | [interedges_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-biunion--90931d85ccdb0401580e107c.md) | 110 | `result-track:90931d85ccdb0401580e107c21ff841acde8f59fc1f6778a10382a6e57e37a23` |
| 14 | `theorem` | [card_interedges_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-le-mul--896c29674c8ff9b866307144.md) | 117 | `result-track:896c29674c8ff9b86630714438b4c44bbee1978fb7d1dca9ca33a83b2a19a372` |
| 15 | `theorem` | [edgeDensity_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-nonneg--d90bdfdfc6cb53be34dab07c.md) | 121 | `result-track:d90bdfdfc6cb53be34dab07cb5aad794e60cce3497afa7a84afd110bb9d1f160` |
| 16 | `theorem` | [edgeDensity_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-le-one--a0d85a32ec785b9edec99319.md) | 124 | `result-track:a0d85a32ec785b9edec99319904061275a6cdcc0af8a9f8ce67834d3cd795465` |
| 17 | `theorem` | [edgeDensity_add_edgeDensity_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-add-edgedensity-compl--6f5afc2dca23611c6431b851.md) | 129 | `result-track:6f5afc2dca23611c6431b8513f891bb1029a290ee7714e861188aeb9756d4958` |
| 18 | `theorem` | [edgeDensity_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-empty-left--9d6c54ed96e51578f8d151fa.md) | 136 | `result-track:9d6c54ed96e51578f8d151faf9853c9d61bba39690f8235bfc9281202cf61ab4` |
| 19 | `theorem` | [edgeDensity_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-empty-right--eaad8a7dee71cac2fd8315dd.md) | 140 | `result-track:eaad8a7dee71cac2fd8315dd53fbd35edcff2050e77d422f36395321860e3e46` |
| 20 | `theorem` | [card_interedges_finpartition_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-finpartition-left--2e3a604abe30456cc19a681d.md) | 143 | `result-track:2e3a604abe30456cc19a681de0be2e9714851b0f969ebcd423a013554e1c7540` |
| 21 | `theorem` | [card_interedges_finpartition_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-finpartition-right--9a6b50847f01b3815a14dfac.md) | 150 | `result-track:9a6b50847f01b3815a14dfac95bdd8ebf9bc342422d782be69c43575183ded4f` |
| 22 | `theorem` | [card_interedges_finpartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-finpartition--29080f1c2f7513cffa90e1b8.md) | 157 | `result-track:29080f1c2f7513cffa90e1b8817c1de685ba6e86c152db83e605424bbe3ad502` |
| 23 | `theorem` | [mul_edgeDensity_le_edgeDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mul-edgedensity-le-edgedensity--bcf8c13e5e8c09abafc993ae.md) | 164 | `result-track:bcf8c13e5e8c09abafc993ae2f49610afba9a10692757ac4de1705b59cf480b7` |
| 24 | `theorem` | [edgeDensity_sub_edgeDensity_le_one_sub_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-sub-edgedensity-le-one-sub-mul--11b76cce5d9d9ae3cedcc6b5.md) | 172 | `result-track:11b76cce5d9d9ae3cedcc6b59ed4d3293e98b9ffe4c1f0ca2824b271bcf29eb0` |
| 25 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_one_sub_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/abs-edgedensity-sub-edgedensity-le-one-sub-mul--e3bf1850f4183cdf555ff974.md) | 183 | `result-track:e3bf1850f4183cdf555ff9741a2b0d290e879e860086d423025912169b372d08` |
| 26 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/abs-edgedensity-sub-edgedensity-le-two-mul-sub-sq--08847ecba76357b26d40aaf5.md) | 193 | `result-track:08847ecba76357b26d40aaf54451a7911e123f28d880396354fdaf89afdca692` |
| 27 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/abs-edgedensity-sub-edgedensity-le-two-mul--fd1d8e9d3cd8138c6d0f1ef6.md) | 224 | `result-track:fd1d8e9d3cd8138c6d0f1ef62e2571441ed72f669d5452ff3754e9b4db850bf7` |
| 28 | `theorem` | [swap_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/swap-mem-interedges-iff--4d6a3b5a5aeeb2729921be88.md) | 243 | `result-track:4d6a3b5a5aeeb2729921be882bfebbd8a434a7e3a3fff2beb5527d1df8efd2d2` |
| 29 | `theorem` | [mk_mem_interedges_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mk-mem-interedges-comm--2092a9abb099e023b25312b8.md) | 248 | `result-track:2092a9abb099e023b25312b836765cdd2b8c95e7037eae3a3eae2c6ab9987b57` |
| 30 | `theorem` | [card_interedges_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-comm--bc3fb6ab458defe32fddff39.md) | 252 | `result-track:bc3fb6ab458defe32fddff39ce0f88fb3f4089ff0eddbf362464e3a89eea0a4a` |
| 31 | `theorem` | [edgeDensity_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-comm--87b2220e418c44b6bfcd069f.md) | 258 | `result-track:87b2220e418c44b6bfcd069f475fd63030b695711612058015b98a9c0c7de59f` |
| 32 | `def` | [interedges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges--8bd71a3220b1f611b3026b7d.md) | 276 | `declaration-track:8bd71a3220b1f611b3026b7d8a349f0d6467b574febfa6859d70272fcc030119` |
| 33 | `def` | [edgeDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity--c1db65b7661b699d9a3ad8fb.md) | 280 | `declaration-track:c1db65b7661b699d9a3ad8fb3d88e20a961a463d5016f68093393a61d84b0e3b` |
| 34 | `lemma` | [interedges_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-def--37a188b20a357f3e8be05548.md) | 283 | `result-track:37a188b20a357f3e8be055486a7fe1fd78a2ecd140f58de8e052369d64871d4f` |
| 35 | `lemma` | [edgeDensity_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-def--c8fa37b1a30212e2ac226b47.md) | 285 | `result-track:c8fa37b1a30212e2ac226b473d6ff10e50ab69703bc600bacb09eb45ec5c5b2c` |
| 36 | `theorem` | [card_interedges_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-div-card--c5816d32c9d50fe1b75e99c2.md) | 287 | `result-track:c5816d32c9d50fe1b75e99c2d9f2f308340a1910afcea2a2b8d6d6672de6b977` |
| 37 | `theorem` | [mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mem-interedges-iff--b989d5b120076514080a034c.md) | 291 | `result-track:b989d5b120076514080a034c6983112ef021b1bce9ee5e3f1451456127603ea2` |
| 38 | `theorem` | [mk_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mk-mem-interedges-iff--c677b5bb92762318efa8decb.md) | 294 | `result-track:c677b5bb92762318efa8decb052ace128b52c805eee01be8db46aacd102b8f90` |
| 39 | `theorem` | [interedges_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-empty-left--de69cb796e75d2376c0b2843.md) | 298 | `result-track:de69cb796e75d2376c0b284363087842925c826532a6cdad1e4f0b0b3652c192` |
| 40 | `theorem` | [interedges_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-mono--0345ff91b87abc2929c22b58.md) | 301 | `result-track:0345ff91b87abc2929c22b589d39377f8bd9004d5906fa03ba07d81b6b590be7` |
| 41 | `theorem` | [interedges_disjoint_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-disjoint-left--7169dce77359951f64b0c710.md) | 304 | `result-track:7169dce77359951f64b0c7108b6a3e60f0f400f88e2dde7d4c9b171a2956d1f2` |
| 42 | `theorem` | [interedges_disjoint_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-disjoint-right--d978f87d634e81beeb93ae31.md) | 308 | `result-track:d978f87d634e81beeb93ae31dced31b7b69d2ab0737ac3c0dd871eaa5ff8cc6e` |
| 43 | `theorem` | [interedges_biUnion_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-biunion-left--1e82d89e97bf4a15356c2c8d.md) | 316 | `result-track:1e82d89e97bf4a15356c2c8d25f3dfa0ac88fd98428584c09d3938ecfe7b9c8a` |
| 44 | `theorem` | [interedges_biUnion_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-biunion-right--c063f43ad52e8d6f5d9f7bac.md) | 320 | `result-track:c063f43ad52e8d6f5d9f7bac0f6da71d21e1e9a74f10afb6a63e6297d2bae712` |
| 45 | `theorem` | [interedges_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/interedges-biunion--84d8e8c7afcbe04589fccf09.md) | 324 | `result-track:84d8e8c7afcbe04589fccf09e4a1dfdd6bc0870e76b78fc9066a67942be39b4a` |
| 46 | `theorem` | [card_interedges_add_card_interedges_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-add-card-interedges-compl--25aa8f4db64a212a00af5875.md) | 329 | `result-track:25aa8f4db64a212a00af587572ae9fe4f7de63b0f75ae60011131a6c886153b5` |
| 47 | `theorem` | [edgeDensity_add_edgeDensity_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-add-edgedensity-compl--1b3a717717c3642ccfcc1874.md) | 339 | `result-track:1b3a717717c3642ccfcc18746526a42104a6420fc4c291d97811bb91d6d6d4eb` |
| 48 | `theorem` | [card_interedges_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/card-interedges-le-mul--277194f963b2249ac11e4ebd.md) | 347 | `result-track:277194f963b2249ac11e4ebd711b0cf24c3f9d6b7e5a1e23beed20180684a107` |
| 49 | `theorem` | [edgeDensity_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-nonneg--9553532e5ed593c34087e264.md) | 350 | `result-track:9553532e5ed593c34087e264d1fd3fa2c48bb387a1749a56e2ea6be4fc4cc7cb` |
| 50 | `theorem` | [edgeDensity_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-le-one--620c650d3640429410eab4b7.md) | 353 | `result-track:620c650d3640429410eab4b7438f0ec716d8100b36ccf37354c163f672b3e299` |
| 51 | `theorem` | [edgeDensity_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-empty-left--5bc9118b6d0d15ab3adff9f6.md) | 357 | `result-track:5bc9118b6d0d15ab3adff9f69cbc688f56adf64dbe2b4c7f7a78f1a4ca6a4c05` |
| 52 | `theorem` | [edgeDensity_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-empty-right--62e95b4cf1be98de09197d8a.md) | 361 | `result-track:62e95b4cf1be98de09197d8a0a97c262361d6d34b1d3b6e913bb8b828b9c258d` |
| 53 | `theorem` | [swap_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/swap-mem-interedges-iff--090110e261701da966cfc86f.md) | 365 | `result-track:090110e261701da966cfc86f29ace8a4c362d59180b8a2a4c25e9837daa7f7bb` |
| 54 | `theorem` | [mk_mem_interedges_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/mk-mem-interedges-comm--5ba25e9f7a7652651c4b461a.md) | 368 | `result-track:5ba25e9f7a7652651c4b461a27188a3ed479f25ff2984484d27540f810d62b41` |
| 55 | `theorem` | [edgeDensity_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantdbfd1e76faa79cbbe09e5b1756a97571c4db9ffcbb43460d7a6a8ad07e04fb20.lean/declarations/edgedensity-comm--32efe7949f19342f3df4b9c3.md) | 371 | `result-track:32efe7949f19342f3df4b9c30f75a7242e377b3715829dc34015cd1087f154e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
