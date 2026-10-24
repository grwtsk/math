# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CorrelationRegularity.Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e601c716f98485aae53fadc17ead664a653bf06",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e601c716f98485aae53fadc17ead664a653bf06`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Indicator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [indicator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/indicator-hasderivat--657c1dc2a7dfe5f22650acfb.md) | 32 | `result-track:657c1dc2a7dfe5f22650acfb118f420e506949b691f82433c90e8083ab53ba80` |
| 2 | `def` | [thirdInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/thirdinterior--52f6f706a5f95e91283b22d2.md) | 66 | `declaration-track:52f6f706a5f95e91283b22d205d9f1e4bce05c0a31abd515e3cbe9d924e66f0b` |
| 3 | `theorem` | [secondInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/secondinterior-hasderivat--ea0e180d0e77f1a9b90c50bf.md) | 71 | `result-track:ea0e180d0e77f1a9b90c50bf597ce8bee2d220fdd71883ef4078e0b493b14917` |
| 4 | `theorem` | [thirdInterior_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/thirdinterior-endpoints--a1ad14801eb0ab742c52d4a4.md) | 83 | `result-track:a1ad14801eb0ab742c52d4a48b908527adb08c5f597a33f6fe96375947a27479` |
| 5 | `def` | [normalizedInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedinterior--fc4c72e57a4b089a18b683d0.md) | 88 | `declaration-track:fc4c72e57a4b089a18b683d00ea040270d3e9a7dff6920113192627287e80afd` |
| 6 | `def` | [normalizedInteriorDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedinteriorderivative--171052365603217a2c532f20.md) | 92 | `declaration-track:171052365603217a2c532f20839882b858f260a8db56b1467db023f2e826c7c4` |
| 7 | `theorem` | [normalizedTest_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedtest-eq-indicator--cd07407476682b10b9515ab0.md) | 96 | `result-track:cd07407476682b10b9515ab021538b0be4404d80017db4fbeb895e3b425f5497` |
| 8 | `theorem` | [normalizedInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedinterior-hasderivat--c0e5a1eb3fca2b0e6c9e3f80.md) | 105 | `result-track:c0e5a1eb3fca2b0e6c9e3f80891af38e308652c32c6c399aaf25ad3b2cf17a5e` |
| 9 | `theorem` | [normalizedInteriorDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedinteriorderivative-continuous--8421a3004f158074d35860fd.md) | 110 | `result-track:8421a3004f158074d35860fdb4ee8da39908576be268a487a28536dd6c029b11` |
| 10 | `theorem` | [normalizedInterior_frontier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedinterior-frontier--92615f59f7949d96033be67e.md) | 116 | `result-track:92615f59f7949d96033be67e06aae10d63d27dc52073104187572a10748c17d1` |
| 11 | `theorem` | [normalizedTest_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedtest-contdiff--ddeabbc34303fecce76150b8.md) | 132 | `result-track:ddeabbc34303fecce76150b893550c9bd1fe7e9637abda2b21808f0977086fc5` |
| 12 | `theorem` | [normalizedTest_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedtest-zero-of-le-abs--051c220bfba1158871944efa.md) | 145 | `result-track:051c220bfba1158871944efab31a0c8a6bc44f26a5d4a8844ddaa4b87d19c9a6` |
| 13 | `theorem` | [normalizedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedtest-hascompactsupport--1667252577d45f8f0edbe513.md) | 163 | `result-track:1667252577d45f8f0edbe513bee10f49ed311f351ac32ef1b82cea4439aa484d` |
| 14 | `theorem` | [normalizedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/normalizedtest-integrable--4c7a18c34ad066b77cec652e.md) | 171 | `result-track:4c7a18c34ad066b77cec652e2a2da56da6b8d032c4813948d03dfd705abf56c2` |
| 15 | `theorem` | [correlation_product_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/correlation-product-integrable--fb687ddb2578db039000a121.md) | 178 | `result-track:fb687ddb2578db039000a1214f82a80b36d16bc194844f5aa5106c45422445b3` |
| 16 | `theorem` | [reflectedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/reflectedtest-hascompactsupport--604996dcd74233fe2328e9c0.md) | 186 | `result-track:604996dcd74233fe2328e9c06786f4a76965648c51fed41a1f0878d84ca433f7` |
| 17 | `theorem` | [reflectedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/reflectedtest-integrable--16e8b134faeb1490bdbb9cee.md) | 196 | `result-track:16e8b134faeb1490bdbb9ceeb3411edb93a15675e5001b9a9e98564fde204e3a` |
| 18 | `theorem` | [sourceCorrelation_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-eq-convolution--a93dab43aa0b6bedb98db1c9.md) | 202 | `result-track:a93dab43aa0b6bedb98db1c90f36eaf570c612e04f4d7369e3b5a1a571322a37` |
| 19 | `theorem` | [sourceCorrelation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-contdiff--cbb426e3daaddb3310f113e3.md) | 213 | `result-track:cbb426e3daaddb3310f113e334f5deff757e3e32c3249778339701a867445e53` |
| 20 | `theorem` | [sourceCorrelation_eq_zero_of_two_mul_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-eq-zero-of-two-mul-le-abs--5f59be2301276f9b0a94fd50.md) | 222 | `result-track:5f59be2301276f9b0a94fd50e5755749d9f5aab8496f4b675badafe1bb8ad342` |
| 21 | `theorem` | [sourceCorrelation_upper_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-upper-endpoint--ce4b2b40074835195b07a4fd.md) | 241 | `result-track:ce4b2b40074835195b07a4fdc6f64e45a003088b4457ff2e3046f827bed77381` |
| 22 | `theorem` | [sourceCorrelation_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-lower-endpoint--e5b6cf490060cb2462d2f766.md) | 246 | `result-track:e5b6cf490060cb2462d2f766ead7db88bd668bc793e7e210dd451b62b067c02d` |
| 23 | `theorem` | [sourceCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-hascompactsupport--329c7a130ed73b949109a7a3.md) | 252 | `result-track:329c7a130ed73b949109a7a3addd6f9b42dca51800b00b83d7d89fc0fec9c67a` |
| 24 | `theorem` | [sourceCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-integrable--b1ea6cd521178616b635fdbf.md) | 262 | `result-track:b1ea6cd521178616b635fdbf17f2f704237fe11ac4a9b240900afb48d979255d` |
| 25 | `theorem` | [sourceCorrelation_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-even--4791789c4b943a487b2b4f4a.md) | 268 | `result-track:4791789c4b943a487b2b4f4a67c5c8ef1a417f98a8f451a51caf8292f243358d` |
| 26 | `theorem` | [sourceCorrelation_seams_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/sourcecorrelation-seams-contdiffat--b07e49b92dc8adbd2b7f4ac8.md) | 278 | `result-track:b07e49b92dc8adbd2b7f4ac8751b16a0938cfaa89330268e71a60a338f57148a` |
| 27 | `theorem` | [correlation_certificate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variantbd70e75b31e769c10ed141d65337a8e5a3fa1c1e39e6888f8886a029047de54a.lean/declarations/correlation-certificate--fca78690469acc5e07ec7fd8.md) | 287 | `result-track:fca78690469acc5e07ec7fd823754901f8e5e83d246fb31e2ab5c1f1f24cdbeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
