# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e033aac35d91605be8ebff9de323cbb410070db0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e033aac35d91605be8ebff9de323cbb410070db0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.LiftingProperties.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [right_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/right-adjoint--dff2f500d57dc473b60ea6e9.md) | 37 | `result-track:dff2f500d57dc473b60ea6e95643f0d0fae1aa703b0f67a005f6bfc2a2911c85` |
| 2 | `def` | [rightAdjointLiftStructEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/rightadjointliftstructequiv--76b6a79f51275418d4899b65.md) | 47 | `declaration-track:76b6a79f51275418d4899b6555435ac2905b54bcf9bc72b7d9565f708114c728` |
| 3 | `theorem` | [right_adjoint_hasLift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/right-adjoint-haslift-iff--5afa6470791043ded608089e.md) | 64 | `result-track:5afa6470791043ded608089eacddbc4da24d19353145b71e9295fa62bb03a005` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/instance--e8589587b4ae032d46f17b36.md) | 68 | `declaration-track:e8589587b4ae032d46f17b36f37bf7542fcede12545e26a991a3a114cb9eff22` |
| 5 | `theorem` | [left_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/left-adjoint--5a541871a0d790e9be706c90.md) | 81 | `result-track:5a541871a0d790e9be706c9084e2a9f0981b4e2b5863af57a32faf7f96cb6daf` |
| 6 | `def` | [leftAdjointLiftStructEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/leftadjointliftstructequiv--ec7f847e1398695b01d5a09d.md) | 91 | `declaration-track:ec7f847e1398695b01d5a09d9f012a05fdf61428533a13f93290ae96d2980c7b` |
| 7 | `theorem` | [left_adjoint_hasLift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/left-adjoint-haslift-iff--6a5a714beaeea588cb87f7c8.md) | 109 | `result-track:6a5a714beaeea588cb87f7c80248d0511c222023f724ee5c3a8dc16cba87f3cf` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/instance--865520029768bf290b8b6384.md) | 113 | `declaration-track:865520029768bf290b8b63846d54de2c78675e6a8ecb50ecb39580de3bc0ae4f` |
| 9 | `theorem` | [hasLiftingProperty_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant0e1b404c41f8b6ec65fe910b78cf041250c6f31738b96fc319823461638421cb.lean/declarations/hasliftingproperty-iff--5f6fc67103b59e81966496d9.md) | 123 | `result-track:5f6fc67103b59e81966496d94550ad3c3e61f55ec6f331521c6582653bbb95cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
