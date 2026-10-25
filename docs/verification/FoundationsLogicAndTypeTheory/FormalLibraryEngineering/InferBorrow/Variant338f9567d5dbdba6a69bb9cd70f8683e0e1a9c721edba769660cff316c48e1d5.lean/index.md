# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferBorrow.Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54d168312e46c2066e4d93430d36c1f0c0353cec",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54d168312e46c2066e4d93430d36c1f0c0353cec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.ExportAttr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.MonadScope` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.FVarUtil` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PrettyPrinter` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Producers.Monadic.Array` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Data.Iterators.Combinators.Monadic.Zip` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Key](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/key--f6dfba6258f98b7c4c01fcdb.md) | 57 | `declaration-track:f6dfba6258f98b7c4c01fcdb488c9bf84bf6a995646ebb623c0e2c836c4e74b6` |
| 2 | `structure` | [ParamMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/parammap--99cdba0aa110839a3b4181c0.md) | 64 | `declaration-track:99cdba0aa110839a3b4181c008687c85e5c6d9b79e0ec92254bb7335f1b406aa` |
| 3 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/insert--de8f31d312cc0eac7a64f361.md) | 75 | `declaration-track:de8f31d312cc0eac7a64f361df042dba9e4c2e16d3f2f0ab5370f2e68aaa2719` |
| 4 | `def` | [erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/erase--94924c0976794408a6dfacc4.md) | 79 | `declaration-track:94924c0976794408a6dfacc4289e65ba20482d818f2293c74f5b376ee241e71e` |
| 5 | `abbrev` | [InitM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/initm--842153dc8ee4374c31864060.md) | 84 | `declaration-track:842153dc8ee4374c3186406001fafd0a3c063e4a0d7b575f9cc0868f964a2e73` |
| 6 | `def` | [mkInitParamMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/mkinitparammap--ff8c8b002872c49c11033afd.md) | 86 | `declaration-track:ff8c8b002872c49c11033afd9dcc7f77f225512f76843463d7c71572d7bffb7a` |
| 7 | `def` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/apply--f07073b89c12d74046d48877.md) | 132 | `declaration-track:f07073b89c12d74046d488771d54ff14647971b4e000b27acc4f68dada20a3e2` |
| 8 | `structure` | [Ctx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/ctx--da8d57c36e1537f79c36d33d.md) | 159 | `declaration-track:da8d57c36e1537f79c36d33dcd7e262c2760fb07f31f37eb0abf00fdebe54b82` |
| 9 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/state--0beadd28dbc894baa05fab8f.md) | 174 | `declaration-track:0beadd28dbc894baa05fab8f7f8bed4804e953a752d05228fb6a2411da5314d0` |
| 10 | `abbrev` | [InferM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/inferm--4bafb3e51963d621368afc85.md) | 182 | `declaration-track:4bafb3e51963d621368afc85ed2552a0c38e5c2ae8dd56f5b41bbc2d938f7607` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/instance--1dd9f9e0bb884a560c9138b3.md) | 184 | `declaration-track:1dd9f9e0bb884a560c9138b347d3446ad6879b34727bf743e9e9c1361f5f0b31` |
| 12 | `inductive` | [OwnReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/ownreason--91264b9cb16a0f0ae1c9972b.md) | 191 | `declaration-track:91264b9cb16a0f0ae1c9972bec55d88ec075b6aea496f1467925e3f4c4f812b6` |
| 13 | `def` | [OwnReason.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/ownreason-tostring--775be708bb8a96802e61b1e6.md) | 219 | `declaration-track:775be708bb8a96802e61b1e650f002d8ffc22c2bc5f7fb3925967a7b50a83916` |
| 14 | `def` | [OwnReason.isForced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/ownreason-isforced--7ac31abea4417ab9e8f9f188.md) | 241 | `declaration-track:7ac31abea4417ab9e8f9f188e90a53407bdc76ce7ee658a5271e913329576cfc` |
| 15 | `def` | [infer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/infer--1e8112c344b5648982791013.md) | 263 | `declaration-track:1e8112c344b56489827910132eb62c993b98f8d30ce847868f32ac50cd764987` |
| 16 | `def` | [inferBorrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/inferborrow--0192b0c9b11c5506988eb0e4.md) | 441 | `declaration-track:0192b0c9b11c5506988eb0e40404dae67e44838a8803f5f43331297808a85628` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/declarations/builtin-initialize--fa2e1ee0438cc0ee2844cf5e.md) | 451 | `declaration-track:fa2e1ee0438cc0ee2844cf5e8ca801c8570becef19aa6bf7294f018da7af6a83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
