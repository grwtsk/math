# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicCumulativeQuarticPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aa02842b822a774f557f90b146151e07c2278b7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aa02842b822a774f557f90b146151e07c2278b7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticFactorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_offLineDyadicQuarticScaleDataAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/no-offlinedyadicquarticscaledataatzero--5d834686fc6f6a84df952453.md) | 55 | `result-track:5d834686fc6f6a84df9524530fe58885f8e2036098b7ca345cabf8b78574ed87` |
| 2 | `structure` | [OffLineDyadicCumulativePackingDataAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/offlinedyadiccumulativepackingdataatzero--20da8f5a781c12c64fb18ed7.md) | 65 | `declaration-track:20da8f5a781c12c64fb18ed7d6d952fa823703545481290ecbbda7cefc1f0d9a` |
| 3 | `def` | [quarticFactor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/quarticfactor--935c8dcb9848a508559048bc.md) | 86 | `declaration-track:935c8dcb9848a508559048bcb91577de2d053149be42e358485eadd75fc88f63` |
| 4 | `theorem` | [quarticFactor_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/quarticfactor-pos--0ee1abee9f83ad5d8d99227e.md) | 92 | `result-track:0ee1abee9f83ad5d8d99227e80341abba9995ac4799f1f327ceadd06c035775e` |
| 5 | `theorem` | [quarticFactor_mul_lowerWeight_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/quarticfactor-mul-lowerweight-le--1032f371167f9e391aa58dd9.md) | 105 | `result-track:1032f371167f9e391aa58dd990d7cac28f8c721d8b8d67048fa9316a604f6e9f` |
| 6 | `theorem` | [quarticFactor_mul_partial_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/quarticfactor-mul-partial-le--7a1a06c90a0173435043e8e0.md) | 124 | `result-track:7a1a06c90a0173435043e8e01f14c5b486c89ab6403610e4c2552a4fa2ecfb33` |
| 7 | `theorem` | [false_of_cumulative_packing](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/false-of-cumulative-packing--484d224f17977c9378673f76.md) | 136 | `result-track:484d224f17977c9378673f76a2d036605fbfba2378071cf636f1fb4b593bf19a` |
| 8 | `def` | [OffLineDyadicCumulativePackingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/offlinedyadiccumulativepackingclaim--2c2890c2ea11f907bb9122d4.md) | 163 | `declaration-track:2c2890c2ea11f907bb9122d4e13aae23e44ec1673242829380b532eec89e6d26` |
| 9 | `theorem` | [riemannHypothesis_of_offLineDyadicCumulativePacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicCumulativeQuarticPacking.lean/declarations/riemannhypothesis-of-offlinedyadiccumulativepacking--c70b5223c345e044bfa74a14.md) | 167 | `result-track:c70b5223c345e044bfa74a142be4f2025ebf2025f240a115c8d5ecbccbf2e40a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
