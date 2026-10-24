# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudgetAttempt01.Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "760ceabcc1f0da1141d8b694742cc8bceda331d2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `760ceabcc1f0da1141d8b694742cc8bceda331d2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondAbel` — import line 6; external provider; requires a separately pinned dependency.
- `BridgeLipschitz` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/criticalprimetest-second-deriv--697ae35cef3828e57bca6cdb.md) | 29 | `result-track:697ae35cef3828e57bca6cdbcbba0fd25406b936d70d067057befeafbf8c9396` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/criticalprimetest-deriv-zero-after--7eea13028ece4d41af7cf392.md) | 44 | `result-track:7eea13028ece4d41af7cf3925f94c5bde5959f5ffac8bec1d1705e9fe7fc0800` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/criticalprimetest-second-deriv-zero-after--aa86f67595cb8310381c3476.md) | 52 | `result-track:aa86f67595cb8310381c3476b249929768053988684c41e48cb2d215d6ffd636` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/criticalprimetest-second-deriv-abs-le--7bdf05197be51573193269cc.md) | 60 | `result-track:7bdf05197be51573193269ccec78108dbfbfcc925389b504a5a1f81c30e3c92b` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--1ca21664b523ae15af78f650.md) | 90 | `result-track:1ca21664b523ae15af78f65098340ff629a599ebe97c23025820c2b5acdc529b` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/mass-ratio-bounds--9260313dd960f3dc6718ad46.md) | 98 | `result-track:9260313dd960f3dc6718ad46b1699a88359a598050a4d5ebf6aa43fc35e61f0a` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/pairedtailcurvature-abs-le--36f7410fc2ec796fb1982ba5.md) | 105 | `result-track:36f7410fc2ec796fb1982ba51d3419be07d021e78e1a5acf65b0f27ca0c9d433` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/curvaturevariation--ab014387696f3d2d0bdb1bb7.md) | 134 | `declaration-track:ab014387696f3d2d0bdb1bb7e9c2f696cf7f0bb1dac1a4ee11cdfcb6248caa28` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/curvaturevariation-nonneg--cd989649e0d94b7f88e8caf1.md) | 136 | `result-track:cd989649e0d94b7f88e8caf11cda5168ecf30aa0034ad391092947eda6bbbbe3` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt01/Variant2b1a393cfe2d7fc3ea9e1a2570dee65b311b48072150927b736afe321876bede.lean/declarations/curvaturevariation-le--07e4fb6bda4eecbb02face5c.md) | 139 | `result-track:07e4fb6bda4eecbb02face5c53a074def499dadb8c4ffd9569bbfd5a2ca2c1a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
