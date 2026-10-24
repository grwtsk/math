# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.9734c5b3938151803c59ActualFirstDerivativeRegularity.Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1789a6f6072f982794bc5cf59354ae6c19a544a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1789a6f6072f982794bc5cf59354ae6c19a544a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean.json)

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
| 1 | `theorem` | [actual_first_derivative_eq_projection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/declarations/actual-first-derivative-eq-projection--c73fe9bf43d007f826533ae1.md) | 34 | `result-track:c73fe9bf43d007f826533ae130a13cb73746197258e68e336c439519fb539d9b` |
| 2 | `theorem` | [actual_first_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/declarations/actual-first-derivative-lipschitz--e67fcdf0fa2501ad3a106c4c.md) | 54 | `result-track:e67fcdf0fa2501ad3a106c4ced261bca69355bbee9de9bc6beee3cb6c7004eb3` |
| 3 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/declarations/actual-first-derivative-absolutelycontinuous--9c2dbdadb3f457168329e8d9.md) | 68 | `result-track:9c2dbdadb3f457168329e8d94e2a9bc9f72cdfa90b9f3e99f23d42770ed48aa6` |
| 4 | `theorem` | [actual_first_derivative_hasDerivAt_of_ne_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/declarations/actual-first-derivative-hasderivat-of-ne-endpoints--0c8be6fee6c6ed4b80c5c29c.md) | 74 | `result-track:0c8be6fee6c6ed4b80c5c29c7c7e75372746600ad8c70dca3619bc6f1ce696f1` |
| 5 | `theorem` | [actual_first_derivative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant8d21df305e6566e28a62787f794fcc120f52e5d391a55adefeefbcbdff7e0c24.lean/declarations/actual-first-derivative-ae-hasderivat--52ca3330e7a9248b30003212.md) | 98 | `result-track:52ca3330e7a9248b3000321224708ae8792c810286a7886db54a4c9c94deef21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
