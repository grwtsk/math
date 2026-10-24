# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GaussianSourceConsumer.Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027f112f7dbbcd5eacfc9a49b479fbea07d29e5c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027f112f7dbbcd5eacfc9a49b479fbea07d29e5c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCenteredSmoothing` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.GaussianMoments` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gaussian_correlation_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/declarations/gaussian-correlation-error--8b6c77bf12b76c00502e062e.md) | 32 | `result-track:8b6c77bf12b76c00502e062ee18ce89bfa3f2ab520b111158bad4c18c08f20de` |
| 2 | `theorem` | [gaussian_slope_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/declarations/gaussian-slope-error--f7e88e96a5e3abbafe957128.md) | 41 | `result-track:f7e88e96a5e3abbafe95712811295bfe9b2cd2b0c976558931322f205b293b7b` |
| 3 | `theorem` | [gaussian_finite_tangent_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GaussianSourceConsumer/Variantf045f9cc8d53d6b2790757ee9abe3474dd19f74ec24d04f0610e6f6fe3277cff.lean/declarations/gaussian-finite-tangent-error--b42d04f38ab941976e63b773.md) | 50 | `result-track:b42d04f38ab941976e63b7733c17dacd339681fe8c4cd62f093b0fdb06aff19f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
