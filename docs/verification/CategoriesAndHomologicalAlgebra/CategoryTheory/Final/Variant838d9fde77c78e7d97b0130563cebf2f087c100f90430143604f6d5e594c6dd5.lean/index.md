# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bd72ccfaef910cbc9fe02d809f342583096001a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bd72ccfaef910cbc9fe02d809f342583096001a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IsConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Sifted` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Flat` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Grothendieck` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.CommaMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [final_fst_small](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/final-fst-small--c2a14da96c7999fdce70d09f.md) | 47 | `result-track:c2a14da96c7999fdce70d09f3dcb2ebbe8e3c7cb6d4a6e38f2e592952b15c492` |
| 2 | `instance` | [final_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/final-fst--6574de3ad708e5ce8f0fbe55.md) | 73 | `declaration-track:6574de3ad708e5ce8f0fbe55f87f4c2c306345ffdad5695b8782e49332832e73` |
| 3 | `instance` | [initial_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/initial-snd--d0d921c8d7c4e3e358075ccd.md) | 87 | `declaration-track:d0d921c8d7c4e3e358075ccdad4f8d82ad463869fe613f2b9f3cefef1406c87e` |
| 4 | `instance` | [isConnected_comma_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/isconnected-comma-of-final--26f41334dd4d7438e9f68730.md) | 95 | `declaration-track:26f41334dd4d7438e9f6873036316ae983b86950a1f24828b50c8ab56eb2606d` |
| 5 | `instance` | [isConnected_comma_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/isconnected-comma-of-initial--e03dfaf3efcda978898aacb7.md) | 100 | `declaration-track:e03dfaf3efcda978898aacb7a277abfd2a2a9af280597d75e7efd6c269fb58cd` |
| 6 | `lemma` | [map_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/map-final--bf4eb87fd4570fb7a5646096.md) | 119 | `result-track:bf4eb87fd4570fb7a5646096ff5e62b857859ac5f0d3c76a659b0e0bf25e74a3` |
| 7 | `instance` | [isFiltered_of_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/isfiltered-of-final--bfc9c3cd5f161fc58353eacd.md) | 152 | `declaration-track:bfc9c3cd5f161fc58353eacdb2cd35ac6c5372798a3a1b94e169ddef4b6ac8da` |
| 8 | `lemma` | [isCofiltered_of_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/iscofiltered-of-initial--67f5bb91994504a63a4dd243.md) | 167 | `result-track:67f5bb91994504a63a4dd243002295d4886ca3a9bc8a13c9252300bdc357a1d7` |
| 9 | `instance` | [final_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/final-snd--b39201bf0b84909f7e113a0a.md) | 174 | `declaration-track:b39201bf0b84909f7e113a0acb6568677526494c0f10cc1c0cbb7c796d6f3424` |
| 10 | `instance` | [initial_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant838d9fde77c78e7d97b0130563cebf2f087c100f90430143604f6d5e594c6dd5.lean/declarations/initial-fst--e8d2e3f9fd774538212edf1e.md) | 185 | `declaration-track:e8d2e3f9fd774538212edf1e8f3330401b4d1e1e5a733e5e56c7e847dfb4fc6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
