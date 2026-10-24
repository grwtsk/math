# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative08.Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49677c9e16662b4a1d5740e5207fd68552a304f1",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49677c9e16662b4a1d5740e5207fd68552a304f1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean.json)

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
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realrampantiderivative--566ad5bd6386380b99f7a55d.md) | 29 | `declaration-track:566ad5bd6386380b99f7a55dc09e777287b63f923e534ef3942d2cf2c633f06a` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realrampantiderivative-hasderivat--a39fb7f55d80ca4cf044d5ad.md) | 32 | `result-track:a39fb7f55d80ca4cf044d5adab524f478e673a1dc38b3a01ef894481926385f9` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realrampantiderivative-tendsto--e58090582b88a25d26c98401.md) | 42 | `result-track:e58090582b88a25d26c98401514336f358e82d4a9e66d07b9708ed6c5f60f3c3` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realramp-tail-integrable--acf07945a0e1acdf9903788c.md) | 56 | `result-track:acf07945a0e1acdf9903788c588a3a25bcc47fb6cdb484a1d3a052d1327c1887` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realramp-tail-integral--cd4dae753baff0b507a0a51d.md) | 64 | `result-track:cd4dae753baff0b507a0a51d103590c70d8ec1daa97a4a204d5e57961ac40a1e` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/zeroon-lower-integrable--627b4ea19254c6b41c289b53.md) | 71 | `result-track:627b4ea19254c6b41c289b5318ff15a6b7c79dbaad00aa5e5a031579f95412d8` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realramp-integrable--fa8018d8dfec47162abaaf5d.md) | 77 | `result-track:fa8018d8dfec47162abaaf5d186890110bcc9092b95860e34877a7f38fc5e1a2` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/realramp-integral--f6f52d14b1636710b91ef620.md) | 87 | `result-track:f6f52d14b1636710b91ef620b57219ffc32321edb495c2b45843d4ce7d21bf41` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/complexramp-norm--feffca4ba0b279b153b1f38e.md) | 105 | `result-track:feffca4ba0b279b153b1f38ea5b9c12a2cef9c14bf488fd36d7e241861fd02db` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualsinglerieszramp-integrable--2afd839e3b9afa9597868227.md) | 114 | `result-track:2afd839e3b9afa959786822796c535ab3c5ebff821dd1e8e39f135cf8d8fcc21` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualsinglerieszramp-integral-norm--7c67458ef372b38551e8331f.md) | 124 | `result-track:7c67458ef372b38551e8331fe080e1265fcbba1a48fedd00eb59cf82813317ff` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/complexrampantiderivative--7621b968ec258fea1587e920.md) | 130 | `declaration-track:7621b968ec258fea1587e9206eb7e1e507cdb2fbe109cf44ff9816ee6e3ce30b` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/complexrampantiderivative-hasderivat--9cd6aa4d05a8f1cdb916125f.md) | 133 | `result-track:9cd6aa4d05a8f1cdb916125f98af3c618a652d6d1d9e23a446b68cf3da57ae05` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/complex-exp-monomial-zero--ecbbe27bf10cadfa9fe9c7d5.md) | 149 | `result-track:ecbbe27bf10cadfa9fe9c7d50da5dd0ef62e0eb31699b9b1ccaddc08e64fb26e` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/complexrampantiderivative-tendsto--d4d615843aa5fcc1f068f4db.md) | 163 | `result-track:d4d615843aa5fcc1f068f4db7ce244a8e9163a6c3b2373f16bd2c331af558461` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualsinglerieszramp-integral--c1791fd59fbcc75775613e7d.md) | 177 | `result-track:c1791fd59fbcc75775613e7d52a223e5a740320f7325b9795469298c7fd4d172` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatom--952b6e73db3ac343c45f82a9.md) | 210 | `declaration-track:952b6e73db3ac343c45f82a953aacd09309feca3be7babc95bf834ec1d1922bc` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualmangoldtrieszlaplace--fae4fec02d558d859fb60541.md) | 215 | `declaration-track:fae4fec02d558d859fb6054110a671ebabedd20f6a6d39e77575422080171b97` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/atom-factor--a4aff7f2251b0e12c811be25.md) | 219 | `result-track:a4aff7f2251b0e12c811be25a55c66b716cc288f67b3e312f93d4cc38696003f` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatom-integrable--980c0b06f16f4d777d433308.md) | 228 | `result-track:980c0b06f16f4d777d433308b10e801a371b827eb10791ab2eaa52ceaee865d8` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatom-integral-norm--b8d7bc8dcd0fc8ed565f881a.md) | 247 | `result-track:b8d7bc8dcd0fc8ed565f881a8272bf5d6242979c5f4bb4e809cca22c3c3f8e1e` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--7ef7c2f966d16602d8fc1d39.md) | 282 | `result-track:7ef7c2f966d16602d8fc1d39683f3b7e285882e784c153a1f381656e655b83be` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatoms-tsum--e0a587446a49cec5ada34a62.md) | 293 | `result-track:e0a587446a49cec5ada34a62295e43ba0dd6d4dfdf1cdb227e1ca44eb9d6cbf6` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszprimitive-continuous--59f98990131a39befb9e6e00.md) | 318 | `result-track:59f98990131a39befb9e6e000d670096071724eaeff51f05aff426e4d4abd3d5` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--7a8107be2367e9e2da7fa11a.md) | 337 | `result-track:7a8107be2367e9e2da7fa11aa263f5298635446d055c685fbcee47ddd5336552` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatoms-integral-tsum--65ab729a49eb5846a63c684c.md) | 367 | `result-track:65ab729a49eb5846a63c684cbb0909d629c101b10f1afe1d0435454762dda9bf` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszlaplaceatom-integral--c3f1c22cff452996caf4d438.md) | 375 | `result-track:c3f1c22cff452996caf4d438ba3b6a9864edbff95a5d3082354079b204d966a7` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/continuousramp-weight-eq--5f41857f2be85373252690b7.md) | 400 | `result-track:5f41857f2be85373252690b76692b2ecb2bf1e04539e92ea3567fb0d1b299cd8` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszcontinuousramp-laplace-integrable--5814d96c9651c36f833a150c.md) | 412 | `result-track:5814d96c9651c36f833a150c6c17aa1dbd9162d4cfb6fbc9e91e81d05583b137` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualrieszcontinuousramp-laplace-integral--72ca9419662845a5759fd24d.md) | 429 | `result-track:72ca9419662845a5759fd24dbe1ee2c8f259042f25683e71c0f4eadb24b58544` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualh-weight-eq-sum-sub--7b26741e7998355e574df2f7.md) | 468 | `result-track:7b26741e7998355e574df2f78a0d3562a3ddd34fbf8eadd05a9195ab84fa95bf` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualmangoldtrieszlaplace-integrable--609db98429e1e69673135bbc.md) | 477 | `result-track:609db98429e1e69673135bbc06d4ce236bbedc0b9dbe1ae54b21dd1254944366` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--06d84072b3621d9e05d36eee.md) | 485 | `result-track:06d84072b3621d9e05d36eee919f977e9776a47c32dc61091cbf3f033da4114a` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative08/Variant3d80dec8208115ee19f3529a6e4107bc8b3be482f4c5118d4e2b9882c79cf893.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--ea8fb145f3696b07c0c0e4d9.md) | 500 | `result-track:ea8fb145f3696b07c0c0e4d92f9a57f97ee98c2682f0ec17c01302e5d4c82984` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
