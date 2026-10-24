# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "131c2c52bb224e10fc2462359f532fab959396f4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `131c2c52bb224e10fc2462359f532fab959396f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Injective` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [preservesHomology_preadditiveYonedaObj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean/declarations/preserveshomology-preadditiveyonedaobj-of-injective--5aea5990b0099aa73be4c7be.md) | 39 | `declaration-track:5aea5990b0099aa73be4c7be2eaf76a82483f8dc24bab1b344f4bbfff36fd32f` |
| 2 | `instance` | [preservesFiniteColimits_preadditiveYonedaObj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean/declarations/preservesfinitecolimits-preadditiveyonedaobj-of-injective--d45ad9391500485ee180b8ad.md) | 45 | `declaration-track:d45ad9391500485ee180b8ad15f493643ca3c02a731f8e0446d5f8f89963c0a3` |
| 3 | `theorem` | [injective_of_preservesFiniteColimits_preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant961eab458ea5dc3d0595675a3e4f6db0a541db8377594d1b62f740870e5ad7bc.lean/declarations/injective-of-preservesfinitecolimits-preadditiveyonedaobj--421df430036be5576ea59a4e.md) | 50 | `result-track:421df430036be5576ea59a4e0d1738665f5fd5cdc28c42eb2f714aba22120986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
