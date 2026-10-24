# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fibered.Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d062bc48456acf5e760b52f3fa641ad37974bd32",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d062bc48456acf5e760b52f3fa641ad37974bd32`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.Cartesian` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.IsPreFibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/functor-isprefibered--07c5ec39d7b2003cf23d955c.md) | 52 | `declaration-track:07c5ec39d7b2003cf23d955cf3a90565a67e87821984e458e2c9b93d5696d988` |
| 2 | `lemma` | [IsPreFibered.exists_isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/isprefibered-exists-iscartesian--632c64fbf9ff394093e7e4f9.md) | 55 | `result-track:632c64fbf9ff394093e7e4f9184e39b17029da6d337fd2351105eb4d5f4d17e6` |
| 3 | `class` | [Functor.IsFibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/functor-isfibered--80f3e306d4b6d172aad9494c.md) | 62 | `declaration-track:80f3e306d4b6d172aad9494c1c1a0431c87439b8ae99ad52831b506dcf74b7a1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/instance--d4cc3ea84a139bad3e4ca4e5.md) | 66 | `declaration-track:d4cc3ea84a139bad3e4ca4e5485e37a005e204364da100b0044c1a1b7532d487` |
| 5 | `def` | [pullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/pullbackobj--25ce0343e66aff257b21ae65.md) | 79 | `declaration-track:25ce0343e66aff257b21ae65a290b56088ceaa299898d6527cb1ffe1d2151f81` |
| 6 | `def` | [pullbackMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/pullbackmap--a262852776fa179352ca1b9b.md) | 84 | `declaration-track:a262852776fa179352ca1b9b26296bf4276e79e710cf60b688545c88aabf54f3` |
| 7 | `instance` | [pullbackMap.IsCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/pullbackmap-iscartesian--611ffd5865617a73224fe257.md) | 87 | `declaration-track:611ffd5865617a73224fe25755b34734f3dd6f064cb6a08a36e2eb57fdfcc938` |
| 8 | `lemma` | [pullbackObj_proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/pullbackobj-proj--8534397fb0d8c68b0c6feb5a.md) | 90 | `result-track:8534397fb0d8c68b0c6feb5a41100db350bcfcb18b50d53b5881efba9b5ac27b` |
| 9 | `instance` | [isStronglyCartesian_of_isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/isstronglycartesian-of-iscartesian--fa2a8cf90e2408591f9ab859.md) | 100 | `declaration-track:fa2a8cf90e2408591f9ab8591fdfbe6de2b82adedb08774a94205cbada60121b` |
| 10 | `lemma` | [isStronglyCartesian_of_exists_isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/isstronglycartesian-of-exists-iscartesian--935387e6be10189634a51ca3.md) | 123 | `result-track:935387e6be10189634a51ca30ed00bf99d03d1b31d83b8c4edb7b9255b11259c` |
| 11 | `lemma` | [of_exists_isStronglyCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/of-exists-isstronglycartesian--25d8e70cfd1d2f0d9d0c36dd.md) | 156 | `result-track:25d8e70cfd1d2f0d9d0c36ddbb8436b1bf6eee0c75214980fcc2e573c10f8860` |
| 12 | `def` | [pullbackPullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant645cc2c1f16a14cfa45881082a603def5ac6ce389ebcd85e30ced46a36013c3e.lean/declarations/pullbackpullbackiso--57dab61411105030e79d3e6c.md) | 178 | `declaration-track:57dab61411105030e79d3e6c6b83cce5d7aef2523d7c738843f1959e242876c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
