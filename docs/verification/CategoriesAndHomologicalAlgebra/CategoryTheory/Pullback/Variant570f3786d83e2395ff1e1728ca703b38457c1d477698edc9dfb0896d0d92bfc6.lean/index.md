# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b34199475532f910a2f05cc064901aaf0dae639d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b34199475532f910a2f05cc064901aaf0dae639d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Generator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf.Pushforward` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.PartialAdjoint` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/pullback--6a8ca3079b606b3f7d62400e.md) | 44 | `declaration-track:6a8ca3079b606b3f7d62400e40657a21b6405ebe83a53df62a4fcb2f2d16897b` |
| 2 | `def` | [pullbackPushforwardAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/pullbackpushforwardadjunction--6e850c013d65ff0bd9deed98.md) | 50 | `declaration-track:6e850c013d65ff0bd9deed982b435876dfb2fadf344248ee528307f7025ffef2` |
| 3 | `abbrev` | [pullbackObjIsDefined](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/pullbackobjisdefined--1bfed6336847516e01cda074.md) | 56 | `declaration-track:1bfed6336847516e01cda07492e586dcebac0d1d64d6308835dd0325392efa5e` |
| 4 | `def` | [pushforwardCompCoyonedaFreeYonedaCorepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/pushforwardcompcoyonedafreeyonedacorepresentableby--fdbcda21f00810a3641140ae.md) | 73 | `declaration-track:fdbcda21f00810a3641140ae56c07b2c63e5d007672dcbcf29d226a343d6b112` |
| 5 | `lemma` | [pullbackObjIsDefined_free_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/pullbackobjisdefined-free-yoneda--0abdb908b54a7f9073ac0455.md) | 85 | `result-track:0abdb908b54a7f9073ac04551b175c867864697fd40fdddfadb633e79f0ea95d` |
| 6 | `lemma` | [pullbackObjIsDefined_eq_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/pullbackobjisdefined-eq-top--2c00c7b77f99c8ed1e5323bb.md) | 89 | `result-track:2c00c7b77f99c8ed1e5323bbf41c295adbc5a844d630eac955e9ba764c0d07aa` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant570f3786d83e2395ff1e1728ca703b38457c1d477698edc9dfb0896d0d92bfc6.lean/declarations/instance--b3df95f83fa1365ce5e6d9fd.md) | 100 | `declaration-track:b3df95f83fa1365ce5e6d9fd759b88112ff6a4bdf504830fd4c2516f802391bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
