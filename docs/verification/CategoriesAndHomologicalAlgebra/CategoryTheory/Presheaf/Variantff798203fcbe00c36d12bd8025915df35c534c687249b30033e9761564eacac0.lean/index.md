# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb136a03bf5dea31cd04d0970db603f51a49bbb0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb136a03bf5dea31cd04d0970db603f51a49bbb0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Generator.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/freeyoneda--0c739ceb5e3d15594043dcf2.md) | 41 | `declaration-track:0c739ceb5e3d15594043dcf24a146502a78ddc1dea87839e00353507e2928bf8` |
| 2 | `def` | [freeYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/freeyonedahomequiv--cb7c3b6d6329f096ca8ae955.md) | 46 | `declaration-track:cb7c3b6d6329f096ca8ae9550e323953093ab9344c740a199a3609083c4bb2aa` |
| 3 | `lemma` | [freeYonedaHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/freeyonedahomequiv-comp--18a99f82c4799562a927cc3f.md) | 59 | `result-track:18a99f82c4799562a927cc3fc7fdb2fd2133a9ff32c9db48684611373954493d` |
| 4 | `lemma` | [freeYonedaHomEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/freeyonedahomequiv-symm-comp--480806678228d7b545df18ef.md) | 65 | `result-track:480806678228d7b545df18ef21d311c77f74608937b200bc94577dab420a608e` |
| 5 | `lemma` | [isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/isseparating--1aa19b9ed78769ea55d1ac62.md) | 74 | `result-track:1aa19b9ed78769ea55d1ac62652b8a1e2bf9ee7ba7fadd75fa4ce4005a27cafd` |
| 6 | `lemma` | [isSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/isseparator--75303f28697a4e0e4f063546.md) | 84 | `result-track:75303f28697a4e0e4f063546b51c4b7c2cb8235b39643bd57158170f8787a026` |
| 7 | `instance` | [hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantff798203fcbe00c36d12bd8025915df35c534c687249b30033e9761564eacac0.lean/declarations/hasseparator--d4fde94b5d6761edc004d16a.md) | 91 | `declaration-track:d4fde94b5d6761edc004d16a73f0b287e06afe369876f1a008786e213f60fe68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
