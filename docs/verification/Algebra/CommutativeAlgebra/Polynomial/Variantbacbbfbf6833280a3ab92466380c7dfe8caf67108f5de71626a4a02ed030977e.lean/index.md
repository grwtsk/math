# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b0f77a33ecbe484c4fb1b1fec9d77f1835acf2a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b0f77a33ecbe484c4fb1b1fec9d77f1835acf2a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_det_X_add_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/declarations/natdegree-det-x-add-c-le--812f367594e10cdfd6612754.md) | 36 | `result-track:812f367594e10cdfd661275454eacdb4288db3e50449f190c9a1a786be53ba22` |
| 2 | `theorem` | [coeff_det_X_add_C_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/declarations/coeff-det-x-add-c-zero--3748d4fb3813c48121cd16b8.md) | 58 | `result-track:3748d4fb3813c48121cd16b8bd28d92e23f7ebf7e46c4f7154aec271c8c9f12a` |
| 3 | `theorem` | [coeff_det_X_add_C_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/declarations/coeff-det-x-add-c-card--a657f60ddc9ec0849fd18701.md) | 68 | `result-track:a657f60ddc9ec0849fd187019ce75f3cce3b5f8ab29ff06a0a4128e41d2f1f9c` |
| 4 | `theorem` | [leadingCoeff_det_X_one_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantbacbbfbf6833280a3ab92466380c7dfe8caf67108f5de71626a4a02ed030977e.lean/declarations/leadingcoeff-det-x-one-add-c--0ec94696039f4e5fd5f8994d.md) | 83 | `result-track:0ec94696039f4e5fd5f8994d075d5af6c38d7f91bd56d8ec9d6e50db7dd319da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
