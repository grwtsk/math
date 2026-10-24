# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeDrop.Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c934048cd93ebba226a9e33d57892a116665d5b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c934048cd93ebba226a9e33d57892a116665d5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Splits` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [drop_eq_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/drop-eq-slicefrom--d7d71d26a7c3c4bc60857fda.md) | 28 | `result-track:d7d71d26a7c3c4bc60857fda9d6d1b86b6b8f86251e2fe5539b21d340b57f5f6` |
| 2 | `theorem` | [toList_copy_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-drop--04a700e2c261478696ec1296.md) | 32 | `result-track:04a700e2c261478696ec129644674240fd67a55171dc9f3be8a901d3e36e0950` |
| 3 | `theorem` | [dropEnd_eq_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/dropend-eq-sliceto--e016c0afe6b6369cdc99e7b2.md) | 35 | `result-track:e016c0afe6b6369cdc99e7b273e685d214d7feb8244e641e859543727c6c7b0c` |
| 4 | `theorem` | [toList_copy_dropEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-dropend--6b74d9b9b2880deca06b5b1c.md) | 39 | `result-track:6b74d9b9b2880deca06b5b1c9a5e30e04e4181f6e5fa14a9435546579133d9ab` |
| 5 | `theorem` | [take_eq_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/take-eq-sliceto--5ce8a75f12d034462eb82cb7.md) | 43 | `result-track:5ce8a75f12d034462eb82cb7194746e0edc47be6bea455bfea17b3b43c4c139b` |
| 6 | `theorem` | [toList_copy_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-take--9987448dbc58e4854343e7d3.md) | 47 | `result-track:9987448dbc58e4854343e7d3b728d8347443bbb79ce9bb880fb39b9bf4755ade` |
| 7 | `theorem` | [takeEnd_eq_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/takeend-eq-slicefrom--dd888cc3416b62ead4b6240b.md) | 50 | `result-track:dd888cc3416b62ead4b6240be2e786dd495fe7354267b10d697700ee6e3f7a59` |
| 8 | `theorem` | [toList_copy_takeEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-takeend--bf1bb772fad3a9c55463fe50.md) | 54 | `result-track:bf1bb772fad3a9c55463fe50e5f162e71b1bf8fc276f05525934bcd2eade41b1` |
| 9 | `theorem` | [drop_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/drop-toslice--dd73c8c3016c972ac5d7b675.md) | 61 | `result-track:dd73c8c3016c972ac5d7b6756d0dff6b79fa85b44d5c2c8c68678a73599634da` |
| 10 | `theorem` | [toList_copy_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-drop--7003fe08b8d12661de3a2464.md) | 65 | `result-track:7003fe08b8d12661de3a2464984fb1e3ff319cbb4243848a6736e3b9f15d3e8a` |
| 11 | `theorem` | [dropEnd_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/dropend-toslice--0649b8613b32b19d373bca7d.md) | 69 | `result-track:0649b8613b32b19d373bca7d5dd44719fe88e5937c13386acb7c5c461a04102d` |
| 12 | `theorem` | [toList_copy_dropEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-dropend--3a9d1bd5bf8fcebd18a8ee80.md) | 73 | `result-track:3a9d1bd5bf8fcebd18a8ee80c53f727e07587fb6dbf4a048d44588a980840524` |
| 13 | `theorem` | [take_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/take-toslice--7407daa0097cf2962717481b.md) | 78 | `result-track:7407daa0097cf2962717481bec49c8ec78a5744d6c59361039fcf1ee36173882` |
| 14 | `theorem` | [toList_copy_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-take--5f5aef10539c0b5cc5eb69e1.md) | 82 | `result-track:5f5aef10539c0b5cc5eb69e180998533d6feedece842b9b74f94c011c5e0c898` |
| 15 | `theorem` | [takeEnd_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/takeend-toslice--691d8c0d3b077f1eb9f9b55a.md) | 86 | `result-track:691d8c0d3b077f1eb9f9b55a01fb8059b529a8414a8c96271faa2648cafb0349` |
| 16 | `theorem` | [toList_copy_takeEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69.lean/declarations/tolist-copy-takeend--30520491172b7336f44bfd79.md) | 90 | `result-track:30520491172b7336f44bfd798a27386c973d1bedcc3c97024f948c8e710fbce1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
