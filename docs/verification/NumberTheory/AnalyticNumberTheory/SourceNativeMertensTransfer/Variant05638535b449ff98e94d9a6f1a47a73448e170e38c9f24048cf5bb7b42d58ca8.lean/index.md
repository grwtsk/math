# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceNativeMertensTransfer.Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbc701f2ed349d37464737761b8e17d9de8ae2f4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbc701f2ed349d37464737761b8e17d9de8ae2f4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichletFubini` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mertensResidual_eq_angularContour](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/mertensresidual-eq-angularcontour--9a650322e94ac5da0113e0e9.md) | 22 | `result-track:9a650322e94ac5da0113e0e907a2010ccf8dafb37c54f2e2d5ca64d9ad4e1ecb` |
| 2 | `theorem` | [mertensResidual_sub_head_norm_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/mertensresidual-sub-head-norm-bound--0eb9ca39108d7e0215c15fdf.md) | 27 | `result-track:0eb9ca39108d7e0215c15fdf74098592a770b46153bd485c703dbe71ed33e24a` |
| 3 | `theorem` | [mertensResidual_growing_tail_bound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/mertensresidual-growing-tail-bound--6ea057b53ea921e983a66aef.md) | 34 | `result-track:6ea057b53ea921e983a66aef333c3bc48e6f2d7ff66b4ecc2acacd7fd4e4542b` |
| 4 | `theorem` | [mertensResidual_le_head_add_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/mertensresidual-le-head-add-tail--52ee108d7a4fd7916c771f3a.md) | 41 | `result-track:52ee108d7a4fd7916c771f3a22ba8fae09225d6f6302b54569537b0fb8ef607e` |
| 5 | `def` | [SignedNativeHeadTailUpperBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/signednativeheadtailupperbound--31842dffa9cc4743a6921194.md) | 48 | `declaration-track:31842dffa9cc4743a69211948f6da50917cc2584cd7aa56aef6097018b708193` |
| 6 | `theorem` | [twoLineTailConstant_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/twolinetailconstant-nonneg--f04fcf688b8a6b23a714f18b.md) | 52 | `result-track:f04fcf688b8a6b23a714f18bb6f6b96d160225cacae408811f8d0e170ba6e94d` |
| 7 | `theorem` | [mertensResidual_upper_of_signed_head](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/mertensresidual-upper-of-signed-head--29fd084ea7fef42ffc53a874.md) | 58 | `result-track:29fd084ea7fef42ffc53a8749772bc49d3c823eeff73405f3b74dc0976adbd2e` |
| 8 | `theorem` | [mertens_residual_tail_of_signed_native_head](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/mertens-residual-tail-of-signed-native-head--965d4aace09736f9104648c6.md) | 70 | `result-track:965d4aace09736f9104648c66aca727efd32ea3151d7d20e5d94de92f1ca81ea` |
| 9 | `theorem` | [estimate_of_signed_native_head](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceNativeMertensTransfer/Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8.lean/declarations/estimate-of-signed-native-head--1a5b354a5af4698d1e29e1a9.md) | 78 | `result-track:1a5b354a5af4698d1e29e1a92ef551f2fc8a5277be78cdbe7d952d8d8a3a5362` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
