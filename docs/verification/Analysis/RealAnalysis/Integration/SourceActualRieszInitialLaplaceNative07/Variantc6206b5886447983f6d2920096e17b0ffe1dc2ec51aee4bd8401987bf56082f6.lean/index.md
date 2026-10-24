# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative07.Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e33ed8a1f090f80780a553c6fa3b8d00740f8790",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e33ed8a1f090f80780a553c6fa3b8d00740f8790`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realrampantiderivative--345ad7457d43654298b44feb.md) | 21 | `declaration-track:345ad7457d43654298b44feb7a257ac4f101f3529fdfef51cb7e3954b5d58d82` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realrampantiderivative-hasderivat--8617d2ccc79ca4703a668c88.md) | 24 | `result-track:8617d2ccc79ca4703a668c886df2dc94ff3f1a02a296351b50175bbb30ffd67b` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realrampantiderivative-tendsto--864117a5fa4866099d23f792.md) | 34 | `result-track:864117a5fa4866099d23f7926dd650b6176a4ec1414fde4731db40c48703e868` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realramp-tail-integrable--70ad89ad29213edaca2a449b.md) | 48 | `result-track:70ad89ad29213edaca2a449b08b1a606a7fff031831a778b7a6a8b19a7d811f5` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realramp-tail-integral--65c5550484f48553c1f6123f.md) | 56 | `result-track:65c5550484f48553c1f6123fe0444a23f7a495220f4426aae3d7dde8d0d4a584` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/zeroon-lower-integrable--5d28312d91b41d279c26d9df.md) | 63 | `result-track:5d28312d91b41d279c26d9df2fc01fd8c057483375a6f4b27bcde78aac6a0a39` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realramp-integrable--baf751cf1a43f36a4d47efc4.md) | 69 | `result-track:baf751cf1a43f36a4d47efc4b7df70f2fa5e179beada5c147b5d44bdb68f3381` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/realramp-integral--998413d37703f99c8dcde77b.md) | 79 | `result-track:998413d37703f99c8dcde77b4f0eacf9efb5965da1bf70d1aa42c54fc56b7600` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/complexramp-norm--20827c9db3274bfd5a30c769.md) | 97 | `result-track:20827c9db3274bfd5a30c769c9eaed336d5a6b69cc573f26ea0304b8e2129ed8` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualsinglerieszramp-integrable--257ad516133c24485575b56c.md) | 106 | `result-track:257ad516133c24485575b56c0c41b407617f793159f6beefda7c661c8b2ebcec` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualsinglerieszramp-integral-norm--2818904ff61aa2784a9d8d0c.md) | 116 | `result-track:2818904ff61aa2784a9d8d0c7d93e333176d7d522dc84daced0cf4f20089f0d2` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/complexrampantiderivative--0b478af44ede07c9e287928f.md) | 122 | `declaration-track:0b478af44ede07c9e287928f04426f38489ffbfbae48b788a4546d7e62096026` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/complexrampantiderivative-hasderivat--4741add4f331c9beb74076fc.md) | 125 | `result-track:4741add4f331c9beb74076fcc0130fd175c78d4ebf93ce3077a93fcc0c63864f` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/complex-exp-monomial-zero--9d3467a1d7cafecb23fff483.md) | 141 | `result-track:9d3467a1d7cafecb23fff48381190b93801766513a834cf92825a09f4cb30f86` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/complexrampantiderivative-tendsto--2bd7b62c7148607fb100730a.md) | 155 | `result-track:2bd7b62c7148607fb100730a17a8bfb98bf42e4e7be5ce7b3b71f8b1207f6eaf` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualsinglerieszramp-integral--0a35419ce6788fd6d14271b9.md) | 169 | `result-track:0a35419ce6788fd6d14271b993c79c64f20c1e0a2f9ae00dfd1a68a5e58dcb81` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatom--cd4b9564f4da471d19bdfc24.md) | 202 | `declaration-track:cd4b9564f4da471d19bdfc2471b2a4b28ed73825e5a70b37b929560ff081435d` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualmangoldtrieszlaplace--48c517ba7e514c46c7ff8679.md) | 207 | `declaration-track:48c517ba7e514c46c7ff8679b0a6c5db8a919bccf37d278932c56e2dd06b53cb` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/atom-factor--604d88ce6ef6c8f9224519ae.md) | 211 | `result-track:604d88ce6ef6c8f9224519aea4a91356525cdaad744fc06467fdb6d88194f2ca` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatom-integrable--29a75ecb78f4525095bc035e.md) | 220 | `result-track:29a75ecb78f4525095bc035e544c9cbf3c821c83311f61cc2dd7691ae06ed1dd` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatom-integral-norm--7390c579d9bf2289b8bba864.md) | 239 | `result-track:7390c579d9bf2289b8bba864873f5826ea796db83d0515055bba7bf526155273` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--243249cc24d99ad387dda6b5.md) | 274 | `result-track:243249cc24d99ad387dda6b52eca42583a0512f40c46958a545cc9f85a768919` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatoms-tsum--1117c86e430c95043537d9e9.md) | 285 | `result-track:1117c86e430c95043537d9e97351cb381f190b35b7a124f3e52d3972ae9f3603` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszprimitive-continuous--de4347a7c032d870a03d4c18.md) | 310 | `result-track:de4347a7c032d870a03d4c180b49e482220a5605aaeaaf20cd18ff5656429ee3` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--d877276ad9955051f981e842.md) | 329 | `result-track:d877276ad9955051f981e8429c20b76335c8d299ac93a2eed0ad65d19ad1efe4` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatoms-integral-tsum--0f27f640f256ce752a781c2f.md) | 359 | `result-track:0f27f640f256ce752a781c2fbf5e1cd295cf84388063f88050e28be84489e22b` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszlaplaceatom-integral--27ab763d7cf7728c7a9970ca.md) | 367 | `result-track:27ab763d7cf7728c7a9970cab55c220aaa05c83cb2c47478951f56a33f495c54` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/continuousramp-weight-eq--b666339dae54c2a9ef488242.md) | 392 | `result-track:b666339dae54c2a9ef48824211ffa3d6370b6b436e78cf5e29c35cbfd37d05ff` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszcontinuousramp-laplace-integrable--3757840c6172727b64db8942.md) | 404 | `result-track:3757840c6172727b64db89426a7cada29629c7b6c1d98708e3635ba2c397ac19` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualrieszcontinuousramp-laplace-integral--507369eb075cec72a87b8b82.md) | 421 | `result-track:507369eb075cec72a87b8b82a14cabbcef97409523f3416d63784b0d22926c35` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualh-weight-eq-sum-sub--4d96c20870989aa65d9bd3ff.md) | 458 | `result-track:4d96c20870989aa65d9bd3ff27188ab83554b37fb80ae4d89187751adeb0000f` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualmangoldtrieszlaplace-integrable--63e797e4db7b5339f80a389e.md) | 467 | `result-track:63e797e4db7b5339f80a389e4ce00ba9d4b27f7cd5186d57cb1a8ffc830391d1` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--964588096ab57e620984bbef.md) | 475 | `result-track:964588096ab57e620984bbefcef337cb55df732e0d3a0aa78f5bdb792109c2d9` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantc6206b5886447983f6d2920096e17b0ffe1dc2ec51aee4bd8401987bf56082f6.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--3795f90e7bc4e5324984f118.md) | 490 | `result-track:3795f90e7bc4e5324984f1186f9dab5b0be820e8f4edd8ada920fc9bcb9a98bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
