# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentLogEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55bf2a7d8ab14aae02ba369e2114ea89a08d1882",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55bf2a7d8ab14aae02ba369e2114ea89a08d1882`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogDerivedPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/LogDerivedPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_head_sub_log_evaluated_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean/declarations/norm-head-sub-log-evaluated-le--5dfc61f3dc59648899e4df1d.md) | 31 | `result-track:5dfc61f3dc59648899e4df1d92942fea72b583e61e73d030d7bf910654b23035` |
| 2 | `theorem` | [prime_in_square_of_log_inputs](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean/declarations/prime-in-square-of-log-inputs--e0feaeea035ed321ea2d487c.md) | 40 | `result-track:e0feaeea035ed321ea2d487c223c95714f775da659d0137344903aac2f3d31e8` |
| 3 | `theorem` | [prime_in_square_of_rounded_log_inputs](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean/declarations/prime-in-square-of-rounded-log-inputs--077132c60eadc25b45fdeb03.md) | 51 | `result-track:077132c60eadc25b45fdeb03e031bfdae522af82c08def2c192574a73066cd41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
