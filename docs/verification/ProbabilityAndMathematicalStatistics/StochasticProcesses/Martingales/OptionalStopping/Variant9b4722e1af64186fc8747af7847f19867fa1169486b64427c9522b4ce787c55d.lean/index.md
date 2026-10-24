# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.OptionalStopping.Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeecf4a77f2bec341fa4943b11ecf5b20aea1f6c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeecf4a77f2bec341fa4943b11ecf5b20aea1f6c`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submartingale.expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/declarations/submartingale-expected-stoppedvalue-mono--e03510d6a6ac2db8500495a3.md) | 43 | `result-track:e03510d6a6ac2db8500495a3c0cdeceb42a9f5d1ce14566bdb8807c7e8624a71` |
| 2 | `theorem` | [submartingale_of_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/declarations/submartingale-of-expected-stoppedvalue-mono--a510f6946b7849b9f8565124.md) | 68 | `result-track:a510f6946b7849b9f8565124f2f19697d2e16ec6abd9468383ab8403ce2ba814` |
| 3 | `theorem` | [submartingale_iff_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/declarations/submartingale-iff-expected-stoppedvalue-mono--2d4b161ff4206449e1d8ef42.md) | 87 | `result-track:2d4b161ff4206449e1d8ef4258d7beb61f311b97adf3e97e74f59a0d8e481f64` |
| 4 | `theorem` | [Submartingale.stoppedProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/declarations/submartingale-stoppedprocess--9bf08eab217b385d9e4d5463.md) | 95 | `result-track:9bf08eab217b385d9e4d5463a23ae5ef7ac16d66d2f63c49da504a1439fcf0c5` |
| 5 | `theorem` | [smul_le_stoppedValue_hittingBtwn](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/declarations/smul-le-stoppedvalue-hittingbtwn--5d1fc0046b91ce30efcf5959.md) | 115 | `result-track:5d1fc0046b91ce30efcf5959e70493ad48848fa61e415a442429dd66d859b536` |
| 6 | `theorem` | [maximal_ineq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9b4722e1af64186fc8747af7847f19867fa1169486b64427c9522b4ce787c55d.lean/declarations/maximal-ineq--95050b8d19d2992d889b5c3b.md) | 144 | `result-track:95050b8d19d2992d889b5c3b7b516e91b526bf6b3d5ec700b9f0f6474b9e0102` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
