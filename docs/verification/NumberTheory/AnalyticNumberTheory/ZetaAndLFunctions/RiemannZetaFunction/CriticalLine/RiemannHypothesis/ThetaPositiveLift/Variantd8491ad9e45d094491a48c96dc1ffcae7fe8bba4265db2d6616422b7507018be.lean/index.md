# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df20e8071d83dbf8533037b5f0908a471f31df6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df20e8071d83dbf8533037b5f0908a471f31df6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWhitenedParityProjector` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.HermitianFunctionalCalculus` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiWhitenedNegativeParityEigenvalue](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphiwhitenednegativeparityeigenvalue--2e2f3b4a940586801294665d.md) | 35 | `declaration-track:2e2f3b4a940586801294665d8bd9356aaef32a2278e93ffc899f2a82ab573f27` |
| 2 | `theorem` | [thetaPhiWhitenedParityCompression_eq_cfc_halfShift](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphiwhitenedparitycompression-eq-cfc-halfshift--42eb1b78500a3ce148997534.md) | 42 | `result-track:42eb1b78500a3ce1489975345dbcd369ac9c2a6a39938760069d72a7ae157999` |
| 3 | `theorem` | [thetaPhiWhitenedParityCompression_det_eq_halfShiftProduct](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphiwhitenedparitycompression-det-eq-halfshiftproduct--7ec4b6332336df7350c70441.md) | 64 | `result-track:7ec4b6332336df7350c70441a5e2de5249d0a820c598f2194a760c0a925a3bf6` |
| 4 | `theorem` | [thetaPhiWhitenedHalfThresholdCount_eq_negativeFactorCount](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphiwhitenedhalfthresholdcount-eq-negativefactorcount--b958c5564318fe0ba5f2fcc0.md) | 92 | `result-track:b958c5564318fe0ba5f2fcc06e84f5dd159898922af8d7e62a4cb16a3dc89d62` |
| 5 | `theorem` | [thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphiwhitenedparitycompression-det-nonnegative-of-halfthresholdparity--571acb722e7a984cd15e453e.md) | 111 | `result-track:571acb722e7a984cd15e453ec1bbdaad020371451dd73e8832faf0ce272b69ed` |
| 6 | `theorem` | [thetaPhiNormalizedParityCompression_nonnegative_of_halfThresholdParity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphinormalizedparitycompression-nonnegative-of-halfthresholdparity--2f84ee3db3d4628d85ad9f1c.md) | 148 | `result-track:2f84ee3db3d4628d85ad9f1cf05f58ffc818bfb91e87126f7d8ce1fd7a67291b` |
| 7 | `theorem` | [thetaPhiChristoffelHankel_nonnegative_of_halfThresholdParity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/declarations/thetaphichristoffelhankel-nonnegative-of-halfthresholdparity--31043960d7d319c491846aa6.md) | 161 | `result-track:31043960d7d319c491846aa6f3985d3cdca85a10f18914f7043d12c0e14ecc7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
