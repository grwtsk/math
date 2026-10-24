# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.State.Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae13a687134d42bc748fe284067e3264dac05e87",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae13a687134d42bc748fe284067e3264dac05e87`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Short` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [State](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/state--553f63fdf1cebddbe41a287c.md) | 44 | `declaration-track:553f63fdf1cebddbe41a287c6b92bd0690ed80a2ba12879201bf2204d633f156` |
| 2 | `theorem` | [turnBound_ne_zero_of_left_move](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/turnbound-ne-zero-of-left-move--229ecb26a66c92d91586b16a.md) | 58 | `result-track:229ecb26a66c92d91586b16a5d22e2ac76674df890e92b94dfc02b495eabcebc` |
| 3 | `theorem` | [turnBound_ne_zero_of_right_move](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/turnbound-ne-zero-of-right-move--dea902f48c52f3cf5029086b.md) | 64 | `result-track:dea902f48c52f3cf5029086b645deadf281d502a0df65f0eb1e91c4e416f05bf` |
| 4 | `theorem` | [turnBound_of_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/turnbound-of-left--759ac4abc87498e9d6044117.md) | 70 | `result-track:759ac4abc87498e9d6044117dd35b907910f217961e614462d8911dc664e480f` |
| 5 | `theorem` | [turnBound_of_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/turnbound-of-right--40cdc0b468b780f94405e3d2.md) | 74 | `result-track:40cdc0b468b780f94405e3d2d9b13b94b26561937c458d2af59ffd2cdea7bb68` |
| 6 | `def` | [ofStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/ofstateaux--3f3fe5a46c4937a90b0ef550.md) | 81 | `declaration-track:3f3fe5a46c4937a90b0ef55082009c9954566c16d3675d7b98272f34dfa61075` |
| 7 | `def` | [ofStateAuxRelabelling](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/ofstateauxrelabelling--61b2e6a0a6b27c74a4a125dc.md) | 92 | `declaration-track:61b2e6a0a6b27c74a4a125dc5fe781fbb4b85c854f207a469af496a36b67d467` |
| 8 | `def` | [ofState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/ofstate--e7ed201fbfd7b0f9c1b7d2ea.md) | 133 | `declaration-track:e7ed201fbfd7b0f9c1b7d2ea9e3467d30f60e5aa90e19c84a7a0145d7b4ad507` |
| 9 | `def` | [leftMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/leftmovesofstateaux--1a364dc7af9491e789465a6d.md) | 138 | `declaration-track:1a364dc7af9491e789465a6d7f918267eab3895838e5119e390da73456c75295` |
| 10 | `def` | [leftMovesOfState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/leftmovesofstate--900e796e67dad9e4cba9936d.md) | 142 | `declaration-track:900e796e67dad9e4cba9936db256dfd7c7628bb4076bdb5a473117feccd020a1` |
| 11 | `def` | [rightMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/rightmovesofstateaux--b7e02660b542f640fce6304b.md) | 147 | `declaration-track:b7e02660b542f640fce6304b08281aa30efca2761c35286da197cd4fde1ee8b2` |
| 12 | `def` | [rightMovesOfState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/rightmovesofstate--9330a447cdc1c66643afe484.md) | 152 | `declaration-track:9330a447cdc1c66643afe484203b52592a594b6cbc9ec8e0c8732d1f04ec60cc` |
| 13 | `def` | [relabellingMoveLeftAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/relabellingmoveleftaux--0a9f96fc6f612a90139cf545.md) | 158 | `declaration-track:0a9f96fc6f612a90139cf5458b362f23e4cafb9949baca4b25ca310c0d60e6bd` |
| 14 | `def` | [relabellingMoveLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/relabellingmoveleft--6fa6a9a71f7542f225ec2b1a.md) | 172 | `declaration-track:6fa6a9a71f7542f225ec2b1a2b5a9e1315329f2603a84558598dd6d985169222` |
| 15 | `def` | [relabellingMoveRightAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/relabellingmoverightaux--50d7d4e1b8c22b73037acaec.md) | 181 | `declaration-track:50d7d4e1b8c22b73037acaec85fd4e7bbb10ba887d6d8401f9c9727d69919249` |
| 16 | `def` | [relabellingMoveRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/relabellingmoveright--90e773f1bdb2976671d22954.md) | 195 | `declaration-track:90e773f1bdb2976671d229544795b2d711b1ee3636c0ecf421e9b209a45306d6` |
| 17 | `instance` | [fintypeLeftMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/fintypeleftmovesofstateaux--7cd0ebb5fe52943410f3ffeb.md) | 201 | `declaration-track:7cd0ebb5fe52943410f3ffeb8cb163720341730585cce77a0569c91cf77480f3` |
| 18 | `instance` | [fintypeRightMovesOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/fintyperightmovesofstateaux--b80d9d1fb5acc7bd953c3601.md) | 205 | `declaration-track:b80d9d1fb5acc7bd953c3601378559aa24e0535d8e482d1f4ba63262ac07285a` |
| 19 | `instance` | [shortOfStateAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/shortofstateaux--739bd2729985f2987106729f.md) | 209 | `declaration-track:739bd2729985f2987106729fbf3033b6e9f533275d3dd379a0f8ab4e05ce7dc2` |
| 20 | `instance` | [shortOfState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/shortofstate--17a2a2b95aafeb2d8fc4a371.md) | 227 | `declaration-track:17a2a2b95aafeb2d8fc4a371c8792a6fc400701e8472ffd1f217ebc443548fcc` |
| 21 | `def` | [ofState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/declarations/ofstate--1a8a0482cb61fa60d1b9973d.md) | 236 | `declaration-track:1a8a0482cb61fa60d1b9973d9251c9de267f5b72bbd0065a2034a4969e1b5d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
