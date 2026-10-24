# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderedPartitionBridge.Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2eebafdc35a3412ac92085562a16589a71769e2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2eebafdc35a3412ac92085562a16589a71769e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FaaDiBruno` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblock--9521626cffa2cc5e977ffdf7.md) | 40 | `declaration-track:9521626cffa2cc5e977ffdf70f156d9bb2efda9a9c95e84d36c6fcd7a0ec0880` |
| 2 | `theorem` | [mem_orderedBlock_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/mem-orderedblock-iff--e8107128af930fecbec0c26e.md) | 47 | `result-track:e8107128af930fecbec0c26e81859cbecf6721ff903447e862d3078eb209e873` |
| 3 | `theorem` | [orderedBlock_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblock-card--4b7d233e348d93320f351499.md) | 57 | `result-track:4b7d233e348d93320f3514999f51cf945978b6de924a08e4215a415197644c40` |
| 4 | `theorem` | [orderedBlock_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblock-nonempty--b5f416e34f743911ae18f162.md) | 68 | `result-track:b5f416e34f743911ae18f162d570fd80b05486eb7fef9f9be13bdc189037c4f8` |
| 5 | `theorem` | [orderedBlock_index_eq_of_common_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblock-index-eq-of-common-mem--f4b0b3d4ca3ab17b3bc01f12.md) | 77 | `result-track:f4b0b3d4ca3ab17b3bc01f12452da37237173725f3dac2236e3ce7b5e845b63a` |
| 6 | `theorem` | [orderedBlock_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblock-injective--7e2e602d4cae934559f397b1.md) | 96 | `result-track:7e2e602d4cae934559f397b19b5c058fb1a4bea9cfde66e76b3b5a019c61f694` |
| 7 | `def` | [orderedBlocks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblocks--05dd149db378b61ae26f9047.md) | 108 | `declaration-track:05dd149db378b61ae26f9047eaff3396952756cb07b345d9894d2f0614761217` |
| 8 | `def` | [orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedtodirectionpartition--cf673a19e526529c9c4e05b6.md) | 114 | `declaration-track:cf673a19e526529c9c4e05b6247769041413df9bb38c236201794701006f740e` |
| 9 | `theorem` | [orderedToDirectionPartition_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedtodirectionpartition-parts--6519b78cc4f4d43ac029b765.md) | 147 | `result-track:6519b78cc4f4d43ac029b765f074a3abe18fbf3e83c0e4dca5139003a2a48253` |
| 10 | `theorem` | [orderedToDirectionPartition_card_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedtodirectionpartition-card-parts--e3817e4483bb72a01dada068.md) | 155 | `result-track:e3817e4483bb72a01dada068a61f3002acb85589f83e84f0a87426a846bd990b` |
| 11 | `def` | [orderedBlockPart](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblockpart--c1f38e175772673c868b9dd6.md) | 165 | `declaration-track:c1f38e175772673c868b9dd6059ca4dec0ebc36d6b0a3f15d299625690ff00ea` |
| 12 | `def` | [orderedBlockEquivParts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblockequivparts--d849a826ecfacdf49bb05199.md) | 175 | `declaration-track:d849a826ecfacdf49bb05199eff17b892cd21577ef3df734d1725fff1a3fd039` |
| 13 | `theorem` | [orderedBlockEquivParts_apply_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblockequivparts-apply-val--ec7e529c3b5eac64d38d0577.md) | 192 | `result-track:ec7e529c3b5eac64d38d0577e39319a9c64f27450ad93325ad7ad3c9288017f6` |
| 14 | `theorem` | [orderedBlock_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/orderedblock-orderemboffin--7040ab770b95885e198701ab.md) | 203 | `result-track:7040ab770b95885e198701abccca752ca8ee9fcff09e9f96179d68d4f9c323a9` |
| 15 | `theorem` | [blockDirections_orderedBlock](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/blockdirections-orderedblock--394adb96ad5d80c97276183f.md) | 221 | `result-track:394adb96ad5d80c97276183f102b191827927c64b4f8aaa8e6b6d651e94cd73e` |
| 16 | `theorem` | [prod_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/prod-parts-orderedtodirectionpartition--7d3bf8999253bcccb8557b89.md) | 242 | `result-track:7d3bf8999253bcccb8557b899378d6097ba60e30c03615558794d2cc3d27e316` |
| 17 | `theorem` | [sum_parts_orderedToDirectionPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantef2ec663653bce49717b88f3977eec9d09f7973310dd0e2907a8271774a07a9a.lean/declarations/sum-parts-orderedtodirectionpartition--64303cdfae3f0f604844b9de.md) | 258 | `result-track:64303cdfae3f0f604844b9dec31dc15dc3684d32a2f9a87f228479d024217133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
