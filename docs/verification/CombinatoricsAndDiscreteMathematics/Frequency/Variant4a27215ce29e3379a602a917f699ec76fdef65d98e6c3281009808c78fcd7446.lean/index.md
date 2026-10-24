# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Frequency.Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd3564055ebabef62dc3510c6f1dfc47514a7333",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd3564055ebabef62dc3510c6f1dfc47514a7333`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.Checker` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InvocationCut.frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/declarations/invocationcut-frequency--42ab1225d9b890f39d71dfd6.md) | 16 | `declaration-track:42ab1225d9b890f39d71dfd6e4074c975f36fcfb266624545761d796c2c0f0a7` |
| 2 | `theorem` | [InvocationCut.frequency_positive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/declarations/invocationcut-frequency-positive--1e6e58261062139f763eb979.md) | 26 | `result-track:1e6e58261062139f763eb979e731f99964fd5ede4e5a72af6c278291902ae384` |
| 3 | `theorem` | [committed_event_replay_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/declarations/committed-event-replay-idempotent--edaa0428dd3db3ba8444610c.md) | 40 | `result-track:edaa0428dd3db3ba8444610c4bd40506e9ce45625db287e0ba2ce473a4a89e90` |
| 4 | `structure` | [FrequencyWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/declarations/frequencyweight--26553e361e03c9752ba197e3.md) | 48 | `declaration-track:26553e361e03c9752ba197e326571bb1904ba5f9c4b0cd98c12fe4f62bc8e5f4` |
| 5 | `def` | [totalFrequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Frequency/Variant4a27215ce29e3379a602a917f699ec76fdef65d98e6c3281009808c78fcd7446.lean/declarations/totalfrequency--f12d19d038b3d8931503cf8f.md) | 54 | `declaration-track:f12d19d038b3d8931503cf8f1aa0fd77a21d8802d985da0deeb02fc7ca07e139` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
