# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.NormalizedDiskLogControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a502db428a8ef5f9c222d3f2a442a1f583faa9b2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a502db428a8ef5f9c222d3f2a442a1f583faa9b2`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskQuotientLog`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskQuotientLog.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_anchor_lift](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/declarations/negative-anchor-lift--f4299823d8a20cc8a4e22eec.md) | 18 | `result-track:f4299823d8a20cc8a4e22eec630d8373bee589054415d08b9cfb1399c62b7cdd` |
| 2 | `theorem` | [normalized_exp_not_negative_at_center](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/declarations/normalized-exp-not-negative-at-center--fb90a80c48f19dafe2c1c516.md) | 26 | `result-track:fb90a80c48f19dafe2c1c5168c2d5a54d68a097e337bcf9116460e95293e7060` |
| 3 | `theorem` | [raw_removed_center_is_wrong](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/declarations/raw-removed-center-is-wrong--1c051516d5f1e2eea439ac4d.md) | 30 | `result-track:1c051516d5f1e2eea439ac4ddf5f6385a88e6dbc84370e3d1c03c078884dca91` |
| 4 | `theorem` | [exponential_has_no_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/declarations/exponential-has-no-zero--3a39e8a9bff4320b327255ef.md) | 34 | `result-track:3a39e8a9bff4320b327255ef95838c13f3e2dc781c2b9b9732d1a342149e9bff` |
| 5 | `theorem` | [positive_floor_rejects_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/declarations/positive-floor-rejects-zero--f049b2561edb87faa3c2f60b.md) | 38 | `result-track:f049b2561edb87faa3c2f60b989cbb81d9426785a8ed8b1fb697342eb37f9372` |
| 6 | `theorem` | [normalized_factor_center](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NormalizedDiskLogControls.lean/declarations/normalized-factor-center--4c85afed2994fd518a52a6c3.md) | 42 | `result-track:4c85afed2994fd518a52a6c3835f6f55933e0cbba7e08f3586adfaea2c408a07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
