# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TorusIntegral.Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d691bc309ac2ce90b66090b85baef1cf0fb8b797",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d691bc309ac2ce90b66090b85baef1cf0fb8b797`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/macro-rules--b472f7e7d732bda280bf3193.md) | 80 | `declaration-track:b472f7e7d732bda280bf31934d41c8c5e6f40c7ab6397592ad4fedca87434fbd` |
| 2 | `def` | [torusMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusmap--235b7842c18863e433ec681c.md) | 89 | `declaration-track:235b7842c18863e433ec681c863950ad2f433ff91b3e376eae71305fe9c53665` |
| 3 | `theorem` | [torusMap_sub_center](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusmap-sub-center--97a234131372d19e9c45d295.md) | 91 | `result-track:97a234131372d19e9c45d2952b5192cfd851a05932558d9e20f2e23627af65bf` |
| 4 | `theorem` | [torusMap_eq_center_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusmap-eq-center-iff--78cc9884e9cc2a104af6ca69.md) | 94 | `result-track:78cc9884e9cc2a104af6ca695acbf7851c29204c8eeda7fa4356d5788f95c229` |
| 5 | `theorem` | [torusMap_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusmap-zero-radius--23db5cdd17943036b907d97f.md) | 98 | `result-track:23db5cdd17943036b907d97faf75f437d6fdcd2dec20030f54beab28d1d20a02` |
| 6 | `def` | [TorusIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegrable--fbea686257615b59d4336cfe.md) | 107 | `declaration-track:fbea686257615b59d4336cfe540b096e66fe3edda1c2c59e3bd8a3992c5fb729` |
| 7 | `theorem` | [torusIntegrable_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegrable-const--7cd99e46b31667257df1108a.md) | 115 | `result-track:7cd99e46b31667257df1108a31485f57a3acaa77fa1305779f55e62c98d401ec` |
| 8 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/neg--1ce6694af5f38ccb6576beb2.md) | 119 | `result-track:1ce6694af5f38ccb6576beb2da069012d9c4ea0949cd191762f8cb04f50ff01c` |
| 9 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/add--364c9f163928cd7f98eebad1.md) | 122 | `result-track:364c9f163928cd7f98eebad1837a84f2206df1fd9201f7273a75b4593a4d70da` |
| 10 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/sub--8e5777d56ae62766b1d91aa6.md) | 127 | `result-track:8e5777d56ae62766b1d91aa607d4254ce5655ffba4351d2b84a762914c51ccde` |
| 11 | `theorem` | [torusIntegrable_zero_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegrable-zero-radius--1b1bc72581881f2b8c33008a.md) | 131 | `result-track:1b1bc72581881f2b8c33008afb22cad08523461b45cd47a7ee3c35741c650a36` |
| 12 | `theorem` | [function_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/function-integrable--c5c79a3eef610e5068e3241d.md) | 136 | `result-track:c5c79a3eef610e5068e3241df4f4221954bc7cf7f5a75e30125f88bafb9ae2cc` |
| 13 | `def` | [torusIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral--5692aced7d909a1aa9457b5b.md) | 149 | `declaration-track:5692aced7d909a1aa9457b5b19dcbe2a818f35e9ef20ae40d2ae8016209a94fb` |
| 14 | `theorem` | [torusIntegral_radius_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-radius-zero--36169be496e0ae44e0761987.md) | 155 | `result-track:36169be496e0ae44e07619871a3b6762dc7d0bceeb4d416ea03288d62667228c` |
| 15 | `theorem` | [torusIntegral_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-neg--f82d52acaa2651f7626f557c.md) | 160 | `result-track:f82d52acaa2651f7626f557c68f2f466ff251a01969456a1599720bbf1cd0c4b` |
| 16 | `theorem` | [torusIntegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-add--cccfd4aa0c2eb06dbafe47bf.md) | 163 | `result-track:cccfd4aa0c2eb06dbafe47bfe76948b63a30424ea54041d22cfee8c304dd083f` |
| 17 | `theorem` | [torusIntegral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-sub--f00f84a0f0ba6c3e5e310441.md) | 168 | `result-track:f00f84a0f0ba6c3e5e310441a699eaec2b2552275d330eadd153cf13ea48dc5d` |
| 18 | `theorem` | [torusIntegral_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-smul--113df1476438c12dfb9ca825.md) | 172 | `result-track:113df1476438c12dfb9ca825d9d1192d479517bd88e761c0061534b25f6e1379` |
| 19 | `theorem` | [torusIntegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-const-mul--188a599ab0675cfa3fcc4297.md) | 176 | `result-track:188a599ab0675cfa3fcc4297d1303ec716d227c5f5299e10b47c1151ef2e22bf` |
| 20 | `theorem` | [norm_torusIntegral_le_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/norm-torusintegral-le-of-norm-le-const--59e00fc5ded2900b5f41a9e1.md) | 182 | `result-track:59e00fc5ded2900b5f41a9e196f15d2606d149d4478d79ca69f292e8276deff2` |
| 21 | `theorem` | [torusIntegral_dim0](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-dim0--fe6e72aa47d5135553a7cc68.md) | 196 | `result-track:fe6e72aa47d5135553a7cc68232a71041477ebb0198b6fbf1746d6539c8b66f3` |
| 22 | `theorem` | [torusIntegral_dim1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-dim1--36c42f183cf77dd0bb6f4cd5.md) | 206 | `result-track:36c42f183cf77dd0bb6f4cd51e403c927d2155eef135f27739ea16a557c443bd` |
| 23 | `theorem` | [torusIntegral_succAbove](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-succabove--78b40dabf832cb59de53f83a.md) | 220 | `result-track:78b40dabf832cb59de53f83a7c57f4fee83c6c188fe7bc197613ae0781a3279c` |
| 24 | `theorem` | [torusIntegral_succ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TorusIntegral/Variant95696dbc6cdf334daa8a956b4cd6116107cc5755f46c4ae5aad7c18f0ff0c6cc.lean/declarations/torusintegral-succ--f03c9d35aed216df7cdb6e22.md) | 245 | `result-track:f03c9d35aed216df7cdb6e22927a7bf198a0e13894f5ccf9b0295f89fb27da94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
