# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt04.Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff5fd023e57c3abd45d0ccdbdb64214174754a27",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff5fd023e57c3abd45d0ccdbdb64214174754a27`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/regularnegativelogderivative--6c7488655b8ed74150dede08.md) | 11 | `declaration-track:6c7488655b8ed74150dede08225022d2a3630c8d8b822dc61bf74a46c20897da` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-regular-zeta-derivative--b6fde6987d99edeeec89d4e9.md) | 14 | `result-track:b6fde6987d99edeeec89d4e9e8dd6e84a6d00b1e6ab02b0817afc22d477dcebb` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-regular-zeta-second-derivative-at-one--496af4d2330a59ad7fb56ba3.md) | 20 | `result-track:496af4d2330a59ad7fb56ba3632870eb5ba82c0a78e33f6b5869f21a99c01065` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-regular-negative-value--38d392ec15dce9220e96d532.md) | 34 | `result-track:38d392ec15dce9220e96d5329e39d412c195e5df2174496f43fcc6bb0e10ba43` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-regular-negative-derivative--e6a80e169447f3fab361e79e.md) | 38 | `result-track:e6a80e169447f3fab361e79e960fc0366fce1d78d81d4c616287f27150ba9458` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-regular-negative-slope--50e73c78f7895d029ed12296.md) | 45 | `result-track:50e73c78f7895d029ed12296a0e667e68282578592ef2e4dac38c51bc8f01c08` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-negative-log-regularization--4e0419eb15137b640d2c08c8.md) | 53 | `result-track:4e0419eb15137b640d2c08c8a560450ce52794c7a22800a7a052cd80bbea2112` |
| 8 | `theorem` | [actual_negative_log_laurent_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-negative-log-laurent-slope--0482e2c4bc4a8bdd0a11f951.md) | 62 | `result-track:0482e2c4bc4a8bdd0a11f951645f5a790932e2ad89dd4aa7be65a12c96889ce8` |
| 9 | `theorem` | [actual_vonMangoldt_series_laurent_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt04/Variantfe551099bb4c96dbb95f76bdce941ce8515c97af5d5aae1a5efb1b4dab822b24.lean/declarations/actual-vonmangoldt-series-laurent-slope--9a000673264c277bb4993068.md) | 75 | `result-track:9a000673264c277bb499306879a8d29074d0ddd0236963ff0ab12b84819f5ecd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
