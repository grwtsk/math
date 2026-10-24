# Verification target: GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a800d0636b95d3f757b3a9227a5af502d4ca2eac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a800d0636b95d3f757b3a9227a5af502d4ca2eac`.

Source path: `GRWTSK/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel`](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput`](../../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetGeometryLatticeInput.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitData](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/unitdata--4cc5cc080fdde2d265512893.md) | 25 | `declaration-track:4cc5cc080fdde2d2655128939c06a02f85437c5d30486b4ca2b8fe4101879648` |
| 2 | `theorem` | [unitData_count_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/unitdata-count-control--acfa5005634264b07c6752bd.md) | 41 | `result-track:acfa5005634264b07c6752bd0f314a8bc44aca2c66597d82bd826e5f813ec6bf` |
| 3 | `theorem` | [unitData_member_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/unitdata-member-control--aa8a0facb4eafbb7da50ef5e.md) | 46 | `result-track:aa8a0facb4eafbb7da50ef5e74b60f7f8a41b41ad75997dd5bf1e97634aa1c8f` |
| 4 | `theorem` | [coefficient_primitive_not_variable_primitive_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/coefficient-primitive-not-variable-primitive-control--81a8fabfbf60185b100bca02.md) | 52 | `result-track:81a8fabfbf60185b100bca02e3ce11dd53877178c3896fda12e17238e6a380aa` |
| 5 | `theorem` | [primitive_ray_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/primitive-ray-control--fc1f394b637c354f9ef29952.md) | 61 | `result-track:fc1f394b637c354f9ef29952fba889de607802d7ab41c83354459b2f733dc373` |
| 6 | `theorem` | [saturated_kernel_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/saturated-kernel-control--22d6ff74532bb48da83d43ce.md) | 67 | `result-track:22d6ff74532bb48da83d43ce3e04f8295dfac92767860c1fb1ab71ae9f5caa69` |
| 7 | `theorem` | [primitive_normal_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/primitive-normal-control--6347895512c9da316ed45f30.md) | 74 | `result-track:6347895512c9da316ed45f30cd8e74a8e3558fe669218988e8cf93b7116efb30` |
| 8 | `theorem` | [primitive_normal_surjective_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/primitive-normal-surjective-control--1ee2cbdc95800b1b587bce0b.md) | 79 | `result-track:1ee2cbdc95800b1b587bce0b63976871064b6279fe15eb218383cb127effd79e` |
| 9 | `def` | [lopsidedData](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/lopsideddata--75328cb628b2c737d0f7441e.md) | 85 | `declaration-track:75328cb628b2c737d0f7441e0faf2bad2530dce63d80abe1e4a952e1bea92743` |
| 10 | `theorem` | [lopsided_scaleHeight_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/lopsided-scaleheight-control--7ecc60c21d68e584fc7fbd72.md) | 100 | `result-track:7ecc60c21d68e584fc7fbd7283dbbfdf6fd240a496f67fd13259da6ea972b64e` |
| 11 | `theorem` | [natural_division_rejected_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/natural-division-rejected-control--7bea8af453acd2f4535809d8.md) | 106 | `result-track:7bea8af453acd2f4535809d82613e697f528d44d3025155192ce4f8d80b86b7b` |
| 12 | `theorem` | [denominator_positive_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/denominator-positive-control--0d686e7fe9dbb9c561b90fb1.md) | 112 | `result-track:0d686e7fe9dbb9c561b90fb1b2f092684da857eaa888ee3f01a694ce4b374e50` |
| 13 | `theorem` | [named_bound_not_automatic_control](../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/Checks/PrimitiveLinearBoxControls.lean/declarations/named-bound-not-automatic-control--c79ebf0cc7993cb5cc5de79a.md) | 118 | `result-track:c79ebf0cc7993cb5cc5de79af7707565b9bcc2bc4828e45bc79505a133ab379c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
