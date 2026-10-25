# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fin.Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb03b01f43d905e0e5bda35b0075a9be0c1d68ac",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb03b01f43d905e0e5bda35b0075a9be0c1d68ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/value--d66c000a331a62e4ca6f6ed5.md) | 17 | `declaration-track:d66c000a331a62e4ca6f6ed50bc045bc669cdd289458ae2414d5b45d7724c3f9` |
| 2 | `def` | [fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/fromexpr--c7a46aae5f4d9685382f948e.md) | 22 | `declaration-track:c7a46aae5f4d9685382f948e51e9891b8f3686e8a2bc2249096b61bb857d9173` |
| 3 | `def` | [reduceOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/reduceop--8fb240c1fe93ffcf4e63e1e6.md) | 26 | `declaration-track:8fb240c1fe93ffcf4e63e1e6bc210cf6f6378c89a9fa51e9491645bd3fe16d16` |
| 4 | `def` | [reduceNatOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/reducenatop--d171d237178208a52ade75a6.md) | 32 | `declaration-track:d171d237178208a52ade75a63b73976210b0d0374ad7b2d90168a5113f8ebba6` |
| 5 | `def` | [reduceBin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/reducebin--c4b69839d4ea25895d20b2a1.md) | 38 | `declaration-track:c4b69839d4ea25895d20b2a195dc4dc4b7473bf133fc63f3b962be757d7bda1e` |
| 6 | `def` | [reduceBinPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/reducebinpred--2731455704e69180910a9340.md) | 48 | `declaration-track:2731455704e69180910a9340bbd6585e4d02a2a62fb3b942b011421228a5c732` |
| 7 | `def` | [reduceBoolPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fin/Variant6e22f4a410ec146af6481c30693c141c4f9d120db24e5d2bc5a1e6a873915bdc.lean/declarations/reduceboolpred--8fc719abff19afd008fd4e68.md) | 54 | `declaration-track:8fc719abff19afd008fd4e68d1df444eb254c0cd8a33f696598cefc6a3100324` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
