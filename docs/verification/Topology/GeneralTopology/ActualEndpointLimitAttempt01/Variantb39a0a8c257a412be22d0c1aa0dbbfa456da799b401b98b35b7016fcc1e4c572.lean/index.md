# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt01.Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e071ebcccb78d1655ad33e218a726c7c0c569dbd",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e071ebcccb78d1655ad33e218a726c7c0c569dbd`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/sourcenormalization-tendsto--cd033c7dcc3096061fc867cd.md) | 30 | `result-track:cd033c7dcc3096061fc867cd80b43f495008dc04d137dd7d8dae4f6354c19393` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/endpointpolynomialcorrelation-continuous--c3a63a6f95fc9c75b79ba02e.md) | 41 | `result-track:c3a63a6f95fc9c75b79ba02e222d2c20ec5a2d27694a810d9eb2c66542a74a4f` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/endpointpolynomialcorrelation-at-zero--b6e24f581479c1d82f9ad0f0.md) | 47 | `result-track:b6e24f581479c1d82f9ad0f070e2e14a231dac01e6782f77af806fcbca59b460` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/actual-endpoint-scaled-tendsto--673e9d7ea5aa01e1b4a72bfd.md) | 54 | `result-track:673e9d7ea5aa01e1b4a72bfd7c476c91e7719a828a0197289814434d39d2c96a` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/actual-endpoint-normalized-tendsto--14984c5a7faf4ddebeede07c.md) | 67 | `result-track:14984c5a7faf4ddebeede07cd8d11be3290068fd5ac9134dd28174b063e0f636` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/actual-endpoint-excursion-tendsto--efadb4105d1fed170eb66cc8.md) | 79 | `result-track:efadb4105d1fed170eb66cc8fa266b44ab01109cd3888226bf064080b5889641` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/actual-positivemass-tendsto--9a7bf5e40d43728bf7f51b4a.md) | 102 | `result-track:9a7bf5e40d43728bf7f51b4a3f15716af44471b987c2c8df8264b82316ed7ce7` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/actual-negativemass-tendsto--c8f5fb046dd2ceb4a60682ce.md) | 109 | `result-track:c8f5fb046dd2ceb4a60682cee348a6d233189c6ce80bf102007f0d443389d64b` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt01/Variantb39a0a8c257a412be22d0c1aa0dbbfa456da799b401b98b35b7016fcc1e4c572.lean/declarations/actual-massratio-tendsto--5f2c8cb09439f9ecd85e1a31.md) | 115 | `result-track:5f2c8cb09439f9ecd85e1a317de51d9101f517acd0de61c928da48d3db7e47f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
