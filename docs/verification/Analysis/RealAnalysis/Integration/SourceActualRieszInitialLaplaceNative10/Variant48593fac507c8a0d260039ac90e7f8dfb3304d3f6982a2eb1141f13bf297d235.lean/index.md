# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative10.Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a52953f10c02a96f0ebd6dd60ce47456556edab",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a52953f10c02a96f0ebd6dd60ce47456556edab`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean.json)

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
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realrampantiderivative--e6d1849e6750ee8a070574c6.md) | 21 | `declaration-track:e6d1849e6750ee8a070574c6b92287c4612993ddc1982d24682bb8337f2d9032` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realrampantiderivative-hasderivat--4b27468a418fb14825a13821.md) | 24 | `result-track:4b27468a418fb14825a138211baff1cb85ec4790738705766e34c3e8be49da68` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realrampantiderivative-tendsto--6df08c07ea0e100f39392648.md) | 34 | `result-track:6df08c07ea0e100f39392648462e920c142a1bb5f581b7552b37c47fb36b92b2` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realramp-tail-integrable--dbe74469bbaa81290e02755b.md) | 48 | `result-track:dbe74469bbaa81290e02755bac931d7b91711500423b36cc5a18e058d921005d` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realramp-tail-integral--56151d901cfef4c66b10ba19.md) | 56 | `result-track:56151d901cfef4c66b10ba194026e07480b4e93ff3e5575a639012b56f0048c4` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/zeroon-lower-integrable--aceb229cffda5caf0767e60d.md) | 63 | `result-track:aceb229cffda5caf0767e60dd2e9b939990bb39c2f4facf8d08f0d8b5b348370` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realramp-integrable--086ce98dcd719d2e75935497.md) | 69 | `result-track:086ce98dcd719d2e75935497d0049b0dfc84d461b30348a8eec92221e0eb67a3` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/realramp-integral--1cd93cbfa2a095663a0fe944.md) | 79 | `result-track:1cd93cbfa2a095663a0fe944a4894979c13152c753701a417266fb783a2d6163` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/complexramp-norm--e609d3b583c413fe80de931d.md) | 97 | `result-track:e609d3b583c413fe80de931d8ee07040c8398cbf5433a126a530db4e168a2bdf` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualsinglerieszramp-integrable--70f33b6dc4d1a50d6ba729ba.md) | 106 | `result-track:70f33b6dc4d1a50d6ba729ba1c6aace9723b0732c8f1bd46ccb5522f87b5e423` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualsinglerieszramp-integral-norm--a984862d9a49efa006fdd570.md) | 116 | `result-track:a984862d9a49efa006fdd570415616070a46f1a21a58dd26d9ccbc50209618ee` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/complexrampantiderivative--ccc06cda8a7c81266f46ad45.md) | 122 | `declaration-track:ccc06cda8a7c81266f46ad45014f7aa76a28a1753204cb317d34a2dd00c997b4` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/complexrampantiderivative-hasderivat--225c6658765f12aba28b36be.md) | 125 | `result-track:225c6658765f12aba28b36be9d256033db54a351bf00a4cfccca716a3f47acff` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/complex-exp-monomial-zero--4d4c9756cc29cabb5d686b40.md) | 141 | `result-track:4d4c9756cc29cabb5d686b403f0d9f93816414046a6c87e3351d125405f9360a` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/complexrampantiderivative-tendsto--c1fc365d7079d158091dfe1c.md) | 155 | `result-track:c1fc365d7079d158091dfe1c63864fb02f6e5db0448cb0a24c86dcfbc9452df8` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualsinglerieszramp-integral--9c63ec642bc8a5638de97e90.md) | 169 | `result-track:9c63ec642bc8a5638de97e905e4981132daf4514c2f7b3220172af14ea92d4ea` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatom--fdbac2a082c5eeba13f89607.md) | 202 | `declaration-track:fdbac2a082c5eeba13f896078f04b128f91593adfefab9371f72e382c101ea51` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualmangoldtrieszlaplace--fa5f3fc9785e875c1f8878ce.md) | 207 | `declaration-track:fa5f3fc9785e875c1f8878ce2507c49ddbf00ba6b6fcc5c6f805cdf40dfa1f12` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/atom-factor--6ea48b02c6ccc2e1a0d6057b.md) | 211 | `result-track:6ea48b02c6ccc2e1a0d6057b6a091f30cc4a32df029833b073de2d9e6d15a818` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatom-integrable--8ba4451fac37deff2eea238c.md) | 220 | `result-track:8ba4451fac37deff2eea238c89149c3b69486287eeb81434ded7d20dbba84ae3` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatom-integral-norm--23574afe762b37771c7c4110.md) | 239 | `result-track:23574afe762b37771c7c4110408f6fe1a8b097a981161b34c082c9d98bb8b934` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--eb73039af6f4ec37f242144a.md) | 274 | `result-track:eb73039af6f4ec37f242144a2cc1e279f9548af49eb01c945dbc0134b89093a2` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatoms-tsum--68fd1d79b1f901524740f475.md) | 285 | `result-track:68fd1d79b1f901524740f475251bd9cdea5d1a5e5ef9e227b80b178ebd8b8e12` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszprimitive-continuous--a57cdf7e8975efb511733a5d.md) | 310 | `result-track:a57cdf7e8975efb511733a5d2949585719ef800cfbbcfbfeaa56078347029d36` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--b51c58fe75a1ac92431dd3c4.md) | 329 | `result-track:b51c58fe75a1ac92431dd3c43b7f3f40c804c2eff3da5c26e2b9a92714150e01` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatoms-integral-tsum--84e85b14ab266c5b28c3268e.md) | 359 | `result-track:84e85b14ab266c5b28c3268e6c855c037b60ced9f8cf533542db6104639b1491` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszlaplaceatom-integral--b4c5a4dacf2fb0366c4fec8a.md) | 367 | `result-track:b4c5a4dacf2fb0366c4fec8aa7a17190ab1480da0e3b3b716dc1d78f11dcc39e` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/continuousramp-weight-eq--8be3f7e96a52dfe77e55ba0f.md) | 392 | `result-track:8be3f7e96a52dfe77e55ba0fc3bf956b63c8d21b2cc38c401306f4c578fc4569` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszcontinuousramp-laplace-integrable--8f054fcaeee84ceccc2739c2.md) | 404 | `result-track:8f054fcaeee84ceccc2739c2fbea0060fdfbed7e9bf3288ceadf9f8a160238d7` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualrieszcontinuousramp-laplace-integral--d4f4c716842cef8bd8011ed7.md) | 421 | `result-track:d4f4c716842cef8bd8011ed7d5f23b0475a2b25485ea876b9f650387a066fa44` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualh-weight-eq-sum-sub--65d4daab7a0570bbc86a0d7e.md) | 466 | `result-track:65d4daab7a0570bbc86a0d7ed600c1968e5b11e1924fcaacc1880ca61415a853` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualmangoldtrieszlaplace-integrable--ffb21552b5ff8d1c069184eb.md) | 475 | `result-track:ffb21552b5ff8d1c069184eb413cd4f7519eb72defc85c54224e754b19a5ba23` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--456d4ebe4233038d9f4eaa78.md) | 483 | `result-track:456d4ebe4233038d9f4eaa7898d128313268c80e4aa2e2b3771a6891dc9f8ef6` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant48593fac507c8a0d260039ac90e7f8dfb3304d3f6982a2eb1141f13bf297d235.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--c41a8ce0f4d33476a790e051.md) | 498 | `result-track:c41a8ce0f4d33476a790e051dfae61d9047e8782632292a417646d91deea59ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
