# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomOrthogonal.Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a03c124e9de069138dadd56ba60934a904edfe0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a03c124e9de069138dadd56ba60934a904edfe0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.InvariantBasisNumber` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomOrthogonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/homorthogonal--fe490edadba98bff0532128c.md) | 60 | `declaration-track:fe490edadba98bff0532128cad1d8f0c77af18ec90816e8bc6e5f4e49ba66b4a` |
| 2 | `theorem` | [eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/eq-zero--9e05045e3170b7cde9652eb1.md) | 68 | `result-track:9e05045e3170b7cde9652eb127ea7a3a5895b9e20ce50a3fac5e5fa2d61a7b6f` |
| 3 | `def` | [matrixDecomposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/matrixdecomposition--7a0a90c5fecb5dc387b5095a.md) | 83 | `declaration-track:7a0a90c5fecb5dc387b5095aa06dd8a525dfd01a2c420a93b86c8381edd7fb02` |
| 4 | `def` | [matrixDecompositionAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/matrixdecompositionaddequiv--4d033f696d90f2c797298e7b.md) | 125 | `declaration-track:4d033f696d90f2c797298e7b740a01d7b6295b081444e9d18b3d0b5f4a2f0dd7` |
| 5 | `theorem` | [matrixDecomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/matrixdecomposition-id--3dff9924071d141c66020d01.md) | 137 | `result-track:3dff9924071d141c66020d0148bec193e5e9b1df7bac88ae0ede41b8275798b3` |
| 6 | `theorem` | [matrixDecomposition_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/matrixdecomposition-comp--bd45d13197ecdeea32f88ee9.md) | 153 | `result-track:bd45d13197ecdeea32f88ee936ba4f269e356eeed89987872c115c51dd182bef` |
| 7 | `def` | [matrixDecompositionLinearEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/matrixdecompositionlinearequiv--e3660b9912af18dc556578a6.md) | 182 | `declaration-track:e3660b9912af18dc556578a6c0849a24b8c2f1150013207adeca5b164c298163` |
| 8 | `theorem` | [equiv_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant433f0d5e692d4e129d4e98f0a2051132f20f98d63da3c94783546791c40ccf5e.lean/declarations/equiv-of-iso--b7a252d35e2d82da4d290401.md) | 207 | `result-track:b7a252d35e2d82da4d290401e4f96a5656d2c8a19d8f1f9336722c299ffd043b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
