# Verification target: GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80255057572b900ca12d55a3b42d8162c217e1c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BigOperators/CheckedContiguousBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/index.md) · [Full source](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80255057572b900ca12d55a3b42d8162c217e1c`.

Source path: `GRWTSK/Algebra/BigOperators/CheckedContiguousBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BigOperators/CheckedContiguousBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.GetD` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [allRange](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/allrange--df36afb9b881afeceb95a810.md) | 23 | `declaration-track:df36afb9b881afeceb95a81017bda1f33ffe9e87b17b1ccce5da6ce2546da283` |
| 2 | `def` | [sumRange](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/sumrange--88e8e0abe7efd22f12c667cc.md) | 27 | `declaration-track:88e8e0abe7efd22f12c667cc9491c2e7ca3f84423050864ece59bbc5c4c6bf85` |
| 3 | `theorem` | [allRange_iff](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/allrange-iff--243eb9ffe744d66655710e4e.md) | 31 | `result-track:243eb9ffe744d66655710e4e320b7a2a6fd9ecb7b93ce1e56c8d3489b8a77424` |
| 4 | `theorem` | [sumRange_eq_finset](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/sumrange-eq-finset--f53fb913521e1b14b11de761.md) | 45 | `result-track:f53fb913521e1b14b11de761c514d34d935dcefd16d919e313197cd7fc371fe8` |
| 5 | `theorem` | [allRange_add](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/allrange-add--74e4bfe675462e33f64ffda2.md) | 51 | `result-track:74e4bfe675462e33f64ffda28ed329adcaa0c145dabc5270d3e798354d988da4` |
| 6 | `theorem` | [sumRange_add](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/sumrange-add--60e4e4bc44599942e6f1b020.md) | 57 | `result-track:60e4e4bc44599942e6f1b020070842ca63926c57d00103424ef92574a415972c` |
| 7 | `theorem` | [allRange_congr](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/allrange-congr--1cac5d86aef9f1ab2271062f.md) | 63 | `result-track:1cac5d86aef9f1ab2271062fd4537b1ef4864973904288a6635526da06f16b37` |
| 8 | `theorem` | [sumRange_congr](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/sumrange-congr--3b5d6a32c082349550498f60.md) | 80 | `result-track:3b5d6a32c082349550498f60abe8a58a1e2edf76371a0ad921ee3c2c9503239d` |
| 9 | `def` | [chunk](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/chunk--4a47c5f1e92046ac656bb7c6.md) | 87 | `declaration-track:4a47c5f1e92046ac656bb7c61bc52f418ef7c5752fb2088d6b4ad463a2d2d825` |
| 10 | `theorem` | [chunk_eq_some_iff](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/chunk-eq-some-iff--d09c935b7459939922a4eee3.md) | 90 | `result-track:d09c935b7459939922a4eee3fadc5753f9a7ec8f18c652574930555b12175559` |
| 11 | `def` | [Partition](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/partition--078b27d3121367dd8d4bd8ef.md) | 97 | `declaration-track:078b27d3121367dd8d4bd8ef4b7ee90c5a38edb1900b5056b85dbd497046be0c` |
| 12 | `instance` | [partitionDecidable](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/partitiondecidable--981879832a7fbf79361fbd22.md) | 101 | `declaration-track:981879832a7fbf79361fbd22643ad647672b0fc1f48e5d32984e5f12351ba62a` |
| 13 | `def` | [partition](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/partition--414022ecfdcbd4c28fea4df0.md) | 104 | `declaration-track:414022ecfdcbd4c28fea4df0d18f3172c6866c80a7f134a8a4479e2f76d4ec76` |
| 14 | `theorem` | [partition_iff](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/partition-iff--5ff2bc46b1b30a3877db3b8f.md) | 106 | `result-track:5ff2bc46b1b30a3877db3b8f0f1fc651c7d740b3a713aae7c9e40516ed40cd50` |
| 15 | `def` | [verify](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/verify--ce87033aa6475344ebcda0ca.md) | 112 | `declaration-track:ce87033aa6475344ebcda0cac9d1b05f232ab1b20739ef97e4231788a5671a31` |
| 16 | `def` | [Pieces](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/pieces--4b4e4d34af23bee0ad90415e.md) | 121 | `declaration-track:4b4e4d34af23bee0ad90415e3fb8060389e799024c7fb5f48cacbd92a78b7327` |
| 17 | `theorem` | [verify_iff_pieces](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/verify-iff-pieces--12958d52d2add986a9bc9c4d.md) | 127 | `result-track:12958d52d2add986a9bc9c4d6d48cec0dadcbb707a43b240e5c850db86ef82b3` |
| 18 | `theorem` | [verify_sound](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/verify-sound--acc8620f8853bb51f5524fce.md) | 140 | `result-track:acc8620f8853bb51f5524fce4e99199ab76a4b01588050d0db4ca8b7457452e4` |
| 19 | `def` | [totals](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/totals--be7cd86a2496492d2749979f.md) | 160 | `declaration-track:be7cd86a2496492d2749979f0cb8b318209edcc2ad637684df94aecee8a1164b` |
| 20 | `theorem` | [totals_sum](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/totals-sum--748047d5d7ef69f0aba99067.md) | 164 | `result-track:748047d5d7ef69f0aba990677de005977c69d89bf649f8526bbb20ace9abd61f` |
| 21 | `theorem` | [verify_totals](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/verify-totals--978a2a75c337cf55f4f24a4a.md) | 170 | `result-track:978a2a75c337cf55f4f24a4a2d07c3fb2a1f577176ff03f43beebdef8464abf9` |
| 22 | `theorem` | [exists_pieces_iff](../../../../mathematics/Algebra/BigOperators/CheckedContiguousBlocks.lean/declarations/exists-pieces-iff--192ef82d73b839d432b71467.md) | 177 | `result-track:192ef82d73b839d432b71467dabad6207b4474a932f761c2d2e9a1d792972e64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
