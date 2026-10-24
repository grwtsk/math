# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "115e2ce89b649bb5cd0792a37bb31b8f855dda2a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `115e2ce89b649bb5cd0792a37bb31b8f855dda2a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Iterators.Lemmas.Consumers.Loop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.iter_eq_toIter_iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-iter-eq-toiter-iterm--e49a3f4216a1f8889002b371.md) | 29 | `result-track:e49a3f4216a1f8889002b371e8bb20fd521a2c6f1c909d1a6427dbc572fd915f` |
| 2 | `theorem` | [Array.iter_eq_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-iter-eq-iterfromidx--92d4bd5fb0794f3efbf4dc4a.md) | 33 | `result-track:92d4bd5fb0794f3efbf4dc4a139b9a65f216b679e0448244802f9d18a9269e46` |
| 3 | `theorem` | [Array.iterFromIdx_eq_toIter_iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-iterfromidx-eq-toiter-iterfromidxm--a9629ab7ec3c53bab59022f8.md) | 37 | `result-track:a9629ab7ec3c53bab59022f83f95d5356a9302c4bec28b6bfc7c312078c3fc30` |
| 4 | `theorem` | [Array.step_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-step-iterfromidx--2f5f8ea0ebd0d50e1a7f7095.md) | 41 | `result-track:2f5f8ea0ebd0d50e1a7f709548b16dda865a95374ec056999d7435a9542edfc7` |
| 5 | `theorem` | [Array.step_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-step-iter--42d4e4c4fd8029d111b6b89c.md) | 53 | `result-track:42d4e4c4fd8029d111b6b89cc36ccfcaeab42d46f4fe9d635736c587865f68b9` |
| 6 | `theorem` | [Array.toList_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-tolist-iterfromidx--48bd6a92f5dd9f5f62e25930.md) | 64 | `result-track:48bd6a92f5dd9f5f62e259302b16d2068951059a909d9b5307194e17ca95dc6e` |
| 7 | `theorem` | [Array.toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-tolist-iter--081d1ad26447e12d7b36d7bc.md) | 71 | `result-track:081d1ad26447e12d7b36d7bcbeba53472d37eb41e4d16c6b5bababe63872db12` |
| 8 | `theorem` | [Array.toArray_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-toarray-iterfromidx--fe537eadd9610e30d4f04d36.md) | 76 | `result-track:fe537eadd9610e30d4f04d36edd62ce6e7c39b897f80fe9275d15d68cdf69f99` |
| 9 | `theorem` | [Array.toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-toarray-iter--63ae5960848ecb46f79dd85e.md) | 81 | `result-track:63ae5960848ecb46f79dd85e8e1c401b18088ce74aa70bd1f776923cefd6ee05` |
| 10 | `theorem` | [Array.toListRev_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-tolistrev-iterfromidx--2e6ca3d89644b17e8ce93e59.md) | 86 | `result-track:2e6ca3d89644b17e8ce93e59d028ccf8abbd484f8e3a61af9de59beafca6ec30` |
| 11 | `theorem` | [Array.toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-tolistrev-iter--921880b9ba9c32e52eb058e8.md) | 91 | `result-track:921880b9ba9c32e52eb058e83c7fb43433d3ccbb4ce509ad29206cea247a1cea` |
| 12 | `theorem` | [Array.length_iterFromIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-length-iterfromidx--415bd888f0495e1cd4786dd8.md) | 96 | `result-track:415bd888f0495e1cd4786dd8297571ef3661926abbdef902d169d679509ca291` |
| 13 | `theorem` | [Array.length_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-length-iter--ebfbeaea7b2e23ddb754cf6a.md) | 101 | `result-track:ebfbeaea7b2e23ddb754cf6a323f94b5ef8e592c94999fa69d2b9b25b4c5c90b` |
| 14 | `theorem` | [Array.iterFromIdx_equiv_iter_drop_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-iterfromidx-equiv-iter-drop-tolist--4f29866a5f944e70ddbb8935.md) | 107 | `result-track:4f29866a5f944e70ddbb8935fb03abcec186b86341beb886ada55a408f6b3cf2` |
| 15 | `theorem` | [Array.iter_equiv_iter_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant03a7f060c8c1583726cd0e5f5a6f7a3f23f79ea16066ff646c10760b68159d8e.lean/declarations/array-iter-equiv-iter-tolist--1fbcd337023286220b3ddf0c.md) | 112 | `result-track:1fbcd337023286220b3ddf0cbd4d2725b02cdebeeeacb0867f0c6fa1da547ffb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
