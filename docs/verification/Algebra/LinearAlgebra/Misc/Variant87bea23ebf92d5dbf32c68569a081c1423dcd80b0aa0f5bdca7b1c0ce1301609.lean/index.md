# Verification target: GRWTSK.Algebra.LinearAlgebra.Misc.Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32be61dcf46bc1d99de028984e15d7bd0fe9d56a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32be61dcf46bc1d99de028984e15d7bd0fe9d56a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/declarations/submatrix-succabove-det-eq-negonepow-submatrix-succabove-det--82864fce2e6cb6003a6d7b22.md) | 31 | `result-track:82864fce2e6cb6003a6d7b22e2fc8f9e028b433c02f2cd0743a07572e4ce0577` |
| 2 | `theorem` | [submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det'](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/declarations/submatrix-succabove-det-eq-negonepow-submatrix-succabove-det--ac2b17280b3eec95418c6745.md) | 61 | `result-track:ac2b17280b3eec95418c67458f729f99103bb2769d639392c45703967168f39b` |
| 3 | `theorem` | [det_eq_sum_column_mul_submatrix_succAbove_succAbove_det](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/declarations/det-eq-sum-column-mul-submatrix-succabove-succabove-det--96a8a720135cd09cf25ba7f5.md) | 74 | `result-track:96a8a720135cd09cf25ba7f508db862266185d31508ced6232d59ff46710d615` |
| 4 | `theorem` | [det_eq_sum_row_mul_submatrix_succAbove_succAbove_det](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant87bea23ebf92d5dbf32c68569a081c1423dcd80b0aa0f5bdca7b1c0ce1301609.lean/declarations/det-eq-sum-row-mul-submatrix-succabove-succabove-det--5611131f5432d16c5221f5ec.md) | 90 | `result-track:5611131f5432d16c5221f5ec3e94aac2a790b43380197fcfe34bf75db5eaa92b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
