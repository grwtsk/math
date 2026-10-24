# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a9fcb94fe182265f3c5fcc7db0350674a919a4a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a9fcb94fe182265f3c5fcc7db0350674a919a4a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext_basis](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean/declarations/ext-basis--983eb613b70c7c4fa2e0e1d8.md) | 42 | `result-track:983eb613b70c7c4fa2e0e1d8e50ddc87176106e8ae62f1762d2ed54c67c8ca84` |
| 2 | `theorem` | [sum_repr_mul_repr_mulₛₗ](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean/declarations/sum-repr-mul-repr-mul--92cdb2c6cb0b854185285697.md) | 49 | `result-track:92cdb2c6cb0b854185285697785fce0f13c783324d8312a659498f7b971d1fe4` |
| 3 | `theorem` | [sum_repr_mul_repr_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantb91244514a87ca4e7b6b614371220ddb4426eee1020c38f72212f0c55bd24a1d.lean/declarations/sum-repr-mul-repr-mul--ce5d61fe83b87c499505a833.md) | 59 | `result-track:ce5d61fe83b87c499505a833d29df864602086d01890ea2baecd17a90d3e3623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
