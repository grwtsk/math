# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMomentMeasureAudit.Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad60a5a9834db0333db0572a2085845103b9d80a",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad60a5a9834db0333db0572a2085845103b9d80a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/sourcemeasure--9173ff1886a2e388422b137c.md) | 38 | `declaration-track:9173ff1886a2e388422b137c4482fbd7aaafbbd1b7fec86454f8a913ad268f93` |
| 2 | `def` | [momentMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/momentmeasure--4a6762d04c91bce6fb865773.md) | 42 | `declaration-track:4a6762d04c91bce6fb86577322a1bc4cddc9df6972aa51f376ca48814942199c` |
| 3 | `def` | [moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment--69c42a37d36e51340e1c2881.md) | 46 | `declaration-track:69c42a37d36e51340e1c288187cacdd819469aaaed3f0ec7dc4c338d03322052` |
| 4 | `theorem` | [density_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/density-measurable--7e00342dca382ed27b96cf76.md) | 48 | `result-track:7e00342dca382ed27b96cf7631ac99d54c83f1c79877b87ed5de51d6cc4e1788` |
| 5 | `theorem` | [phi_nonnegative_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/phi-nonnegative-ae--a766a9273205d8d43d578b67.md) | 52 | `result-track:a766a9273205d8d43d578b677157bd56fff12d0374f7cdc3ea9616a3711737e3` |
| 6 | `theorem` | [source_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/source-power-integrable--597f67463936a9fded5ac6ac.md) | 58 | `result-track:597f67463936a9fded5ac6ac7f0d4476c0ea6327b6f4e6c7e4dbacd3422d73d2` |
| 7 | `theorem` | [sourceMeasure_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/sourcemeasure-power-integrable--4941a0f0ae2c2e2db1cdbe0a.md) | 66 | `result-track:4941a0f0ae2c2e2db1cdbe0a2840b93fddb3a6d101d64e1f8eb4dc97a881db3d` |
| 8 | `theorem` | [moment_power_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment-power-integrable--a4edff51a72cedf3f6c10922.md) | 75 | `result-track:a4edff51a72cedf3f6c109224368c612cf56a626cb57df87005534f48cfc4192` |
| 9 | `theorem` | [moment_eq_source_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment-eq-source-integral--77db8961c2ad608d37c7bcc3.md) | 84 | `result-track:77db8961c2ad608d37c7bcc3922a50abff09fee1c54fc51abcc9e5270cbbcbdb` |
| 10 | `theorem` | [moment_eq_factorial_mul_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment-eq-factorial-mul-thetatail--3452126981ba1f00b72b4804.md) | 96 | `result-track:3452126981ba1f00b72b480448bf92a12b66a691934347d39425938562cef871` |
| 11 | `theorem` | [moment_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment-positive--5c5a2eeeeae671c0d0d5a532.md) | 107 | `result-track:5c5a2eeeeae671c0d0d5a532c32033cccc73aacf1f2b2157b0be7dfaf800bf3b` |
| 12 | `theorem` | [moment_le_factorial_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment-le-factorial-bound--3d233e11944be758fe1aba27.md) | 112 | `result-track:3d233e11944be758fe1aba27b5d4027e7c61ea09bec45973aafd1ac3d8e06c40` |
| 13 | `theorem` | [momentMeasure_finite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/momentmeasure-finite--a317445a50176f5e5f4b8079.md) | 119 | `result-track:a317445a50176f5e5f4b8079652ee7ca10ffbb54591fce4683e9e739a197ecdf` |
| 14 | `theorem` | [momentMeasure_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/momentmeasure-ne-zero--ccc43af17cbe310b6af76c91.md) | 124 | `result-track:ccc43af17cbe310b6af76c91b74b91d348b739b97b22d897785881f2f8d4d67f` |
| 15 | `theorem` | [momentMeasure_nonnegative_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/momentmeasure-nonnegative-ae--818139075e16a8d88b23b545.md) | 130 | `result-track:818139075e16a8d88b23b545408f262b32d4d4bdf7bc2e75d0a6751d71192e71` |
| 16 | `theorem` | [integral_momentMeasure_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/integral-momentmeasure-eq-source--4895364d190a27475cfa0294.md) | 142 | `result-track:4895364d190a27475cfa02944578c6f601b9b1cc9d776909d0974a2ac3971a2b` |
| 17 | `theorem` | [integrable_momentMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/integrable-momentmeasure-iff--ce849f9aaac54b51e3e70f86.md) | 155 | `result-track:ce849f9aaac54b51e3e70f860c08e408ad2605284f147b4c869322a562ab81dd` |
| 18 | `theorem` | [polynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/polynomial-integrable--96f834158486d53aed312929.md) | 169 | `result-track:96f834158486d53aed312929d51274ca69b6b340d8cd4b1370254176b3a99b03` |
| 19 | `theorem` | [polynomial_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/polynomial-square-integrable--08b5be3d7c01cb8e00eb0700.md) | 176 | `result-track:08b5be3d7c01cb8e00eb0700aed6d9676a5e506e129746fe3868e0cb880ab16b` |
| 20 | `theorem` | [polynomial_square_integral_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/polynomial-square-integral-positive--258e01be51c4165fc2b60b03.md) | 182 | `result-track:258e01be51c4165fc2b60b03e0d31a60aaf80bba1a1df9f312abfb7c55f1b4a2` |
| 21 | `theorem` | [moment_zero_eq_thetaTail_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/moment-zero-eq-thetatail-one--b2241cc4caa87cb01cb28e9f.md) | 216 | `result-track:b2241cc4caa87cb01cb28e9fae292580cbb9f1d0852bda2eb81a77de40810652` |
| 22 | `def` | [initialDiagonal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialdiagonal--0435769cd87f1af9e1f41699.md) | 221 | `declaration-track:0435769cd87f1af9e1f4169925de3d9ab4d8dbe2215559ba7e971ab2f15b99ad` |
| 23 | `def` | [initialOffDiagonalSquared](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialoffdiagonalsquared--c7b7d319b61e482ecb39ed29.md) | 224 | `declaration-track:c7b7d319b61e482ecb39ed29328dd4e57224c3e4cedde96ef2e66779dd1e0fb5` |
| 24 | `theorem` | [initialDiagonal_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialdiagonal-positive--ca8fef21de0b924d7d4db9e1.md) | 228 | `result-track:ca8fef21de0b924d7d4db9e10d0c31fd35b376540bd9bba8e43dea633b5ab0d5` |
| 25 | `theorem` | [centered_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/centered-square-integral--e97b11c34c5b64adc6e75c3c.md) | 232 | `result-track:e97b11c34c5b64adc6e75c3c30b5c39009de14b292cf29049c584f2a537f0ffd` |
| 26 | `theorem` | [centered_square_integral_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/centered-square-integral-positive--bbbab9790b173532dd9068b7.md) | 252 | `result-track:bbbab9790b173532dd9068b79e24b76c38863a9358059d6658a6987613e039fb` |
| 27 | `theorem` | [initialOffDiagonalSquared_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialoffdiagonalsquared-positive--c4fef3ccc563c162f8f309e0.md) | 261 | `result-track:c4fef3ccc563c162f8f309e04461af24aebaf6f6b2b17140f91ee5e7235b7e6f` |
| 28 | `def` | [initialOffDiagonal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialoffdiagonal--97cf56d29b763b99ca3c79da.md) | 278 | `declaration-track:97cf56d29b763b99ca3c79dae09a9eb4412f1136f7c86b2e435a2bd90263c206` |
| 29 | `theorem` | [initialOffDiagonal_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialoffdiagonal-positive--f3f7aafb5d0af69194551495.md) | 281 | `result-track:f3f7aafb5d0af691945514959bc87ad25a3d8139f1bba080b9bcc49fc4113f1b` |
| 30 | `theorem` | [initialOffDiagonal_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialoffdiagonal-sq--dd1896fb49f5506edd1cf0c2.md) | 285 | `result-track:dd1896fb49f5506edd1cf0c2dcc59f369839324c0ab6bb77bb44ac85ed6a4e7a` |
| 31 | `theorem` | [initialDiagonal_eq_tail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialdiagonal-eq-tail-ratio--2b83f797176dafd4a94010b4.md) | 290 | `result-track:2b83f797176dafd4a94010b4afee6cba06b53e13709d34eda457b4cf539d38ae` |
| 32 | `theorem` | [initialOffDiagonalSquared_eq_tail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/initialoffdiagonalsquared-eq-tail-ratio--de891935d3597ebe91ec9b54.md) | 297 | `result-track:de891935d3597ebe91ec9b547e8f1d9c8674afc8ffd30ff0e4cc56399928b6a1` |
| 33 | `def` | [cyclicVectorNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/cyclicvectornorm--dad1962a81505b5146dcbdb7.md) | 306 | `declaration-track:dad1962a81505b5146dcbdb7aa35bbb1e34507da156e65a8b41a5bba99573779` |
| 34 | `theorem` | [cyclicVectorNorm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/cyclicvectornorm-sq--2367713532d64097c7a75faf.md) | 309 | `result-track:2367713532d64097c7a75fafe97958376e5330938d2ca48c2b6120ad5d328c27` |
| 35 | `theorem` | [sourceMeasure_dominates_restricted_volume](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/sourcemeasure-dominates-restricted-volume--7ab71a6eb429bc61c5495057.md) | 315 | `result-track:7ab71a6eb429bc61c5495057b87605adf3330a494faf49344f545291f9a81925` |
| 36 | `theorem` | [momentMeasure_Ioi_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/momentmeasure-ioi-positive--6b017be79852afd56871a9e9.md) | 324 | `result-track:6b017be79852afd56871a9e95dd17288c254df48e7e1716af1da8975915552a6` |
| 37 | `theorem` | [exponential_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/exponential-majorant-integrable--c2110e3f84984afd82b978fb.md) | 348 | `result-track:c2110e3f84984afd82b978fbca050aad279b4bd84e3efd9fb5e04c774a7039b5` |
| 38 | `theorem` | [source_exp_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/source-exp-le-majorant--64d9abbcff8b1bf9aca0ebc2.md) | 355 | `result-track:64d9abbcff8b1bf9aca0ebc269d82c5893bd2acb984a0a335fa9126a28c59e9a` |
| 39 | `theorem` | [exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/exponential-integrable--41013f4eb8734ae43ff7f836.md) | 368 | `result-track:41013f4eb8734ae43ff7f836f306c5f689103b3320f0844ae163c1c60fa93f1a` |
| 40 | `theorem` | [exponential_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/exponential-integral-le--1e7df12243618d56a7c34b33.md) | 382 | `result-track:1e7df12243618d56a7c34b3368f06302599218e107f5f3d17c2cc838f0aa6605` |
| 41 | `theorem` | [even_moment_tail_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/even-moment-tail-lower--a615490dba8a52c68c15526a.md) | 410 | `result-track:a615490dba8a52c68c15526a01a10fcc4755608213c439b8381a00c82d757026` |
| 42 | `theorem` | [no_geometric_even_moment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMomentMeasureAudit/Variantcd3111d9158e04acfebb9d13b5175d431915fa42697dfa33cd563f148866166e.lean/declarations/no-geometric-even-moment-bound--bb170fb465f62eed379c353d.md) | 432 | `result-track:bb170fb465f62eed379c353d463f96b9200aab2805f5c0fe306248be1f420476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
