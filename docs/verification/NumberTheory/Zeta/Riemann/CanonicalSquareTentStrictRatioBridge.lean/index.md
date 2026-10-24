# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaf691ebf79f7b8ef6697b1d2a5ad30ebf48caf7",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaf691ebf79f7b8ef6697b1d2a5ad30ebf48caf7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCofactorZeroSign.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strict_ratio_of_pivot_gaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean/declarations/strict-ratio-of-pivot-gaps--a9df112938a511e73506f729.md) | 33 | `result-track:a9df112938a511e73506f729e97b36888badede0c6d9f9543d675f72ba2c9689` |
| 2 | `theorem` | [cofactorZero_ne_zero_of_stage_pivot_gaps](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentStrictRatioBridge.lean/declarations/cofactorzero-ne-zero-of-stage-pivot-gaps--62e10358ea173ca2e9cd707b.md) | 50 | `result-track:62e10358ea173ca2e9cd707bcc8a2260805b65039cc913fe3ad96a20f07c7435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
