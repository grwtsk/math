# Verification target: GRWTSK.Analysis.ComplexAnalysis.BranchHomotopy.Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "337de377d6adb83a773417e974244acbd4cd74f6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `337de377d6adb83a773417e974244acbd4cd74f6`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientOneForm](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/declarations/coefficientoneform--053438a28520b2dcfaa00e9b.md) | 56 | `declaration-track:053438a28520b2dcfaa00e9b3942a6ea9135c1f2fca53258f72a7a2a4155a266` |
| 2 | `theorem` | [curveIntegral_coefficientOneForm_homotopy](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/declarations/curveintegral-coefficientoneform-homotopy--cc81332ce34b2ab3d6ac08be.md) | 65 | `result-track:cc81332ce34b2ab3d6ac08be78956751bd8cd1effe3d56e502b275c0030187a1` |
| 3 | `def` | [HasSimplePoleCoefficientAt](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/declarations/hassimplepolecoefficientat--c81d40f99421f89481120263.md) | 96 | `declaration-track:c81d40f99421f89481120263737aefdbc5ccab0fad291d48ab20fff641db5bff` |
| 4 | `theorem` | [circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/declarations/circleintegral-eq-two-pi-i-mul-of-simplepolecoefficient--ea38533b0546682c1750e1cd.md) | 101 | `result-track:ea38533b0546682c1750e1cd68abb2005f2e7bb1c1dc0d4aa8c58d2669e9b33d` |
| 5 | `theorem` | [circleIntegral_eq_of_singleHole_annulus](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant53f49eeba83f9d97b7e9d53c06693893bea096f215168b72a0fb003496ac2c98.lean/declarations/circleintegral-eq-of-singlehole-annulus--97758ee0b96012fc0613c515.md) | 137 | `result-track:97758ee0b96012fc0613c515c6dae13dedc68be28250f3cf94b1eacb885fb70b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
