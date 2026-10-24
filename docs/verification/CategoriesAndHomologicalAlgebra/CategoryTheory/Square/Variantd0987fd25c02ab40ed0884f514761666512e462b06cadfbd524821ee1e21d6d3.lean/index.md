# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ad613f8d5c0c98b98bee0c96433085201f1fe38",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ad613f8d5c0c98b98bee0c96433085201f1fe38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.CommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Square` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [cokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/declarations/cokernelcofork--9c46dea6a68f572c509f7f56.md) | 35 | `declaration-track:9c46dea6a68f572c509f7f565cec309ce1a8d2c6385df78ed3d509c5d91b5f18` |
| 2 | `def` | [isPushoutEquivIsColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/declarations/ispushoutequiviscolimitcokernelcofork--558a66b399d19ff278acc055.md) | 41 | `declaration-track:558a66b399d19ff278acc055f185f3173fa23b0b817eaf896dd13e8d792e1a4d` |
| 3 | `def` | [IsPushout.isColimitCokernelCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/declarations/ispushout-iscolimitcokernelcofork--ab48784beab6e22d564d436f.md) | 52 | `declaration-track:ab48784beab6e22d564d436fdde4651da5ad8d7ff4f302d60304e41c777c9fba` |
| 4 | `abbrev` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/declarations/kernelfork--f331c8b4d8def711fd6e649d.md) | 57 | `declaration-track:f331c8b4d8def711fd6e649d3f0c2bfb66a28dbeddec967f7fca0a8c7f8dbf72` |
| 5 | `def` | [isPullbackEquivIsLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/declarations/ispullbackequivislimitkernelfork--413745dbd5c8e826d2d42339.md) | 63 | `declaration-track:413745dbd5c8e826d2d423391b97ae8b25cfd4483c7d68d8ef58e58f32d55fa5` |
| 6 | `def` | [IsPullback.isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variantd0987fd25c02ab40ed0884f514761666512e462b06cadfbd524821ee1e21d6d3.lean/declarations/ispullback-islimitkernelfork--45c299ed4eb65ae3a67bded1.md) | 74 | `declaration-track:45c299ed4eb65ae3a67bded1ab3a71c5fd3218230b01a536e50f883ddce6eca3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
