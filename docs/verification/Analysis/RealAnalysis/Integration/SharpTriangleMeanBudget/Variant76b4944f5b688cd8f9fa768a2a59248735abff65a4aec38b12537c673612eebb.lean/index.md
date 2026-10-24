# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64984bcf783804e3387e4fe5e1c8cf6c9f6750a0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64984bcf783804e3387e4fe5e1c8cf6c9f6750a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/declarations/cumulative--07ac59508cdd9b328e115a41.md) | 15 | `declaration-track:07ac59508cdd9b328e115a41f1e1d41bc9c60cb6f42786143060e5945e7c48a0` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/declarations/cumulative-hasderivat--f354678b4d335113e0453fe0.md) | 17 | `result-track:f354678b4d335113e0453fe01975b515f12c2c9d5b270a68693ed5c260518118` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/declarations/cumulative-continuous--d8b6d0544fd56caf8185b8b2.md) | 22 | `result-track:d8b6d0544fd56caf8185b8b2be96b497e486b418136ea9c2e0cd7c4ec8d5a682` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/declarations/triangle-integral-eq--3dbcc05dceb16f7db2b6394e.md) | 26 | `result-track:3dbcc05dceb16f7db2b6394efa89b7ec5d009b62034084f7db91a79b41ab3527` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant76b4944f5b688cd8f9fa768a2a59248735abff65a4aec38b12537c673612eebb.lean/declarations/triangle-integral-le--df24904b256f0a359ec7d1c4.md) | 75 | `result-track:df24904b256f0a359ec7d1c496ac962b156bebfe86a8c261f7d57f6bacb716d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
