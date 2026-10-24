# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt06.Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4e5e11850ff777cd1419c963804181ea1155abf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4e5e11850ff777cd1419c963804181ea1155abf`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/sourcenormalization-tendsto--a18d0298c6c1154662e7bab9.md) | 30 | `result-track:a18d0298c6c1154662e7bab92b1eeddfb0ce37f5659a0c22c57c18534111c761` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/endpointpolynomialcorrelation-continuous--dc02bcc62047ae19fde43686.md) | 41 | `result-track:dc02bcc62047ae19fde43686f3cfc0a594b06d3a408c00c536eb63d67e16a19f` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/endpointpolynomialcorrelation-at-zero--58d0e1cbcc2c94a254a122ca.md) | 47 | `result-track:58d0e1cbcc2c94a254a122cabbb543c9d1bdebb0c099ca9f1b860252bfc9df45` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/actual-endpoint-scaled-tendsto--037ef800395f3982a090fffb.md) | 54 | `result-track:037ef800395f3982a090fffb5f614305f029ce17bb848493ef1058ada7c7b469` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/actual-endpoint-normalized-tendsto--7dca577ace32deeb936b9a51.md) | 67 | `result-track:7dca577ace32deeb936b9a5103151f9472041b4dd3ee6ac52560cfa716386bb3` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/actual-endpoint-excursion-tendsto--3f3ad28958fc5a5ecf22f71c.md) | 79 | `result-track:3f3ad28958fc5a5ecf22f71c8fc50563fa6b548bcc72bfa71f74f681f50c8994` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/actual-positivemass-tendsto--bdd295d239f03e547181fc88.md) | 100 | `result-track:bdd295d239f03e547181fc88a535ff4722518c2ff826edf5a353459c79ee88ee` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/actual-negativemass-tendsto--39f5cebda8b9bd6da41186c2.md) | 108 | `result-track:39f5cebda8b9bd6da41186c2a06cf4de1a35e0ac9555e777834b0c5a6cf7b843` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variantd84c8bc78f9327c009c9a455fe2e3e54319c87c413b703bf10b8871c55e2f8f0.lean/declarations/actual-massratio-tendsto--3e4ea2970a9da6f7d8b49dcc.md) | 114 | `result-track:3e4ea2970a9da6f7d8b49dccbdc3a4b372e0156e98e10e7265df2cafcb6ed7c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
