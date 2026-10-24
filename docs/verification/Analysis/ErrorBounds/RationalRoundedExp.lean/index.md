# Verification target: GRWTSK.Analysis.ErrorBounds.RationalRoundedExp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76d8315e713e699a00fb97e56bd097cf6ba6ffcf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalRoundedExp.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76d8315e713e699a00fb97e56bd097cf6ba6ffcf`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalRoundedExp.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalRoundedExp.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic`](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stage](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/stage--7be2737102cfff7b36a70a29.md) | 24 | `declaration-track:7be2737102cfff7b36a70a29cf29389f9afcd32aebaa05fa7914738c5be32575` |
| 2 | `def` | [squareRadius](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/squareradius--56f243f3afa252866d969ba5.md) | 28 | `declaration-track:56f243f3afa252866d969ba55a1e133ec63b1365bb0563fee1ff7fd05a8d00b3` |
| 3 | `def` | [trace](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/trace--9b7c37f622474701b04f4bb7.md) | 33 | `declaration-track:9b7c37f622474701b04f4bb767cfec9f142c93872a60f85b80b06749b10da5a2` |
| 4 | `theorem` | [trace_value](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/trace-value--73022648b2519cbd0fbbea14.md) | 38 | `result-track:73022648b2519cbd0fbbea14c5727d91cd98216798259126e7338d5e2c060dde` |
| 5 | `theorem` | [trace_radius](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/trace-radius--9ee933024466309b9e3278f0.md) | 45 | `result-track:9ee933024466309b9e3278f0f0ece2de348cddd44f02a620ad62c2d7007a444a` |
| 6 | `theorem` | [trace_checked](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/trace-checked--c142c45778c99ff43dcd870d.md) | 52 | `result-track:c142c45778c99ff43dcd870d3768d206e25ae36e03346f32636693e1604b5a57` |
| 7 | `def` | [enclosure](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/enclosure--96434de4f68d0b450ceca98e.md) | 67 | `declaration-track:96434de4f68d0b450ceca98eeed8b96f56a2e800591268e39f201e9e2bb164f9` |
| 8 | `theorem` | [enclosure_sound](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/enclosure-sound--c74594a15ff854c6de9b3063.md) | 73 | `result-track:c74594a15ff854c6de9b306336cea1cd12972024ef3cf9838788082a6e93dfe0` |
| 9 | `theorem` | [rounded_trace_control](../../../../mathematics/Analysis/ErrorBounds/RationalRoundedExp.lean/declarations/rounded-trace-control--4834565b7356296d527b0f0e.md) | 80 | `result-track:4834565b7356296d527b0f0e789bea589fd5786d5afe32979c59697f30c99556` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
