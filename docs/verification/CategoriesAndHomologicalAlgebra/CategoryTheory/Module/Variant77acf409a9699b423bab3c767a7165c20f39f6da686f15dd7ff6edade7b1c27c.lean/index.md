# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1c0d440a5a0a77abf354c24a67064224230530",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1c0d440a5a0a77abf354c24a67064224230530`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgebraCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Ring_of_Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/ring-of-mon--38a6729562b9439cbad16551.md) | 44 | `declaration-track:38a6729562b9439cbad165511033f80f37b427d0aa8151e80dca0009e49e7f35` |
| 2 | `instance` | [Algebra_of_Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/algebra-of-mon--1a4513b99bb0a91f76af833a.md) | 74 | `declaration-track:1a4513b99bb0a91f76af833a6d45b02e1739c0299d7fefdc8593c44d1c48b85f` |
| 3 | `theorem` | [algebraMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/algebramap--fb0ff14cd2cf0ad5d86a1dde.md) | 89 | `result-track:fb0ff14cd2cf0ad5d86a1ddebfdbd994fe53d7869e8e5b823dfc9eba4caaccad` |
| 4 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/functor--34b10ba8a65f6f70c118fc49.md) | 96 | `declaration-track:34b10ba8a65f6f70c118fc4942698ad893c8678ba23e4ae474414fe0a91a8c54` |
| 5 | `def` | [inverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/inverseobj--8b390b4c9b92be702d3eedd7.md) | 109 | `declaration-track:8b390b4c9b92be702d3eedd747ecacc51c6d1787b435e2a9576ea4e87f6f1f45` |
| 6 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/inverse--64e92388f6832662b74ea607.md) | 159 | `declaration-track:64e92388f6832662b74ea60741c8475c14a36ef8842fb4092a02757dd9f3ca7e` |
| 7 | `def` | [monModuleEquivalenceAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/monmoduleequivalencealgebra--c0b22405d078c40e661b0052.md) | 175 | `declaration-track:c0b22405d078c40e661b0052623a6d0e05ef77dd92ce9936f8b87d10c6053537` |
| 8 | `def` | [monModuleEquivalenceAlgebraForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant77acf409a9699b423bab3c767a7165c20f39f6da686f15dd7ff6edade7b1c27c.lean/declarations/monmoduleequivalencealgebraforget--303824e6ac0714ab721a0100.md) | 229 | `declaration-track:303824e6ac0714ab721a01000c3d632e904df959b1266c8a960c17b3bb164cbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
