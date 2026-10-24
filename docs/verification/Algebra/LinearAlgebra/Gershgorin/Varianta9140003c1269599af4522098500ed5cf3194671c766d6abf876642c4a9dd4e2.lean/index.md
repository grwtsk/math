# Verification target: GRWTSK.Algebra.LinearAlgebra.Gershgorin.Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4916d6bd2ce37c5f4c34af6772025bd0e9651bb6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4916d6bd2ce37c5f4c34af6772025bd0e9651bb6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvalue_mem_ball](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean/declarations/eigenvalue-mem-ball--de59f8e35596ffe62284cf9f.md) | 28 | `result-track:de59f8e35596ffe62284cf9f389c7b37f36ed0ad8de7ee0248dc831e8739a9b8` |
| 2 | `theorem` | [det_ne_zero_of_sum_row_lt_diag](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean/declarations/det-ne-zero-of-sum-row-lt-diag--a2633ea7de6456aef485bdc9.md) | 61 | `result-track:a2633ea7de6456aef485bdc9566410a80880c64a68e52b13a0d83c47380ce4db` |
| 3 | `theorem` | [det_ne_zero_of_sum_col_lt_diag](../../../../../mathematics/Algebra/LinearAlgebra/Gershgorin/Varianta9140003c1269599af4522098500ed5cf3194671c766d6abf876642c4a9dd4e2.lean/declarations/det-ne-zero-of-sum-col-lt-diag--c1a3476af8b3ec852598b66a.md) | 71 | `result-track:c1a3476af8b3ec852598b66a7c76a3240ce603f19ec3de09381dac9fffdbf49f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
