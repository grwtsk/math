# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Transformer.Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fa8ab3d81c90b359f6a21a834b5c2b55a29e904",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fa8ab3d81c90b359f6a21a834b5c2b55a29e904`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.ML.IntervalVector` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Taylor` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Real.gelu](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/real-gelu--1aec980010809515de6bf11a.md) | 64 | `declaration-track:1aec980010809515de6bf11aa00a376ed9f51073eb54f7e580d0e3a51689b242` |
| 2 | `def` | [layerNormReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/layernormreal--d89384b93a5c888565eed55c.md) | 70 | `declaration-track:d89384b93a5c888565eed55c4ca52de87ec5a125e6ed4476ae95fa14c3ccf8de` |
| 3 | `def` | [gelu_c1_lo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/gelu-c1-lo--c4015107d1ee6ba1aed0b055.md) | 86 | `declaration-track:c4015107d1ee6ba1aed0b0555a1e324262d0da051eb1b154e1e029bb8fde46f5` |
| 4 | `def` | [gelu_c2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/gelu-c2--e1573145ba819d6b849052ee.md) | 87 | `declaration-track:e1573145ba819d6b849052ee1eb7f6a94ded5d4554fe1a509cb7f5f8b22dcbb7` |
| 5 | `def` | [geluIntervalRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/geluintervalrat--0c69297a3a88c2cf6cf38f11.md) | 102 | `declaration-track:0c69297a3a88c2cf6cf38f110ec0a6c536c47a4b3fa499a8b9a63f2192e580c6` |
| 6 | `def` | [geluInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/geluinterval--d751ed11adb6d4c04a7e662a.md) | 128 | `declaration-track:d751ed11adb6d4c04a7e662a7f56890337827e0881a12e02f049621a9e41f7bf` |
| 7 | `def` | [geluVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/geluvector--2d1b8c75714f0a3448d53682.md) | 133 | `declaration-track:2d1b8c75714f0a3448d5368285c9725328fc1a57fc5703f83cd54bdb39ff7fe6` |
| 8 | `theorem` | [sqrt_two_div_pi_mem_interval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/sqrt-two-div-pi-mem-interval--7f66c22141ee3bd0f841c561.md) | 143 | `result-track:7f66c22141ee3bd0f841c56147584828ddbe4be1102ef195cce1fb7f776c2d16` |
| 9 | `theorem` | [mem_geluIntervalRat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-geluintervalrat--003db1ba08b7ff420817dc5e.md) | 184 | `result-track:003db1ba08b7ff420817dc5e90eec47b27927730f0788cb43f960f9963deb46d` |
| 10 | `theorem` | [mem_geluInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-geluinterval--fdb4da13a4486b9ae04ca39e.md) | 246 | `result-track:fdb4da13a4486b9ae04ca39e8d4c3af967d6035bf45e8149572300eca62553fc` |
| 11 | `structure` | [LayerNormParams](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/layernormparams--8b02e1e0abf6bd495bc44e20.md) | 258 | `declaration-track:8b02e1e0abf6bd495bc44e20278ef77d1f902fb41a5f62384bfaed142206bcf3` |
| 12 | `def` | [sumIntervals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/sumintervals--f7dcac2d97d5d6ce7a9b5216.md) | 272 | `declaration-track:f7dcac2d97d5d6ce7a9b521632535cb257a808f890e2c5efa7a7afe5dddccee7` |
| 13 | `def` | [zeroInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/zerointerval--1ba850ffac086bc673b05381.md) | 278 | `declaration-track:1ba850ffac086bc673b05381077b2fe9ff1b7390a32adb73c77bcec32f7f0634` |
| 14 | `def` | [forwardInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/forwardinterval--38fda433aa114d2faacbb0e4.md) | 297 | `declaration-track:38fda433aa114d2faacbb0e45d904c01983ae8d106e9cb85ceed090d8cd6d020` |
| 15 | `theorem` | [mem_mulRounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-mulrounded--3709c37c121e21c1ec16adbd.md) | 358 | `result-track:3709c37c121e21c1ec16adbd58fc8cd30badb16d747e91659b6c615d6a88c38e` |
| 16 | `theorem` | [mem_addRounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-addrounded--452252dd12daa7b7df2b6fad.md) | 364 | `result-track:452252dd12daa7b7df2b6fad575e591f15de1914eff13e385b3f328661252f8c` |
| 17 | `theorem` | [mem_foldl_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-foldl-add--1a8a8b654638b98cd682405f.md) | 370 | `result-track:1a8a8b654638b98cd682405fdef4dea7c9a909c7ce4f2e611d9eeaff88e52fa2` |
| 18 | `theorem` | [mem_sumIntervals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-sumintervals--6a7025f74695c2ca0bde2ef6.md) | 401 | `result-track:6a7025f74695c2ca0bde2ef65e875f64c712b3c5b0e5422983f4be587cf7e898` |
| 19 | `theorem` | [mem_map_intervals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-map-intervals--0d0ee755b170a72c2bf0977f.md) | 434 | `result-track:0d0ee755b170a72c2bf0977fbeef7cafab6a0586daccf70e039eec50fe167e45` |
| 20 | `theorem` | [length_zipWith3_min](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/length-zipwith3-min--c6c4d33ac637baf75be43e68.md) | 467 | `result-track:c6c4d33ac637baf75be43e68779e970f788e2cf13b82b2a29cb092057b23b200` |
| 21 | `theorem` | [zipWith3_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/zipwith3-map-left--c709905446f1166bad63a0e1.md) | 482 | `result-track:c709905446f1166bad63a0e1cf2d4d1a240653c1cc8663405f5470f37a40d1a0` |
| 22 | `theorem` | [mem_zipWith3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-zipwith3--0c52556f70cef784dc8d75e3.md) | 492 | `result-track:0c52556f70cef784dc8d75e38d6e4816d345fa0e9c52c3b5c8668a8221388cbb` |
| 23 | `theorem` | [mem_ofIntervalRat_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-ofintervalrat-singleton--c8ef0ec509284489ea9fd5c6.md) | 534 | `result-track:c8ef0ec509284489ea9fd5c6aad6f20ab435a2bc686fea67cfbd5a9b78b45aee` |
| 24 | `theorem` | [mem_scale_shift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-scale-shift--352e1988712c85ad1be60460.md) | 539 | `result-track:352e1988712c85ad1be60460a44522b46a3e1d75e82ec76ba4e0d520dddb23de` |
| 25 | `theorem` | [mem_sub_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-sub-const--bb0c3a68f3ca96b3ae437a0d.md) | 549 | `result-track:bb0c3a68f3ca96b3ae437a0d75075c7db002d2688261b402f96ba2ff592258a0` |
| 26 | `theorem` | [mem_square](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-square--3fde0083185fa71e7f5e244a.md) | 554 | `result-track:3fde0083185fa71e7f5e244a75deb3c6fa25fb10802122fb713a174120181c32` |
| 27 | `theorem` | [mem_layerNorm_forwardInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/mem-layernorm-forwardinterval--6c8215d6be631790bd7357df.md) | 588 | `result-track:6c8215d6be631790bd7357df24b2a8d457253cb60424bae7ca7176ae9f3e9370` |
| 28 | `structure` | [FFNBlock](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/ffnblock--b47bd94fbd138d84fe944c8e.md) | 896 | `declaration-track:b47bd94fbd138d84fe944c8ec0c72216d5b88be21f01fd09a622c527de717269` |
| 29 | `def` | [forwardReal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/forwardreal--0a1e2de0cf3b625632699e79.md) | 908 | `declaration-track:0a1e2de0cf3b625632699e79e79fa85489a911a7fc412e4706d55fdfc6d90b23` |
| 30 | `def` | [forwardInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/forwardinterval--97f5dd833c8dca71e95ed9e2.md) | 914 | `declaration-track:97f5dd833c8dca71e95ed9e2065ad362715d35e1a37e5448bfc82ed1ffc17994` |
| 31 | `structure` | [TransformerBlock](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/transformerblock--af84e6248eaad619283973b9.md) | 922 | `declaration-track:af84e6248eaad619283973b9b9608c8f046dfbcea71e02f0e6fbd71fcee97d8a` |
| 32 | `def` | [forwardInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/forwardinterval--96da34b4ed4ef91a25f9316b.md) | 938 | `declaration-track:96da34b4ed4ef91a25f9316b2ae4dff069caf0816dc4a98441e9631007ce2899` |
| 33 | `def` | [reluMLPInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean/declarations/relumlpinterval--870bab78d2aa8e97cdc2144c.md) | 957 | `declaration-track:870bab78d2aa8e97cdc2144c40e5e037549325156c500f4f3c3e1f5771fdddf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
