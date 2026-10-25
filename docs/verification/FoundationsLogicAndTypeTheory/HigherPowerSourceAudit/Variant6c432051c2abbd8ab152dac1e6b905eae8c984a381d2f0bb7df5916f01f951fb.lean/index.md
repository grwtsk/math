# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.HigherPowerSourceAudit.Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfed823c9eac1700c9c2d64f17723188a68d07d6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfed823c9eac1700c9c2d64f17723188a68d07d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/ishigherprimepower--8b12b9e41d33ab25edb53509.md) | 16 | `declaration-track:8b12b9e41d33ab25edb53509e4c268b7bbb48bb2629c12dab2de43b57f0aa961` |
| 2 | `def` | [higherPrimePowerIndices](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/higherprimepowerindices--f510d3dd72496e26f4ebb651.md) | 19 | `declaration-track:f510d3dd72496e26f4ebb651335f5ad753357655cf4ba9ab318f52b54f36cf76` |
| 3 | `def` | [higherPrimePowerContribution](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/higherprimepowercontribution--8877110fd1a7dc6f2a3dc2a5.md) | 24 | `declaration-track:8877110fd1a7dc6f2a3dc2a530b21e71cc4930cd47a872f818bab1c1bee8a999` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/prime-power-representation-unique--232243c4fb839c5fc498d337.md) | 30 | `result-track:232243c4fb839c5fc498d3373183f1750a364ba9700423ff1ded2e57ef303ae7` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/primesquare-not-higher--47b863e6e587f4572b722eab.md) | 36 | `result-track:47b863e6e587f4572b722eaba32e5eed8f0bc337003bff33a7c68fcab51454b5` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/primesquare-not-prime--0e7fbddfcaa7ee6c6390cc96.md) | 44 | `result-track:0e7fbddfcaa7ee6c6390cc96acd3ff8428e6fcd8479d428c24618ffdfcf5e519` |
| 7 | `theorem` | [higher_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/higher-not-prime--771861ab6049643dc1008268.md) | 49 | `result-track:771861ab6049643dc10082682258f28e09d7b3dc3b943d03bf1a1b88408ff53c` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/nonprime-primepower-iff--736c4438e9b99e3ba7641071.md) | 54 | `result-track:736c4438e9b99e3ba76410714d548258f3094861e5209c7ab2445bf48d340f9d` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/nonprime-weight-zero-of-outside--3f10d094ed1cb5c368ec6ab7.md) | 74 | `result-track:3f10d094ed1cb5c368ec6ab7d483e002eaa308522536b2abf2f962a1082556f5` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/primesquare-higher-indices-disjoint--9f7145728a59e912ffba4a7b.md) | 82 | `result-track:9f7145728a59e912ffba4a7b5962f0abd5678fe148c65e3b6a0fcf103a010eac` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/properprimepowercontribution-eq-square-add-higher--07919f7841b662687eda68f2.md) | 90 | `result-track:07919f7841b662687eda68f298164d723a3ee26e55647b26ec99d5bf5a505ccf` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/primepowercontribution-eq-prime-square-higher--41e590e65bc410b75c15e5e1.md) | 111 | `result-track:41e590e65bc410b75c15e5e155158bda987b812dc0bb73caf5683d42d60e5e8e` |
| 13 | `theorem` | [eight_higher_not_square](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/eight-higher-not-square--fb2cdc6962bd172777810354.md) | 119 | `result-track:fb2cdc6962bd172777810354e18f12a295133e8e9af48a836bfcc8e2c4830a70` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant6c432051c2abbd8ab152dac1e6b905eae8c984a381d2f0bb7df5916f01f951fb.lean/declarations/eight-mem-higherprimepowerindices-iff--a3fa9bca1aea60b51a69e22b.md) | 124 | `result-track:a3fa9bca1aea60b51a69e22bff76ebde8b21fff3cd67816c1994874232580d3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
