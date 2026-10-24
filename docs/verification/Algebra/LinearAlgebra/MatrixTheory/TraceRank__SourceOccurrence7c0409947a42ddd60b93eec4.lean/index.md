# Verification target: GRWTSK.LinearAlgebra.Matrix.TraceRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fa306c9fd6975db2cec273e39e150fca4423cb4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Matrix/TraceRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fa306c9fd6975db2cec273e39e150fca4423cb4`.

Source path: `GRWTSK/LinearAlgebra/Matrix/TraceRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Matrix/TraceRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Inequalities.FiniteSquareSum`](../../../../../mathematics/Analysis/Inequalities/FiniteSquareSum.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hermitian_trace_sq_eq_sum_eigenvalues_sq](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/declarations/hermitian-trace-sq-eq-sum-eigenvalues-sq--828f93f0ee59be6d8eaf0b80.md) | 31 | `result-track:828f93f0ee59be6d8eaf0b800e95b56f995cb5a9e50613026bc39b2ed1351db4` |
| 2 | `theorem` | [hermitian_trace_sq_le_rank_mul_trace_sq](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/declarations/hermitian-trace-sq-le-rank-mul-trace-sq--d21a735f84a5501061c32e99.md) | 40 | `result-track:d21a735f84a5501061c32e99268ba2fd0ecdc3d3972bf12ef2a70badd7c3cb2c` |
| 3 | `theorem` | [hermitian_trace_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/declarations/hermitian-trace-sq-pos--1375367ee7862031a3726630.md) | 49 | `result-track:1375367ee7862031a3726630426dba931e58fa680705437ba984e4117a415852` |
| 4 | `theorem` | [hermitian_rank_ge_trace_ratio](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/declarations/hermitian-rank-ge-trace-ratio--73581ccf170301c2bd7c23cf.md) | 61 | `result-track:73581ccf170301c2bd7c23cfb169892518cd22342a3e84db656c52151567f8fb` |
| 5 | `theorem` | [gram_rank_ge_trace_ratio](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/declarations/gram-rank-ge-trace-ratio--93c890fc4019d4a0896fc88f.md) | 69 | `result-track:93c890fc4019d4a0896fc88f56d088aa8748294c8da2b378994f76580eb1e63f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
