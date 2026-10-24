# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Flat.Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba5c5ebab1dd6e5afafa81f24b0f8cb8ea6ad9b6",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba5c5ebab1dd6e5afafa81f24b0f8cb8ea6ad9b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Connected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Bicones` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Opposites` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablyflat--4445fa764a7267ed4d25e1fb.md) | 72 | `declaration-track:4445fa764a7267ed4d25e1fbd74dc90843f885f5c2ed6e4e9514a9391da95f26` |
| 2 | `class` | [RepresentablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablycoflat--9ae5a8efb824111e74173543.md) | 77 | `declaration-track:9ae5a8efb824111e741735433d5222cb486acb19ce7606ee015578df57c6fb4f` |
| 3 | `instance` | [RepresentablyFlat.of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablyflat-of-isrightadjoint--ec604a6ce5079d4f8bfa78b6.md) | 84 | `declaration-track:ec604a6ce5079d4f8bfa78b609721a36e30aa462a1b4dfd9558cc4aefc83f0c1` |
| 4 | `instance` | [RepresentablyCoflat.of_isLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablycoflat-of-isleftadjoint--a990c614ef55d4fcced1faa6.md) | 87 | `declaration-track:a990c614ef55d4fcced1faa6e95a2ea52da8563a55524a6e4183c7565711eeba` |
| 5 | `theorem` | [RepresentablyFlat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablyflat-id--aaff9a5d7debefcfe387c1c7.md) | 90 | `result-track:aaff9a5d7debefcfe387c1c7eb4c8df913dc945956e199e72de3f29742e4acda` |
| 6 | `theorem` | [RepresentablyCoflat.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablycoflat-id--cd109e4a17679d373b7826a5.md) | 92 | `result-track:cd109e4a17679d373b7826a57669eb47816a5489209f9380889cafed53067154` |
| 7 | `instance` | [RepresentablyFlat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablyflat-comp--02689d96642f975f93287d45.md) | 97 | `declaration-track:02689d96642f975f93287d459ad0cb84438bae375dd347918c96568c71fd417d` |
| 8 | `theorem` | [RepresentablyFlat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablyflat-of-iso--039fc70dd636453e434aa3a3.md) | 116 | `result-track:039fc70dd636453e434aa3a325c591b4b6f6840f753d520196608f840a07558c` |
| 9 | `theorem` | [RepresentablyCoflat.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablycoflat-of-iso--c5aad081dc213058cee90f2a.md) | 120 | `result-track:c5aad081dc213058cee90f2ab968d0833e197b66c2cdf324e71afab0ab1db5d4` |
| 10 | `theorem` | [representablyCoflat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablycoflat-op-iff--48aeaa7305bf4d471d2f01d3.md) | 126 | `result-track:48aeaa7305bf4d471d2f01d386a8227e4401bd65713aaaa8efe51d9630999796` |
| 11 | `theorem` | [representablyFlat_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablyflat-op-iff--e4316e6e73ad44aa48c176e9.md) | 135 | `result-track:e4316e6e73ad44aa48c176e993e71e44c8023a3db24cfa92f4d08a92b550fede` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/instance--a4e5ca3fcd7aa312fcc6528c.md) | 144 | `declaration-track:a4e5ca3fcd7aa312fcc6528cdfb913d8d17ee4798308a14a282331a8d5e3c84b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/instance--a57e3ab4e8262da027b069bf.md) | 147 | `declaration-track:a57e3ab4e8262da027b069bfa32f29750d0f5e711c2bd6e5c08be75b97419238` |
| 14 | `instance` | [RepresentablyCoflat.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/representablycoflat-comp--53e2c3d43d2b198933ecc836.md) | 150 | `declaration-track:53e2c3d43d2b198933ecc836b91e092693a57a25dedd32f58bc3de4a42502d98` |
| 15 | `lemma` | [final_of_representablyFlat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/final-of-representablyflat--e0f9422da1389829f749ce73.md) | 154 | `result-track:e0f9422da1389829f749ce73f9eb425b5178ecce4b81fdd46b6e5b7473befae6` |
| 16 | `lemma` | [initial_of_representablyCoflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/initial-of-representablycoflat--99c8d690f98cd3ef2e6a6fa9.md) | 157 | `result-track:99c8d690f98cd3ef2e6a6fa9d70f9d04dd2cbbb7f848952ee7d01aa70c88b73f` |
| 17 | `theorem` | [flat_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/flat-of-preservesfinitelimits--1dae65ce09a0582448ea194b.md) | 166 | `result-track:1dae65ce09a0582448ea194bd167a4e946d03b674ba97bbe8529e2d6f599e831` |
| 18 | `theorem` | [coflat_of_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/coflat-of-preservesfinitecolimits--7ef5d67783deea3b27e10672.md) | 177 | `result-track:7ef5d67783deea3b27e10672680cdd935b96e536341ae119b1c7c2e9d8d11bfa` |
| 19 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/lift--13b66d093a2c6f6aba2cd0e2.md) | 193 | `declaration-track:13b66d093a2c6f6aba2cd0e207b9c5845b068dfcc137ea16184a45b73c332beb` |
| 20 | `theorem` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/fac--504d4e08e61418a5559efda2.md) | 203 | `result-track:504d4e08e61418a5559efda2e32aff0d6297066cf011a70cf23d2e43d8242ccf` |
| 21 | `theorem` | [uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/uniq--acee3a892bf1cfba507652ff.md) | 206 | `result-track:acee3a892bf1cfba507652ffc6c7ce46ced484faf8ea238de2f1444d2069bf14` |
| 22 | `lemma` | [preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/preservesfinitelimits-of-flat--9c430f6432621c73067a0d35.md) | 261 | `result-track:9c430f6432621c73067a0d35d4f629d5c19a0412b56cd324dae94f272990e7d8` |
| 23 | `lemma` | [preservesFiniteColimits_of_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/preservesfinitecolimits-of-coflat--cfafd2fd1be2e477af3df111.md) | 277 | `result-track:cfafd2fd1be2e477af3df111249e271dcc95f702c45f3ed5ea0313be32a9b58e` |
| 24 | `lemma` | [preservesFiniteLimits_iff_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/preservesfinitelimits-iff-flat--8e5d28b9322ab64c649cc36e.md) | 285 | `result-track:8e5d28b9322ab64c649cc36e7571d77417d6ccd614b6b81bde19aa65a05928d5` |
| 25 | `lemma` | [preservesFiniteColimits_iff_coflat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/preservesfinitecolimits-iff-coflat--d22aa1967fd4dd1ac0901203.md) | 291 | `result-track:d22aa1967fd4dd1ac0901203df2e93025f63853e9c7ee9cfd15794e0e2d14586` |
| 26 | `def` | [lanEvaluationIsoColim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/lanevaluationisocolim--112dfc7f4b7708e58ddcac33.md) | 305 | `declaration-track:112dfc7f4b7708e58ddcac332a49311829bc97400ac73da893421905ca959b53` |
| 27 | `instance` | [lan_preservesFiniteLimits_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/lan-preservesfinitelimits-of-flat--94d69ec120df4fec3d2ef11f.md) | 332 | `declaration-track:94d69ec120df4fec3d2ef11f49cf9ebf1f6eadb69127ae70e7f6b5bc9e8aced3` |
| 28 | `instance` | [lan_flat_of_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/lan-flat-of-flat--c8e8ca94ab5b701d93dcae1a.md) | 342 | `declaration-track:c8e8ca94ab5b701d93dcae1a77e543ac7a189e962384e88fc2d1cfff41642060` |
| 29 | `instance` | [lan_preservesFiniteLimits_of_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/lan-preservesfinitelimits-of-preservesfinitelimits--b353f5639711e8f527fe98f4.md) | 348 | `declaration-track:b353f5639711e8f527fe98f4e46cbae2b2aaa5cca8489c573df173cee6fc0b85` |
| 30 | `theorem` | [flat_iff_lan_flat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/flat-iff-lan-flat--21377fea37fd579cc50ddebe.md) | 353 | `result-track:21377fea37fd579cc50ddebe11d0a6731d39ed0672243efb81b7dbd806168caf` |
| 31 | `lemma` | [preservesFiniteLimits_iff_lan_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean/declarations/preservesfinitelimits-iff-lan-preservesfinitelimits--98bc176b4b8f3ac44c930230.md) | 365 | `result-track:98bc176b4b8f3ac44c930230f9e6798908c0444eeeec9a1cca7dd187970655dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
