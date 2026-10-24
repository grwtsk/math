# Verification target: GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e74d9863290524e76e06a096d0408230dabf56b6`.

Source path: `GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification`](../../../../../../mathematics/NumberTheory/Moebius/FiniteProductResponseIdentification.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction`](../../../../../../mathematics/Analysis/AsymptoticAnalysis/ExponentialEnergyObstruction__SourceOccurrencefba802f814cda9df5c10e083.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inventoryHarmonicMass](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/declarations/inventoryharmonicmass--91a08f3634dba0d729772f7f.md) | 21 | `declaration-track:91a08f3634dba0d729772f7f35ca88322381c5b49473bc9b507636d21883de56` |
| 2 | `theorem` | [inventory_harmonic_linear_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/declarations/inventory-harmonic-linear-bound--20c1e3ba2e8cef973cd6eb6a.md) | 26 | `result-track:20c1e3ba2e8cef973cd6eb6ad900edd6a3c646d3842240cd4c6ec1dff55e7b5f` |
| 3 | `theorem` | [harmonicMass_le_card_div_lower](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/declarations/harmonicmass-le-card-div-lower--e2b8806697708ae7fb3a1872.md) | 47 | `result-track:e2b8806697708ae7fb3a18729155c8d1d5106c8a2cc8629e727ff2bdeab3841c` |
| 4 | `theorem` | [prime_interval_harmonic_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/declarations/prime-interval-harmonic-bound--61de49f235a82716ca87dd04.md) | 58 | `result-track:61de49f235a82716ca87dd04c30bec2585228c232b2be88b9e62a7c2ff76608f` |
| 5 | `theorem` | [fixed_ratio_horizon_mass_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeIntervalBounds.lean/declarations/fixed-ratio-horizon-mass-bound--4a4f8ec4afbef0ef49c8b7e3.md) | 78 | `result-track:4a4f8ec4afbef0ef49c8b7e305d6cda70bb9a32ee696349acb5fa0c13b7ef913` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
