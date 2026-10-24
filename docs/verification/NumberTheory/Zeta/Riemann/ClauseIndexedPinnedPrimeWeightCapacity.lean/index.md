# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b4b7637f7adc1f37559e1aa11261b5d13929260",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b4b7637f7adc1f37559e1aa11261b5d13929260`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBoundedCapacity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBoundedCapacity.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPinnedPrimeWeightCapacityCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/clauseindexedpinnedprimeweightcapacitycriterion--235104020fb65728cff07032.md) | 29 | `declaration-track:235104020fb65728cff07032752247ec43cafdf2eb54e283792e658c076298a6` |
| 2 | `abbrev` | [ClauseIndexedPinnedPrimeWeightFixedCapacityCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/clauseindexedpinnedprimeweightfixedcapacitycriterion--a59b050429afd973b94d5445.md) | 35 | `declaration-track:a59b050429afd973b94d544562bb0bcd32a38427d8d79f0c8d77591596aa836c` |
| 3 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-capacity--6397c3f6eeb66caf6797523a.md) | 42 | `result-track:6397c3f6eeb66caf6797523aa2aabe3784367fc1fea9582800ec3ce2ba02a561` |
| 4 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacity_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/clauseindexedpinnedprimeweightfixedcapacity-to-recurrence--7f86397ab83ccb168c8bf64e.md) | 52 | `result-track:7f86397ab83ccb168c8bf64eaf64e01774cf2e705a1d16239ae2af0953379f1a` |
| 5 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacity_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/clauseindexedpinnedprimeweightfixedcapacity-to-previous--975624d57301390e733627ec.md) | 61 | `result-track:975624d57301390e733627ec8a459fdad4e6b1759ab42c1516bd8ad4ba905d0d` |
| 6 | `theorem` | [threeClauseIndexedPinnedPrimeWeightCapacityCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/threeclauseindexedpinnedprimeweightcapacitycriterion-iff--9473da7c2b008107a6c939b1.md) | 82 | `result-track:9473da7c2b008107a6c939b14c33c93d8022fa2ab2bd8ba85abb44f9f2373205` |
| 7 | `theorem` | [twoClauseIndexedPinnedPrimeWeightCapacityCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/twoclauseindexedpinnedprimeweightcapacitycriterion-iff--c73d33900f17211e8a3a5c7c.md) | 90 | `result-track:c73d33900f17211e8a3a5c7cbbba74170de8f430f83429c1d24ab587197ed4e1` |
| 8 | `theorem` | [threeClauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/threeclauseindexedpinnedprimeweightfixedcapacitycriterion-iff--e87b54212e0e0b8df108b6b5.md) | 98 | `result-track:e87b54212e0e0b8df108b6b5d15542a8ccf1a80a0811451f8c6994ec6ca5ee25` |
| 9 | `theorem` | [twoClauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/twoclauseindexedpinnedprimeweightfixedcapacitycriterion-iff--88235a7e613afe4cf09c0cb7.md) | 106 | `result-track:88235a7e613afe4cf09c0cb7de3ba0881dd424a01c76bd2a9b7854d81e4945e5` |
| 10 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacityCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/declarations/clauseindexedpinnedprimeweightfixedcapacitycriteria-to-rh--e9a9c9a8c5d25a44ea34c274.md) | 116 | `result-track:e9a9c9a8c5d25a44ea34c2745a83b45aad2f1d6dfba0886e361a7f19f4c68962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
