# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SamplingReplication.Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af30ade169fd873c479caa7e32b5a37b7ea4b499",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af30ade169fd873c479caa7e32b5a37b7ea4b499`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.SamplingOptimization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productProbability](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/productprobability--3a9796c11a6786d57e84761c.md) | 21 | `declaration-track:3a9796c11a6786d57e84761c752be97b7dcfdb6d2227ddb4d966b0800f9e7686` |
| 2 | `def` | [expectation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/expectation--5bc51e9409cf610f4f01f8c1.md) | 24 | `declaration-track:5bc51e9409cf610f4f01f8c1fe29b8217980d7b77a79f005ba87057b6e8e1d08` |
| 3 | `theorem` | [tensor_expectation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/tensor-expectation--d3688311ec5a1649a6f26c06.md) | 27 | `result-track:d3688311ec5a1649a6f26c06abb277493c12521ccde171f7e2dde5643f69d193` |
| 4 | `theorem` | [product_probability_nonnegative](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/product-probability-nonnegative--ecf553060dc2693df8df7d9c.md) | 35 | `result-track:ecf553060dc2693df8df7d9c535aa43c9a7f7031b1b4af6c46c442b9fba1b27c` |
| 5 | `theorem` | [product_probability_sum_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/product-probability-sum-one--de3f59d9ccc2ece051c1d7ed.md) | 39 | `result-track:de3f59d9ccc2ece051c1d7ed27fb45b1d6a7d6a8fd33d31540cf09e7b8aa1e17` |
| 6 | `theorem` | [coordinate_expectation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/coordinate-expectation--6f988bfed29dc7905a858230.md) | 45 | `result-track:6f988bfed29dc7905a858230b3b6b720f612cdc3e5281e99c8480e2f7752325e` |
| 7 | `theorem` | [distinct_coordinate_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/distinct-coordinate-product--c92ae917ad1dafcd87c6c5a7.md) | 57 | `result-track:c92ae917ad1dafcd87c6c5a7bf1dd542875a50b826da2cc8644aed7096afe35b` |
| 8 | `theorem` | [centered_sum_second_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/centered-sum-second-moment--1a1a437825ec13dd2e6f40f4.md) | 81 | `result-track:1a1a437825ec13dd2e6f40f447d62f3b56302f3e038e373033809e943fe59901` |
| 9 | `def` | [signedMean](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/signedmean--e73fea26e9b6ea76cbcf9f3d.md) | 106 | `declaration-track:e73fea26e9b6ea76cbcf9f3d6df09a6ab05100d7ee82f78d5e257ad120496d9c` |
| 10 | `def` | [centeredReadout](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/centeredreadout--03ce88f66ffabb5e3e76eb39.md) | 108 | `declaration-track:03ce88f66ffabb5e3e76eb39b93e4729691460149086cfac00de9042849f8297` |
| 11 | `def` | [readoutMean](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/readoutmean--7355b74e17b5d5dcb51c03ad.md) | 111 | `declaration-track:7355b74e17b5d5dcb51c03ad25ae78844995dd1516736c0a3bd553211ced3b97` |
| 12 | `def` | [replicationVariance](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/replicationvariance--92e7061026fa8af5ae22cf8d.md) | 114 | `declaration-track:92e7061026fa8af5ae22cf8db7837f995dca26e6c3102735c58b0fb29465be10` |
| 13 | `theorem` | [centered_readout_mean_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/centered-readout-mean-zero--c116d5c97603b2b7bcf2391b.md) | 117 | `result-track:c116d5c97603b2b7bcf2391b35520a12f38e3c1d140ad602f1461a91260250ca` |
| 14 | `theorem` | [centered_readout_second_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/centered-readout-second-moment--947b4e0bd82272d2db002323.md) | 127 | `result-track:947b4e0bd82272d2db002323b4016e5bd41a00bcd67aaa00b4912b046faa9f42` |
| 15 | `theorem` | [exact_replication_variance](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/exact-replication-variance--b99430c0f8de29a54b773c66.md) | 141 | `result-track:b99430c0f8de29a54b773c661a232bf5c5d028a9763a04dc046c689ca5681ba7` |
| 16 | `theorem` | [replication_variance_lower](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/replication-variance-lower--59b142c1d0215583efbb1cd2.md) | 161 | `result-track:59b142c1d0215583efbb1cd28e0b04c658eb45b667639afc1663d36f606ff6b7` |
| 17 | `theorem` | [replication_is_unbiased](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/replication-is-unbiased--f771b10d9a676f1092ee1a8e.md) | 172 | `result-track:f771b10d9a676f1092ee1a8ec5fa8962a75b41d862b8faa408b4d3b20ada9aa4` |
| 18 | `theorem` | [conditional_sample_count](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/conditional-sample-count--13103e3b9eb7144c7dd63f27.md) | 189 | `result-track:13103e3b9eb7144c7dd63f272e6294d8232d0c5f93cb9f25b05a5b6b6699e3d8` |
| 19 | `theorem` | [optimal_replication_variance](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SamplingReplication/Variant02f107d11770f38ed6b9960ae5c8d1483a80690a2466591b49ba7b382e516c85.lean/declarations/optimal-replication-variance--b524d8409125df5d8449435a.md) | 205 | `result-track:b524d8409125df5d8449435a94110f787de18a355c816ea6e39e1ff1f4d37ce2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
