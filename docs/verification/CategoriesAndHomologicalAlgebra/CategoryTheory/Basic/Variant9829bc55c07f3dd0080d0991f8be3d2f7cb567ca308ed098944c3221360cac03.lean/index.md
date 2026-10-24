# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef18342abf05c5807a71ff0f6479a33e9654bf39",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef18342abf05c5807a71ff0f6479a33e9654bf39`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Prefunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.CheckCompositions` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/functor--2e61fbdbc982c1875b56f3b1.md) | 44 | `declaration-track:2e61fbdbc982c1875b56f3b11bf19198a275e39b1fc7f268c9fbc7cde02ac554` |
| 2 | `lemma` | [Functor.map_comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/functor-map-comp-assoc--d3629f4a789929c48d0669a0.md) | 66 | `result-track:d3629f4a789929c48d0669a04358e6d1d473c94c0762427ccc3939daf78bb47b` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/id--67e1ed40d230608305232d21.md) | 81 | `declaration-track:67e1ed40d230608305232d21dd93f020117f27d47905ce11316d8226034b778e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/instance--9ece9f6d98826eec4032e3d8.md) | 88 | `declaration-track:9ece9f6d98826eec4032e3d8715fded653ead0610487a65317d4001c197d855d` |
| 5 | `theorem` | [id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/id-obj--44dc60f6c810f65b057c56d0.md) | 94 | `result-track:44dc60f6c810f65b057c56d0b39e1326840f4dbea5ce7024691f3537740d4a06` |
| 6 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/id-map--e752f2dfb6fdaacb1f392f81.md) | 97 | `result-track:e752f2dfb6fdaacb1f392f8192bbd70be36f12f5a21783e036fefbdf66fb7c65` |
| 7 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/comp--b6097fcc4a3baf8cc26a726c.md) | 109 | `declaration-track:b6097fcc4a3baf8cc26a726cb93773b09dddb6daac672622ad3496513df195f2` |
| 8 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/comp-map--004fe010aedb65e63127dd04.md) | 118 | `result-track:004fe010aedb65e63127dd04aa342697db603f54d1ceb73602fc838ccdb51789` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/comp-id--1f3eb868721719fe4b64dd1e.md) | 124 | `result-track:1f3eb868721719fe4b64dd1ee4e6b637149870357b5aaa42d8ff9e489612f8ae` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/id-comp--f6ce5fefbea0971006d2ce97.md) | 126 | `result-track:f6ce5fefbea0971006d2ce97cc9ca5b70832fd6fd639aa4493e169e27da8edd7` |
| 11 | `theorem` | [map_dite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/map-dite--d16ab926bb76075e8c463ca5.md) | 129 | `result-track:d16ab926bb76075e8c463ca5f113f365341a2473f5511f319a3c284431db49e9` |
| 12 | `theorem` | [toPrefunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9829bc55c07f3dd0080d0991f8be3d2f7cb567ca308ed098944c3221360cac03.lean/declarations/toprefunctor-comp--65868b9664fed37c52276810.md) | 135 | `result-track:65868b9664fed37c52276810e7ddbdca469cd500951bddf32439bcd37ff3b192` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
