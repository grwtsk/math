# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt05.Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8270a8ebf4e1fbae5ecd2296a803d03a5c39e281",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8270a8ebf4e1fbae5ecd2296a803d03a5c39e281`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/sourcenormalization-tendsto--f456f3b9ed0f9ab9f44be66f.md) | 30 | `result-track:f456f3b9ed0f9ab9f44be66f637b741eb17a7e7a8487ce8fee8833346d8c2e34` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/endpointpolynomialcorrelation-continuous--3a5d43906f5e2bd354bef93e.md) | 41 | `result-track:3a5d43906f5e2bd354bef93e5ed8acfff57e7a970d01591c6d831ab4a8c39d37` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/endpointpolynomialcorrelation-at-zero--93434ebdaeae8c7a5016db62.md) | 47 | `result-track:93434ebdaeae8c7a5016db62677e69b8212ead76aa694ed2010a25f379668c29` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/actual-endpoint-scaled-tendsto--9ab086202ed9959f990baa32.md) | 54 | `result-track:9ab086202ed9959f990baa321ae757bdfab35317b6473db41c73e4826a81f41b` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/actual-endpoint-normalized-tendsto--cb7c19bfa61f853221976340.md) | 67 | `result-track:cb7c19bfa61f853221976340b4127e78ff63bf05622addb0156f2bd4e429e30d` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/actual-endpoint-excursion-tendsto--405284be8fd46fb199db20bb.md) | 79 | `result-track:405284be8fd46fb199db20bb3fe33ea2ae171595e238508710d7212c3035ce6e` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/actual-positivemass-tendsto--8553c9353fa26a74831bad0c.md) | 99 | `result-track:8553c9353fa26a74831bad0cc2d79f2c55dce88bab0d7de18d128bdceb970228` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/actual-negativemass-tendsto--5804fcdf10905c3192e185e2.md) | 107 | `result-track:5804fcdf10905c3192e185e20e1b90e6ef842d69992d7568ee995650d03fb1f0` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt05/Variant118919ae42a6ff27988d03ba528e0a87a3fae2b92607b8b49350d0a8a554aff4.lean/declarations/actual-massratio-tendsto--230c50ce9ab7b5bbc2d5c638.md) | 113 | `result-track:230c50ce9ab7b5bbc2d5c638db50d93a51b42a4b496fcf7a517734852ee9b75e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
