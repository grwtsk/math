# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusPerronCombined.Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb9e8c79588b6d6b5878a391564e142feac31fb7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb9e8c79588b6d6b5878a391564e142feac31fb7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/kernelintegrand-integrable-ioi-zero--b85844d23a959a8086d3eb11.md) | 31 | `result-track:b85844d23a959a8086d3eb11a3687acdc29707cb00144432024533ea60c7eb61` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/integral-first-moment--ff4180267f87ed3738a8cf9b.md) | 45 | `result-track:ff4180267f87ed3738a8cf9b0d307267bae9ae69ac2bdcfc11dcaec84caf99a3` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dampedramp--01f9032ce38ba9cf8a6a6c8c.md) | 67 | `declaration-track:01f9032ce38ba9cf8a6a6c8c1cae71845adcf52cd2c44a59a389439e2d700e99` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dampedramp-continuous--fee8df96227f4409b122284f.md) | 71 | `result-track:fee8df96227f4409b122284fa1b5e4a2e4d9280d4b80435e1df50c1bb849af6f` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dampedramp-eq-indicator--7f938143e153c5d5594a2e92.md) | 76 | `result-track:7f938143e153c5d5594a2e92ea91de6ad4a765ea5afb4b94944b4ee16c35afe1` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dampedramp-integrable--58e241b8ffc81dae2f83cb1f.md) | 84 | `result-track:58e241b8ffc81dae2f83cb1f14e1af84cf594112f50273bd830e0a4a217052b9` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dampedramp-fourier--419a6cbce8799d135c6c9422.md) | 89 | `result-track:419a6cbce8799d135c6c94222a7c2e482685ae130c455a2fe2f39f13d856d3bc` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/reciprocal-square-integrable--041b2805406720c2d9fc0730.md) | 108 | `result-track:041b2805406720c2d9fc073030e57e8d2a616d41fd1ea9577002c4bd8fbd621f` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dampedramp-fourier-integrable--988de7151207ab0aaabe8ad8.md) | 122 | `result-track:988de7151207ab0aaabe8ad86ac6e7603ed3e445ad32aac63b91abf8c0a2fb09` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronintegrand--66cd252ceeeaf5587e73cc8c.md) | 134 | `declaration-track:66cd252ceeeaf5587e73cc8c8cb1e32beb32e81c384a9c89dd99c3d494b2c4c9` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronintegrand-integrable--bae14dda7db646bc1b27f8a0.md) | 139 | `result-track:bae14dda7db646bc1b27f8a0b724f27d215c668671f64373d617669236c71555` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/vertical-ramp-inversion--67f125ffebf2c1288f08ab21.md) | 152 | `result-track:67f125ffebf2c1288f08ab2121a671cbe9434c743f5e49b31bcd315b43436e0d` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/elementary-perron-kernel--1d4ddcf4c054904b6ef2ef1a.md) | 178 | `result-track:1d4ddcf4c054904b6ef2ef1a06207dfcd307a1d01115a3bade6d5314ae4cd02a` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/elementary-perron-endpoint--1e1e4dfbe03dd53c835e866e.md) | 201 | `result-track:1e1e4dfbe03dd53c835e866e4de7f0c1a1a3e5e5f99b8fe32cb0ede73d5bc384` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/elementary-perron-ratio--832982f3b7580a00b158424b.md) | 206 | `result-track:832982f3b7580a00b158424b686d4513d9b218cf229f4758a0ff3be0bf0aea58` |
| 16 | `def` | [dirichletNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dirichletnumerator--b7aba91b96ccceaee850fae6.md) | 232 | `declaration-track:b7aba91b96ccceaee850fae6504574fc99ca027f59948fc7fead6b38ed002253` |
| 17 | `def` | [correctedNumerator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctednumerator--9d474db53d715c7f2a992247.md) | 237 | `declaration-track:9d474db53d715c7f2a992247302dcee050352250d02969ade7e287afe62e6d50` |
| 18 | `def` | [logNormalization](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/lognormalization--f360d080c899872d7e45e0fa.md) | 242 | `declaration-track:f360d080c899872d7e45e0fafea3db33ab8739e44d9c3bddaa7e2d4278af9ded` |
| 19 | `theorem` | [exponential_at_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/exponential-at-half--6029206476acb928946873d3.md) | 247 | `result-track:6029206476acb928946873d32c2d002432b2e18842af8db6514d6993476cc76e` |
| 20 | `theorem` | [dirichletNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/dirichletnumerator-half--de53b7d0655f6710acb512df.md) | 257 | `result-track:de53b7d0655f6710acb512df4ee190e2f5801c007c76ccc9bf8a99e0a45bb981` |
| 21 | `theorem` | [correctedNumerator_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctednumerator-half--53ccaa1bc8b601cdad00ba1a.md) | 268 | `result-track:53ccaa1bc8b601cdad00ba1ac1c456eb2697fa239f45b71a3e4c48a02ed567d7` |
| 22 | `theorem` | [correctedNumerator_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctednumerator-differentiable--33c28c07aeb3532758d37795.md) | 273 | `result-track:33c28c07aeb3532758d37795f1a850278cc975c5a7619589a1616bf18e3db722` |
| 23 | `theorem` | [correctedNumerator_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctednumerator-hasderivat--d73ba39479840ecb228fa115.md) | 278 | `result-track:d73ba39479840ecb228fa115b06c8a9eb43f59ee3523470c8db986cd3ecc2351` |
| 24 | `theorem` | [logNormalization_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/lognormalization-eq--c3d178f43aeb27bc3abc10cc.md) | 297 | `result-track:c3d178f43aeb27bc3abc10cc01f06a3a65bb7986e04058cc4272b54dc0049c70` |
| 25 | `theorem` | [correctedNumerator_hasDerivAt_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctednumerator-hasderivat-half--1af11f093a77d81736961f93.md) | 313 | `result-track:1af11f093a77d81736961f93f2b10820855340fb98db1f8c14d9aa7f21beb683` |
| 26 | `def` | [correctedQuotient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctedquotient--adadf5a7b4043b2c2533943e.md) | 332 | `declaration-track:adadf5a7b4043b2c2533943e6aaa8b83e4ad70aa5626c9bdcfc9b7c1c06986d1` |
| 27 | `theorem` | [correctedQuotient_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctedquotient-of-ne--f6cb136f3d8fae29183315ca.md) | 335 | `result-track:f6cb136f3d8fae29183315ca6d59045b2122fb2fa3cc6cd839c15cf919550b17` |
| 28 | `theorem` | [correctedNumerator_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctednumerator-factor--25389761258fa2b32c5b9137.md) | 341 | `result-track:25389761258fa2b32c5b91375f9a6a2f1ab058d0e0f90df6af62f1f154dfa187` |
| 29 | `theorem` | [correctedQuotient_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctedquotient-differentiable--a52642c789662a8931226ede.md) | 347 | `result-track:a52642c789662a8931226ede0cabb8b42b90eaf98635977fa3d5ac27dd8872f5` |
| 30 | `theorem` | [correctedQuotient_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctedquotient-half--35220c5191111eab048562de.md) | 353 | `result-track:35220c5191111eab048562de1fc6fc7bfa10026009ec067232d079625410dc6d` |
| 31 | `theorem` | [correctedQuotient_tendsto_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/correctedquotient-tendsto-half--79f94a95dde5ff2793bc7c43.md) | 359 | `result-track:79f94a95dde5ff2793bc7c43d7ffc8a547bf6e69649039dc34c41532c7f393c7` |
| 32 | `theorem` | [mobiusDirichlet_reciprocal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/mobiusdirichlet-reciprocal--a0defb11328cd8bc47cdaa2a.md) | 389 | `result-track:a0defb11328cd8bc47cdaa2acf042995120545687515bcb99a75058e6faf7c6d` |
| 33 | `def` | [perronTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronterm--988b5efbfdb0dbb72cfd2020.md) | 398 | `declaration-track:988b5efbfdb0dbb72cfd2020835af233cbb6cf4430b481ae88787b5f71af8c04` |
| 34 | `theorem` | [perronTerm_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronterm-norm--52b6b33663e5010982fcb12d.md) | 403 | `result-track:52b6b33663e5010982fcb12d10162db36f5e8b2983cc96f477b4095b2c9513ca` |
| 35 | `theorem` | [perronTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronterm-integrable--7709c680b23e6611a4ae3bc3.md) | 413 | `result-track:7709c680b23e6611a4ae3bc3580e2f072f86e806b12672b9385b67c6f927251c` |
| 36 | `theorem` | [perronTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronterm-norm-integrals-summable--2010f4f54fcae0652325e122.md) | 423 | `result-track:2010f4f54fcae0652325e1228bfb6fdccb5fa0ef18ac851d0fd34981a5bb4345` |
| 37 | `theorem` | [perronTerm_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronterm-tsum--5323ddfd450882f40dc22e41.md) | 432 | `result-track:5323ddfd450882f40dc22e417174ed25f0a0986221c301b38e4606453cff3116` |
| 38 | `theorem` | [perronTerm_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant003979e3f27b8d49eca6b7e99c26f56a37bca0137d558efb77af02ddcc03fb16.lean/declarations/perronterm-ratio--2995d703dcd5d698b70376c3.md) | 446 | `result-track:2995d703dcd5d698b70376c37c3ff2b68a417edcb5711db327f20c02e90319bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
