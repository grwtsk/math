# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt01.Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6a70069e5ad3bec9e52a256dd7ae92738aafff1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6a70069e5ad3bec9e52a256dd7ae92738aafff1`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/sourcenormalization-tendsto--ec02d629842e88f55369c82b.md) | 22 | `result-track:ec02d629842e88f55369c82b2509a7ff526557f822c69e478b2bda370d9f11cc` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/endpointpolynomialcorrelation-continuous--24d04b49a2946134c63bc75f.md) | 33 | `result-track:24d04b49a2946134c63bc75f562a8b726473e8e85baa9e34b96440ec0da98c1c` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/endpointpolynomialcorrelation-at-zero--e88194678af592eceb22ff36.md) | 39 | `result-track:e88194678af592eceb22ff36b393d12ab5156164df87eb3ba1daadf97093cf26` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/actual-endpoint-scaled-tendsto--60db8459920b23faf38bdd86.md) | 46 | `result-track:60db8459920b23faf38bdd868fc7dda3b284742df17b4e0ca2fb73166c3b6f9d` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/actual-endpoint-normalized-tendsto--eed2d86d7eb576f6de16663d.md) | 59 | `result-track:eed2d86d7eb576f6de16663d5c955c86eef893365f2ff2c8ad7936e44383b045` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/actual-endpoint-excursion-tendsto--beef74b077d6b9801ec8c898.md) | 71 | `result-track:beef74b077d6b9801ec8c89807888d77f550ae12848b5f5148cbbcb5e151a716` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/actual-positivemass-tendsto--5669d878a2f756f6534cec6c.md) | 94 | `result-track:5669d878a2f756f6534cec6ce946e1a34f7059b60f2d1676ce6545ab7a019b1e` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/actual-negativemass-tendsto--2b5779e8f40a92e026f93a81.md) | 101 | `result-track:2b5779e8f40a92e026f93a81501c1083fe56c6a155a68b92ae041cfc52af06b9` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variante23a46b4b32ba22f5be022adc81a53fbaf8ab8e10fbdeaffaf39b5cdc87470f5.lean/declarations/actual-massratio-tendsto--d96c44274f9a0a9b0f5021f3.md) | 107 | `result-track:d96c44274f9a0a9b0f5021f3b25543ce56ab049a9c27543cebf273401e3df9e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
