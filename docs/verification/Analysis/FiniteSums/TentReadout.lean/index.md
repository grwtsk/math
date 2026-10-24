# Verification target: GRWTSK.Analysis.FiniteSum.TentReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6edec918598b27fd4b794012cfc60b36fdd0178a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/TentReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6edec918598b27fd4b794012cfc60b36fdd0178a`.

Source path: `GRWTSK/Analysis/FiniteSum/TentReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/TentReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.FiniteSum.DyadicVariance`](../../../../mathematics/Analysis/FiniteSums/DyadicVariance.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stepCellMean](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/stepcellmean--0236f9ccb47ebe85ab58e411.md) | 20 | `declaration-track:0236f9ccb47ebe85ab58e4115cb74c6674ae37045f7cfc9ea3a8a122af38de97` |
| 2 | `def` | [tent](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent--2a3a9813353ad4bb276e2773.md) | 24 | `declaration-track:2a3a9813353ad4bb276e2773fd604b57e40e4482c7c0ee2fb29e11e11091185c` |
| 3 | `theorem` | [child_step_difference](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/child-step-difference--b9cc532ebb12630d79a9f5a3.md) | 28 | `result-track:b9cc532ebb12630d79a9f5a3106ef37449510a7ac35b53167b4a9415f21195dd` |
| 4 | `theorem` | [tent_left](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent-left--05847a3c350d40f4061a525d.md) | 48 | `result-track:05847a3c350d40f4061a525df895c0fb866cb15d73bd4e1fbad2c48c54195725` |
| 5 | `theorem` | [tent_right](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent-right--ebf774cb421aab4990dac19c.md) | 50 | `result-track:ebf774cb421aab4990dac19c4e60cfa885bee550978b17d8656d7b0cac678fd9` |
| 6 | `theorem` | [tent_middle](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent-middle--7cb722639be12905190d2ccc.md) | 55 | `result-track:7cb722639be12905190d2cccac87b469930be4bda3e1a5164fcc8abc755c9d44` |
| 7 | `theorem` | [tent_nonneg](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent-nonneg--24decb26687d27e4b399b86f.md) | 61 | `result-track:24decb26687d27e4b399b86f4b849cca73c37a7dbf13a55871c7d539138309f8` |
| 8 | `theorem` | [tent_le_one](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent-le-one--0707e9871a4048f61d3b4d20.md) | 72 | `result-track:0707e9871a4048f61d3b4d2022dd28521a9d0bc569d1a6a51d8510ffd77bc1ad` |
| 9 | `def` | [signedReadout](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/signedreadout--61cf99bc1b49e94cb40c1079.md) | 83 | `declaration-track:61cf99bc1b49e94cb40c107937c12492728ede3068f6f67c625da8bd57cb4d9e` |
| 10 | `theorem` | [signed_child_difference](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/signed-child-difference--5d5de354f6b59d5d0b1265f7.md) | 88 | `result-track:5d5de354f6b59d5d0b1265f7b500b180d237574f4d4f786d2841d576d48882e2` |
| 11 | `theorem` | [tent_energy_split](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/tent-energy-split--3ff31e09a7a8e6388819f494.md) | 102 | `result-track:3ff31e09a7a8e6388819f494b6079878f06c6f69816948b56cd5300b89b843c8` |
| 12 | `theorem` | [constant_prefix_cancels](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/constant-prefix-cancels--a5ac4ca90e92403288ec77a5.md) | 108 | `result-track:a5ac4ca90e92403288ec77a59be9c6068a172e7b9f1723d9700544927fd59108` |
| 13 | `theorem` | [squared_readout_error](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/squared-readout-error--24cea89679ee8c2bb2e6972c.md) | 114 | `result-track:24cea89679ee8c2bb2e6972ce5a852fb5511dc5769a34e43e78d624c50ac2d50` |
| 14 | `theorem` | [diagonal_le_self_energy](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/diagonal-le-self-energy--180076a5511f5f2657379545.md) | 123 | `result-track:180076a5511f5f265737954522da7179fc7d43c4f79d60b0c61d420f76f6ece8` |
| 15 | `theorem` | [signed_square_split](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/signed-square-split--24f3e622cdf29906e5a04621.md) | 135 | `result-track:24f3e622cdf29906e5a0462164dc82c4624d1e17d1bdd0646cfe2e15cfd017ff` |
| 16 | `theorem` | [projected_step_diagonal_identity](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/projected-step-diagonal-identity--ed7f023e690538b112f15949.md) | 140 | `result-track:ed7f023e690538b112f159494704fbcf20af9b991a5594f24cab26a012fcc5e8` |
| 17 | `theorem` | [projected_step_diagonal_le_quarter](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/projected-step-diagonal-le-quarter--f78dfa3ebbc1742109114188.md) | 150 | `result-track:f78dfa3ebbc17421091141881b84fea74028c99629b1d775a0dee5b5369cbbcb` |
| 18 | `theorem` | [complete_pair_residual_budget](../../../../mathematics/Analysis/FiniteSums/TentReadout.lean/declarations/complete-pair-residual-budget--3295bba9d8c8f8ac628111ec.md) | 158 | `result-track:3295bba9d8c8f8ac628111ece6197fb56104ad761ab4ed4c8940fe027af15483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
