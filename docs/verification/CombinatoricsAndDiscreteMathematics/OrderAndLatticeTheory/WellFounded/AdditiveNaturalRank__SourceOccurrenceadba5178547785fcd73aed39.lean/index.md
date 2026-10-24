# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.WellFounded.AdditiveNaturalRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8505a8a981db30d00ce60239af8353b5e90b0f1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/WellFounded/AdditiveNaturalRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8505a8a981db30d00ce60239af8353b5e90b0f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/WellFounded/AdditiveNaturalRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/WellFounded/AdditiveNaturalRank.lean.json)

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
| 1 | `structure` | [NarrowRank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/narrowrank--487a538718b90a510e134004.md) | 9 | `declaration-track:487a538718b90a510e13400490eb916ea9a1f01cb9cc9b6d01106a3038b909aa` |
| 2 | `def` | [NarrowRank.cost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/narrowrank-cost--e9ae00762975332e9f1bdb01.md) | 16 | `declaration-track:e9ae00762975332e9f1bdb01416693b811587b59ff61d7d8256e99a8ed3eadc8` |
| 3 | `def` | [LowerRank](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/lowerrank--ccf4db006ec73ee7893659c4.md) | 19 | `declaration-track:ccf4db006ec73ee7893659c4c6cebd014e11b0c260556bc545006b96d34ffd08` |
| 4 | `theorem` | [lowerRank_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/lowerrank-wellfounded--7bfc49182c886dddb0d419a6.md) | 21 | `result-track:7bfc49182c886dddb0d419a640aeb0c97736f31c20c752ba8c7ff4e1fe8ca302` |
| 5 | `theorem` | [unchanged_rank_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/unchanged-rank-rejected--97013fa689248bcb32519846.md) | 24 | `result-track:97013fa689248bcb325198466c871466c9227e81eff93a202789b4f3affbc17b` |
| 6 | `theorem` | [nondecreasing_rank_rejected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/nondecreasing-rank-rejected--3a8e16b944e7631ab1b8dec2.md) | 27 | `result-track:3a8e16b944e7631ab1b8dec2bdc78488a6783c8824b4d4cf969e1f0dd45e1234` |
| 7 | `theorem` | [rank_zero_terminal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/rank-zero-terminal--a4f8992a744509bf61b7b47b.md) | 31 | `result-track:a4f8992a744509bf61b7b47be968885467308616cc9e1cd87f96ef1cfe40ed43` |
| 8 | `theorem` | [descent_chain_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrenceadba5178547785fcd73aed39.lean/declarations/descent-chain-length--0198dc5f822515dd1c515059.md) | 38 | `result-track:0198dc5f822515dd1c515059644d97531cb2adc64d3541b53bc983589b03edbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
