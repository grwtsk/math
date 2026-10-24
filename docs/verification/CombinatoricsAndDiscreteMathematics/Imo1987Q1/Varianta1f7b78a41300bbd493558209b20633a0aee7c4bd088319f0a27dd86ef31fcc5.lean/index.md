# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo1987Q1.Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5108643d7a774d4a083c7c942a25c0977bbc4d9a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5108643d7a774d4a083c7c942a25c0977bbc4d9a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPointsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/fixedpointsequiv--2f18627d57c6a7276d9fed9b.md) | 46 | `declaration-track:2f18627d57c6a7276d9fed9b2080b4985f4691e79e431c84a17ae1e6eec3f790` |
| 2 | `theorem` | [card_fixed_points](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/card-fixed-points--0e388ffd29c0f8dcc6f0fe21.md) | 54 | `result-track:0e388ffd29c0f8dcc6f0fe21edbf27dd7d4a103a6176cfee000d3f7a2cffa1ca` |
| 3 | `def` | [fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/fiber--c9d5c9e80d78e74b6f59bb3e.md) | 63 | `declaration-track:c9d5c9e80d78e74b6f59bb3eadc8de805f9f5fef9164816375ebbcc0784add4c` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/instance--aa93ec258b012e96e579bf3e.md) | 66 | `declaration-track:aa93ec258b012e96e579bf3e7f57311b301d9ec305c84889610708fe867fa715` |
| 5 | `theorem` | [mem_fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/mem-fiber--ceea7d0ff945709804bd39b9.md) | 69 | `result-track:ceea7d0ff945709804bd39b97b0a9f30f5dfb8077274dde36369c4608f3c1840` |
| 6 | `def` | [p](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/p--f0adf9fdce371bfb6798bcc1.md) | 73 | `declaration-track:f0adf9fdce371bfb6798bcc16cf449908c87d58011c2429f1770011731ffd65f` |
| 7 | `def` | [fixedPointsEquiv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/fixedpointsequiv--ab024a6dd0b360dd869744ef.md) | 82 | `declaration-track:ab024a6dd0b360dd869744efe462abe900a21a0edb90184a1e6fa53f57c99d38` |
| 8 | `theorem` | [main_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/main-fintype--1ba98eeb30aba181764bdae6.md) | 95 | `result-track:1ba98eeb30aba181764bdae6547add1f1b7cb2db2d1c7333bec1905dd759ca61` |
| 9 | `theorem` | [main₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/main--8d4b400be69fce948328386a.md) | 101 | `result-track:8d4b400be69fce948328386ac6a6ddb3300c39d34de03e985f19e4b09c8387f6` |
| 10 | `theorem` | [main](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/declarations/main--74199162bf91e51c2b4b6de1.md) | 105 | `result-track:74199162bf91e51c2b4b6de12c1c0e7b2bdb6fe470f3077ebbd8ba800b310f17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
