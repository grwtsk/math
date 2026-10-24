# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivFunctor.Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47896fa744248bf28ec422641af98d461d945617",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47896fa744248bf28ec422641af98d461d945617`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/equivfunctor--8ccd40c5a8c55946a22f9fb7.md) | 30 | `declaration-track:8ccd40c5a8c55946a22f9fb749ce4f1af4fd528244e170133ce5fbd070c62838` |
| 2 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv--056ff55bb1816d088e063736.md) | 48 | `declaration-track:056ff55bb1816d088e0637368a5f9b59b9a58b300944823cefbbbcc165d68920` |
| 3 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv-apply--54cf4d0b67e9ed256e1fdc11.md) | 60 | `result-track:54cf4d0b67e9ed256e1fdc11c76514a853c936b7f8be25d07f84cc3cb8830787` |
| 4 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv-symm-apply--d34eecae0c59e811432a63d6.md) | 64 | `result-track:d34eecae0c59e811432a63d69af86f143e5e390f6d76a08fdc777341efa0fae3` |
| 5 | `theorem` | [mapEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv-refl--8eed3ff3079c93603d4abda4.md) | 69 | `result-track:8eed3ff3079c93603d4abda4ea52f6c861c3bc4d3c3931db94a2e2b6de805efd` |
| 6 | `theorem` | [mapEquiv_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv-symm--3bca3ff32c20e32047e1af91.md) | 74 | `result-track:3bca3ff32c20e32047e1af911ae09e6cc08c4c1fe9d3afbc828afc11ebd95660` |
| 7 | `theorem` | [mapEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv-trans--2fc8b7fb7219b6c7a81ad08b.md) | 83 | `result-track:2fc8b7fb7219b6c7a81ad08b7bc9458dc87ab86b94ee95c0e5fb1d13f4bf0f9e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/instance--2a2add385c921493871bce10.md) | 90 | `declaration-track:2a2add385c921493871bce10ba0636374b582eff86da42447d6f968025d6dbd8` |
| 9 | `theorem` | [mapEquiv.injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivFunctor/Variant36a828333387f3254e56a31e386d3770bcf837fad94ba4f69d09f1663b235e7b.lean/declarations/mapequiv-injective--3f72eaceb7aed3f1b338fb76.md) | 101 | `result-track:3f72eaceb7aed3f1b338fb76e229fa96523b28a74429dc57d9832d8bcc857b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
