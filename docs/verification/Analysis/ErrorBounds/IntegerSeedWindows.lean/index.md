# Verification target: GRWTSK.Analysis.ErrorBounds.IntegerSeedWindows

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "489b28dbe5a872d48c111fe3000c3d2566e292ba",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/IntegerSeedWindows.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `489b28dbe5a872d48c111fe3000c3d2566e292ba`.

Source path: `GRWTSK/Analysis/ErrorBounds/IntegerSeedWindows.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/IntegerSeedWindows.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold`](../../../../mathematics/Analysis/ErrorBounds/IntegerExpStateFold.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FloorWindow](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/floorwindow--0a318154475fcd0352016620.md) | 22 | `declaration-track:0a318154475fcd03520166206ab5357f6c27c3143964dc42be875e79a6b48865` |
| 2 | `def` | [CeilWindow](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/ceilwindow--50fa07270966a1b8405e3234.md) | 25 | `declaration-track:50fa07270966a1b8405e32349e84ddfb02a422d9ad2d4587a627427a22ae5cbc` |
| 3 | `theorem` | [floor_eq_of_window](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/floor-eq-of-window--3cf4b4c1527d66259840a425.md) | 28 | `result-track:3cf4b4c1527d66259840a42583193957efd69a67b276fa0030b51f99259a7f8d` |
| 4 | `theorem` | [ceil_eq_of_window](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/ceil-eq-of-window--b1e7012d687a25ef914d693a.md) | 32 | `result-track:b1e7012d687a25ef914d693a33a31215db20a62aa5b0356453965dda137192ea` |
| 5 | `theorem` | [down_eq_of_window](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/down-eq-of-window--cdbb76e094010047e7084b07.md) | 36 | `result-track:cdbb76e094010047e7084b071b7bd35f52d9145b69d8aa32a16d5311b7c6f4fc` |
| 6 | `theorem` | [up_eq_of_window](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/up-eq-of-window--c230a2d157374ca53d9fbdd2.md) | 40 | `result-track:c230a2d157374ca53d9fbdd21a5a878acbe2a31b552d658104754d8a8c6598bf` |
| 7 | `theorem` | [rounded_eq_of_windows](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/rounded-eq-of-windows--50ef02c1af15af57ddf7631d.md) | 44 | `result-track:50ef02c1af15af57ddf7631d2b75fa1550e111252028bbb4c2c29022ea45c052` |
| 8 | `theorem` | [roundBall_eq_of_windows](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/roundball-eq-of-windows--e8f9f40866af6d34338f2694.md) | 51 | `result-track:e8f9f40866af6d34338f26944ba62a3debeab361358ced51161a94da6946eff1` |
| 9 | `theorem` | [initial_eq_of_windows](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/initial-eq-of-windows--e91b7568fd4ec690e25a09c5.md) | 64 | `result-track:e91b7568fd4ec690e25a09c59601da1117f12d90f9fa6c2e78aeda930c09c57c` |
| 10 | `theorem` | [floor_upper_reject](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/floor-upper-reject--a0508b01e910d8ad27e7b8b9.md) | 82 | `result-track:a0508b01e910d8ad27e7b8b9bbc8e3185bd7fc168e73972fabf793caee336328` |
| 11 | `theorem` | [ceil_lower_reject](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/ceil-lower-reject--d037669263146ed0a4d65ea4.md) | 85 | `result-track:d037669263146ed0a4d65ea484e68106dcdc50e2926bfce6311fca424ebc8806` |
| 12 | `theorem` | [negative_floor_window](../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/declarations/negative-floor-window--0636e85cc6b23d3cb27ab005.md) | 88 | `result-track:0636e85cc6b23d3cb27ab005d417c5d5a660e97219a4b362b947b178e1c92c9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
