# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a07af4cdbfc10eea3204aad39d02e66e2df7ad2b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a07af4cdbfc10eea3204aad39d02e66e2df7ad2b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.LiftingProperties.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [right_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/right-adjoint--16c8bcac757434ddd236e203.md) | 45 | `result-track:16c8bcac757434ddd236e20307d19ff23de78afc26b0212347a5247eb4fcd93b` |
| 2 | `def` | [rightAdjointLiftStructEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/rightadjointliftstructequiv--9d3dbd58f3063904dd2f84b4.md) | 55 | `declaration-track:9d3dbd58f3063904dd2f84b45fea890d3ed3f219219750ba1f1d9585bd02729d` |
| 3 | `theorem` | [right_adjoint_hasLift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/right-adjoint-haslift-iff--9c2299e4c77d2d94f24297d9.md) | 72 | `result-track:9c2299e4c77d2d94f24297d904d6b0844ec565a55751cb730360b0b97275e276` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/instance--a6f5e552687cdc5c39140e3e.md) | 76 | `declaration-track:a6f5e552687cdc5c39140e3ea7e0cd571edb54e9b82920e90e7f5d0394e01a00` |
| 5 | `theorem` | [left_adjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/left-adjoint--e51676c8595054b49cb2bc91.md) | 89 | `result-track:e51676c8595054b49cb2bc91d8ace725b1edd3f2e44f16d55833ce3dbe051ff2` |
| 6 | `def` | [leftAdjointLiftStructEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/leftadjointliftstructequiv--f87f12ff76d335da7d155ccb.md) | 99 | `declaration-track:f87f12ff76d335da7d155ccbcdd7c427047ff4a922a20587d4b83f8b9150edb1` |
| 7 | `theorem` | [left_adjoint_hasLift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/left-adjoint-haslift-iff--e221602c4784c7ef89bde341.md) | 117 | `result-track:e221602c4784c7ef89bde341fb2a2ea18b18b4b3ea3ed60cd5004589f7e61df2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/instance--ec26f87e3d816ee2568659f8.md) | 121 | `declaration-track:ec26f87e3d816ee2568659f8ac4083a139cca672f03acbd6defb1d93ff281138` |
| 9 | `theorem` | [hasLiftingProperty_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantd8ed61a4761c0d4dbaea72cd5aae1498bda29f2c90bed954b92c2583c1cc41fc.lean/declarations/hasliftingproperty-iff--ec1b624aebca9863527e2cb3.md) | 131 | `result-track:ec1b624aebca9863527e2cb32571136923d864e067b5d3af5eb751ac78ceac81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
