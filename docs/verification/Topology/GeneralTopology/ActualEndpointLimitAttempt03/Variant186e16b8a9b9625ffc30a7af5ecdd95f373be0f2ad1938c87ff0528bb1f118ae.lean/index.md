# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt03.Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8ea7e7db64eda6c1b1ec4f0d941a75f7972ca7b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8ea7e7db64eda6c1b1ec4f0d941a75f7972ca7b`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/sourcenormalization-tendsto--92ec92effce8516aee5bdf65.md) | 22 | `result-track:92ec92effce8516aee5bdf6552df49be5c7bdaa27690382325d4e566b3f1a2ee` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/endpointpolynomialcorrelation-continuous--806e484e7cc77622da51e590.md) | 33 | `result-track:806e484e7cc77622da51e590c101167b65696b39f9ab0174285cd89ba497d21a` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/endpointpolynomialcorrelation-at-zero--c47e6d41c1f597578f9bced2.md) | 39 | `result-track:c47e6d41c1f597578f9bced2192e44e3de234cc5f36f344bd40716103e96abfd` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/actual-endpoint-scaled-tendsto--373fbba73352f951986da7e2.md) | 46 | `result-track:373fbba73352f951986da7e2ec605851c4e762bc2fb50eaafc0c6f90aad078f1` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/actual-endpoint-normalized-tendsto--2033e8266551e0df890c29dc.md) | 59 | `result-track:2033e8266551e0df890c29dc3613a0037abc4c868fbbd457ba2bd8dfe44701b6` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/actual-endpoint-excursion-tendsto--399b03f70fe927ddc3981f39.md) | 71 | `result-track:399b03f70fe927ddc3981f398e19fc68419a0d24029e74f1b686b66af4fcd9fa` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/actual-positivemass-tendsto--79ad3c2ff15d9791123a8cc2.md) | 92 | `result-track:79ad3c2ff15d9791123a8cc283f5d42df52076be6f99b1c0a09872cd04c0d13d` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/actual-negativemass-tendsto--454a1a3b45ec7f96e26b2cf2.md) | 100 | `result-track:454a1a3b45ec7f96e26b2cf2f8bc6723ca9c8ddb577f718103e402649aedf0bd` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt03/Variant186e16b8a9b9625ffc30a7af5ecdd95f373be0f2ad1938c87ff0528bb1f118ae.lean/declarations/actual-massratio-tendsto--827712f75a304d6c1415e517.md) | 106 | `result-track:827712f75a304d6c1415e51728011a39f386a5bd13e99ae028d0697d7f5f1b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
