# Verification target: GRWTSK.NumberTheory.ReciprocalPrimeIntervalBounds.Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e74d9863290524e76e06a096d0408230dabf56b6`.

Source path: `GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inventoryHarmonicMass](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/declarations/inventoryharmonicmass--45b1436e805c3e4006fc7012.md) | 21 | `declaration-track:45b1436e805c3e4006fc7012175424290642e5f8b22715b175191ccebc6037c4` |
| 2 | `theorem` | [inventory_harmonic_linear_bound](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/declarations/inventory-harmonic-linear-bound--e4be4955df874a83d40dc3c0.md) | 26 | `result-track:e4be4955df874a83d40dc3c0631d6ff320d177570ca4021c26a2f0d4f42a5300` |
| 3 | `theorem` | [harmonicMass_le_card_div_lower](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/declarations/harmonicmass-le-card-div-lower--ede4eb22d55ba17d7cc8d930.md) | 47 | `result-track:ede4eb22d55ba17d7cc8d930499013bc3347edb72cc1800f779a81a8c59039f1` |
| 4 | `theorem` | [prime_interval_harmonic_bound](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/declarations/prime-interval-harmonic-bound--b481ebfd64589ad7b5fbeb80.md) | 58 | `result-track:b481ebfd64589ad7b5fbeb801259e4023fb2d18ed447b7ca3d2fba497de85ece` |
| 5 | `theorem` | [fixed_ratio_horizon_mass_bound](../../../../mathematics/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/declarations/fixed-ratio-horizon-mass-bound--8b80b0dee65d549f0666ed44.md) | 78 | `result-track:8b80b0dee65d549f0666ed44f51a60d6dd863d0e8619cc1f8a659d547f70f518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
