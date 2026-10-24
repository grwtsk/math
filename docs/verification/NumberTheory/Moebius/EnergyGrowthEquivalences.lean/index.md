# Verification target: GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8334ab2bdf2b2b40366934bcfc5d46fa935c6e50",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8334ab2bdf2b2b40366934bcfc5d46fa935c6e50`.

Source path: `GRWTSK/NumberTheory/Moebius/EnergyGrowthEquivalences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EnergyGrowthEquivalences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralGrowth`](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralGrowth.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalResponseGram`](../../../../mathematics/Analysis/InnerProductSpace/CausalResponseGram.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [local_pickup_square_nonnegative](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/local-pickup-square-nonnegative--a0708dc7609d11d477e8367a.md) | 30 | `result-track:a0708dc7609d11d477e8367a32503d2bfaa6475e6c7b9f44f78d1e2efab7774c` |
| 2 | `theorem` | [local_pickup_square_le_energy](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/local-pickup-square-le-energy--9081bf6b8d74c9889b374ebe.md) | 36 | `result-track:9081bf6b8d74c9889b374ebe9ded4341968f800898499f2ac1f7afade435a4b1` |
| 3 | `theorem` | [rpow_square](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/rpow-square--b46277ea4de34eedd96a0f96.md) | 46 | `result-track:b46277ea4de34eedd96a0f96874f88d22d2b9c071c3945b77a61367cdd0de7e1` |
| 4 | `theorem` | [growth_square_bound](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/growth-square-bound--7113aa3d8d1d8dd639515cfc.md) | 52 | `result-track:7113aa3d8d1d8dd639515cfc2e638e4d31ec4c6a7b2e68461be57d8f674c5d32` |
| 5 | `theorem` | [model_integrable](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/model-integrable--4ef6b88f4c64980d80c9752a.md) | 61 | `result-track:4ef6b88f4c64980d80c9752a678b29be5b699d9b47c5e85d229590bfaa482c08` |
| 6 | `theorem` | [model_integral](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/model-integral--34fadb370326f9fda5360d12.md) | 68 | `result-track:34fadb370326f9fda5360d12448c995d11ca65bc35ef887bf0b34da8982467de` |
| 7 | `theorem` | [growth_energy_bound](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/growth-energy-bound--b9155ed6c727cb50c656d22a.md) | 84 | `result-track:b9155ed6c727cb50c656d22a5572c975c806686a13441c577fd6502e04bc653d` |
| 8 | `theorem` | [whole_pickup_poly_implies_budgets](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/whole-pickup-poly-implies-budgets--39fb8737fafc6a053fcaf99b.md) | 100 | `result-track:39fb8737fafc6a053fcaf99b6e418bd8f66f5dc633350d1d9c7d721ff2ff8121` |
| 9 | `theorem` | [budgets_imply_whole_pickup_poly_of_diagonal_bound](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/budgets-imply-whole-pickup-poly-of-diagonal-bound--4cdf5d02199520ad8763ab4d.md) | 134 | `result-track:4cdf5d02199520ad8763ab4d5b5ed1381ccdeb57283383a1e03d318c948181b7` |
| 10 | `theorem` | [whole_pickup_poly_iff_budgets_of_diagonal_bound](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/whole-pickup-poly-iff-budgets-of-diagonal-bound--2852d62079e29afef3f7aeac.md) | 190 | `result-track:2852d62079e29afef3f7aeaceca9e7660237cd3e3965cf0ba89a85ae6082a073` |
| 11 | `theorem` | [budgets_imply_whole_pickup_poly](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/budgets-imply-whole-pickup-poly--3a031cb5db27682ddf7ce413.md) | 198 | `result-track:3a031cb5db27682ddf7ce4138270ccec28146842c34b3106c6e94969aba047bb` |
| 12 | `theorem` | [whole_pickup_poly_iff_budgets](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/declarations/whole-pickup-poly-iff-budgets--6a6cc77b1d890a6ac93bb915.md) | 203 | `result-track:6a6cc77b1d890a6ac93bb915783dede221616b034a113328e9a318508db619ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
