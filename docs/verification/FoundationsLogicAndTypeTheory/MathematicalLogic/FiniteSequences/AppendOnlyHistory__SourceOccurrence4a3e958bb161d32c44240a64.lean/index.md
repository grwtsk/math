# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "495b68dccadf415a5d3b361aa5853cf3c40e256b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `495b68dccadf415a5d3b361aa5853cf3c40e256b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision__SourceOccurrence3afb20fd23bf96abd0766d44.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkprefix--51bc46d8e043265e3f1863d8.md) | 35 | `declaration-track:51bc46d8e043265e3f1863d801aa23b78d6379d207381445838eb0ed9db02fd7` |
| 2 | `theorem` | [checkPrefix_eq_true_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkprefix-eq-true-iff--328d129375d55e01d159daf7.md) | 39 | `result-track:328d129375d55e01d159daf7f85ed81fc8abd4da61381c17af806e4459cbf191` |
| 3 | `theorem` | [checkPrefix_iff_suffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkprefix-iff-suffix--ce60311e6bb5a0ef53323357.md) | 44 | `result-track:ce60311e6bb5a0ef53323357f5c62c0b7a63e2df38ef038780dfe5c16f6de46d` |
| 4 | `theorem` | [checkPrefix_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkprefix-refl--2c5f495abff8235024d4d11e.md) | 48 | `result-track:2c5f495abff8235024d4d11e5dc756e7edadf4ebe1eea2b3ec76b7ebf5890238` |
| 5 | `theorem` | [checkPrefix_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkprefix-trans--09e688d1463c14d5fcd90cd2.md) | 53 | `result-track:09e688d1463c14d5fcd90cd222aef53b050d7562d25bea8d81087783ecdee6a8` |
| 6 | `theorem` | [accepted_position](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/accepted-position--de2ec7d9b521e195f64f80f4.md) | 61 | `result-track:de2ec7d9b521e195f64f80f4b57c697cadf80982b5acb30615707ca1623ac2d2` |
| 7 | `theorem` | [accepted_key_order](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/accepted-key-order--24e2634c58a60a70989077b3.md) | 67 | `result-track:24e2634c58a60a70989077b3dc2873edd6107725f69a0c9d13704b6918c79120` |
| 8 | `def` | [checkDecodedExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkdecodedextension--408184b94d6e42496015a9f9.md) | 74 | `declaration-track:408184b94d6e42496015a9f9e7f313a00cbfdbec5b723873f82d2bb156737a07` |
| 9 | `theorem` | [checkDecodedExtension_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkdecodedextension-iff--ee2d785c64d2c90df807ce18.md) | 81 | `result-track:ee2d785c64d2c90df807ce186630ee6e8a01af09022484a452fd7350c10ef89d` |
| 10 | `theorem` | [decoded_prefix_of_acceptance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/decoded-prefix-of-acceptance--4db4a39ea8afb2bdbb5b6cba.md) | 100 | `result-track:4db4a39ea8afb2bdbb5b6cba75254ea688c06efc02e8e23a5347e8b4d8675242` |
| 11 | `theorem` | [checkDecodedExtension_pack_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/checkdecodedextension-pack-append--30d65f7520d7c44f5cb51b0b.md) | 111 | `result-track:30d65f7520d7c44f5cb51b0b1bf138a630144addc14ef643294b24b59c854038` |
| 12 | `theorem` | [reordered_rows_not_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/reordered-rows-not-prefix--d4def199eafd33b9b8d7b5a3.md) | 117 | `result-track:d4def199eafd33b9b8d7b5a3c5dac0b1a52372a5f26739fc0edbcd0ba3b5b9ac` |
| 13 | `theorem` | [append_repack_stale_slot_counterexample](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/AppendOnlyHistory__SourceOccurrence4a3e958bb161d32c44240a64.lean/declarations/append-repack-stale-slot-counterexample--25e60251a4c883d651511cc0.md) | 127 | `result-track:25e60251a4c883d651511cc0f6f96c3a505132a74bbd3b2fd7cdb5ae085a37c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
