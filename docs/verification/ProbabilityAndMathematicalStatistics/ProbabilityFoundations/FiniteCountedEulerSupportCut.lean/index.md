# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerSupportCut

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cb989bc0033ef3f2fcbfb5066b77cef070de133",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cb989bc0033ef3f2fcbfb5066b77cef070de133`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerDegreeBalance`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountedEdgeMeets](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/countededgemeets--6c679442bfdd1f9c9e6ddf70.md) | 22 | `declaration-track:6c679442bfdd1f9c9e6ddf702a2eebe390e0e873f52655f3f37e6c1dc67fca73` |
| 2 | `def` | [CountedEdgeCrosses](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/countededgecrosses--4bee540f55fe09bf02d520fc.md) | 29 | `declaration-track:4bee540f55fe09bf02d520fce1d6bd2d35ba16bae334d96b976017707ef9b4b5` |
| 3 | `theorem` | [no_crossing_of_used_internal_unused_disjoint](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/no-crossing-of-used-internal-unused-disjoint--50c9cda39ad20d9130b03c81.md) | 38 | `result-track:50c9cda39ad20d9130b03c81edad098bd969b02747bfad0c0f9624c49b01d851` |
| 4 | `def` | [CountedEdgeSupportCutConnected](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/countededgesupportcutconnected--8ab9d21b82bfa41366dfb843.md) | 65 | `declaration-track:8ab9d21b82bfa41366dfb843b6c68586708a2bedac213ca253ef4a0788f37b5b` |
| 5 | `theorem` | [unused_edge_meets_of_support_cut_connected](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/unused-edge-meets-of-support-cut-connected--31f853c924089bfbdf518398.md) | 77 | `result-track:31f853c924089bfbdf51839864804241ec1ae1916a1e241eb42c129f9a36e881` |
| 6 | `theorem` | [FreshCountedTrail.unused_outgoing_at_supported_cut](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/freshcountedtrail-unused-outgoing-at-supported-cut--edf9a7422995b14d9d60d4d3.md) | 106 | `result-track:edf9a7422995b14d9d60d4d38d0d3875dcb12f2c41844b37c5731691227814ac` |
| 7 | `theorem` | [FreshCountedTrail.exists_splice_entry_of_outside_support](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/freshcountedtrail-exists-splice-entry-of-outside-support--6b3d4e8a7427b7dc2a60a947.md) | 134 | `result-track:6b3d4e8a7427b7dc2a60a947a8e9a3f7f4113e8da17d2c559d15b2589039a2d5` |
| 8 | `theorem` | [FreshCountedTrail.unused_outgoing_of_meeting_edge](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/freshcountedtrail-unused-outgoing-of-meeting-edge--6db7461defb4939becc466b8.md) | 160 | `result-track:6db7461defb4939becc466b8cba7bf65daa4fc56e0c8c428e3d0d47a844eecc2` |
| 9 | `theorem` | [FreshCountedTrail.unused_outgoing_of_nonempty_residual](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerSupportCut.lean/declarations/freshcountedtrail-unused-outgoing-of-nonempty-residual--7834f257d9838bd4eaf8b0c4.md) | 183 | `result-track:7834f257d9838bd4eaf8b0c4063de7d3cb7b1319bd0522af033c07aa12bc3aaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
