# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.OptionalStopping.Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bb4951050171b288755eaffc51c6a1e9af72019",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bb4951050171b288755eaffc51c6a1e9af72019`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.HittingTime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submartingale.expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/declarations/submartingale-expected-stoppedvalue-mono--c1ae3953bd2c1002ab94010e.md) | 48 | `result-track:c1ae3953bd2c1002ab94010e3e59ffdb7012c4c390d9179c1fd4680f1ba724e7` |
| 2 | `theorem` | [submartingale_of_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/declarations/submartingale-of-expected-stoppedvalue-mono--c9bbe3d04dab6346ff13a049.md) | 74 | `result-track:c9bbe3d04dab6346ff13a0496e56a4bb68a31f97086ff7804a28827bd2c16156` |
| 3 | `theorem` | [submartingale_iff_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/declarations/submartingale-iff-expected-stoppedvalue-mono--384d057e4d90f01b348f3d93.md) | 90 | `result-track:384d057e4d90f01b348f3d93b2c06cd36f6ee680823ed1a778dd28a77f4c9384` |
| 4 | `theorem` | [Submartingale.stoppedProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/declarations/submartingale-stoppedprocess--98795b13892ba1eec375fb2e.md) | 98 | `result-track:98795b13892ba1eec375fb2e5d654eeaca318ca23b579f7aa548568434d9d7f5` |
| 5 | `theorem` | [smul_le_stoppedValue_hitting](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/declarations/smul-le-stoppedvalue-hitting--d05c1131bc9f4a518ce76e4d.md) | 114 | `result-track:d05c1131bc9f4a518ce76e4d0a2c34e14cafdbf2e39d8bf09adf13d65cd83785` |
| 6 | `theorem` | [maximal_ineq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant103ae069d1087b0f27ad1ce780fa475f2e3bf5d7d1dd27b4485803a5317264fa.lean/declarations/maximal-ineq--9144f02a893235dc44070cb9.md) | 142 | `result-track:9144f02a893235dc44070cb952ce7af8cb0f6cceafc24e394096267687ca3884` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
