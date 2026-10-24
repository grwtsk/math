# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "203a282c37bf9c896e88997d964a3dd6f8ff3a95",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `203a282c37bf9c896e88997d964a3dd6f8ff3a95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean.json)

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
| 1 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv--9a5530bd3466baaf20bc7c21.md) | 36 | `declaration-track:9a5530bd3466baaf20bc7c213d9678ec9f5a3da94ada0738c74c46a73f3ee8a1` |
| 2 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv-apply--564a0a5648ec6f2507f54d1f.md) | 43 | `result-track:564a0a5648ec6f2507f54d1f4f960c33c792e8843292bcc50b0ae119707d91ae` |
| 3 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv-symm-apply--5b7ba77f7cc0dee58dd4db3b.md) | 47 | `result-track:5b7ba77f7cc0dee58dd4db3b744ad36e031fc00030892a24bbe50fbd64ac794d` |
| 4 | `theorem` | [mapEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv-refl--3a107e82b48db8d8ec4f1d53.md) | 52 | `result-track:3a107e82b48db8d8ec4f1d53c410efdeb61c2d77f98e9f39117ac635a1af0c05` |
| 5 | `def` | [mapEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv--7686d4066f9a2ca2fbba9ca3.md) | 64 | `declaration-track:7686d4066f9a2ca2fbba9ca34493a4e97c3bae8211a1a5e0da7b309401489658` |
| 6 | `theorem` | [mapEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv-apply--b5e0a3981582f13415231ad1.md) | 71 | `result-track:b5e0a3981582f13415231ad1864ee9298836c7717c53282ba1cf9c2ba61d2f73` |
| 7 | `theorem` | [mapEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv-symm-apply--31e17937df6a68dbdb78d8ee.md) | 76 | `result-track:31e17937df6a68dbdb78d8eeaa8262b2debcd50ba7b16c886e83a5795ac1d7f3` |
| 8 | `theorem` | [mapEquiv_refl_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb47511b19d0e13ae05ef7b4df383b3e2e93e9398d41836a76e0cbd0929d1c329.lean/declarations/mapequiv-refl-refl--55bfc9e0a43dee7230b514ce.md) | 81 | `result-track:55bfc9e0a43dee7230b514ce58f1f82f7344af296ecc4ef20509fabff91dc4e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
