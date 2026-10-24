# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt05.Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7360d7bcd5dc12404c2ca38fe59fb62ded780319",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7360d7bcd5dc12404c2ca38fe59fb62ded780319`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/sourcenormalization-tendsto--d447736000510815b4dda4d9.md) | 22 | `result-track:d447736000510815b4dda4d90470382ed2e5ea6af30e0fa1dacb97d82ec0270e` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/endpointpolynomialcorrelation-continuous--f2a53f593b4f1a2580bb05cf.md) | 33 | `result-track:f2a53f593b4f1a2580bb05cf700a3376b43370e1c14dae92e522bdc77e030097` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/endpointpolynomialcorrelation-at-zero--e717e105be40c2b7b0f03614.md) | 39 | `result-track:e717e105be40c2b7b0f03614f4ce95ec151ac8144d40218f38a03efe3c3c3b43` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/actual-endpoint-scaled-tendsto--ca6c9e9e2a32beaccbcb3b20.md) | 46 | `result-track:ca6c9e9e2a32beaccbcb3b20acc49a8516f94fd93fc9ce4c0b0e1b01761dbda6` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/actual-endpoint-normalized-tendsto--dee9302a4a690d4713cf5412.md) | 59 | `result-track:dee9302a4a690d4713cf54124e650820b0496b3f552eaec1c2b64559dcd10351` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/actual-endpoint-excursion-tendsto--bfe08e03b07999cb5cec3202.md) | 71 | `result-track:bfe08e03b07999cb5cec320278c0861838580fcf0ea90778bb7e4282ec2280fe` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/actual-positivemass-tendsto--8a73a1512f037bc10880a972.md) | 91 | `result-track:8a73a1512f037bc10880a972bbb7979481ef751db5d252d1af37a0fbc2a71447` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/actual-negativemass-tendsto--ba07df313643341b132d0a96.md) | 99 | `result-track:ba07df313643341b132d0a9694e332b072bcb831169d49890aad522dc35fc721` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variantdba5916cadd26d314ebdfa8d735673d14fa93e6b10e78a0e51e86a80d0e186b2.lean/declarations/actual-massratio-tendsto--fd9413e1cd6f5863ec06ed4a.md) | 105 | `result-track:fd9413e1cd6f5863ec06ed4af4df726b871db59c6a11217e1be56159cb7331d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
