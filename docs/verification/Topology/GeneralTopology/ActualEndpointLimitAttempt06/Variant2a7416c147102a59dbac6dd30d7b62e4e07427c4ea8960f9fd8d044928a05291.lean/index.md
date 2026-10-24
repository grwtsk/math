# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt06.Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a36092f033c7473e3413a17e9614308e65000ad0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a36092f033c7473e3413a17e9614308e65000ad0`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/sourcenormalization-tendsto--4f7b385fc1689f122ef4efd2.md) | 22 | `result-track:4f7b385fc1689f122ef4efd21ffab10481603580e16f5c3004c43f1b6a7a2e17` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/endpointpolynomialcorrelation-continuous--51c668bc96b551b2d64bc7db.md) | 33 | `result-track:51c668bc96b551b2d64bc7db52f4239cac95e6d090a1edcc0d886257fe577b88` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/endpointpolynomialcorrelation-at-zero--dc86816594a6fd656ed0d859.md) | 39 | `result-track:dc86816594a6fd656ed0d8598018f8309fc78abe937f027e9fd8b475e7ba9cc0` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/actual-endpoint-scaled-tendsto--17a7d168eaf7b7083a6ef70a.md) | 46 | `result-track:17a7d168eaf7b7083a6ef70a8669d4c2068bb9e57792e62fd809fff58f2d0d63` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/actual-endpoint-normalized-tendsto--1aab967cd35e9c7b94b5591b.md) | 59 | `result-track:1aab967cd35e9c7b94b5591bd481e9f54b0abaac2351a320fcc99059e1563480` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/actual-endpoint-excursion-tendsto--746b9a3e30547795065e02cc.md) | 71 | `result-track:746b9a3e30547795065e02ccaaa08867f32661414eb05bb202a3c7026a3fac1a` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/actual-positivemass-tendsto--77e3ac9484010294357700e0.md) | 92 | `result-track:77e3ac9484010294357700e073e517f83fc14e6cdecdcd7ff71da0505a62f637` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/actual-negativemass-tendsto--876cfa4abef0fe64402b375e.md) | 100 | `result-track:876cfa4abef0fe64402b375eb4e5cd2b042adc853fd86543dfcc1dfe236998f5` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt06/Variant2a7416c147102a59dbac6dd30d7b62e4e07427c4ea8960f9fd8d044928a05291.lean/declarations/actual-massratio-tendsto--cb4c85df05b13a037d54523d.md) | 106 | `result-track:cb4c85df05b13a037d54523d9de21ecccdf484de6177f21c632c1eb72a29719b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
