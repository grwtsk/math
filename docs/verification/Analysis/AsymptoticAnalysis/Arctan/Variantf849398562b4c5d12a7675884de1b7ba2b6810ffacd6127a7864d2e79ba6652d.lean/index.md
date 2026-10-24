# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Arctan.Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad3417fde3fac6fbbedda87219300cdf5f4aa03a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad3417fde3fac6fbbedda87219300cdf5f4aa03a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/arctan--1d2924915a0ad80917de9ef5.md) | 29 | `declaration-track:1d2924915a0ad80917de9ef5add070d08b80546b1795177cd2b3e36f1a1f039d` |
| 2 | `theorem` | [tan_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/tan-arctan--6379ef22194629c4d9e58993.md) | 31 | `result-track:6379ef22194629c4d9e58993888bb4709b0047a47ab5d1a8c5726bbc20580da8` |
| 3 | `lemma` | [cos_ne_zero_of_arctan_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/cos-ne-zero-of-arctan-bounds--43a913a003f6ec46628426d6.md) | 55 | `result-track:43a913a003f6ec46628426d64338f94d457429f37131874f17c4468a194e8723` |
| 4 | `theorem` | [arctan_tan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/arctan-tan--19d1ff4309139573daa5f9c4.md) | 69 | `result-track:19d1ff4309139573daa5f9c4d382054e40a5b0b88fdf2d36af47d40bd586524a` |
| 5 | `theorem` | [ofReal_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/ofreal-arctan--c6f1226bec21ed5789564b69.md) | 85 | `result-track:c6f1226bec21ed5789564b6955726c5824fde88abe3401c665712cfafa39678d` |
| 6 | `lemma` | [arg_one_add_mem_Ioo](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/arg-one-add-mem-ioo--5422d7ece9fce276614f989b.md) | 94 | `result-track:5422d7ece9fce276614f989b6e2fdbc4dcf3b7632d44e9c54cdb7721aa61c7c7` |
| 7 | `lemma` | [hasSum_arctan_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/hassum-arctan-aux--7ed61cbfe6df9a3b83288489.md) | 100 | `result-track:7ed61cbfe6df9a3b8328848994781cd1e5aadad64efd40dd3ca5d0673d7030fb` |
| 8 | `theorem` | [hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/hassum-arctan--f953168d2623ee57fc41bd58.md) | 121 | `result-track:f953168d2623ee57fc41bd58e25bc016b458695df65a0907d045dd027f263a5e` |
| 9 | `theorem` | [Real.hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variantf849398562b4c5d12a7675884de1b7ba2b6810ffacd6127a7864d2e79ba6652d.lean/declarations/real-hassum-arctan--b60414ecd7c9e4785514d962.md) | 143 | `result-track:b60414ecd7c9e4785514d962454150e0a8d3f03e22e73fa753f1962b42eee3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
