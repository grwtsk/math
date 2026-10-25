# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27273d5410ea2de2ec8d2b6064a7df85e80f97a8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27273d5410ea2de2ec8d2b6064a7df85e80f97a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Slice.InternalLemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Internal.iter_eq_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/internal-iter-eq-iter--8e38e349212c069d32cc9e7e.md) | 30 | `result-track:8e38e349212c069d32cc9e7e245611c98322293bd3e925eb5da1bf6b7aa14665` |
| 2 | `theorem` | [iter_eq_toIteratorIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/iter-eq-toiteratoriter--b08cd477e98b9efd826d9e6a.md) | 34 | `result-track:b08cd477e98b9efd826d9e6ae740309b6e63cb79674619e966195307aff08de6` |
| 3 | `theorem` | [forIn_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/forin-iter--90e149fd6c4c4903bc1c136b.md) | 39 | `result-track:90e149fd6c4c4903bc1c136b3016ae5f06ae598b9904fb41f1c49cfc293311e0` |
| 4 | `theorem` | [foldlM_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/foldlm-iter--143b76ff92ef63c32123a53f.md) | 47 | `result-track:143b76ff92ef63c32123a53f7488f11c9aa1a304b6897581ad87f3b661182105` |
| 5 | `theorem` | [foldl_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/foldl-iter--f540a9b1d82284462d790e85.md) | 53 | `result-track:f540a9b1d82284462d790e856de730132b145ff25c18bd305b358e710f08d2f8` |
| 6 | `theorem` | [size_eq_length_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/size-eq-length-iter--7dbb9d5c1f5a67d73dc646be.md) | 59 | `result-track:7dbb9d5c1f5a67d73dc646be98797421dfa91446b79609899ba91110201d4f09` |
| 7 | `def` | [size_eq_count_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/size-eq-count-iter--77bc94d7db3265934c3fc79a.md) | 69 | `declaration-track:77bc94d7db3265934c3fc79aab6aa4b2d423508144275cafa8c22e56cdcf3cfe` |
| 8 | `theorem` | [length_iter_eq_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/length-iter-eq-size--679f74c758d7c9fa4032e03c.md) | 71 | `result-track:679f74c758d7c9fa4032e03c99c4a5eb77016966cc9401abf32f7e0e0ab84a22` |
| 9 | `def` | [count_iter_eq_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/count-iter-eq-size--e63489b23953b36c18455ce0.md) | 81 | `declaration-track:e63489b23953b36c18455ce0230fc6c47f815f8758b39ff2d264048b69e62ba0` |
| 10 | `theorem` | [toArray_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/toarray-iter--f1d1c0f48fbab7184cd819a8.md) | 84 | `result-track:f1d1c0f48fbab7184cd819a88f28fd5b7c92586860f736e3da1c7f181545600e` |
| 11 | `theorem` | [toArray_eq_toArray_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/toarray-eq-toarray-iter--672ff2ca34dda37141f836d4.md) | 91 | `result-track:672ff2ca34dda37141f836d423be2827a29f1bf735c519d0ffc36b963e0875a4` |
| 12 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/tolist-iter--6a265984d2cd43c8dc3ea5ba.md) | 98 | `result-track:6a265984d2cd43c8dc3ea5ba2299b1e2533b21f8796809511bd32112f1b47aa5` |
| 13 | `theorem` | [toList_eq_toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/tolist-eq-tolist-iter--322766a131d56321996ecbbe.md) | 105 | `result-track:322766a131d56321996ecbbee8b91fa42477438e158b9e3c511d1071b364af29` |
| 14 | `theorem` | [toListRev_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/tolistrev-iter--0a84e5bdf8413e2b1d9f7696.md) | 112 | `result-track:0a84e5bdf8413e2b1d9f76962bb41e89790482a5049530037a0721b694cbde0b` |
| 15 | `theorem` | [toListRev_eq_toListRev_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/tolistrev-eq-tolistrev-iter--f29d98bc9b3f101f9023f2a0.md) | 118 | `result-track:f29d98bc9b3f101f9023f2a0c941b2a208cd6132f418d448e620d355d1c023e1` |
| 16 | `theorem` | [fold_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/fold-iter--8442e128701e8ae316f95770.md) | 123 | `result-track:8442e128701e8ae316f957702f7e0b78f6d5d678ef7027f1f5850b240cc71293` |
| 17 | `theorem` | [foldM_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79.lean/declarations/foldm-iter--7935a8d9592c26c5030777ae.md) | 128 | `result-track:7935a8d9592c26c5030777ae7ad2cffd500e00dc83d408749f8ee24407230df5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
