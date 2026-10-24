# Verification target: GRWTSK.Algebra.LinearAlgebra.Gershgorin.Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "751572ba87d5bc412424c19ce93efaa22c2bd0c1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `751572ba87d5bc412424c19ce93efaa22c2bd0c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvalue_mem_ball](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean/declarations/eigenvalue-mem-ball--a41750d7cd3f31aab47d8dcf.md) | 34 | `result-track:a41750d7cd3f31aab47d8dcf2066202b857b03b386dbc7ec3eaae2d34f11c394` |
| 2 | `theorem` | [det_ne_zero_of_sum_row_lt_diag](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean/declarations/det-ne-zero-of-sum-row-lt-diag--62c42f13f39c226aac220f41.md) | 67 | `result-track:62c42f13f39c226aac220f41ed4ec057a64e0c8d58517c7c56194589bb4ad2f1` |
| 3 | `theorem` | [det_ne_zero_of_sum_col_lt_diag](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Variant4659184b650f2afc4e77168b1846c5f69d12357be5502b75a86e18628f1fdd6f.lean/declarations/det-ne-zero-of-sum-col-lt-diag--62bd5d7a2f12d774b76c8eb6.md) | 77 | `result-track:62bd5d7a2f12d774b76c8eb67e4717f664e37b79312c2a84499da3ee75fc830d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
