# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Localization.Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca48e65e9edac19276b87ebe92d6eb07cea02240",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca48e65e9edac19276b87ebe92d6eb07cea02240`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Center.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localization--1aeec0e95d390761523f5237.md) | 32 | `declaration-track:1aeec0e95d390761523f52378f1a60ca311b296222410969eacb11e51f6e5201` |
| 2 | `lemma` | [localization_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localization-app--2948c0eb103b7674b09e5cd8.md) | 36 | `result-track:2948c0eb103b7674b09e5cd8fed42042703cd0f18ad17500870a370e9177c337` |
| 3 | `lemma` | [ext_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/ext-of-localization--694afc2d41e271f682eed041.md) | 44 | `result-track:694afc2d41e271f682eed041f9efb10525ded41c55b024c72a37dc3e50eb5053` |
| 4 | `lemma` | [localization_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localization-one--655a6846a62c7b477a070a67.md) | 48 | `result-track:655a6846a62c7b477a070a67ce514df811b4ad732373f712d4e1fd47951d7cc1` |
| 5 | `lemma` | [localization_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localization-mul--8b1fa7c522bb691f8c092334.md) | 52 | `result-track:8b1fa7c522bb691f8c0923347caaa556b2e6af7bf9a5b61b6b0a0eaf66d5e0ca` |
| 6 | `lemma` | [localization_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localization-zero--4a3ed11f015d7c83154a4f53.md) | 60 | `result-track:4a3ed11f015d7c83154a4f536a779ddd68f0fc546bc6460b2dc951d08eef64da` |
| 7 | `lemma` | [localization_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localization-add--50afeb30145ac6faf605768b.md) | 64 | `result-track:50afeb30145ac6faf605768bada7055d8b231227033afe70c05d54edb7b102f6` |
| 8 | `def` | [localizationRingHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant914007ef93878b4a14ba4836aee0756e24baccbd89be015b5432f92b4826d73b.lean/declarations/localizationringhom--a1713641d057e56753dcd650.md) | 72 | `declaration-track:a1713641d057e56753dcd6501953812814763c8ad78f3b7f1cac7cb75e108d74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
