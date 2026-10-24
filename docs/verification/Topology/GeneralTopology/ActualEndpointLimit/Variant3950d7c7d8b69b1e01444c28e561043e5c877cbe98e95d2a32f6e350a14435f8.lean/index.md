# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimit.Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7d3a9fef82002a94e8850773107f54a6f6aed4a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7d3a9fef82002a94e8850773107f54a6f6aed4a`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `ActualRealMode` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/endpointpolynomialcorrelation-continuous--f8471af68c47385e126da0dc.md) | 22 | `result-track:f8471af68c47385e126da0dc967e295bf5ee1a1f99f8d5d631de4f213a45fac4` |
| 2 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/endpointpolynomialcorrelation-at-zero--18568a17173d6b9d45841b7a.md) | 28 | `result-track:18568a17173d6b9d45841b7afb01652e34cc630946298cf2503b0297d39fc4a6` |
| 3 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/actual-endpoint-scaled-tendsto--bb8bdff7e6397086932ef904.md) | 35 | `result-track:bb8bdff7e6397086932ef904ab42be91e4733d9ab9aecc8a55f9cd2cd1eefe53` |
| 4 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/actual-endpoint-normalized-tendsto--0704b7ee989358375518f8d5.md) | 48 | `result-track:0704b7ee989358375518f8d5ec06ce4ae9184d92045744901d75190dfe962ab9` |
| 5 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/actual-endpoint-excursion-tendsto--374cffad30ae5c7d0940ae38.md) | 60 | `result-track:374cffad30ae5c7d0940ae383d10b9e1c4161222c47f7e2103dd93386e08cd01` |
| 6 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/actual-positivemass-tendsto--5c18aa62cb9762d9686364aa.md) | 83 | `result-track:5c18aa62cb9762d9686364aad2d31beab877329587f7d5c9f83f19040e4eef06` |
| 7 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/actual-negativemass-tendsto--dd4f4fb9f273379774fdca5b.md) | 90 | `result-track:dd4f4fb9f273379774fdca5b6efb2f190062e1810b462ca0de0ad11aaed3f052` |
| 8 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant3950d7c7d8b69b1e01444c28e561043e5c877cbe98e95d2a32f6e350a14435f8.lean/declarations/actual-massratio-tendsto--cdd73b0700039ebd016f227a.md) | 96 | `result-track:cdd73b0700039ebd016f227ad6a0a9f92247b76cd60f661fb59ad6c53d3d7e83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
