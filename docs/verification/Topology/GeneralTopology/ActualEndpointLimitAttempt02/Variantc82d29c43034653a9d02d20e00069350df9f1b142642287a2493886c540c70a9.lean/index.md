# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt02.Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68afb014566f9feb921ead38f90f9b47b77d53fa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68afb014566f9feb921ead38f90f9b47b77d53fa`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/sourcenormalization-tendsto--340f8948d77ef8aa180d3f32.md) | 22 | `result-track:340f8948d77ef8aa180d3f327bf3912b34a30620aa341fa6bc1e1a2e55c69a69` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/endpointpolynomialcorrelation-continuous--284f1293be3a26b3eec8414c.md) | 33 | `result-track:284f1293be3a26b3eec8414cdeaf8f31a3eefba9823c57e78bf66103c50bfd20` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/endpointpolynomialcorrelation-at-zero--8cc5fe61eb8efbef3b63ad1a.md) | 39 | `result-track:8cc5fe61eb8efbef3b63ad1a895f36cb32bd65edb117917edcf42bdb1503ffa9` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/actual-endpoint-scaled-tendsto--77de1691630062c09ccd0eaa.md) | 46 | `result-track:77de1691630062c09ccd0eaa157d849b0a7ae62757bef7b89639be3c485c2075` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/actual-endpoint-normalized-tendsto--46bd6c4392acb8c2c1c37d33.md) | 59 | `result-track:46bd6c4392acb8c2c1c37d333a723179fc3e72de4c914e2afe6b32c64a7bfc19` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/actual-endpoint-excursion-tendsto--2bd3a97119a2a14e095a4dd8.md) | 72 | `result-track:2bd3a97119a2a14e095a4dd8d5f963683606722fb19c0d07b2510340af282609` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/actual-positivemass-tendsto--269b51ceb2d1d7ca9864a486.md) | 94 | `result-track:269b51ceb2d1d7ca9864a48630926472c9231f728e4754a49d9ffed063b1ca33` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/actual-negativemass-tendsto--6e99460df14e179cae5e2ca3.md) | 102 | `result-track:6e99460df14e179cae5e2ca3e5e6b143d5aeeafe7ebab2fbe73c6aa8b147cc06` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variantc82d29c43034653a9d02d20e00069350df9f1b142642287a2493886c540c70a9.lean/declarations/actual-massratio-tendsto--55f97925a9fbc0dfa7e79184.md) | 108 | `result-track:55f97925a9fbc0dfa7e79184259f96e547472cafbe6707cc4f7d410c1e391a22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
