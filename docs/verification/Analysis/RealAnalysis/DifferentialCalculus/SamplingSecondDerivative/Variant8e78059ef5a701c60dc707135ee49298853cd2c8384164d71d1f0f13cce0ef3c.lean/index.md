# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SamplingSecondDerivative.Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec1fb501bd549418702d5066ffd796c277964786",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec1fb501bd549418702d5066ffd796c277964786`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [secondDifference](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/seconddifference--9bc406919bd160313befdefc.md) | 25 | `declaration-track:9bc406919bd160313befdefc0e84b03f1fed3f67e04f83bb75323a990709f50e` |
| 2 | `theorem` | [secondDifference_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/seconddifference-eq--dbd2450c84ce9e2c6ae4f6ce.md) | 29 | `result-track:dbd2450c84ce9e2c6ae4f6ce0eb044ea9311b59dab0354b33388f5818878832f` |
| 3 | `theorem` | [secondDifference_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/seconddifference-continuous--3ed2dae7722d52fc57790a3d.md) | 39 | `result-track:3ed2dae7722d52fc57790a3d68bb9147866f3990993054ed6e95e939c5aedd0c` |
| 4 | `theorem` | [secondDifference_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/seconddifference-abs-le--cd74a604d4938b8fd984c9be.md) | 44 | `result-track:cd74a604d4938b8fd984c9bedbc656f4c7d4171585e7c2abebebded25b05b3ad` |
| 5 | `theorem` | [secondDifference_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/seconddifference-zero-right--29e11d19e7479cd7b903709a.md) | 64 | `result-track:29e11d19e7479cd7b903709a6f000e1d4f2468428a41a95add162c362d5765ab` |
| 6 | `theorem` | [derivative_sampling_term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/derivative-sampling-term-hasderivat--86e00dae735a1a5c666c7243.md) | 75 | `result-track:86e00dae735a1a5c666c7243f6d714ef958de70389d223225d4c5bced318d108` |
| 7 | `theorem` | [second_difference_sum_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/second-difference-sum-eq-fixed-sum--bcd75e60b4556cae2d736264.md) | 99 | `result-track:bcd75e60b4556cae2d73626415e2d5d69ca0d39721c585e00b1d824b93c77359` |
| 8 | `theorem` | [sourceSamplingKernel_derivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/sourcesamplingkernel-derivative-hasderivat--20c3487a5c6fa07d5b449269.md) | 116 | `result-track:20c3487a5c6fa07d5b4492696f20a686599e5c01302c5e970bbf60a776c2a64b` |
| 9 | `theorem` | [derivative_secondMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/derivative-secondmoment--975beb5e5c2898be811a7304.md) | 144 | `result-track:975beb5e5c2898be811a73049c8d3a3b8f90b5bef30340801699cec902f92bd9` |
| 10 | `theorem` | [correlationDifference_secondMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variant8e78059ef5a701c60dc707135ee49298853cd2c8384164d71d1f0f13cce0ef3c.lean/declarations/correlationdifference-secondmoment--5e31043339b8f63a79572972.md) | 178 | `result-track:5e31043339b8f63a7957297240e1a790916d00c2f2e13e46cef59f17cc20f0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
