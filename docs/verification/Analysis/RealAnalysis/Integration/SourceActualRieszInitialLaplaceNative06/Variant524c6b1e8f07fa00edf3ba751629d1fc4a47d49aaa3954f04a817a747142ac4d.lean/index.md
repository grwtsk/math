# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative06.Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88445f92cb289bbd0fae0706eb8c9c71f99bae3a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88445f92cb289bbd0fae0706eb8c9c71f99bae3a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean.json)

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
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realrampantiderivative--4c42975135f739d1dd394a9d.md) | 21 | `declaration-track:4c42975135f739d1dd394a9db6e08d3c89df6a3f2cf37f539637f91e53f803a2` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realrampantiderivative-hasderivat--74eb83dacb76a95eab8a7fc2.md) | 24 | `result-track:74eb83dacb76a95eab8a7fc2f916109b94af87fd6089c6cba64698ffd74fff4b` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realrampantiderivative-tendsto--b4ab100465cb8e288e87ef80.md) | 34 | `result-track:b4ab100465cb8e288e87ef80c814260ddd4733512a3ae43624848f74a1a85ee0` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realramp-tail-integrable--f81a581df0bf1e4e1a69dafc.md) | 48 | `result-track:f81a581df0bf1e4e1a69dafcf4ddb52633b314ba7dc4614077367ca034572c01` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realramp-tail-integral--178521f56a83029276f3c7c4.md) | 56 | `result-track:178521f56a83029276f3c7c4e4adab30c5bce5354981ea93758cce41770248f8` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/zeroon-lower-integrable--5896c2173191df3bed38cb06.md) | 63 | `result-track:5896c2173191df3bed38cb06c6a4d6295ebe241bfb2bddff6c876e64a27386fe` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realramp-integrable--a11ded5eddef76472a368228.md) | 69 | `result-track:a11ded5eddef76472a368228bbfb09a80edd705c5b5e5d1d81e02f2601f98eb6` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/realramp-integral--8eff59594695874483539988.md) | 79 | `result-track:8eff595946958744835399883443eb2a18fb98eee8a67d10d52d843b3cb74d8c` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/complexramp-norm--fea82e31c2c896b37123a702.md) | 97 | `result-track:fea82e31c2c896b37123a702ade383e0cde479021c74af5555e9aa8c130c02e4` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualsinglerieszramp-integrable--5fe7df5f5401e345b9ffc09a.md) | 106 | `result-track:5fe7df5f5401e345b9ffc09a53aba155d7b3037687708f9d9bcf3b5d7de8c274` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualsinglerieszramp-integral-norm--a458e82c5c88f13f1d874b18.md) | 116 | `result-track:a458e82c5c88f13f1d874b1816c38aba239f24efe75dbf3386218bdd86cf1b7c` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/complexrampantiderivative--fe4419ba8138d1ab273bc472.md) | 122 | `declaration-track:fe4419ba8138d1ab273bc47293a77413db1c1c26e4c5fb30f559f33642c0a22f` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/complexrampantiderivative-hasderivat--35fc5d62b1b2b15d5300612f.md) | 125 | `result-track:35fc5d62b1b2b15d5300612f32b7751d07d37589105691bd65f9a51725e6cb3f` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/complex-exp-monomial-zero--3cc31edd4030d54df88f94f3.md) | 141 | `result-track:3cc31edd4030d54df88f94f348e6c67b4fe36dd4bed3c735b4c4b79b79345e7d` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/complexrampantiderivative-tendsto--66780a41be952ab4b3b2c042.md) | 155 | `result-track:66780a41be952ab4b3b2c042fcfcd1f700fc9c85ade02e03366bb03b93449a84` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualsinglerieszramp-integral--73e91c06b0493eb1a8c21941.md) | 169 | `result-track:73e91c06b0493eb1a8c219416a4e896e0b6138bcd768d7feef821dea36b7f6f1` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatom--57b04dbb990f0d4268461642.md) | 202 | `declaration-track:57b04dbb990f0d4268461642411ce175b865f916854315a92e2dd89fa0a4dc6e` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualmangoldtrieszlaplace--b5f3f349c2bee8319a18ff88.md) | 207 | `declaration-track:b5f3f349c2bee8319a18ff88546110ef602b192d6753f7c08d1d9c4667ce19cd` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/atom-factor--b917b086711ca4f2f32f32b5.md) | 211 | `result-track:b917b086711ca4f2f32f32b522002a1ec41ca376b89e1bd8842aefea7e711997` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatom-integrable--2aff4c7ddaf38a497153cb09.md) | 220 | `result-track:2aff4c7ddaf38a497153cb09e97562362573cb243fe3782234a829206a1f475a` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatom-integral-norm--fe16f29f3dc2b2933150ff12.md) | 238 | `result-track:fe16f29f3dc2b2933150ff12bbf2da4360918e444818a31148e49c7c9e661343` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--0fa97f3a80797d1194fb7d77.md) | 273 | `result-track:0fa97f3a80797d1194fb7d7761dc3afea5421410578162fb19613b0c8cb175e8` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatoms-tsum--bf48ab0bc77e74b0b4bab819.md) | 284 | `result-track:bf48ab0bc77e74b0b4bab819dd294f1f97bf87607dc24581d031623fab5d9a01` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszprimitive-continuous--ba3680d1eebe7babe386caaa.md) | 309 | `result-track:ba3680d1eebe7babe386caaabc5715c47c7b41ba5e7228134c22b5807b79577b` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--5e33394503ba53b089091e01.md) | 328 | `result-track:5e33394503ba53b089091e01be2af3cbf8872f548278c1fa5cb9fb1d1f0e0f9f` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatoms-integral-tsum--f6f195a514edd83aa62817c3.md) | 358 | `result-track:f6f195a514edd83aa62817c3869446b04c4ec322acfd126e03885a76241abb8b` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszlaplaceatom-integral--337919a20ee11eeea7c20d1b.md) | 366 | `result-track:337919a20ee11eeea7c20d1b2b2ba2b97c12a4fd6070de8f6b326cb1558b093f` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/continuousramp-weight-eq--b10cc7119b6578a3a8d4f7e6.md) | 391 | `result-track:b10cc7119b6578a3a8d4f7e67cdf7bd635748bb611939cff89fe5530fdf779eb` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszcontinuousramp-laplace-integrable--eadba8c773271a5d6738acd1.md) | 404 | `result-track:eadba8c773271a5d6738acd14285d700eea7ddffdb27f298b57173443d89d92e` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative06/Variant524c6b1e8f07fa00edf3ba751629d1fc4a47d49aaa3954f04a817a747142ac4d.lean/declarations/actualrieszcontinuousramp-laplace-integral--1cf1e6a340cc2ebed15d19ad.md) | 420 | `result-track:1cf1e6a340cc2ebed15d19ad79a1308782d34435a20620e5c5f7dcd9a7452baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
