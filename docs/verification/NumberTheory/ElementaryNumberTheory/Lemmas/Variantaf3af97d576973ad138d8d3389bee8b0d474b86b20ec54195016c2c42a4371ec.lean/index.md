# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d44497472643f63ea02094870e804ea8ac64bf2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d44497472643f63ea02094870e804ea8ac64bf2`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [directed_ptsOfPeriod_pnat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/directed-ptsofperiod-pnat--38e328f0cb99f3a52306e7f9.md) | 32 | `result-track:38e328f0cb99f3a52306e7f9895869ff8d3cf33c5b9f7010f553a85150bc2586` |
| 2 | `theorem` | [bijOn_periodicPts](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/bijon-periodicpts--30c3f393cbe3d0455201bc45.md) | 39 | `result-track:30c3f393cbe3d0455201bc454c83f6bff728e740e515232194ba3506dd746642` |
| 3 | `theorem` | [minimalPeriod_eq_prime_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-eq-prime-iff--e68c937a9805578eff529a4b.md) | 43 | `result-track:e68c937a9805578eff529a4be53aa075f808be520c3985a38e5a9d39da471616` |
| 4 | `theorem` | [minimalPeriod_eq_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-eq-prime--dda5d26d91d0384b3ef82366.md) | 51 | `result-track:dda5d26d91d0384b3ef823668ef6efe5e58b3c883c6d6e7810c64ea05ade7068` |
| 5 | `theorem` | [minimalPeriod_eq_prime_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-eq-prime-pow--e32db14f36b656f692f1dee0.md) | 55 | `result-track:e32db14f36b656f692f1dee029e1020a618cc3e191f4aecd74b98038bf4d80d2` |
| 6 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/commute-minimalperiod-of-comp-dvd-mul--eb39c7f6d4c7bade97f57aa6.md) | 60 | `result-track:eb39c7f6d4c7bade97f57aa66b8c7ca2254374e83cdd7e8b9c381512f59ef424` |
| 7 | `theorem` | [Commute.minimalPeriod_of_comp_eq_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/commute-minimalperiod-of-comp-eq-mul-of-coprime--7d84557c00a51cda22ad93cc.md) | 64 | `result-track:7d84557c00a51cda22ad93ccffb2b33e385c31b73af8588c46e661810710d11a` |
| 8 | `theorem` | [minimalPeriod_le_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-le-card--b79c5667139d099189c53202.md) | 83 | `result-track:b79c5667139d099189c53202eb6696abe9bf5bfa81100fd66f4e028a6a906e16` |
| 9 | `theorem` | [isPeriodicPt_factorial_card_of_mem_periodicPts](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/isperiodicpt-factorial-card-of-mem-periodicpts--9473145955fa32e21d31d117.md) | 87 | `result-track:9473145955fa32e21d31d117abcc4dad1319300f6d61d82ed8f90d87536019a5` |
| 10 | `theorem` | [mem_periodicPts_iff_isPeriodicPt_factorial_card](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/mem-periodicpts-iff-isperiodicpt-factorial-card--f491291928ffaa1d980330f9.md) | 92 | `result-track:f491291928ffaa1d980330f9df349035d2230a77ce53932d7c98a6ed4d971393` |
| 11 | `theorem` | [Injective.mem_periodicPts](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/injective-mem-periodicpts--f9c980a15d538c909f86eca3.md) | 98 | `result-track:f9c980a15d538c909f86eca308f81cd9a7e16e16e31ff9e05c66907ccdaf01d3` |
| 12 | `theorem` | [injective_iff_periodicPts_eq_univ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/injective-iff-periodicpts-eq-univ--5a41c851436afcbf5af4dcd8.md) | 108 | `result-track:5a41c851436afcbf5af4dcd8c66c262f3ad4ac1735297dbaf324430f475ac2ac` |
| 13 | `theorem` | [injective_iff_iterate_factorial_card_eq_id](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/injective-iff-iterate-factorial-card-eq-id--8f020d9215204f8d2cc963bb.md) | 116 | `result-track:8f020d9215204f8d2cc963bbc4613a32db6a1c22bc79655ea7c789de4346ae46` |
| 14 | `theorem` | [minimalPeriod_prodMap](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-prodmap--4dea6d94972d357c7ead53c1.md) | 129 | `result-track:4dea6d94972d357c7ead53c199d8a5ab64a5101c5eaacf4b327572cf1dd4f77e` |
| 15 | `theorem` | [minimalPeriod_fst_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-fst-dvd--c6fcdc5012397c12d5ee1cc2.md) | 136 | `result-track:c6fcdc5012397c12d5ee1cc2a4e0fb38079f794d483e246cda31f7cc606264ba` |
| 16 | `theorem` | [minimalPeriod_snd_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantaf3af97d576973ad138d8d3389bee8b0d474b86b20ec54195016c2c42a4371ec.lean/declarations/minimalperiod-snd-dvd--36d9cff77297ed33d4481d85.md) | 139 | `result-track:36d9cff77297ed33d4481d857ac127f661ac2882bd811cd9a746798739836764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
