# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79a2b6b1ddaea38097629bd671b7056453538a58",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79a2b6b1ddaea38097629bd671b7056453538a58`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Generator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Pushforward` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.PartialAdjoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/pullback--a4835318bc1f32cdb0916754.md) | 36 | `declaration-track:a4835318bc1f32cdb09167547cc1ae6ab2f57b6415c97a521d3cbc606864885b` |
| 2 | `def` | [pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/pullbackpushforwardadjunction--a5be64fce20eddb6ad3e351d.md) | 42 | `declaration-track:a5be64fce20eddb6ad3e351d6159eb5ca1d4f43b9c7e299fd950c5c9d3e0f785` |
| 3 | `abbrev` | [pullbackObjIsDefined](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/pullbackobjisdefined--3e91a3afdc835dd7d23e5a9f.md) | 48 | `declaration-track:3e91a3afdc835dd7d23e5a9f95cebcf2521a873b9ae5cbb0707927eedc2debd9` |
| 4 | `def` | [pushforwardCompCoyonedaFreeYonedaCorepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/pushforwardcompcoyonedafreeyonedacorepresentableby--bd355c1173dfa93c72f690fd.md) | 65 | `declaration-track:bd355c1173dfa93c72f690fd4042087b663a62a6c052050a22a6c02796c082a4` |
| 5 | `lemma` | [pullbackObjIsDefined_free_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/pullbackobjisdefined-free-yoneda--849b21ac348f9734741cf741.md) | 77 | `result-track:849b21ac348f9734741cf7410176d24fb02798d029555699cd9764e933316976` |
| 6 | `lemma` | [pullbackObjIsDefined_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/pullbackobjisdefined-eq-top--0c3fa5dd9ccb4dbc27cfeebe.md) | 81 | `result-track:0c3fa5dd9ccb4dbc27cfeebe7b8dc7ccd959b400d901f59ee41fbb8a7ada37ff` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant9efab2925e3432f678505bfabbd5782514d4f8b19e1d9fb3f28c377b88025353.lean/declarations/instance--c9fb53834f6562f5382fd739.md) | 92 | `declaration-track:c9fb53834f6562f5382fd7397e74eec9a331590615e6424bfcf6b5c1fb4cb8b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
