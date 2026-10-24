# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEulerDisconnectedObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e83c1785215b349c0e97ecaee6c7f7a6275a7701",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e83c1785215b349c0e97ecaee6c7f7a6275a7701`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disconnectedTwoLoopCounts](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/declarations/disconnectedtwoloopcounts--c869c70aa6636f5b746174e1.md) | 23 | `declaration-track:c869c70aa6636f5b746174e1ff7d90ee671884de34bf3c02ba78f0a1a86186c9` |
| 2 | `theorem` | [disconnectedTwoLoopCounts_total](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/declarations/disconnectedtwoloopcounts-total--6542e212ea91108f128173b7.md) | 27 | `result-track:6542e212ea91108f128173b7b60813a3cde2f5394adacedafd3a723d2de34e6b` |
| 3 | `theorem` | [disconnectedTwoLoopCounts_loops](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/declarations/disconnectedtwoloopcounts-loops--2952bcba8f66cf79b885b7e3.md) | 33 | `result-track:2952bcba8f66cf79b885b7e301b5f9efb59f13973ff5a2a3bc71d08c8a184e3a` |
| 4 | `theorem` | [disconnectedTwoLoopCounts_not_realizable](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/declarations/disconnectedtwoloopcounts-not-realizable--258113fe1d15ab6d53484b67.md) | 46 | `result-track:258113fe1d15ab6d53484b6789aae909665cce3864f37c5d3edd6b04567a643c` |
| 5 | `theorem` | [disconnectedTwoLoopCounts_no_euler_certificate](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean/declarations/disconnectedtwoloopcounts-no-euler-certificate--dcf54c27bc00fddae7884511.md) | 53 | `result-track:dcf54c27bc00fddae7884511045660ac180ba1e69aac244ea0f71d08cdf24ae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
