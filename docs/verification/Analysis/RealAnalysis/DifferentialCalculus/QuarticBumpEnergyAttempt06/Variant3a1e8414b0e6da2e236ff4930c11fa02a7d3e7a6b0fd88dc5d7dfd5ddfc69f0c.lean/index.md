# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt06.Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14c85c682f11c3d04f09563376455c394de9e07c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14c85c682f11c3d04f09563376455c394de9e07c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayvalue--e520b70ec6bf9ca1922a8b63.md) | 12 | `declaration-track:e520b70ec6bf9ca1922a8b63431a098837b5ce7c9336d340253b8ea43525175e` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayslope--4417ffbd72de59fb7f6da33b.md) | 13 | `declaration-track:4417ffbd72de59fb7f6da33bf1bce204a053e6a3db4d21b975c94943672c338f` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/weightedmass--28a654d0e2cf5bdd9afce577.md) | 14 | `declaration-track:28a654d0e2cf5bdd9afce5770a1f6323a24b37e54370a042af1a41bccf236629` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/weightedenergy--3fba6fcac5b62e86e559b7ff.md) | 15 | `declaration-track:3fba6fcac5b62e86e559b7ffc6d7d40e2c7be226528610c09f366f137cef4346` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayvalue-hasderivat--9ed7f83edae1e5d925e77354.md) | 17 | `result-track:9ed7f83edae1e5d925e77354455594b88b6233f26b9d8b8c08c4e69f9e5aa942` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayslope-hasderivat--35d5d5f6fc20c83c62056fb8.md) | 25 | `result-track:35d5d5f6fc20c83c62056fb8e24250372b6b54eafaa63ce3ec6c3996bf97c927` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayvalue-continuous--e02867915a04d5143767d916.md) | 33 | `result-track:e02867915a04d5143767d9163b99bf0ac020e04ee45c8a063b2fa77e0007de42` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayslope-continuous--23c373a4300a11129f6fcd8b.md) | 36 | `result-track:23c373a4300a11129f6fcd8b47c534a2587cf189d6fbd37b850408d20a4f2d9e` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/weightedray-hasderivat--d295e7f3fd7f65d60770be0f.md) | 39 | `result-track:d295e7f3fd7f65d60770be0f19959fa53ca013be2ea1f281b063daa73d300016` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/conjugateray-hasderivat--78e44a75258ca375a4e268db.md) | 51 | `result-track:78e44a75258ca375a4e268db0b066ccd2f4563f8f60e7094f866eafb3e5fbe4e` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/mass-integrand-continuous--78d3505db06aae250f7e7d7f.md) | 55 | `result-track:78d3505db06aae250f7e7d7f48e48caa23864ae40bb9f443bc11835b99866369` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/energy-integrand-continuous--1d5cab6f2124a8ddccac6853.md) | 59 | `result-track:1d5cab6f2124a8ddccac6853a5ef82ec4ed3f363ddbb879271def21f9673d8c8` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/weightedenergy-nonneg--8e7d547b73f75a37591755f6.md) | 63 | `result-track:8e7d547b73f75a37591755f6b25f2d86113fe5fee38c72402e588c684af88ee2` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/rayvalue-zero--f7581f01435d920476a4d18e.md) | 67 | `result-track:f7581f01435d920476a4d18e069b8d74f69fa6cc045f15a83eac892d6b199cd3` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/weightedmass-pos--085a75dc69af7d24cb449c66.md) | 70 | `result-track:085a75dc69af7d24cb449c662c39456d5ced9101c184fd9780437695deb98fc8` |
| 16 | `theorem` | [weighted_energy_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/weighted-energy-identity--54fefa079c4b43231c3d5286.md) | 85 | `result-track:54fefa079c4b43231c3d5286b67a8ca2ca645512f272a1260f8174f99a72532d` |
| 17 | `theorem` | [literal_quartic_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/literal-quartic-nonzero--2283e5641a9d6740759f8c8b.md) | 127 | `result-track:2283e5641a9d6740759f8c8bf3d7c67ba7612a733801e5a6c90ec582d11c1dc8` |
| 18 | `theorem` | [actual_mellin_halfstrip_nonzero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt06/Variant3a1e8414b0e6da2e236ff4930c11fa02a7d3e7a6b0fd88dc5d7dfd5ddfc69f0c.lean/declarations/actual-mellin-halfstrip-nonzero--a839fa45a927362543a115c0.md) | 145 | `result-track:a839fa45a927362543a115c03aa0db94945b12e2f06256c596bce47057af457e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
