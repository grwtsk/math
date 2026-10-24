# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a46244a5608a93ba6c9522e5412ac03458f0c147",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a46244a5608a93ba6c9522e5412ac03458f0c147`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.MechanismPackingRecurrenceRule`](../../../../../mathematics/NumberTheory/Zeta/Riemann/MechanismPackingRecurrenceRule.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePowerEvent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/primepowerevent--3f58ae9d9ff4f28c5bd2693e.md) | 36 | `declaration-track:3f58ae9d9ff4f28c5bd2693e70e4f7f7a29afff8eff860e33a4adc0cd1422dd1` |
| 2 | `def` | [natValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/natvalue--3e6dab66e6f5514fde79dedc.md) | 44 | `declaration-track:3e6dab66e6f5514fde79dedc99d385e5d76c2bd7b4d688ef9bbc75a1c37e1900` |
| 3 | `def` | [logScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/logscale--f68ac855bb777d71a3f7a402.md) | 48 | `declaration-track:f68ac855bb777d71a3f7a4026b0181ffb9ddecc6869b59b2c365a1d116f30666` |
| 4 | `def` | [mangoldtScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/mangoldtscale--7cb0570a4966d8812e5df1e0.md) | 52 | `declaration-track:7cb0570a4966d8812e5df1e09019241bb55a70bb6d70e1348782345341282b3d` |
| 5 | `def` | [packingPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/packingpoint--3d55b698354633d3ea12b704.md) | 56 | `declaration-track:3d55b698354633d3ea12b7045bf6cf2e8fa5c5adb9aefc83b2f237cd82db898c` |
| 6 | `theorem` | [logScale_eq_archimedean_primary](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/logscale-eq-archimedean-primary--1ab3b4dafad9f2c46c23df9e.md) | 61 | `result-track:1ab3b4dafad9f2c46c23df9e5db90c7c1d13e1eadf3574624fd392d1e832f45b` |
| 7 | `def` | [IsPrimePowerEventValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/isprimepowereventvalue--06ad3ada6266a33169c249dd.md) | 72 | `declaration-track:06ad3ada6266a33169c249dd43c815142d6a7bf331647a3cc0bece4e820bb77c` |
| 8 | `structure` | [ExplicitFormulaPrimePowerWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/explicitformulaprimepowerweight--60c78a01cb1186e29e5a6c0c.md) | 78 | `declaration-track:60c78a01cb1186e29e5a6c0c0d0e08574289dfd0972dd596865f34b67657e5df` |
| 9 | `def` | [packingPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/packingpoint--0d6763e0a7a029734bd1fdcd.md) | 88 | `declaration-track:0d6763e0a7a029734bd1fdcda60dcfc903ba955700daaed38a64ae6b8be5af3b` |
| 10 | `theorem` | [packingPoint_x](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/packingpoint-x--d4391de1d59cb54e751665c0.md) | 94 | `result-track:d4391de1d59cb54e751665c05141a5c25a45ace052e2b21c4d78fe2368b996eb` |
| 11 | `theorem` | [packingPoint_y](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/packingpoint-y--91c83823527a5d2969870e95.md) | 101 | `result-track:91c83823527a5d2969870e952cdc9d9f8bd7016fcf91c662c2dc3fe51a74b6c4` |
| 12 | `structure` | [PrimePowerCoordinateRecurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/primepowercoordinaterecurrence--0d6e7002ee14f539a7cbb659.md) | 113 | `declaration-track:0d6e7002ee14f539a7cbb659e17064e9ce3e94686259c6f927d066ad35bd85f3` |
| 13 | `def` | [initialState](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/initialstate--3b631693b53b84185b950db3.md) | 136 | `declaration-track:3b631693b53b84185b950db39535e0ff9b0b517b22dd4961d7e5c4317c9cce1d` |
| 14 | `def` | [toPackingProgram](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/topackingprogram--3424824c37159bc938af9255.md) | 155 | `declaration-track:3424824c37159bc938af92555a2163a746b34ee30246c70464d9a8c008244db5` |
| 15 | `theorem` | [nextPoint_eq_weighted_primePower_coordinate](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/nextpoint-eq-weighted-primepower-coordinate--38f1bea52567d19778213f5a.md) | 175 | `result-track:38f1bea52567d19778213f5af9fec342cce507e3eceb83cdf7d549400c29c8b4` |
| 16 | `theorem` | [nextSource_eq_primePower_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/nextsource-eq-primepower-value--87c1e9da759179e91d648067.md) | 189 | `result-track:87c1e9da759179e91d648067a96bd4482b5d0fd6c6601faf593dd47545086b56` |
| 17 | `theorem` | [nextEvent_strictly_advances](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerArithmeticPackingCoordinate.lean/declarations/nextevent-strictly-advances--4bd3b9a2b01a0696456a8702.md) | 203 | `result-track:4bd3b9a2b01a0696456a870225f7cd036318a48956c8e1f3c3d393c2f8db8e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
