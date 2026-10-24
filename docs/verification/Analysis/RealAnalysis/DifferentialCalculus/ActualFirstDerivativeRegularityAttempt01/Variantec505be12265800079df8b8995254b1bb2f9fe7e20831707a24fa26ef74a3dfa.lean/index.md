# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeRegularityAttempt01.Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff3f0a1791f10d7938c1f2201bd500cf19272d10",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff3f0a1791f10d7938c1f2201bd500cf19272d10`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSourceWeakSecondDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_first_derivative_eq_projection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/declarations/actual-first-derivative-eq-projection--dbebc413baaf7ed777569b56.md) | 34 | `result-track:dbebc413baaf7ed777569b56944dde2a669e45e0234c7203801daeaeda0d5cf0` |
| 2 | `theorem` | [actual_first_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/declarations/actual-first-derivative-lipschitz--eb3db02c9578893a9942fa63.md) | 52 | `result-track:eb3db02c9578893a9942fa6330dcfcef266232ac6c086a067f6560989bdcdb4b` |
| 3 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/declarations/actual-first-derivative-absolutelycontinuous--08bb3fafd98701eed0b1d50b.md) | 66 | `result-track:08bb3fafd98701eed0b1d50b2b753c6bd7a4ea72516432f4b416f0e4553c7b22` |
| 4 | `theorem` | [actual_first_derivative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/declarations/actual-first-derivative-ae-hasderivat--ca82491f81833645046e1a76.md) | 72 | `result-track:ca82491f81833645046e1a7682f691d7009e0f98185ddbe6b9a336a4dcfda3e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
