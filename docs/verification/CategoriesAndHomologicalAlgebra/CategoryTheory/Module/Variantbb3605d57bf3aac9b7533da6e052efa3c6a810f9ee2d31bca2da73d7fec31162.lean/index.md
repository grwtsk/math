# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d5c435fc07df33c4b30e56d505a242bb546b211",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d5c435fc07df33c4b30e56d505a242bb546b211`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgebraCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Ring_of_Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/ring-of-mon--45ec551d8cc3f24aa6d4fca5.md) | 52 | `declaration-track:45ec551d8cc3f24aa6d4fca56681d3180bb857d35ea795e4b6f8b1897f3a7651` |
| 2 | `instance` | [Algebra_of_Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/algebra-of-mon--ec545bc6fdba6f667308d761.md) | 82 | `declaration-track:ec545bc6fdba6f667308d761c896b196bcef1f8dda1aac90f0fbaf7a2bbbf3dd` |
| 3 | `theorem` | [algebraMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/algebramap--867ae92f3ae0667412dcc267.md) | 97 | `result-track:867ae92f3ae0667412dcc2673ff16f366cff636a962158b831bf4c9bfb0711ca` |
| 4 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/functor--3a5ceb2496e88b66329a82dd.md) | 104 | `declaration-track:3a5ceb2496e88b66329a82dd4a24d2f0f06f0c7dc17493d1e7e8d81548a94fb0` |
| 5 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/inverseobj--dc28da48805c43c38317f815.md) | 117 | `declaration-track:dc28da48805c43c38317f815077a669f8435621d4be857e11b283734c4d3fdfc` |
| 6 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/inverse--9c1cb3676c33e8004258b3f8.md) | 167 | `declaration-track:9c1cb3676c33e8004258b3f8119ea3074c70c4866a68630c222449723892bb8e` |
| 7 | `def` | [monModuleEquivalenceAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/monmoduleequivalencealgebra--309d58164620e691ad8a4c6e.md) | 183 | `declaration-track:309d58164620e691ad8a4c6e824a3d1c49e105c6de9e08f7c5ff694da88c1d45` |
| 8 | `def` | [monModuleEquivalenceAlgebraForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantbb3605d57bf3aac9b7533da6e052efa3c6a810f9ee2d31bca2da73d7fec31162.lean/declarations/monmoduleequivalencealgebraforget--2c63e9afb15edcb48057b5fc.md) | 237 | `declaration-track:2c63e9afb15edcb48057b5fce8bc2c75409d28518ea7fe85add649b2fcc96643` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
