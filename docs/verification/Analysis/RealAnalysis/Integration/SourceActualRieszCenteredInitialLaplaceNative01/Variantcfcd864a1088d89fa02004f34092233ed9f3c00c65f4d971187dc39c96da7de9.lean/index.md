# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszCenteredInitialLaplaceNative01.Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e72aaf3daec4ee905fc5933d0c8f6cdd9b48559",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e72aaf3daec4ee905fc5933d0c8f6cdd9b48559`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszInitialLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualRieszRealConstantCenter` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/time-weight-integrable--dd345b53d5ba72c425dd3c70.md) | 18 | `result-track:dd345b53d5ba72c425dd3c70afeb115314a3bcf74ce25dea8526ea74746aa087` |
| 2 | `theorem` | [time_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/time-weight-integral--e2195610320468c4ff53ccb4.md) | 25 | `result-track:e2195610320468c4ff53ccb488d1e7088fda80c748fa4d73239898abd77a66f2` |
| 3 | `theorem` | [centered_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/centered-weight-eq--0e776619d4c37c631e8a4beb.md) | 34 | `result-track:0e776619d4c37c631e8a4bebd0131a16cdccf13e507594c68d9d79965814bdf8` |
| 4 | `theorem` | [centered_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/centered-weight-integrable--5fe106dc731c1b32e70edc6b.md) | 43 | `result-track:5fe106dc731c1b32e70edc6b9df950b7c566947473eaabb0d573d8ef62c41f86` |
| 5 | `theorem` | [centered_weight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/centered-weight-integral--a95864a92669163c3ee8de99.md) | 52 | `result-track:a95864a92669163c3ee8de993a6e39b8c31f0b9eeab77dbdd21c7d97ad7414f8` |
| 6 | `theorem` | [numerator_initial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/numerator-initial--91572f0b7724f9b6bca746ac.md) | 71 | `result-track:91572f0b7724f9b6bca746ac56a1d8a10d62534a59c7453729a5a600aea4947b` |
| 7 | `theorem` | [centered_scalar_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/centered-scalar-identity--bb8ca097e171cb58b537dbb5.md) | 77 | `result-track:bb8ca097e171cb58b537dbb594069912741104f3e0e44508875eef634474abf8` |
| 8 | `def` | [actualFixedCenteredRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfixedcenteredrieszlaplace--d095f35c7ca23f4cb60789aa.md) | 83 | `declaration-track:d095f35c7ca23f4cb60789aadffdedbe2b628239387f78ca6ed50552ac2933c0` |
| 9 | `def` | [actualFiniteCenteredRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfinitecenteredrieszlaplace--bf3f54d5c715ea08a5109dc9.md) | 89 | `declaration-track:bf3f54d5c715ea08a5109dc9421b0d29df638864b6c1113572453cf274e09462` |
| 10 | `theorem` | [actualFixedCenteredRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfixedcenteredrieszlaplace-integrable--d346a815953f34bd191c8ad9.md) | 94 | `result-track:d346a815953f34bd191c8ad9b838800a35e2d68e5a2b9b3b070fcb662121e397` |
| 11 | `theorem` | [actualFixedCenteredRieszLaplace_eq_regularization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfixedcenteredrieszlaplace-eq-regularization--b75d9ab492faf97b7668f184.md) | 101 | `result-track:b75d9ab492faf97b7668f184aff961b93d0a58f0fa161c608bb7b02ef2908fce` |
| 12 | `theorem` | [actualFiniteCenteredRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfinitecenteredrieszlaplace-integrable--f22157dbc3e97091e3519cb8.md) | 110 | `result-track:f22157dbc3e97091e3519cb848e726bbad2bee2a71a322702a882190668aa7dc` |
| 13 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfinitecenteredrieszlaplace-eq-fixed-add-payment--a427f68aea2ae38ae6dad71a.md) | 118 | `result-track:a427f68aea2ae38ae6dad71a0778e53367e88e3bb54f6eeccddff7cb71701a9c` |
| 14 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_regularization_add_payment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfinitecenteredrieszlaplace-eq-regularization-add-payment--c911cb6699c02bc2737f52a7.md) | 129 | `result-track:c911cb6699c02bc2737f52a746471797cc854e0f4b4fb184661022b46a000561` |
| 15 | `theorem` | [actualFiniteCenteredRieszLaplace_difference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantcfcd864a1088d89fa02004f34092233ed9f3c00c65f4d971187dc39c96da7de9.lean/declarations/actualfinitecenteredrieszlaplace-difference-bound--659051dac991a6d6be122f0a.md) | 137 | `result-track:659051dac991a6d6be122f0a17d5276e3db7670c94f0da265af5afd107947b5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
