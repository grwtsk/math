# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b056e189cd9b265cf50ec6718c50d31920f948e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b056e189cd9b265cf50ec6718c50d31920f948e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv--397c6e4a7d24dbf4b73ebb90.md) | 38 | `declaration-track:397c6e4a7d24dbf4b73ebb906a1f0e41e4c1fd91a6505ff032ac0c75f2d7e579` |
| 2 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv-apply--987d3cf3f3ef28411f9396b7.md) | 46 | `result-track:987d3cf3f3ef28411f9396b7e974c183ccdba7cfb8c6f6969f07c0cdcb459bca` |
| 3 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv-symm-apply--a67d540b910109540947eac0.md) | 51 | `result-track:a67d540b910109540947eac0a6b3d414c155b9892848e7eedb2558f4ecf306ff` |
| 4 | `theorem` | [mapEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv-refl--6f45e5fdbee1ed34e0dbe357.md) | 57 | `result-track:6f45e5fdbee1ed34e0dbe35785f8ef4c1dba2475d2e970f81e3970a078a07faf` |
| 5 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv--53e7b60d1cc8b61f835eeb74.md) | 70 | `declaration-track:53e7b60d1cc8b61f835eeb74fa4460cc33b642541058e4fbc6ac8c24c1ebcbae` |
| 6 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv-apply--9f8e2563177976a4e2ea50a0.md) | 78 | `result-track:9f8e2563177976a4e2ea50a0aed37a6d0967917b7bec5a4fe3d04c62618f35f4` |
| 7 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv-symm-apply--9a4817c19b2b5e99caa07860.md) | 84 | `result-track:9a4817c19b2b5e99caa078606b982e14d5ff6a708bc52fb1780a24e429d29f6f` |
| 8 | `theorem` | [mapEquiv_refl_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb398f2b6f55a89396c5bb72f557e3a3809e68b4bed571e8f706c90414aa2e226.lean/declarations/mapequiv-refl-refl--b57e1da4fccd40e7b609bfc2.md) | 90 | `result-track:b57e1da4fccd40e7b609bfc2eb53f6c30f8ea4f8ce74aa8b53afc3d3ab9b5122` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
