# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HasOuterApproxClosed.Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec701fcd87952986a28066d36ff3c0333ba15ffb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec701fcd87952986a28066d36ff3c0333ba15ffb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean.json)

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
| 1 | `theorem` | [tendsto_lintegral_nn_filter_of_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/tendsto-lintegral-nn-filter-of-le-const--e4d2b830c0b40d17187c6f12.md) | 69 | `result-track:e4d2b830c0b40d17187c6f120aeaeb1406dca423b3701834274c48f1778a0b4f` |
| 2 | `theorem` | [measure_of_cont_bdd_of_tendsto_filter_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/measure-of-cont-bdd-of-tendsto-filter-indicator--1177b16a1a4f963133c23529.md) | 87 | `result-track:1177b16a1a4f963133c235298cc5648d4d69b81c7aadc997482b4695fbdb3ea5` |
| 3 | `theorem` | [measure_of_cont_bdd_of_tendsto_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/measure-of-cont-bdd-of-tendsto-indicator--4b27a3f51057822b9bb7c45c.md) | 106 | `result-track:4b27a3f51057822b9bb7c45cc96965d2ad1fb09c5b9f14eddd310ee1bdc94ff0` |
| 4 | `theorem` | [tendsto_lintegral_thickenedIndicator_of_isClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/tendsto-lintegral-thickenedindicator-of-isclosed--a88a66d67e0140a09113c72e.md) | 120 | `result-track:a88a66d67e0140a09113c72ea4ce80e1f93c681a5fa9013d644e60beacedd556` |
| 5 | `lemma` | [integrable_thickenedIndicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/integrable-thickenedindicator--e18cbdfcb7bef082f5a5f3fe.md) | 132 | `result-track:e18cbdfcb7bef082f5a5f3fe7d0d059af242e48b88f3e05ee2e30ae3008525a1` |
| 6 | `lemma` | [tendsto_integral_thickenedIndicator_of_isClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/tendsto-integral-thickenedindicator-of-isclosed--4e559fac683b9f2edac6e872.md) | 141 | `result-track:4e559fac683b9f2edac6e8723f3ca1b59849ffc1aa18c2b41fb32b03319d30df` |
| 7 | `class` | [HasOuterApproxClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/hasouterapproxclosed--fe62d14487f211b6a047695b.md) | 169 | `declaration-track:fe62d14487f211b6a047695b26e06a04161b4dbb642eb7d7e6f0756f142f7a80` |
| 8 | `def` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.HasOuterApproxClosed.Variant58faf38cf5f8aa4ef3b6418526fb09ce23372ffe6560b85f936113ff284a1c27.IsClosed.apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/root-grwtsk-analysis-realanalysis-integration-hasouterapproxclosed-varia--3cc32392ac197bdc51792c99.md) | 180 | `declaration-track:3cc32392ac197bdc51792c99932166f812e25c66a60e4908d0279cdcd13fb4e0` |
| 9 | `lemma` | [apprSeq_apply_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/apprseq-apply-le-one--e78f87893b5b50e28399611c.md) | 183 | `result-track:e78f87893b5b50e28399611c5bd40b203753f825d8c85d8fe3311c8bc642df85` |
| 10 | `lemma` | [apprSeq_apply_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/apprseq-apply-eq-one--5ac7b18844327d7983c886b3.md) | 187 | `result-track:5ac7b18844327d7983c886b3cd1e37426025742bd0087c3c7a1d9480f2b86e36` |
| 11 | `lemma` | [tendsto_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/tendsto-apprseq--cb67b2b21c702100b1366816.md) | 192 | `result-track:cb67b2b21c702100b1366816b212bcc610cb5d7803a38e44d3a95291c127cc82` |
| 12 | `lemma` | [indicator_le_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/indicator-le-apprseq--a1aee6d7d0d7c237767a9bb4.md) | 196 | `result-track:a1aee6d7d0d7c237767a9bb41a0a2ef4de2294791664a16bcff3121a480dfac6` |
| 13 | `theorem` | [measure_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/measure-le-lintegral--a8d953c59b54b6e477f0be22.md) | 205 | `result-track:a8d953c59b54b6e477f0be22923f89fcf9bce7a3d633113a5a5a2d629daf7311` |
| 14 | `lemma` | [tendsto_lintegral_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/tendsto-lintegral-apprseq--d26f053031ea92faffa7a25b.md) | 218 | `result-track:d26f053031ea92faffa7a25b741e047364e401b9ae9c9f242d86062d889c9fa9` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/instance--ffbba4f2924998317ba2a2fb.md) | 226 | `declaration-track:ffbba4f2924998317ba2a2fb9cf44ecef8d199e29ce46dd5714f6041d685406a` |
| 16 | `theorem` | [measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/measure-isclosed-eq-of-forall-lintegral-eq-of-isfinitemeasure--27e2507bf8ca4e658d2aa88f.md) | 246 | `result-track:27e2507bf8ca4e658d2aa88f3693ca95dc1bcab6df95a058fabe83224d51916b` |
| 17 | `theorem` | [ext_of_forall_lintegral_eq_of_IsFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/ext-of-forall-lintegral-eq-of-isfinitemeasure--6ccf0cf34cfe5d9d4ff5e4cf.md) | 264 | `result-track:6ccf0cf34cfe5d9d4ff5e4cf1ae2ad6708fbc08ccd85ff5f7d3e69eb34608a61` |
| 18 | `theorem` | [ext_of_forall_integral_eq_of_IsFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/declarations/ext-of-forall-integral-eq-of-isfinitemeasure--b66d8bdfc39db5a908009c9a.md) | 277 | `result-track:b66d8bdfc39db5a908009c9a825469fe4f27f1db36687f1b7cff5e8cdf2dbb69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
