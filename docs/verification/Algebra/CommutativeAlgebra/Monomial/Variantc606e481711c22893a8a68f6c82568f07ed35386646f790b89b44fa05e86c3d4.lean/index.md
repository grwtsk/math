# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Monomial.Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f014f937902e9d267939226fe821325d5d6da9a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f014f937902e9d267939226fe821325d5d6da9a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natDegree_le_pred](../../../../../mathematics/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean/declarations/natdegree-le-pred--7b5d0a5c094fa06f68b268f7.md) | 36 | `result-track:7b5d0a5c094fa06f68b268f72b72e3fda0ec5b1725d773a68f50a70817f4a3ed` |
| 2 | `theorem` | [monomial_natDegree_leadingCoeff_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean/declarations/monomial-natdegree-leadingcoeff-eq-self--faa817874a318da9aa4ce7a6.md) | 43 | `result-track:faa817874a318da9aa4ce7a6b36592ab9a6cdc53374b3a0d68b665529ff015f6` |
| 3 | `theorem` | [C_mul_X_pow_eq_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Monomial/Variantc606e481711c22893a8a68f6c82568f07ed35386646f790b89b44fa05e86c3d4.lean/declarations/c-mul-x-pow-eq-self--0290ceed75471d8477da28cd.md) | 49 | `result-track:0290ceed75471d8477da28cdccd59643845a984c81823c3c8b96d7b12f609205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
