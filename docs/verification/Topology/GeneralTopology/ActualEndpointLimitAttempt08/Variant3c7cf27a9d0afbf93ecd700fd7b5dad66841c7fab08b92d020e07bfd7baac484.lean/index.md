# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt08.Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3664c6461434d9c54bf6799b64a19855d1e475c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3664c6461434d9c54bf6799b64a19855d1e475c`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/sourcenormalization-tendsto--c0d520004a50746d85875ee0.md) | 22 | `result-track:c0d520004a50746d85875ee09f0dd36ee92c0d869257085424712dcd8003ce6b` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/endpointpolynomialcorrelation-continuous--6ba5c70ca136cb15ab1067cf.md) | 33 | `result-track:6ba5c70ca136cb15ab1067cf7b2277897444b161b58833da470810f12cbe0052` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/endpointpolynomialcorrelation-at-zero--26e4fa26dc85ada88849eda8.md) | 39 | `result-track:26e4fa26dc85ada88849eda887b0e0b10ce472577a2bd6956c765d8bcc51c26c` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/actual-endpoint-scaled-tendsto--6faea618338ec86e74715711.md) | 46 | `result-track:6faea618338ec86e74715711ac9d64a9057faa610e1096fdbcc0f2153cfca1b2` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/actual-endpoint-normalized-tendsto--974532ecab67a4e39b887f5d.md) | 59 | `result-track:974532ecab67a4e39b887f5d08ea21f684c7ccbad38284b083fb018eefb1da12` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/actual-endpoint-excursion-tendsto--d4edcb5297f8bf8477041e96.md) | 71 | `result-track:d4edcb5297f8bf8477041e96e83c6bef7d0188be71ae36324e8d9bfff620ae05` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/actual-positivemass-tendsto--61dc556152bdd785c4865538.md) | 93 | `result-track:61dc556152bdd785c4865538e136d52f990781d5ad9b21b79fa85bbc93e7caa1` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/actual-negativemass-tendsto--49e950ead0ffe18f65ee578e.md) | 101 | `result-track:49e950ead0ffe18f65ee578e4caa490073147b6b86ba64f5ae9815fbfbf33734` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variant3c7cf27a9d0afbf93ecd700fd7b5dad66841c7fab08b92d020e07bfd7baac484.lean/declarations/actual-massratio-tendsto--b5d059934f4fbc2048122f31.md) | 107 | `result-track:b5d059934f4fbc2048122f31b1b6ba210325a00bf96f8b130f1d59de652a8e88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
