# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProducts.Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21694ecd39af1c354fc333707a4ef96de149c10e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21694ecd39af1c354fc333707a4ef96de149c10e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/hasfiniteproducts--1dff99ac5e0f63df344b968a.md) | 30 | `declaration-track:1dff99ac5e0f63df344b968ad90bd5e7fc8bc4c3ea3a8c2100ef3f29184ff46e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/instance--4faa98ae18a39531e23d479a.md) | 35 | `declaration-track:4faa98ae18a39531e23d479acd5af1babfbc90e5bd2a688efd249e85a61c68e5` |
| 3 | `instance` | [hasLimitsOfShape_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/haslimitsofshape-discrete--ba43db6207b866da9f0c6ffa.md) | 39 | `declaration-track:ba43db6207b866da9f0c6ffac6c05127dbdbdeea00e03baae2135b68d75ebb0a` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/example--42effddc23d96db4473c5d25.md) | 46 | `declaration-track:42effddc23d96db4473c5d256536d99cb97a871e35584f1f53109d430f120d19` |
| 5 | `theorem` | [hasFiniteProducts_of_hasProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/hasfiniteproducts-of-hasproducts--8338341a77106595bd28805a.md) | 51 | `result-track:8338341a77106595bd28805a5808fa20c4d9149ad5b80099c94249352e690539` |
| 6 | `class` | [HasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/hasfinitecoproducts--f0e093236b397efd8f3397b6.md) | 60 | `declaration-track:f0e093236b397efd8f3397b6d31c004fbfba05107e1304541e2096cc82ff597f` |
| 7 | `instance` | [hasColimitsOfShape_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/hascolimitsofshape-discrete--8a1cd30ab02dc91b9be3eb8c.md) | 66 | `declaration-track:8a1cd30ab02dc91b9be3eb8c343e9b9f7211dba93e6cc46b8d7d1be7a4d90de4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/instance--706faa065e88da3cb3857eb5.md) | 73 | `declaration-track:706faa065e88da3cb3857eb549cd2d74fdf19c1d48f30f05bf34f16bc5aad0ca` |
| 9 | `theorem` | [hasFiniteCoproducts_of_hasCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant421e7cb52dd733c26caa41b89f44901d9dfda32a3f985a4a9770aaaedcf0c3f9.lean/declarations/hasfinitecoproducts-of-hascoproducts--f52ddbca3493d04c20f90516.md) | 79 | `result-track:f52ddbca3493d04c20f90516cfc14af62bcf1dde2191ea434c9133bb3df05385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
