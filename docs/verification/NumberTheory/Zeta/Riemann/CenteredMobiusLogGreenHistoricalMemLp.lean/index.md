# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHistoricalMemLp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694bd510bad6e9359f018e5839359dc200d5f523",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694bd510bad6e9359f018e5839359dc200d5f523`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMinimalParseval`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thinHistoricalStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalstep--9f1878752616bb381c68a045.md) | 20 | `declaration-track:9f1878752616bb381c68a0452ad23166b8a494b55e64cc35c54a18adeee0299b` |
| 2 | `def` | [thinHistoricalAtomicCumulative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalatomiccumulative--07cc2e1f32fcc96c2be3503f.md) | 22 | `declaration-track:07cc2e1f32fcc96c2be3503f3e9125984e97755bbb9f8eb8be7dc1264a32cd1c` |
| 3 | `theorem` | [cumulative_eq_atomic_sub_log](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/cumulative-eq-atomic-sub-log--ecd1b0127d06b620d5398b09.md) | 27 | `result-track:ecd1b0127d06b620d5398b09aaaf47ed2d84b54573086e06f56257fdf3bcd026` |
| 4 | `theorem` | [thinHistoricalStep_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalstep-measurable--c64b14d00d46265244db67bd.md) | 33 | `result-track:c64b14d00d46265244db67bdbdbc81cfb919ade5fcd8bce7d74e2c48200d01d3` |
| 5 | `theorem` | [thinHistoricalAtomicCumulative_measurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalatomiccumulative-measurable--c16fba6c63498dc0942c1087.md) | 38 | `result-track:c16fba6c63498dc0942c1087ffc68e7f8c80141ef3fbc3bf104b3e8709c6bd10` |
| 6 | `theorem` | [thinHistoricalAtomicCumulative_bounded](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalatomiccumulative-bounded--0ef167563c7cbd127a57796f.md) | 43 | `result-track:0ef167563c7cbd127a57796f76d4de2b5bcd0dd78b7b363a102ce6aa2158b1c3` |
| 7 | `theorem` | [thinHistoricalGreenResidual_aestronglyMeasurable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalgreenresidual-aestronglymeasurable--367f4ed6c6a724c5dce6043e.md) | 65 | `result-track:367f4ed6c6a724c5dce6043e3fa2e07edf0a5819cda02ff4bd1ab56659fab276` |
| 8 | `theorem` | [thinHistoricalGreenResidual_memLp](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenHistoricalMemLp.lean/declarations/thinhistoricalgreenresidual-memlp--d5e72aa76ba80f73c1f26692.md) | 78 | `result-track:d5e72aa76ba80f73c1f26692e574c96ef5d66e09ec7f2c1b83e9f4b1b0b9e3b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
