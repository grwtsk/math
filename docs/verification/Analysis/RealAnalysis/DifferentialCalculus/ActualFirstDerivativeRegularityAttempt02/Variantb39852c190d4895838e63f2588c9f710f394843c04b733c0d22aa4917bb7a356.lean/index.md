# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeRegularityAttempt02.Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ead2f1dc4e88c5e2571c167505ec26ea0021cb8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ead2f1dc4e88c5e2571c167505ec26ea0021cb8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean.json)

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
| 1 | `theorem` | [actual_first_derivative_eq_projection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/declarations/actual-first-derivative-eq-projection--e498a6e19c6501b84703b1f7.md) | 34 | `result-track:e498a6e19c6501b84703b1f70418336a47a776e6be86e68f7e2fe3437c81276b` |
| 2 | `theorem` | [actual_first_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/declarations/actual-first-derivative-lipschitz--d14fc23a3bcb1d4f548f175f.md) | 54 | `result-track:d14fc23a3bcb1d4f548f175f9a5de73885aa57dfb853b8f485bf1249a22db2f7` |
| 3 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/declarations/actual-first-derivative-absolutelycontinuous--73a81e3ec68e0578926f844d.md) | 68 | `result-track:73a81e3ec68e0578926f844d0f8ca3e8b3caf465efd1a1a48b4529525128f61c` |
| 4 | `theorem` | [actual_first_derivative_hasDerivAt_of_ne_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/declarations/actual-first-derivative-hasderivat-of-ne-endpoints--fa4d2c34e27c350ca8028589.md) | 74 | `result-track:fa4d2c34e27c350ca80285893788363affa3f7a0fc8b9a971c9d02bee3547838` |
| 5 | `theorem` | [actual_first_derivative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variantb39852c190d4895838e63f2588c9f710f394843c04b733c0d22aa4917bb7a356.lean/declarations/actual-first-derivative-ae-hasderivat--b94b7c3015f2ff762c1339f2.md) | 98 | `result-track:b94b7c3015f2ff762c1339f23510237061db941cccb622d63673070db9d5b891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
