# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerTrail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "074bb6e13dd93d259a75bf14b7d665e5fb8ff3c3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `074bb6e13dd93d259a75bf14b7d665e5fb8ff3c3`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean.json)

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
| 1 | `def` | [countedEdgeSource](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/declarations/countededgesource--19dd4fdca9e51ad9d7112c63.md) | 24 | `declaration-track:19dd4fdca9e51ad9d7112c63f974728506a816f598672a1d0f7192a116579a6f` |
| 2 | `def` | [countedEdgeTarget](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/declarations/countededgetarget--8ff54c90fa6347d411fb4dc8.md) | 29 | `declaration-track:8ff54c90fa6347d411fb4dc8cb58a5863af6897887d3672cd1387b41e8a5569c` |
| 3 | `structure` | [CountedDirectedTrail](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/declarations/counteddirectedtrail--5118d7a93640801cf726d761.md) | 36 | `declaration-track:5118d7a93640801cf726d761615e31da641be8fb9b21ed8c54f7ff85d0a74173` |
| 4 | `def` | [CountedDirectedTrail.unused](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/declarations/counteddirectedtrail-unused--832d8ab32d63dc5546ff1132.md) | 52 | `declaration-track:832d8ab32d63dc5546ff113209f6c3efd1ccdfa13a5fed43c2c674b777256bdd` |
| 5 | `def` | [CountedDirectedTrail.CanAppend](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/declarations/counteddirectedtrail-canappend--730d77e4c5f8785a6da33384.md) | 59 | `declaration-track:730d77e4c5f8785a6da3338468bb3f8c01aec2473a13ea4f29d4384c3d2a2772` |
| 6 | `theorem` | [countedTrail_unused_card_strict_of_append](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/declarations/countedtrail-unused-card-strict-of-append--a72e118a46edef98f68da95a.md) | 68 | `result-track:a72e118a46edef98f68da95a9c7b6561c6c631d7fb056258e12be02f13125037` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
