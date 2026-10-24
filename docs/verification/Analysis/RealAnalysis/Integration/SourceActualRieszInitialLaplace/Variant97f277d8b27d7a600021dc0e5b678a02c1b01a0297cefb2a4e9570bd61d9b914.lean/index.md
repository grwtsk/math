# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplace.Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f7945d6aa1ae67becb6e503e2b25dec45fd1ee6",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f7945d6aa1ae67becb6e503e2b25dec45fd1ee6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realrampantiderivative--3bdbdfe12fc8f3b41acfb63e.md) | 29 | `declaration-track:3bdbdfe12fc8f3b41acfb63ed2e40d9be667485759a51efd5f180a49bdc4fd79` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realrampantiderivative-hasderivat--ef17fd30a3877c6add1c0c6b.md) | 32 | `result-track:ef17fd30a3877c6add1c0c6bf41d794f994b5369238c35440fea6d21aa773553` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realrampantiderivative-tendsto--afda8d1b8641d01c218b8005.md) | 42 | `result-track:afda8d1b8641d01c218b80055e1f302856685317d6b8b20f37ce3d2b9d2538f5` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realramp-tail-integrable--ce5e2d7bda2af040a295c4ea.md) | 56 | `result-track:ce5e2d7bda2af040a295c4eadab50b3a14ad5bf4087a6dd341c1be36f82db21f` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realramp-tail-integral--a0e1fd79ea43c5d9d10ac80c.md) | 64 | `result-track:a0e1fd79ea43c5d9d10ac80cb5afaece6d8f20b109a43e9e3ef84879cae2c283` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/zeroon-lower-integrable--ca312597a1b5e8d87b685b15.md) | 71 | `result-track:ca312597a1b5e8d87b685b15cf5939bb94143fffd3883df8b6670f99d198f4eb` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realramp-integrable--8d05ee2e49e5f355b3c40748.md) | 77 | `result-track:8d05ee2e49e5f355b3c4074891a657d6f4efecadf0f0c49a104e306062d2b50b` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/realramp-integral--7dfe59e904fd994491b20286.md) | 87 | `result-track:7dfe59e904fd994491b20286be74700ff21c355b6ee154e65f7f13cfea06c328` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/complexramp-norm--4d2fa550a9b4d26726d0da9c.md) | 105 | `result-track:4d2fa550a9b4d26726d0da9c271165d2f90ae43b8f37961ecfc6e8ed82138449` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualsinglerieszramp-integrable--144cdd39b19b19ce073a239f.md) | 114 | `result-track:144cdd39b19b19ce073a239f2104a596145f8fdceb13f2eac3121e726869b457` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualsinglerieszramp-integral-norm--0a8b8a56eb774ae15edbe9e1.md) | 124 | `result-track:0a8b8a56eb774ae15edbe9e1c4e5d9c9d62c7fc0eb37b706cecdfa61128b5895` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/complexrampantiderivative--a9c6712bd4407e04934ef282.md) | 130 | `declaration-track:a9c6712bd4407e04934ef2826cafceb496d2cdee36b0fff71f8ccf320894f4fd` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/complexrampantiderivative-hasderivat--b7e3ddb53d9d39d54e811133.md) | 133 | `result-track:b7e3ddb53d9d39d54e8111339ca058d9398f3c05cf3cb664e1ae403c467a3567` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/complex-exp-monomial-zero--dc0d0efcf51f3b27263933ea.md) | 149 | `result-track:dc0d0efcf51f3b27263933eaf399a6d3a633d3752a8720ce6193947edfa92a78` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/complexrampantiderivative-tendsto--ec802f0621b8b980105c83f7.md) | 163 | `result-track:ec802f0621b8b980105c83f78f2750b2b1813e3cfb6910cb1c29c2e674977490` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualsinglerieszramp-integral--86cf6f5e3145c04957050a64.md) | 177 | `result-track:86cf6f5e3145c04957050a64e925a2dc6dd1063d09d70541723b8e4a16f2eb4d` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatom--f09b75264980a44076d304ff.md) | 210 | `declaration-track:f09b75264980a44076d304ff0f7544f46f28ee793cc420a9b3425be02c855cf6` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualmangoldtrieszlaplace--e0f6bfe9d4cdf7affafb0a38.md) | 215 | `declaration-track:e0f6bfe9d4cdf7affafb0a38f0978a1acadd35c523241a6a64fe8fdc7136a4d0` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/atom-factor--0e893fc69eb5dea3feafcaaa.md) | 219 | `result-track:0e893fc69eb5dea3feafcaaa480085351ab59906ceb333488a9071448d7ec4cd` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatom-integrable--061d60c62c1473587f33af25.md) | 228 | `result-track:061d60c62c1473587f33af254cbc0c00c4882fa55fa1258917ab710dfc365f44` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatom-integral-norm--654d9b1e89a1ba014b2059b4.md) | 247 | `result-track:654d9b1e89a1ba014b2059b43f0238020e94644380ded5c484f7a7919c647595` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--a1ea3e1ba50123bb46beae71.md) | 282 | `result-track:a1ea3e1ba50123bb46beae71be198ff3e9f2548da5224d92cceb8d2bb990489b` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatoms-tsum--db5c597282031244feae8896.md) | 293 | `result-track:db5c597282031244feae88960d823b832b5bf1919074657bb418d2e82a551f63` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszprimitive-continuous--4e65d2fbb0e9892e6b114b8f.md) | 318 | `result-track:4e65d2fbb0e9892e6b114b8fabafc282a773311ffa109e9c149612f0af213a95` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--b824994b752189318c45d236.md) | 337 | `result-track:b824994b752189318c45d236849dbcbbf4feb631135b69ea051bbbf09f2f9c64` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatoms-integral-tsum--33537632f45aa476b7283366.md) | 367 | `result-track:33537632f45aa476b7283366815c33aaa9a5c164907e92f27a501eaf8ef476ed` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszlaplaceatom-integral--5391b1bc62b8c53829bb0b00.md) | 375 | `result-track:5391b1bc62b8c53829bb0b00f36128fbee00d9a1615e674e94695e0a1d4c3c55` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/continuousramp-weight-eq--13a8f4c2abc44b34c7fde0af.md) | 400 | `result-track:13a8f4c2abc44b34c7fde0af8f675675fd96866ed85640f0f3f7322acb04fb70` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszcontinuousramp-laplace-integrable--fd2ba689fc96146f018ee372.md) | 412 | `result-track:fd2ba689fc96146f018ee372383ea97d95b19a740958d13e357694a50aeecfa3` |
| 30 | `theorem` | [continuousRamp_scalar_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/continuousramp-scalar-identity--092f047602db83e7e2acac17.md) | 428 | `result-track:092f047602db83e7e2acac170335cfc0d47eca6d8621a53665d600e91df92c74` |
| 31 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualrieszcontinuousramp-laplace-integral--5a25d9fc187ae51430bd9d72.md) | 435 | `result-track:5a25d9fc187ae51430bd9d7282fbb765eaf705933120dca1be5169142edd2e39` |
| 32 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualh-weight-eq-sum-sub--6ed6115375135704ef84542f.md) | 474 | `result-track:6ed6115375135704ef84542f75c4151be09916682e74e388ecaea9def8e5a1c4` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualmangoldtrieszlaplace-integrable--740605e4bd0e4350bb5fcba2.md) | 483 | `result-track:740605e4bd0e4350bb5fcba2834800225b4ae02bf6f8778521af18cb8cb590ec` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--e9727c367967b41f1df38ddc.md) | 491 | `result-track:e9727c367967b41f1df38ddc8c6aa6a89d18e601ed1bc5c1d877de1f58fe9395` |
| 35 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variant97f277d8b27d7a600021dc0e5b678a02c1b01a0297cefb2a4e9570bd61d9b914.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--efec4222f053bbeb0c588d7b.md) | 506 | `result-track:efec4222f053bbeb0c588d7ba21e0c6c88bcece404518e22f6c5446cbdd3d00e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
