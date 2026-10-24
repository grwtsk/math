# Verification target: GRWTSK.NumberTheory.Zeta.HolomorphicFilteredReciprocal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1069a6fc82ac378b2e56eb34ae269cdbc577e07f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1069a6fc82ac378b2e56eb34ae269cdbc577e07f`.

Source path: `GRWTSK/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.ZeroFreeHalfPlaneCriteria`](../../../../mathematics/NumberTheory/Zeta/ZeroFreeHalfPlaneCriteria.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticPickupFilter](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter--62af807130e08d8ebc9c684a.md) | 31 | `declaration-track:62af807130e08d8ebc9c684a955c799fceb8cb2198afd77b78a132dc477fc157` |
| 2 | `def` | [AnalyticPickupFilter.reconstructed](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter-reconstructed--24f0406c06df44e96b6f70c0.md) | 42 | `declaration-track:24f0406c06df44e96b6f70c03505e6f752ab70939b72ae4a3ed8491a51127859` |
| 3 | `theorem` | [AnalyticPickupFilter.reconstructed_holomorphic](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter-reconstructed-holomorphic--a7963438f1527612b3015f90.md) | 45 | `result-track:a7963438f1527612b3015f90fd94346b42ed5a663150912c41c113a4401e18e9` |
| 4 | `theorem` | [AnalyticPickupFilter.reconstructed_original](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter-reconstructed-original--f76cc9135b73c9a37c16997c.md) | 51 | `result-track:f76cc9135b73c9a37c16997cecb1c79c2f461eb40ddf0952ec635a23d61e003c` |
| 5 | `theorem` | [AnalyticPickupFilter.initial_identity](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter-initial-identity--958bd0ee0a37595d77402975.md) | 61 | `result-track:958bd0ee0a37595d774029757922cf15ccb00d5ec17e218a799659c241359a09` |
| 6 | `theorem` | [AnalyticPickupFilter.excludes_right_zeros](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter-excludes-right-zeros--a94f8c93bfb220ed5fd9899e.md) | 67 | `result-track:a94f8c93bfb220ed5fd9899e19ef6d381adede8081b17d6d8f3c2279319a2917` |
| 7 | `theorem` | [AnalyticPickupFilter.implies_rh](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/analyticpickupfilter-implies-rh--c1e0be8ecc61986a2e238c2e.md) | 73 | `result-track:c1e0be8ecc61986a2e238c2e93ff2eeb2f304cac72c41e2ee80e386279cb9cfe` |
| 8 | `def` | [axisInvertibleFilter](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/axisinvertiblefilter--425f989b3621ea1d2748e2a6.md) | 92 | `declaration-track:425f989b3621ea1d2748e2a6ccdd9296e232b5e73b8fce0bbe1c9ecaec96dd1e` |
| 9 | `theorem` | [imaginary_axis_norm_lower](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/imaginary-axis-norm-lower--bb9c7f76b8866a3f8254aba0.md) | 94 | `result-track:bb9c7f76b8866a3f8254aba0b6babdbdfec54053199a365c03b104cc7b29b932` |
| 10 | `theorem` | [imaginary_axis_nonzero](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/imaginary-axis-nonzero--65352da9b4ff2ae94420613b.md) | 99 | `result-track:65352da9b4ff2ae94420613beb40ca5d8ec2fc77edf77dfd187bb3d2a09c0749` |
| 11 | `theorem` | [imaginary_axis_inverse_gain](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/imaginary-axis-inverse-gain--e69dead709969bed3c53bc71.md) | 106 | `result-track:e69dead709969bed3c53bc71a67356414a463ae63fc8ccc4aca39faeda73bdcd` |
| 12 | `theorem` | [positive_half_plane_zero](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/positive-half-plane-zero--55327963623d2507343fccfa.md) | 111 | `result-track:55327963623d2507343fccfac94bb709211ad5b6a55018c076f0e04f3ef90964` |
| 13 | `theorem` | [axis_inverse_does_not_supply_complex_nonvanishing](../../../../mathematics/NumberTheory/Zeta/HolomorphicFilteredReciprocal.lean/declarations/axis-inverse-does-not-supply-complex-nonvanishing--1803d15d34120ff6fb899b47.md) | 115 | `result-track:1803d15d34120ff6fb899b4751bcb337628b0e2b0ca0c77eaa7fa3c50fb2a7e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
