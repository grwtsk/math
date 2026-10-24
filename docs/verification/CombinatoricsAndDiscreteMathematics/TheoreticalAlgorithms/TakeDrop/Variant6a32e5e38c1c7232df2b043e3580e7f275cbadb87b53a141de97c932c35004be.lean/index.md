# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeDrop.Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d6c988300c266ade1c8d33ca59757abc57e95be",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d6c988300c266ade1c8d33ca59757abc57e95be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Splits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [drop_eq_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/drop-eq-slicefrom--7473ee20c4307a672ca3f3dd.md) | 20 | `result-track:7473ee20c4307a672ca3f3dd56c77cf470de34dc2fd4ac381ec6a358e434f69d` |
| 2 | `theorem` | [toList_copy_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-drop--a9c588d5ca9e5748bd334a7e.md) | 24 | `result-track:a9c588d5ca9e5748bd334a7eebe5356e3aff59cfbcf3a81c24f3c67d82030d47` |
| 3 | `theorem` | [dropEnd_eq_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/dropend-eq-sliceto--018c5d10c8d374dd6943618c.md) | 27 | `result-track:018c5d10c8d374dd6943618c6828133088817dce879c5dc934e97aeb29e0f5bf` |
| 4 | `theorem` | [toList_copy_dropEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-dropend--1cc0ae114f59542abd3a8104.md) | 31 | `result-track:1cc0ae114f59542abd3a81048331fc53e69676db3f56e279ba8f698e6cd6cb1c` |
| 5 | `theorem` | [take_eq_sliceTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/take-eq-sliceto--d4cb4ee0e895cf3ddabfabfc.md) | 35 | `result-track:d4cb4ee0e895cf3ddabfabfca3de7679ed83c607fc579c65774d5734305e6fbf` |
| 6 | `theorem` | [toList_copy_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-take--977a9a0f69d43abf7ce6aa4c.md) | 39 | `result-track:977a9a0f69d43abf7ce6aa4c4ade5e5353dc5305eae70fd8ca9feecbb8d7cf8c` |
| 7 | `theorem` | [takeEnd_eq_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/takeend-eq-slicefrom--c983f872fc5923d63de939de.md) | 42 | `result-track:c983f872fc5923d63de939dee2661e973516d0119572452ee57767f59ce697ea` |
| 8 | `theorem` | [toList_copy_takeEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-takeend--e49f6202d2a4b8e6f4e2b079.md) | 46 | `result-track:e49f6202d2a4b8e6f4e2b0791b880310d54a176379035cc381fa7c4d487467d6` |
| 9 | `theorem` | [drop_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/drop-toslice--7895fc5fba2b26bb228f19ce.md) | 53 | `result-track:7895fc5fba2b26bb228f19ce4b6f4fa6a1551cc5694ad567b7e0a45e22636724` |
| 10 | `theorem` | [toList_copy_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-drop--82ad0dede88b1b241d8e7698.md) | 57 | `result-track:82ad0dede88b1b241d8e76981e4dc7c7bd09bae40ff8a00a904c401b101e2603` |
| 11 | `theorem` | [dropEnd_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/dropend-toslice--0a0ba5ccd801f624d369d16f.md) | 61 | `result-track:0a0ba5ccd801f624d369d16f44cded8d6ad25249c05f66cd7714d16efa42a5b6` |
| 12 | `theorem` | [toList_copy_dropEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-dropend--015da5f2a5318155cb682a46.md) | 65 | `result-track:015da5f2a5318155cb682a4674fab16017113f007583f4b8cc1660fee1f2a400` |
| 13 | `theorem` | [take_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/take-toslice--2d2b0f233b754c27a6206fc3.md) | 70 | `result-track:2d2b0f233b754c27a6206fc3b20db0d4b575cbad31ae6005392d8bc10970ec10` |
| 14 | `theorem` | [toList_copy_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-take--938ef869049412e928439653.md) | 74 | `result-track:938ef869049412e928439653843550648465cbc17736516888a283c5d6530c4c` |
| 15 | `theorem` | [takeEnd_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/takeend-toslice--1acdeef5372c1d503b6346ca.md) | 78 | `result-track:1acdeef5372c1d503b6346caf86ffd8796208df49697e33d8af50d12c44f1d5f` |
| 16 | `theorem` | [toList_copy_takeEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be.lean/declarations/tolist-copy-takeend--c32d4031fc819abd64968b44.md) | 82 | `result-track:c32d4031fc819abd64968b44df9ad3be1a333e0fc49eb5e00d1c937205cc2f29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
