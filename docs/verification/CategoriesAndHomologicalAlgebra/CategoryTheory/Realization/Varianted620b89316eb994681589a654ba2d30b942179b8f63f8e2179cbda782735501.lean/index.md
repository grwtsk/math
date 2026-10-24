# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Realization.Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb57f2ebf5ff1ff518089577ba1c26262961ee72",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb57f2ebf5ff1ff518089577ba1c26262961ee72`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.System` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealizationTheory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationtheory--a6430f6299f67b5587ce2af1.md) | 23 | `declaration-track:a6430f6299f67b5587ce2af1330bc14b4cf1df4b826e06dce0ddfa9a57454bc9` |
| 2 | `def` | [realizationMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationmap--a5f6170263570fa6b10c9db3.md) | 33 | `declaration-track:a5f6170263570fa6b10c9db3815e9641c838cb6bbf7079a16b9c7110782d760b` |
| 3 | `theorem` | [realizationMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationmap-id--47e82a4ad8865003a1694d35.md) | 41 | `result-track:47e82a4ad8865003a1694d35a46936912b15442ea7de9e47705413aa346d73e9` |
| 4 | `theorem` | [realizationMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationmap-comp--e5aa32588ad91f95672fd5fe.md) | 47 | `result-track:e5aa32588ad91f95672fd5fe0d5b37f86516a1e485cf22efc0f844e40fdc7b51` |
| 5 | `def` | [realizationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationiso--11b4df7ad23cc418f21a8665.md) | 61 | `declaration-track:11b4df7ad23cc418f21a8665e8b21d1ef8c09f1d84ac46198fba59abed6906c9` |
| 6 | `theorem` | [realizationIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationiso-hom--cb5ed7ff427079f94baaeeff.md) | 69 | `result-track:cb5ed7ff427079f94baaeefff29365358d0abdefc08e01fd0c14ad6000085002` |
| 7 | `theorem` | [realizationIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/realizationiso-inv--6d3425d32e42a1bd6e7aa03f.md) | 77 | `result-track:6d3425d32e42a1bd6e7aa03fe9418301fe9950f78ed180f9548054f1e77757b4` |
| 8 | `structure` | [FactorPreservingRealization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Realization/Varianted620b89316eb994681589a654ba2d30b942179b8f63f8e2179cbda782735501.lean/declarations/factorpreservingrealization--5807d9c666db0016ff9d6e1c.md) | 90 | `declaration-track:5807d9c666db0016ff9d6e1cf3bf087de3241f2c8079f889f52eb2eafa024a37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
