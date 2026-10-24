# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WellPowered.Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ce41fb7aaeb9bd3b403553f4697f90c3caca288",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ce41fb7aaeb9bd3b403553f4697f90c3caca288`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [WellPowered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/wellpowered--6256ef0c7216bd9a5115b7f4.md) | 52 | `declaration-track:6256ef0c7216bd9a5115b7f41951008b7073f779962b6a550b00df4db0c1ee92` |
| 2 | `instance` | [small_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/small-subobject--e196703fccc743f0baecb4e0.md) | 55 | `declaration-track:e196703fccc743f0baecb4e02458cd29c5b7b1364622559115e0c3f7a6d2141a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/instance--094b57b07d7baf2130b87a7f.md) | 59 | `declaration-track:094b57b07d7baf2130b87a7fc0ce92cd828b4bcf92f788715cb457f1bcd6c544` |
| 4 | `theorem` | [essentiallySmall_monoOver_iff_small_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/essentiallysmall-monoover-iff-small-subobject--e5dab808cdb0f532f398382f.md) | 64 | `result-track:e5dab808cdb0f532f398382f4329dc8d658a7da46ef65c5b17c863a1f9f35f23` |
| 5 | `theorem` | [wellPowered_of_essentiallySmall_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/wellpowered-of-essentiallysmall-monoover--280234003b8b489bf8a24f79.md) | 68 | `result-track:280234003b8b489bf8a24f79547ec277088592c9922b3410d5f7f08fd8e8a7ab` |
| 6 | `instance` | [essentiallySmall_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/essentiallysmall-monoover--2d2e80bfbe276eb6bc27e486.md) | 77 | `declaration-track:2d2e80bfbe276eb6bc27e486a948a1d6e4da037b8ac72516a64ddfba27004389` |
| 7 | `theorem` | [wellPowered_of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/wellpowered-of-equiv--a1bf14e5b8214cf11c4e01de.md) | 86 | `result-track:a1bf14e5b8214cf11c4e01dec14e96b336baeda0081ccdb2821d461e44dab3d9` |
| 8 | `theorem` | [wellPowered_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/wellpowered-congr--eeb4304074d6256290a39f80.md) | 92 | `result-track:eeb4304074d6256290a39f807bc5fa21ca81e59028dfdfae01d1722e56e4e629` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellPowered/Variant3df6e4f150a3ee2cedabbd9b1c974298b4eebb889a62b91d17d7d3d087a9d59a.lean/declarations/instance--8ce847f6e614f1f729cb9cc8.md) | 96 | `declaration-track:8ce847f6e614f1f729cb9cc85b5a065232f2a82189fc86101d7a9ccbaa95f3ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
