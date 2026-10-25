# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50791a100c243b57f634b8ee42ff35113d226a34",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50791a100c243b57f634b8ee42ff35113d226a34`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.NoncomputableAttr` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.WrapInstance` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivingClassView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/derivingclassview--b8e3594b6b9710cb12f68b67.md) | 27 | `declaration-track:b8e3594b6b9710cb12f68b67966cfd9ea15627b6439c53a2aa63f4f718d73f4b` |
| 2 | `structure` | [MkInstResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/mkinstresult--36fd0ae3643c22d55ad9c11a.md) | 36 | `declaration-track:36fd0ae3643c22d55ad9c11aadff3f220d05ab7cf834b1dc5582c0ab8f1e7f00` |
| 3 | `def` | [throwDeltaDeriveFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/throwdeltaderivefailure--235d0798252e7c9983926b81.md) | 40 | `declaration-track:235d0798252e7c9983926b81c2dca085016bac11b3c7ef55f2980e210cab43d5` |
| 4 | `def` | [mkInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/mkinst--ac5f7f490741f9c2ec359867.md) | 67 | `declaration-track:ac5f7f490741f9c2ec359867421ff1f6955f56b858da45cced236381f3a3ce1d` |
| 5 | `def` | [processDefDeriving](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/processdefderiving--0b511fc7fc86d06bed193302.md) | 186 | `declaration-track:0b511fc7fc86d06bed19330281fd3904a40500436bf651401b0e0f7d8f9a57ee` |
| 6 | `def` | [DerivingHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/derivinghandler--b7bbc99e326b6df77f8e32c0.md) | 284 | `declaration-track:b7bbc99e326b6df77f8e32c03e186caf2caeaedf7cae56c4650f8c25fbf1c203` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/builtin-initialize--05d594bda969667a24bfaa2d.md) | 286 | `declaration-track:05d594bda969667a24bfaa2dc659f4f0fd9f7e22fb72084ef76705dc5b1be17e` |
| 8 | `def` | [registerDerivingHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/registerderivinghandler--78d3d62bae0c94dbc168a63f.md) | 294 | `declaration-track:78d3d62bae0c94dbc168a63fd25b0d380bc18acc99615624c6137831ee67ed28` |
| 9 | `def` | [applyDerivingHandlers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/applyderivinghandlers--1862437f94181b432a5da16c.md) | 302 | `declaration-track:1862437f94181b432a5da16c9c6adfa0cb357f642a3bc3af9b9191f8f6503c0a` |
| 10 | `def` | [DerivingClassView.getClassName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/derivingclassview-getclassname--ed98ce9b56735c129ec43fe0.md) | 322 | `declaration-track:ed98ce9b56735c129ec43fe03a55152711c2daa0797608780d64fa2141c91aaa` |
| 11 | `def` | [DerivingClassView.ofSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/derivingclassview-ofsyntax--05ec837a774698beb5dbc861.md) | 325 | `declaration-track:05ec837a774698beb5dbc8615d06923b18d157877fb1ad5d140b2a1898e4de6a` |
| 12 | `def` | [getOptDerivingClasses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/getoptderivingclasses--7b653e94871bd7bbfd4d256a.md) | 330 | `declaration-track:7b653e94871bd7bbfd4d256a46c9e0492d5cb598ee0686e5a57c59866bed61f1` |
| 13 | `def` | [DerivingClassView.applyHandlers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/derivingclassview-applyhandlers--b047e456afc48caae93f064d.md) | 335 | `declaration-track:b047e456afc48caae93f064d3f8dc68e43253e83553a014bf8b5b3ad55d2b5be` |
| 14 | `def` | [elabDefDeriving](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/elabdefderiving--ace9afcfaf98eac159229ace.md) | 341 | `declaration-track:ace9afcfaf98eac159229ace74a557ea4b1405a87da31056926488f3552b790d` |
| 15 | `def` | [elabDeriving](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/elabderiving--26f129d2be3b72a7bb57c738.md) | 364 | `declaration-track:26f129d2be3b72a7bb57c73850bbc741401b682538c1107fc316b59fdad1fd33` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/declarations/builtin-initialize--a4f8ec64745aed3a87e128df.md) | 388 | `declaration-track:a4f8ec64745aed3a87e128df12135e78841fe3ba63cf97ca47467cd4a857ec04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
