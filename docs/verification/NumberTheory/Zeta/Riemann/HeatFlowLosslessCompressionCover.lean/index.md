# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.HeatFlowLosslessCompressionCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07d01211798fe4e845067da3fced11bea45821c4",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07d01211798fe4e845067da3fced11bea45821c4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Zeta.Riemann.BombieriHuffmanLosslessBoundary`](../../../../../mathematics/NumberTheory/Zeta/Riemann/BombieriHuffmanLosslessBoundary.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LosslessCodec](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/losslesscodec--c28039e8d4c4094d999c8972.md) | 48 | `declaration-track:c28039e8d4c4094d999c89722211f9675b9b4eed21ce59ac23ff5f4b0ea3ca4f` |
| 2 | `theorem` | [LosslessCodec.encode_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/losslesscodec-encode-injective--38bd799de0e67ed83d18a784.md) | 54 | `result-track:38bd799de0e67ed83d18a784a779e7885e844ecc5d5b6722f90a0471996b85b6` |
| 3 | `theorem` | [LosslessCodec.hasTotalLosslessDecoder](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/losslesscodec-hastotallosslessdecoder--294047c6834ee25e03892ba9.md) | 66 | `result-track:294047c6834ee25e03892ba9289c8f3e7180d79cea8b065edbe8af5bc59ba5c9` |
| 4 | `def` | [huffmanByteCodec](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/huffmanbytecodec--cf29ea1ec0c45799a746450d.md) | 76 | `declaration-track:cf29ea1ec0c45799a746450daf1df18d9d13280f4a98a81c249ab95fd12b6a82` |
| 5 | `structure` | [LosslessProcessCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/losslessprocesscover--b1eb263d05bda71050f7d439.md) | 87 | `declaration-track:b1eb263d05bda71050f7d4394a42c32e62d3fd02e1f47365134940e91f2591c7` |
| 6 | `theorem` | [LosslessProcessCover.recover_after_codedStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/losslessprocesscover-recover-after-codedstep--e02ea2bec02b847f0174a2c5.md) | 96 | `result-track:e02ea2bec02b847f0174a2c565940cd8c9d8ae19d9cf9f5607b51975d4c06c8a` |
| 7 | `structure` | [ZeroBoundProcessCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/zeroboundprocesscover--9fac8458363b39034daf7dd6.md) | 110 | `declaration-track:9fac8458363b39034daf7dd62025da8e8498984416d11ea2842e6a9a9bd996dc` |
| 8 | `def` | [ZeroBoundProcessCover.decodeZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/zeroboundprocesscover-decodezero--7a24c4e0f9b6f4d23ddb5497.md) | 117 | `declaration-track:7a24c4e0f9b6f4d23ddb54979597ccec2fa1bfcb778b96c2aa1b7a54b924bbd5` |
| 9 | `theorem` | [ZeroBoundProcessCover.recover_bound_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/zeroboundprocesscover-recover-bound-zero--b3d95725177928ffa2d3340c.md) | 126 | `result-track:b3d95725177928ffa2d3340c6f15c6f80c91ca1262498b0a4ceb6cc75db92d97` |
| 10 | `theorem` | [bombieri_two_moment_profile_is_not_lossless](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/bombieri-two-moment-profile-is-not-lossless--088f3e871ba3cf71fa26b4b5.md) | 140 | `result-track:088f3e871ba3cf71fa26b4b5352fb930c504641b5d39427dedf2f277275f6762` |
| 11 | `theorem` | [no_lossless_codec_with_bombieri_moment_encoding](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/no-lossless-codec-with-bombieri-moment-encoding--32ba59d5233e12244b8da203.md) | 148 | `result-track:32ba59d5233e12244b8da20323fba4c56fd9a34dfc05b6c3d1cf84d35e45e1b0` |
| 12 | `def` | [threeQuarterBoundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/threequarterboundary--7616436c9195e120e8a7499e.md) | 158 | `declaration-track:7616436c9195e120e8a7499ed0d2d3fbda9047b1dc6d656e2d35ad02c921ba0f` |
| 13 | `def` | [sevenEighthBoundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/seveneighthboundary--7e7e60030af5caabf300bd12.md) | 160 | `declaration-track:7e7e60030af5caabf300bd12cd72fa68e6c323643d61cf56cd8ae8f99e07c879` |
| 14 | `theorem` | [boundary_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/boundary-gap--88b24ddf545eb2fb18bff756.md) | 163 | `result-track:88b24ddf545eb2fb18bff756ec2de406678649479268ae72fe9a30f3bde01e3b` |
| 15 | `structure` | [AsymptoticallyFreeRefinement](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/asymptoticallyfreerefinement--64c9ceb556cfab30c5930062.md) | 169 | `declaration-track:64c9ceb556cfab30c5930062bbea455f5edb017c0993d393d8f8339c3e6283af` |
| 16 | `theorem` | [AsymptoticallyFreeRefinement.eventually_fits_boundary_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/asymptoticallyfreerefinement-eventually-fits-boundary-gap--78df303a6aff7ce9a7e96ac6.md) | 177 | `result-track:78df303a6aff7ce9a7e96ac66b19fae415e12840f0baf63f3a6f77aabe28c861` |
| 17 | `structure` | [FiniteStateObserver](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/finitestateobserver--235c180432d5e10bb3d2e9a2.md) | 194 | `declaration-track:235c180432d5e10bb3d2e9a24ff76995166a86c68352ec580a06968c59cdf67a` |
| 18 | `def` | [ConcededCoincidence](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/concededcoincidence--fca5b31589819814a8ae61cd.md) | 200 | `declaration-track:fca5b31589819814a8ae61cd5ce6a434b25576de022b17db1f7a9ea3097486a8` |
| 19 | `theorem` | [no_conceded_coincidence](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/no-conceded-coincidence--41b7875e2ed1d4e3b39b9846.md) | 209 | `result-track:41b7875e2ed1d4e3b39b9846398970a1962e5787c7d8fa22ff8cb8ac7a10b084` |
| 20 | `def` | [PostflowConcededCoincidence](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/postflowconcededcoincidence--c3428f92cfdfed96d7f11f46.md) | 221 | `declaration-track:c3428f92cfdfed96d7f11f467d61ef14a218d2b54c928cf3f1bb08833d3f90c0` |
| 21 | `theorem` | [no_postflow_conceded_coincidence](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/no-postflow-conceded-coincidence--5d45e2ae6de56f97f804b599.md) | 234 | `result-track:5d45e2ae6de56f97f804b599524d4f1a7e245fdf7b6b357305194b22e306a938` |
| 22 | `structure` | [ZeroHeightArithmeticAssumptions](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/zeroheightarithmeticassumptions--0165202e68e66f71750acd52.md) | 258 | `declaration-track:0165202e68e66f71750acd52ffb2813f6adb14e54274cdd0d3af301898651279` |
| 23 | `theorem` | [zero_height_irrational](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/zero-height-irrational--38936b86a85841d41c524206.md) | 264 | `result-track:38936b86a85841d41c5242068d5db82830663dffd92ac95e6a8b93d2d5296929` |
| 24 | `theorem` | [zero_height_transcendental_of_grh](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/zero-height-transcendental-of-grh--65c32c21493334233cc901d8.md) | 272 | `result-track:65c32c21493334233cc901d80257b7c15d8f591528df493c54ce320a080afb2a` |
| 25 | `structure` | [QuasiRiemannAccountingSystem](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/quasiriemannaccountingsystem--2ab2dbed56d8e13ea7d140c4.md) | 282 | `declaration-track:2ab2dbed56d8e13ea7d140c4552bbcff18b81c6df78bcde9d7ae937685190753` |
| 26 | `theorem` | [QuasiRiemannAccountingSystem.recovers_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/quasiriemannaccountingsystem-recovers-zero--9c4e8404a3224082be754657.md) | 292 | `result-track:9c4e8404a3224082be754657c6a044bb235ce52cd45b24f52e6e535e3d2594b4` |
| 27 | `theorem` | [QuasiRiemannAccountingSystem.eventually_fits_gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/quasiriemannaccountingsystem-eventually-fits-gap--0de5a0dbd46b07acefea9ed5.md) | 306 | `result-track:0de5a0dbd46b07acefea9ed5193b21818a1890f9169cd1e47b307a5a3a7acc19` |
| 28 | `theorem` | [QuasiRiemannAccountingSystem.breaks_observed_postflow_coincidence](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/declarations/quasiriemannaccountingsystem-breaks-observed-postflow-coincidence--fd97c47f58d3dad0f0f6d647.md) | 318 | `result-track:fd97c47f58d3dad0f0f6d6470375a8b2a04ed3fb9fc43f18ce4d7fb83181c992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
