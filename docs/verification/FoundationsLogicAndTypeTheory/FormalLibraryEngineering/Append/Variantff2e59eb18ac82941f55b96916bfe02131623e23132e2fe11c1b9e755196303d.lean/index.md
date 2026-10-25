# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Append.Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.append_eq_toIter_append_toIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-append-eq-toiter-append-toiterm--e1829bcf8a261f27344407b2.md) | 23 | `result-track:e1829bcf8a261f27344407b28468fe74c7d410abbf5c661e4e7764b18308cd51` |
| 2 | `theorem` | [Iter.Intermediate.appendSnd_eq_toIter_appendSnd_toIterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-intermediate-appendsnd-eq-toiter-appendsnd-toiterm--f999d69eae875f519362e5ee.md) | 29 | `result-track:f999d69eae875f519362e5ee17ec66453ebb0cd4cced8a85ef9556ffa1dab03e` |
| 3 | `theorem` | [Iter.step_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-step-append--2b63b7e153e017bf7560be7f.md) | 35 | `result-track:2b63b7e153e017bf7560be7fd4bae15b96fc279995984610adb585635600cfe7` |
| 4 | `theorem` | [Iter.Intermediate.step_appendSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-intermediate-step-appendsnd--1844ebc7ff17cb348868de3b.md) | 48 | `result-track:1844ebc7ff17cb348868de3b99742c882e44bbbe209d6634cd17127b1981d0a7` |
| 5 | `theorem` | [Iter.toList_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-tolist-append--7f261e37a766c4a80ac955db.md) | 60 | `result-track:7f261e37a766c4a80ac955db5870637699641e1106836fee1536ec049ec7e974` |
| 6 | `theorem` | [Iter.toListRev_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-tolistrev-append--6efa12442dc08b70afd99644.md) | 67 | `result-track:6efa12442dc08b70afd99644aa75ecc1d085518fb308f98992ecca93131918aa` |
| 7 | `theorem` | [Iter.toArray_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-toarray-append--6dc16216b6a6a581f4b7a20e.md) | 74 | `result-track:6dc16216b6a6a581f4b7a20e413d5947b0a8b124f3e559f80f7571205e4c7d75` |
| 8 | `theorem` | [Iter.atIdxSlow?_appendSnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-atidxslow-appendsnd--e08a8f5f449c5fddd3915a76.md) | 81 | `result-track:e08a8f5f449c5fddd3915a76538bf17aa88cdedfe720e292e85262d24af0bf42` |
| 9 | `theorem` | [Iter.atIdxSlow?_append_of_eq_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-atidxslow-append-of-eq-some--7f3d110ccc1497acf61b8baa.md) | 99 | `result-track:7f3d110ccc1497acf61b8baad146777d7bef650c9c38595162b6b51290d37e75` |
| 10 | `theorem` | [Iter.atIdxSlow?_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-atidxslow-append--f5e0a5c3d477324d119acfb0.md) | 118 | `result-track:f5e0a5c3d477324d119acfb0f8e0ebd3d353adeed0904e66f5e6b6aa762f5ce2` |
| 11 | `theorem` | [Iter.atIdxSlow?_append_of_productive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/declarations/iter-atidxslow-append-of-productive--c4671fcad49f0953e453deac.md) | 141 | `result-track:c4671fcad49f0953e453deac50aa72334c4039ca4f69926a0e48bf6f3e9bed43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
