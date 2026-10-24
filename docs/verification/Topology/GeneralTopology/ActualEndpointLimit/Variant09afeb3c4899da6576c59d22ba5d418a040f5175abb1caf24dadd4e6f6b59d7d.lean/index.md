# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimit.Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec2b656bda02d069ca7b465201dff5783ca3850",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec2b656bda02d069ca7b465201dff5783ca3850`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `ActualRealMode` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/endpointpolynomialcorrelation-continuous--305939248a9eae77625a2ea1.md) | 30 | `result-track:305939248a9eae77625a2ea1dacfbbfcf3b9620263768aad51cedc0001d7152e` |
| 2 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/endpointpolynomialcorrelation-at-zero--a02455648f13bfaed8145937.md) | 36 | `result-track:a02455648f13bfaed814593767af98f6a614726152d1e9bd6bfe5ca9964d86b5` |
| 3 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/actual-endpoint-scaled-tendsto--5fc5c0e843f643efa8078d28.md) | 43 | `result-track:5fc5c0e843f643efa8078d282f7c27719d52deb5d1cbd475740590c6d89fc622` |
| 4 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/actual-endpoint-normalized-tendsto--81d9a38ced95d982687212d8.md) | 56 | `result-track:81d9a38ced95d982687212d873757cfd6865c043ac8967d6b00eff34320f0d99` |
| 5 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/actual-endpoint-excursion-tendsto--06b397e6bc7fe1f0fe7a660e.md) | 68 | `result-track:06b397e6bc7fe1f0fe7a660e8d748005d1e919f9aa41c4e6d36109112bd557e0` |
| 6 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/actual-positivemass-tendsto--82a31cf7a55f0fe36d37386c.md) | 91 | `result-track:82a31cf7a55f0fe36d37386c06f0a8d26d19735b4861f0c94e5d755f121d9e1a` |
| 7 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/actual-negativemass-tendsto--feadafafd3d3c025bc658920.md) | 98 | `result-track:feadafafd3d3c025bc6589206e7e0c795200b48ae74812f08e9fbb1cdc0ac806` |
| 8 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimit/Variant09afeb3c4899da6576c59d22ba5d418a040f5175abb1caf24dadd4e6f6b59d7d.lean/declarations/actual-massratio-tendsto--fb0e106f3097226eb2a7050e.md) | 104 | `result-track:fb0e106f3097226eb2a7050ee84f0ceea0827106da970ca80601eab5d133e590` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
