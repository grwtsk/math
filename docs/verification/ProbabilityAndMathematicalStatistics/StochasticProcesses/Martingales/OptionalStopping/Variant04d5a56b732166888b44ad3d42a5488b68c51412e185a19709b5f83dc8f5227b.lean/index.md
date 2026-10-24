# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.OptionalStopping.Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca1b4e8edfa5c4c386991e04ea1b34e01bd03203",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca1b4e8edfa5c4c386991e04ea1b34e01bd03203`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.HittingTime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Martingale.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submartingale.expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/declarations/submartingale-expected-stoppedvalue-mono--f56242f9dda57d62126b21c8.md) | 40 | `result-track:f56242f9dda57d62126b21c864055ea04665f106c0e07f1ac91dd9a51619f782` |
| 2 | `theorem` | [submartingale_of_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/declarations/submartingale-of-expected-stoppedvalue-mono--3b16c0fdc9b331c4fd3924b3.md) | 66 | `result-track:3b16c0fdc9b331c4fd3924b3a23c882136b15fef069ccc8fc434f48da3f2bd4f` |
| 3 | `theorem` | [submartingale_iff_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/declarations/submartingale-iff-expected-stoppedvalue-mono--c0bf55bd946c2982ab29e359.md) | 82 | `result-track:c0bf55bd946c2982ab29e359900355bda61c3cbbbab953e44cc0f1738e740a41` |
| 4 | `theorem` | [Submartingale.stoppedProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/declarations/submartingale-stoppedprocess--976a1ac2c63fd17a5178aff0.md) | 90 | `result-track:976a1ac2c63fd17a5178aff0fc89833c8b9f08136af514846c733fbcd0526410` |
| 5 | `theorem` | [smul_le_stoppedValue_hitting](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/declarations/smul-le-stoppedvalue-hitting--d8da2c8e9c8ea640b8094c91.md) | 106 | `result-track:d8da2c8e9c8ea640b8094c912cd0e489eeb72983b5ba7d0b9712f509feb6ce0b` |
| 6 | `theorem` | [maximal_ineq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant04d5a56b732166888b44ad3d42a5488b68c51412e185a19709b5f83dc8f5227b.lean/declarations/maximal-ineq--f1d78d03e4bea56f861daa03.md) | 134 | `result-track:f1d78d03e4bea56f861daa0396cdaf07e44ef176a3b573343899a1afed081d3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
