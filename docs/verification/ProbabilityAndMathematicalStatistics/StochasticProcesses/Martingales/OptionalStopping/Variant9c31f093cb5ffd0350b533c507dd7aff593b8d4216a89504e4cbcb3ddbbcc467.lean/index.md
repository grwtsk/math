# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.StochasticProcesses.Martingales.OptionalStopping.Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2c1f044c10c363d6a6551de4b7b3a3eb38bf642",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2c1f044c10c363d6a6551de4b7b3a3eb38bf642`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean.json)

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
| 1 | `theorem` | [Submartingale.expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/declarations/submartingale-expected-stoppedvalue-mono--d728369f138c0c02db880a1c.md) | 51 | `result-track:d728369f138c0c02db880a1ce2f2dd1044aeb0f72aa43171d74fda9063764385` |
| 2 | `theorem` | [submartingale_of_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/declarations/submartingale-of-expected-stoppedvalue-mono--8f5a489832f79b8b6bb4de63.md) | 76 | `result-track:8f5a489832f79b8b6bb4de63c07cf0fbe8df0b59ccd8816fee97a350e7fe5d5e` |
| 3 | `theorem` | [submartingale_iff_expected_stoppedValue_mono](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/declarations/submartingale-iff-expected-stoppedvalue-mono--f7fc07bf97e1b5d6b0497a6a.md) | 95 | `result-track:f7fc07bf97e1b5d6b0497a6a96a69986104f9513245090e152935a6293ead656` |
| 4 | `theorem` | [Submartingale.stoppedProcess](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/declarations/submartingale-stoppedprocess--6a65aadf08524d87a1c542bc.md) | 103 | `result-track:6a65aadf08524d87a1c542bca387334d40ac82a460fc67d59c05300b0fe3de3d` |
| 5 | `theorem` | [smul_le_stoppedValue_hittingBtwn](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/declarations/smul-le-stoppedvalue-hittingbtwn--a0996ec95c51d455ecf53777.md) | 123 | `result-track:a0996ec95c51d455ecf53777b0066de7a6a123fc1dffd9678812882b163e62ad` |
| 6 | `theorem` | [maximal_ineq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/OptionalStopping/Variant9c31f093cb5ffd0350b533c507dd7aff593b8d4216a89504e4cbcb3ddbbcc467.lean/declarations/maximal-ineq--f6bbcb078cf48ff234dd69ea.md) | 152 | `result-track:f6bbcb078cf48ff234dd69ea664921b65a9e846d76661d505a60c1a0dee3c572` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
