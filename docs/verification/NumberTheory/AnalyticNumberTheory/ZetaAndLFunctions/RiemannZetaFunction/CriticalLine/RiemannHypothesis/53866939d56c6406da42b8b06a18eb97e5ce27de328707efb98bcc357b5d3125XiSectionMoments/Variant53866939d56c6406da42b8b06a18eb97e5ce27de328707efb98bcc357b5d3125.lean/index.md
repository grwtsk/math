# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments.Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2203bd4dc9cc38ab5043e9c66a301ca46b66ea",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2203bd4dc9cc38ab5043e9c66a301ca46b66ea`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.QuadraticDiscriminant` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaMoment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/thetamoment--f64bb9c574b817f267520f5c.md) | 10 | `declaration-track:f64bb9c574b817f267520f5cc0b3645d3b66d7c71f1b7d13c9ddaed451a115c5` |
| 2 | `theorem` | [thetaMoment_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/thetamoment-integrable--3afc96cd1bc2fa7596323939.md) | 13 | `result-track:3afc96cd1bc2fa7596323939efa3eb91caae2f9f26b36680a1221c662f49f125` |
| 3 | `theorem` | [coefficient_eq_moment](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/coefficient-eq-moment--3bf68db8e3367284e7deda20.md) | 18 | `result-track:3bf68db8e3367284e7deda204f801434344b146fad83406b206489b3cab1dc39` |
| 4 | `theorem` | [thetaMoment_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/thetamoment-pos--ea381c10ed93eee9eceaf82b.md) | 23 | `result-track:ea381c10ed93eee9eceaf82b28b0ea8ea451028dff5b4a1aaa4f256eebcb703f` |
| 5 | `theorem` | [thetaMoment_quadratic_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/thetamoment-quadratic-nonneg--f378b19f7e35167fd07dc797.md) | 30 | `result-track:f378b19f7e35167fd07dc7971339946ebe79b93284560181692fc0f5d0e2fc42` |
| 6 | `theorem` | [thetaMoment_logConvex](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/thetamoment-logconvex--3ac1fb7e9f6d9f9e648d3029.md) | 57 | `result-track:3ac1fb7e9f6d9f9e648d30290fdfb46536b5242a0ee9c3decf884bf598eec471` |
| 7 | `theorem` | [coefficient_mul_factorial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/coefficient-mul-factorial--1888125a1b42c1f18855fc7b.md) | 65 | `result-track:1888125a1b42c1f18855fc7bcc9aacb346f34a2aa3428b4a400ea58164279baa` |
| 8 | `theorem` | [coefficient_logConvex_factorial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/coefficient-logconvex-factorial--14c4dbf8fe0e1ddb61f71da1.md) | 69 | `result-track:14c4dbf8fe0e1ddb61f71da110fd91879a01175856690aa28fcb6bdfafe92cbd` |
| 9 | `theorem` | [coefficient_fourth_obstruction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125XiSectionMoments/Variant53866939d56c6406da42b8b06a18eb97e5ce27de328707efb98bcc357b5d3125.lean/declarations/coefficient-fourth-obstruction--442ec2d09d1217657dffdfae.md) | 106 | `result-track:442ec2d09d1217657dffdfaebc78723edf15c0ab2d3cfe9fd97c5d4d74ece884` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
