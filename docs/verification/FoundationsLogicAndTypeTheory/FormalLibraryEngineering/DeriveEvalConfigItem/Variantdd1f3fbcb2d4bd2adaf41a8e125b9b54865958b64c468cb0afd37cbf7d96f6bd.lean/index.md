# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveEvalConfigItem.Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb205140b9861f2064814b09b828dba9e916a08",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb205140b9861f2064814b09b828dba9e916a08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvalConfigItemHandlerKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/evalconfigitemhandlerkind--ce7d1dd70a843034a868760b.md) | 29 | `declaration-track:ce7d1dd70a843034a868760bc512a0aec91e8021f3ac15caf074fab5edb07507` |
| 2 | `structure` | [EvalConfigItemHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/evalconfigitemhandler--38768fa6f5c520b1b74f37c9.md) | 38 | `declaration-track:38768fa6f5c520b1b74f37c97add2c16870fac1ff5d31540b5b702f6e742d764` |
| 3 | `structure` | [EvalConfigItemView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/evalconfigitemview--6958e6d3716175bf190e7b19.md) | 52 | `declaration-track:6958e6d3716175bf190e7b199684389bc27f22e1b5fcca46eec5b8af5d78d4ef` |
| 4 | `structure` | [HandlerTrie](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/handlertrie--80f2436dab390913b2871bb7.md) | 75 | `declaration-track:80f2436dab390913b2871bb7720d70dfebdb569c8d90bfb0b7426111a331d7aa` |
| 5 | `def` | [HandlerTrie.find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/handlertrie-find--0970319d5b8cba3b18581ff4.md) | 98 | `declaration-track:0970319d5b8cba3b18581ff4982186418440189110c27873084eff7cc39342f3` |
| 6 | `def` | [HandlerTrie.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/handlertrie-insert--13aa9fc5b6c3330568517c0d.md) | 122 | `declaration-track:13aa9fc5b6c3330568517c0db7c981b981bbe7cdfc0b7477cacfeb624a0f3526` |
| 7 | `def` | [HandlerTrie.insertStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/handlertrie-insertstruct--0bf1beece127b0083c298a65.md) | 141 | `declaration-track:0bf1beece127b0083c298a6501d4dc742f345d4546eeaddfc9e66d8127fc12ed` |
| 8 | `def` | [evalBoolItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/evalboolitem--0e9ee7ec330cbe6a352ff8a9.md) | 161 | `declaration-track:0e9ee7ec330cbe6a352ff8a94b19fc53aa9f1db6471d4cefdded961b469fd8f7` |
| 9 | `def` | [addConstInfo'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/addconstinfo--169fa193db1a1071fa1cdf2e.md) | 169 | `declaration-track:169fa193db1a1071fa1cdf2e40e38e777a72902ce4f28fd66b9199dbb0c33bb9` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/state--b1062e979679ee2fabecb8c1.md) | 174 | `declaration-track:b1062e979679ee2fabecb8c1c1bceebe22d186f83e4ef9f7c04e7f52ae737d21` |
| 11 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/m--9284f556c7d799d91977d6f0.md) | 179 | `declaration-track:9284f556c7d799d91977d6f00496bd3752f53e90a614f532d0bf4885fbaaef5d` |
| 12 | `def` | [addToDerive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/addtoderive--634ebb4f62d523b31f9624af.md) | 181 | `declaration-track:634ebb4f62d523b31f9624afe8439606646f28c819603adc39cef566017e5704` |
| 13 | `def` | [hasToOmit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/hastoomit--e19c1f85bbca4a8e9636b41b.md) | 184 | `declaration-track:e19c1f85bbca4a8e9636b41b37e64ff5b70a80d7a522108aed785d947c0fc592` |
| 14 | `def` | [defEvalConfigItem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/defevalconfigitem--96cb5370100172d33b00df23.md) | 198 | `declaration-track:96cb5370100172d33b00df23ee7bf9b142e66a1c96983ba8e283e7a45a61ab39` |
| 15 | `def` | [$fnIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdd1f3fbcb2d4bd2adaf41a8e125b9b54865958b64c468cb0afd37cbf7d96f6bd.lean/declarations/fnident--916b4a645d8522bdfde157a5.md) | 365 | `declaration-track:916b4a645d8522bdfde157a5d4ba7d972d0c7840b16968be8cfcdd4e13344cdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
