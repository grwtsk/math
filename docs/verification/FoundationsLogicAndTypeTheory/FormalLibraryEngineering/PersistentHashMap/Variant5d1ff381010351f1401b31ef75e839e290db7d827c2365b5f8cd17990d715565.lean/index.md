# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentHashMap.Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6c3f8fa159d373fd40cb49d94a2e1c7d94da8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.Array.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Mem` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Zipper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/zipper--7927546eb3f655c32c94734c.md) | 43 | `declaration-track:7927546eb3f655c32c94734c0a2d4cb090a677fe3ed7ca20ee9a952b58849698` |
| 2 | `def` | [Zipper.prependNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/zipper-prependnode--151d5b4daa228a0cafe6ec2e.md) | 52 | `declaration-track:151d5b4daa228a0cafe6ec2e254d5becea4f4f31cb387fa63b6d8b0e48ed13e4` |
| 3 | `def` | [Zipper.step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/zipper-step--ee7ae9437b110228bf13d43e.md) | 58 | `declaration-track:ee7ae9437b110228bf13d43eb6a72f86ba61756c2f7c95e33cb23fb7a46d21a7` |
| 4 | `instance` | [instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/institerator--8e29af5092cbcd7338e1af46.md) | 76 | `declaration-track:8e29af5092cbcd7338e1af46c18cb74378c987da5634b382b92837caba100b22` |
| 5 | `def` | [Node.measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/node-measure--7e3a37b58c48ba22747d77a6.md) | 81 | `declaration-track:7e3a37b58c48ba22747d77a69e98ba1a71428e83f20d6539dd15b1cc3dea0363` |
| 6 | `def` | [Entry.measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/entry-measure--677752478dddb78ba03461a7.md) | 104 | `declaration-track:677752478dddb78ba03461a7f4e5187bb50eb422d35894b3d3225c9b0f3f984a` |
| 7 | `def` | [subarrayMeasure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/subarraymeasure--63c54c852313a7c8b6381bb4.md) | 111 | `declaration-track:63c54c852313a7c8b6381bb40db5c39da479db4456d2b6465fc48d30b6e5edcd` |
| 8 | `def` | [Zipper.measure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/zipper-measure--18865468cb9c3dbba8ce5777.md) | 115 | `declaration-track:18865468cb9c3dbba8ce5777c5ba58ac33fcd7a455c549927edbc4dd605f80c7` |
| 9 | `theorem` | [subarrayMeasure_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/subarraymeasure-cons--e371503808c2d733ac52286c.md) | 120 | `result-track:e371503808c2d733ac52286cef40942966f0a11229f12e71d1b1f18f26a912c8` |
| 10 | `theorem` | [measureEntries_eq_list_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/measureentries-eq-list-sum--0d1362ecb34731e03e697840.md) | 129 | `result-track:0d1362ecb34731e03e697840d79eaef29d040251d64a1d45a650314a92fa27b8` |
| 11 | `theorem` | [subarrayMeasure_toSubarray_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/subarraymeasure-tosubarray-eq--e60cfb2598afa89b4c0620bf.md) | 146 | `result-track:e60cfb2598afa89b4c0620bf176434ae948eb83729bcf1941c51e0a4ae059d2a` |
| 12 | `def` | [instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/instfinitenessrelation--2837388fd58bcbab0a7fddf8.md) | 158 | `declaration-track:2837388fd58bcbab0a7fddf82ee2399a43a57786e6fc4a5f94ddfa9659403246` |
| 13 | `instance` | [instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/instfinite--2c0bcfbb31f6cdfc1e7b7709.md) | 209 | `declaration-track:2c0bcfbb31f6cdfc1e7b77091914fbdc2b053b0172b609ff7758fe0fdf62d3ef` |
| 14 | `instance` | [instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/institeratorloop--d658cddd1e1ee1d8e0dfaafb.md) | 213 | `declaration-track:d658cddd1e1ee1d8e0dfaafbfa3bcff5d4a359e364104132c2f0a88f5a2827f9` |
| 15 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant5d1ff381010351f1401b31ef75e839e290db7d827c2365b5f8cd17990d715565.lean/declarations/iter--71fbe5cc27533eeb42621134.md) | 227 | `declaration-track:71fbe5cc27533eeb42621134d45880c61b4e62cced6fc79f376b920d29c4878c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
