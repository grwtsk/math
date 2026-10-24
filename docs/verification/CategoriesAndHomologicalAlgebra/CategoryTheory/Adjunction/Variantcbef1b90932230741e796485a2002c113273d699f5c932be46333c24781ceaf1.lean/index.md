# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b7836c8b18128a557d7775e1e37db7075ac93dc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b7836c8b18128a557d7775e1e37db7075ac93dc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Whiskering` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.PreservesSheafification` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [sheafForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/sheafforget--cafc5b8303a10dd67d5d1253.md) | 39 | `declaration-track:cafc5b8303a10dd67d5d12535424acf36286f5baab37ddd546960c78e9ffc0c5` |
| 2 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/adjunction--8e964e762144b0b047479740.md) | 50 | `declaration-track:8e964e762144b0b047479740dc664df5fa8544b885790a61d97698d2e9d7abba` |
| 3 | `lemma` | [adjunction_unit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/adjunction-unit-app-val--7482d87e8011d81834d8e05c.md) | 56 | `result-track:7482d87e8011d81834d8e05c605878a139ed17d54209afc940a2f0dfd285478e` |
| 4 | `lemma` | [adjunction_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/adjunction-counit-app-val--4b1b0bafa8e698c7f022cf2c.md) | 67 | `result-track:4b1b0bafa8e698c7f022cf2c342c5b114a5068ea048cf17a1a75d367dd96284c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/instance--54847927b969d101915c52c3.md) | 78 | `declaration-track:54847927b969d101915c52c39e8df3ac5ae31675e0ce075b0a992861c0188a39` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/instance--a73b666cb42a82093783d6ab.md) | 81 | `declaration-track:a73b666cb42a82093783d6abdd159fbd7a4bef17bcf16ef279e6459403c2d691` |
| 7 | `lemma` | [preservesSheafification_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/preservessheafification-of-adjunction--09c10dbaf8ec87d7faecefb3.md) | 84 | `result-track:09c10dbaf8ec87d7faecefb3699da1b028c787ddc055a1d56fda76e5f2d9a745` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/instance--836546c289e1b54bde846923.md) | 102 | `declaration-track:836546c289e1b54bde846923a6efec14f82f0b31f552dbc5bb20c6f6fdbbbc9d` |
| 9 | `abbrev` | [adjunctionToTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/adjunctiontotypes--b97e5446cf595b435089f7fa.md) | 112 | `declaration-track:b97e5446cf595b435089f7faeb1422df387fc0623a88285d70c7aad5e189668d` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantcbef1b90932230741e796485a2002c113273d699f5c932be46333c24781ceaf1.lean/declarations/example--367c03ed09b9f605a3ac3b71.md) | 117 | `declaration-track:367c03ed09b9f605a3ac3b716bd6fb0615373a9039317f041ee76efe6af1c810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
