# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Cardinality.Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b305dbf8197fe7f0dcc064bafd849ae7f5070aa4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b305dbf8197fe7f0dcc064bafd849ae7f5070aa4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Cardinal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_cardinalMk_le_sigma_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/declarations/lift-cardinalmk-le-sigma-polynomial--4e45b8ed1bd8e5e9e65e0d2d.md) | 36 | `result-track:4e45b8ed1bd8e5e9e65e0d2df62bc5599709e0c5547a99dd3e12a280b8db528c` |
| 2 | `theorem` | [lift_cardinalMk_le_max](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/declarations/lift-cardinalmk-le-max--47aa6cb1cbcd0aabb8b648c9.md) | 53 | `result-track:47aa6cb1cbcd0aabb8b648c95fcf31b47bd157ffece293a360ab918b1b97ac66` |
| 3 | `theorem` | [cardinalMk_le_sigma_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/declarations/cardinalmk-le-sigma-polynomial--9275f835628d279f69453f53.md) | 69 | `result-track:9275f835628d279f69453f5371ce642b75f313751958433c5f3ed588cff69cf6` |
| 4 | `theorem` | [cardinalMk_le_max](../../../../../mathematics/Algebra/CommutativeAlgebra/Cardinality/Variantd5d79dd6b9f77cffe17fd6a50d1ccbdb92c6b0371721b80f28e28bde9786085a.lean/declarations/cardinalmk-le-max--d2633afe6c1f16502489a28c.md) | 79 | `result-track:d2633afe6c1f16502489a28cb43621532e8698cf2760270ee7d5a35ec3fb8ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
