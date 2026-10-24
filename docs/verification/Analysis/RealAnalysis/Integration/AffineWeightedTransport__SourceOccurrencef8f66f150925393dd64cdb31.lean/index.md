# Verification target: GRWTSK.Analysis.Integration.AffineWeightedTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480db2f5eac65640c9a6f869be03eca45ab3a14d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/AffineWeightedTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480db2f5eac65640c9a6f869be03eca45ab3a14d`.

Source path: `GRWTSK/Analysis/Integration/AffineWeightedTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/AffineWeightedTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineChart](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart--6e4a2cdd4e710fccce6c213c.md) | 13 | `declaration-track:6e4a2cdd4e710fccce6c213c50f0d335088908e1278f1ec417914ad9cd134bb1` |
| 2 | `def` | [AffineChart.apply](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-apply--a5a557112793ee06012c3f82.md) | 18 | `declaration-track:a5a557112793ee06012c3f8244009a703c1473f530e01cc85c3b9147c006d7c4` |
| 3 | `def` | [AffineChart.inv](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-inv--054e42fbaf8605b12ee8fa9f.md) | 19 | `declaration-track:054e42fbaf8605b12ee8fa9fdd289fa7b9c1827e2553751d5333b0225e6f6324` |
| 4 | `theorem` | [AffineChart.inv_apply](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-inv-apply--1ce1193c81b0f746c56b7403.md) | 21 | `result-track:1ce1193c81b0f746c56b74034cc04a5d4a3914c77d5ec3b7a910af4ef4c25dd0` |
| 5 | `theorem` | [AffineChart.apply_inv](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-apply-inv--85ac99597a51685ad9dcf391.md) | 26 | `result-track:85ac99597a51685ad9dcf391ecdb3dd994e515ca2b09d1ea8d6d0d68dd07e675` |
| 6 | `def` | [AffineChart.then](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-then--5b7bcefd5cb819edc762f6f2.md) | 32 | `declaration-track:5b7bcefd5cb819edc762f6f25b62fe667bc18ef7ff7d05a0218225b912280004` |
| 7 | `theorem` | [AffineChart.then_apply](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-then-apply--237a6f0385c6f3ece704e60f.md) | 37 | `result-track:237a6f0385c6f3ece704e60fd7b02d20875fa9cc69cb09b19b79f885ded52c54` |
| 8 | `theorem` | [AffineChart.then_inv](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affinechart-then-inv--dcbb2c5ef9755d3026ce3ab9.md) | 42 | `result-track:dcbb2c5ef9755d3026ce3ab9b989831cf1b6e29f69ddf1b4625b59374132ff29` |
| 9 | `def` | [transportWeight](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/transportweight--c40c787d7187728902f6d4af.md) | 48 | `declaration-track:c40c787d7187728902f6d4af82d0acd6b294abf1a79d80dbf25915e2200d6758` |
| 10 | `def` | [pull](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/pull--7cf0349c2b959351bcf7ea1c.md) | 49 | `declaration-track:7cf0349c2b959351bcf7ea1c89a7e09a4c0324b93807a9bd31c8115dbd2fd960` |
| 11 | `theorem` | [weight_composition](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/weight-composition--316a798cfe09e22820d71708.md) | 52 | `result-track:316a798cfe09e22820d71708d00c306efd75907e938aa662a06356a840d89bee` |
| 12 | `theorem` | [pull_composition](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/pull-composition--a1b8deaa865c2322064ac363.md) | 57 | `result-track:a1b8deaa865c2322064ac3635cfff0d69a0bbedb3b429c5c3fa3f45c18ca7613` |
| 13 | `def` | [energy](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/energy--ae69a1e10bc54a5b173b23d8.md) | 69 | `declaration-track:ae69a1e10bc54a5b173b23d881aa64ee37d523c4f32a032a0b3c5754aa0a8bdc` |
| 14 | `theorem` | [affine_integral](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/affine-integral--dd82ad5497116d247400d4a9.md) | 72 | `result-track:dd82ad5497116d247400d4a916259e5045ee288893b0ba521c1c48cad270fc0c` |
| 15 | `theorem` | [energy_transport](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/energy-transport--b49b4783f8e680f898852e40.md) | 78 | `result-track:b49b4783f8e680f898852e40206186d43e371d91d48b0eeeeae25271e0dc8cc0` |
| 16 | `def` | [intervalMean](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/intervalmean--1b11eba47916b5930157f041.md) | 97 | `declaration-track:1b11eba47916b5930157f0417747a0403de9cd3f7a8f6e118476a063564506a3` |
| 17 | `def` | [A2Bound](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/a2bound--3e654ed52257ba0a94355082.md) | 102 | `declaration-track:3e654ed52257ba0a943550826d32f64a21a5c12722a6a82018c8dc95a5667e5e` |
| 18 | `theorem` | [intervalMean_transport](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/intervalmean-transport--8cab93da1680ad20151b45b9.md) | 105 | `result-track:8cab93da1680ad20151b45b92b54dbcea2efb3821064a356473ddec7fb242b82` |
| 19 | `theorem` | [a2Bound_transport_iff](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/a2bound-transport-iff--e548ba3c009e637c5858d995.md) | 114 | `result-track:e548ba3c009e637c5858d995111eac29354d90ddd86bfb57bc565db8243c06a6` |
| 20 | `theorem` | [endpoint_energy](../../../../../mathematics/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrencef8f66f150925393dd64cdb31.lean/declarations/endpoint-energy--b0b095d5625618babe0e33c9.md) | 133 | `result-track:b0b095d5625618babe0e33c93bcaea756f397fb232f41eaaccb36f6169744c6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
