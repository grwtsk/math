# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBoundaryTriangle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f464e53d39b346db2eb71ae54cf2c8f09bfc876",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f464e53d39b346db2eb71ae54cf2c8f09bfc876`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteLabeledBoundaryTV`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteLabeledBoundaryTV.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaledDeviation_change](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/declarations/scaleddeviation-change--3e719f91ae938f24b3f2ce72.md) | 27 | `result-track:3e719f91ae938f24b3f2ce724c322537640c13cf79eca52379bfd81819656d76` |
| 2 | `theorem` | [uniformTV_le_boundaryTV_add_sourceTV](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/declarations/uniformtv-le-boundarytv-add-sourcetv--5cba7f077fb8128f0d124d59.md) | 43 | `result-track:5cba7f077fb8128f0d124d597b9671a6174e3feae6273112f53e0ae999c2e724` |
| 3 | `theorem` | [finiteWalshBoundary_return](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/declarations/finitewalshboundary-return--f4d14e63f9113eace3edebae.md) | 141 | `result-track:f4d14e63f9113eace3edebae6ee9063411c660da16088a7859e5fd9c925efe64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
