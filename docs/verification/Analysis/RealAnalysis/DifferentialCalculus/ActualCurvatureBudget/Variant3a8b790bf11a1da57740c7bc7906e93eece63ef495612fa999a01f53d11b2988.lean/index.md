# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCurvatureBudget.Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48e95454f2e12880f884de60bc751dcf5c9bd812",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48e95454f2e12880f884de60bc751dcf5c9bd812`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean.json)

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
| 1 | `theorem` | [criticalPrimeTest_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/criticalprimetest-second-deriv--5d51cdfb3069de9e0de37379.md) | 29 | `result-track:5d51cdfb3069de9e0de373794574fbc92dab1022bbf40037a9240a1460a7d1e3` |
| 2 | `theorem` | [criticalPrimeTest_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/criticalprimetest-deriv-zero-after--561b30fbd5ed13959ecbfed3.md) | 51 | `result-track:561b30fbd5ed13959ecbfed3389cb4b00a26f8095b410e9af4a85a24c9396147` |
| 3 | `theorem` | [criticalPrimeTest_second_deriv_zero_after](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/criticalprimetest-second-deriv-zero-after--2cb4f18dd7afd69d3900ce43.md) | 59 | `result-track:2cb4f18dd7afd69d3900ce43402bd03c387e0cbe85a0f03ebc77def69de02f05` |
| 4 | `theorem` | [criticalPrimeTest_second_deriv_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/criticalprimetest-second-deriv-abs-le--c01d9ae0a417fe9b21707e49.md) | 67 | `result-track:c01d9ae0a417fe9b21707e496f70931c39e4c4661347f42bfc47bd8b6a52220e` |
| 5 | `theorem` | [criticalPrimeTest_deriv_lipschitz_explicit](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/criticalprimetest-deriv-lipschitz-explicit--d7e57ed0f668963a98248739.md) | 97 | `result-track:d7e57ed0f668963a982487390406b3f12eeef95b3d94a4f95e54da867c146832` |
| 6 | `theorem` | [mass_ratio_bounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/mass-ratio-bounds--d8d754cf1ad940e599b15105.md) | 105 | `result-track:d8d754cf1ad940e599b15105ec156bd75a7bfb49a51c7e64ba4f8fd2dfa0f3d7` |
| 7 | `theorem` | [pairedTailCurvature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/pairedtailcurvature-abs-le--fb575ec261da624dc9215b99.md) | 112 | `result-track:fb575ec261da624dc9215b99c434f9f65e7e79c5fc7b5a23a2175632b4d6dc2f` |
| 8 | `def` | [curvatureVariation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/curvaturevariation--473e864883de5d874e799450.md) | 138 | `declaration-track:473e864883de5d874e799450a5bf97a93c83270fa308412ef5b17f9f274db54e` |
| 9 | `theorem` | [curvatureVariation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/curvaturevariation-nonneg--f1482579f8c20d10a44b265e.md) | 140 | `result-track:f1482579f8c20d10a44b265ebf97ee24eaee0b43138d52006a7e85eff605fbcb` |
| 10 | `theorem` | [curvatureVariation_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/declarations/curvaturevariation-le--dae63563f72f9cfdc9890351.md) | 143 | `result-track:dae63563f72f9cfdc989035146b2eafc0d1d9724be77d73470bb373b4d7cf7ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
