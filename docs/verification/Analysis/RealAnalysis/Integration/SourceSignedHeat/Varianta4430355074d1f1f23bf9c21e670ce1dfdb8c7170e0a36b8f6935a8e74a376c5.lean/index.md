# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSignedHeat.Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8411695f30cbf8b66b8854b856c711e1b254b2ae",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8411695f30cbf8b66b8854b856c711e1b254b2ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCompensatedFourier` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheat--1288f4f5d4b84526ee5c418a.md) | 31 | `declaration-track:1288f4f5d4b84526ee5c418ab6e87363d7c6cb305e741662916dbfe18adc27fc` |
| 2 | `def` | [cubicHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/cubicheat--2081b8e5842d0aeefa5d3d78.md) | 35 | `declaration-track:2081b8e5842d0aeefa5d3d785e6511afcb632fe2688338ff472cb682a88c9cb7` |
| 3 | `def` | [signedHeatRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheatremainder--00b8c799b7e45f2dfc6b9077.md) | 39 | `declaration-track:00b8c799b7e45f2dfc6b907718acf0e2f1c147f15f5854ae848cf71fb6bd8c3a` |
| 4 | `theorem` | [heatPower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/heatpower-bound--0852cd916a0be155bb238d94.md) | 42 | `result-track:0852cd916a0be155bb238d94aa8c30527cd8610b804d5f6a7642c3c959ef2a85` |
| 5 | `theorem` | [heatPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/heatpower-integrable--0e5659adfc8921d3a3777d2a.md) | 59 | `result-track:0e5659adfc8921d3a3777d2a71492ef6ab97957b479b197e07cce841b4af03bf` |
| 6 | `theorem` | [signedHeat_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheat-integrable--fdc708cd800bf67e6bf44667.md) | 67 | `result-track:fdc708cd800bf67e6bf44667d4804274d661b67eee4f14a07ffff05285608073` |
| 7 | `theorem` | [cubicHeat_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/cubicheat-integrable--520af80a66fe7f9beb492dbd.md) | 72 | `result-track:520af80a66fe7f9beb492dbdcaac23904c3f802d8281c40313d92dd81823b15b` |
| 8 | `theorem` | [abs_time_local](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/abs-time-local--dd8de7ca60f047c15b119062.md) | 77 | `result-track:dd8de7ca60f047c15b119062ca1ddc72713dda0ff9cb66861bbd89f62eed93a7` |
| 9 | `theorem` | [signedHeat_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheat-hasderivat--0a1bf59f90b22ea7d9ec0a14.md) | 83 | `result-track:0a1bf59f90b22ea7d9ec0a141af34b682065e6fecb5103720d35d49499848b58` |
| 10 | `theorem` | [cubicHeat_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/cubicheat-continuouson--c6f99efe9ce6da6ff939292e.md) | 104 | `result-track:c6f99efe9ce6da6ff939292eece85262d0c65561258159816dd0b1a1b3d838a2` |
| 11 | `theorem` | [signedHeat_decomposition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheat-decomposition--e7626d21fdd341f358705e90.md) | 117 | `result-track:e7626d21fdd341f358705e9021245693a6bbf715d807925028fe0d57ef2f2561` |
| 12 | `def` | [terminalCap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/terminalcap--a30fc5bc6aa8655ef0767bbd.md) | 132 | `declaration-track:a30fc5bc6aa8655ef0767bbdcaa90dbce4aca3ebf0d12b6f7b5e7d936de4eb99` |
| 13 | `theorem` | [gaussian_abs_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/gaussian-abs-bound--e3b0cdd422be4349dc1a4922.md) | 134 | `result-track:e3b0cdd422be4349dc1a4922c9da38f3b6fa22b263789fba0b99e6101710f8ac` |
| 14 | `theorem` | [signedHeat_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheat-terminal-bound--d895a216f2c25181083e3afb.md) | 157 | `result-track:d895a216f2c25181083e3afbf5434055aab4b1547d9bc9e25daff087a97389df` |
| 15 | `theorem` | [signedHeat_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/signedheat-neg--23173388ad7d244c39af75e9.md) | 167 | `result-track:23173388ad7d244c39af75e9caba02ce8f6343a545bc660551d177c47e3bcf7d` |
| 16 | `theorem` | [evenHeat_neg_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/evenheat-neg-eq--205b7c32e2c48ba884aab513.md) | 172 | `result-track:205b7c32e2c48ba884aab513a58b907062137ad4c500c2438c1e5da9e2d01d1a` |
| 17 | `def` | [sourceProbabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourceprobabilitymeasure--d3473f0871f4d3326b503ef8.md) | 183 | `declaration-track:d3473f0871f4d3326b503ef8dc1b106389290415efe9d21c108c93c58f3bf77f` |
| 18 | `theorem` | [sourceProbabilityMeasure_isProbability](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourceprobabilitymeasure-isprobability--1502b2a472a46a15772dd643.md) | 186 | `result-track:1502b2a472a46a15772dd6433b0e9b2de1d6267ef7a7734196789634403a5286` |
| 19 | `theorem` | [sourceProbabilityMeasure_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourceprobabilitymeasure-integral--3d3be5280476c12d4c404123.md) | 201 | `result-track:3d3be5280476c12d4c404123022beac4b0ae9e1f2bbea2a8de9e993f500de0f1` |
| 20 | `def` | [sourceSymbolBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcesymbolbound--c3cf5069bf2d0f4f7a8462bf.md) | 213 | `declaration-track:c3cf5069bf2d0f4f7a8462bf2e081f0c914b7262565bbe262e038c32d2f84b66` |
| 21 | `theorem` | [sourceSymbolBound_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcesymbolbound-nonneg--c909b3b8d2d7519cb87b64ee.md) | 216 | `result-track:c909b3b8d2d7519cb87b64ee2bb48602f8835701b77ae58593666083e3a81b33` |
| 22 | `theorem` | [compensatedFourierSymbol_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/compensatedfouriersymbol-abs-le--9b91df1143be71a0765ca89f.md) | 219 | `result-track:9b91df1143be71a0765ca89f1226e2bae025923d955015b2f5502bfdf762f161` |
| 23 | `theorem` | [compensatedFourierSymbol_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/compensatedfouriersymbol-measurable--30b0c1608f306e0e1b5e3e45.md) | 228 | `result-track:30b0c1608f306e0e1b5e3e457af93bc51491c0f07228f5288a6839d70f09d0af` |
| 24 | `def` | [sourceSignedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcesignedheat--a6d792119005db1ef04e0c11.md) | 234 | `declaration-track:a6d792119005db1ef04e0c110a17bee0729305a53fce364402494b95fbafb579` |
| 25 | `def` | [sourceCubicHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcecubicheat--3835f9cdcee8ff16f1260dcf.md) | 238 | `declaration-track:3835f9cdcee8ff16f1260dcf54c6c482eb3d6e58adda498b530a037de1b2fa5c` |
| 26 | `def` | [sourceHeatRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourceheatremainder--1a8266691b335f4ce3f4d796.md) | 242 | `declaration-track:1a8266691b335f4ce3f4d79634d4119a506ead6328852a985bf1d1e35b03262f` |
| 27 | `theorem` | [sourceSignedHeat_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcesignedheat-zero--a18679b9a98cea87a4b7d069.md) | 246 | `result-track:a18679b9a98cea87a4b7d0695384638c071b41ee8329ab0a1e56169b77526f35` |
| 28 | `theorem` | [sourceSignedHeat_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcesignedheat-hasderivat--17bba6f01cea05992c59bbac.md) | 253 | `result-track:17bba6f01cea05992c59bbac29e2f9fadc4d9be547b6ccbad50dd345b3b81a97` |
| 29 | `theorem` | [compensatedSourceSum_eq_signedHeat_add_remainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/compensatedsourcesum-eq-signedheat-add-remainder--adcea30eafeb462c74d540fc.md) | 260 | `result-track:adcea30eafeb462c74d540fc59a9c62cb74d034566a259152577526c6032b4a7` |
| 30 | `theorem` | [sourceSignedHeat_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/sourcesignedheat-terminal-bound--cf0369966d35734d743fe006.md) | 269 | `result-track:cf0369966d35734d743fe00660a6f1a1c1236e673b6d81da1fbf4b788e0576b1` |
| 31 | `def` | [UniformSignedHeatRemainderUpperBound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/uniformsignedheatremainderupperbound--fc7927e85b2909074d301b55.md) | 275 | `declaration-track:fc7927e85b2909074d301b55a8c6c47290f55098e525dc360f8775beb87ed0f4` |
| 32 | `theorem` | [compensated_tail_of_uniform_signedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/compensated-tail-of-uniform-signedheat--7289234057dbd6286fb62d5a.md) | 280 | `result-track:7289234057dbd6286fb62d5acd75c62e022ae7b3f090a63f49a047c6a308ee5b` |
| 33 | `theorem` | [uniform_signedHeat_of_compensated_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/uniform-signedheat-of-compensated-tail--d9bea35ea7e5773c8b95f91b.md) | 292 | `result-track:d9bea35ea7e5773c8b95f91b0c6bbc01bf56895c61fe3a1d8bd3f390715004da` |
| 34 | `theorem` | [uniform_signedHeat_iff_compensated_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/uniform-signedheat-iff-compensated-tail--4c8e2594bcc5a7cc3f95dc6c.md) | 303 | `result-track:4c8e2594bcc5a7cc3f95dc6ca1676f48255e5a96b9b984e236165e2bacee030e` |
| 35 | `theorem` | [estimate_of_uniform_signedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/declarations/estimate-of-uniform-signedheat--f31791e6e28699d7282c152e.md) | 309 | `result-track:f31791e6e28699d7282c152e2ee471313be42f6b611ea1626061d0e1f249d5b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
