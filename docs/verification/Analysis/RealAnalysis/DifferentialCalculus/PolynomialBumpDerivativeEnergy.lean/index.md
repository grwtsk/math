# Verification target: GRWTSK.Analysis.Calculus.PolynomialBumpDerivativeEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fb29bcd4ff1113f84ad938c1f08ed06293b6899",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/PolynomialBumpDerivativeEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fb29bcd4ff1113f84ad938c1f08ed06293b6899`.

Source path: `GRWTSK/Analysis/Calculus/PolynomialBumpDerivativeEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/PolynomialBumpDerivativeEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.PolynomialBumpNormalization`](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpNormalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Calculus.CompactProfileDerivativeEnergy`](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CompactProfileDerivativeEnergy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.PolynomialEnergyRatio`](../../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thirdDerivative](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/thirdderivative--3ac11d4bc861c9f3267f18c4.md) | 31 | `declaration-track:3ac11d4bc861c9f3267f18c4aa8594c97f12c79cb12575d28231016960d21a15` |
| 2 | `theorem` | [secondInterior_frontier](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/secondinterior-frontier--eaa9672525543cd53d6ff940.md) | 35 | `result-track:eaa9672525543cd53d6ff9402b8635808476899e915f708117167ca98e9d7550` |
| 3 | `theorem` | [explicitSecondDerivative_hasDerivAt](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/explicitsecondderivative-hasderivat--b36a5eceb4efc1342bc0c160.md) | 44 | `result-track:b36a5eceb4efc1342bc0c160446832ff6c3f2e18056ad45685587d639c5699f7` |
| 4 | `theorem` | [third_scaledBump](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/third-scaledbump--b0704282a9ef303e0f89406b.md) | 49 | `result-track:b0704282a9ef303e0f89406b1ecdcfbef1cba6382fdaa38ef243ebcd4fa1df26` |
| 5 | `theorem` | [thirdInterior_continuous](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/thirdinterior-continuous--6c0d90542721e94ffa15474e.md) | 55 | `result-track:6c0d90542721e94ffa15474e3086e9fb896e8882dd8f29b1e943add69c603fed` |
| 6 | `theorem` | [scaledBump_contDiff_three](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/scaledbump-contdiff-three--3a89e78618dc3295ac1d11be.md) | 60 | `result-track:3a89e78618dc3295ac1d11be0f567b48c44a3072aff4790c3bfe6d338e6a3e6f` |
| 7 | `theorem` | [sourceBump_contDiff_three](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/sourcebump-contdiff-three--e433f3834d49fd0baaf47ab7.md) | 78 | `result-track:e433f3834d49fd0baaf47ab7dfd022ef15159c06690e044715728840b0babf17` |
| 8 | `def` | [unitThird](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/unitthird--fb03731ef9c4225f9f94bf21.md) | 83 | `declaration-track:fb03731ef9c4225f9f94bf21e58144266474e505e585fb0dcbf1c12c7e6d4732` |
| 9 | `theorem` | [sourceBump_third_eq_indicator](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/sourcebump-third-eq-indicator--a702fc23969a178c51d4c248.md) | 86 | `result-track:a702fc23969a178c51d4c24866278ccfe4ead473110c86cf716e2a8b60b57e25` |
| 10 | `theorem` | [unitThird_square_integral](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/unitthird-square-integral--6125f46ca6c0b1c6092ceabb.md) | 93 | `result-track:6125f46ca6c0b1c6092ceabb20b2a3a7ca87c050f1bee164ece34e971f48ee7b` |
| 11 | `theorem` | [sourceBump_third_square_integral](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/sourcebump-third-square-integral--32e973e8380c43acaca81938.md) | 108 | `result-track:32e973e8380c43acaca8193895850ebac40a3c40645be8d99111bb90e0dff91b` |
| 12 | `theorem` | [actual_derivative_square_integrable](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/actual-derivative-square-integrable--5127f72aca4f5fce0566c563.md) | 120 | `result-track:5127f72aca4f5fce0566c563ff4af7bb558fabd9882ebb92c95bb143d3e90f9d` |
| 13 | `theorem` | [actual_derivative_energy_eq](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/actual-derivative-energy-eq--50914b603775dab9de89f55c.md) | 128 | `result-track:50914b603775dab9de89f55cbf65d6c64ff7fa12edacbf77b79fe99db421c426` |
| 14 | `theorem` | [actual_derivative_energy_upper](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/actual-derivative-energy-upper--98b621886c6db714baaf0aab.md) | 152 | `result-track:98b621886c6db714baaf0aab9d7fede6919d34aa83e5ddd0381bc53c64d373a4` |
| 15 | `theorem` | [actual_derivative_energy_lt_twenty_five](../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/declarations/actual-derivative-energy-lt-twenty-five--42c67d32985e0fdf5f2d10de.md) | 162 | `result-track:42c67d32985e0fdf5f2d10def2283fca298bbc4eca69c74ec86ed37602dbc199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
