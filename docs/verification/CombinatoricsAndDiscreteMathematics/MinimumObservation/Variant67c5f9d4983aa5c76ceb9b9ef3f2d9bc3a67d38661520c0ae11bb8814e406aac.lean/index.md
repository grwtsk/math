# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MinimumObservation.Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04af1a5916d6095463ee9aeb7ba81d14ef632ce6",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04af1a5916d6095463ee9aeb7ba81d14ef632ce6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SeparationBounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.WithTop` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sufficientObservationFamilies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/sufficientobservationfamilies--24e76bc09a32227d88f78328.md) | 31 | `declaration-track:24e76bc09a32227d88f7832853bba787d2aadb000a4187150d00c43333d89a6f` |
| 2 | `theorem` | [mem_sufficientObservationFamilies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/mem-sufficientobservationfamilies--ca29db1743ccaea53c1bdcc6.md) | 36 | `result-track:ca29db1743ccaea53c1bdcc647c2f9be5b26c750ead80cc24b3af547f2d8808d` |
| 3 | `theorem` | [sufficientObservationFamilies_nonempty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/sufficientobservationfamilies-nonempty-iff--159034f8f62aaa262ad8b30e.md) | 43 | `result-track:159034f8f62aaa262ad8b30ea55de8a53774cdb00f2cfb780a1ff77d72621e87` |
| 4 | `theorem` | [sufficientObservationFamilies_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/sufficientobservationfamilies-eq-empty-iff--f2fd0a06e3883f2c10c91211.md) | 56 | `result-track:f2fd0a06e3883f2c10c912119cb640c4dc23c751e6936ed5e87d74afe3087248` |
| 5 | `def` | [TargetSeparationRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank--bb2b394ac89ab03d1a55fa3a.md) | 63 | `declaration-track:bb2b394ac89ab03d1a55fa3a9f1f43abf24901a169e72ec1b9958be0481bec4c` |
| 6 | `def` | [TargetSeparationCost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost--d76d8e68d37e34885518514c.md) | 68 | `declaration-track:d76d8e68d37e34885518514c37d10a507492000b2b18f9d2aeb15845e9231d45` |
| 7 | `theorem` | [targetSeparationCost_unit_eq_rank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-unit-eq-rank--fb5a625bc517a15f61fb9fe1.md) | 75 | `result-track:fb5a625bc517a15f61fb9fe1db37c37447fa44b00e0be5b77d4de98c73b742fe` |
| 8 | `theorem` | [targetSeparationRank_le_of_sufficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-le-of-sufficient--650a9b11ea0efa4ca202d6f6.md) | 82 | `result-track:650a9b11ea0efa4ca202d6f6db1509a880c2180b43988bb389ca624cef415f10` |
| 9 | `theorem` | [le_targetSeparationRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/le-targetseparationrank--bc47fe754806e82260041f93.md) | 90 | `result-track:bc47fe754806e82260041f936e5c3ca6ab8cb7aff239aacb7de7ab6027734520` |
| 10 | `theorem` | [targetSeparationCost_le_of_sufficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-le-of-sufficient--f7e0dbb95c3498adf27c7771.md) | 102 | `result-track:f7e0dbb95c3498adf27c7771143af7c9144bfec7e6a24a20109fc9f7d62ce35a` |
| 11 | `theorem` | [le_targetSeparationCost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/le-targetseparationcost--6719eac5443117404e2498cf.md) | 112 | `result-track:6719eac5443117404e2498cfe0e7314f21a4bf45dcd232fb54a3bc9f2f593712` |
| 12 | `theorem` | [targetSeparationRank_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-attained--46413ab9908e8b55af575309.md) | 125 | `result-track:46413ab9908e8b55af5753093e81f64d55887272091c89528f04731964588b73` |
| 13 | `theorem` | [targetSeparationCost_attained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-attained--3918b55afd71b83539ffdfba.md) | 134 | `result-track:3918b55afd71b83539ffdfba0defaa561948cbdcad62b8d37aeaff980d95e9d3` |
| 14 | `theorem` | [targetSeparationRank_eq_top_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-eq-top-iff--4e9499983a4b62b877cab985.md) | 145 | `result-track:4e9499983a4b62b877cab985a65078e271bc362c284339eb660f61a82f756640` |
| 15 | `theorem` | [targetSeparationCost_eq_top_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-eq-top-iff--e5cb83577e577cb7beab491c.md) | 151 | `result-track:e5cb83577e577cb7beab491c2638fef8a3407b85379b77893aed73d870b78a13` |
| 16 | `theorem` | [targetSeparationRank_eq_top_iff_collision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-eq-top-iff-collision--637f39ab04cdd698cc75ffac.md) | 158 | `result-track:637f39ab04cdd698cc75ffac9d914b39e8c57da7ab5ffb80c7bf0b85422b62fe` |
| 17 | `theorem` | [targetSeparationRank_eq_top_iff_obstructed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-eq-top-iff-obstructed--c7205c84e319218bacad6eab.md) | 176 | `result-track:c7205c84e319218bacad6eab7f35f366f29e90cf77e6ffbb000a21406589c20e` |
| 18 | `theorem` | [targetSeparationRank_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-eq-zero-iff--c98ee31e62972e20a44f3580.md) | 189 | `result-track:c98ee31e62972e20a44f35808dc5ae6443e8723b5a49ad41b765c4262f00b9df` |
| 19 | `theorem` | [targetSeparationRank_mono_admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-mono-admitted--f35409dab6c0bee0b71b318c.md) | 211 | `result-track:f35409dab6c0bee0b71b318c186d538b34c01fad5560a0d008a06d37245c361b` |
| 20 | `theorem` | [targetSeparationCost_mono_admitted](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-mono-admitted--a31f002899f87f16afda80f8.md) | 219 | `result-track:a31f002899f87f16afda80f8194a50a9390598154557dd952cb6e53206151240` |
| 21 | `theorem` | [targetSeparationRank_mono_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-mono-target--600a7ef710966ddb69c123ca.md) | 228 | `result-track:600a7ef710966ddb69c123ca68444e8fa1bdedd57260630ed363a73c8942c7ae` |
| 22 | `theorem` | [targetSeparationCost_mono_target](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-mono-target--f050b0460018ab86fcaefc8b.md) | 239 | `result-track:f050b0460018ab86fcaefc8b3367a51e9f1419592eac4783fc0db371d214bb92` |
| 23 | `theorem` | [targetSeparationRank_pair_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-pair-le--c5d9385c0318135435a7078b.md) | 251 | `result-track:c5d9385c0318135435a7078bbcf560a774c72b7fb096535af2d1f0404e40699a` |
| 24 | `theorem` | [card_le_targetSeparationRank_of_disjoint_separators](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/card-le-targetseparationrank-of-disjoint-separators--96f8508d92caabb76260dc4d.md) | 266 | `result-track:96f8508d92caabb76260dc4d9d35cb54501bb8b1d9f7a7f786f2141788134fb6` |
| 25 | `def` | [FiniteNotion.targetSeparationRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/finitenotion-targetseparationrank--6e1556b78bd86b2bafbbe159.md) | 280 | `declaration-track:6e1556b78bd86b2bafbbe15957bfe19d139d65962a4bd0b2aff825e051b62deb` |
| 26 | `theorem` | [FiniteNotion.targetSeparationRank_ne_top_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/finitenotion-targetseparationrank-ne-top-iff--427ae68cb10190de0e4db7c3.md) | 286 | `result-track:427ae68cb10190de0e4db7c3389620bea1f31083be2b5e0b2569b9026d144c9e` |
| 27 | `theorem` | [FiniteNotion.targetSeparationRank_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/finitenotion-targetseparationrank-of-budget-le--0fb85e8f0863fd533a25bb79.md) | 295 | `result-track:0fb85e8f0863fd533a25bb7909dc50f95cf357aa7b275a97c09ea7aa32627b7c` |
| 28 | `theorem` | [sufficientObservationFamilies_eq_hitting_sets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/sufficientobservationfamilies-eq-hitting-sets--115ae7afd7d6104c675b08ce.md) | 305 | `result-track:115ae7afd7d6104c675b08cefdcb940662c578a096f21144ea9dab58f65b78d4` |
| 29 | `theorem` | [targetSeparationRank_eq_minimum_hitting_set_size](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationrank-eq-minimum-hitting-set-size--869dcf6197cc307908d4d910.md) | 319 | `result-track:869dcf6197cc307908d4d9104425fac841c5d94156b455f5312850c1662218c3` |
| 30 | `theorem` | [targetSeparationCost_eq_minimum_hitting_set_cost](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-eq-minimum-hitting-set-cost--f281a95ed5cdb0303d5f5987.md) | 328 | `result-track:f281a95ed5cdb0303d5f59870da98d38230bc275a5633415641eb02ea484e355` |
| 31 | `theorem` | [targetSeparationCost_pair_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant67c5f9d4983aa5c76ceb9b9ef3f2d9bc3a67d38661520c0ae11bb8814e406aac.lean/declarations/targetseparationcost-pair-le--b84ae35d997030cdc38e7d26.md) | 339 | `result-track:b84ae35d997030cdc38e7d263cb007686ccfdd72494605b3b119d8feecde752e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
