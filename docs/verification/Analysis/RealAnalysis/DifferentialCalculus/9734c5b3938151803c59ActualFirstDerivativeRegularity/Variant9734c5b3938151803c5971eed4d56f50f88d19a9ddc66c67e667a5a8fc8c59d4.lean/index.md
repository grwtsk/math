# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.9734c5b3938151803c59ActualFirstDerivativeRegularity.Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ec8efc8b3dcfe6c43ea7f38a1fce7cff2eed2cf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ec8efc8b3dcfe6c43ea7f38a1fce7cff2eed2cf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSourceWeakSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_first_derivative_eq_projection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/declarations/actual-first-derivative-eq-projection--b87775b1fa0e62a93cacb0e8.md) | 26 | `result-track:b87775b1fa0e62a93cacb0e8d21aff552f04a4cb32f84c05cc0257b9d0cd6fc9` |
| 2 | `theorem` | [actual_first_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/declarations/actual-first-derivative-lipschitz--46ec36e3f473fb65f692522a.md) | 46 | `result-track:46ec36e3f473fb65f692522abb0fbe26d7e8c5116fe4520ebdd248f81b218aa4` |
| 3 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/declarations/actual-first-derivative-absolutelycontinuous--ef5e0ad1a879ab974a199898.md) | 60 | `result-track:ef5e0ad1a879ab974a199898663077b421b47cba917aba593042b70ca3ae0927` |
| 4 | `theorem` | [actual_first_derivative_hasDerivAt_of_ne_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/declarations/actual-first-derivative-hasderivat-of-ne-endpoints--87dacb09acda7cfa3a474db6.md) | 66 | `result-track:87dacb09acda7cfa3a474db63f9a8f5b3269f141e1a20d9b30c071067794bd90` |
| 5 | `theorem` | [actual_first_derivative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/9734c5b3938151803c59ActualFirstDerivativeRegularity/Variant9734c5b3938151803c5971eed4d56f50f88d19a9ddc66c67e667a5a8fc8c59d4.lean/declarations/actual-first-derivative-ae-hasderivat--ef31f610aa50340b55d0d1cf.md) | 90 | `result-track:ef31f610aa50340b55d0d1cf0c5421aeb6a2f0ed7d41c63a39e62a47350a8081` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
