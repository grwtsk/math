# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSignedHeat.Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCompensatedFourier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheat--6e5615fb2aece6039d3e01f6.md) | 23 | `declaration-track:6e5615fb2aece6039d3e01f6616f1e1ee5b96fd739459cab56a2a958e3ee93fc` |
| 2 | `def` | [cubicHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/cubicheat--79dab137028589f2d793a7a5.md) | 27 | `declaration-track:79dab137028589f2d793a7a5da7610f7d962e6ccd3b2542a4a8e09c4407425ef` |
| 3 | `def` | [signedHeatRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheatremainder--2eecee064ce2320e3cc6dac3.md) | 31 | `declaration-track:2eecee064ce2320e3cc6dac37c1f124f5aace1c3217e93189cfc2d00a22d1c62` |
| 4 | `theorem` | [heatPower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/heatpower-bound--fe6a826b5a27f7a59bbf46a4.md) | 34 | `result-track:fe6a826b5a27f7a59bbf46a4fa4741fdb2533b35b5bd5c2585c92d209a323be3` |
| 5 | `theorem` | [heatPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/heatpower-integrable--1b3aae816ef201104d9b2b90.md) | 51 | `result-track:1b3aae816ef201104d9b2b90545fd862e710f34b12393871fa1e418db0281045` |
| 6 | `theorem` | [signedHeat_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheat-integrable--3d0a9df2e9244519f91fbe99.md) | 59 | `result-track:3d0a9df2e9244519f91fbe9904151c4cdf42454724cfa27ff0b26d4f4b457677` |
| 7 | `theorem` | [cubicHeat_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/cubicheat-integrable--a8c07017df134b47e27dd717.md) | 64 | `result-track:a8c07017df134b47e27dd7170d70d84e232f48277842c63e4abb850d1f92e34c` |
| 8 | `theorem` | [abs_time_local](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/abs-time-local--6e2d55c1ba561b5266bd7ff9.md) | 69 | `result-track:6e2d55c1ba561b5266bd7ff9aff26e5175fc794c63c938c25362f3e8ee6959d2` |
| 9 | `theorem` | [signedHeat_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheat-hasderivat--2267e05be10d519d96035884.md) | 75 | `result-track:2267e05be10d519d9603588481f3d36ec12ad3ecc5f6c46c19d0ce6244014ef4` |
| 10 | `theorem` | [cubicHeat_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/cubicheat-continuouson--811f297623019c475b2e2c43.md) | 96 | `result-track:811f297623019c475b2e2c431b1e57c07a1dae51b36155eaec6179b256962b58` |
| 11 | `theorem` | [signedHeat_decomposition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheat-decomposition--e92cb45f5267bc767e2af30e.md) | 109 | `result-track:e92cb45f5267bc767e2af30e28532fb37c30d83611a29acbb827f7fff8a4f6d8` |
| 12 | `def` | [terminalCap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/terminalcap--d8f6bb97f19295907d13e431.md) | 124 | `declaration-track:d8f6bb97f19295907d13e431d1847f74a28a237395ca03cdf8503a80a33e76ed` |
| 13 | `theorem` | [gaussian_abs_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/gaussian-abs-bound--a970a1100d8983aef5cb1d19.md) | 126 | `result-track:a970a1100d8983aef5cb1d19687096d87d1f68d03dca8be3d078e84411f22456` |
| 14 | `theorem` | [signedHeat_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheat-terminal-bound--0b636767c04b0e45737d7252.md) | 149 | `result-track:0b636767c04b0e45737d7252ed02704cd6db5d684c1504bb119048e595cfa56a` |
| 15 | `theorem` | [signedHeat_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/signedheat-neg--4f5bdb26bf7473e2e199fb62.md) | 159 | `result-track:4f5bdb26bf7473e2e199fb622689c8ef17ab1783b39f8c477bfcbde8586634b9` |
| 16 | `theorem` | [evenHeat_neg_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/evenheat-neg-eq--418b5424222281a669334fa2.md) | 164 | `result-track:418b5424222281a669334fa2b03edebde4722ae5fb95b458988b871a53af49a9` |
| 17 | `def` | [sourceProbabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourceprobabilitymeasure--47b2d1f1ee2fafa46ab07c46.md) | 175 | `declaration-track:47b2d1f1ee2fafa46ab07c466be6eb0f6543ad12ed24ccd044d8a5191d1c7bf7` |
| 18 | `theorem` | [sourceProbabilityMeasure_isProbability](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourceprobabilitymeasure-isprobability--495e5a2248b83f79e25b2841.md) | 178 | `result-track:495e5a2248b83f79e25b2841ff81dc6dc29d00a535c113ae94f13c2206057e00` |
| 19 | `theorem` | [sourceProbabilityMeasure_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourceprobabilitymeasure-integral--664eb5adedea64e1bb21c658.md) | 193 | `result-track:664eb5adedea64e1bb21c658e8084eb22ad56e0344411cc6a67bb1fe1dbecb31` |
| 20 | `def` | [sourceSymbolBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcesymbolbound--a927b52cdb01a0591dcc47a0.md) | 205 | `declaration-track:a927b52cdb01a0591dcc47a00cec91ccadd8b6f40f82a562fe72d0c74f641613` |
| 21 | `theorem` | [sourceSymbolBound_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcesymbolbound-nonneg--341cdb6e43b88bef579b0fe5.md) | 208 | `result-track:341cdb6e43b88bef579b0fe52e6b455331cfd8baea53ba3bf035f5a7fcdae31a` |
| 22 | `theorem` | [compensatedFourierSymbol_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/compensatedfouriersymbol-abs-le--9d542527dff67f559bd14650.md) | 211 | `result-track:9d542527dff67f559bd14650a11595fd0b2e937fae403721a2fd7309df442c7b` |
| 23 | `theorem` | [compensatedFourierSymbol_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/compensatedfouriersymbol-measurable--064875ad1cb0bc29e1130974.md) | 220 | `result-track:064875ad1cb0bc29e11309747b6a4cdb212ebce5c9c744d81531dcccf77d9879` |
| 24 | `def` | [sourceSignedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcesignedheat--f534fbf2d1bde63eca3463a8.md) | 226 | `declaration-track:f534fbf2d1bde63eca3463a87567da1948dd820a3fb893a1e861ac5dd24e7fd1` |
| 25 | `def` | [sourceCubicHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcecubicheat--8826e34fed215d189191a8c7.md) | 230 | `declaration-track:8826e34fed215d189191a8c73b3f6dba928b45a40a40981eb73eab2fb70cbf65` |
| 26 | `def` | [sourceHeatRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourceheatremainder--47339dedabd488a0cbbd889d.md) | 234 | `declaration-track:47339dedabd488a0cbbd889d86e7894f334b10198dddabfd3e9af9693518eb39` |
| 27 | `theorem` | [sourceSignedHeat_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcesignedheat-zero--c13a865cc43c0e38693ef77e.md) | 238 | `result-track:c13a865cc43c0e38693ef77ef5ad8d1b33d07ef98c8c4890c6d9b81daa274093` |
| 28 | `theorem` | [sourceSignedHeat_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcesignedheat-hasderivat--5e4beae70c7b910bed7a0db5.md) | 245 | `result-track:5e4beae70c7b910bed7a0db58bc7121427d15e37074886a97ac71d1224a33888` |
| 29 | `theorem` | [compensatedSourceSum_eq_signedHeat_add_remainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/compensatedsourcesum-eq-signedheat-add-remainder--b6cb662d7cbcaea279102cef.md) | 252 | `result-track:b6cb662d7cbcaea279102cef8720c8ac375507e06ae40647324d2dcd4a19c6d5` |
| 30 | `theorem` | [sourceSignedHeat_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/sourcesignedheat-terminal-bound--b6f4af246efd4aff7e3c1786.md) | 261 | `result-track:b6f4af246efd4aff7e3c1786bf8803d31804e00639796fe595e4e77839d2fdb7` |
| 31 | `def` | [UniformSignedHeatRemainderUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/uniformsignedheatremainderupperbound--29b67cff3f0d53084d020382.md) | 267 | `declaration-track:29b67cff3f0d53084d020382c2946b5c9ce721404aa919c103a6e7b2c7dced99` |
| 32 | `theorem` | [compensated_tail_of_uniform_signedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/compensated-tail-of-uniform-signedheat--362caa35996bc2f3fa6e59de.md) | 272 | `result-track:362caa35996bc2f3fa6e59dedb56c1643094c69704495cfd2bbcd3875aec8db3` |
| 33 | `theorem` | [uniform_signedHeat_of_compensated_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/uniform-signedheat-of-compensated-tail--35810874fd28d0ac7a52a811.md) | 284 | `result-track:35810874fd28d0ac7a52a811eac7f87abaff251206af35f3d86f7e85bc2fb8f9` |
| 34 | `theorem` | [uniform_signedHeat_iff_compensated_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/uniform-signedheat-iff-compensated-tail--41c17f78a493dd11fa65412c.md) | 295 | `result-track:41c17f78a493dd11fa65412c4fec70844dfd23d66743bc6d13f4e929563c7c80` |
| 35 | `theorem` | [estimate_of_uniform_signedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/declarations/estimate-of-uniform-signedheat--df35e8d83e3ae01629cfa244.md) | 301 | `result-track:df35e8d83e3ae01629cfa244f226a373c6e800222443b1df73ad06ec49a80b39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
