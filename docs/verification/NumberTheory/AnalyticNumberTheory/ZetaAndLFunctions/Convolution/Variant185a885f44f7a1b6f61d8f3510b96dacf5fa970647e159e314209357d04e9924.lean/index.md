# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Convolution.Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8367912755b1238b806789766a7ece118791d92c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8367912755b1238b806789766a7ece118791d92c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean.json)

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
| 1 | `def` | [toArithmeticFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/toarithmeticfunction--dd090bb4481fb6d6b12bdcd3.md) | 48 | `declaration-track:dd090bb4481fb6d6b12bdcd3a9fb6c11e9770026d2d513ece67303e3bef8fc9e` |
| 2 | `lemma` | [toArithmeticFunction_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/toarithmeticfunction-congr--717b92e21df47ff224615c3c.md) | 52 | `result-track:717b92e21df47ff224615c3c8626b0bf5378b9947dc506afb90b962dce8a4726` |
| 3 | `lemma` | [ArithmeticFunction.toArithmeticFunction_eq_self](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/arithmeticfunction-toarithmeticfunction-eq-self--70480fd20bda7691c3b13ca4.md) | 61 | `result-track:70480fd20bda7691c3b13ca46f8f152d35f5ed4fc019d5742ce57015a8585fca` |
| 4 | `def` | [LSeries.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-convolution--3479490736eed8e8320c4939.md) | 70 | `declaration-track:3479490736eed8e8320c49392905b44f7a9fe37c5d23ef500bb614d5735214cd` |
| 5 | `lemma` | [LSeries.convolution_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-convolution-congr--aac853c8fca885bf8a7df842.md) | 76 | `result-track:aac853c8fca885bf8a7df84297434458c27ddc4f12a40760896efb732e577a87` |
| 6 | `lemma` | [ArithmeticFunction.coe_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/arithmeticfunction-coe-mul--dc9c432127b11b8cd7d395cb.md) | 83 | `result-track:dc9c432127b11b8cd7d395cb817cfb2f497fb4b90d74e3240b6adb938c6c9794` |
| 7 | `lemma` | [convolution_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/convolution-def--b00a542e5b864368613bf9a9.md) | 90 | `result-track:b00a542e5b864368613bf9a97ad8d94135ca96f7665682a516cbde151b529526` |
| 8 | `lemma` | [convolution_map_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/convolution-map-zero--06deae11c4f06a91edb71b54.md) | 97 | `result-track:06deae11c4f06a91edb71b54c6a420eaa976fc72905acc0dfab00046b0f5db86` |
| 9 | `lemma` | [term_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/term-convolution--1a6434ed31303c80b4fc5751.md) | 107 | `result-track:1a6434ed31303c80b4fc5751efa29f9b5bd9117865f6c83255e5478fc0bc5b02` |
| 10 | `lemma` | [term_convolution'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/term-convolution--d950edf3e2315bad0b49c16e.md) | 123 | `result-track:d950edf3e2315bad0b49c16ef5321075c5473351ee08040a15fab6a3d5c26845` |
| 11 | `lemma` | [LSeriesHasSum.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lserieshassum-convolution--1fde33a28edf84d0456a5ba0.md) | 148 | `result-track:1fde33a28edf84d0456a5ba0c545052afdccfe4103c7618d7efb6291edb1b904` |
| 12 | `lemma` | [LSeries_convolution'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-convolution--2d8521d420e9ab4fe3f5abfa.md) | 157 | `result-track:2d8521d420e9ab4fe3f5abfa1aae65f6eab866991d34deb96ed7f30456e2498e` |
| 13 | `lemma` | [LSeries_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-convolution--8ba075b5c59bdddb95f0de5e.md) | 164 | `result-track:8ba075b5c59bdddb95f0de5e9911a25e1ae4f6841df87a0b161711ca77b865bc` |
| 14 | `lemma` | [LSeriesSummable.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseriessummable-convolution--d9dbc08553b9bb7b821423f9.md) | 172 | `result-track:d9dbc08553b9bb7b821423f9bb6bfdb56062e6f907117a344b706b07ff971889` |
| 15 | `lemma` | [LSeries.abscissaOfAbsConv_convolution_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-abscissaofabsconv-convolution-le--13fbd1ebfe4c2e89e6b348d2.md) | 179 | `result-track:13fbd1ebfe4c2e89e6b348d29125bc24786d7a54b28aeb281b5ffea4d0cd1aff` |
| 16 | `lemma` | [LSeriesHasSum_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lserieshassum-mul--a18fc2aab639e4f55d9121bc.md) | 191 | `result-track:a18fc2aab639e4f55d9121bc308c80582fb92460c09833c6bb95f467d1f2114a` |
| 17 | `lemma` | [LSeries_mul'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-mul--b0dcc10cf8be00daaa8b62c1.md) | 198 | `result-track:b0dcc10cf8be00daaa8b62c1e8b8d00317f585e49aa3f177a16d572257322b23` |
| 18 | `lemma` | [LSeries_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseries-mul--8b7388763d258b558019a365.md) | 205 | `result-track:8b7388763d258b558019a365d6e18494c8033087c2b6c600b51b19e99dc03a9d` |
| 19 | `lemma` | [LSeriesSummable_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant185a885f44f7a1b6f61d8f3510b96dacf5fa970647e159e314209357d04e9924.lean/declarations/lseriessummable-mul--64666757c3cb925f48699319.md) | 212 | `result-track:64666757c3cb925f48699319e2db6374ab4c3e36d1d55fd12a2aa36444b2a376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
