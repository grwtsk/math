# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaLocalUniform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dd87866f5a16c3297c3a744e4d34cc2b65417d1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaLocalUniform.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dd87866f5a16c3297c3a744e4d34cc2b65417d1`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaLocalUniform.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaLocalUniform.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierArea`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AreaQuotient](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/areaquotient--dad47b6df85abfe8b0008090.md) | 40 | `declaration-track:dad47b6df85abfe8b0008090098a1db3c2535ec4b33caefdd2115bd5f93678e5` |
| 2 | `def` | [realization](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/realization--d24b536a88a61b771f7a50ad.md) | 44 | `declaration-track:d24b536a88a61b771f7a50ade35422853837f07e0d3c1d341ccbfe73d98aa20f` |
| 3 | `theorem` | [realization_classOf](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/realization-classof--b43d381f6971b8454548eccc.md) | 51 | `result-track:b43d381f6971b8454548ecccf7d5911584f5e426b2e45fbf393f9d505587e236` |
| 4 | `theorem` | [realization_injective](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/realization-injective--afe1e2b715e8260ccc110292.md) | 57 | `result-track:afe1e2b715e8260ccc110292014530fa7e65ea0c705ea1a056890d6ec7602122` |
| 5 | `def` | [ambient](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/ambient--f080d9005d988eaf7f72dc6f.md) | 68 | `declaration-track:f080d9005d988eaf7f72dc6f1e1710a3d74977118171e2aead98ca187eac7683` |
| 6 | `theorem` | [ambient_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/ambient-apply--abfa60ed314e38fc069e581e.md) | 71 | `result-track:abfa60ed314e38fc069e581e253c1118508f86bc0012d15e7208db3d5faaa31e` |
| 7 | `theorem` | [ambient_differentiableOn](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/ambient-differentiableon--b61e8d3e490e9a476214f89c.md) | 76 | `result-track:b61e8d3e490e9a476214f89cf39f84c41d6e464e995360b827056a1cbc5b05ec` |
| 8 | `theorem` | [functional_eq_realization](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/functional-eq-realization--7f106f8d59b5c9e95a2a3466.md) | 81 | `result-track:7f106f8d59b5c9e95a2a3466cceef8f50c0f6ba02bd76edeb2eeebcb5f8d3308` |
| 9 | `theorem` | [window_dist_bound](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/window-dist-bound--3607417c3110f3fbdb6bf85c.md) | 89 | `result-track:3607417c3110f3fbdb6bf85c25cd9c14be381715d771184831a528b9c3eff8f6` |
| 10 | `theorem` | [compact_control](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/compact-control--6a63973e04f1da142fc7ff25.md) | 100 | `result-track:6a63973e04f1da142fc7ff251e75290112d67d86d24fd7ba789c7481f7fe24dd` |
| 11 | `theorem` | [uniformCauchy_on_compact](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/uniformcauchy-on-compact--94330864c57b4103e43b9862.md) | 122 | `result-track:94330864c57b4103e43b986265a019febc61cd5c6975233d7f37745885f68b00` |
| 12 | `theorem` | [pointwise_converges](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/pointwise-converges--f9e1fb74e4966de3c51e8f41.md) | 140 | `result-track:f9e1fb74e4966de3c51e8f416b2dc8354b7859853c98e31aed007d33b819cda2` |
| 13 | `def` | [pointwiseLimit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/pointwiselimit--75c185a881892fe62ebd02f6.md) | 148 | `declaration-track:75c185a881892fe62ebd02f6332b9e197b955750f7fd2498f67bbc78e7ec7755` |
| 14 | `theorem` | [pointwiseLimit_tendsto](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/pointwiselimit-tendsto--b5feea43c5a56c80e780bcda.md) | 152 | `result-track:b5feea43c5a56c80e780bcdaaf12c61855697c43e77e658bd7379a7d8bb664bc` |
| 15 | `theorem` | [uniformLimit_on_compact](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/uniformlimit-on-compact--2744cfbb362634081923146e.md) | 158 | `result-track:2744cfbb362634081923146e2f6ece53aeb10961673546ff1fcf7fe5b7fe58ae` |
| 16 | `theorem` | [locallyUniform_limit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/locallyuniform-limit--66419929e865dfc965441b0b.md) | 168 | `result-track:66419929e865dfc965441b0b521bf8f5f99428f519e6e889853a1d5941b48075` |
| 17 | `theorem` | [pointwiseLimit_holomorphic](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/pointwiselimit-holomorphic--4f61b238e264b8135b4f0690.md) | 177 | `result-track:4f61b238e264b8135b4f06907f362b85c00cce87647910dc1da13fe6aa774da4` |
| 18 | `def` | [holomorphicLimit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/holomorphiclimit--1adcda85249dee48ae6aea46.md) | 187 | `declaration-track:1adcda85249dee48ae6aea461ce4ea4c8cc76d91ccd3b1eed08cf5aa1b7c33b3` |
| 19 | `theorem` | [existsUnique_holomorphic_limit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/existsunique-holomorphic-limit--45aa6b67a559e1c33c29ca9e.md) | 192 | `result-track:45aa6b67a559e1c33c29ca9ef069acf1f1a445c09f3417169853e485a45a3276` |
| 20 | `theorem` | [derivative_limit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/derivative-limit--2830209d8bd133c87dba7e7e.md) | 206 | `result-track:2830209d8bd133c87dba7e7e1dca2d754f12247dbdf91be95a0ed6d2bd07b380` |
| 21 | `theorem` | [empty_compact_control](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/empty-compact-control--14ee0b56d072f21edd01d80a.md) | 218 | `result-track:14ee0b56d072f21edd01d80ae0bf36a6f193c61870443fd7b89465e2fe26d319` |
| 22 | `theorem` | [constant_cauchy](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/constant-cauchy--52f6878b271aaf5424fde16c.md) | 223 | `result-track:52f6878b271aaf5424fde16cf607e5d704e370da062beab3a75c592b33787d77` |
| 23 | `theorem` | [constant_limit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaLocalUniform.lean/declarations/constant-limit--a6369d11b4396afd0de0ce64.md) | 230 | `result-track:a6369d11b4396afd0de0ce64a76158826da04eef50722b1b024b2a8d85642489` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
