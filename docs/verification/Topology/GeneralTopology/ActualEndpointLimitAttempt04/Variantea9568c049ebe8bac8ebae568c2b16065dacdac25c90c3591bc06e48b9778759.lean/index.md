# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt04.Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66d85df2a6f401930328069469bb76316f9aee95",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66d85df2a6f401930328069469bb76316f9aee95`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean.json)

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
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/sourcenormalization-tendsto--c7d8f1c043e5c4d88e00d406.md) | 30 | `result-track:c7d8f1c043e5c4d88e00d40619f1d56813d81b0cb91e814b7098e8cf2f7ce1f2` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/endpointpolynomialcorrelation-continuous--9db517b0a03d53247d68c0ae.md) | 41 | `result-track:9db517b0a03d53247d68c0aea2c41102623969426faefbfa77b0d0f4ccf714ba` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/endpointpolynomialcorrelation-at-zero--9dcf36d29aaa6ec8dcc8435f.md) | 47 | `result-track:9dcf36d29aaa6ec8dcc8435f69a879ee2443638000dd5c441330307e1903429f` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/actual-endpoint-scaled-tendsto--a375b33545a5d20e285b9f4e.md) | 54 | `result-track:a375b33545a5d20e285b9f4e94c1559f01b2a79f29698d71d25f8b3e96268bbe` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/actual-endpoint-normalized-tendsto--32b7650f41a8bd8c09b9c29f.md) | 67 | `result-track:32b7650f41a8bd8c09b9c29fc13ff67f77a3299d3c910ded94b96927aa763deb` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/actual-endpoint-excursion-tendsto--4d14a0caec4c805e425be9c3.md) | 79 | `result-track:4d14a0caec4c805e425be9c31344101ca57bf5e8838f44a2eda8b4ff8453c47f` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/actual-positivemass-tendsto--8a5549d6abeb8c1340b0d3ba.md) | 100 | `result-track:8a5549d6abeb8c1340b0d3ba349b7e00bbd5c4ca9f0d79806f5061b088c95088` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/actual-negativemass-tendsto--2a88fabf8dbad1db8123fedb.md) | 108 | `result-track:2a88fabf8dbad1db8123fedbb74ad9e365e6634be8a15bb0fd85ed3e03a16499` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt04/Variantea9568c049ebe8bac8ebae568c2b16065dacdac25c90c3591bc06e48b9778759.lean/declarations/actual-massratio-tendsto--4fda1d9733802ad4f3ad3f4f.md) | 114 | `result-track:4fda1d9733802ad4f3ad3f4f92b8c41ac388437ac892690060fed18bea769dfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
