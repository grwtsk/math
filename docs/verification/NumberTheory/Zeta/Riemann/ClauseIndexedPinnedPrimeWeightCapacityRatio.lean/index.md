# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacityRatio

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0370c4722b1e3a51dc772e52e24bc2a54e7efc6c",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0370c4722b1e3a51dc772e52e24bc2a54e7efc6c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCapacityRatio`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightAmplitude`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPinnedPrimeWeightCapacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightcapacityratiocriterion--2c964a016ca46bed6e6ddb59.md) | 30 | `declaration-track:2c964a016ca46bed6e6ddb594ea276b738956a638a5186bf4ecb51c6f1eff689` |
| 2 | `abbrev` | [ClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightfixedcapacityratiocriterion--b1bd322fd617337457381789.md) | 37 | `declaration-track:b1bd322fd61733745738178936309f0fae86c5851513495bf363a6ed87e3c9c9` |
| 3 | `theorem` | [clauseIndexedPinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightcapacityratiocriterion-iff-amplitudecriter--9fb73c217a43ef268a051f83.md) | 44 | `result-track:9fb73c217a43ef268a051f834046626839868912615cc76a30b893f9b001e317` |
| 4 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightfixedcapacityratiocriterion-iff-amplitudec--b7d15fdf584ac1d959f6c654.md) | 53 | `result-track:b7d15fdf584ac1d959f6c65404731a55b82ee533ddd22ebd816e4e7e8095aae4` |
| 5 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_capacityRatio](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-capacityratio--67a49ebb43b98247b9c2bc12.md) | 63 | `result-track:67a49ebb43b98247b9c2bc12c0e0ac6faf854cdef1298b6df35a8e2f6a335825` |
| 6 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightfixedcapacityratio-to-recurrence--23e488037c6dac6ae3d89b5a.md) | 74 | `result-track:23e488037c6dac6ae3d89b5af72652a64d0acd501f273f05bd8fd5ce62f030c0` |
| 7 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacityRatio_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightfixedcapacityratio-to-previous--648466c5d9a444ede464c4d4.md) | 85 | `result-track:648466c5d9a444ede464c4d422b2b4b3fd42ff8cdc16408430f9d6b5ccb26d75` |
| 8 | `theorem` | [threeClauseIndexedPinnedPrimeWeightCapacityRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/threeclauseindexedpinnedprimeweightcapacityratiocriterion-iff--75b787a6ba1d53626204d350.md) | 106 | `result-track:75b787a6ba1d53626204d350ed8142f39d538c649da64bbd7cae06c9f7b397f2` |
| 9 | `theorem` | [twoClauseIndexedPinnedPrimeWeightCapacityRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/twoclauseindexedpinnedprimeweightcapacityratiocriterion-iff--8528e1082f439b7b44cf79a4.md) | 114 | `result-track:8528e1082f439b7b44cf79a4c6bcdc0c3bf8d0fc6142c414b978034f0fc7b5a8` |
| 10 | `theorem` | [threeClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/threeclauseindexedpinnedprimeweightfixedcapacityratiocriterion-iff--6713f02768ee3f7f723e08cd.md) | 122 | `result-track:6713f02768ee3f7f723e08cdbcf4760115a05e2f548be6a64eb8b067c611cabe` |
| 11 | `theorem` | [twoClauseIndexedPinnedPrimeWeightFixedCapacityRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/twoclauseindexedpinnedprimeweightfixedcapacityratiocriterion-iff--edd79350ff30f162af539692.md) | 132 | `result-track:edd79350ff30f162af539692743230ddee77e25ec11bbac0950a91b1cbe15ecb` |
| 12 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacityRatioCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/declarations/clauseindexedpinnedprimeweightfixedcapacityratiocriteria-to-rh--cc8e187e8ebff44047131855.md) | 144 | `result-track:cc8e187e8ebff4404713185529c3f3ecbdbaf86dcc71cf71038de58f07302aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
