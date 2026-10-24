# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrelationPrimitiveMoments.Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9955ae03091a261d6426278cc75fb88162ddea16",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9955ae03091a261d6426278cc75fb88162ddea16`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weighted_primitive_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/declarations/weighted-primitive-integrable--e12e5375b350f966f5a90b34.md) | 30 | `result-track:e12e5375b350f966f5a90b3453fa4b157c390f515cd8f9ad2cbb8d1d41deff29` |
| 2 | `theorem` | [weighted_primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/declarations/weighted-primitive-hasderivat--06eeda162f46794eaebd1272.md) | 35 | `result-track:06eeda162f46794eaebd127245c387144b1c97cb1141df65750d6db7fbc01e6b` |
| 3 | `theorem` | [weighted_primitive_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/declarations/weighted-primitive-zeromoment--e20d12c90d16c6e82b0986c4.md) | 43 | `result-track:e20d12c90d16c6e82b0986c45d5699d418b97a999644fede67bbaef8f29fcfd8` |
| 4 | `theorem` | [weighted_primitive_firstMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/declarations/weighted-primitive-firstmoment--634aa44b2cb683d3df8f1303.md) | 68 | `result-track:634aa44b2cb683d3df8f1303cde0b307c7ab4dbff871083b205bdb2fa3c23a7e` |
| 5 | `theorem` | [negative_primitive_moments_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/declarations/negative-primitive-moments-integrable--e2be4c16f3b8d6bf2af412f9.md) | 96 | `result-track:e2be4c16f3b8d6bf2af412f9db1c0540f2ff77c1d526f4ccbc8cc88bb42dc19a` |
| 6 | `theorem` | [negative_primitive_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrelationPrimitiveMoments/Variantb11d5e651d78134e0b44eed1c80cac624495457e1c05fe224a38902199f8999f.lean/declarations/negative-primitive-moments--831e42eac462e169f41e9ed2.md) | 107 | `result-track:831e42eac462e169f41e9ed20aaf6dcd4ad085f33c8f271ee7015c7d162ba475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
