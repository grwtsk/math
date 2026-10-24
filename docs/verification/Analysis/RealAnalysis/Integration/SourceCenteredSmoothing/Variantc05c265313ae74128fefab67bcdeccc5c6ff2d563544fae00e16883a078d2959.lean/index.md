# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCenteredSmoothing.Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561f130dbc35c940fd418a3a01be16fc46200145",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561f130dbc35c940fd418a3a01be16fc46200145`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceConservativeComparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/smoothedcorrelation--cbbc7860a55751c59cc19b43.md) | 31 | `declaration-track:cbbc7860a55751c59cc19b439d0372bec39d21c1103e4c8caf4f9a7009c00764` |
| 2 | `def` | [smoothedSlope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/smoothedslope--2d9cebb10ffc46910e580ad8.md) | 35 | `declaration-track:2d9cebb10ffc46910e580ad85b929961865171b47335971aced8e638386102dd` |
| 3 | `theorem` | [shiftedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/shiftedcorrelation-integrable--0f856b0a3ddddba1554a33f1.md) | 38 | `result-track:0f856b0a3ddddba1554a33f1c0fcaa6fcb3945a4e90f7c7b8ebd9c83059978e9` |
| 4 | `theorem` | [shiftedSlope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/shiftedslope-integrable--d54ff02019d752aaddcd0b1f.md) | 46 | `result-track:d54ff02019d752aaddcd0b1f69cb71f3256be68f47449fba1d8b1215a7354ac2` |
| 5 | `theorem` | [smoothedCorrelation_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/smoothedcorrelation-error--ee87bb8d9a33f9441b500f1a.md) | 55 | `result-track:ee87bb8d9a33f9441b500f1a8b3c8146e46bca3a7d1f73c4e39cffa5e1171c7b` |
| 6 | `theorem` | [smoothedSlope_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/smoothedslope-error--1061970b312a87dcd0f14daa.md) | 89 | `result-track:1061970b312a87dcd0f14daa07868bcf98f5014689c8e59cbc0411e65e79718d` |
| 7 | `theorem` | [finite_tangent_smoothed_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variantc05c265313ae74128fefab67bcdeccc5c6ff2d563544fae00e16883a078d2959.lean/declarations/finite-tangent-smoothed-error--3e37202d02407b3251e5934e.md) | 120 | `result-track:3e37202d02407b3251e5934e63112ffb4edf7fc9503f136b3d73c35d6f25ccab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
