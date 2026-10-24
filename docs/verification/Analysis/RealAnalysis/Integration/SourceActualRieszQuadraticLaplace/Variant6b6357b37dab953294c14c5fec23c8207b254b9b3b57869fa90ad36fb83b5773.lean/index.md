# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszQuadraticLaplace.Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0ddce18d1d4567bdd8b3bc836bb84ba6587fd2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0ddce18d1d4567bdd8b3bc836bb84ba6587fd2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredInitialLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [profile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/profile--54742e3131dcd5bc64dce010.md) | 29 | `declaration-track:54742e3131dcd5bc64dce010961e1356e196cd3d69eadd762eb6ceecc546bdee` |
| 2 | `def` | [actualRieszAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/actualrieszabsolutecumulative--92641ce2662fbbd86e35a5de.md) | 34 | `declaration-track:92641ce2662fbbd86e35a5dee8bd1b2f3fd272ea116a02512f44a5a11558a700` |
| 3 | `def` | [actualRieszQuadraticLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/actualrieszquadraticlaplacebudget--e4f269445f9e3f0b55e88e8c.md) | 37 | `declaration-track:e4f269445f9e3f0b55e88e8c6467fd2b9b76d90a9dac85b592748f1061fcfb95` |
| 4 | `theorem` | [profile_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/profile-continuouson--82b3945abfbb9c0c1d51b2a7.md) | 40 | `result-track:82b3945abfbb9c0c1d51b2a705b6ec1d6e1b80f7f3f6ea0227d32d0f73f7c2e3` |
| 5 | `theorem` | [profile_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/profile-intervalintegrable--ecc01ebd2d35a4f573519bd7.md) | 45 | `result-track:ecc01ebd2d35a4f573519bd7f5c903968bc785e3684a205d10b6322417287649` |
| 6 | `theorem` | [area_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/area-nonneg--ce1743aa80100880b53f01e4.md) | 50 | `result-track:ce1743aa80100880b53f01e4cf2898dba5caf39fb644fdec23b250f03831a1ba` |
| 7 | `theorem` | [area_ac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/area-ac--d97c73361cdc1dd2a0456bcf.md) | 53 | `result-track:d97c73361cdc1dd2a0456bcf2cabaf30e3d300d4091a3e154c9c859f61416cb4` |
| 8 | `theorem` | [area_ae_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/area-ae-deriv--a82dc7df93df44d0e118b819.md) | 58 | `result-track:a82dc7df93df44d0e118b819d0619c6e5d6999906b866e5a756b017f49b4b8d0` |
| 9 | `theorem` | [area_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/area-zero--bd0bc4dcaa01b5193142ff56.md) | 63 | `result-track:bd0bc4dcaa01b5193142ff56009fccfea167f19c398a502cc08584a3564c9cc8` |
| 10 | `theorem` | [area_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/area-weight-intervalintegrable--2462df8491cfc0b9bab7f2a8.md) | 66 | `result-track:2462df8491cfc0b9bab7f2a81efe93bbfac61a575476802f05311fe494ce07a8` |
| 11 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/absolute-weight-intervalintegrable--3a1e5ff7eab7a82e80a65c0e.md) | 71 | `result-track:3a1e5ff7eab7a82e80a65c0eb220715b7fb265b9578c535b0023395e95dd615a` |
| 12 | `theorem` | [finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/finite-abel--8239ce0e50a275b781817195.md) | 75 | `result-track:8239ce0e50a275b7818171955a84a9c7231d10eff840b9171d18b0d392dcd7ff` |
| 13 | `theorem` | [actualRieszAbsoluteCumulative_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/actualrieszabsolutecumulative-future-envelope--6858ba58c70e8e4ceed9618e.md) | 102 | `result-track:6858ba58c70e8e4ceed9618e82fc741e269dd4f6774391275165f134d7af86a6` |
| 14 | `theorem` | [polynomial_exp_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/polynomial-exp-integral-bound--66ba88726d96bafa8d809484.md) | 119 | `result-track:66ba88726d96bafa8d80948431f94cf3512387ab6c54667a92c03b0da4259993` |
| 15 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/cumulative-weight-norm-bound--a13ceea71e60f61a0062c3b8.md) | 150 | `result-track:a13ceea71e60f61a0062c3b8306100d297ac5fc73bf13b1b8f2be91cccfa601e` |
| 16 | `theorem` | [cumulative_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/cumulative-weight-integrable--f95295a7505adcf42db6ba32.md) | 167 | `result-track:f95295a7505adcf42db6ba32d524bf253a5a27d424023916a2be87ef0a3a178e` |
| 17 | `theorem` | [cumulative_weight_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/cumulative-weight-tendsto-zero--1fbfaa5d068aecf02f2ec296.md) | 181 | `result-track:1fbfaa5d068aecf02f2ec29631fba2d355d1cb33b0091a41296deafaabdc9824` |
| 18 | `theorem` | [weighted_norm_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/weighted-norm-finite-tendsto--d6950f434107b5418c2e7626.md) | 200 | `result-track:d6950f434107b5418c2e76269afc61b1d23d5e6baf9c158a1c4e4a03d0b4ba73` |
| 19 | `theorem` | [profile_real_weight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/profile-real-weight-integrable--104c45d0627004490a2541da.md) | 214 | `result-track:104c45d0627004490a2541da2df116d6cdac93add186f11c4100d1c3c1f817e3` |
| 20 | `theorem` | [absolute_weight_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/absolute-weight-integral-bound--a269a4142ff02ced20441d98.md) | 228 | `result-track:a269a4142ff02ced20441d98c067e9a5d2430540ec4bb8999f3e5fa83a0ed10e` |
| 21 | `theorem` | [profile_continuousOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/profile-continuouson-positive--e23b707cebfa40d60a52e5af.md) | 261 | `result-track:e23b707cebfa40d60a52e5af8b3ee9e71c76a5580f5766df0682f005cebebdbc` |
| 22 | `theorem` | [kernel_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/kernel-norm--7814dbb0d632bc12ffb7a76d.md) | 266 | `result-track:7814dbb0d632bc12ffb7a76d48da155949800e22d53951b7c42527b86f4621ad` |
| 23 | `theorem` | [actualFixedCenteredRieszLaplace_positive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/actualfixedcenteredrieszlaplace-positive-integrable--8a0139e9533295d8644e09a9.md) | 273 | `result-track:8a0139e9533295d8644e09a915aec6ae9984ac04eb0c314e186c2d1ef0d87bd0` |
| 24 | `theorem` | [actualFixedCenteredRieszLaplace_absolute_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/actualfixedcenteredrieszlaplace-absolute-budget--4f46d6e2d95dd25eb0ecf2b0.md) | 294 | `result-track:4f46d6e2d95dd25eb0ecf2b05fc230ddf0393448b013594fba30d8390c94af5c` |
| 25 | `theorem` | [actualFixedCenteredRieszLaplace_positive_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773.lean/declarations/actualfixedcenteredrieszlaplace-positive-norm-le--8d8f4df662563ab1c7d8a2b5.md) | 306 | `result-track:8d8f4df662563ab1c7d8a2b5e7417df374e6cdc42f90fda74d2b0a264cefdc10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
