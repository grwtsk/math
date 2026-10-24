# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceAdaptiveRadiusFollowthrough.Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4133179390da606d4781d086820764f73d4f496",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4133179390da606d4781d086820764f73d4f496`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceAdaptiveTriangularConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceEndpointRadiusConsumer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strict_upper_of_triangular_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/declarations/strict-upper-of-triangular-tail--dc8a4a2408d9e735429b8f04.md) | 15 | `result-track:dc8a4a2408d9e735429b8f0431fd1f91abb4160f8ed57c3f91ce6ad4e48e65c0` |
| 2 | `theorem` | [residual_tail_of_finite_triangular_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/declarations/residual-tail-of-finite-triangular-tail--c820ffb13221bb63cec69fc0.md) | 21 | `result-track:c820ffb13221bb63cec69fc058d8eafd748d959f8865bae6a20ce4f1774a0aa7` |
| 3 | `theorem` | [estimate_of_finite_triangular_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/declarations/estimate-of-finite-triangular-tail--334d84b1c2e666cd9f72a041.md) | 28 | `result-track:334d84b1c2e666cd9f72a041a309aaec2c149878616e2328f02a40d88c730b3e` |
| 4 | `theorem` | [strict_upper_of_truncated_smoothing_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/declarations/strict-upper-of-truncated-smoothing-tail--297d7939b0fda34275c8307c.md) | 35 | `result-track:297d7939b0fda34275c8307c5249a414a22a946b14de22d981099eed9e6ba9cd` |
| 5 | `theorem` | [residual_tail_of_truncated_smoothing_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/declarations/residual-tail-of-truncated-smoothing-tail--cbb5cc7aabefd01ed5922cd1.md) | 54 | `result-track:cbb5cc7aabefd01ed5922cd13ecbaae70da6c47a244a2792200eaf64346e11b1` |
| 6 | `theorem` | [estimate_of_truncated_smoothing_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceAdaptiveRadiusFollowthrough/Variant261e9bdb20d17853e8358671a45f96c3f711fa435714e2497b5e1d8d3fc4c84c.lean/declarations/estimate-of-truncated-smoothing-tail--d6748c7aecf2ee295c61f6f8.md) | 68 | `result-track:d6748c7aecf2ee295c61f6f8b3f2f83a27eb3c583b2a7142b4afb8f23b0ccbfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
